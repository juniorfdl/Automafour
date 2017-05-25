unit TelaLancamentoGradePedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  EDBNum, DB, MemTable, DBTables, RxQuery, Buttons, jpeg, ExtCtrls,
  ToolEdit, CurrEdit, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaLancamentoGradePedido = class(TFormTelaGeralTEMPLATE)
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
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label23: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    DbEditVlrUnit: TEvDBNumEdit;
    DBEditPercDesc: TEvDBNumEdit;
    DBEditVlrDesc: TEvDBNumEdit;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit4: TEvDBNumEdit;
    DBEdit5: TDBEdit;
    Panel6: TPanel;
    DBGridLista: TDBGrid;
    Panel5: TPanel;
    Label5: TLabel;
    EditTotal: TCurrencyEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label2: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    EditTotGrade: TCurrencyEdit;
    Label6: TLabel;
    ComboLote: TRxDBLookupCombo;
    SQLLote: TRxQuery;
    DSSQLLote: TDataSource;
    SQLLoteLOTEA30NRO: TStringField;
    SQLLoteLOTEDVECTO: TDateTimeField;
    SQLLoteREGISTRO: TDateTimeField;
    SQLLotePENDENTE: TStringField;
    BtnOk: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeCalcFields(DataSet: TDataSet);
    procedure TblQtdeField1Change(Sender: TField);
    procedure DBGridListaEnter(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Calculando,MontandoGrade:Boolean;
    Function EncontraTamanho(TAM:Integer):Integer;
  public
    { Public declarations }
  end;

var
  FormTelaLancamentoGradePedido: TFormTelaLancamentoGradePedido;

implementation

uses CadastroPedidoVendaItem, DataModulo, UnitLibrary;

{$R *.dfm}

Function TFormTelaLancamentoGradePedido.EncontraTamanho(TAM:Integer):Integer;
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
procedure TFormTelaLancamentoGradePedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  If SQLProdutoGrade.DataSource.DataSet.State in dsEditModes Then
    SQLProdutoGrade.DataSource.DataSet.Cancel;
end;

procedure TFormTelaLancamentoGradePedido.TblQtdeBeforeDelete(DataSet: TDataSet);
begin
  Abort;
  inherited;
end;

procedure TFormTelaLancamentoGradePedido.TblQtdeBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaLancamentoGradePedido.TblQtdeCalcFields(DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  If MontandoGrade Then Exit;
  TblQtde.FindField('Total').asFloat:=0;
  For I:=1 To 15 Do
    TblQtde.FindField('Total').asFloat:=TblQtde.FindField('Total').asFloat+TblQtde.FindField(IntToStr(I)).asFloat;
end;

procedure TFormTelaLancamentoGradePedido.TblQtdeField1Change(Sender: TField);
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
      EditTotGrade.Value := EditTotal.Value * (DbEditVlrUnit.Value - DBEditVlrDesc.Value);
      Sender.DataSet.EnableControls;
      Sender.DataSet.GotoBookmark(B);
      SQLProdutoGrade.DataSource.DataSet.FindField('PVITN3QUANT').AsVariant:=EditTotal.Value;
      Calculando := False;
   End;
end;

procedure TFormTelaLancamentoGradePedido.DBGridListaEnter(Sender: TObject);
begin
  inherited;
  DBGridLista.SelectedIndex := 1 ;
end;

procedure TFormTelaLancamentoGradePedido.BtnOkClick(Sender: TObject);
Var
  I:Integer;
  DataSet:TDataSet;
  PVITN3VLRUNIT,
  PVITN3PERCDESC,
  PVITN2PERCCOMISS,
  PVITN2VLRDESC: Double;
  PDVDA60OBS,
  PDVDA255OBS1,
  LOTE : String;
begin
  inherited;
  TotalDescGrade := 0;
  TotalProdGrade := 0;
  DM.GerandoPedidoVenda := True;
  DataSet := SQLProdutoGrade.DataSource.DataSet;
  TblQtde.First;
  PVITN3VLRUNIT    := DataSet.FindField('PVITN2VLRUNIT').asFloat;
  PVITN2VLRDESC    := DataSet.FindField('PVITN2VLRDESC').asFloat;
  PVITN3PERCDESC   := DataSet.FindField('PVITN2PERCDESC').asFloat;
  PVITN2PERCCOMISS := DataSet.FindField('PVITN2PERCCOMIS').asFloat;
  PDVDA60OBS       := DataSet.FindField('PDVDA60OBS').asString;
  PDVDA255OBS1     := DataSet.FindField('PDVDA255OBS1').asString;
  LOTE             := ComboLote.Value;
  DataSet.DisableControls;
  While Not TblQtde.Eof Do
    Begin
      For I:=1 To 15 Do
        Begin
          If TblQtde.FindField(IntToStr(I)).asFloat<>0 Then
            Begin
              If Not (DataSet.State in DsEditModes) Then
                DataSet.Append;
              DataSet.FindField('PRODICOD').asFloat       := TblQtde.FindField('Cod'+IntToStr(I)).Value;
              DataSet.FindField('PVITN3QUANT').asFloat    := TblQtde.FindField(IntToStr(I)).Value;
              DataSet.FindField('PVITN2VLRUNIT').asFloat  := PVITN3VLRUNIT;
              DataSet.FindField('PVITN2PERCDESC').asFloat := PVITN3PERCDESC;
              DataSet.FindField('PVITN2PERCCOMIS').asFloat:= PVITN2PERCCOMISS;
              DataSet.FindField('PDVDA60OBS').asString    := PDVDA60OBS;
              DataSet.FindField('PDVDA255OBS1').asString  := PDVDA255OBS1;
              DataSet.FindField('PVITN2VLRDESC').AsFloat  := PVITN2VLRDESC;
              if LOTE <> '' then
                DataSet.FindField('LOTEA30NRO').AsString    := LOTE;
              DataSet.Post;
              TotalProdGrade := TotalProdGrade +
                                (DataSet.FindField('PVITN3QUANT').asFloat *
                                (DataSet.FindField('PVITN2VLRUNIT').asFloat - DataSet.FindField('PVITN2VLRDESC').AsFloat));
              if DataSet.FindField('PVITN2VLRDESC').AsFloat > 0 then
                TotalDescGrade := TotalDescGrade + DataSet.FindField('PVITN2VLRDESC').AsFloat;
            End;
        End;
      TblQtde.Next;
    End;
  DataSet.EnableControls;
  DataSet.Close;
  DataSet.DataSource.DataSet.Edit;
  DataSet.DataSource.DataSet.AutoCalcFields := False;
  DataSet.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat :=
  DataSet.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat  + TotalProdGrade;
  DataSet.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat  :=
  DataSet.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat + TotalDescGrade;
  DataSet.DataSource.DataSet.Post;
  DM.GerandoPedidoVenda := False;
  DataSet.DataSource.DataSet.AutoCalcFields := True;
  DataSet.Open;

  Close;
end;

procedure TFormTelaLancamentoGradePedido.FormCreate(Sender: TObject);
Var
  I,Posicao,CorAnt:Integer;
begin
  inherited;
  if not SQLLote.Active then SQLLote.Open; 
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
