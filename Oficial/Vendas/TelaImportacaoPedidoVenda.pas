unit TelaImportacaoPedidoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBTables, RxQuery, Grids, DBGrids, MemTable, ComCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaImportacaoPedidoVenda = class(TFormTelaGeralTEMPLATE)
    SQLTemplate: TRxQuery;
    TblQtde: TMemoryTable;
    DSTblQtde: TDataSource;
    TblQtdePRODICOD: TIntegerField;
    TblQtdePRODA60DESCR: TStringField;
    TblQtdeBCDField1: TBCDField;
    TblQtdeBCDField2: TBCDField;
    TblQtdeBCDField3: TBCDField;
    TblQtdeBCDField4: TBCDField;
    TblQtdeBCDField5: TBCDField;
    TblQtdeBCDField6: TBCDField;
    TblQtdeBCDField7: TBCDField;
    TblQtdeBCDField8: TBCDField;
    TblQtdeBCDField9: TBCDField;
    TblQtdeBCDField10: TBCDField;
    TblQtdeBCDField11: TBCDField;
    TblQtdeBCDField12: TBCDField;
    TblQtdeBCDField13: TBCDField;
    TblQtdeBCDField14: TBCDField;
    TblQtdeBCDField15: TBCDField;
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
    TblQtdeTotal: TBCDField;
    TblQtdeQ1: TBCDField;
    TblQtdeQ2: TBCDField;
    TblQtdeQ3: TBCDField;
    TblQtdeQ4: TBCDField;
    TblQtdeQ5: TBCDField;
    TblQtdeQ6: TBCDField;
    TblQtdeQ7: TBCDField;
    TblQtdeQ8: TBCDField;
    TblQtdeQ9: TBCDField;
    TblQtdeQ10: TBCDField;
    TblQtdeQ11: TBCDField;
    TblQtdeQ12: TBCDField;
    TblQtdeQ13: TBCDField;
    TblQtdeQ14: TBCDField;
    TblQtdeQ15: TBCDField;
    TblQtdeQTotal: TBCDField;
    SQLGradeTamanho: TRxQuery;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    TblQtdeCor: TStringField;
    TblQtdeReferencia: TStringField;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    TblQtdeGrade: TIntegerField;
    BtnOk: TSpeedButton;
    Label3: TLabel;
    DSNotaFiscalItem: TDataSource;
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
    TblQtdePVITN3VLRUNIT: TBCDField;
    TblQtdePVITN3PERCDESC: TBCDField;
    TblQtdePDVDA13ID: TStringField;
    TblQtdePVITIITEM: TIntegerField;
    TblQtdeLegValor: TStringField;
    TblQtdeLegDesc: TStringField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplatePVITIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePVITN3QUANT: TBCDField;
    SQLTemplatePVITN2VLRUNIT: TBCDField;
    SQLTemplatePVITN2PERCDESC: TBCDField;
    SQLTemplatePVITN2VLRDESC: TBCDField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplatePVITN3QUANTVEND: TBCDField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    SQLTemplateCORICOD: TIntegerField;
    SQLTemplateGRADICOD: TIntegerField;
    SQLTemplateGRTMICOD: TIntegerField;
    SQLTemplatePRODA60REFER: TStringField;
    SQLTemplateCorLookUp: TStringField;
    TblQtdePVITN2PERCCOMIS: TBCDField;
    SQLTemplatePVITN2PERCCOMIS: TBCDField;
    PanelLegenda: TPanel;
    DBText1: TDBText;
    LabelProd: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    Label6: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText7: TDBText;
    PanelCab: TPanel;
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
    Shape18: TShape;
    DBGridLista: TDBGrid;
    ProgressBar: TProgressBar;
    ListBoxGrade: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure TblQtdeNewRecord(DataSet: TDataSet);
    procedure TblQtdeBeforeInsert(DataSet: TDataSet);
    procedure TblQtdeBeforeDelete(DataSet: TDataSet);
    procedure TblQtdeBCDField1Change(Sender: TField);
    procedure TblQtdeTotalChange(Sender: TField);
    procedure BtnOkClick(Sender: TObject);
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
  FormTelaImportacaoPedidoVenda: TFormTelaImportacaoPedidoVenda;

implementation

uses DataModulo, CadastroNotaFiscalItem, CadastroNotaFiscal;

{$R *.dfm}
Function TFormTelaImportacaoPedidoVenda.EncontraTamanho(Grade,TAM:Integer):Integer;
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

Procedure TFormTelaImportacaoPedidoVenda.IncluiGrade(Grade:Integer);
Var
  Posicao:Integer;
  Aumento:Boolean;
