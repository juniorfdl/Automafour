unit TelaExportacaoBalanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, RxQuery, DBLists, Buttons,
  jpeg, ExtCtrls, StdCtrls, ComCtrls, RxLookup, Grids, DBGrids, Mask,
  DBCtrls, Placemnt, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaExportacaoBalanca = class(TFormTelaGeralTEMPLATE)
    TblCampos: TTableItems;
    TblCamposNAME: TStringField;
    DSTblCampos: TDataSource;
    SQLConfigBalanca: TRxQuery;
    SQLConfigBalancaCFBLICOD: TIntegerField;
    SQLConfigBalancaCFBLA60DESCR: TStringField;
    SQLConfigBalancaCFBLIDECIMAIS: TIntegerField;
    SQLConfigBalancaCFBLCUSASEPAR: TStringField;
    SQLConfigBalancaCFBLA1TIPOSEPAR: TStringField;
    SQLConfigBalancaCFBLA254NOMEARQTXT: TStringField;
    SQLConfigBalancaCFBLA10BALID: TStringField;
    SQLConfigBalancaCFBLIBALIDPOS: TIntegerField;
    SQLConfigBalancaCFBLIBALIDTAM: TIntegerField;
    SQLConfigBalancaCFBLIBALCODPOS: TIntegerField;
    SQLConfigBalancaCFBLIBALCODTAM: TIntegerField;
    SQLConfigBalancaCFBLIVLRPOS: TIntegerField;
    SQLConfigBalancaCFBLIVLRTAM: TIntegerField;
    SQLConfigBalancaPENDENTE: TStringField;
    SQLConfigBalancaREGISTRO: TDateTimeField;
    SQLConfigBalancaCFBLCTIPOPRECO: TStringField;
    SQLConfigBalancaLayoutArq: TRxQuery;
    SQLConfigBalancaLayoutArqCFBLICOD: TIntegerField;
    SQLConfigBalancaLayoutArqCBLAIORDEM: TIntegerField;
    SQLConfigBalancaLayoutArqCBLAA25CAMPO: TStringField;
    SQLConfigBalancaLayoutArqCBLAIPOSICAO: TIntegerField;
    SQLConfigBalancaLayoutArqCBLAITAMANHO: TIntegerField;
    SQLConfigBalancaLayoutArqPENDENTE: TStringField;
    SQLConfigBalancaLayoutArqREGISTRO: TDateTimeField;
    DSSQLConfigBalanca: TDataSource;
    ComboBalanca: TRxDBLookupCombo;
    Label3: TLabel;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoPRODA15APAVIM: TStringField;
    SQLProdutoPRODA15RUA: TStringField;
    SQLProdutoPRODA15PRATEL: TStringField;
    SQLProdutoCLFSICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoICMSICOD: TIntegerField;
    SQLProdutoPRODN3PESOBRUTO: TBCDField;
    SQLProdutoPRODN3PESOLIQ: TBCDField;
    SQLProdutoPRODN3CAPACEMBAL: TBCDField;
    SQLProdutoPRODDCAD: TDateTimeField;
    SQLProdutoPRODDULTALTER: TDateTimeField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoPRODN3VLRVENDAPROM: TBCDField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoPRODN3PERCIPI: TBCDField;
    SQLProdutoPRODN3PERCMARGLUCR: TBCDField;
    SQLProdutoPRODCATIVO: TStringField;
    SQLProdutoPRODCSERVICO: TStringField;
    SQLProdutoPRODCGERACOMIS: TStringField;
    SQLProdutoPRODN2COMISVISTA: TBCDField;
    SQLProdutoPRODN2COMISPRAZO: TBCDField;
    SQLProdutoPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutoPRODICODPAI: TIntegerField;
    SQLProdutoPRODCTIPOBAIXA: TStringField;
    SQLProdutoPRODN3QTDEBAIXA: TBCDField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODIORIGEM: TIntegerField;
    SQLProdutoPENDENTE: TStringField;
    SQLProdutoREGISTRO: TDateTimeField;
    SQLProdutoPRODDULTATUALIZ: TDateTimeField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODISITTRIB: TIntegerField;
    SQLProdutoPRODICODETIQBAL: TIntegerField;
    SQLProdutoPRODIDIASVALIDADE: TIntegerField;
    SQLProdutoPRODITIPOPRODBALAN: TStringField;
    DSTeste: TDataSource;
    GroupBox1: TGroupBox;
    GridConfig: TDBGrid;
    DBEditCaminhoArquivo: TDBEdit;
    LBCaminhoArquivo: TLabel;
    CKToledoGrupoGeral: TCheckBox;
    FormStorage: TFormStorage;
    ckTestaPesoUnidade: TCheckBox;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    ProgressBar: TProgressBar;
    Label1: TLabel;
    BtGerar: TSpeedButton;
    procedure BtGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBalancaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaExportacaoBalanca: TFormTelaExportacaoBalanca;

