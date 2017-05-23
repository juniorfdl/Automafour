unit TelaImportacaoPedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBTables, RxQuery, Grids, DBGrids, MemTable, ComCtrls, Mask, EDBNum,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaImportacaoPedidoCompra = class(TFormTelaGeralTEMPLATE)
    SQLTemplate: TRxQuery;
    SQLTemplatePDCPA13ID: TStringField;
    SQLTemplatePCITIPOS: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePCITN3QTDBONIF: TFloatField;
    SQLTemplatePCITN3CAPEMBAL: TFloatField;
    SQLTemplatePCITN3QTDEMBAL: TFloatField;
    SQLTemplatePCITN3QTDENTR: TFloatField;
    SQLTemplatePCITN3VLREMBAL: TFloatField;
    SQLTemplatePCITN3VLRUNIT: TFloatField;
    SQLTemplatePCITN3PERVIPI: TFloatField;
    SQLTemplatePCITN3VLRIPI: TFloatField;
    SQLTemplatePCITN3VLRICM: TFloatField;
    SQLTemplatePCITN3PERICM: TFloatField;
    SQLTemplatePCITN3PERCDESC: TFloatField;
    SQLTemplatePCITN3VLRDESC: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    TblQtde: TMemoryTable;
    DSTblQtde: TDataSource;
    DBGridLista: TDBGrid;
    TblQtdePRODICOD: TIntegerField;
    TblQtdePRODA60DESCR: TStringField;
    TblQtdeBCDField1: TFloatField;
    TblQtdeBCDField2: TFloatField;
    TblQtdeBCDField3: TFloatField;
    TblQtdeBCDField4: TBCDField;
    TblQtdeBCDField5: TFloatField;
    TblQtdeBCDField6: TFloatField;
    TblQtdeBCDField7: TBCDField;
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
    TblQtdeCodTotal: TIntegerField;
    TblQtdeTotal: TFloatField;
    PanelCab: TPanel;
    TblQtdeQ1: TFloatField;
    TblQtdeQ2: TFloatField;
    TblQtdeQ3: TFloatField;
    TblQtdeQ4: TFloatField;
    TblQtdeQ5: TFloatField;
    TblQtdeQ6: TFloatField;
    TblQtdeQ7: TFloatField;
    TblQtdeQ8: TFloatField;
    TblQtdeQ9: TFloatField;
    TblQtdeQ10: TFloatField;
    TblQtdeQ11: TFloatField;
    TblQtdeQ12: TFloatField;
    TblQtdeQ13: TFloatField;
    TblQtdeQ14: TFloatField;
    TblQtdeQ15: TFloatField;
    TblQtdeQTotal: TBCDField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    SQLTemplateCORICOD: TIntegerField;
    SQLTemplateGRADICOD: TIntegerField;
    SQLTemplateGRTMICOD: TIntegerField;
    SQLGradeTamanho: TRxQuery;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    L1: TLabel;
    L2: TLabel;
    L3: TLabel;
    L4: TLabel;
    L5: TLabel;
    L6: TLabel;
    L7: TLabel;
    L8: TLabel;
    L9: TLabel;
    L10: TLabel;
    L11: TLabel;
    L12: TLabel;
    L13: TLabel;
    L14: TLabel;
    L15: TLabel;
    LTotP: TLabel;
    LTotN: TLabel;
    TblQtdeCor: TStringField;
    TblQtdeReferencia: TStringField;
    SQLTemplatePRODA60REFER: TStringField;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    SQLTemplateCorLookUp: TStringField;
    TblQtdeGrade: TIntegerField;
    DSNotaCompraItem: TDataSource;
    TblQtdeP1: TIntegerField;
    TblQtdeP2: TIntegerField;
    TblQtdeP3: TIntegerField;
    TblQtdeP4: TIntegerField;
    TblQtdeP5: TIntegerField;
    TblQtdeP6: TIntegerField;
    TblQtdeP7: TIntegerField;
    TblQtdeP8: TIntegerField;
    TblQtdeP9: TIntegerField;
    TblQtdeP10: TIntegerField;
    TblQtdeP11: TIntegerField;
    TblQtdeP12: TIntegerField;
    TblQtdeP13: TIntegerField;
    TblQtdeP14: TIntegerField;
    TblQtdeP15: TIntegerField;
    TblQtdePTotal: TIntegerField;
    TblQtdePCITN3QTDBONIF: TFloatField;
    TblQtdePCITN3PERICM: TBCDField;
    TblQtdePCITN3PERCDESC: TFloatField;
    TblQtdePDCPA13ID: TStringField;
    TblQtdePCITIPOS: TIntegerField;
    TblQtdeLegValor: TStringField;
    TblQtdeLegDesc: TStringField;
    PanelLegenda: TPanel;
    DBText1: TDBText;
    LabelProd: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText7: TDBText;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    ProgressBar: TProgressBar;
    Shape18: TShape;
    Panel4: TPanel;
    ListBoxGrade: TDBListBox;
    Label44: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    TblQtdePCITN3CAPEMBAL: TFloatField;
    dbCapEmbal: TEvDBNumEdit;
    dbIpi: TEvDBNumEdit;
    TblQtdePCITN3PERVIPI: TFloatField;
    dbCompra: TEvDBNumEdit;
    TblQtdePCITN3VLRUNIT: TFloatField;
    BtnOk: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure TblQtdeNewRecord(DataSet: TDataSet);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure TblQtdeBCDField1Change(Sender: TField);
    procedure TblQtdeTotalChange(Sender: TField);
    procedure BtnOkClick(Sender: TObject);
    procedure PosicionaColunasGrid;
    procedure FormActivate(Sender: TObject);
  private
    Calculando,
    MontandoGrade:Boolean;
    Function EncontraTamanho(Grade,TAM:Integer):Integer;
    Procedure IncluiGrade(Grade:Integer);
    Procedure IncluiItemNota(DataSet:TDataSet;Codigo,Posicao:Integer;QPed,QNota:Double);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaImportacaoPedidoCompra: TFormTelaImportacaoPedidoCompra;

