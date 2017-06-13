unit RelatorioEstoquePorGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioEstoquePorGrade = class(TFormRelatorioTEMPLATE)
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
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoMARCA60DESCR: TStringField;
    SQLProdutoPRODN3VLRCUSTO: TBCDField;
    SQLProdutoPRODN3VLRVENDA: TBCDField;
    SQLProdutoSALDO: TBCDField;
    GroupOrdem: TGroupBox;
    OrdemCodigo: TRadioButton;
    OrdemDescricao: TRadioButton;
    GroupTipo: TGroupBox;
    SaldoMaiorZero: TRadioButton;
    SaldoMenorZero: TRadioButton;
    TodosSaldos: TRadioButton;
    GroupHide: TGroupBox;
    HidePrcCompra: TCheckBox;
    HidePrcVenda: TCheckBox;
    Report: TCrpe;
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
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoGRUPA60DESCR: TStringField;
    SQLProdutoSUBGA60DESCR: TStringField;
    SQLProdutoVARIA60DESCR: TStringField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
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
    OrdemRef: TRadioButton;
    TblTemporariaTotVenda: TFloatField;
    TblTemporariaTotCusto: TFloatField;
    ChkSintetico: TCheckBox;
    GroupGrade: TGroupBox;
    EditGrade: TEdit;
    EditDesc: TEdit;
    EditGradeCodigo: TEdit;
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradePRODIAGRUPGRADE: TIntegerField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    TblTemporariaEmpresa: TStringField;
    SQLProdutoEMPRICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    ComboTamanho: TRxDBLookupCombo;
    Label11: TLabel;
    SQLTamanho: TRxQuery;
    SQLTamanhoGRADICOD: TIntegerField;
    SQLTamanhoGRTMICOD: TIntegerField;
    SQLTamanhoGRTMA5DESCR: TStringField;
    DSSQLTamanho: TDataSource;
    Label12: TLabel;
    ComboColecao: TRxDBLookupCombo;
    sqlColecao: TRxQuery;
    dsColecao: TDataSource;
    sqlColecaoCOLEICOD: TIntegerField;
    sqlColecaoCOLEA60DESCR: TStringField;
    SQLProdutoCOLEA60DESCR: TStringField;
    SQLProdutoCOLEICOD: TIntegerField;
    TblTemporariaCOLEA60DESCR: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboGrupoChange(Sender: TObject);
    procedure ComboSubGrupoChange(Sender: TObject);
    procedure EditGradeExit(Sender: TObject);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Procedure VerificaGrade(Grade:Integer);
  public
    { Public declarations }
  end;

var
  FormRelatorioEstoquePorGrade: TFormRelatorioEstoquePorGrade;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}
Procedure TFormRelatorioEstoquePorGrade.VerificaGrade(Grade:Integer);
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
procedure TFormRelatorioEstoquePorGrade.ExecutarBtnClick(Sender: TObject);
Var
  CorAnt, GradeAnt, EmpresaAnt:String;
  Posicao : Integer;
