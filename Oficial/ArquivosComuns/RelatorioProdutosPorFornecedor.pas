unit RelatorioProdutosPorFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, DBTables, Placemnt, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioProdutosPorFornecedor = class(TFormRelatorioTEMPLATE)
    SQLFornecedor: TRxQuery;
    GroupBox2: TGroupBox;
    SQLProduto: TRxQuery;
    ComboFornecedor: TRxDBLookupCombo;
    DSSQLFornecedor: TDataSource;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    Report: TCrpe;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoFORNICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODN3VLRVENDA: TFloatField;
    TblTemporariaPRODN3VLRCOMPRA: TFloatField;
    TblTemporariaPRODN3VLRCUSTO: TFloatField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaFORNICOD: TIntegerField;
    SQLProdutoFORNA60RAZAOSOC: TStringField;
    TblTemporariaFORNA60RAZAOSOC: TStringField;
    RadioOrdem: TRadioGroup;
    CKMostrarSemFornec: TCheckBox;
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutosPorFornecedor: TFormRelatorioProdutosPorFornecedor;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioProdutosPorFornecedor.ComboFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormRelatorioProdutosPorFornecedor.FormActivate(Sender: TObject);
begin
  inherited;
  if not SQLFornecedor.Active then SQLFornecedor.Open;
end;

procedure TFormRelatorioProdutosPorFornecedor.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLProduto.Close;

  if ComboFornecedor.Text <> '' then
    SQLProduto.MacroByName('MFiltro').Value := 'PRODUTOFORNECEDOR.FORNICOD = ' + ComboFornecedor.Value
  else
    SQLProduto.MacroByName('MFiltro').Value := '0=0';


  if CKMostrarSemFornec.Checked then
    begin
      SQLProduto.Close;
      SQLProduto.sql.Clear;
      SQLProduto.sql.Add('Select PRODUTO.PRODA60DESCR, PRODUTO.PRODN3VLRVENDA, PRODUTO.PRODN3VLRCOMPRA, PRODUTO.PRODN3VLRCUSTO, PRODUTO.PRODICOD, PRODUTOFORNECEDOR.FORNICOD, PRODUTOFORNECEDOR.FORNA60RAZAOSOC');
      SQLProduto.sql.Add('From ');

      SQLProduto.MacroByName('MFiltro2').Value := 'produto.prodicod not in (select prodicod from produtofornecedor)';

    end;

  case RadioOrdem.ItemIndex of
    0 : begin
          SQLProduto.MacroByName('CampoOrdem').Value := 'PRODUTO.PRODICOD';
        end;
    1 : begin
          SQLProduto.MacroByName('CampoOrdem').Value := 'PRODUTO.PRODA60DESCR';
        end;
  end;

  SQLProduto.Open;
  BatchExec(SQLProduto, TblTemporaria);

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Por Fornecedor.rpt' ;
  Report.ReportTitle       := 'Relatório de Produtos Por Fornecedor' ;
  Report.WindowStyle.Title := 'Relatório de Produtos Por Fornecedor' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Fornecedor' ;
  Report.Formulas.Formula.Text := '"' + ComboFornecedor.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send ;
  Report.Execute;  
end;

end.
