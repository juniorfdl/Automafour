unit RelatorioMovimentacaoTesouraria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32,
  RXCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioMovimentacaoTesouraria = class(TFormRelatorioTEMPLATE)
    SQLMovtoTesouraria: TRxQuery;
    Report: TCrpe;
    SQLSaldos: TRxQuery;
    TblSaldoTesouraria: TTable;
    SQLMovtoTesourariaTESOA13ID: TStringField;
    SQLMovtoTesourariaEMPRICOD: TIntegerField;
    SQLMovtoTesourariaTESOICOD: TIntegerField;
    SQLMovtoTesourariaTESODMOV: TDateTimeField;
    SQLMovtoTesourariaTESON2VLRDEBITO: TFloatField;
    SQLMovtoTesourariaTESON2VLRCREDITO: TFloatField;
    SQLMovtoTesourariaTESOA255HIST: TStringField;
    SQLMovtoTesourariaNUMEICOD: TIntegerField;
    SQLMovtoTesourariaNUMEA30DESCR: TStringField;
    SQLSaldosNUMEICOD: TIntegerField;
    SQLSaldosNUMEA30DESCR: TStringField;
    SQLSaldosCREDITOS: TFloatField;
    SQLSaldosDEBITOS: TFloatField;
    SQLSaldosSALDO: TFloatField;
    GroupBox4: TGroupBox;
    ListTerminal: TRxCheckListBox;
    SQLMovimentoCaixa: TRxQuery;
    SQLMovimentoCaixaTESOA13ID: TStringField;
    SQLMovimentoCaixaEMPRICOD: TIntegerField;
    SQLMovimentoCaixaTERMICOD: TIntegerField;
    SQLMovimentoCaixaTESOICOD: TIntegerField;
    SQLMovimentoCaixaTESODMOV: TDateTimeField;
    SQLMovimentoCaixaTESON2VLRDEBITO: TFloatField;
    SQLMovimentoCaixaTESON2VLRCREDITO: TFloatField;
    SQLMovimentoCaixaTESOA255HIST: TStringField;
    SQLMovimentoCaixaNUMEICOD: TIntegerField;
    SQLMovimentoCaixaTESOA20DOCORIGEM: TStringField;
    SQLMovimentoCaixaNUMEA30DESCR: TStringField;
    SQLMovimentoCaixaOPTEA60DESCR: TStringField;
    SQLMovtoTesourariaOPTEA60DESCR: TStringField;
    SQLMovtoTesourariaTERMICOD: TIntegerField;
    SQLMovtoTesourariaTESOA20DOCORIGEM: TStringField;
    SQLMovimentoCaixaTERMA60DESCR: TStringField;
    SQLMovtoTesourariaTERMA60DESCR: TStringField;
    CheckTerminal: TCheckBox;
    ChkMovTerminal: TCheckBox;
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    GroupBox2: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    CKTotalizaPorNumerario: TCheckBox;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    DSSQLPlanoContas: TDataSource;
    GroupPlanoContas: TGroupBox;
    ComboPlanoConta: TRxDBLookupCombo;
    SQLMovtoTesourariaPLCTA15COD: TStringField;
    TblSaldoTesourariaNUMEICOD: TIntegerField;
    TblSaldoTesourariaNUMEA30DESCR: TStringField;
    TblSaldoTesourariaCREDITOS: TBCDField;
    TblSaldoTesourariaDEBITOS: TBCDField;
    TblSaldoTesourariaSALDO: TFloatField;
    TblTemporariaTESOA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaTESOICOD: TIntegerField;
    TblTemporariaTESODMOV: TDateTimeField;
    TblTemporariaTESON2VLRDEBITO: TBCDField;
    TblTemporariaTESON2VLRCREDITO: TBCDField;
    TblTemporariaTESOA255HIST: TStringField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaTESOA20DOCORIGEM: TStringField;
    TblTemporariaNUMEA30DESCR: TStringField;
    TblTemporariaOPTEA60DESCR: TStringField;
    TblTemporariaTERMA60DESCR: TStringField;
    TblTemporariaPLCTA15COD: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMovimentacaoTesouraria: TFormRelatorioMovimentacaoTesouraria;

implementation

uses DataModulo, UnitLibrary, VarSys;

{$R *.dfm}

procedure TFormRelatorioMovimentacaoTesouraria.ExecutarBtnClick(
  Sender: TObject);
Var I : Integer;
    TerminaisSel : string;
