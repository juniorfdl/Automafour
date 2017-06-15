unit RelatorioAuxiliarParaLivroCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, DBTables, Placemnt, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RXCtrls, VarSys,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioAuxiliarLivroCaixa = class(TFormRelatorioTEMPLATE)
    SQLRecebimento: TRxQuery;
    SQLPagamento: TRxQuery;
    SQLMovimentoCaixa: TRxQuery;
    SQLMovimentoCaixaTOTALCREDITO: TFloatField;
    SQLMovimentoCaixaTOTALDEBITO: TFloatField;
    SQLMovimentoCaixaOPCXICOD: TIntegerField;
    SQLRecebimentoTOTALCREDITO: TFloatField;
    TblTemporariaCredito: TFloatField;
    TblTemporariaDebito: TFloatField;
    SQLOperacaoCaixa: TRxQuery;
    SQLOperacaoCaixaOPCXA60DESCR: TStringField;
    SQLOperacaoCaixaOPCXCDEBITOCREDITO: TStringField;
    SQLOperacaoCaixaOPCXICOD: TIntegerField;
    SQLMovimentoCaixaOperacaoCaixa: TStringField;
    SQLMovimentoCaixaOperacaoDebitoCredito: TStringField;
    Report: TCrpe;
    TblTemporariaOperacao: TStringField;
    SQLPagamentoTOTALDEBITO: TFloatField;
    GroupBox2: TGroupBox;
    SQLTerminal: TRxQuery;
    DSSQLTerminal: TDataSource;
    ComboTerminal: TRxDBLookupCombo;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioAuxiliarLivroCaixa: TFormRelatorioAuxiliarLivroCaixa;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioAuxiliarLivroCaixa.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  if ComboEmpresa.Value = 'Todas' then
    begin
      Informa('Por favor selecione a empresa de origem!');
      ComboEmpresa.SetFocus;
      Exit;
    end;
  SQLRecebimento.Close;
  SQLMovimentoCaixa.Close;
  SQLPagamento.Close;
  
  SQLRecebimento.MacroByName('MData').AsString         := 'RECEBIMENTO.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                          'RECEBIMENTO.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  SQLMovimentoCaixa.MacroByName('MData').AsString      := 'MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                          'MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  SQLPagamento.MacroByName('MData').AsString           := 'PAGADPAGTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                          'PAGADPAGTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  // Empresa Recebimento
  SQLRecebimento.MacroByName('MEmpresaOrigem').Value   := ' RECEBIMENTO.EMPRICODREC = ' + ComboEmpresa.Value;
  // Terminal Recebimento
  if ComboTerminal.Value <> '' then
    SQLRecebimento.MacroByName('MTerminal').Value :=  'RECEBIMENTO.TERMICODREC = ' + ComboTerminal.Value
  else
    SQLRecebimento.MacroByName('MTerminal').Value :=  '0=0';

//  SQLRecebimento.MacroByName('MTerminal').Value        := ' RECEBIMENTO.TERMICODREC in ' + MontaSQLdeListaTerminal(ListTerminal);
  SQLMovimentoCaixa.MacroByName('MEmpresa').Value      := ' EMPRICOD = ' + ComboEmpresa.Value;

  if ComboTerminal.Value <> '' then
    SQLMovimentoCaixa.MacroByName('MTerminal').Value :=  'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value
  else
    SQLMovimentoCaixa.MacroByName('MTerminal').Value :=  '0=0';

//  SQLMovimentoCaixa.MacroByName('MTerminal').Value     := ' TERMICOD in ' + MontaSQLdeListaTerminal(ListTerminal);

  TblTemporaria.Open;
//  GravaArqTexto(SQLRecebimento.RealSQL.Text,'C:\Unit\LivroCaixa.txt','NOVO');
  SQLRecebimento.Open;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString := 'RECEBIMENTOS DIVERSOS (CREDIARIO - CONVÊNIO - CHEQUE...)';
  TblTemporariaCredito.AsFloat   := SQLRecebimentoTOTALCREDITO.AsFloat;
  TblTemporariaDebito.AsFloat    := 0;
  TblTemporaria.Post;

  SQLPagamento.Open;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString := 'PAGAMENTOS DIVERSOS (FORNECEDORES - DISPESAS - IMPOSTOS...)';
  TblTemporariaCredito.AsFloat   := 0;
  TblTemporariaDebito.AsFloat    := SQLPagamentoTOTALDEBITO.AsFloat;
  TblTemporaria.Post;

  SQLMovimentoCaixa.Open;
  while not SQLMovimentoCaixa.Eof do
    begin
      if SQLMovimentoCaixaOperacaoDebitoCredito.AsString = 'D' then
        begin
          TblTemporaria.Append;
          TblTemporariaOperacao.AsString := SQLMovimentoCaixaOperacaoCaixa.AsString;
          TblTemporariaCredito.AsFloat   := 0;
          TblTemporariaDebito.AsFloat    := SQLMovimentoCaixaTOTALDEBITO.AsFloat;
          TblTemporaria.Post;
        end;
      if SQLMovimentoCaixaOperacaoDebitoCredito.AsString = 'C' then
        begin
          TblTemporaria.Append;
          TblTemporariaOperacao.AsString := SQLMovimentoCaixaOperacaoCaixa.AsString;
          TblTemporariaCredito.AsFloat   := SQLMovimentoCaixaTOTALCREDITO.AsFloat;
          TblTemporariaDebito.AsFloat    := 0;
          TblTemporaria.Post;
        end;
      SQLMovimentoCaixa.Next;
    end;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Auxiliar Para Livro Caixa.rpt';

  // AjustaCaminhoCrystal;

  Report.ReportTitle       := 'Relatório Auxiliar Para Livro Caixa';
  Report.WindowStyle.Title := 'Relatório Auxiliar Para Livro Caixa';
 //SETAR FORMULAS REPORT
  Report.Formulas.Retrieve;
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

procedure TFormRelatorioAuxiliarLivroCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTerminal.Open;
end;

end.
