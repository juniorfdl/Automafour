unit TelaRecalcularTotalizador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  Mask, ToolEdit, ComCtrls, DB, DBTables, RxQuery, RxLookup,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaRecalcularTotalizador = class(TFormTelaGeralTEMPLATE)
    BtnVisualizar: TSpeedButton;
    Progress: TProgressBar;
    Msg: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    SQLTotalizadorDiarioCaixa: TRxQuery;
    SQLTotalizadorDiarioCaixaEMPRICOD: TIntegerField;
    SQLTotalizadorDiarioCaixaTERMICOD: TIntegerField;
    SQLTotalizadorDiarioCaixaTODIDMOV: TDateTimeField;
    SQLTotalizadorDiarioCaixaUSUAICOD: TIntegerField;
    SQLTotalizadorDiarioCaixaTOTAICOD: TIntegerField;
    SQLTotalizadorDiarioCaixaTODIN2VLRDEBITO: TFloatField;
    SQLTotalizadorDiarioCaixaTODIN2VLRCREDITO: TFloatField;
    SQLTotalizadorDiarioCaixaPENDENTE: TStringField;
    SQLTotalizadorDiarioCaixaREGISTRO: TDateTimeField;
    UpdateSQLTotalizadorDiarioCaixa: TUpdateSQL;
    SQLTotalizadorCaixa: TRxQuery;
    SQLTotalizadorCaixaTOTAICOD: TIntegerField;
    SQLTotalizadorCaixaTOTAA60DESCR: TStringField;
    SQLTotalizadorCaixaTOTACTRANSFSALDO: TStringField;
    SQLTotalizadorCaixaTOTACDEBITOCREDITO: TStringField;
    SQLTotalizadorCaixaTOTAIORDLIST: TIntegerField;
    SQLMovimentoCaixa: TRxQuery;
    SQLMovimentoCaixaEMPRICOD: TIntegerField;
    SQLMovimentoCaixaTERMICOD: TIntegerField;
    SQLMovimentoCaixaMVCXDMOV: TDateTimeField;
    SQLMovimentoCaixaMVCXICOD: TIntegerField;
    SQLMovimentoCaixaNUMEICOD: TIntegerField;
    SQLMovimentoCaixaOPCXICOD: TIntegerField;
    SQLMovimentoCaixaUSUAICOD: TIntegerField;
    SQLMovimentoCaixaMVCXN2VLRDEB: TFloatField;
    SQLMovimentoCaixaMVCXN2VLRCRED: TFloatField;
    SQLTotalizar: TRxQuery;
    SQLMovimentoCaixaMVCXCNORMREV: TStringField;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    DSSQLTerminal1: TDataSource;
    SQLTerminal1: TRxQuery;
    SQLTerminal1TERMICOD: TIntegerField;
    SQLTerminal1EMPRICOD: TIntegerField;
    SQLTerminal1TERMA60DESCR: TStringField;
    SQLTerminal1TERMCTIPO: TStringField;
    SQLTerminal2: TRxQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    DSSQLTerminal2: TDataSource;
    GroupBox3: TGroupBox;
    ComboTerminal2: TRxDBLookupCombo;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalEMPRICOD: TIntegerField;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRecalcularTotalizador: TFormTelaRecalcularTotalizador;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaRecalcularTotalizador.BtnVisualizarClick(
  Sender: TObject);
Var
  DataAtual : TDateTime ;
  Valor     : double ;
  Tipo, NormalReverso      : string ;
