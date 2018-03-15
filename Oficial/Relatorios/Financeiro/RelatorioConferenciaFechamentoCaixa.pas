
unit RelatorioConferenciaFechamentoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup, Mask, ToolEdit, DBTables, DB,
  ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, ppDBBDE, RxQuery, ppViewr,
  ppModule, raCodMod, ppMemo, Placemnt, AdvSmoothPanel, RXCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, ACBrNFeDANFEClass,
  ACBrNFeDANFeESCPOS, ACBrBase, ACBrPosPrinter;

type
  TFormConferenciaFechamentoCaixa = class(TForm)
    DSSQLTerminal: TDataSource;
    SQLTerminal: TRxQuery;
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    BatchMove: TBatchMove;
    SQLOperador: TRxQuery;
    DSSQLOperador: TDataSource;
    DSSQLTotaNumrario: TDataSource;
    SQLTotaNumerario: TRxQuery;
    SQLTotaNumerarioNUMEICOD: TIntegerField;
    SQLTotaNumerarioNUMEA30DESCR: TStringField;
    SQLTotaNumerarioVLRCREDITO: TFloatField;
    SQLTotaNumerarioVLRDEBITO: TFloatField;
    SQLTotaNumerarioSALDO: TFloatField;
    ReportTotais: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    LbPeriodo: TppLabel;
    LbTerminal: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel45: TppLabel;
    ppLine12: TppLine;
    ppDBCalc8: TppDBCalc;
    PipeNumerario: TppBDEPipeline;
    PipeNumerarioppField1: TppField;
    PipeNumerarioppField2: TppField;
    PipeNumerarioppField3: TppField;
    PipeNumerarioppField4: TppField;
    PipeNumerarioppField5: TppField;
    ppLabel31: TppLabel;
    ppOperador: TppLabel;
    FormStorage1: TFormStorage;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    RxLabel2: TRxLabel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    BtnVisualizar: TSpeedButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    HoraInicial: TEdit;
    HoraFinal: TEdit;
    GroupBox3: TGroupBox;
    ComboTerminal: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboOperador: TRxDBLookupCombo;
    SQLTotaNumerarioVALOR_DIGITADO: TFloatField;
    VALOR_DIGITADO: TppField;
    SQLTotaNumerarioDIFERENCA: TFloatField;
    DIFERENCA: TppField;
    SQLTotalOperacao: TRxQuery;
    DSSQLTotalOperacao: TDataSource;
    PipeOperacao: TppBDEPipeline;
    SQLTotalOperacaoOPCXICOD: TIntegerField;
    SQLTotalOperacaoOPCXA60DESCR: TStringField;
    SQLTotalOperacaoCREDITOS: TFloatField;
    SQLTotalOperacaoDEBITOS: TFloatField;
    SQLTotalOperacaoSALDO: TFloatField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel17: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine1: TppLine;
    SpeedButton1: TSpeedButton;
    BtnFecharTela: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure ReportTotaisPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConferenciaFechamentoCaixa: TFormConferenciaFechamentoCaixa;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormConferenciaFechamentoCaixa.FormCreate(Sender: TObject);
begin
  SQLOperador.Open;
  SQLTerminal.Open;
  de.Date  := Date;
  Ate.Date := Date;

  if dm.SQLUsuario.FieldByName('USUACPERMVMOVCX').Value <> 'S' then
    begin
      de.Enabled  := False;
      ate.Enabled := False;

      ComboTerminal.keyValue := TerminalAtual;
      ComboOperador.keyValue := dm.SQLUsuario.FieldByName('USUAICOD').Value;
      ComboTerminal.Enabled  := False;
      ComboOperador.Enabled  := False;
    end;
end;

procedure TFormConferenciaFechamentoCaixa.BtnVisualizarClick(Sender: TObject);
var
  vSaldoTotal, vValorSangria : double;
  x,y : string;

begin
  SQLTotaNumerario.Close ;
  SQLTotaNumerario.MacrobyName('MEmpresa').Value  := 'EMPRICOD  = ' + EmpresaPadrao;

  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
  begin
    SQLTotaNumerario.MacroByName('MData').Value := 'MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + '" and ' +
                                                   'MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';

    SQLTotaNumerario.MacroByName('FData').Value := 'C.DATA_MOVIMENTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + '" and ' +
                                                   'C.DATA_MOVIMENTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  end
  else
  begin
    SQLTotaNumerario.MacroByName('MData').Value := 'REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';

    SQLTotaNumerario.MacroByName('FData').Value := 'C.DATA_MOVIMENTO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'C.DATA_MOVIMENTO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';
  end;

  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLTotaNumerario.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value;

  if ComboOperador.Value <> '' then
    SQLTotaNumerario.MacroByName('MOperador').Value := 'USUAICOD = ' + ComboOperador.Value
  else
    SQLTotaNumerario.MacroByName('MOperador').Value := '0=0';

  SQLTotaNumerario.Open;

  SQLTotalOperacao.Close;
  SQLTotalOperacao.MacrobyName('MEmpresa').Value  := 'EMPRICOD  = ' + EmpresaPadrao;
  SQLTotalOperacao.MacroByName('MTerminal').Value := '0=0';

  if (HoraInicial.Text = '') and (HoraInicial.Text = '') then
    SQLTotalOperacao.MacroByName('MData').Value := 'A.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'A.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"'
  else
    SQLTotalOperacao.MacroByName('MData').Value := 'A.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'A.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';
  if ComboTerminal.Value <> '' then
    SQLTotalOperacao.MacroByName('MTerminal').Value := 'TERMICOD = ' + ComboTerminal.Value
  else
    SQLTotalOperacao.MacroByName('MTerminal').Value := '0=0';
  if ComboOperador.Value <> '' then
    SQLTotalOperacao.MacroByName('MOperador').Value := 'A.USUAICOD = ' + ComboOperador.Value
  else
    SQLTotalOperacao.MacroByName('MOperador').Value := '0=0';  

  SQLTotalOperacao.Open ;

  ReportTotais.Print;
end;

procedure TFormConferenciaFechamentoCaixa.ReportTotaisPreviewFormCreate(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  TppViewer(ReportTotais.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormConferenciaFechamentoCaixa.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
end;

procedure TFormConferenciaFechamentoCaixa.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormConferenciaFechamentoCaixa.ppTitleBand1BeforePrint(
  Sender: TObject);
begin
  ReportTotais.PreviewForm.WindowState := wsMaximized;
  LbPeriodo.Caption  := de.Text + ' até ' + Ate.Text;
  LbTerminal.Caption := ComboTerminal.Text;
  ppOperador.Caption := 'Operador: ' + ComboOperador.Text;
end;

procedure TFormConferenciaFechamentoCaixa.BtnFecharTelaClick(                                                             
  Sender: TObject);
begin
  Close;
end;

procedure TFormConferenciaFechamentoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    TblTemporaria.Close ;
  except
    Application.ProcessMessages;
  end ;

  Action := CAFree ;
end;

end.
