unit RelatorioTotalNumerarioCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioTotalNumerarioCaixa = class(TFormRelatorioTEMPLATE)
    SQLMovimentoCaixa: TRxQuery;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    SQLTerminal: TQuery;
    DSSQLTerminal: TDataSource;
    GroupBox2: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    Report: TCrpe;
    SQLMovimentoCaixaEMPRICOD: TIntegerField;
    SQLMovimentoCaixaTERMICOD: TIntegerField;
    SQLMovimentoCaixaNUMEICOD: TIntegerField;
    SQLMovimentoCaixaMVCXDMOV: TDateTimeField;
    SQLMovimentoCaixaOPCXICOD: TIntegerField;
    SQLMovimentoCaixaUSUAICOD: TIntegerField;
    SQLMovimentoCaixaMVCXA15DOCORIG: TStringField;
    SQLMovimentoCaixaDEBITO: TFloatField;
    SQLMovimentoCaixaMVCXA255HIST: TStringField;
    SQLMovimentoCaixaOPCXA60DESCR: TStringField;
    SQLMovimentoCaixaNUMEA30DESCR: TStringField;
    SQLMovimentoCaixaUSUAA60LOGIN: TStringField;
    RadioTipo: TRadioGroup;
    SQLMovimentoCaixaCREDITO: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaMVCXDMOV: TDateTimeField;
    TblTemporariaOPCXICOD: TIntegerField;
    TblTemporariaUSUAICOD: TIntegerField;
    TblTemporariaMVCXA15DOCORIG: TStringField;
    TblTemporariaDEBITO: TBCDField;
    TblTemporariaCREDITO: TBCDField;
    TblTemporariaMVCXA255HIST: TStringField;
    TblTemporariaOPCXA60DESCR: TStringField;
    TblTemporariaNUMEA30DESCR: TStringField;
    TblTemporariaUSUAA60LOGIN: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioTotalNumerarioCaixa: TFormRelatorioTotalNumerarioCaixa;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioTotalNumerarioCaixa.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLMovimentoCaixa.Close;
  SQLMovimentoCaixa.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'MOVIMENTOCAIXA', '');
  SQLMovimentoCaixa.MacrobyName('MData').Value    := 'MOVIMENTOCAIXA.MVCXDMOV >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                     'MOVIMENTOCAIXA.MVCXDMOV <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;

  if ComboTerminal.Value <> '' then
    SQLMovimentoCaixa.MacrobyName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value
  else
    SQLMovimentoCaixa.MacrobyName('MTerminal').Value := '0=0' ;

  if ComboNumerario.Value <> '' then
    SQLMovimentoCaixa.MacrobyName('MNumerario').Value := 'MOVIMENTOCAIXA.NUMEICOD = ' + ComboNumerario.Value
  else
    SQLMovimentoCaixa.MacrobyName('MNumerario').Value := '0=0' ;

  SQLMovimentoCaixa.Open;
  CopyQueryTable(SQLMovimentoCaixa,TblTemporaria);
//BatchExec(SQLMovimentoCaixa, TblTemporaria);
  //----------------------------------------------------------------------------------------------------------
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Totais por Numerario do Caixa.rpt';
  Report.ReportTitle       := 'Relatório Totais por Numerário do Caixa';
  Report.WindowStyle.Title := 'Relatório Totais por Numerário do Caixa';
  //SETAR TIPO DO RELATORIO
  Report.SectionFormat.Retrieve ;
  Case RadioTipo.ItemIndex of
    0 : begin
          Report.SectionFormat.Section  := 'GH2' ;
          Report.SectionFormat.Suppress := cFalse ;
          Report.SectionFormat.Section  := 'D' ;
          Report.SectionFormat.Suppress := cFalse ;
        end;
    1 : begin
          Report.SectionFormat.Section  := 'GH2' ;
          Report.SectionFormat.Suppress := cTrue ;
          Report.SectionFormat.Section  := 'D' ;
          Report.SectionFormat.Suppress := cTrue ;
        end
  end;
  Report.SectionFormat.Send ;
  //---------------------------------------------------\\
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
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
  Report.Formulas.Name         := 'Terminal' ;
  if ComboTerminal.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboTerminal.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\
  Report.Execute ;

end;

procedure TFormRelatorioTotalNumerarioCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLTerminal.Active then
    SQLTerminal.Open;
  if not SQLNumerario.Active then
    SQLNumerario.Open;

  if dm.SQLUsuario.FieldByName('USUACPERMVMOVCX').Value <> 'S' then
    begin
      de.Enabled  := False;
      ate.Enabled := False;
    end;
end;

end.