Begin
  ListBoxGrade.Items.Add(IntToStr(Grade));
  Aumento:=(ListBoxGrade.Items.Count-1>0);
{  If Aumento Then
    Begin
      DBGridLista.Top    := DBGridLista.Top    + 14;
      DBGridLista.Height := DBGridLista.Height - 14;
      PanelCab.Height    := LCodigo.Height     + 14;
      LCodigo.Height     := LCodigo.Height     + 14;
      LDesc.Height       := LDesc.Height       + 14;
      LTotP.Height       := LTotP.Height       + 14;
      LTotN.Height       := LTotN.Height       + 14;
      BCodigo.Height     := BCodigo.Height     + 14;
      BDesc.Height       := BDesc.Height       + 14;
      BTotP.Height       := BTotP.Height       + 14;
      BTotN.Height       := BTotN.Height       + 14;
      LabelCanto.Height  := LTotN.Height       + 14;
      LGrade.Height      := LGrade.Height      + 14;
      BGrade.Height      := BGrade.Height      + 14;
    End;}
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
{          If Aumento Then
            Begin
              (FindComponent('L'+IntToStr(Posicao)) as TLabel).Height := (FindComponent('L'+IntToStr(Posicao)) as TLabel).Height + 14;
              (FindComponent('B'+IntToStr(Posicao)) as TBevel).Height := (FindComponent('B'+IntToStr(Posicao)) as TBevel).Height + 14;
            End;}
        End;
      Inc(Posicao);
      SQLGradeTamanho.Next;
    End;
  While Posicao<=15 Do
    Begin
      (FindComponent('L'+IntToStr(Posicao)) as TLabel).Caption:=(FindComponent('L'+IntToStr(Posicao)) as TLabel).Caption+' '+#13#10;
{       If Aumento Then
         Begin
           (FindComponent('L'+IntToStr(Posicao)) as TLabel).Height := (FindComponent('L'+IntToStr(Posicao)) as TLabel).Height + 14;
           (FindComponent('B'+IntToStr(Posicao)) as TBevel).Height := (FindComponent('B'+IntToStr(Posicao)) as TBevel).Height + 14;
         End;}
      Inc(Posicao);
    End;
//  LGrade.Caption := LGrade.Caption + SQLGradeTamanhoGRADICOD.asString+#13#10;
  SQLGradeTamanho.Close;
End;

Procedure TFormTelaImportacaoPedidoVenda.IncluiItemNota(DataSet:TDataSet;Codigo,Posicao:Integer;QPed,QNota:Double);
Begin
  DataSet.Append;
  DataSet.FindField('PRODICOD').asInteger        := Codigo;
  DataSet.FindField('PDVDA13ID').asString        := TblQtdePDVDA13ID.asString;
  DataSet.FindField('PVITIITEM').asInteger       := Posicao;
  DataSet.FindField('NFITN3TOTVEND').asFloat     := QPed;
  DataSet.FindField('NFITN3QUANT').asFloat       := QNota;
  DataSet.FindField('NFITN2VLRUNIT').asFloat     := TblQtdePVITN3VLRUNIT.asFloat;
  DataSet.FindField('NFITN2PERCDESC').asFloat    := TblQtdePVITN3PERCDESC.asFloat;
  DataSet.FindField('NFITN2PERCCOMIS').asFloat   := TblQtdePVITN2PERCCOMIS.asFloat;
  DataSet.Post;
End;

procedure TFormTelaImportacaoPedidoVenda.FormCreate(Sender: TObject);
Var
  Posicao,AgrupAnt,CorAnt:Integer;