implementation

uses UnitLibrary;
{$R *.dfm}

procedure TFormTelaExportacaoBalanca.BtGerarClick(Sender: TObject);
Var
  I,TamRegistro:Integer;
  Registro,LinhaVazia,Separador, STR, Unidade, PrecoSTR, ArqTemp, ArqOficial : String;
  Arquivo:TextFile;
  Preco : Double;
begin
  inherited;
  If not SQLConfigBalanca.IsEmpty Then
    Begin
      If SQLConfigBalancaLayoutArq.IsEmpty Then
        Begin
          ShowMessage('Esta Balança não está configurada para gerar arquivo!');
          Abort;
        End;
      ArqTemp    := SQLConfigBalanca.FieldByName('CFBLA254NOMEARQTXT').Value+'.tmp';
      ArqOficial := SQLConfigBalanca.FieldByName('CFBLA254NOMEARQTXT').Value;
      AssignFile(Arquivo, ArqTemp);
      Rewrite(Arquivo);
      TamRegistro:=0;
      SQLConfigBalancaLayoutArq.First;
      While Not SQLConfigBalancaLayoutArq.Eof Do
        Begin
          TamRegistro:=TamRegistro+SQLConfigBalancaLayoutArqCBLAITAMANHO.Value;
          SQLConfigBalancaLayoutArq.Next;
        End;
      LinhaVazia:='';
      For I:=1 To TamRegistro Do
        LinhaVazia:=LinhaVazia+' ';
      SQLProduto.Last;
      SQLProduto.First;
      ProgressBar.Min:=1;
      ProgressBar.Max:=SQLProduto.RecordCount;
      ProgressBar.Update;
      ProgressBar.Position:=1;
      try
        While Not SQLProduto.Eof Do
          Begin
            If SQLProdutoPRODICODBALANCA.asInteger>0 Then
              Begin
                //-------------------------------------------------------------------
                // Inicio da rotina padrao que monta conforme Modelo
                //-------------------------------------------------------------------
                if ckTestaPesoUnidade.Checked then
                  begin
                    // TOLEDO
                    if copy(ComboBalanca.Text,1,3) = 'TOL' then
                      begin
                        // 1 - Fixo Grupo Geral tam=2
                        Registro:= '01';

                        // 2 - Unidade tam=1
                        Unidade := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLProdutoUNIDICOD.AsString);
                        if (Unidade = 'KG') then
                          Registro:= Registro + '0'
                        else
                          Registro:= Registro + '1';

                        // 3 - Cod Produto na Balanca tam=6
                        Registro:= Registro + Preenche(SQLProdutoPRODICODBALANCA.AsString,'0',6,0);

                        // 4 - Valor Venda tam=6
                        if (((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
                           ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now)  and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = ''))) and (SQLProdutoPRODN3VLRVENDAPROM.Value > 0) then
                           PrecoSTR := FormatFloat('##0.00',SQLProdutoPRODN3VLRVENDAPROM.Value)
                        else
                           PrecoSTR := FormatFloat('##0.00',SQLProdutoPRODN3VLRVENDA.Value);

                        While Pos('.',PrecoSTR) > 0 do
                          Delete(PrecoSTR,Pos('.',PrecoSTR),1);
                        While Pos(',',PrecoSTR) > 0 do
                          Delete(PrecoSTR,Pos(',',PrecoSTR),1);
                        Registro:= Registro + Preenche(PrecoSTR,'0',6,0);

                        // 5- Dias de Validade tamanho=3
                        Registro:= Registro + Preenche(SQLProdutoPRODIDIASVALIDADE.AsString,'0',3,0);

                        // 6- Descricao Produto tamanho=65
                        Registro:= Registro + Preenche(SQLProdutoPRODA30ADESCRREDUZ.AsString,'',50,2);

                        // 7- Campo Fixo tamanho=15
                        Registro:= Registro + Preenche('0','0',15,0);

                        // Grava linha
                        WriteLn(Arquivo,Registro);

                        // Limpa variavel
                        Registro:='';
                      end;

                    // FILIZOLA
                    if (copy(ComboBalanca.Text,1,3) = 'FIL') then
                      begin
                        // 1- Cod Produto na Balanca tamanho=6
                        Registro:= Registro + Preenche(SQLProdutoPRODICODBALANCA.AsString,'0',6,0);

                        // 2- Unidade tamanho=1
                        Unidade := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLProdutoUNIDICOD.AsString);
                        if (Unidade = 'KG') then
                          Registro:= Registro + 'P'
                        else
                          Registro:= Registro + 'U';

                        // 3- Descricao Produto tamanho=22
                        Registro:= Registro + Preenche(copy(SQLProdutoPRODA30ADESCRREDUZ.AsString,1,22),'',22,2);

                        // 4- Vlr Venda sem virgula tamanho=7
                        if (((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
                           ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = ''))) and (SQLProdutoPRODN3VLRVENDAPROM.Value > 0) then
                           PrecoSTR := FormatFloat('##0.00',SQLProdutoPRODN3VLRVENDAPROM.Value)
                        else
                           PrecoSTR := FormatFloat('##0.00',SQLProdutoPRODN3VLRVENDA.Value);

                        While Pos('.',PrecoSTR) > 0 do
                          Delete(PrecoSTR,Pos('.',PrecoSTR),1);
                        While Pos(',',PrecoSTR) > 0 do
                          Delete(PrecoSTR,Pos(',',PrecoSTR),1);
                        Registro:= Registro + Preenche(PrecoSTR,'0',7,0);

                        // 5- Dias de Validade tamanho=3
                        Registro:= Registro + Preenche(SQLProdutoPRODIDIASVALIDADE.AsString,'0',3,0);

                        // Grava linha
                        WriteLn(Arquivo,Registro);

                        // Limpa variavel
                        Registro:='';
                      end;

                    // URANO
                    if (copy(ComboBalanca.Text,1,3) = 'URA') then
                      begin
                        // 1- Cod Produto na Balanca tamanho=6
                        Registro:= Registro + Preenche(SQLProdutoPRODICODBALANCA.AsString,'0',6,0);

                        // 2- Texto fixo tamanho=1
                        Registro:= Registro + '*';

                        // 3- Unidade tamanho=1
                        Unidade := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLProdutoUNIDICOD.AsString);
                        if (Unidade = 'KG') then
                          Registro:= Registro + '0'
                        else
                          Registro:= Registro + '6';

                        // 4- Descricao Produto tamanho=20
                        Registro:= Registro + Preenche(copy(SQLProdutoPRODA30ADESCRREDUZ.AsString,1,20),'',20,2);

                        // 5- Vlr Venda sem virgula tamanho=7
                        if (((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
                           ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = ''))) and (SQLProdutoPRODN3VLRVENDAPROM.Value > 0) then
                           PrecoSTR := FormatFloat('##0.0000',SQLProdutoPRODN3VLRVENDAPROM.Value)
                        else
                           PrecoSTR := FormatFloat('##0.0000',SQLProdutoPRODN3VLRVENDA.Value);

                        While Pos('.',PrecoSTR) > 0 do
                          Delete(PrecoSTR,Pos('.',PrecoSTR),1);
                        Registro:= Registro + Preenche(PrecoSTR,'0',11,0); {antes tava 9, alterei a pedido do uilinton}

                        // 6- Dias de Validade tamanho=3 + D
                        Registro := Registro + Preenche(SQLProdutoPRODIDIASVALIDADE.AsString,'0',3,0) + 'D';

                        // Grava linha
                        WriteLn(Arquivo,Registro);

                        // Limpa variavel
                        Registro:='';
                      end;
                  end
                else
                  begin
                    //-------------------------------------------------------------------
                    // Inicio da rotina padrao que le os campos na tabela balancalayout
                    //-------------------------------------------------------------------
                    if CKToledoGrupoGeral.Checked then
                      Registro:= '01'
                    else
                      Registro:=LinhaVazia;

                    SQLConfigBalancaLayoutArq.First;
                    While Not SQLConfigBalancaLayoutArq.EOF Do
                      Begin
                        Case SQLProduto.FieldByName(SQLConfigBalancaLayoutArqCBLAA25CAMPO.Value).DataType Of
                          FtInteger  :Begin
                                         Registro :=Copy(Registro,1,SQLConfigBalancaLayoutArqCBLAIPOSICAO.Value-1)+
                                         Preenche(SQLProduto.FieldByName(SQLConfigBalancaLayoutArqCBLAA25CAMPO.Value).AsString,'0',SQLConfigBalancaLayoutArqCBLAITAMANHO.Value,0);
                                      End;
                          FtString   :Begin
                                         Registro:=Copy(Registro,1,SQLConfigBalancaLayoutArqCBLAIPOSICAO.Value-1)+
                                         Preenche(SQLProduto.FieldByName(SQLConfigBalancaLayoutArqCBLAA25CAMPO.Value).asString,'',SQLConfigBalancaLayoutArqCBLAITAMANHO.Value,2) +
                                                  Copy(Registro,SQLConfigBalancaLayoutArqCBLAIPOSICAO.Value+SQLConfigBalancaLayoutArqCBLAITAMANHO.Value,TamRegistro-(SQLConfigBalancaLayoutArqCBLAIPOSICAO.Value+SQLConfigBalancaLayoutArqCBLAITAMANHO.Value));
                                      End;
                          FtBCD,
                          FtFloat    :If SQLConfigBalanca.FieldByName('CFBLCUSASEPAR').Value='S' Then
                                        Begin
                                          if ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
                                             ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = '')) then
                                             Preco := SQLProdutoPRODN3VLRVENDAPROM.Value
                                          else
                                             Preco := SQLProdutoPRODN3VLRVENDA.AsFloat;
                                          Separador:=SQLConfigBalanca.FieldByName('CFBLA1TIPOSEPAR').Value;
                                          Registro :=Copy(Registro,1,SQLConfigBalancaLayoutArqCBLAIPOSICAO.Value-1)+
                                                     Format('%.'+IntToStr(SQLConfigBalancaLayoutArqCBLAITAMANHO.Value-1-SQLConfigBalanca.FieldByName('CFBLIDECIMAIS').Value)+'d',[Round(Int(Preco))])+Separador+
                                                     Copy(Format('%.'+IntToStr(SQLConfigBalanca.FieldByName('CFBLIDECIMAIS').Value)+'f',[Frac(Preco)]),3,SQLConfigBalanca.FieldByName('CFBLIDECIMAIS').AsInteger)+
                                                     Copy(Registro,SQLConfigBalancaLayoutArqCBLAIPOSICAO.Value+SQLConfigBalancaLayoutArqCBLAITAMANHO.Value,TamRegistro+1-(SQLConfigBalancaLayoutArqCBLAIPOSICAO.Value+SQLConfigBalancaLayoutArqCBLAITAMANHO.Value));
                                        End
                                      Else
                                        Begin
                                          if (((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
                                             ((SQLProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (SQLProduto.FieldByName('PRODDFIMPROMO').AsString = ''))) and (SQLProdutoPRODN3VLRVENDAPROM.Value > 0) then
                                             Preco := SQLProdutoPRODN3VLRVENDAPROM.Value
                                          else
                                             Preco := SQLProdutoPRODN3VLRVENDA.AsFloat;
                                          STR := FormatFloat('##0.00',Preco);
                                          While Pos('.',STR) > 0 do
                                            Delete(STR,Pos('.',STR),1);
                                          While Pos(',',STR) > 0 do
                                            Delete(STR,Pos(',',STR),1);
                                          Registro := Copy(Registro,1,SQLConfigBalancaLayoutArqCBLAIPOSICAO.Value-1)+
                                          Preenche(STR,'0',SQLConfigBalancaLayoutArqCBLAITAMANHO.Value,0);
                                        End;
                        End;
                        SQLConfigBalancaLayoutArq.Next;
                      End;
                    WriteLn(Arquivo,Registro);
                  end;
              End;
            SQLProduto.Next;
            ProgressBar.Position:=ProgressBar.Position+1;
            ProgressBar.UpDate;
          End;

        CloseFile(Arquivo);
        {Troca Nome do arquivo para o correto}
        CopyFile(Pchar(ArqTemp), Pchar(ArqOficial), False);
        DeleteFile(PChar(ArqTemp));
      except
        Application.MessageBox('Problemas na geração do arquivo, verifique suas configurações !', PChar('Advanced Control Informa'), MB_SYSTEMMODAL + MB_Ok + MB_IconInformation);
        CloseFile(Arquivo);
        Abort;
      end;
      Application.MessageBox('Operação Concluida com Sucesso!', PChar('Advanced Control Informa'), MB_SYSTEMMODAL + MB_Ok + MB_IconInformation);
    End;
end;

procedure TFormTelaExportacaoBalanca.FormCreate(Sender: TObject);
begin
  inherited;
  SQLConfigBalanca.Close;
  SQLConfigBalanca.Open;
  SQLProduto.Open;
  if SQLConfigBalanca.RecordCount = 1 then
    ComboBalanca.KeyValue := SQLConfigBalancaCFBLICOD.Value;

  DBEditCaminhoArquivo.Visible := False;
  LBCaminhoArquivo.Visible := False;
  LBCaminhoArquivo.Update;
end;

procedure TFormTelaExportacaoBalanca.ComboBalancaChange(Sender: TObject);
begin
  inherited;
  SQLConfigBalancaLayoutArq.Close;
  SQLConfigBalancaLayoutArq.MacroByName('MFiltro').Value := 'CFBLICOD = '+ SQLConfigBalancaCFBLICOD.AsString;
  SQLConfigBalancaLayoutArq.Open;
  if ComboBalanca.KeyValue <> null then
    begin
      DBEditCaminhoArquivo.Visible := True;
      LBCaminhoArquivo.Visible := True;
      LBCaminhoArquivo.Update;
    end
  else
    begin
      DBEditCaminhoArquivo.Visible := False;
      LBCaminhoArquivo.Visible := False;
      LBCaminhoArquivo.Update;
    end;
end;

end.
