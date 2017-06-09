unit RelatorioMovtoDiversos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioMotvoDiversos = class(TFormRelatorioTEMPLATE)
    SQLMovimentos: TRxQuery;
    SQLMovimentosEMPRICOD: TIntegerField;
    SQLMovimentosCLIEA13ID: TStringField;
    SQLMovimentosMOVDDMOVIMENTO: TDateTimeField;
    SQLMovimentosPRODICOD: TIntegerField;
    SQLMovimentosPRODA60DESCR: TStringField;
    SQLMovimentosMVDIN3QTD: TFloatField;
    SQLMovimentosPRODN3VLRCOMPRA: TFloatField;
    SQLMovimentosPRODN3VLRVENDA: TFloatField;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    GroupBox4: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    Report: TCrpe;
    SQLMovimentosVLRTOTALCOMPRA: TFloatField;
    SQLMovimentosVLRTOTALVENDA: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaMOVDDMOVIMENTO: TDateTimeField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaMVDIN3QTD: TFloatField;
    TblTemporariaPRODN3VLRCOMPRA: TFloatField;
    TblTemporariaPRODN3VLRVENDA: TFloatField;
    TblTemporariaVLRTOTALCOMPRA: TFloatField;
    TblTemporariaVLRTOTALVENDA: TFloatField;
    DSSQLOperacaoEstoque: TDataSource;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    GroupOper: TGroupBox;
    ComboOperacaoEstoque: TRxDBLookupCombo;
    ckMostraVenda: TCheckBox;
    CKConcluido: TCheckBox;
    ckMostraCusto: TCheckBox;
    TblTemporariaPRODN3VLRCUSTO: TFloatField;
    TblTemporariaVLRTOTALCUSTO: TFloatField;
    ID: TEdit;
    Label5: TLabel;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMotvoDiversos: TFormRelatorioMotvoDiversos;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioMotvoDiversos.ExecutarBtnClick(Sender: TObject);
var i : integer;
begin
  inherited;
  SQLMovimentos.Close ;
  SQLMovimentos.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'MOVIMENTODIVERSO', '') ;
  SQLMovimentos.MacrobyName('MData').Value    := 'MOVIMENTODIVERSO.MOVDDMOVIMENTO >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                 'MOVIMENTODIVERSO.MOVDDMOVIMENTO <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
  if ComboCliente.Text <> '' then
    SQLMovimentos.MacrobyName('MCliente').Value := 'MOVIMENTODIVERSO.CLIEA13ID = ' + '''' + ComboCliente.Value + ''''
  else
    SQLMovimentos.MacrobyName('MCliente').Value := '0=0';

  if ComboOperacaoEstoque.Text <> '' then
    SQLMovimentos.MacrobyName('MOp').Value := 'MOVIMENTODIVERSO.OPESICOD = ' + ComboOperacaoEstoque.Value
  else
    SQLMovimentos.MacrobyName('MOp').Value := '0=0';

  if id.Text <> '' then
    SQLMovimentos.MacrobyName('Mid').Value := 'MOVIMENTODIVERSO.MOVDA13ID = ' + ID.Text
  else
    SQLMovimentos.MacrobyName('Mid').Value := '0=0';

  if not CKConcluido.Checked then
    SQLMovimentos.MacrobyName('MStatus').Value := 'MOVIMENTODIVERSO.MOVDCCONLUIDO = ''S'''
  else
    SQLMovimentos.MacrobyName('MStatus').Value := '0=0';

  SQLMovimentos.Open ;
  if SQLMovimentos.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  //  BatchExec(SQLMovimentos, TblTemporaria) ;
  TblTemporaria.Close;
  TblTemporaria.Open;
  while not SQLMovimentos.Eof do
    begin
      TblTemporaria.Append;
      for i := 0 to SQLMovimentos.FieldCount-1 do
        if SQLMovimentos.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLMovimentos.Fields[i].FieldName).AsVariant := SQLMovimentos.Fields[i].AsVariant;

      TblTemporariaPRODN3VLRCUSTO.AsString := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRCUSTO', TblTemporariaPRODICOD.AsString);
      TblTemporariaVLRTOTALCUSTO.Value     := TblTemporariaPRODN3VLRCUSTO.Value * TblTemporariaMVDIN3QTD.Value;
      TblTemporaria.Post;
      SQLMovimentos.Next;
    end;
  TblTemporaria.Close;

  if not ckMostraVenda.Checked then
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Movimentos Diversos Produtos.rpt'
  else
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Movimentos Diversos Produtos Apenas Venda.rpt';

  if ckMostraCusto.Checked then
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Movimentos Diversos Produtos Custo.rpt';


  Report.ReportTitle       := 'Relatorio de Movimentos Diversos' ;
  Report.WindowStyle.Title := 'Relatorio de Movimentos Diversos' ;

  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Cliente' ;
  if ComboCliente.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboCliente.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\

  Report.Execute ;

end;

procedure TFormRelatorioMotvoDiversos.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCliente.Open;
  SQLOperacaoEstoque.Open;
end;

end.
