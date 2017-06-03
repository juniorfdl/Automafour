unit TelaLancamentoGradeMovto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  EDBNum, DB, MemTable, DBTables, RxQuery, Buttons, jpeg, ExtCtrls,
  ToolEdit, CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaLancamentoGradeMovto = class(TFormTelaGeralTEMPLATE)
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
    Label4: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit4: TEvDBNumEdit;
    DBEdit5: TDBEdit;
    Panel6: TPanel;
    DBGridLista: TDBGrid;
    Panel5: TPanel;
    Label5: TLabel;
    EditTotal: TCurrencyEdit;
    DsMasterTemplate: TDataSource;
    DSSQLMovimentoItem: TDataSource;
    DSSQLProdutoGrade: TDataSource;
    SQLProdutoGradePRODA60REFER: TStringField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    BtnOk: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeCalcFields(DataSet: TDataSet);
    procedure TblQtdeNewRecord(DataSet: TDataSet);
    procedure TblQtdeField1Change(Sender: TField);
    procedure DBGridListaEnter(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
    Calculando,MontandoGrade:Boolean;
    Function EncontraTamanho(TAM:Integer):Integer;
  public
    { Public declarations }
  end;

var
  FormTelaLancamentoGradeMovto: TFormTelaLancamentoGradeMovto;

implementation

uses DataModulo,
  CadastroMovimentosDiversosEstoqueItem,
  FormResources, UnitLibrary;

{$R *.dfm}

Function TFormTelaLancamentoGradeMovto.EncontraTamanho(TAM:Integer):Integer;
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
procedure TFormTelaLancamentoGradeMovto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  {  If DsMasterTemplate.DataSet.State in dsEditModes Then
       DsMasterTemplate.DataSet.Cancel; }

  DM.GerandoMovtoDiverso := False;

  SQLProdutoGrade.Close;

  FreeAndNil(FormTelaLancamentoGradeMovto);

end;

procedure TFormTelaLancamentoGradeMovto.FormCreate(Sender: TObject);
Var
  I,Posicao,CorAnt:Integer;
begin
  inherited;
  dm.GerandoMovtoDiverso := True;
  MontandoGrade:=True;
  If Not TblQtde.Active Then
    TblQtde.Open;
  SQLProdutoGrade.Close;
  SQLProdutoGrade.ParamByName('PRODIAGRUPGRADE').AsInteger := ProdutoAgrupGrade_MovDiv;
  SQLProdutoGrade.Open;
  SQLProdutoGrade.First; CorAnt := 0;
  SQLGradeTamanho.ParamByName('GRADICOD').Value:= SQLProdutoGrade.FindField('GRADICOD').Value;
  SQLGradeTamanho.Open;
  While Not SQLProdutoGrade.Eof Do
    Begin
      If SQLProdutoGrade.FindField('CORICOD').asInteger <> CorAnt Then
        Begin
          CorAnt := SQLProdutoGrade.FindField('CORICOD').asInteger;
          TblQtde.Append;
          TblQtde.FindField('CORICOD').Value:=SQLProdutoGrade.FindField('CORICOD').asInteger;
          TblQtde.Post;
        End;
      Posicao:=EncontraTamanho(SQLProdutoGrade.FindField('GRTMICOD').Value);
      If (Posicao>0) and (Posicao<16) Then
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
  DBGridLista.Columns[0].ReadOnly := True;
  DBGridLista.Columns[0].Color:=$00E0E0E0;
  DBGridLista.Columns[DBGridLista.Columns.Count-1].Color:=$00E0E0E0;
  DBGridLista.Columns[DBGridLista.Columns.Count-1].ReadOnly:= True;
  For I := 1 To DBGridLista.Columns.Count-1 Do
    Begin
      DBGridLista.Columns[I].Width:=(820 - 248) DIV (DBGridLista.Columns.Count-1);
      DBGridLista.Columns[I].Title.Alignment := taRightJustify;
    End;
  TblQtde.First;
end;

procedure TFormTelaLancamentoGradeMovto.TblQtdeBeforeDelete(DataSet: TDataSet);
begin
  Abort;
  inherited;
end;

procedure TFormTelaLancamentoGradeMovto.TblQtdeBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaLancamentoGradeMovto.TblQtdeCalcFields(DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  If MontandoGrade Then Exit;
  TblQtde.FindField('Total').asFloat:=0;
  For I:=1 To 15 Do
    TblQtde.FindField('Total').asFloat:=TblQtde.FindField('Total').asFloat+TblQtde.FindField(IntToStr(I)).asFloat;
end;

procedure TFormTelaLancamentoGradeMovto.TblQtdeNewRecord(DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  For I:=1 to 15 Do
    Begin
      TblQtde.FindField(IntToStr(I)).Value:=0;
      TblQtde.FindField('Cod'+IntToStr(I)).Value:=0;
    End;
end;

procedure TFormTelaLancamentoGradeMovto.TblQtdeField1Change(Sender: TField);
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
//      SQLProdutoGrade.DataSource.DataSet.FindField('MVDIN3QTD').AsVariant:=EditTotal.Value;
      Calculando := False;
   End;
end;

procedure TFormTelaLancamentoGradeMovto.DBGridListaEnter(Sender: TObject);
begin
  inherited;
  DBGridLista.SelectedIndex := 1 ;
end;

procedure TFormTelaLancamentoGradeMovto.BtnOkClick(Sender: TObject);
Var
  I:Integer;
  DataSet:TDataSet;
begin
  inherited;
  DataSet := DSSQLMovimentoItem.DataSet;
  TblQtde.First;
  DataSet.DisableControls;
  While Not TblQtde.Eof Do
    Begin
      For I:=1 To 15 Do
        Begin
          If TblQtde.FindField(IntToStr(I)).asFloat<>0 Then
            Begin
              If Not (DataSet.State in DsEditModes) Then
                DataSet.Append;
              DataSet.FindField('PRODICOD').asFloat         := TblQtde.FindField('Cod'+IntToStr(I)).Value;
              DataSet.FindField('MVDIN3QTD').asFloat        := TblQtde.FindField(IntToStr(I)).Value;
              DataSet.FindField('PRODN3VLRCOMPRA').AsString := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRCOMPRA',DataSet.FindField('PRODICOD').AsString);
              DataSet.FindField('PRODN3VLRVENDA').AsString  := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRVENDA',DataSet.FindField('PRODICOD').AsString);
              DataSet.Post;
            End;
        End;
      TblQtde.Next;
    End;
  DataSet.EnableControls;
  DataSet.Close;
  DataSet.Open;
  Close;
end;

end.
