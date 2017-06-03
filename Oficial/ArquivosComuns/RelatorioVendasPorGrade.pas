unit RelatorioVendasPorGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32;

type
  TFormRelatorioVendasPorGrade = class(TFormRelatorioTEMPLATE)
    DSSQLGrupo: TDataSource;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLVariacao: TDataSource;
    SQLVariacao: TRxQuery;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLGrade: TDataSource;
    SQLGrade: TRxQuery;
    SQLGradeGRADICOD: TIntegerField;
    SQLGradeGRADA30DESCR: TStringField;
    DSSQLUnidade: TDataSource;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    GroupFiltro: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    ComboGrade: TRxDBLookupCombo;
    ComboUnidade: TRxDBLookupCombo;
    GroupCodDesc: TGroupBox;
    OrdemCodigo: TRadioButton;
    OrdemDescricao: TRadioButton;
    OrdemRef: TRadioButton;
    GroupBox4: TGroupBox;
    HidePrcCompra: TCheckBox;
    HidePrcVenda: TCheckBox;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaPRODA60MARCA: TStringField;
    TblTemporariaCORA60DESCR: TStringField;
    TblTemporariaPRODN2VLRCUSTO: TFloatField;
    TblTemporariaPRODN2VLRVENDA: TFloatField;
    TblTemporariaPRODN2MARGEM: TFloatField;
    TblTemporariaPRODDULTRECTO: TDateField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaQTD1: TFloatField;
    TblTemporariaQTD2: TFloatField;
    TblTemporariaQTD3: TFloatField;
    TblTemporariaQTD4: TFloatField;
    TblTemporariaQTD5: TFloatField;
    TblTemporariaQTD6: TFloatField;
    TblTemporariaQTD7: TFloatField;
    TblTemporariaQTD8: TFloatField;
    TblTemporariaQTD9: TFloatField;
    TblTemporariaQTD10: TFloatField;
    TblTemporariaQTD11: TFloatField;
    TblTemporariaQTD12: TFloatField;
    TblTemporariaQTD13: TFloatField;
    TblTemporariaQTD14: TFloatField;
    TblTemporariaQTD15: TFloatField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    TblTemporariaGRUPA60DESCR: TStringField;
    TblTemporariaSUBGA60DESCR: TStringField;
    TblTemporariaVARIA60DESCR: TStringField;
    TblLegenda: TTable;
    TblLegendaLEGENDA: TIntegerField;
    TblLegendaTOTAL: TStringField;
    TblLegendaQTD1: TStringField;
    TblLegendaQTD2: TStringField;
    TblLegendaQTD3: TStringField;
    TblLegendaQTD4: TStringField;
    TblLegendaQTD5: TStringField;
    TblLegendaQTD6: TStringField;
    TblLegendaQTD7: TStringField;
    TblLegendaQTD8: TStringField;
    TblLegendaQTD9: TStringField;
    TblLegendaQTD10: TStringField;
    TblLegendaQTD11: TStringField;
    TblLegendaQTD12: TStringField;
    TblLegendaQTD13: TStringField;
    TblLegendaQTD14: TStringField;
    TblLegendaQTD15: TStringField;
    SQLProduto: TRxQuery;
    Report: TCrpe;
    TblTemporariaTotVenda: TFloatField;
    TblTemporariaTotCusto: TFloatField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoMARCA60DESCR: TStringField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoSALDO: TBCDField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoGRUPA60DESCR: TStringField;
    SQLProdutoSUBGA60DESCR: TStringField;
    SQLProdutoVARIA60DESCR: TStringField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    ChkSintetico: TCheckBox;
    procedure ComboGrupoChange(Sender: TObject);
    procedure ComboSubGrupoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
    Procedure VerificaGrade(Grade:Integer);
  public
    { Public declarations }
  end;

var
  FormRelatorioVendasPorGrade: TFormRelatorioVendasPorGrade;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

Procedure TFormRelatorioVendasPorGrade.VerificaGrade(Grade:Integer);
Var
  I:Integer;
Begin
  If Not TblLegenda.Locate('LEGENDA',Grade,[LoCaseInsensitive]) Then
    Begin
      TblLegenda.Append;
      TblLegendaLEGENDA.Value  := Grade;
      TblLegendaTOTAL.asString := 'Total';
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Text:= 'Select * From GRADETAMANHO Where GRADICOD='+IntToStr(Grade);
      DM.SQLTemplate.Open;
      I:=0;
      DM.SQLTemplate.First;
      While Not DM.SQLTemplate.Eof Do
        Begin
          Inc(I);
          TblLegenda.FindField('QTD'+IntToStr(I)).AsString:=DM.SQLTemplate.FindField('GRTMA5DESCR').asString;
          DM.SQLTemplate.Next;
        End;
      DM.SQLTemplate.Close;
      TblLegenda.Post;
    End;
