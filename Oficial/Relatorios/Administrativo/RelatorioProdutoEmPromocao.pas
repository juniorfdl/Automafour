unit RelatorioProdutoEmPromocao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioProdutoEmPromocao = class(TFormRelatorioTEMPLATE)
    SQLProduto: TRxQuery;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoGRUPA60DESCR: TStringField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoSUBGA60DESCR: TStringField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutoPSLDN3QTDE: TFloatField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaGRUPA60DESCR: TStringField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaSUBGA60DESCR: TStringField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODA60CODBAR: TStringField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaPRODN3VLRVENDA: TFloatField;
    TblTemporariaPRODDINIPROMO: TDateTimeField;
    TblTemporariaPRODDFIMPROMO: TDateTimeField;
    TblTemporariaPRODN3VLRVENDAPROM: TFloatField;
    TblTemporariaPSLDN3QTDE: TFloatField;
    DSSQLSubGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    GroupBox3: TGroupBox;
    ComboGrupo: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboSubgrupo: TRxDBLookupCombo;
    Report: TCrpe;
    SQLProdutoEMPRA60RAZAOSOC: TStringField;
    TblTemporariaEMPRA60RAZAOSOC: TStringField;
    GroupBoxPromocao: TGroupBox;
    Label5: TLabel;
    DtaInicio: TDateEdit;
    DtaFim: TDateEdit;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutoEmPromocao: TFormRelatorioProdutoEmPromocao;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioProdutoEmPromocao.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
end;

procedure TFormRelatorioProdutoEmPromocao.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLProduto.Close;

  SQLProduto.MacroByName('MEmpresaSaldo').AsString := SQLDeLista(ComboEmpresa,ListaEmpresas,'','PRODUTOSALDO','EMPRICOD');

  if (DtaInicio.Date > 0) and (DtaFim.Date > 0) then
    SQLProduto.MacroByName('MData').AsString := 'PRODUTO.PRODDINIPROMO >= ''' + FormatDateTime('mm/dd/yyyy',DtaInicio.Date)  + ''' AND ' +
                                                'PRODUTO.PRODDFIMPROMO <= ''' + FormatDateTime('mm/dd/yyyy',DtaFim.Date)   + '''';
  if (DtaInicio.Date > 0) and (DtaFim.Date = 0) then
    SQLProduto.MacroByName('MData').AsString := 'PRODUTO.PRODDINIPROMO > ''' + FormatDateTime('mm/dd/yyyy',DtaInicio.Date)  + '''';

  if ComboGrupo.Value <> '' then
    SQLProduto.MacroByName('MGrupo').AsString := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLProduto.MacroByName('MGrupo').AsString := '0=0';

  if ComboSubgrupo.Value <> '' then
    SQLProduto.MacroByName('MSubGrupo').AsString := 'PRODUTO.GRUPICOD = ' + ComboSubgrupo.Value
  else
    SQLProduto.MacroByName('MSubGrupo').AsString := '0=0';

  SQLProduto.Open;
  if not SQLProduto.IsEmpty then
    begin
      BatchExec(SQLProduto,TblTemporaria);
      TblTemporaria.Close;
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Produtos em Promocao.rpt';
      Report.ReportTitle       := 'Relatório de Produtos em Promoção';
      Report.WindowStyle.Title := 'Relatório de Produtos em Promoção';
      Report.Formulas.Retrieve;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Empresa';
      Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao';
      Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'PeriodoEmissao' ;
      Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', DtaInicio.Date) + ' até ' +
                                            FormatDateTime('dd/mm/yyyy', DtaFim.Date)    + '''';
      //--------------------------------------------------------------------------\\
{      Report.Formulas.Name         := 'Marca';
      if ComboMarca.Value <> '' then
        Report.Formulas.Formula.Text := '''' + ComboMarca.Text + ''''
      else
        Report.Formulas.Formula.Text := '''Todas''';}
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Grupo';
      if ComboGrupo.Value <> '' then
        Report.Formulas.Formula.Text := '''' + ComboGrupo.Text + ''''
      else
        Report.Formulas.Formula.Text := '''Todos''';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'SubGrupo';
      if ComboSubgrupo.Value <> '' then
        Report.Formulas.Formula.Text := '''' + ComboSubGrupo.Text + ''''
      else
        Report.Formulas.Formula.Text := '''Todos''';
      //--------------------------------------------------------------------------\\
      Report.Formulas.Send;
      // AjustaCaminhoCrystal;
      Report.Execute;
    end
  else
    Informa('Nenhum registro foi encontrado!');


end;

end.
