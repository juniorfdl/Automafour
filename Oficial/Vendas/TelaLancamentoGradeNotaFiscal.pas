unit TelaLancamentoGradeNotaFiscal;

interface

uses
  VarSYS, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  Grids, DBGrids, DB, MemTable, DBTables, RxQuery, Mask, EDBNum, ToolEdit,
  CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaLancamentoGradeNotaFiscal = class(TFormTelaGeralTEMPLATE)
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
    TblQtde1: TFloatField;
    TblQtde2: TFloatField;
    TblQtde3: TFloatField;
    TblQtde4: TFloatField;
    TblQtde5: TFloatField;
    TblQtde6: TFloatField;
    TblQtde7: TFloatField;
    TblQtde8: TFloatField;
    TblQtde9: TFloatField;
    TblQtde10: TFloatField;
    TblQtde11: TFloatField;
    TblQtde12: TFloatField;
    TblQtde13: TFloatField;
    TblQtde14: TFloatField;
    TblQtde15: TFloatField;
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
    DSTblQtde: TDataSource;
    TblQtdeTotal: TFloatField;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    Panel6: TPanel;
    DBGridLista: TDBGrid;
    Panel5: TPanel;
    Label5: TLabel;
    EditTotal: TCurrencyEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit9: TEvDBNumEdit;
    DBEdit10: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    DBEdit13: TEvDBNumEdit;
    DBEdit14: TEvDBNumEdit;
    DBEdit15: TEvDBNumEdit;
    DBEdit16: TEvDBNumEdit;
    DBEdit17: TEvDBNumEdit;
    DBEdit18: TEvDBNumEdit;
    DBEdit19: TEvDBNumEdit;
    DBEdit20: TEvDBNumEdit;
    DBEdit21: TEvDBNumEdit;
    DBEdit22: TEvDBNumEdit;
    DBEdit23: TEvDBNumEdit;
    DBEdit26: TEvDBNumEdit;
    DBEdit27: TEvDBNumEdit;
    Label24: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    BtnOk: TSpeedButton;
    procedure TblQtde1Change(Sender: TField);
    procedure BtnOkClick(Sender: TObject);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure DBGridListaEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Calculando,
    MontandoGrade:Boolean;
    Function EncontraTamanho(TAM:Integer):Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaLancamentoGradeNotaFiscal: TFormTelaLancamentoGradeNotaFiscal;

implementation

uses CadastroNotaFiscalItem, DataModulo, UnitLibrary;

{$R *.dfm}

Function TFormTelaLancamentoGradeNotaFiscal.EncontraTamanho(TAM:Integer):Integer;
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
procedure TFormTelaLancamentoGradeNotaFiscal.TblQtde1Change(Sender: TField);
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
      If Sender.DataSet.State in DsEditModes Then
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
      SQLProdutoGrade.DataSource.DataSet.FindField('NFITN3QUANT').AsVariant:=EditTotal.Value;
      Calculando := False;
   End;
end;

procedure TFormTelaLancamentoGradeNotaFiscal.BtnOkClick(Sender: TObject);
Var
  I, NFITICST:Integer;
  DataSet:TDataSet;
  NFITN3VLRUNIT,
  NFITN3PERCDESC,
  NFITN2VLRDESC,
  NFITN3PERCSUBST,
  NFITN2PERCREDUCAO,
  NFITN3PERCICMS,
  NFITN3PERCIPI,
  NFITN2PERCCOMIS : Double;
begin
  inherited;
  TotalDescGrade := 0;
  TotalProdGrade := 0;
  DM.GerandoNotaFiscal := True;
  DataSet := SQLProdutoGrade.DataSource.DataSet;
  TblQtde.First;
  DataSet.DisableControls;
  NFITN3VLRUNIT     := DataSet.FindField('NFITN2VLRUNIT').asFloat;
  NFITN3PERCDESC    := DataSet.FindField('NFITN2PERCDESC').asFloat;
  // NFITN2VLRDESC     := DataSet.FindField('NFITN2VLRDESC').asFloat;
  NFITN2PERCREDUCAO := DataSet.FindField('NFITN2PERCREDUCAO').asFloat;
  NFITN3PERCSUBST   := DataSet.FindField('NFITN2PERCSUBS').asFloat;
  NFITN3PERCICMS    := DataSet.FindField('NFITN2PERCICMS').asFloat;
  NFITN3PERCIPI     := DataSet.FindField('NFITN2PERCIPI').asFloat;
  NFITN2PERCCOMIS   := DataSet.FindField('NFITN2PERCCOMIS').asFloat;
  NFITICST          := DataSet.FindField('NFITICST').AsInteger;
  While Not TblQtde.Eof Do
    Begin
      For I:=1 To 15 Do
        Begin
          If TblQtde.FindField(IntToStr(I)).asFloat<>0 Then
            Begin
              If Not (DataSet.State in DsEditModes) Then
                DataSet.Append;
              DataSet.FindField('PRODICOD').Value            := TblQtde.FindField('Cod'+IntToStr(I)).Value;
              DataSet.FindField('NFITN3QUANT').Value         := TblQtde.FindField(IntToStr(I)).Value;
              DataSet.FindField('NFITN2VLRUNIT').asFloat     := NFITN3VLRUNIT;
              DataSet.FindField('NFITN2PERCDESC').asFloat    := NFITN3PERCDESC;
