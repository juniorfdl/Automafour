unit RelatorioBoletimCaixaTesouraria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioBoletimCaixaTesouraria = class(TFormRelatorioTEMPLATE)
    SQLTesouraria: TRxQuery;
    SQLTesourariaEMPRICOD: TIntegerField;
    SQLTesourariaTERMICOD: TIntegerField;
    SQLTesourariaTESODMOV: TDateTimeField;
    SQLTesourariaOPTEICOD: TIntegerField;
    SQLTesourariaDebito: TFloatField;
    SQLTesourariaCredito: TFloatField;
    Report: TCrpe;
    SQLMovimentacaoTesouraria: TRxQuery;
    SQLSaldoAnterior: TRxQuery;
    SQLOperacaoTesouraria: TRxQuery;
    SQLOperacaoTesourariaOPTEICOD: TIntegerField;
    SQLOperacaoTesourariaOPTEA60DESCR: TStringField;
    SQLOperacaoTesourariaOPTECDEBCRED: TStringField;
    GroupBox2: TGroupBox;
    ComboOperacaoTesouraria: TRxDBLookupCombo;
    DSSQLOperacaoTesouraria: TDataSource;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    DSSQLPlanoContas: TDataSource;
    GroupBox5: TGroupBox;
    ComboConta: TRxDBLookupCombo;
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    GroupBox3: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaTESODMOV: TDateTimeField;
    TblTemporariaOPTEICOD: TIntegerField;
    TblTemporariaDebito: TBCDField;
    TblTemporariaCredito: TBCDField;
    TblTemporariaOperacaoTesouraria: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioBoletimCaixaTesouraria: TFormRelatorioBoletimCaixaTesouraria;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioBoletimCaixaTesouraria.ExecutarBtnClick(
  Sender: TObject);
var
  Saldo : Double;
begin
  inherited;
  SQLTesouraria.Close;
  SQLTesouraria.MacroByName('Empresa').AsString    := SQLDeLista(ComboEmpresa,ListaEmpresas,'','','');
  SQLTesouraria.MacroByName('DataInicial').AsString:= '"' + FormatDateTime('mm/dd/yyyy',De.Date)  + '"';
  SQLTesouraria.MacroByName('DataFinal').AsString  := '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  if ComboOperacaoTesouraria.Value <> '' then
    SQLTesouraria.MacroByName('Operacao').AsString := 'OPTEICOD = '+ ComboOperacaoTesouraria.Value
  else
    SQLTesouraria.MacroByName('Operacao').AsString := '0=0';
  if ComboConta.Value <> '' then
    SQLTesouraria.MacrobyName('MConta').Value := 'PLCTA15COD = "'+ ComboConta.Value + '"'
  else
    SQLTesouraria.MacrobyName('MConta').Value := '0=0';

  if ComboNumerario.Value <> '' then
     SQLTesouraria.MacrobyName('MNumerario').Value    := ' NUMEICOD = ' + ComboNumerario.Value
  else
     SQLTesouraria.MacrobyName('MNumerario').Value    := '0=0';

  SQLTesouraria.Open;
  SQLTesouraria.First;
  Progresso.Position := 0;
  Progresso.Min      := 0;
  Progresso.Max      := SQLTesouraria.RecordCount;
  TblTemporaria.Open;
  // CALCULA SALDO ANTERIOR
  SQLSaldoAnterior.Close;
  SQLSaldoAnterior.MacroByName('Empresa').AsString     := SQLDeLista(ComboEmpresa,ListaEmpresas,'','','');
  SQLSaldoAnterior.MacroByName('DataInicial').AsString := '"' + FormatDateTime('mm/dd/yyyy',De.Date)  + '"';
  if ComboNumerario.Value <> '' then
    SQLSaldoAnterior.MacrobyName('MNumerario').Value    := ' NUMEICOD = ' + ComboNumerario.Value
  else
    SQLSaldoAnterior.MacrobyName('MNumerario').Value    := '0=0';

  SQLSaldoAnterior.Open;
  if not SQLSaldoAnterior.IsEmpty then
    begin
      SQLSaldoAnterior.First;
      while not SQLSaldoAnterior.Eof do
        begin
          TblTemporaria.Append;
          Saldo := SQLSaldoAnterior.FieldByName('Credito').AsFloat -
                   SQLSaldoAnterior.FieldByName('Debito').AsFloat;
          if Saldo >= 0 then
            TblTemporariaCredito.AsFloat  := Saldo
          else
            TblTemporariaDebito.AsFloat   := -(Saldo);

          TblTemporariaEMPRICOD.AsInteger := SQLSaldoAnterior.FieldByName('EMPRICOD').AsInteger;
          TblTemporariaTERMICOD.AsInteger := TerminalAtual;
          TblTemporariaOperacaoTesouraria.AsString := 'Saldo Anterior';
          TblTemporaria.Post;
          SQLSaldoAnterior.Next;
        end;
    end;

  while not SQLTesouraria.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsString           := SQLTesourariaEMPRICOD.AsString;
      TblTemporariaTERMICOD.AsString           := SQLTesourariaTERMICOD.AsString;
      TblTemporariaTESODMOV.AsString           := SQLTesourariaTESODMOV.AsString;
      TblTemporariaOPTEICOD.AsString           := SQLTesourariaOPTEICOD.AsString;
      TblTemporariaDebito.AsFloat              := SQLTesourariaDebito.AsFloat;
      TblTemporariaCredito.AsFloat             := SQLTesourariaCredito.AsFloat;
      TblTemporariaOperacaoTesouraria.AsString := SQLLocate('OPERACAOTESOURARIA','OPTEICOD','OPTEA60DESCR',SQLTesourariaOPTEICOD.AsString);
      TblTemporaria.Post;
      SQLTesouraria.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;
  Progresso.Position := 0;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Boletim de Caixa Tesouraria.rpt' ;
  Report.ReportTitle       := 'Relatório Boletim de Caixa Tesouraria' ;
  Report.WindowStyle.Title := 'Relatório Boletim de Caixa Tesouraria' ;

 //SETAR FORMULAS REPORT
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

procedure TFormRelatorioBoletimCaixaTesouraria.FormCreate(Sender: TObject);
begin
  inherited;
  SQLOperacaoTesouraria.Open;
  SQLPlanoContas.Open;
  SQLNumerario.Open;
end;

end.
