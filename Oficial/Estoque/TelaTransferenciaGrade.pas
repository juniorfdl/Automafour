unit TelaTransferenciaGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, DBCtrls, Grids, DBGrids, StdCtrls, Mask,
  ToolEdit, CurrEdit, DB, DBTables, RxQuery, MemTable, Buttons, jpeg, Varsys,
  ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaTransferenciaGrade = class(TFormTelaGeralModalTemplate)
    DSTblQtde: TDataSource;
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
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    SQLGradeTamanho: TRxQuery;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradeGRADICOD: TIntegerField;
    SQLProdutoGradeGRTMICOD: TIntegerField;
    SQLProdutoGradeCORICOD: TIntegerField;
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
    SQLProdutoGradePRODCGERACOMIS: TStringField;
    SQLProdutoGradePRODN2COMISVISTA: TFloatField;
    SQLProdutoGradePRODN2COMISPRAZO: TFloatField;
    SQLProdutoGradePRODDIMOBOLIZ: TDateTimeField;
    SQLProdutoGradePRODICODPAI: TIntegerField;
    SQLProdutoGradePRODCTIPOBAIXA: TStringField;
    SQLProdutoGradePRODN3QTDEBAIXA: TFloatField;
    SQLProdutoGradePRODIORIGEM: TIntegerField;
    SQLProdutoGradePENDENTE: TStringField;
    SQLProdutoGradeREGISTRO: TDateTimeField;
    SQLProdutoGradePRODDULTATUALIZ: TDateTimeField;
    SQLProdutoGradePRODA60DIMENSAO: TStringField;
    SQLProdutoGradePRODISITTRIB: TIntegerField;
    SQLProdutoGradePRODITIPOPRODBALAN: TStringField;
    SQLProdutoGradePRODICODETIQBAL: TIntegerField;
    SQLProdutoGradePRODIDIASVALIDADE: TIntegerField;
    SQLProdutoGradePRODN3VLRCOMPRAMED: TFloatField;
    SQLProdutoGradePRODN3DOLARCUSTO: TFloatField;
    SQLProdutoGradePRODN3DOLARCOMPRA: TFloatField;
    SQLProdutoGradePRODN3DOLARVENDA: TFloatField;
    SQLProdutoGradePRODBIMAGEM: TBlobField;
    SQLProdutoGradePRODCSUBSTRIB: TStringField;
    SQLProdutoGradePRODCTEMNROSERIE: TStringField;
    SQLProdutoGradePRODA03GARANTIA: TStringField;
    SQLProdutoGradePRODA254COMPQUIMICA: TStringField;
    SQLProdutoGradePRODCTIPO: TStringField;
    SQLProdutoGradePRODN2PERCFRETE: TFloatField;
    SQLProdutoGradePRODN2PERDA: TFloatField;
    SQLProdutoGradePRODN2PIS: TFloatField;
    SQLProdutoGradePRODN3ALTURA: TFloatField;
    SQLProdutoGradePRODN3COMPRIMENTO: TFloatField;
    SQLProdutoGradePRODN3DIMENTOTAL: TFloatField;
    SQLProdutoGradePRODN3LARGURA: TFloatField;
    SQLProdutoGradePRODA30INF01ETQBARRAS: TStringField;
    SQLProdutoGradePRODA30INF02ETQBARRAS: TStringField;
    SQLProdutoGradeCOLEICOD: TIntegerField;
    SQLProdutoGradePRODN2PERCDESP: TFloatField;
    SQLProdutoGradePRODN2PERCSUBST: TFloatField;
    SQLProdutoGradeDECRICOD: TIntegerField;
    SQLProdutoGradePRODN3PERCMARGLUC2: TFloatField;
    SQLProdutoGradePRODN3PERCMGLVFIXA: TFloatField;
    SQLProdutoGradePRODN3PERCMGLAFIXA: TFloatField;
    SQLProdutoGradePRODDULTCOMPRA: TDateTimeField;
    SQLProdutoGradePRODDULTVENDA: TDateTimeField;
    SQLProdutoGradePRODN2PERCDIFICM: TFloatField;
    SQLProdutoGradePRODN3QTDULTCOMPRA: TFloatField;
    SQLProdutoGradePRODIPRINCIPAL: TIntegerField;
    SQLProdutoGradePRODCPERMITETROCA: TStringField;
    SQLProdutoGradePRODDPREVCOMPRA: TDateTimeField;
    SQLProdutoGradePRODCCOFINS: TStringField;
    SQLProdutoGradePRODCIMPRECEITA: TStringField;
    SQLProdutoGradePRODA10MEDIDA: TStringField;
    SQLProdutoGradePRODN3VLRVENDA2: TFloatField;
    SQLProdutoGradePRODCIMPETIQCDBAR: TStringField;
    DSSQLProdutoGrade: TDataSource;
    Panel5: TPanel;
    Label5: TLabel;
    EditTotal: TCurrencyEdit;
    Panel6: TPanel;
    DBGridLista: TDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit5: TDBEdit;
    BtnOk: TSpeedButton;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeCalcFields(DataSet: TDataSet);
    procedure TblQtdeField1Change(Sender: TField);
    procedure DBGridListaEnter(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Calculando,MontandoGrade:Boolean;
    Function EncontraTamanho(TAM:Integer):Integer;
  public
    { Public declarations }
  end;

var
  FormTelaTransferenciaGrade: TFormTelaTransferenciaGrade;

implementation

uses DataModulo, FormResources, UnitLibrary, WaitWindow, TelaTransferenciaMercadoria;

{$R *.dfm}

Function TFormTelaTransferenciaGrade.EncontraTamanho(TAM:Integer):Integer;
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

procedure TFormTelaTransferenciaGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  If SQLProdutoGrade.DataSource.DataSet.State in dsEditModes Then
    SQLProdutoGrade.DataSource.DataSet.Cancel;
end;

procedure TFormTelaTransferenciaGrade.TblQtdeBeforeDelete(
  DataSet: TDataSet);
begin
  Abort;
  inherited;
end;

procedure TFormTelaTransferenciaGrade.TblQtdeBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaTransferenciaGrade.TblQtdeCalcFields(DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  If MontandoGrade Then Exit;
  TblQtde.FindField('Total').asFloat:=0;
  For I:=1 To 15 Do
    TblQtde.FindField('Total').asFloat:=TblQtde.FindField('Total').asFloat+TblQtde.FindField(IntToStr(I)).asFloat;
end;

procedure TFormTelaTransferenciaGrade.TblQtdeField1Change(Sender: TField);
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
      Calculando := False;
   End;
end;

procedure TFormTelaTransferenciaGrade.DBGridListaEnter(Sender: TObject);
begin
  inherited;
  DBGridLista.SelectedIndex := 1 ;
end;

procedure TFormTelaTransferenciaGrade.BtnOkClick(Sender: TObject);
Var
  I,Qtde,Etiquetas,Total:Integer;
  DataSet:TDataSet;
begin
  inherited;
  Total := StrToInt(FormatFloat('000',EditTotal.Value));
  DataSet := DSMasterSys.DataSet;
  DataSet.Active := True;
  TblQtde.First;
  DataSet.DisableControls;
  while not TblQtde.Eof do
    begin
      for I:=1 To 15 do
        begin
          if TblQtde.FindField(IntToStr(I)).asFloat<>0 then
            begin
              DataSet.Append;
              DataSet.FindField('ProdutoCod').asString          := TblQtde.FindField('Cod'+IntToStr(I)).AsString;
              DataSet.FindField('ProdutoBarras').asString       := SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
              DataSet.FindField('ProdutoREFERENCIA').asString   := SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
              DataSet.FindField('ProdutoNome').asString         := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',TblQtde.FindField('Cod'+IntToStr(I)).AsString);
              DataSet.FindField('ProdutoValorCusto').AsVariant  := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRCUSTO',TblQtde.FindField('Cod'+IntToStr(I)).AsString);

              Dm.ProcuraRegistro('GRADETAMANHO',['GRADICOD','GRTMICOD'],[SQLLocate('PRODUTO','PRODICOD','GRADICOD',TblQtde.FindField('Cod'+IntToStr(I)).AsString),SQLLocate('PRODUTO','PRODICOD','GRTMICOD',TblQtde.FindField('Cod'+IntToStr(I)).AsString)],2);
              DataSet.FindField('ProdutoQtde').Value            := TblQtde.FindField(IntToStr(I)).Value;
              DataSet.Post;
            end;
        end;
      TblQtde.Next;
    end;
  DataSet.EnableControls;
  DataSet.Close;
  DataSet.Open;
  DataSet := nil;
  ModalResult := MrOK;
  Close;
end;

procedure TFormTelaTransferenciaGrade.FormCreate(Sender: TObject);
Var
  I,Posicao,CorAnt:Integer;
begin
  inherited;
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

procedure TFormTelaTransferenciaGrade.FormKeyPress(Sender: TObject;
  var Key: Char);
var  Objeto:TComponent;
begin
  if Key=char(13) Then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      if (Objeto is TDBGrid) then
        begin
          if (Objeto as TDBGrid).SelectedIndex<(Objeto as TDBGrid).Columns.Count-1 then
            begin
              (Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex+1].Field.FocusControl;
              if ((Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex].ReadOnly) or ((Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex].Field.FieldKind=fkCalculated) then
                FormKeyPress(Sender,Key);
            End
          else
            Begin
              if (Objeto as TDBGrid).DataSource.DataSet.State in dsEditModes then
              begin
                (Objeto as TDBGrid).DataSource.DataSet.Post;
                (Objeto as TDBGrid).DataSource.DataSet.Next;
              end ;

              if not (Objeto as TDBGrid).DataSource.DataSet.Eof then
                Begin
                  (Objeto as TDBGrid).DataSource.DataSet.Next;
                  (Objeto as TDBGrid).Columns[0].Field.FocusControl;
                end
              else
                if not ((Objeto as TDBGrid).ReadOnly) Then (Objeto as TDBGrid).DataSource.DataSet.Append;
            end;
          Key:=CHR(0);Exit;
        end;
    end;
  inherited;
end;

end.
