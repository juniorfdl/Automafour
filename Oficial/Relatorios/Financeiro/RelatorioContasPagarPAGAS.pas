unit RelatorioContasPagarPAGAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasPagarPAGAS = class(TFormRelatorioTEMPLATE)
    SQLPagamento: TRxQuery;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    GroupBox2: TGroupBox;
    ComboFornecedor: TRxDBLookupCombo;
    SQLPagamentoCTPGA13ID: TStringField;
    SQLPagamentoPAGAN3VLRJURO: TFloatField;
    SQLPagamentoPAGAN3VLRMULTA: TFloatField;
    SQLPagamentoPAGAN3VLRDESC: TFloatField;
    SQLPagamentoPAGADPAGTO: TDateTimeField;
    SQLPagamentoEMPRICOD: TIntegerField;
    SQLPagamentoCTPGDVENC: TDateTimeField;
    SQLPagamentoCTPGA20DOCORIG: TStringField;
    SQLPagamentoCTPGINROPARC: TIntegerField;
    SQLPagamentoCTPGN3VLR: TFloatField;
    SQLPagamentoPORTICOD: TIntegerField;
    SQLPagamentoFORNA60NOMEFANT: TStringField;
    SQLPagamentoTPDCA60DESCR: TStringField;
    SQLPagamentoPORTA60DESCR: TStringField;
    TblTemporariaCTPGA13ID: TStringField;
    TblTemporariaPAGAN3VLRJURO: TFloatField;
    TblTemporariaPAGAN3VLRMULTA: TFloatField;
    TblTemporariaPAGAN3VLRDESC: TFloatField;
    TblTemporariaPAGADPAGTO: TDateTimeField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTPGDVENC: TDateTimeField;
    TblTemporariaCTPGA20DOCORIG: TStringField;
    TblTemporariaCTPGINROPARC: TIntegerField;
    TblTemporariaCTPGN3VLR: TFloatField;
    TblTemporariaPORTICOD: TIntegerField;
    TblTemporariaFORNA60NOMEFANT: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    Report: TCrpe;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    GroupBox3: TGroupBox;
    ComboTipoDoc: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    SQLPagamentoPAGAN3VLRPAGTO: TFloatField;
    TblTemporariaPAGAN3VLRPAGTO: TFloatField;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    DSSQLPlanoContas: TDataSource;
    GroupBox5: TGroupBox;
    ComboConta: TRxDBLookupCombo;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    DeVenc: TDateEdit;
    AteVenc: TDateEdit;
    SQLPagamentoPLCTA60DESCR: TStringField;
    TblTemporariaPLCTA60DESCR: TStringField;
    ckPlanoContas: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasPagarPAGAS: TFormRelatorioContasPagarPAGAS;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioContasPagarPAGAS.FormCreate(Sender: TObject);
begin
  inherited;
  SQLFornecedor.Open ;
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLPlanoContas.Open;
end;

procedure TFormRelatorioContasPagarPAGAS.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLPagamento.Close ;
  SQLPagamento.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASPAGAR', '') ;
  if (De.Date = 0) and (Ate.Date = 0) then
    SQLPagamento.MacrobyName('MData').Value   := '0=0'
  else
    SQLPagamento.MacrobyName('MData').Value    := 'PAGAMENTO.PAGADPAGTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                  'PAGAMENTO.PAGADPAGTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if (DeVenc.Date = 0) and (AteVenc.Date = 0) then
    SQLPagamento.MacrobyName('MDataVenc').Value   := '0=0'
  else
    SQLPagamento.MacrobyName('MDataVenc').Value := 'CONTASPAGAR.CTPGDVENC >= "' + FormatDateTime('mm/dd/yyyy', DeVenc.Date) + '" and ' +
                                                   'CONTASPAGAR.CTPGDVENC <= "' + FormatDateTime('mm/dd/yyyy', AteVenc.Date) + '"' ;

  if ComboFornecedor.Text <> '' then
    SQLPagamento.MacrobyName('MFornecedor').Value := 'CONTASPAGAR.FORNICOD = ' + ComboFornecedor.Value
  else
    SQLPagamento.MacrobyName('MFornecedor').Value := '0=0';
  if ComboTipoDoc.Value <> '' then
    SQLPagamento.MacrobyName('MTipoDoc').Value  := 'CONTASPAGAR.TPDCICOD = ' + ComboTipoDoc.Value
  else
    SQLPagamento.MacrobyName('MTipoDoc').Value  := '0=0';

  if ComboPortador.Value <> '' then
    SQLPagamento.MacrobyName('MPortador').Value := 'CONTASPAGAR.PORTICOD = ' + ComboPortador.Value
  else
    SQLPagamento.MacrobyName('MPortador').Value := '0=0';

  if ComboConta.Value <> '' then
    SQLPagamento.MacrobyName('MConta').Value := 'CONTASPAGAR.PLCTA15COD = "'+ ComboConta.Value + '"'
  else
    SQLPagamento.MacrobyName('MConta').Value := '0=0';

  SQLPagamento.Open ;

  BatchExec(SQLPagamento, TblTemporaria) ;

  if not ckPlanoContas.Checked then
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas PAGAS.rpt'
  else
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas PAGAS por Conta.rpt';


  Report.ReportTitle       := 'Relatório de Contas PAGAS' ;
  Report.WindowStyle.Title := 'Relatório de Contas PAGAS' ;
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
  Report.Execute ;
end;

procedure TFormRelatorioContasPagarPAGAS.ComboFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