begin
  inherited;
  If TblLegenda.Active Then TblLegenda.Close;
  If TblLegenda.Exists Then TblLegenda.DeleteTable;
  TblLegenda.CreateTable;
  TblLegenda.Open;

  If SQLProduto.Active Then SQLProduto.Close;

  SQLProduto.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PRODUTOSALDO', '');
  If TodosSaldos.Checked Then
    SQLProduto.MacrobyName('MSaldo').Value := '0=0';
  If SaldoMaiorZero.Checked Then
    SQLProduto.MacrobyName('MSaldo').Value := 'PRODUTOSALDO.PSLDN3QTDE > 0';
  If SaldoMenorZero.Checked Then
    SQLProduto.MacrobyName('MSaldo').Value := 'PRODUTOSALDO.PSLDN3QTDE < 0';
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

  if ComboColecao.KeyValue <> null then
    SQLProduto.MacroByName('MColecao').Value := 'PRODUTO.COLEICOD = ' + ComboColecao.Value
  else
    SQLProduto.MacroByName('MColecao').Value := '0=0';

  if ComboGrade.KeyValue <> null then
    SQLProduto.MacroByName('MGrade').Value := 'PRODUTO.GRADICOD = ' + ComboGrade.Value
  else
    SQLProduto.MacroByName('MGrade').Value := '0=0';

  if ComboTamanho.KeyValue <> null then
    SQLProduto.MacroByName('MTamanho').Value := 'PRODUTO.GRTMICOD = ' + ComboTamanho.Value
  else
    SQLProduto.MacroByName('MTamanho').Value := '0=0';

  if ComboUnidade.KeyValue <> null then
    SQLProduto.MacroByName('MUnidade').Value := 'PRODUTO.UNIDICOD = ' + ComboUnidade.Value
  else
    SQLProduto.MacroByName('MUnidade').Value := '0=0';

  if EditGradeCodigo.Text <> '' then
    SQLProduto.MacroByName('Grade').Value    := 'PRODUTO.PRODIAGRUPGRADE = ' + EditGradeCodigo.Text
  else
    SQLProduto.MacroByName('Grade').Value    := '0=0';

  if OrdemCodigo.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'GRUPO.GRUPA60DESCR,SUBGRUPO.SUBGA60DESCR,VARIACAO.VARIA60DESCR,PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD, PRODUTOSALDO.EMPRICOD';
  if OrdemDescricao.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'GRUPO.GRUPA60DESCR,SUBGRUPO.SUBGA60DESCR,VARIACAO.VARIA60DESCR,PRODUTO.PRODA60DESCR, PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD, PRODUTOSALDO.EMPRICOD';
  If OrdemRef.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'GRUPO.GRUPA60DESCR,SUBGRUPO.SUBGA60DESCR,VARIACAO.VARIA60DESCR,PRODUTO.PRODA60REFER, PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD, PRODUTOSALDO.EMPRICOD';

  SQLProduto.Open;
  if (SQLProduto.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  If TblTemporaria.Active Then TblTemporaria.Close;
  TblTemporaria.Open;
  SQLProduto.First;CorAnt:='';GradeAnt:=''; EmpresaAnt := '';
  While Not SQLProduto.Eof Do
    Begin
      If (CorAnt<>SQLProdutoCORICOD.asString) or
         (GradeAnt<>SQLProdutoPRODIAGRUPGRADE.asString) or
         (SQLProdutoEMPRICOD.AsString <> EmpresaAnt)  Then
        Begin
          GradeAnt := SQLProdutoPRODIAGRUPGRADE.asString;
          CorAnt   := SQLProdutoCORICOD.asString;
          EmpresaAnt := SQLProdutoEMPRICOD.AsString;
          VerificaGrade(SQLProdutoGRADICOD.asInteger);
          TblTemporaria.Append;
          SQLEmpresa.Locate('EMPRICOD',SQLProdutoEMPRICOD.AsString,[]);
          TblTemporariaEmpresa.AsString        := SQLEmpresaEMPRA60RAZAOSOC.AsString;
          TblTemporariaPRODDULTRECTO.AsVariant := Null;
          TblTemporariaPRODICOD.asInteger      := SQLProdutoPRODIAGRUPGRADE.asInteger;
          If Not HidePrcCompra.Checked Then
            TblTemporariaPRODN2VLRCUSTO.asFloat  := SQLProdutoPRODN3VLRCUSTO.asFloat;
          If Not HidePrcVenda.Checked Then
            TblTemporariaPRODN2VLRVENDA.asFloat  := SQLProdutoPRODN3VLRVENDA.asFloat;
          If (SQLProdutoPRODN3VLRCUSTO.asFloat>0) and (Not HidePrcCompra.Checked) and (Not HidePrcVenda.Checked) Then
            TblTemporariaPRODN2MARGEM.asFloat    := ((SQLProdutoPRODN3VLRVENDA.asFloat/SQLProdutoPRODN3VLRCUSTO.asFloat)-1)*100
          Else
            TblTemporariaPRODN2MARGEM.asFloat    := 0;
          TblTemporariaPRODA60DESCR.AsString   := SQLProdutoPRODA60DESCR.AsString;
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
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Estoque por Grade.rpt' ;
  Report.ReportTitle       := 'Relatório Posição de Estoque por Grade' ;
  Report.WindowStyle.Title := 'Relatório Posição de Estoque por Grade' ;
  //SETAR FORMULAS NO RPT
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
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
  Report.Formulas.Name := 'Colecao' ;
  if ComboColecao.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboColecao.Text + '"'
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

procedure TFormRelatorioEstoquePorGrade.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
  SQLGrade.Open;
  SQLTamanho.Open;
  SQLUnidade.Open;
  sqlColecao.Open;
end;

procedure TFormRelatorioEstoquePorGrade.ComboGrupoChange(Sender: TObject);
begin
  inherited;
  ComboSubGrupo.Enabled:=(ComboGrupo.Value<>'');
  If ComboGrupo.Value = '' Then
    ComboSubGrupo.Value:='';
end;

procedure TFormRelatorioEstoquePorGrade.ComboSubGrupoChange(
  Sender: TObject);
begin
  inherited;
  ComboVariacao.Enabled:=(ComboSubGrupo.Value<>'');
  If ComboSubGrupo.Value = '' Then
    ComboVariacao.Value:='';
end;

procedure TFormRelatorioEstoquePorGrade.EditGradeExit(Sender: TObject);
begin
  inherited;
  if (EditGrade.Text<>'') then
    begin
      if not SQLProdutoGrade.Active then SQLProdutoGrade.Open;
      if EncontrouProduto(EditGrade.Text,SQLProdutoGrade) then
        Begin
          EditGradeCodigo.Text:=SQLProdutoGradePRODIAGRUPGRADE.asString;
          EditDesc.Text:= SQLProdutoGradePRODA60DESCR.AsString;
        End
      else
        begin
          Application.MessageBox('Grade não encontrada!', 'Atenção', MB_SYSTEMMODAL + MB_Ok + MB_IconExclamation);
          EditGrade.SetFocus;
          EditDesc.Text:= '';
        end;
    end;
end;

procedure TFormRelatorioEstoquePorGrade.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
