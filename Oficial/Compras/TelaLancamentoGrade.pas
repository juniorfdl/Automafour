unit TelaLancamentoGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBTables, MemTable, Grids, DBGrids, Mask, EDBNum, RxQuery, ToolEdit,
  CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaLancamentoGrade = class(TFormTelaGeralTEMPLATE)
    TblQtde: TMemoryTable;
    DSTblQtde: TDataSource;
    TblQtdeCORICOD: TIntegerField;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
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
    SQLProdutoGrade: TRxQuery;
    SQLGradeTamanho: TRxQuery;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradeGRADICOD: TIntegerField;
    SQLProdutoGradeGRTMICOD: TIntegerField;
    SQLProdutoGradeCORICOD: TIntegerField;
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
    Panel5: TPanel;
    Label5: TLabel;
    EditTotal: TCurrencyEdit;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label23: TLabel;
    Label4: TLabel;
    DBEdit2: TEvDBNumEdit;
    DBEdit3: TEvDBNumEdit;
    DBEdit6: TEvDBNumEdit;
    DBEdit7: TEvDBNumEdit;
    DBEdit8: TEvDBNumEdit;
    DBEdit9: TEvDBNumEdit;
    DBEdit10: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    DBEdit13: TEvDBNumEdit;
    DBEdit14: TEvDBNumEdit;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    EvDBNumEdit5: TEvDBNumEdit;
    DBEdit4: TEvDBNumEdit;
    Panel6: TPanel;
    DBGridLista: TDBGrid;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    BtnOk: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeField1Change(Sender: TField);
    procedure BtnOkClick(Sender: TObject);
    procedure TblQtdeCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure DBGridListaEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    Calculando,
    MontandoGrade:Boolean;
    Function EncontraTamanho(TAM:Integer):Integer;
  public
    { Public declarations }
  end;

var
  FormTelaLancamentoGrade: TFormTelaLancamentoGrade;

implementation

uses DataModulo, CadastroPedidoCompraItem;

{$R *.dfm}

Function TFormTelaLancamentoGrade.EncontraTamanho(TAM:Integer):Integer;
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

procedure TFormTelaLancamentoGrade.FormCreate(Sender: TObject);
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
  DBGridLista.Columns[0].Width    :=150;
  DBGridLista.Columns[0].Color    :=$00E0E0E0;
  DBGridLista.Columns[0].ReadOnly := True;
  DBGridLista.Columns[DBGridLista.Columns.Count-1].Color   :=$00E0E0E0;
  DBGridLista.Columns[DBGridLista.Columns.Count-1].ReadOnly:=True;
  For I := 1 To DBGridLista.Columns.Count-1 Do
    Begin
      DBGridLista.Columns[I].Width:=(820 - 248) DIV (DBGridLista.Columns.Count-1);
      DBGridLista.Columns[I].Title.Alignment := taRightJustify;
    End;
  TblQtde.First;
end;

procedure TFormTelaLancamentoGrade.TblQtdeBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaLancamentoGrade.TblQtdeField1Change(Sender: TField);
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
      SQLProdutoGrade.DataSource.DataSet.FindField('PCITN3QTDEMBAL').AsVariant:=EditTotal.Value;
      Calculando := False;
   End;
end;

procedure TFormTelaLancamentoGrade.BtnOkClick(Sender: TObject);
Var
  I:Integer;
  DataSet:TDataSet;
  PCITN3QTDBONIF,
  PCITN3CAPEMBAL,
  PCITN3VLRUNIT,
  PCITN3PERCDESC,
  PCITN3PERVIPI,
  PCITN3PERCICMS : Double;
begin
  inherited;
  DM.GerandoPedidoCompra := True;
  DataSet := SQLProdutoGrade.DataSource.DataSet;
  TblQtde.First;
  DataSet.DisableControls;
  PCITN3QTDBONIF   := DataSet.FindField('PCITN3QTDBONIF').asFloat;
  PCITN3CAPEMBAL   := DataSet.FindField('PCITN3CAPEMBAL').asFloat;
  PCITN3VLRUNIT    := DataSet.FindField('PCITN3VLRUNIT').asFloat;
  PCITN3PERCDESC   := DataSet.FindField('PCITN3PERCDESC').asFloat;
  PCITN3PERCICMS   := DataSet.FindField('PCITN3PERICM').asFloat;
  PCITN3PERVIPI    := DataSet.FindField('PCITN3PERVIPI').asFloat;
  While Not TblQtde.Eof Do
    Begin
      For I:=1 To 15 Do
        Begin
          If TblQtde.FindField(IntToStr(I)).asFloat<>0 Then
            Begin
              If Not (DataSet.State in DsEditModes) Then
                DataSet.Append;
              DataSet.FindField('PRODICOD').asFloat       := TblQtde.FindField('Cod'+IntToStr(I)).Value;
              DataSet.FindField('PCITN3QTDEMBAL').asFloat := TblQtde.FindField(IntToStr(I)).Value;
              DataSet.FindField('PCITN3QTDBONIF').asFloat := PCITN3QTDBONIF;
              DataSet.FindField('PCITN3CAPEMBAL').asFloat := PCITN3CAPEMBAL;
              DataSet.FindField('PCITN3VLRUNIT').asFloat  := PCITN3VLRUNIT;
              DataSet.FindField('PCITN3PERCDESC').asFloat := PCITN3PERCDESC;
              DataSet.FindField('PCITN3PERICM').asFloat   := PCITN3PERCICMS;
              DataSet.FindField('PCITN3PERVIPI').asFloat  := PCITN3PERVIPI;
              DataSet.Post;
            End;
        End;
      TblQtde.Next;
    End;
  DataSet.EnableControls;
  DataSet.Close;
  DM.GerandoPedidoCompra := False;
  DataSet.Open;
  Close;
end;

procedure TFormTelaLancamentoGrade.TblQtdeCalcFields(DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  If MontandoGrade Then Exit;
  TblQtde.FindField('Total').asFloat:=0;
  For I:=1 To 15 Do
    TblQtde.FindField('Total').asFloat:=TblQtde.FindField('Total').asFloat+TblQtde.FindField(IntToStr(I)).asFloat;
end;

procedure TFormTelaLancamentoGrade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If SQLProdutoGrade.DataSource.DataSet.State in dsEditModes Then
    SQLProdutoGrade.DataSource.DataSet.Cancel;
  inherited;
end;

procedure TFormTelaLancamentoGrade.TblQtdeBeforeDelete(DataSet: TDataSet);
begin
  Abort;
  inherited;
end;

procedure TFormTelaLancamentoGrade.DBGridListaEnter(Sender: TObject);
begin
  inherited;
  DBGridLista.SelectedIndex := 1 ;
end;

procedure TFormTelaLancamentoGrade.FormActivate(Sender: TObject);
begin
  inherited;
  dbedit2.setfocus;
end;

end.