//              DataSet.FindField('NFITN2VLRDESC').asFloat     := NFITN2VLRDESC;
              DataSet.FindField('NFITN2PERCREDUCAO').asFloat := NFITN2PERCREDUCAO;
              DataSet.FindField('NFITN2PERCSUBS').asFloat    := NFITN3PERCSUBST;
              DataSet.FindField('NFITN2PERCICMS').asFloat    := NFITN3PERCICMS;
              DataSet.FindField('NFITN2PERCIPI').asFloat     := NFITN3PERCIPI;
              DataSet.FindField('NFITN2PERCCOMIS').asFloat   := NFITN2PERCCOMIS ;
              DataSet.FindField('NFITICST').asFloat          := NFITICST ;
              DataSet.Post;
              TotalProdGrade := TotalProdGrade +
                                (DataSet.FindField('NFITN3QUANT').asFloat *
                                (DataSet.FindField('NFITN2VLRUNIT').asFloat - DataSet.FindField('NFITN2VLRDESC').AsFloat));
              if DataSet.FindField('NFITN2VLRDESC').AsFloat > 0 then
                TotalDescGrade := TotalDescGrade + DataSet.FindField('NFITN2VLRDESC').AsFloat;
            End;
        End;
      TblQtde.Next;
    End;
  DataSet.EnableControls;
  DataSet.Close;
  DataSet.DataSource.DataSet.Edit;
  DataSet.DataSource.DataSet.AutoCalcFields := False;
//  DataSet.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat :=
//  DataSet.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat  + TotalProdGrade;
//  DataSet.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat    :=
//  DataSet.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat + TotalDescGrade;
  DataSet.DataSource.DataSet.Post;
  DataSet.DataSource.DataSet.AutoCalcFields := True;
  DM.GerandoNotaFiscal := False;
  DataSet.Open;
  Close;
end;

procedure TFormTelaLancamentoGradeNotaFiscal.TblQtdeBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaLancamentoGradeNotaFiscal.TblQtdeCalcFields(
  DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  If MontandoGrade Then Exit;
  //COR
  if DataSet.FieldByName('CORICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('COR',['CORICOD'],[DataSet.FieldByName('CORICOD').AsString],1) Then
        begin
          DataSet.FieldByName('CorLookup').AsVariant    := DM.SQLTemplate.FindField('CORA30DESCR').AsVariant;
        end
      else
        begin
          DataSet.FieldByName('CorLookup').asString := MensagemLookUp ;
        end;
    end
  else
    begin
      DataSet.FieldByName('CorLookup').AsVariant  := Null;
    end ;
  TblQtde.FindField('Total').asFloat:=0;
  For I:=1 To 15 Do
    TblQtde.FindField('Total').asFloat:=TblQtde.FindField('Total').asFloat+TblQtde.FindField(IntToStr(I)).asFloat;
end;

procedure TFormTelaLancamentoGradeNotaFiscal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If SQLProdutoGrade.DataSource.DataSet.State in dsEditModes Then
    SQLProdutoGrade.DataSource.DataSet.Cancel;
  inherited;
end;

procedure TFormTelaLancamentoGradeNotaFiscal.TblQtdeBeforeDelete(
  DataSet: TDataSet);
begin
  Abort;
  inherited;
end;

procedure TFormTelaLancamentoGradeNotaFiscal.DBGridListaEnter(Sender: TObject);
begin
  inherited;
  DBGridLista.SelectedIndex := 1 ;
end;

procedure TFormTelaLancamentoGradeNotaFiscal.FormCreate(Sender: TObject);
Var
  I,Posicao,CorAnt:Integer;
begin
  inherited;
  MontandoGrade:=True;
  If Not TblQtde.Active Then
    TblQtde.Open;
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
  DBGridLista.Columns[0].Color:=$00E0E0E0;
  DBGridLista.Columns[DBGridLista.Columns.Count-1].Color:=$00E0E0E0;
  For I := 1 To DBGridLista.Columns.Count-1 Do
    Begin
      DBGridLista.Columns[I].Width:=(820 - 248) DIV (DBGridLista.Columns.Count-1);
      DBGridLista.Columns[I].Title.Alignment := taRightJustify;
    End;
  TblQtde.First;
end;

end.
