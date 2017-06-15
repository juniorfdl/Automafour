unit TelaCriacaoGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  Mask, Grids, DBGrids, DB, DBTables, RxQuery, MemTable, ComCtrls, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaCriacaoGrade = class(TFormTelaGeralTemplate)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    TblCorPossivel: TMemoryTable;
    TblTamanhoPossivel: TMemoryTable;
    TblCorSelecionada: TMemoryTable;
    TblTamanhoSelecionado: TMemoryTable;
    DSTamanhoPossivel: TDataSource;
    DSTamanhoSelecionado: TDataSource;
    DSCorPossivel: TDataSource;
    DSCorSelecionada: TDataSource;
    SQLGradeTamanho: TRxQuery;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    ListaCorDisp: TListBox;
    ListaTamDisp: TListBox;
    ListaTamSel: TListBox;
    ListaCorSel: TListBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    SQLProduto: TRxQuery;
    UpdateSQLProduto: TUpdateSQL;
    DSProduto: TDataSource;
    ProgressBar: TProgressBar;
    SQLProdutoSaldo: TRxQuery;
    UpdateSQLProdutoSaldo: TUpdateSQL;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMIN: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMAX: TFloatField;
    SQLProdutoSaldoPENDENTE: TStringField;
    SQLProdutoSaldoREGISTRO: TDateTimeField;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    ConsultaGrade: TRxQuery;
    DSConsultaGrade: TDataSource;
    BtnOk: TSpeedButton;
    SQLProdutoPdvs: TRxQuery;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure SQLProdutoBeforePost(DataSet: TDataSet);
    procedure SQLProdutoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure SQLProdutoAfterPost(DataSet: TDataSet);
    procedure SQLProdutoSaldoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    ProdutoCodigo:Integer;
    CodigoBarra,CodEAN:String;
    EanOK : Boolean;
    function EnviaProdutoPDVs : boolean;
  public
    { Public declarations }
  end;

var
  FormTelaCriacaoGrade: TFormTelaCriacaoGrade;

implementation

uses CadastroProdutos, DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaCriacaoGrade.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCor.Open;
  SQLCor.First;
  While Not SQLCor.Eof Do
    Begin
      ListaCorDisp.Items.Add(Format('%-80s',[SQLCor.FindField('CORA30DESCR').asString])+' - '+Format('%.10d',[SQLCor.FindField('CORICOD').asInteger]));
      SQLCor.Next;
    End;
  If ListaCorDisp.Items.Count>0 Then
    ListaCorDisp.ItemIndex:=0;
  SQLCor.Close;
  SQLGradeTamanho.Open;
  While Not SQLGradeTamanho.Eof Do
    Begin
      ListaTamDisp.Items.Add(Format('%-80s',[SQLGradeTamanho.FindField('GRTMA5DESCR').asString])+' - '+Format('%.10d',[SQLGradeTamanho.FindField('GRTMICOD').asInteger]));
      SQLGradeTamanho.Next;
    End;
  If ListaTamDisp.Items.Count>0 Then
    ListaTamDisp.ItemIndex:=0;
  SQLGradeTamanho.Close;
end;

