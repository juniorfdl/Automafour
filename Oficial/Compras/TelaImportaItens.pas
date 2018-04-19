unit TelaImportaItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, DBTables, Buttons, UnitLibrary, Gauges, RxQuery;

type
  TFormTelaImportaItens = class(TForm)
    QueryConfigColetor: TQuery;
    DsQueryConfigColetor: TDataSource;
    ComboColetor: TDBLookupComboBox;
    LabelPath: TLabel;
    ButtonImport: TBitBtn;
    ButtonCancel: TBitBtn;
    Label9: TLabel;
    QueryProduto: TQuery;
    Memo: TMemo;
    Label1: TLabel;
    ProgressBar: TGauge;
    SQLConsultaInventario: TRxQuery;
    SQLConsultaInventarioEMPRICOD: TIntegerField;
    SQLConsultaInventarioTERMICOD: TIntegerField;
    SQLConsultaInventarioINVDDATA: TDateTimeField;
    SQLConsultaInventarioINVIPRODPOS: TIntegerField;
    SQLConsultaInventarioPRODICOD: TIntegerField;
    SQLConsultaInventarioINVICONTAGEM1: TFloatField;
    SQLConsultaInventarioINVICONTAGEM2: TFloatField;
    SQLConsultaInventarioINVICONTAGEM3: TFloatField;
    SQLConsultaInventarioPENDENTE: TStringField;
    SQLConsultaInventarioREGISTRO: TDateTimeField;
    SQLConsultaInventarioINVDFECHAMENTO: TDateTimeField;
    DSSQLConsultaInventario: TDataSource;
    LBLinha: TLabel;
    LBQTDE: TLabel;
    SQLConsultaInventarioTIPO: TStringField;
    EditTipoInv: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DsQueryConfigColetorDataChange(Sender: TObject;
      Field: TField);
    procedure ButtonImportClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SQLConsultaInventarioBeforePost(DataSet: TDataSet);
    procedure SQLConsultaInventarioNewRecord(DataSet: TDataSet);
    Function  AnalizaInfo(info:String):String;
  private
    { Private declarations }
    Query : TQuery;
    Field : String;
    CodEmpresa, CodTerminal : Integer;
    DataInventario : TDate;

  public
    { Public declarations }
    procedure SetParams(PQuery : TRxQuery; PField : String; PCodEmpresa, PCodTerminal : Integer; PDataInventario : TDate);
  end;

var
  FormTelaImportaItens: TFormTelaImportaItens;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaImportaItens.SetParams(PQuery : TRxQuery; PField : String; PCodEmpresa, PCodTerminal : Integer; PDataInventario : TDate);
begin
  Query := PQuery;
  Field := PField;
  if PCodEmpresa > 0 then
    CodEmpresa := PCodEmpresa;
  if PCodTerminal > 0 then
    CodTerminal := PCodTerminal;
  DataInventario := PDataInventario;
end;

procedure TFormTelaImportaItens.FormCreate(Sender: TObject);
begin
  Query := nil;
  Field := '';
  if not QueryConfigColetor.Active then
    QueryConfigColetor.Open;
  ComboColetor.KeyValue := QueryConfigColetor.FieldByName('CFCOA13ID').AsVariant;
end;

procedure TFormTelaImportaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QueryConfigColetor.Close;
  Action := caFree;
end;

procedure TFormTelaImportaItens.DsQueryConfigColetorDataChange(
  Sender: TObject; Field: TField);
begin
  LabelPath.Caption := QueryConfigColetor.FieldByName('CFCOTPATHFILE').AsString;
  LabelPath.Update;
end;

procedure TFormTelaImportaItens.ButtonImportClick(Sender: TObject);
var
  LinhaAtual, NroLinhas : integer;
  QtdeTotal : Double;
  Texto : TextFile;
  HouveErro : Boolean;
  Info : string;
  CaminhoNomeArquivo : String;
  Arquivo : TextFile;