implementation

uses DataModulo, CadastroNotaCompraItem, CadastroNotaCompra;

{$R *.dfm}
procedure TFormTelaImportacaoPedidoCompra.PosicionaColunasGrid;
var
  I : Integer;
begin
  for I := 3 to 32 do
    begin
      DBGridLista.Columns[I].Visible := False;
    end;
  DBGridLista.Columns[2].Width :=600;
end;
Function TFormTelaImportacaoPedidoCompra.EncontraTamanho(Grade,TAM:Integer):Integer;
Var
  I:Integer;
Begin
  Result:=0;
  If SQLGradeTamanho.Active Then SQLGradeTamanho.Close;
  SQLGradeTamanho.ParamByName('GRADICOD').asInteger := Grade;
  SQLGradeTamanho.Open;
  SQLGradeTamanho.First; I:=1;
  While Not SQLGradeTamanho.Eof Do
    Begin
      If SQLGradeTamanhoGRTMICOD.asInteger = TAM Then
        Begin
          Result:=I;
          Break;
        End;
      SQLGradeTamanho.Next;Inc(I);
    End;
End;

Procedure TFormTelaImportacaoPedidoCompra.IncluiGrade(Grade:Integer);
Var
  Posicao:Integer;
  Aumento:Boolean;
Begin
  ListBoxGrade.Items.Add(IntToStr(Grade));
  Aumento:=(ListBoxGrade.Items.Count-1>0);
  If Aumento Then
    Begin
    End;
  If SQLGradeTamanho.Active Then SQLGradeTamanho.Close;
  SQLGradeTamanho.ParamByName('GRADICOD').asInteger := Grade;
  Posicao:=1;
  SQLGradeTamanho.Open;
  SQLGradeTamanho.First;
  While Not SQLGradeTamanho.Eof Do
    Begin
      If Posicao<16 Then
        Begin
          (FindComponent('L'+IntToStr(Posicao)) as TLabel).Caption:=(FindComponent('L'+IntToStr(Posicao)) as TLabel).Caption+SQLGradeTamanhoGRTMA5DESCR.asString+#13#10;
        End;
      Inc(Posicao);
      SQLGradeTamanho.Next;
    End;
  While Posicao<=15 Do
    Begin
      (FindComponent('L'+IntToStr(Posicao)) as TLabel).Caption:=(FindComponent('L'+IntToStr(Posicao)) as TLabel).Caption+' '+#13#10;
      Inc(Posicao);
    End;
  SQLGradeTamanho.Close;
