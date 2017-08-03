unit RelatorioMovimentacaoCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, Db, DBTables, ComCtrls, RxLookup, StdCtrls,
  Mask, ToolEdit, ExtCtrls, Buttons, jpeg, OleCtrls, Placemnt,
  ImgList, RxQuery, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioMovimentacaoCaixa = class(TFormRelatorioTEMPLATE)
    SQLOperador: TRxQuery;
    DSSQLOperador: TDataSource;
    GroupBox2: TGroupBox;
    ComboOperador: TRxDBLookupCombo;
    SQLMovimentoCaixa: TRxQuery;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboOperCaixa: TRxDBLookupCombo;
    GroupBox6: TGroupBox;
    OrdSeq: TRadioButton;
    OrdHora: TRadioButton;
    DSSQLTerminal: TDataSource;
    SQLOperacaoCaixa: TRxQuery;
    DSSQLOperacaoCaixa: TDataSource;
    SQLMovimentoCaixaEMPRICOD: TIntegerField;
    SQLMovimentoCaixaMVCXA15DOCORIG: TStringField;
    SQLMovimentoCaixaMVCXA255HIST: TStringField;
    SQLMovimentoCaixaMVCXDMOV: TDateTimeField;
    SQLMovimentoCaixaMVCXICOD: TIntegerField;
    SQLMovimentoCaixaMVCXINROCUPOM: TIntegerField;
    SQLMovimentoCaixaMVCXN2VLRCRED: TFloatField;
    SQLMovimentoCaixaMVCXN2VLRDEB: TFloatField;
    SQLMovimentoCaixaMVCXN2VLRJURO: TFloatField;
    SQLMovimentoCaixaMVCXN2VLRMULTA: TFloatField;
    SQLMovimentoCaixaMVCXN2VLRDESC: TFloatField;
    SQLMovimentoCaixaNUMEICOD: TIntegerField;
    SQLMovimentoCaixaOPCXICOD: TIntegerField;
    SQLMovimentoCaixaPENDENTE: TStringField;
    SQLMovimentoCaixaREGISTRO: TDateTimeField;
    SQLMovimentoCaixaTERMICOD: TIntegerField;
    SQLMovimentoCaixaUSUAICOD: TIntegerField;
    SQLMovimentoCaixaUSUAA60LOGIN: TStringField;
    SQLMovimentoCaixaTERMA60DESCR: TStringField;
    SQLMovimentoCaixaOPCXA60DESCR: TStringField;
    Report: TCrpe;
    SQLOperacaoCaixaOPCXICOD: TIntegerField;
    SQLOperacaoCaixaOPCXA60DESCR: TStringField;
    SQLOperacaoCaixaOPCXCTOTALIZAREL: TStringField;
    RBCreditoDebito: TRadioGroup;
    SQLOperacaoCaixaOPCXCDEBITOCREDITO: TStringField;
    OrdDoc: TRadioButton;
    SQLTerminal: TRxQuery;
    HoraFinal: TEdit;
    HoraInicial: TEdit;
    GroupBox5: TGroupBox;
    ComboOperCaixaAux: TRxDBLookupCombo;
    SQLOperacaoCaixaAux: TRxQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    dsSQLOperacaoCaixaAux: TDataSource;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaMVCXA15DOCORIG: TStringField;
    TblTemporariaMVCXA255HIST: TStringField;
    TblTemporariaMVCXDMOV: TDateTimeField;
    TblTemporariaMVCXICOD: TIntegerField;
    TblTemporariaMVCXINROCUPOM: TIntegerField;
    TblTemporariaMVCXN2VLRCRED: TBCDField;
    TblTemporariaMVCXN2VLRDEB: TBCDField;
    TblTemporariaMVCXN2VLRJURO: TBCDField;
    TblTemporariaMVCXN2VLRMULTA: TBCDField;
    TblTemporariaMVCXN2VLRDESC: TBCDField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaOPCXICOD: TIntegerField;
    TblTemporariaPENDENTE: TStringField;
    TblTemporariaREGISTRO: TDateTimeField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaUSUAICOD: TIntegerField;
    TblTemporariaUSUAA60LOGIN: TStringField;
    TblTemporariaTERMA60DESCR: TStringField;
    TblTemporariaOPCXA60DESCR: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RBCreditoDebitoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMovimentacaoCaixa: TFormRelatorioMovimentacaoCaixa;

implementation

uses DataModulo, UnitLibrary;

{$R *.DFM}

procedure TFormRelatorioMovimentacaoCaixa.ExecutarBtnClick(
  Sender: TObject);
var
 i:Integer;  
