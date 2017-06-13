unit RelatorioPosicaoDiariaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioPosicaoDiariaEstoque = class(TFormRelatorioTEMPLATE)
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLVariacao: TRxQuery;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLVariacaoPENDENTE: TStringField;
    SQLVariacaoREGISTRO: TDateTimeField;
    DSSQLVariacao: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    GroupBox3: TGroupBox;
    LabelSubGrupo: TLabel;
    LabelVariacao: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboGrupo: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    ComboProduto: TRxDBLookupCombo;
    Label6: TLabel;
    CheckPeriodo: TCheckBox;
    Timer1: TTimer;
    SQLProdutoSaldoDia: TRxQuery;
    SQLProdutoSaldoDiaEMPRICOD: TIntegerField;
    SQLProdutoSaldoDiaPRODICOD: TIntegerField;
    SQLProdutoSaldoDiaPSDIDDATA: TDateTimeField;
    SQLProdutoSaldoDiaPSDIN3QTDE: TBCDField;
    SQLProdutoSaldoDiaPRODA60DESCR: TStringField;
    SQLProdutoSaldoDiaPRODA60REFER: TStringField;
    SQLProdutoSaldoDiaPRODN3VLRVENDA: TBCDField;
    SQLProdutoSaldoDiaPRODN3VLRCOMPRA: TBCDField;
    SQLProdutoSaldoDiaPRODN3VLRCUSTO: TBCDField;
    SQLProdutoSaldoDiaPRODN3VLRCUSTOMED: TBCDField;
    SQLProdutoSaldoDiaPRODN3VLRCOMPRAMED: TBCDField;
    SQLProdutoSaldoDiaGRUPICOD: TIntegerField;
    SQLProdutoSaldoDiaSUBGICOD: TIntegerField;
    SQLProdutoSaldoDiaVARIICOD: TIntegerField;
    SQLProdutoSaldoDiaMARCICOD: TIntegerField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPSDIDDATA: TDateTimeField;
    TblTemporariaPSDIN3QTDE: TBCDField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    TblTemporariaPRODN3VLRCOMPRA: TBCDField;
    TblTemporariaPRODN3VLRCUSTO: TBCDField;
    TblTemporariaPRODN3VLRCUSTOMED: TBCDField;
    TblTemporariaPRODN3VLRCOMPRAMED: TBCDField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    TblTemporariaMARCICOD: TIntegerField;
    Report: TCrpe;
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPosicaoDiariaEstoque: TFormRelatorioPosicaoDiariaEstoque;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioPosicaoDiariaEstoque.ComboGrupoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormRelatorioPosicaoDiariaEstoque.Timer1Timer(Sender: TObject);
begin
  inherited;
  if ComboGrupo.Text <> '' then
    ComboSubGrupo.Enabled := true
  else
    ComboSubGrupo.Enabled := false ;

  if ComboSubGrupo.Text <> '' then
    ComboVariacao.Enabled := true
  else
    ComboVariacao.Enabled := false ;

  if CheckPeriodo.Checked then
    begin
      De.Enabled  := False;
      Ate.Enabled := False;
    end
  else
    begin
      De.Enabled  := True;
      Ate.Enabled := True;
    end;

end;

procedure TFormRelatorioPosicaoDiariaEstoque.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLProdutoSaldoDia.Close;

  SQLProdutoSaldoDia.MacrobyName('Empresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PRODUTOSALDO', '') ;
  if not CheckPeriodo.Checked then
    begin
      SQLProdutoSaldoDia.MacrobyName('Data').Value := 'PRODUTOSALDO.PSDIDDATA >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                      'PRODUTOSALDO.PSDIDDATA <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
    end
  else
    SQLProdutoSaldoDia.MacrobyName('Data').Value := '0=0';

  if ComboGrupo.Value <> '' then
    SQLProdutoSaldoDia.MacrobyName('Grupo').Value := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLProdutoSaldoDia.MacrobyName('Grupo').Value := '0=0';

  if ComboSubGrupo.Value <> '' then
    SQLProdutoSaldoDia.MacrobyName('SubGrupo').Value := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value
  else
    SQLProdutoSaldoDia.MacrobyName('SubGrupo').Value := '0=0';

  if ComboVariacao.Value <> '' then
    SQLProdutoSaldoDia.MacrobyName('Variacao').Value := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value
  else
    SQLProdutoSaldoDia.MacrobyName('Variacao').Value := '0=0';

  if ComboMarca.Value <> '' then
    SQLProdutoSaldoDia.MacrobyName('Marca').Value := 'PRODUTO.MARCICOD = ' + ComboMarca.Value
  else
    SQLProdutoSaldoDia.MacrobyName('Marca').Value := '0=0';

  if ComboProduto.Value <> '' then
    SQLProdutoSaldoDia.MacrobyName('Produto').Value := 'PRODUTO.PRODICOD = ' + ComboProduto.Value
  else
    SQLProdutoSaldoDia.MacrobyName('Produto').Value := '0=0';

  SQLProdutoSaldoDia.Open;

  BatchExec(SQLProdutoSaldoDia,TblTemporaria);

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Posicao Diaria de Estoque.rpt' ;
  Report.ReportTitle       := 'Relatório Posição Diária de Estoque' ;
  Report.WindowStyle.Title := 'Relatório Posição Diária de Estoque' ;
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
  Report.Formulas.Name := 'Produto' ;
  if ComboProduto.Text <> '' then
    Report.Formulas.Formula.Text := '"' + ComboProduto.Text + '"'
  else
    Report.Formulas.Formula.Text := '"Todos"' ;
  //--------------------------------------------------------------------------\\
  //--------------------------------------------------------------------------\\
  Report.Execute ;


end;

procedure TFormRelatorioPosicaoDiariaEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLGrupo.Active then SQLGrupo.Open;
  if not SQLMarca.Active then SQLMarca.Open;
  if not SQLProduto.Active then SQLProduto.Open; 
end;

end.