End;
procedure TFormRelatorioVendasPorGrade.ComboGrupoChange(Sender: TObject);
begin
  inherited;
  ComboSubGrupo.Enabled:=(ComboGrupo.Value<>'');
  If ComboGrupo.Value = '' Then
    ComboSubGrupo.Value:='';
end;

procedure TFormRelatorioVendasPorGrade.ComboSubGrupoChange(
  Sender: TObject);
begin
  inherited;
  ComboVariacao.Enabled:=(ComboSubGrupo.Value<>'');
  If ComboSubGrupo.Value = '' Then
    ComboVariacao.Value:='';
end;

procedure TFormRelatorioVendasPorGrade.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
  SQLGrade.Open;
  SQLUnidade.Open;
end;

procedure TFormRelatorioVendasPorGrade.ExecutarBtnClick(Sender: TObject);
Var
  CorAnt, GradeAnt:String;
  Posicao : Integer;
begin
  inherited;
  If TblLegenda.Active Then TblLegenda.Close;
  If TblLegenda.Exists Then TblLegenda.DeleteTable;
  TblLegenda.CreateTable;
  TblLegenda.Open;

  If SQLProduto.Active Then SQLProduto.Close;

  SQLProduto.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '');

  SQLProduto.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                              'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  //SETAR MACROS
  if ComboGrupo.KeyValue <> null then
    SQLProduto.MacroByName('MGrupo').Value := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLProduto.MacroByName('MGrupo').Value := '0=0';

  if ComboSubGrupo.KeyValue <> null then
    SQLProduto.MacroByName('MSubGrupo').Value := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value
  else
    SQLProduto.MacroByName('MSubGrupo').Value := '0=0';

  if ComboVariacao.KeyValue <> null then
    SQLProduto.MacroByName('MVariacao').Value := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value
  else
    SQLProduto.MacroByName('MVariacao').Value := '0=0';

  if ComboMarca.KeyValue <> null then
    SQLProduto.MacroByName('MMarca').Value := 'PRODUTO.MARCICOD = ' + ComboMarca.Value
  else
    SQLProduto.MacroByName('MMarca').Value := '0=0';

  if ComboGrade.KeyValue <> null then
    SQLProduto.MacroByName('MGrade').Value := 'PRODUTO.GRADICOD = ' + ComboGrade.Value
  else
    SQLProduto.MacroByName('MGrade').Value := '0=0';

  if ComboUnidade.KeyValue <> null then
    SQLProduto.MacroByName('MUnidade').Value := 'PRODUTO.UNIDICOD = ' + ComboUnidade.Value
  else
    SQLProduto.MacroByName('MUnidade').Value := '0=0';

  if OrdemCodigo.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'GRUPO.GRUPA60DESCR,SUBGRUPO.SUBGA60DESCR,VARIACAO.VARIA60DESCR,PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD';
  if OrdemDescricao.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'GRUPO.GRUPA60DESCR,SUBGRUPO.SUBGA60DESCR,VARIACAO.VARIA60DESCR,PRODUTO.PRODA60DESCR, PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD';
  If OrdemRef.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'GRUPO.GRUPA60DESCR,SUBGRUPO.SUBGA60DESCR,VARIACAO.VARIA60DESCR,PRODUTO.PRODA60REFER, PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD';

  If TblTemporaria.Active Then TblTemporaria.Close;

  TblTemporaria.Open;
  SQLProduto.Open ;
  SQLProduto.First;CorAnt:='';GradeAnt:='';
  While Not SQLProduto.Eof Do
    Begin
      If (CorAnt<>SQLProdutoCORICOD.asString) or (GradeAnt<>SQLProdutoPRODIAGRUPGRADE.asString) Then
        Begin
          GradeAnt := SQLProdutoPRODIAGRUPGRADE.asString;
          CorAnt   := SQLProdutoCORICOD.asString;
          VerificaGrade(SQLProdutoGRADICOD.asInteger);
          TblTemporaria.Append;
          TblTemporariaPRODDULTRECTO.AsVariant := Null;
          TblTemporariaPRODICOD.asInteger      := SQLProdutoPRODIAGRUPGRADE.asInteger;
          If Not HidePrcCompra.Checked Then
            TblTemporariaPRODN2VLRVENDA.asFloat  := SQLProdutoPRODN3VLRVENDA.asFloat;
          If Not HidePrcVenda.Checked Then
            TblTemporariaPRODN2VLRCUSTO.asFloat  := SQLProdutoPRODN3VLRCUSTO.asFloat;
          If (SQLProdutoPRODN3VLRCUSTO.asFloat>0) and (Not HidePrcCompra.Checked) and (Not HidePrcVenda.Checked) Then
            TblTemporariaPRODN2MARGEM.asFloat    := ((SQLProdutoPRODN3VLRVENDA.asFloat/SQLProdutoPRODN3VLRCUSTO.asFloat)-1)*100
          Else
            TblTemporariaPRODN2MARGEM.asFloat    := 0;
          TblTemporariaPRODA60REFER.asString   := SQLProdutoPRODA60REFER.asString;
          TblTemporariaPRODA60MARCA.asString   := SQLProdutoMARCA60DESCR.asString;
          TblTemporariaSUBGICOD.asInteger      := SQLProdutoSUBGICOD.asInteger;
          TblTemporariaSUBGA60DESCR.asString   := SQLProdutoSUBGA60DESCR.asString;
          TblTemporariaGRUPICOD.asInteger      := SQLProdutoGRUPICOD.asInteger;
          TblTemporariaGRUPA60DESCR.asString   := SQLProdutoGRUPA60DESCR.asString;
          TblTemporariaVARIICOD.asInteger      := SQLProdutoVARIICOD.asInteger;
          TblTemporariaVARIA60DESCR.asString   := SQLProdutoVARIA60DESCR.asString;
          TblTemporariaCORA60DESCR.asString    := SQLProdutoCORA30DESCR.asString;
        End
      Else
        TblTemporaria.Edit;
      TblTemporariaTOTAL.asFloat    := TblTemporariaTOTAL.asFloat + SQLProdutoSALDO.asFloat;
      TblTemporariaTotVenda.asFloat := TblTemporariaTotVenda.asFloat + (SQLProdutoPRODN3VLRVENDA.asFloat*SQLProdutoSALDO.asFloat);
      TblTemporariaTotCusto.asFloat := TblTemporariaTotCusto.asFloat + (SQLProdutoPRODN3VLRCUSTO.asFloat*SQLProdutoSALDO.asFloat);
      If (SQLProdutoGRADICOD.asVariant<>Null) and (SQLProdutoGRTMICOD.asVariant<>Null) Then
        Begin
          Posicao := PosicaoGrade(SQLProdutoGRADICOD.asInteger,SQLProdutoGRTMICOD.asInteger);
          TblTemporaria.FindField('QTD'+IntToStr(Posicao)).asFloat := TblTemporaria.FindField('QTD'+IntToStr(Posicao)).asFloat + SQLProdutoSALDO.asFloat;
        End;
      TblTemporaria.Post;
      SQLProduto.Next;
    End;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas por Grade.rpt' ;
  Report.ReportTitle       := 'Relatório Produtos Vendidos Por Grade' ;
  Report.WindowStyle.Title := 'Relatório Produtos Vendidos Por Grade' ;
  //SETAR FORMULAS NO RPT
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Grupo' ;
  if ComboGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboGrupo.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'SubGrupo' ;
  if ComboSubGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboSubGrupo.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Variacao' ;
  if ComboVariacao.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboVariacao.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Marca' ;
  if ComboMarca.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboMarca.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Grade' ;
  if ComboGrade.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboGrade.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Unidade' ;
  if ComboUnidade.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboUnidade.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'OrdemImpressao' ;
  if OrdemCodigo.Checked then
    Report.Formulas.Formula.Text := '"Código"' ;
  if OrdemDescricao.Checked then
    Report.Formulas.Formula.Text := '"Descrição"' ;
  if OrdemRef.Checked then
    Report.Formulas.Formula.Text := '"Referência"' ;

  If ChkSintetico.Checked Then
    Begin
      Report.SectionFormat.Retrieve ;
      Report.SectionFormat.Section:='D';
      Report.SectionFormat.Suppress:= CTrue;
      Report.SectionFormat.Send;
    End
  Else
    Begin
      Report.SectionFormat.Retrieve ;
      Report.SectionFormat.Section:='D';
      Report.SectionFormat.Suppress:= CFalse;
      Report.SectionFormat.Send;
    End;

  Report.Execute;
end;

end.
