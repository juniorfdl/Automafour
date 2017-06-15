unit RelatorioExtratoMovimentoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, DBCtrls,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioExtratoMovimentoBanco = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    SQLCC: TRxQuery;
    SQLCCCTCRICOD: TIntegerField;
    SQLCCBANCA5COD: TStringField;
    SQLCCCTCRA15AGENCIA: TStringField;
    SQLCCCTCRA15NUMERO: TStringField;
    SQLCCCTCRA60TITULAR: TStringField;
    SQLCCCTCRDABERTURA: TDateTimeField;
    SQLCCCTCRN2LIMITE: TFloatField;
    SQLCCCTCRN2SALDOATUAL: TFloatField;
    DSSQLCC: TDataSource;
    DBEdit33: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    SQLMovBco: TRxQuery;
    SQLMovBcoMVBCA13ID: TStringField;
    SQLMovBcoEMPRICOD: TIntegerField;
    SQLMovBcoMVBCICOD: TIntegerField;
    SQLMovBcoMVBCDLANC: TDateTimeField;
    SQLMovBcoBANCA5COD: TStringField;
    SQLMovBcoCTCRICOD: TIntegerField;
    SQLMovBcoMVBCA6NROCHQ: TStringField;
    SQLMovBcoVALORLANC: TFloatField;
    SQLMovBcoMVBCDCHQBOMPARA: TDateTimeField;
    SQLMovBcoMVBCDCHQBAIXA: TDateTimeField;
    SQLMovBcoMVBCA254HIST: TStringField;
    SQLMovBcoMVBCA60FAVORECIDO: TStringField;
    SQLMovBcoOPBCICOD: TIntegerField;
    SQLMovBcoMVBCCALTSALD: TStringField;
    TblTemporariaMVBCA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaMVBCICOD: TIntegerField;
    TblTemporariaMVBCDLANC: TDateTimeField;
    TblTemporariaBANCA5COD: TStringField;
    TblTemporariaCTCRICOD: TIntegerField;
    TblTemporariaMVBCA6NROCHQ: TStringField;
    TblTemporariaVALORLANC: TFloatField;
    TblTemporariaMVBCDCHQBOMPARA: TDateTimeField;
    TblTemporariaMVBCDCHQBAIXA: TDateTimeField;
    TblTemporariaMVBCA254HIST: TStringField;
    TblTemporariaMVBCA60FAVORECIDO: TStringField;
    TblTemporariaOPBCICOD: TIntegerField;
    TblTemporariaMVBCCALTSALD: TStringField;
    Report: TCrpe;
    SQLMovBcoOPBCA60DESCR: TStringField;
    TblTemporariaOPBCA60DESCR: TStringField;
    GroupBox5: TGroupBox;
    ComboOpBanco: TRxDBLookupCombo;
    DSOpBanco: TDataSource;
    SQLOPBanco: TQuery;
    SQLOPBancoOPBCICOD: TIntegerField;
    SQLOPBancoOPBCA60DESCR: TStringField;
    ComboConta: TRxDBLookupCombo;
    CkMostrarApenasSaldo: TCheckBox;
    DSSQLPlanoContas: TDataSource;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    GroupPlanoContas: TGroupBox;
    ComboPlanoConta: TRxDBLookupCombo;
    SQLMovBcoPLCTA15COD: TStringField;
    TblTemporariaPLCTA15COD: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioExtratoMovimentoBanco: TFormRelatorioExtratoMovimentoBanco;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioExtratoMovimentoBanco.FormCreate(Sender: TObject);
begin
  inherited;
  SQLCC.Open;
  SQLOPBanco.Open;
  SQLPlanoContas.Open;
end;

procedure TFormRelatorioExtratoMovimentoBanco.ExecutarBtnClick(
  Sender: TObject);
var
  i : integer ;
  DataBaseSaldoAnterior : TDate;
  vSaldo : Double;