begin
  inherited;
  if (ComboTerminal.Value = '') then
    begin
      ShowMessage('É necessário informar um terminal antes de Recalcular!');
      exit;
    end;
  //Apagar Totalizador Diario Caixa
  Msg.Caption := 'Apagando Totalizadores Diários do Caixa...';
  Msg.Refresh;
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('Delete from TOTALIZADORDIARIOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where TODIDMOV >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + '''') ;
  DM.SQLTemplate.SQL.Add(' and TODIDMOV <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''') ;
  DM.SQLTemplate.SQL.Add(' and EMPRICOD = ' + EmpresaPadrao);
  DM.SQLTemplate.SQL.Add(' and (TERMICOD = ' + ComboTerminal.Value);
  if ComboTerminal2.Value = '' then
    DM.SQLTemplate.SQL.Add(')')
  else
    DM.SQLTemplate.SQL.Add(' or TERMICOD = ' + ComboTerminal2.Value + ')');

  DM.SQLTemplate.ExecSQL ;
  if DM.SQLTemplate.Active then DM.SQLTemplate.Close;

  Msg.Caption := 'Abrindo Tabelas...';
  Msg.Refresh;
  SQLTotalizadorDiarioCaixa.Close;
  SQLTotalizadorDiarioCaixa.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + EmpresaPadrao;
  if ComboTerminal2.Value = '' then
    SQLTotalizadorDiarioCaixa.MacroByName('MFiltro').Value  := 'TERMICOD = ' + ComboTerminal.Value
  else
    SQLTotalizadorDiarioCaixa.MacroByName('MFiltro').Value  := '(TERMICOD = ' + ComboTerminal.Value + ' or TERMICOD = '+ ComboTerminal2.Value + ')';
  SQLTotalizadorDiarioCaixa.Open;
  SQLTotalizadorCaixa.Open;
  SQLTerminal.Close;
  SQLTerminal.MacroByName('MEmpresa').Value  := 'EMPRICOD = '+ EmpresaPadrao;
  if ComboTerminal2.Value = '' then
    SQLTerminal.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value
  else
    SQLTerminal.MacroByName('MTerminal').Value := '(TERMICOD = '+ ComboTerminal.Value + ' or TERMICOD = '+ ComboTerminal2.Value + ')';
  SQLTerminal.Open;

  //Criar Totalizador Diario Caixa
  Msg.Caption := 'Recriando Totalizadores Diários do Caixa...' ;
  Msg.Refresh ;
  Progress.Max      := StrToInt(FormatFloat('#', Ate.Date)) - StrToInt(FormatFloat('#', De.Date)) ;
  Progress.Position := 0 ;
  DataAtual         := De.Date ;
  while DataAtual <= Ate.Date do
    begin
      SQLTerminal.First ;
      while not SQLTerminal.EOF do
        begin
          SQLTotalizadorCaixa.First ;
          while not SQLTotalizadorCaixa.EOF do
            begin
              SQLTotalizadorDiarioCaixa.Append ;
              SQLTotalizadorDiarioCaixaEMPRICOD.AsInteger     := StrToInt(EmpresaPadrao) ;
              SQLTotalizadorDiarioCaixaTERMICOD.Value         := SQLTerminalTERMICOD.Value ;
              SQLTotalizadorDiarioCaixaTODIDMOV.Value         := DataAtual ;
              SQLTotalizadorDiarioCaixaUSUAICOD.Value         := 1 ;
              SQLTotalizadorDiarioCaixaTOTAICOD.Value         := SQLTotalizadorCaixaTOTAICOD.Value ;
              SQLTotalizadorDiarioCaixaTODIN2VLRDEBITO.Value  := 0 ;
              SQLTotalizadorDiarioCaixaTODIN2VLRCREDITO.Value := 0 ;
              SQLTotalizadorDiarioCaixaPENDENTE.Value         := 'S' ;
              SQLTotalizadorDiarioCaixaREGISTRO.Value         := Now ;
              SQLTotalizadorDiarioCaixa.Post ;
              SQLTotalizadorCaixa.Next ;
            end ;
          SQLTerminal.Next ;
        end ;
      DataAtual         := DataAtual + 1 ;
      Progress.Position := Progress.Position + 1 ;
    end ;

  SQLMovimentoCaixa.Close ;
  SQLMovimentoCaixa.MacroByName('MFiltro').Value    := 'MVCXDMOV >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                       'MVCXDMOV <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ''' and ' +
                                                       'EMPRICOD = ' + EmpresaPadrao ;
  if ComboTerminal2.Value = '' then
    SQLMovimentoCaixa.MacroByName('Terminal').Value := 'TERMICOD = ' + ComboTerminal.Value
  else
    SQLMovimentoCaixa.MacroByName('Terminal').Value := '(TERMICOD = '+ ComboTerminal.Value + ' or TERMICOD = '+ ComboTerminal2.Value + ')';
  SQLMovimentoCaixa.Open ;

  SQLTotalizadorDiarioCaixa.Close ;
  SQLTotalizadorDiarioCaixa.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + EmpresaPadrao;
  SQLTotalizadorDiarioCaixa.MacroByName('MFiltro').Value  := 'TERMICOD = ' + ComboTerminal.Value;
  SQLTotalizadorDiarioCaixa.Open ;

  Msg.Caption := 'Contando Movimentos do Caixa...' ;
  Msg.Refresh ;
  Progress.Max := SQLRecCount('MOVIMENTOCAIXA', ' Where ' + SQLMovimentoCaixa.MacroByName('MFiltro').Value) ;
  Progress.Position := 0 ;

  Msg.Caption := 'Recalculando Totalizadores Diários do Caixa...' ;
  Msg.Refresh ;
  SQLMovimentoCaixa.First ;
  while not SQLMovimentoCaixa.Eof do
  begin
     if SQLMovimentoCaixaOPCXICOD.Value = 4 then
       Tipo  := '' ;

     if SQLMovimentoCaixaMVCXN2VLRDEB.Value > 0 then
       begin
         Tipo  := 'D' ;
         Valor := SQLMovimentoCaixaMVCXN2VLRDEB.Value ;
       end ;
     if SQLMovimentoCaixaMVCXN2VLRCRED.Value > 0 then
       begin
         Tipo  := 'C' ;
         Valor := SQLMovimentoCaixaMVCXN2VLRCRED.Value ;
       end ;

     TerminalAtual     := SQLMovimentoCaixaTERMICOD.Value ;
     TerminalAtualData := SQLMovimentoCaixaMVCXDMOV.AsString ;

     if SQLMovimentoCaixaMVCXCNORMREV.Value = 'R' then
       NormalReverso := 'R'
     else
       NormalReverso := 'N';

     GravaMovimentoCaixa(SQLTotalizadorCaixa,
                         SQLTotalizar,
                         SQLMovimentoCaixaEMPRICOD.AsString,
                         SQLMovimentoCaixaTERMICOD.AsString,
                         SQLMovimentoCaixaMVCXDMOV.AsString,
                         SQLMovimentoCaixaNUMEICOD.AsString,
                         SQLMovimentoCaixaOPCXICOD.AsString,
                         SQLMovimentoCaixaUSUAICOD.AsString,
                         'MVCXA15DOCORIG',
                         Valor,
                         0,
                         0,
                         0,
                         'WMVCXA6NUMCUPOM',
                         Tipo,
                         '',
                         NormalReverso,
                         'TOTALIZAR') ;

    SQLMovimentoCaixa.Next ;
    Progress.Position := Progress.Position + 1 ;
  end ;
  Progress.Position := 0 ;
  Msg.Caption := 'Rotina finalizada com sucesso !' ;
  Msg.Refresh ;
end;

procedure TFormTelaRecalcularTotalizador.FormCreate(Sender: TObject);
begin
  inherited;
  Msg.Caption := '' ;
  Msg.Refresh ;
  De.Date  := Date;
  Ate.Date := Date;
  SQLTerminal1.close;
  SQLTerminal1.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + EmpresaPadrao;
  SQLTerminal1.Open;
  SQLTerminal2.close;
  SQLTerminal2.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + EmpresaPadrao;
  SQLTerminal2.Open;
end;

end.
