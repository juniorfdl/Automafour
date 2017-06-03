unit RelatorioVendasConsignadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioVendasConsignadas = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    Tipo1: TRadioButton;
    Tipo2: TRadioButton;
    Tipo3: TRadioButton;
    SQLVendas: TRxQuery;
    SQLVendasCUPOA13ID: TStringField;
    SQLVendasCLIEA13ID: TStringField;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasVENDICOD: TIntegerField;
    SQLVendasCUPODEMIS: TDateTimeField;
    SQLVendasCUPOCTIPOPADRAO: TStringField;
    SQLVendasCUPOCCONSIG: TStringField;
    SQLVendasCTRCN2VLR: TFloatField;
    SQLVendasCTRCN2TOTREC: TFloatField;
    SQLVendasSALDO: TFloatField;
    SQLVendasCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaCUPOCTIPOPADRAO: TStringField;
    TblTemporariaCUPOCCONSIG: TStringField;
    TblTemporariaCTRCN2VLR: TFloatField;
    TblTemporariaCTRCN2TOTREC: TFloatField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendasConsignadas: TFormRelatorioVendasConsignadas;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioVendasConsignadas.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLVendas.Close ;
  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '');
  SQLVendas.MacrobyName('MData').Value    := 'CP.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                             'CP.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if Tipo1.Checked then
    begin
      SQLVendas.MacrobyName('MTipo').Value := 'CR.CTRCN2VLR > CR.CTRCN2TOTREC' ;
      Report.ReportTitle       := 'Relatório de Vendas Consignadas Pendentes' ;
      Report.WindowStyle.Title := 'Relatório de Vendas Consignadas Pendentes' ;
    end ;

  if Tipo2.Checked then
    begin
      SQLVendas.MacrobyName('MTipo').Value := 'CR.CTRCN2VLR <= CR.CTRCN2TOTREC' ;
      Report.ReportTitle       := 'Relatório de Vendas Consignadas Encerradas' ;
      Report.WindowStyle.Title := 'Relatório de Vendas Consignadas Encerradas' ;
    end ;

  if Tipo3.Checked then
    begin
      SQLVendas.MacrobyName('MTipo').Value := '0=0' ;
      Report.ReportTitle       := 'Relatório de Vendas Consignadas' ;
      Report.WindowStyle.Title := 'Relatório de Vendas Consignadas' ;
    end ;


  SQLVendas.Open ;

  BatchExec(SQLVendas, TblTemporaria) ;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Consignadas.rpt' ;

  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\

  Report.Execute ;
end;

end.