End;
Procedure TFormTelaImportacaoPedidoCompra.IncluiItemNota(DataSet:TDataSet;Codigo,Posicao:Integer;QPed,QNota:Double);
Begin
  DataSet.Append;
  DataSet.FindField('PRODICOD').asInteger        := Codigo;
  DataSet.FindField('PDCPA13ID').asString        := TblQtdePDCPA13ID.asString;
  DataSet.FindField('PCITIPOS').asInteger        := Posicao;
  DataSet.FindField('NOCIN3TOTPED').asFloat      := QPed;
  DataSet.FindField('NOCIN3QTDEMBAL').asFloat    := QNota;
  DataSet.FindField('NOCIN3QTDBONIF').asFloat    := TblQtdePCITN3QTDBONIF.asFloat;
  DataSet.FindField('NOCIN3CAPEMBAL').asFloat    := TblQtdePCITN3CAPEMBAL.asFloat;
  DataSet.FindField('NOCIN3VLRUNIT').asFloat     := TblQtdePCITN3VLRUNIT.asFloat;
  DataSet.FindField('NOCIN3PERCDESC').asFloat    := TblQtdePCITN3PERCDESC.asFloat;
  DataSet.FindField('NOCIA3CSTICMS').AsString    := dm.SQLLocate('produto','prodicod','prodisittrib',intToStr(codigo));
  DataSet.FindField('NOCIN3PERCICMS').asFloat    := TblQtdePCITN3PERICM.asFloat;
  DataSet.FindField('NOCIN3PERCIPI').asFloat     := TblQtdePCITN3PERVIPI.asFloat;
  DataSet.Post;
End;
procedure TFormTelaImportacaoPedidoCompra.FormCreate(Sender: TObject);
Var
  Posicao,AgrupAnt,CorAnt:Integer;
begin
  inherited;
  MontandoGrade := False;