begin
  inherited;
  DataBaseSaldoAnterior := De.Date - 1;
  if not CkMostrarApenasSaldo.Checked then
    begin
      SQLMovBco.Close ;
      if ComboConta.Value <> '' then
        SQLMovBco.MacrobyName('MConta').Value := 'MV.CTCRICOD = ' + ComboConta.Value
      else
        SQLMovBco.MacrobyName('MConta').Value := '0=0';

      SQLMovBco.MacrobyName('MData').Value  := 'MV.MVBCDLANC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                               'MV.MVBCDLANC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

      if ComboOpBanco.Value <> '' then
        SQLMovBco.MacrobyName('MOpBanco').Value := 'MV.OPBCICOD = ' + IntToStr(ComboOpBanco.KeyValue)
      else
        SQLMovBco.MacrobyName('MOpBanco').Value := '0=0';

      if ComboPlanoConta.Value <> '' then
        SQLMovBco.MacrobyName('MPlanoConta').Value := 'MV.PLCTA15COD = "'+ ComboPlanoConta.Value + '"'
      else
        SQLMovBco.MacrobyName('MPlanoConta').Value := '0=0';

      SQLMovBco.Open ;
      if (SQLMovBco.IsEmpty) then
        begin
          Showmessage('Não existem dados para ser impressos!');
          Abort;
        end;

      TblTemporaria.Open ;
      //GRAVAR SALDO ANTERIOR
      TblTemporaria.Append ;
      TblTemporariaMVBCA254HIST.Value := 'SALDO ANTERIOR' ;
      TblTemporariaVALORLANC.Value    := SaldoContaCorrente(ComboConta.Value, ComboOpBanco.Value, FormatDateTime('dd/mm/yyyy',DataBaseSaldoAnterior)) ;
      TblTemporaria.Post ;
      vSaldo := TblTemporariaVALORLANC.Value;
      SQLMovBco.First ;
      while not SQLMovBco.Eof do
        begin
          TblTemporaria.Append ;
          for i := 0 to SQLMovBco.FieldCount-1 do
            if SQLMovBco.Fields[i].AsString <> '' then
                              TblTemporaria.FieldByName(SQLMovBco.Fields[i].FieldName).AsVariant := SQLMovBco.Fields[i].AsVariant ;
          TblTemporaria.Post ;

          vSaldo := vSaldo + TblTemporariaVALORLANC.Value;

          SQLMovBco.Next ;
        end ;

      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Extrato Movimento Bancario.rpt' ;
      //Report.ReportTitle       := 'Extrato de Movimento Bancário' ;
      Report.WindowStyle.Title := 'Extrato de Contas Correntes' ;
     //SETAR MACROS CUPOM NUMERARIO
      Report.Formulas.Retrieve ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao' ;
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'PeriodoEmissao' ;
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                      FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'ContaCorrente' ;
      Report.Formulas.Formula.Text := '"' + SQLCCCTCRA60TITULAR.Value + ' ' +
                                            SQLCCCTCRA15AGENCIA.Value + ' ' +
                                            SQLCCCTCRA15NUMERO.Value + '"' ;
    end
  else
    begin
      if (SQLCC.IsEmpty) then
      begin
        Showmessage('Não existem dados para ser impressos!');
        Abort;
      end;
      SQLCC.First ;
      TblTemporaria.Open ;
      // Grava apenas o Saldo de Cada Conta Corrente
      while not SQLCC.Eof do
        begin
          TblTemporaria.Append ;
          TblTemporariaMVBCDLANC.Value    := De.Date;
          TblTemporariaMVBCA254HIST.Value := SQLCCCTCRICOD.AsString    + ' - ' +
                                             SQLCCCTCRA60TITULAR.Value + ' - ' +
                                             SQLCCCTCRA15AGENCIA.Value + ' - ' +
                                             SQLCCCTCRA15NUMERO.Value  ;
          TblTemporariaVALORLANC.Value    := SaldoContaCorrente(SQLCCCTCRICOD.AsString, ComboOpBanco.Value, De.Text) ;
          TblTemporaria.Post ;
          SQLCC.Next ;
        end ;
      SQLCC.First ;
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Extrato Movimento Bancario.rpt' ;
      Report.ReportTitle       := 'Saldo de Contas Correntes' ;
      Report.WindowStyle.Title := 'Saldo de Contas Correntes' ;
     //SETAR MACROS CUPOM NUMERARIO
      Report.Formulas.Retrieve ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'Emissao' ;
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'PeriodoEmissao' ;
      Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                      FormatDateTime('dd/mm/yyyy', De.Date) + '"' ;
      //--------------------------------------------------------------------------\\
      Report.Formulas.Name         := 'ContaCorrente' ;
      Report.Formulas.Formula.Text := '" Todas "' ;
    end;

  Report.Execute ;
end;

end.