begin
  if Query <> nil then
    begin
      if Field <> '' then
        begin
          if Application.MessageBox('Deseja realmente importar os itens contidos no arquivo do coletor selecionado?','Atenção',MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = IDYES then
            begin
              if FileExists(QueryConfigColetor.FieldByName('CFCOTPATHFILE').AsString) then
                begin
                  NroLinhas := 0;
                  AssignFile(Texto,QueryConfigColetor.FieldByName('CFCOTPATHFILE').AsString);
                  Reset(Texto);
                  while not EOF(Texto) do
                    begin
                      Readln(Texto,Info);
                      NroLinhas := NroLinhas + 1;
                    end;
                  CloseFile(Texto);

                  ProgressBar.Progress := 0;
                  ProgressBar.MaxValue := NroLinhas;

                  AssignFile(Texto,QueryConfigColetor.FieldByName('CFCOTPATHFILE').AsString);
                  Reset(Texto);
                  LinhaAtual := 0;
                  QtdeTotal  := 0;
                  HouveErro := False;
                  while not EOF(Texto) do
                    begin
                      ProgressBar.Progress := ProgressBar.Progress + 1;
                      ProgressBar.Update;
                      Application.ProcessMessages;
                      ReadLn(Texto,Info);
                      Info:= AnalizaInfo(Info);
                      LinhaAtual := LinhaAtual + 1;
                      LBLinha.Caption := 'Lendo Linha Nro.: ' + IntToStr(LinhaAtual) + ' de ' + IntToStr(NroLinhas);
                      LBLinha.Update;
                      try
                        // Se empresa parametros maior que zero o txt tera o cod da filial
                        if (QueryConfigColetor.FieldByName('CFCOIPOSEMPRICOD').AsInteger > 0 ) and (QueryConfigColetor.FieldByName('CFCOITAMEMPRICOD').AsInteger > 0) then
                          begin
                            if CodEmpresa = StrToInt(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSEMPRICOD').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMEMPRICOD').AsInteger)) then
                              begin
                                try
                                  if EncontrouProduto(Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODICOD').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODICOD').AsInteger)),
                                                      QueryProduto) then
                                    begin
                                      SQLConsultaInventario.Close;
                                      SQLConsultaInventario.MacroByName('MFILTRO').AsString :=
                                                              ' EMPRICOD = '      + IntToStr(CodEmpresa)  +
                                                              ' AND TERMICOD = '  + IntToStr(CodTerminal) +
                                                              ' AND INVDDATA = ''' + FormatDateTime('mm/dd/yyyy',DataInventario) + ''''+
                                                              ' AND PRODICOD = '  + QueryProduto.FieldByName('PRODICOD').AsString ;
                                      SQLConsultaInventario.Open;
                                      if not SQLConsultaInventario.IsEmpty then
                                        begin
                                          SQLConsultaInventario.Edit;
                                          SQLConsultaInventario.FieldByName(Field).AsFloat := SQLConsultaInventario.FieldByName(Field).AsFloat + StrToFloat(FormatFloat('#,##0.00',StrToFloat((Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,
                                                                                                                                                              QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger))))));
                                        end
                                      else
                                        begin
                                          SQLConsultaInventario.Append;
                                          SQLConsultaInventario.FieldByName('PRODICOD').AsString := QueryProduto.FieldByName('PRODICOD').AsString;
                                          SQLConsultaInventario.FieldByName(Field).AsString      := Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger));
                                          SQLConsultaInventarioTIPO.Value                        := EditTipoInv.Text;
                                        end;
                                      SQLConsultaInventario.Post;
                                      QtdeTotal := QtdeTotal + StrToFloat(FormatFloat('#,##0.00',StrToFloat((Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,
                                                                                                                                                              QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger))))));
                                      LBQTDE.Caption := 'Qtde Total: ' + FloatToStr(QtdeTotal);
                                      LBQTDE.Update;
                                    end
                                  else
                                    begin
                                      Memo.Lines.Add(' Não Encontrado - Linha: ' + IntToStr(LinhaAtual) +
                                                     ' Produto : ' + Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODICOD').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODICOD').AsInteger))+
                                                     ' Qtde : '    + Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger)));
                                      HouveErro := True;
                                    end;
                                except on e:Exception do
                                begin
                                  HouveErro := True;
                                  Memo.Lines.Add('Problemas ao importar :'+
                                                 ' Produto : ' + Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODICOD').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODICOD').AsInteger))+
                                                 ' Qtde : '    + Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger))+#13#10+e.message);

                                end; end;
                              end;
                          end
                        else
                          begin
                            try
                              if EncontrouProduto(Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODICOD').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODICOD').AsInteger)),
                                                  QueryProduto) then
                                begin
                                  SQLConsultaInventario.Close;
                                  SQLConsultaInventario.MacroByName('MFILTRO').AsString :=
                                                          ' EMPRICOD = '      + IntToStr(CodEmpresa)  +
                                                          ' AND TERMICOD = '  + IntToStr(CodTerminal) +
                                                          ' AND INVDDATA = ''' + FormatDateTime('mm/dd/yyyy',DataInventario) +
                                                          ''' AND PRODICOD = ' + QueryProduto.FieldByName('PRODICOD').AsString ;
                                  SQLConsultaInventario.Open;
                                  if not SQLConsultaInventario.IsEmpty then
                                    begin
                                      SQLConsultaInventario.Edit;
                                      SQLConsultaInventario.FieldByName(Field).AsFloat := SQLConsultaInventario.FieldByName(Field).AsFloat + StrToFloat(FormatFloat('#,##0.00',StrToFloat((Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,
                                                                                                                                                              QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger))))));
                                    end
                                  else
                                    begin
                                      SQLConsultaInventario.Append;
                                      SQLConsultaInventario.FieldByName('PRODICOD').AsString  := QueryProduto.FieldByName('PRODICOD').AsString;
                                      SQLConsultaInventario.FieldByName(Field).AsString       := Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger));
                                      SQLConsultaInventarioTIPO.Value                         := EditTipoInv.Text;
                                    end;
                                  SQLConsultaInventario.Post;
                                  QtdeTotal := QtdeTotal + StrToFloat(FormatFloat('#,##0.00',StrToFloat((Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,
                                                                                                                                                          QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger))))));
                                  LBQTDE.Caption := 'Qtde Total: ' + FloatToStr(QtdeTotal);
                                  LBQTDE.Update;
                                end
                              else
                                begin
                                  Memo.Lines.Add(' Não Encontrado - Linha: ' + IntToStr(LinhaAtual) +
                                                 ' Produto : ' + Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODICOD').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODICOD').AsInteger))+
                                                 ' Qtde : '    + Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger)));
                                                 HouveErro := True;

                                end;
                            except on e:Exception do
                            begin
                              HouveErro := True;
                              Memo.Lines.Add('Problemas ao importar :'+
                                             ' Produto : ' + Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODICOD').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODICOD').AsInteger))+
                                             ' Qtde : '    + Trim(Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger))+#13#10+E.message);
                            end ;end;
                          end;
                      except
                        on E:Exception do
                          begin
                            Informa('Problemas ao importar produtos, ANOTE O ERRO :' + #13 + E.Message);
                            HouveErro := True;
                          end;
                      end;
                    end;
                  if HouveErro then
                  begin
                    Informa('Houveram alguns problemas ao importar os produtos, verifique !');
                    // Grava em TXT os Erros Relatados para posterior analise
                    CaminhoNomeArquivo := 'c:\easy2solutions\coletor\Erros_Coletor_'+FormatDateTime('ddmmyyyy',now);
                    AssignFile(Texto,CaminhoNomeArquivo);
                    Rewrite(Texto);
                    Reset(Texto);
                    Write(Texto);
                  end;

                    // Fechar Arquivo
                    CloseFile(Texto);
                end
              else
                Application.MessageBox('Arquivo informado no cadastro de coletores não foi encontrado!','Atenção',MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONINFORMATION);
            end;
        end
      else
        Application.MessageBox('Erro Interno: Parâmetro do Field não foi informado!','Atenção',MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONERROR);
    end
  else
     Application.MessageBox('Erro Interno: Parâmetro da Query não foi informado!','Atenção',MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONERROR);

  if not HouveErro then
    begin
      Showmessage('Importação Concluida com Sucesso!');
      TRY CloseFile(Texto); EXCEPT END;
      Close;
    end;
end;

procedure TFormTelaImportaItens.FormDestroy(Sender: TObject);
begin
  FormTelaImportaItens := nil;
end;

procedure TFormTelaImportaItens.SQLConsultaInventarioBeforePost(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('INVIPRODPOS').AsInteger    := DM.ProximoCodigoUnico('INVENTARIOESTOQUE',SQLConsultaInventario,DSSQLConsultaInventario,SQLConsultaInventario.FieldByName('INVIPRODPOS').FieldNo);
  DataSet.FieldByName('REGISTRO').AsDateTime      := Now ;
  DataSet.FieldByName('PENDENTE').AsString        := 'S' ;
end;

procedure TFormTelaImportaItens.SQLConsultaInventarioNewRecord(
  DataSet: TDataSet);
begin
  SQLConsultaInventario.FieldByName('EMPRICOD').Value  := CodEmpresa;
  SQLConsultaInventario.FieldByName('TERMICOD').Value  := CodTerminal;
  SQLConsultaInventario.FieldByName('INVDDATA').Value  := DataInventario;
end;

function TFormTelaImportaItens.AnalizaInfo(info:String):String;
var oEmpresa, oCodigo, oQtd : String;
    nEmpresa, nCodigo, nQtd : String;
    i : Integer;
    Continua, BEmp,BCod, Bqtd : Boolean;
begin
  if length(info) > 18 then
  begin
    // ajusta empresa
    oEmpresa := Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSEMPRICOD').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMEMPRICOD').AsInteger);
    nEmpresa := '';
    Continua := True;
    for i := 1 to length(oEmpresa) do
    begin
      if oEmpresa[i] = ',' then
        Continua := False
      else
        if Continua = True then
          nEmpresa := nEmpresa + oEmpresa[i];
    end;
    While Length(nEmpresa) < QueryConfigColetor.FieldByName('CFCOITAMEMPRICOD').AsInteger do
      insert(' ',nempresa,Length(nempresa)+1);

    // ajusta codigo de barras
    oCodigo := Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODICOD').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODICOD').AsInteger);
    nCodigo := '';
    Continua := True;
    for i := 1 to length(oCodigo) do
    begin
      if oCodigo[i] = ',' then
        Continua := False
      else
        if Continua = True then
          nCodigo := nCodigo + oCodigo[i];
    end;
    While Length(nCodigo) < QueryConfigColetor.FieldByName('CFCOITAMPRODICOD').AsInteger do
      Insert(' ',nCodigo,Length(nCodigo)+1);


    // ajusta Quantidade
    oQtd := Copy(Info,QueryConfigColetor.FieldByName('CFCOIPOSPRODN3QTDE').AsInteger,QueryConfigColetor.FieldByName('CFCOITAMPRODN3QTDE').AsInteger);
    nQtd := '';
    Continua := True;
    for i := 1 to length(oQtd) do
    begin
      if oQtd[i] = ',' then
        Continua := False
      else
        if Continua = True then
          nQtd := nQtd + oQtd[i];
    end;
    Trim(nQtd);
  end else
  begin
    BEmp:= False;
    BCod:= False;
    Bqtd:= False;
    nEmpresa := '';
    nCodigo  := '';
    nQtd     := '';
    for i:= 1 to length(info) do
    begin
      if info[i] = ',' then
      begin
          if BEmp = False then
            BEmp := True
          else if (BEmp = True) and (BCod = False) then
            BCod := True
          else if (BEmp = True) and (BCod = True) then
            Bqtd := True;
      end else
      begin
          if BEmp = False then
            nEmpresa := nEmpresa + Info[i]
          else if (BEmp = True) and (Bcod=False) then
            nCodigo  := nCodigo  + Info[i]
          else if (BEmp = True) and (BCod = True) then
            nQtd     := nQtd     + Info[i];
      end;
    end;
    While Length(nEmpresa) < QueryConfigColetor.FieldByName('CFCOITAMEMPRICOD').AsInteger do
      insert(' ',nempresa,Length(nempresa)+1);

    While Length(nCodigo) < QueryConfigColetor.FieldByName('CFCOITAMPRODICOD').AsInteger do
      Insert(' ',nCodigo,Length(nCodigo)+1);
  end;

  Result:= nEmpresa+','+nCodigo+','+nQtd
end;

end.