//  DBGridLista.Columns[0].Width := 21;
//  DBGridLista.Columns[1].Width := 50;
  If Not TblQtde.Active Then TblQtde.Open;
  SQLTemplate.Open;
  SQLTemplate.First;AgrupAnt:=0;CorAnt:=0;
  While Not SQLTemplate.Eof Do
    Begin
      If (SQLTemplateGRADICOD.asVariant = Null) or (SQLTemplatePRODIAGRUPGRADE.asInteger<>AgrupAnt) or (SQLTemplateCORICOD.asInteger<>CorAnt) Then
        Begin
          If (SQLTemplateGRADICOD.asVariant<>Null) and (ListBoxGrade.Items.IndexOf(SQLTemplateGRADICOD.asString)=-1) Then
            IncluiGrade(SQLTemplateGRADICOD.asInteger);
          MontandoGrade := True;
          TblQtde.Append;
          AgrupAnt := SQLTemplatePRODIAGRUPGRADE.asInteger;
          CorAnt   := SQLTemplateCORICOD.asInteger;
          TblQtdeGrade.asInteger        := SQLTemplateGRADICOD.asInteger;
          TblQtdePRODICOD.asInteger     := SQLTemplatePRODICOD.asInteger;
          TblQtdePDCPA13ID.asString     := SQLTemplatePDCPA13ID.asString;
          TblQtdePCITIPOS.asInteger     := SQLTemplatePCITIPOS.asInteger;
          TblQtdePRODA60DESCR.asString  := SQLTemplatePRODA60DESCR.asString;
          TblQtdeReferencia.asString    := SQLTemplatePRODA60REFER.asString;
          TblQtdeCor.asString           := SQLTemplateCorLookUp.asString;
          TblQtdePCITN3QTDBONIF.asFloat := SQLTemplatePCITN3QTDBONIF.AsFloat;
          TblQtdePCITN3CAPEMBAL.asFloat := SQLTemplatePCITN3CAPEMBAL.AsFloat;
          TblQtdePCITN3VLRUNIT.asFloat  := SQLTemplatePCITN3VLRUNIT.asFloat;
          TblQtdePCITN3PERVIPI.asFloat  := SQLTemplatePCITN3PERVIPI.asFloat;
          TblQtdePCITN3PERICM.asFloat   := SQLTemplatePCITN3PERICM.asFloat;
          TblQtdePCITN3PERCDESC.asFloat := SQLTemplatePCITN3PERCDESC.asFloat;
          TblQtdeLegValor.asString      := 'Valor';
          TblQtdeLegDesc.asString       := '%Desc';
        End
      Else
        TblQtde.Edit;
      If ((SQLTemplatePCITN3QTDEMBAL.asFloat-SQLTemplatePCITN3QTDENTR.asFloat)>0) Then
        Begin
          If SQLTemplateGRADICOD.asVariant <> Null Then
            Begin
              Posicao:=EncontraTamanho(SQLTemplateGRADICOD.asInteger,SQLTemplateGRTMICOD.asInteger);
              If (Posicao>0) and (Posicao<16) Then
                Begin
                  TblQtde.FindField('Cod'+IntToStr(Posicao)).asInteger := SQLTemplatePRODICOD.asInteger;
                  TblQtde.FindField('P'+IntToStr(Posicao)).asInteger   := SQLTemplatePCITIPOS.asInteger;
                  TblQtde.FindField('Q'+IntToStr(Posicao)).asFloat     := (SQLTemplatePCITN3QTDEMBAL.asFloat-SQLTemplatePCITN3QTDENTR.asFloat);
                  TblQtde.FindField(IntToStr(Posicao)).asFloat         := (SQLTemplatePCITN3QTDEMBAL.asFloat-SQLTemplatePCITN3QTDENTR.asFloat);
                End;
            End
          Else
            Begin
              TblQtde.FindField('CodTotal').asInteger := SQLTemplatePRODICOD.asInteger;
              TblQtde.FindField('PTotal').asInteger   := SQLTemplatePCITIPOS.asInteger;
            End;
        End;
      TblQtde.FindField('QTotal').asFloat := TblQtde.FindField('QTotal').asFloat + (SQLTemplatePCITN3QTDEMBAL.asFloat-SQLTemplatePCITN3QTDENTR.asFloat);
      TblQtde.FindField('Total').asFloat  := TblQtde.FindField('Total').asFloat  + (SQLTemplatePCITN3QTDEMBAL.asFloat-SQLTemplatePCITN3QTDENTR.asFloat);
      TblQtde.Post;
      SQLTemplate.Next;
    End;
  if not MontandoGrade then
    PosicionaColunasGrid; 
  TblQtde.First;
  While Not TblQtde.Eof Do
    If TblQtdeQTotal.asFloat = 0 Then
      TblQtde.Delete
    Else
      TblQtde.Next;
  TblQtde.First;
  MontandoGrade := False;
end;

procedure TFormTelaImportacaoPedidoCompra.TblQtdeNewRecord(
  DataSet: TDataSet);
Var
  I:Integer;
