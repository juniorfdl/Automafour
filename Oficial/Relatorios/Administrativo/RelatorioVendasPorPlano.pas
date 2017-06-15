unit RelatorioVendasPorPlano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, Placemnt, Db, DBTables, ComCtrls, RxLookup,
  StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, jpeg, OleCtrls, ImgList, RxQuery,
  UCrpe32, Grids, DBGrids, VarSys,  RXCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioVendasPorPlano = class(TFormRelatorioTEMPLATE)
    SQLVendas: TRxQuery;
    Report: TCrpe;
    SQLVendedor: TQuery;
    DSSQLVendedor: TDataSource;
    GroupBox2: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    SQLNotas: TRxQuery;
    SQLVendasCLIEA13ID: TStringField;
    SQLVendasCUPOCSTATUS: TStringField;
    SQLVendasCUPODEMIS: TDateTimeField;
    SQLVendasTOTAL: TFloatField;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasPLRCICOD: TIntegerField;
    SQLVendasTERMICOD: TIntegerField;
    SQLVendasVENDICOD: TIntegerField;
    SQLVendasCLIEA60RAZAOSOC: TStringField;
    SQLVendasPLRCA60DESCR: TStringField;
    SQLNotasCLIEA13ID: TStringField;
    SQLNotasCUPOCSTATUS: TStringField;
    SQLNotasCUPODEMIS: TDateTimeField;
    SQLNotasTOTAL: TFloatField;
    SQLNotasEMPRICOD: TIntegerField;
    SQLNotasPLRCICOD: TIntegerField;
    SQLNotasTERMICOD: TIntegerField;
    SQLNotasVENDICOD: TIntegerField;
    SQLNotasCLIEA60RAZAOSOC: TStringField;
    SQLNotasPLRCA60DESCR: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCUPOCSTATUS: TStringField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaPLRCICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaPLRCA60DESCR: TStringField;
    GroupBox3: TGroupBox;
    ComboPlano: TRxDBLookupCombo;
    SQLPlano: TRxQuery;
    DSSQLPlano: TDataSource;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    TblTemporariaDOC: TStringField;
    SQLVendasCUPON2ACRESC: TFloatField;
    SQLVendasCUPON2DESC: TFloatField;
    SQLVendasCUPON2TOTITENS: TFloatField;
    SQLNotasCUPON2ACRESC: TFloatField;
    SQLNotasCUPON2DESC: TFloatField;
    SQLNotasCUPON2TOTITENS: TFloatField;
    TblTemporariaCUPON2ACRESC: TFloatField;
    TblTemporariaCUPON2DESC: TFloatField;
    TblTemporariaCUPON2TOTITENS: TFloatField;
    SQLVendasDOC: TStringField;
    SQLNotasDOC: TStringField;
    DataSource1: TDataSource;
    TblTemporariaCUPODEMIS: TDateTimeField;
    GroupBox4: TGroupBox;
    ListTerminal: TRxCheckListBox;
    CheckTerminal: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboEmpresaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendasPorPlano: TFormRelatorioVendasPorPlano;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormRelatorioVendasPorPlano.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLVendas.Close ;
  if CheckTerminal.Checked then
    SQLVendas.MacrobyName('MTerminal').Value   := 'CUPOM.TERMICOD IN'      + MontaSQLdeListaTerminal(ListTerminal)
  else
    SQLVendas.MacrobyName('MTerminal').Value   := '0=0';

  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;
  SQLNotas.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '') ;
  SQLVendas.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                             'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;

  SQLNotas.MacrobyName('MData').Value     := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                             'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;

  if ComboVendedor.Text <> '' then
    begin
      SQLVendas.MacrobyName('MVendedor').Value := 'CUPOM.VENDICOD = ' + ComboVendedor.Value;
      SQLNotas.MacrobyName('MVendedor').Value  := 'NOTAFISCAL.VENDICOD = ' + ComboVendedor.Value;
    end
  else
    begin
      SQLVendas.MacrobyName('MVendedor').Value := '0=0' ;
      SQLNotas.MacrobyName('MVendedor').Value  := '0=0' ;
    end;
  if ComboPlano.Value <> '' then
    begin
      SQLVendas.MacrobyName('MPlano').Value := 'CUPOM.PLRCICOD = ' + ComboPlano.Value;
      SQLNotas.MacrobyName('MPlano').Value  := 'NOTAFISCAL.PLRCICOD = ' + ComboPlano.Value;
    end
  else
    begin
      SQLVendas.MacrobyName('MPlano').Value := '0=0';
      SQLNotas.MacrobyName('MPlano').Value  := '0=0';
    end;

  SQLVendas.Open ;
  SQLNotas.Open;


  BatchExec(SQLVendas, TblTemporaria);
  BatchExec(SQLNotas, TblTemporaria);


  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Por Planos.rpt' ;
  Report.ReportTitle       := 'Relatório de Vendas Por Plano' ;
  Report.WindowStyle.Title := 'Relatório de Vendas Por Plano' ;
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
  Report.Formulas.Name := 'Vendedor' ;
  if ComboVendedor.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboVendedor.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  Report.Execute ;
  
end;

procedure TFormRelatorioVendasPorPlano.FormCreate(Sender: TObject);
begin
  inherited;
  if not UsuarioMaster then
    ListaTerminal(ListTerminal,EmpresaPadrao)
  else
    ListaTerminal(ListTerminal,'');
  SQLVendedor.Open;
  SQLPlano.Open;
end;

procedure TFormRelatorioVendasPorPlano.ComboEmpresaChange(Sender: TObject);
begin
  inherited;
  if ComboEmpresa.Text <> 'Todas' then
    ListaTerminal(ListTerminal,ComboEmpresa.Value)
  else
    ListaTerminal(ListTerminal,'');

end;

end.