begin
  inherited;
  MontandoGrade := True;
{  DBGridLista.Columns[0].Width := 21;
  DBGridLista.Columns[1].Width := 50;}
  If Not TblQtde.Active Then TblQtde.Open;
  SQLTemplate.Open;
  SQLTemplate.First;AgrupAnt:=0;CorAnt:=0;
  While Not SQLTemplate.Eof Do
    Begin
      If (SQLTemplateGRADICOD.asVariant = Null) or (SQLTemplatePRODIAGRUPGRADE.asInteger<>AgrupAnt) or (SQLTemplateCORICOD.asInteger<>CorAnt) Then
        Begin
          TblQtde.Append;
          If (SQLTemplateGRADICOD.asVariant<>Null) and (ListBoxGrade.Items.IndexOf(SQLTemplateGRADICOD.asString)=-1) Then
            IncluiGrade(SQLTemplateGRADICOD.asInteger);
          AgrupAnt := SQLTemplatePRODIAGRUPGRADE.asInteger;
          CorAnt   := SQLTemplateCORICOD.asInteger;
          TblQtdeGrade.asInteger        := SQLTemplateGRADICOD.asInteger;
          TblQtdePRODICOD.asInteger     := SQLTemplatePRODICOD.asInteger;
          TblQtdePDVDA13ID.asString     := SQLTemplatePDVDA13ID.asString;
          TblQtdePVITIITEM.asInteger    := SQLTemplatePVITIITEM.asInteger;
          TblQtdePRODA60DESCR.asString  := SQLTemplatePRODA60DESCR.asString;
          TblQtdeReferencia.asString    := SQLTemplatePRODA60REFER.asString;
          TblQtdeCor.asString           := SQLTemplateCorLookUp.asString;
          TblQtdePVITN3VLRUNIT.asFloat  := SQLTemplatePVITN2VLRUNIT.asFloat;
          TblQtdePVITN3PERCDESC.asFloat := SQLTemplatePVITN2PERCDESC.asFloat;
          TblQtdePVITN2PERCCOMIS.asFloat := SQLTemplatePVITN2PERCDESC.asFloat;
          TblQtdeLegValor.asString      := 'Valor';
          TblQtdeLegDesc.asString       := '%Desc';
        End
      Else
        TblQtde.Edit;
      If ((SQLTemplatePVITN3QUANT.asFloat-SQLTemplatePVITN3QUANTVEND.asFloat)>0) Then
        Begin
          If SQLTemplateGRADICOD.asVariant <> Null Then
            Begin
              Posicao:=EncontraTamanho(SQLTemplateGRADICOD.asInteger,SQLTemplateGRTMICOD.asInteger);
              If (Posicao>0) and (Posicao<16) Then
                Begin
                  TblQtde.FindField('Cod'+IntToStr(Posicao)).asInteger := SQLTemplatePRODICOD.asInteger;
                  TblQtde.FindField('P'+IntToStr(Posicao)).asInteger   := SQLTemplatePVITIITEM.asInteger;
                  TblQtde.FindField('Q'+IntToStr(Posicao)).asFloat     := (SQLTemplatePVITN3QUANT.asFloat-SQLTemplatePVITN3QUANTVEND.asFloat);
                  TblQtde.FindField(IntToStr(Posicao)).asFloat         := (SQLTemplatePVITN3QUANT.asFloat-SQLTemplatePVITN3QUANTVEND.asFloat);
                End;
            End
          Else
            Begin
              TblQtde.FindField('CodTotal').asInteger := SQLTemplatePRODICOD.asInteger;
              TblQtde.FindField('PTotal').asInteger   := SQLTemplatePVITIITEM.asInteger;
            End;
        End;
      TblQtde.FindField('QTotal').asFloat := TblQtde.FindField('QTotal').asFloat + (SQLTemplatePVITN3QUANT.asFloat-SQLTemplatePVITN3QUANTVEND.asFloat);
      TblQtde.FindField('Total').asFloat  := TblQtde.FindField('Total').asFloat  + (SQLTemplatePVITN3QUANT.asFloat-SQLTemplatePVITN3QUANTVEND.asFloat);
      TblQtde.Post;
      SQLTemplate.Next;
    End;
  TblQtde.First;
  While Not TblQtde.Eof Do
    If TblQtdeQTotal.asFloat = 0 Then
      TblQtde.Delete
    Else
      TblQtde.Next;
  TblQtde.First;
  MontandoGrade := False;
end;

procedure TFormTelaImportacaoPedidoVenda.TblQtdeNewRecord(
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

procedure TFormTelaImportacaoPedidoVenda.TblQtdeBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  If Not MontandoGrade Then Abort;
end;

procedure TFormTelaImportacaoPedidoVenda.TblQtdeBeforeDelete(
  DataSet: TDataSet);
begin
  If Not MontandoGrade Then Abort;
  inherited;
end;

procedure TFormTelaImportacaoPedidoVenda.TblQtdeBCDField1Change(
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

procedure TFormTelaImportacaoPedidoVenda.TblQtdeTotalChange(
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

procedure TFormTelaImportacaoPedidoVenda.BtnOkClick(Sender: TObject);
Var
  I:Integer;
  DataSet : TDataSet;
begin
  inherited;
  ProgressBar.Visible:=True;
  ProgressBar.Max := TblQtde.RecordCount * 15;
  ProgressBar.Position := 0;
  DM.ImportandoPedidoVenda:=True;
  DataSet := DSNotaFiscalItem.DataSet;
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
  DM.ImportandoPedidoVenda:=False;
  ProgressBar.Visible:=False;
  Close;
end;

end.