begin
  inherited;
  TblQtde.FindField('Total').asFloat  :=0;
  TblQtde.FindField('QTotal').asFloat :=0;
  For I:=1 to 15 Do
    Begin
      TblQtde.FindField(IntToStr(I)).asFloat         :=0;
      TblQtde.FindField('Cod'+IntToStr(I)).asInteger :=0;
      TblQtde.FindField('Q'+IntToStr(I)).asFloat     :=0;
    End;
end;

procedure TFormTelaImportacaoPedidoCompra.TblQtdeBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaImportacaoPedidoCompra.TblQtdeBeforeDelete(
  DataSet: TDataSet);
begin
  If Not MontandoGrade Then Abort;
  inherited;
end;

procedure TFormTelaImportacaoPedidoCompra.TblQtdeBCDField1Change(
  Sender: TField);
Var
  I:Integer;
begin
  inherited;
  If MontandoGrade or Calculando Then Exit;
  If TblQtde.FindField('Q'+Sender.FieldName).asFloat = 0 Then
    Begin
      ShowMessage('Não existe este tamanho no Pedido!');
      Calculando   := True;
      Sender.Value := 0;
      Calculando   := False;
      Exit;
    End;
  Calculando :=True;
  If TblQtdeGrade.asFloat<>0 Then
    Begin
      TblQtde.FindField('Total').asFloat:=0;
      For I:=1 To 15 Do
        TblQtde.FindField('Total').asFloat:=TblQtde.FindField('Total').asFloat+TblQtde.FindField(IntToStr(I)).asFloat;
    End;
  If Sender.DataSet.State in DsEditModes Then Sender.DataSet.Post;
  Calculando :=False;
end;

procedure TFormTelaImportacaoPedidoCompra.TblQtdeTotalChange(
  Sender: TField);
begin
  inherited;
  If MontandoGrade or Calculando Then Exit;
  If TblQtde.FindField('CodTotal').asInteger = 0 Then
    Begin
      ShowMessage('Este produto deve ser lançado por Grade!');
      Sender.DataSet.Cancel;
    End;
end;

procedure TFormTelaImportacaoPedidoCompra.BtnOkClick(Sender: TObject);
Var
  I:Integer;
  DataSet : TDataSet;
begin
  inherited;
  ProgressBar.Visible:=True;
  ProgressBar.Max := TblQtde.RecordCount * 15;
  ProgressBar.Position := 0;
  DM.ImportandoPedidoCompra:=True;
  DataSet := DSNotaCompraItem.DataSet;
  DataSet.DisableControls;
  TblQtde.First;
  While Not TblQtde.Eof Do
    Begin
      If TblQtde.FindField('CodTotal').asInteger<>0 Then
        Begin
          ProgressBar.Position := ProgressBar.Position + 15;
          If TblQtdeTotal.asFloat<>0 Then
            IncluiItemNota(DataSet,TblQtdeCodTotal.asInteger,TblQtdePTotal.asInteger,TblQtdeQTotal.asFloat,TblQtdeTotal.asFloat);
        End
      Else
        For I := 1 To 15 Do
          Begin
            ProgressBar.Position := ProgressBar.Position + 1;
            If TblQtde.FindField(IntToStr(I)).asFloat<>0 Then
              IncluiItemNota(DataSet,TblQtde.FindField('Cod'+IntToStr(I)).asInteger,TblQtde.FindField('P'+IntToStr(I)).asInteger,TblQtde.FindField('Q'+IntToStr(I)).asFloat,TblQtde.FindField(IntToStr(I)).asFloat);
          End;
      TblQtde.Next;
    End;
  DataSet.EnableControls;
  DM.ImportandoPedidoCompra:=False;
  ProgressBar.Visible:=False;
  DataSet.cancel;
  Close;
end;

procedure TFormTelaImportacaoPedidoCompra.FormActivate(Sender: TObject);
begin
  inherited;
  TblQtdeTotal.FocusControl;
end;

end.
