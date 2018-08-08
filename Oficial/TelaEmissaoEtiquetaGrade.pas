unit TelaEmissaoEtiquetaGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  EDBNum, DB, MemTable, DBTables, RxQuery, Buttons, jpeg, ExtCtrls,
  ToolEdit, CurrEdit, Varsys, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaEmissaoEtiquetaGrade = class(TFormTelaGeralTEMPLATE)
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradeGRADICOD: TIntegerField;
    SQLProdutoGradeGRTMICOD: TIntegerField;
    SQLProdutoGradeCORICOD: TIntegerField;
    SQLGradeTamanho: TRxQuery;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    TblQtde: TMemoryTable;
    TblQtdeCORICOD: TIntegerField;
    TblQtdeCorLookUp: TStringField;
    TblQtdeField1: TFloatField;
    TblQtdeBCDField2: TFloatField;
    TblQtdeBCDField3: TFloatField;
    TblQtdeBCDField4: TFloatField;
    TblQtdeBCDField5: TFloatField;
    TblQtdeBCDField6: TFloatField;
    TblQtdeBCDField7: TFloatField;
    TblQtdeBCDField8: TFloatField;
    TblQtdeBCDField9: TFloatField;
    TblQtdeBCDField10: TFloatField;
    TblQtdeBCDField11: TFloatField;
    TblQtdeBCDField12: TFloatField;
    TblQtdeBCDField13: TFloatField;
    TblQtdeBCDField14: TFloatField;
    TblQtdeBCDField15: TFloatField;
    TblQtdeCod1: TIntegerField;
    TblQtdeCod2: TIntegerField;
    TblQtdeCod3: TIntegerField;
    TblQtdeCod4: TIntegerField;
    TblQtdeCod5: TIntegerField;
    TblQtdeCod6: TIntegerField;
    TblQtdeCod7: TIntegerField;
    TblQtdeCod8: TIntegerField;
    TblQtdeCod9: TIntegerField;
    TblQtdeCod10: TIntegerField;
    TblQtdeCod11: TIntegerField;
    TblQtdeCod12: TIntegerField;
    TblQtdeCod13: TIntegerField;
    TblQtdeCod14: TIntegerField;
    TblQtdeCod15: TIntegerField;
    TblQtdeTotal: TFloatField;
    DSTblQtde: TDataSource;
    Panel4: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit5: TDBEdit;
    Panel6: TPanel;
    DBGridLista: TDBGrid;
    Panel5: TPanel;
    Label5: TLabel;
    EditTotal: TCurrencyEdit;
    Label7: TLabel;
    DSSQLProdutoGrade: TDataSource;
    DBEdit2: TDBEdit;
    DSSQLConfigEtiquetaCodigoBarra: TDataSource;
    SQLConfigEtiquetaCodigoBarra: TRxQuery;
    SQLConfigEtiquetaCodigoBarraCFCBICOD: TIntegerField;
    SQLConfigEtiquetaCodigoBarraCFCBA60DESCR: TStringField;
    SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA: TStringField;
    SQLConfigEtiquetaCodigoBarraCFCBA4PORTASERIAL: TStringField;
    SQLConfigEtiquetaCodigoBarraCFCBA100PATHEXEIMP: TStringField;
    SQLConfigEtiquetaCodigoBarraCFCBA100PATHARQTXT: TStringField;
    SQLConfigEtiquetaCodigoBarraCFCBINROCOL: TIntegerField;
    SQLConfigEtiquetaCodigoBarraCFCBA254TEXTOTERM: TMemoField;
    SQLProdutoGradePRODA30CODESTRUT: TStringField;
    SQLProdutoGradePRODA60CODBAR: TStringField;
    SQLProdutoGradePRODA15CODANT: TStringField;
    SQLProdutoGradePRODIAGRUPGRADE: TIntegerField;
    SQLProdutoGradePRODA60REFER: TStringField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    SQLProdutoGradePRODA30ADESCRREDUZ: TStringField;
    SQLProdutoGradePRODA15APAVIM: TStringField;
    SQLProdutoGradePRODA15RUA: TStringField;
    SQLProdutoGradePRODA15PRATEL: TStringField;
    SQLProdutoGradeCLFSICOD: TIntegerField;
    SQLProdutoGradeMARCICOD: TIntegerField;
    SQLProdutoGradeUNIDICOD: TIntegerField;
    SQLProdutoGradeGRUPICOD: TIntegerField;
    SQLProdutoGradeSUBGICOD: TIntegerField;
    SQLProdutoGradeVARIICOD: TIntegerField;
    SQLProdutoGradeICMSICOD: TIntegerField;
    SQLProdutoGradePRODN3PESOBRUTO: TFloatField;
    SQLProdutoGradePRODN3PESOLIQ: TFloatField;
    SQLProdutoGradePRODN3CAPACEMBAL: TFloatField;
    SQLProdutoGradePRODDCAD: TDateTimeField;
    SQLProdutoGradePRODDULTALTER: TDateTimeField;
    SQLProdutoGradePRODN3VLRVENDA: TFloatField;
    SQLProdutoGradePRODN3VLRVENDAPROM: TFloatField;
    SQLProdutoGradePRODDINIPROMO: TDateTimeField;
    SQLProdutoGradePRODDFIMPROMO: TDateTimeField;
    SQLProdutoGradePRODN3VLRCOMPRA: TFloatField;
    SQLProdutoGradePRODN3VLRCUSTO: TFloatField;
    SQLProdutoGradePRODN3VLRCUSTOMED: TFloatField;
    SQLProdutoGradePRODN3PERCIPI: TFloatField;
    SQLProdutoGradePRODN3PERCMARGLUCR: TFloatField;
    SQLProdutoGradePRODCATIVO: TStringField;
    SQLProdutoGradePRODCSERVICO: TStringField;
    SQLProdutoGradePRODISITTRIB: TIntegerField;
    SQLProdutoGradePRODITIPOPRODBALAN: TStringField;
    SQLProdutoGradePRODICODETIQBAL: TIntegerField;
    SQLProdutoGradePRODIDIASVALIDADE: TIntegerField;
    SQLProdutoGradePRODBIMAGEM: TBlobField;
    SQLProdutoGradePRODA30INF01ETQBARRAS: TStringField;
    SQLProdutoGradePRODA30INF02ETQBARRAS: TStringField;
    SQLProdutoGradePRODDULTCOMPRA: TDateTimeField;
    SQLProdutoGradePRODN3QTDULTCOMPRA: TFloatField;
    BtnOk: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeCalcFields(DataSet: TDataSet);
    procedure TblQtdeField1Change(Sender: TField);
    procedure DBGridListaEnter(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
  private
    { Private declarations }
    Calculando,MontandoGrade:Boolean;
    Function EncontraTamanho(TAM:Integer):Integer;
  public
    { Public declarations }
  end;

var
  FormTelaEmissaoEtiquetaGrade: TFormTelaEmissaoEtiquetaGrade;

implementation

uses DataModulo, FormResources, TelaEmissaoEtiquetasCodigoBarras,
     UnitLibrary, WaitWindow;

{$R *.dfm}

Function TFormTelaEmissaoEtiquetaGrade.EncontraTamanho(TAM:Integer):Integer;
Var
  I:Integer;
Begin
  Result:=0;
  SQLGradeTamanho.First;
  I:=1;
  While Not SQLGradeTamanho.Eof Do
    Begin
      If SQLGradeTamanhoGRTMICOD.Value=TAM Then
        Begin
          Result:=I;
          Break;
        End;
      SQLGradeTamanho.Next;Inc(I);
    End;
End;
procedure TFormTelaEmissaoEtiquetaGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  If SQLProdutoGrade.DataSource.DataSet.State in dsEditModes Then
    SQLProdutoGrade.DataSource.DataSet.Cancel;
end;

procedure TFormTelaEmissaoEtiquetaGrade.TblQtdeBeforeDelete(DataSet: TDataSet);
begin
  Abort;
  inherited;
end;

procedure TFormTelaEmissaoEtiquetaGrade.TblQtdeBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaEmissaoEtiquetaGrade.TblQtdeCalcFields(DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  If MontandoGrade Then Exit;
  TblQtde.FindField('Total').asFloat:=0;
  For I:=1 To 15 Do
    TblQtde.FindField('Total').asFloat:=TblQtde.FindField('Total').asFloat+TblQtde.FindField(IntToStr(I)).asFloat;
end;

procedure TFormTelaEmissaoEtiquetaGrade.TblQtdeField1Change(Sender: TField);
Var
  B:TBookMark;
begin
  inherited;
  If Not MontandoGrade and Not Calculando Then
    Begin
      Calculando := True;
      If TblQtde.FindField('Cod'+(Sender as TField).FieldName).asInteger=0 Then
        Begin
          ShowMessage('Esse produto não possui esta posição na grade!');
          Abort;
        End;
      Sender.DataSet.Post;
      B:=Sender.DataSet.GetBookmark;
      Sender.DataSet.DisableControls;
      Sender.DataSet.First;EditTotal.Value:=0;
      While Not Sender.DataSet.Eof Do
        Begin
          EditTotal.Value:=EditTotal.Value+Sender.DataSet.FindField('Total').AsFloat;
          Sender.DataSet.Next;
        End;
      Sender.DataSet.EnableControls;
      Sender.DataSet.GotoBookmark(B);
//      SQLProdutoGrade.DataSource.DataSet.FindField('PVITN3QUANT').AsVariant:=EditTotal.Value;
      Calculando := False;
   End;
end;

procedure TFormTelaEmissaoEtiquetaGrade.DBGridListaEnter(Sender: TObject);
begin
  inherited;
  DBGridLista.SelectedIndex := 1 ;
end;

procedure TFormTelaEmissaoEtiquetaGrade.BtnOkClick(Sender: TObject);
Var
  I,Qtde,Etiquetas,Total:Integer;
  DataSet:TDataSet;
begin
  inherited;
  Total := StrToInt(FormatFloat('000',EditTotal.Value));
  if not SQLConfigEtiquetaCodigoBarra.Active then SQLConfigEtiquetaCodigoBarra.Open;
  SQLConfigEtiquetaCodigoBarra.Locate('CFCBICOD',DM.ConfigEtiqueta,[]);
  // Removida por Adilson para nao travar quando nao for multiplos
  {if SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsInteger > 1 then
    if not (Total mod SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsInteger = 0) then
      begin
        Informa('Sua etiqueta está configurada com ' + SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsString + ' colunas...' + #13 +
                'A Quantidade digitada de ser um múltiplo de ' + SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsString);
        Exit;
      end;}
  DataSet := DSMasterSys.DataSet;
  TblQtde.First;
  DataSet.DisableControls;
//  MakeWindowMessage('Aguarde, gerando etiquetas...');
  while not TblQtde.Eof do
    begin
      for I:=1 To 15 do
        begin
          if TblQtde.FindField(IntToStr(I)).asFloat<>0 then
            begin
              if (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.AsString = 'LASERJATO') or
                 (SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsInteger > 1) then
                Etiquetas := TblQtde.FindField(IntToStr(I)).Value
              else
                Etiquetas := 1;
                  for Qtde := 1 to Etiquetas do
                    begin
                      if not (DataSet.State in DsEditModes) then
                        DataSet.Append;
                      DataSet.FindField('ProdutoCodigo').asString       := TblQtde.FindField('Cod'+IntToStr(I)).Value;
                      DataSet.FindField('CodigoBarras').asString        := SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
                      DataSet.FindField('REFERENCIA').asString          := SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
                      DataSet.FindField('Descricao').asString           := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
                      DataSet.FindField('PRECOVAREJO').AsVariant       := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRVENDA',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
                      DataSet.FindField('PRECOATACADO').AsVariant       := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRVENDA2',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
                      DataSet.FindField('Preco').AsVariant              := RetornaPreco(SQLProdutoGrade,DM.SQLConfigVenda.fieldbyname('TPRCICOD8').asString,'') ;

                      if DataSet.FindField('Preco').AsVariant <> SQLLocate('PRODUTO','PRODICOD','PRODN3VLRVENDA',TblQtde.FindField('Cod'+IntToStr(I)).AsString) then
                        DataSet.FindField('PrecoPromo').asString          := DataSet.FindField('Preco').AsVariant;

                      Dm.ProcuraRegistro('GRADETAMANHO',['GRADICOD','GRTMICOD'],[SQLLocate('PRODUTO','PRODICOD','GRADICOD',TblQtde.FindField('Cod'+IntToStr(I)).AsString),SQLLocate('PRODUTO','PRODICOD','GRTMICOD',TblQtde.FindField('Cod'+IntToStr(I)).AsString)],2);
                      DataSet.FindField('Tamanho').asString             := Dm.SQLTemplate.FieldByName('GRTMA5DESCR').AsString;
                      DataSet.FindField('DescricaoReduzida').asString   := SQLLocate('PRODUTO','PRODICOD','PRODA30ADESCRREDUZ',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
                      DataSet.FindField('Marca').asString               := SQLLocate('MARCA','MARCICOD','MARCA60DESCR',SQLLocate('PRODUTO','PRODICOD','MARCICOD',TblQtde.FindField('Cod'+IntToStr(I)).AsString));
                      DataSet.FindField('Cor').asString                 := SQLLocate('COR','CORICOD','CORA30DESCR',SQLLocate('PRODUTO','PRODICOD','CORICOD',TblQtde.FindField('Cod'+IntToStr(I)).AsString));
                      if (SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA.AsString = 'LASERJATO') or
                         (SQLConfigEtiquetaCodigoBarraCFCBINROCOL.AsInteger > 1) then
                        DataSet.FindField('Quant').Value               := 1
                      else
                        DataSet.FindField('Quant').Value                := TblQtde.FindField(IntToStr(I)).Value;
                      DataSet.FindField('Info01EtqBarras').asString     := SQLLocate('PRODUTO','PRODICOD','PRODA30INF01ETQBARRAS',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
                      DataSet.FindField('Info02EtqBarras').asString     := SQLLocate('PRODUTO','PRODICOD','PRODA30INF02ETQBARRAS',TblQtde.FindField('Cod'+IntToStr(I)).AsString);                      DataSet.Post;
                    end;
            end;
        end;
      TblQtde.Next;
    end;
  // DestroyWindow;
  DataSet.EnableControls;
  DataSet.Close;
  DataSet.Open;
  DataSet := nil;
  Close;
end;

procedure TFormTelaEmissaoEtiquetaGrade.FormCreate(Sender: TObject);
Var
  I,Posicao,CorAnt:Integer;
begin
  inherited;
  SQLConfigEtiquetaCodigoBarra.Close;
  SQLConfigEtiquetaCodigoBarra.Open;
  MontandoGrade:=True;
  If Not TblQtde.Active Then
    TblQtde.Open;
  SQLProdutoGrade.Open;
  SQLProdutoGrade.First;
  CorAnt := 0;
  SQLGradeTamanho.ParamByName('GRADICOD').Value:= SQLProdutoGrade.FindField('GRADICOD').Value;
  SQLGradeTamanho.Open;
  While Not SQLProdutoGrade.Eof Do
    Begin
      If (SQLProdutoGrade.FindField('CORICOD').asInteger <> CorAnt) and
          (SQLLocate('COR','CORICOD','CORICOD',SQLProdutoGrade.FindField('CORICOD').AsString) <> '') Then
        Begin
          CorAnt := SQLProdutoGrade.FindField('CORICOD').asInteger;
          TblQtde.Append;
          TblQtde.FindField('CORICOD').Value:=SQLProdutoGrade.FindField('CORICOD').asInteger;
          TblQtde.Post;
        End;
      Posicao:=EncontraTamanho(SQLProdutoGrade.FindField('GRTMICOD').Value);
      If (Posicao>0) and (Posicao<16) and
         (TblQtdeCorLookUp.AsString <> '') Then
        Begin
          TblQtde.Edit;
          TblQtde.FindField('Cod'+IntToStr(Posicao)).Value:=SQLProdutoGrade.FindField('PRODICOD').asInteger;
          TblQtde.Post;
          TblQtde.FindField(IntToStr(Posicao)).Visible      := True;
          TblQtde.FindField(IntToStr(Posicao)).DisplayLabel := SQLGradeTamanho.FindField('GRTMA5DESCR').asString;
        End;
      SQLProdutoGrade.Next;
    End;
  MontandoGrade:=False;
  DBGridLista.Columns[0].Width:=150;
  DBGridLista.Columns[0].Color:=$00E0E0E0;
  DBGridLista.Columns[DBGridLista.Columns.Count-1].Color:=$00E0E0E0;
  For I := 1 To DBGridLista.Columns.Count-1 Do
    Begin
      DBGridLista.Columns[I].Width:=(820 - 248) DIV (DBGridLista.Columns.Count-1);
      DBGridLista.Columns[I].Title.Alignment := taRightJustify;
    End;
  TblQtde.First;
end;

procedure TFormTelaEmissaoEtiquetaGrade.BtnFecharTelaClick(
  Sender: TObject);
begin
  inherited;
  FreeAndNil(FormTelaEmissaoEtiquetaGrade);
end;

end.
