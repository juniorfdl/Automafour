unit RelatorioSaldoDiarioTesouraria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioSaldoDiarioTesouraria = class(TFormRelatorioTEMPLATE)
    SQLSaldoTesouraria: TRxQuery;
    SQLCC: TRxQuery;
    SQLChequeRecebido: TRxQuery;
    GroupBox2: TGroupBox;
    Calendario: TMonthCalendar;
    SQLChequeEmitido: TRxQuery;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaSETOR: TStringField;
    TblTemporariaDETALHES: TStringField;
    TblTemporariaSALDO: TFloatField;
    SQLSaldoTesourariaCREDITO: TFloatField;
    SQLSaldoTesourariaDEBITO: TFloatField;
    SQLSaldoTesourariaEMPRICOD: TIntegerField;
    SQLCCCTCRICOD: TIntegerField;
    SQLCCBANCA5COD: TStringField;
    SQLCCCTCRA15AGENCIA: TStringField;
    SQLCCCTCRA15NUMERO: TStringField;
    SQLCCCTCRN2LIMITE: TFloatField;
    SQLCCCTCRN2SALDOATUAL: TFloatField;
    SQLChequeRecebidoSALDO: TFloatField;
    SQLChequeEmitidoSALDO: TFloatField;
    SQLChequeRecebidoEMPRICOD: TIntegerField;
    SQLChequeEmitidoEMPRICOD: TIntegerField;
    Report: TCrpe;
    SQLCCEMPRICOD: TIntegerField;
    SQLChequeRecebidoDepositado: TRxQuery;
    SQLChequeEmitidoDepositado: TRxQuery;
    SQLChequeRecebidoDepositadoSALDO: TFloatField;
    SQLChequeRecebidoDepositadoEMPRICOD: TIntegerField;
    SQLChequeEmitidoDepositadoSALDO: TFloatField;
    SQLChequeEmitidoDepositadoEMPRICOD: TIntegerField;
    SQLSaldoCC: TRxQuery;
    SQLSaldoCCSALDO: TFloatField;
    SQLSaldoCCCTCRICOD: TIntegerField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioSaldoDiarioTesouraria: TFormRelatorioSaldoDiarioTesouraria;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioSaldoDiarioTesouraria.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLSaldoTesouraria.Close;
  SQLCC.Close;
  SQLChequeRecebido.Close;
  SQLChequeRecebidoDepositado.Close;
  SQLChequeEmitido.Close;
  SQLChequeEmitidoDepositado.Close;
  SQLSaldoCC.Close;
  SQLSaldoTesouraria.MacroByName('MEmpresa').AsString           := SQLDeLista(ComboEmpresa,ListaEmpresas,'','','');
  SQLChequeRecebido.MacroByName('MEmpresa').AsString            := SQLDeLista(ComboEmpresa,ListaEmpresas,'','','');
  SQLChequeEmitido.MacroByName('MEmpresa').AsString             := SQLDeLista(ComboEmpresa,ListaEmpresas,'','','');
  SQLSaldoCC.MacroByName('MEmpresa').AsString                   := SQLDeLista(ComboEmpresa,ListaEmpresas,'','','');
  SQLSaldoTesouraria.MacroByName('MDataBase').AsString          := '"' + FormatDateTime('mm/dd/yyyy',Calendario.Date) + '"';
  SQLChequeRecebido.MacroByName('MDataBase').AsString           := '"' + FormatDateTime('mm/dd/yyyy',Calendario.Date) + '"';
  SQLChequeRecebidoDepositado.MacroByName('MDataBase').AsString := '"' + FormatDateTime('mm/dd/yyyy',Calendario.Date) + '"';
  SQLChequeEmitido.MacroByName('MDataBase').AsString            := '"' + FormatDateTime('mm/dd/yyyy',Calendario.Date) + '"';
  SQLChequeEmitidoDepositado.MacroByName('MDataBase').AsString  := '"' + FormatDateTime('mm/dd/yyyy',Calendario.Date) + '"';
  SQLSaldoCC.MacroByName('MDataBase').AsString                  := '"' + FormatDateTime('mm/dd/yyyy',Calendario.Date) + '"';
  SQLSaldoTesouraria.Open;
  SQLCC.Open;
  SQLSaldoCC.Open;
  SQLChequeRecebido.Open;
  SQLChequeRecebidoDepositado.Open;
  SQLChequeEmitido.Open;
  SQLChequeEmitidoDepositado.Open;
  SQLSaldoTesouraria.First;
  while not SQLSaldoTesouraria.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLSaldoTesourariaEMPRICOD.AsInteger;
      TblTemporariaSETOR.AsString     := 'CAIXA CENTRAL';
      TblTemporariaDETALHES.AsString  := 'SALDO ANTERIOR + SALDO DE HOJE';
      TblTemporariaSALDO.AsFloat      := SQLSaldoTesourariaCREDITO.AsFloat - SQLSaldoTesourariaDEBITO.AsFloat;
      TblTemporaria.Post;
      SQLSaldoTesouraria.Next;
    end;
  SQLCC.First;  
  while not SQLCC.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLCCEMPRICOD.AsInteger;
      TblTemporariaSETOR.AsString     := 'CONTA CORRENTE';
      TblTemporariaDETALHES.AsString  := 'Banco:' + SQLCCBANCA5COD.AsString + ' - ' +
                                         'Agência: ' + SQLCCCTCRA15AGENCIA.AsString + ' - ' +
                                         'Conta: ' + SQLCCCTCRA15NUMERO.AsString + ' - ' +
                                         'Limite: ' + FormatFloat('#,##0.00',SQLCCCTCRN2LIMITE.AsFloat);
      SQLSaldoCC.Locate('CTCRICOD',SQLCCCTCRICOD.AsString,[]);
      TblTemporariaSALDO.AsFloat      := SQLSaldoCCSALDO.AsFloat;
      TblTemporaria.Post;
      SQLCC.Next;
    end;
  SQLChequeRecebido.First;
  while not SQLChequeRecebido.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLChequeRecebidoEMPRICOD.AsInteger;
      TblTemporariaSETOR.AsString     := 'CHEQUES RECEBIDOS';
      TblTemporariaDETALHES.AsString  := 'CHEQUES RECEBIDOS QUE ESTÃO VENCENDO ATÉ HOJE';
      TblTemporariaSALDO.AsFloat      := SQLChequeRecebidoSALDO.AsFloat;
      TblTemporaria.Post;
      SQLChequeRecebido.Next;
    end;
  SQLChequeRecebidoDepositado.First;
  while not SQLChequeRecebidoDepositado.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLChequeRecebidoDepositadoEMPRICOD.AsInteger;
      TblTemporariaSETOR.AsString     := 'CHEQUES RECEBIDOS';
      TblTemporariaDETALHES.AsString  := 'CHEQUES RECEBIDOS DEPOSITADOS - NÃO COMPENSADOS';
      TblTemporariaSALDO.AsFloat      := SQLChequeRecebidoDepositadoSALDO.AsFloat;
      TblTemporaria.Post;
      SQLChequeRecebidoDepositado.Next;
    end;
  SQLChequeEmitido.First;
  while not SQLChequeEmitido.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLChequeEmitidoEMPRICOD.AsInteger;
      TblTemporariaSETOR.AsString     := 'CHEQUES EMITIDOS';
      TblTemporariaDETALHES.AsString  := 'CHEQUES EMITIDOS QUE ESTÃO VENCENDO HOJE';
      TblTemporariaSALDO.AsFloat      := - SQLChequeEmitidoSALDO.AsFloat;
      TblTemporaria.Post;
      SQLChequeEmitido.Next;
    end;
  SQLChequeEmitidoDepositado.First;
  while not SQLChequeEmitidoDepositado.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger := SQLChequeEmitidoDepositadoEMPRICOD.AsInteger;
      TblTemporariaSETOR.AsString     := 'CHEQUES EMITIDOS';
      TblTemporariaDETALHES.AsString  := 'CHEQUES EMITIDOS AINDA NÃO COMPENSADOS';
      TblTemporariaSALDO.AsFloat      := - SQLChequeEmitidoDepositadoSALDO.AsFloat;
      TblTemporaria.Post;
      SQLChequeEmitidoDepositado.Next;
    end;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Saldo Diario Tesouraria.rpt' ;
  Report.ReportTitle       := 'Relatório Saldo Diário Tesouraria' ;
  Report.WindowStyle.Title := 'Relatório Saldo Diário Tesouraria' ;

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
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dddddd', Calendario.Date)+ '"' ;
  Report.Execute ;
end;

procedure TFormRelatorioSaldoDiarioTesouraria.FormCreate(Sender: TObject);
begin
  inherited;
  Calendario.Date := Date;
end;

end.