begin
  inherited;

  SQLMovimentoCaixa.Close ;
  SQLMovimentoCaixa.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'MOVIMENTOCAIXA', '') ;

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLMovimentoCaixa.MacrobyName('MData').Value    := 'MOVIMENTOCAIXA.MVCXDMOV >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                       'MOVIMENTOCAIXA.MVCXDMOV <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ''''
  else
    SQLMovimentoCaixa.MacroByName('MData').Value := 'MOVIMENTOCAIXA.REGISTRO >= ''' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + ''' and ' +
                                                    'MOVIMENTOCAIXA.REGISTRO <= ''' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '''';

  //----------------------------------------------------------------------------
  if ComboOperador.Value <> '' then
    SQLMovimentoCaixa.MacrobyName('MOperador').Value := 'MOVIMENTOCAIXA.USUAICOD = ' + ComboOperador.Value
  else
    SQLMovimentoCaixa.MacrobyName('MOperador').Value := '0=0' ;
  //----------------------------------------------------------------------------
  if ComboTerminal.Value <> '' then
    SQLMovimentoCaixa.MacrobyName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value
  else
    SQLMovimentoCaixa.MacrobyName('MTerminal').Value := '0=0' ;
  //----------------------------------------------------------------------------
  if ComboOperCaixa.Value <> '' then
    SQLMovimentoCaixa.MacrobyName('MOperCx').Value := 'MOVIMENTOCAIXA.OPCXICOD = ' + ComboOperCaixa.Value
  else
    SQLMovimentoCaixa.MacrobyName('MOperCx').Value := '0=0' ;
  //----------------------------------------------------------------------------
  if ComboOperCaixaAux.Value <> '' then
    SQLMovimentoCaixa.MacrobyName('MOperCx').Value := SQLMovimentoCaixa.MacrobyName('MOperCx').Value +
                                                      ' or MOVIMENTOCAIXA.OPCXICOD = ' + ComboOperCaixaAux.Value;
  //----------------------------------------------------------------------------

  if OrdSeq.Checked then
    begin
      SQLMovimentoCaixa.MacrobyName('MOrdem').Value := 'order by MOVIMENTOCAIXA.TERMICOD, ' +
                                                       'MOVIMENTOCAIXA.MVCXDMOV, ' +
                                                       'MOVIMENTOCAIXA.MVCXICOD' ;
    end ;
  //----------------------------------------------------------------------------
  if OrdHora.Checked then
    begin
      SQLMovimentoCaixa.MacrobyName('MOrdem').Value := 'order by MOVIMENTOCAIXA.TERMICOD, ' +
                                                       'MOVIMENTOCAIXA.REGISTRO' ;
    end ;
  //----------------------------------------------------------------------------
  if OrdDoc.Checked then
    begin
      SQLMovimentoCaixa.MacrobyName('MOrdem').Value := 'order by MOVIMENTOCAIXA.MVCXA15DOCORIG ';
    end ;
  //----------------------------------------------------------------------------

  Case RBCreditoDebito.ItemIndex of
    0 : SQLMovimentoCaixa.MacrobyName('CreditoDebito').Value := '0=0' ;
    1 : SQLMovimentoCaixa.MacrobyName('CreditoDebito').Value := 'MVCXN2VLRCRED >= 0 and MVCXN2VLRDEB <= 0' ;
    2 : SQLMovimentoCaixa.MacrobyName('CreditoDebito').Value := 'MVCXN2VLRDEB >= 0 and MVCXN2VLRCRED <= 0' ;
  End;
  //----------------------------------------------------------------------------
  SQLMovimentoCaixa.Open ;
  if (SQLMovimentoCaixa.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  //----------------------------------------------------------------------------
  //BatchExec(SQLMovimentoCaixa, TblTemporaria) ;// antigo
  CopyQueryTable(SQLMovimentoCaixa, TblTemporaria); //novo

  {while not SQLMovimentoCaixa.Eof do
    begin
      TblTemporaria.Append;
      for i := 0 to SQLMovimentoCaixa.FieldCount-1 do
        if SQLMovimentoCaixa.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLMovimentoCaixa.Fields[i].FieldName).AsVariant := SQLMovimentoCaixa.Fields[i].AsVariant;
      TblTemporaria.Post;
      SQLMovimentoCaixa.Next;
    end;  }

  //----------------------------------------------------------------------------
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Movimentacao Caixa.rpt' ;
  Report.ReportTitle       := 'Relatório de Movimentação do Caixa' ;
  Report.WindowStyle.Title := 'Relatorio de Movimentação do Caixa' ;
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

procedure TFormRelatorioMovimentacaoCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  SQLOperador.Open ;
  SQLOperacaoCaixa.Open ;
  SQLOperacaoCaixaAux.Open ;

  if FileExists(DM.PathAplicacao + 'Terminal.cfg') then
    SQLTerminal.MacroByName('MFiltro').Value := 'TERMINAL.ECFA13ID <> '' '''
  else
    SQLTerminal.MacroByName('MFiltro').Value := '0=0';

  SQLTerminal.Open ;

  if dm.SQLUsuario.FieldByName('USUACPERMVMOVCX').Value <> 'S' then
    begin
      de.Enabled  := False;
      ate.Enabled := False;
    end;

end;

procedure TFormRelatorioMovimentacaoCaixa.RBCreditoDebitoClick(
  Sender: TObject);
begin
  inherited;
  Case RBCreditoDebito.ItemIndex of
    0 : Begin
          SQLOperacaoCaixa.Close;
          SQLOperacaoCaixa.MacroByName('CreditoDebito').Value := '0=0';
          SQLOperacaoCaixa.Open;
        End;
    1 : Begin
          SQLOperacaoCaixa.Close;
          SQLOperacaoCaixa.MacroByName('CreditoDebito').Value := 'OPCXCDEBITOCREDITO = '+'''C'+'''';
          SQLOperacaoCaixa.Open;
        End;
    2 : Begin
          SQLOperacaoCaixa.Close;
          SQLOperacaoCaixa.MacroByName('CreditoDebito').Value := 'OPCXCDEBITOCREDITO = '+'''D'+'''';
          SQLOperacaoCaixa.Open;
        End;
   end;     
 end;

end.