procedure TFormTelaCriacaoGrade.Button1Click(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaCorDisp.Items.Count-1 Do
    ListaCorSel.Items.Add(ListaCorDisp.Items[I]);
  ListaCorDisp.Items.Clear;
  If ListaCorSel.Items.Count>0 Then
    ListaCorSel.ItemIndex:=ListaCorSel.Items.Count-1;
end;

procedure TFormTelaCriacaoGrade.Button4Click(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaCorSel.Items.Count-1 Do
    ListaCorDisp.Items.Add(ListaCorSel.Items[I]);
  ListaCorSel.Items.Clear;
  If ListaCorDisp.Items.Count>0 Then
    ListaCorDisp.ItemIndex:=ListaCorDisp.Items.Count-1;
end;

procedure TFormTelaCriacaoGrade.Button5Click(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaTamDisp.Items.Count-1 Do
    ListaTamSel.Items.Add(ListaTamDisp.Items[I]);
  ListaTamDisp.Items.Clear;
  If ListaTamSel.Items.Count>0 Then
    ListaTamSel.ItemIndex:=ListaTamSel.Items.Count-1;
end;

procedure TFormTelaCriacaoGrade.Button8Click(Sender: TObject);
Var
  I:Integer;
begin
  inherited;
  For I:=0 To ListaTamSel.Items.Count-1 Do
    ListaTamDisp.Items.Add(ListaTamSel.Items[I]);
  ListaTamSel.Items.Clear;
  If ListaTamDisp.Items.Count>0 Then
    ListaTamDisp.ItemIndex:=ListaTamDisp.Items.Count-1;
end;

procedure TFormTelaCriacaoGrade.Button2Click(Sender: TObject);
Var
  ItemIndexBk:Integer;
begin
  inherited;
  If ListaCorDisp.ItemIndex<>-1 Then
    Begin
      ListaCorSel.Items.Add(ListaCorDisp.Items[ListaCorDisp.ItemIndex]);
      ItemIndexBk:=ListaCorDisp.ItemIndex;
      ListaCorDisp.Items.Delete(ListaCorDisp.ItemIndex);
      If ListaCorDisp.Items.Count-1>=ItemIndexBk Then
        ListaCorDisp.ItemIndex:=ItemIndexBk
      Else
        If ItemIndexBk<>0 Then
          ListaCorDisp.ItemIndex:=ItemIndexBk-1;
      ListaCorSel.ItemIndex:=ListaCorSel.Items.Count-1;
    End;
end;

procedure TFormTelaCriacaoGrade.Button3Click(Sender: TObject);
Var
  ItemIndexBk:Integer;
begin
  inherited;
  If ListaCorSel.ItemIndex<>-1 Then
    Begin
      ListaCorDisp.Items.Add(ListaCorSel.Items[ListaCorSel.ItemIndex]);
      ItemIndexBk:=ListaCorSel.ItemIndex;
      ListaCorSel.Items.Delete(ListaCorSel.ItemIndex);
      If ListaCorSel.Items.Count-1>=ItemIndexBk Then
        ListaCorSel.ItemIndex:=ItemIndexBk
      Else
        If ItemIndexBk<>0 Then
          ListaCorSel.ItemIndex:=ItemIndexBk-1;
      ListaCorDisp.ItemIndex:=ListaCorDisp.Items.Count-1;
    End;
end;

procedure TFormTelaCriacaoGrade.Button6Click(Sender: TObject);
Var
  ItemIndexBk:Integer;
begin
  inherited;
  If ListaTamDisp.ItemIndex<>-1 Then
    Begin
      ListaTamSel.Items.Add(ListaTamDisp.Items[ListaTamDisp.ItemIndex]);
      ItemIndexBk:=ListaTamDisp.ItemIndex;
      ListaTamDisp.Items.Delete(ListaTamDisp.ItemIndex);
      If ListaTamDisp.Items.Count-1>=ItemIndexBk Then
        ListaTamDisp.ItemIndex:=ItemIndexBk
      Else
        If ItemIndexBk<>0 Then
          ListaTamDisp.ItemIndex:=ItemIndexBk-1;
      ListaTamSel.ItemIndex:=ListaTamSel.Items.Count-1;
    End;
end;

procedure TFormTelaCriacaoGrade.Button7Click(Sender: TObject);
Var
  ItemIndexBk:Integer;
begin
  inherited;
  If ListaTamSel.ItemIndex<>-1 Then
    Begin
      ListaTamDisp.Items.Add(ListaTamSel.Items[ListaTamSel.ItemIndex]);
      ItemIndexBk:=ListaTamSel.ItemIndex;
      ListaTamSel.Items.Delete(ListaTamSel.ItemIndex);
      If ListaTamSel.Items.Count-1>=ItemIndexBk Then
        ListaTamSel.ItemIndex:=ItemIndexBk
      Else
        If ItemIndexBk<>0 Then
          ListaTamSel.ItemIndex:=ItemIndexBk-1;
      ListaTamDisp.ItemIndex:=ListaTamDisp.Items.Count-1;
    End;
end;

procedure TFormTelaCriacaoGrade.BtnOkClick(Sender: TObject);
Var
  C,T,I:Integer;
  DataSet:TDataSet;
begin
  inherited;
  if ListaCorSel.Items.Count <= 0 then
    begin
      Informa('Nenhuma cor foi selecionada!');
      ListaCorDisp.SetFocus;
      Abort;
    end;
  if ListaTamSel.Items.Count <= 0 then
    begin
      Informa('Nenhum tamanho foi selecionado!');
      ListaTamDisp.SetFocus;
      Abort;
    end;

  ProdutoCodigo := 0;
  If ListaCorSel.Items.Count>0 Then
    If ListaTamSel.Items.Count>0 Then
      Begin
        ProgressBar.Visible:=True;
        ProgressBar.Position:=0;
        ProgressBar.Max := ListaCorSel.Items.Count * ListaTamSel.Items.Count;
        DataSet := SQLGradeTamanho.DataSource.DataSet;
        SQLProduto.Open;
        If (ListaCorSel.Items.Count>0) and (ListaTamSel.Items.Count>0) Then
          Begin
            ConsultaGrade.SQL.Text:='Select GRADICOD,GRTMICOD,CORICOD From PRODUTO Where PRODIAGRUPGRADE=' + DataSet.FindField('PRODIAGRUPGRADE').asString +' AND GRADICOD='+DataSet.FindField('GRADICOD').asString;
            ConsultaGrade.Open;
            For C:=0 To ListaCorSel.Items.Count-1 Do
              Begin
                For T:=0 To ListaTamSel.Items.Count-1 Do
                  Begin
                    ProgressBar.Position:=ProgressBar.Position+1;
                    If Not ConsultaGrade.Locate('GRADICOD;GRTMICOD;CORICOD',VarArrayOf([SQLGradeTamanho.ParamByName('GRADICOD').asString,IntToStr(StrToInt(Copy(ListaTamSel.Items[T],84,10))),IntToStr(StrToInt(Copy(ListaCorSel.Items[C],84,10)))]),[]) Then
                      Begin
                        SQLProduto.Append;
                        For I:=0 To SQLProduto.FieldDefs.Count-1 Do
                          Begin
                            If DataSet.FindField(SQLProduto.FieldDefs[I].Name)<>Nil Then
                              SQLProduto.FindField(SQLProduto.FieldDefs[I].Name).Value:=DataSet.FindField(SQLProduto.FieldDefs[I].Name).Value;
                          End;
                        SQLProduto.FindField('GRADICOD').Value := SQLGradeTamanho.ParamByName('GRADICOD').Value;
                        SQLProduto.FindField('CORICOD').Value  := StrToInt(Copy(ListaCorSel.Items[C],84,10));
                        SQLProduto.FindField('GRTMICOD').Value := StrToInt(Copy(ListaTamSel.Items[T],84,10));
                        SQLProduto.Post;
                        EnviaProdutoPDVs;
                      End;
                  End;
              End;
            ConsultaGrade.Close;
          End;
        ProgressBar.Visible:=False;
        Close;
      End
    Else
      ShowMessage('Selecione os Tamanhos!')
  Else
    ShowMessage('Selecione as Cores!');
end;

procedure TFormTelaCriacaoGrade.SQLProdutoBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  If ProdutoCodigo = 0 Then
    Begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Text := 'Select MAX(PRODICOD) as NRO From PRODUTO';
      DM.SQLTemplate.Open;
      ProdutoCodigo := DM.SQLTemplate.FindField('NRO').AsInteger + 1;
      DM.SQLTemplate.Close;
    End
  Else
    Inc(ProdutoCodigo);
  DataSet.FindField('PRODICOD').asInteger := ProdutoCodigo;

  // Gerando Cod de Barras
  CodEAN := SQLLocate('EMPRESA','EMPRICOD','EMPRA15CODEAN',IntToStr(EmpresaCorrente));
  if CodEAN <> '' then
    begin
      try
        StrToInt(CodEan);
        EanOK := True;
      except
        Informa('O Campo cód. EAN no cadastro de empresa está incorreto, por favor verifique!');
        EanOK := False;
      end;
    end;
  if (CodEan <> '') and (EanOK) then
    CodigoBarra := GeraCodigoBarras(CodEan + Format('%.3d',[DataSet.FindField('PRODICOD').asInteger]))
  else
    CodigoBarra := GeraCodigoBarras(Format('%.3d',[DataSet.FindField('PRODICOD').asInteger]));

  DataSet.FindField('PRODA60CODBAR').asString := CodigoBarra + DigitVerifEAN(CodigoBarra);

{  CodigoBarra := GeraCodigoBarras(Format('%.3d',[DataSet.FindField('PRODICOD').asInteger]));
  DataSet.FindField('PRODA60CODBAR').asString := CodigoBarra + DigitVerifEAN(CodigoBarra);
{ ADILSON 30/05/2003 - COMENTEI AS DUAS LINHAS ABAIXO, E ADICIONEI AS DUAS ACIMA PARA GERAR O CODIGO CERTO...}
{  CodigoBarra := Format('%.12d',[DataSet.FindField('PRODICOD').asInteger]);
  DataSet.FindField('PRODA60CODBAR').asString := CodigoBarra + DigitVerifEAN(CodigoBarra);}
end;

procedure TFormTelaCriacaoGrade.SQLProdutoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
Var
  CodigoBarra:String;
begin
  inherited;
  Inc(ProdutoCodigo);
  DataSet.FindField('PRODICOD').asInteger:=ProdutoCodigo;
{// Adilson 09/06/03 problema na geraï¿½ï¿½o do Ean 13
//  CodigoBarra := Format('%.12d',[DataSet.FindField('PRODICOD').asInteger]);
  CodigoBarra := GeraCodigoBarras(Format('%.3d',[DataSet.FindField('PRODICOD').asInteger]));
  DataSet.FindField('PRODA60CODBAR').asString := CodigoBarra + DigitVerifEAN(CodigoBarra);}

  // Jonas 03/10/2003 mudanï¿½a na rotina para acrescentar o cï¿½d da EAN no cï¿½d de barras
  // para as empresas que fabricam produtos.
  // Gerando Cod de Barras
  CodEAN := SQLLocate('EMPRESA','EMPRICOD','EMPRA15CODEAN',IntToStr(EmpresaCorrente));
  if CodEAN <> '' then
    begin
      try
        StrToInt(CodEan);
        EanOK := True;
      except
        Informa('O Campo cód. EAN no cadastro de empresa está incorreto, por favor verifique!');
        EanOK := False;
      end;
    end;
  if (CodEan <> '') and (EanOK) then
    CodigoBarra := GeraCodigoBarras(CodEan + Format('%.3d',[DataSet.FindField('PRODICOD').asInteger]))
  else
    CodigoBarra := GeraCodigoBarras(Format('%.3d',[DataSet.FindField('PRODICOD').asInteger]));

  DataSet.FindField('PRODA60CODBAR').asString := CodigoBarra + DigitVerifEAN(CodigoBarra);

end;

procedure TFormTelaCriacaoGrade.SQLProdutoAfterPost(DataSet: TDataSet);
begin
  inherited;
  If Not SQLEmpresa.Active Then SQLEmpresa.Open;
  If Not SQLProdutoSaldo.Active Then SQLProdutoSaldo.Open;
  SQLEmpresa.First;
  While Not SQLEmpresa.Eof Do
    Begin
      SQLProdutoSaldo.Append;
      SQLProdutoSaldoEMPRICOD.asInteger   := SQLEmpresaEMPRICOD.asInteger;
      SQLProdutoSaldoPRODICOD.asInteger   := ProdutoCodigo;
      SQLProdutoSaldoPSLDN3QTDE.asFloat   := 0;
      SQLProdutoSaldoPSLDN3QTDMAX.asFloat := 0;
      SQLProdutoSaldoPSLDN3QTDMIN.asFloat := 0;
      SQLProdutoSaldo.Post;
      SQLEmpresa.Next;
    End;
end;

procedure TFormTelaCriacaoGrade.SQLProdutoSaldoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

function TFormTelaCriacaoGrade.EnviaProdutoPDVs : boolean ;
var i : integer;
begin
  {Atualiza a tabela ProdutoPDVs}

  {Filtra Terminais que devem receber carga}
  dm.sqlconsulta.Close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.Text := 'Select Termicod from TERMINAL where TERMCTIPO = ''C''';
  dm.sqlconsulta.Open;
  if not dm.sqlconsulta.IsEmpty then
    begin
      while not dm.sqlconsulta.eof do
        begin
          SQLProdutoPdvs.close;
          SQLProdutoPdvs.MacroByName('MFiltro').Value := 'PRODICOD='+SQLProduto.FindField('PRODICOD').AsString+' and TERMICOD='+dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
          SQLProdutoPdvs.Open;
          if SQLProdutoPdvs.IsEmpty then
            SQLProdutoPdvs.append
          else
            SQLProdutoPdvs.edit;

          {Alimenta Campos}
          for i := 0 to sqlproduto.FieldCount - 1 do
            begin
              try
                SQLProdutoPdvs.FieldByName(sqlproduto.Fields[i].FieldName).AsVariant := sqlproduto.Fields[i].AsVariant ;
              except
                Application.ProcessMessages;
              end;
            end;

          {Campo Fixo}
          SQLProdutoPdvs.FieldByName('TERMICOD').AsString  := dm.SQLConsulta.fieldbyname('TERMICOD').AsString;

          SQLProdutoPdvs.Post;

          {PULA Terminal}
          dm.sqlconsulta.next;
        end;
    end;
  {fecha terminal}
  dm.sqlconsulta.Close;
end;

end.