begin
  inherited;
  RefazTabelaTemp(TblSaldoTesouraria, False);

  SQLMovtoTesouraria.Close ;
  SQLMovtoTesouraria.MacrobyName('MEmpresa').Value  := '0=0' ;
  SQLMovtoTesouraria.MacrobyName('MData').Value     := '0=0' ;
  SQLMovtoTesouraria.MacrobyName('MTerminal').Value := '0=0' ;
  //SETAR MACROS CONTAS A RECEBER
  SQLMovtoTesouraria.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'TESOURARIA', '') ;
  SQLMovtoTesouraria.MacrobyName('MData').Value     := 'TESODMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                       'TESODMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if ChkMovTerminal.Checked then
     SQLMovtoTesouraria.MacrobyName('MTerminal').Value    := ' TERMICOD in ' + MontaSQLdeListaTerminal(ListTerminal)
  else
     SQLMovtoTesouraria.MacrobyName('MTerminal').Value    := '0=0';

  if ComboNumerario.Value <> '' then
     SQLMovtoTesouraria.MacrobyName('MNumerario').Value    := ' NUMEICOD = ' + ComboNumerario.Value
  else
     SQLMovtoTesouraria.MacrobyName('MNumerario').Value    := '0=0';

  if ComboPlanoConta.Value <> '' then
    SQLMovtoTesouraria.MacrobyName('MConta').Value := 'PLCTA15COD = "'+ ComboPlanoConta.Value + '"'
  else
    SQLMovtoTesouraria.MacrobyName('MConta').Value := '0=0';

  SQLMovtoTesouraria.Open;

  CopyQueryTable(SQLMovtoTesouraria, TblTemporaria) ;

  if ChkMovTerminal.Checked then
     begin
        SQLMovimentoCaixa.Close ;
        SQLMovimentoCaixa.MacrobyName('MEmpresa').Value  := '0=0' ;
        SQLMovimentoCaixa.MacrobyName('MData').Value     := '0=0' ;
        SQLMovimentoCaixa.MacrobyName('MTerminal').Value := '0=0' ;
        //SETAR MACROS CONTAS A RECEBER
        SQLMovimentoCaixa.MacrobyName('MEmpresa').Value  := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'MOVIMENTOCAIXA', '') ;
        SQLMovimentoCaixa.MacrobyName('MData').Value     := 'MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                            'MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
        if MontaSQLdeListaTerminal(ListTerminal) <> '()' then
           SQLMovimentoCaixa.MacrobyName('MTerminal').Value    := ' TERMICOD in ' + MontaSQLdeListaTerminal(ListTerminal)
        else
           SQLMovimentoCaixa.MacrobyName('MTerminal').Value    := ' TERMICOD = ' + IntToStr(TerminalCorrente);

        SQLMovimentoCaixa.Open;

        SQLMovimentoCaixa.First;
        while not SQLMovimentoCaixa.Eof do
           begin
              if not TblTemporaria.Active then TblTemporaria.Active := True;
              TblTemporaria.Append;
              for I := 0 to TblTemporaria.FieldCount -1 do
                  TblTemporaria.Fields.Fields[I].Value := SQLMovimentoCaixa.FieldByName(TblTemporaria.Fields.Fields[I].FieldName).Value;
              TblTemporaria.Post;
              SQLMovimentoCaixa.Next;
           end;
     end;
  if TblTemporaria.IsEmpty then
     begin
        Informa('A Pesquisa não retornou resultados. Verifique os filtros e tente novamente.');
        Abort;
     end;
{  SQLSaldos.Open ;
  BatchExec(SQLSaldos, TblSaldoTesouraria) ;}

  if not CKTotalizaPorNumerario.Checked then
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Movimentacao Caixa Tesouraria.rpt'
  else
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Movimentacao Caixa Tesouraria Total por Numerario.rpt';
  Report.ReportTitle       := 'Relatório de Movimentaçao da Tesouraria' ;
  Report.WindowStyle.Title := 'Relatório de Movimentaçao da Tesouraria' ;
 //SETAR FORMULAS
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  if CheckTerminal.Checked then
     begin
        Report.Formulas.Name         := 'Terminal' ;
        Report.Formulas.Formula.Text := '"' + TerminaisSelecionados(ListTerminal) + '"' ;
     end
  else
     begin
        Report.Formulas.Name         := 'Terminal' ;
        Report.Formulas.Formula.Text := '"' + TerminalAtualNome + '"' ;
     end;

  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  Report.Execute ;
end;

procedure TFormRelatorioMovimentacaoTesouraria.FormCreate(Sender: TObject);
begin
  inherited;
  if not UsuarioMaster then
    ListaTerminal(ListTerminal, EmpresaPadrao)
  else
    ListaTerminal(ListTerminal,'');
  SQLNumerario.Open;
  SQLPlanoContas.Open;
end;

end.
