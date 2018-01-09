
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
    ppHeaderBand1: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine11: TppLine;
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
    BtnFecharTela: TSpeedButton;
    SQLTotaNumerarioVALOR_DIGITADO: TFloatField;
    ppDBCalc1: TppDBCalc;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    VALOR_DIGITADO: TppField;
    SQLTotaNumerarioDIFERENCA: TFloatField;
    DIFERENCA: TppField;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc2: TppDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure ReportTotaisPreviewFormCreate(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure ReportTotaisPreviewFormClose(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
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
    SQLTotaNumerario.MacroByName('MData').Value := 'B.MVCXDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + '" and ' +
                                                   'B.MVCXDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';

    SQLTotaNumerario.MacroByName('FData').Value := 'D.DATA_MOVIMENTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date)  + '" and ' +
                                                   'D.DATA_MOVIMENTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"';
  end
  else
  begin
    SQLTotaNumerario.MacroByName('MData').Value := 'B.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'B.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';

    SQLTotaNumerario.MacroByName('FData').Value := 'D.DATA_MOVIMENTO >= "' + FormatDateTime('mm/dd/yyyy ', De.Date) + HoraInicial.Text + '" and ' +
                                                   'D.DATA_MOVIMENTO <= "' + FormatDateTime('mm/dd/yyyy ', Ate.Date)+ HoraFinal.Text   + '"';
  end;

  SQLTotaNumerario.MacroByName('MTerminal').Value := '0=0';

  if ComboTerminal.Value <> '' then
    SQLTotaNumerario.MacroByName('MTerminal').Value := 'MOVIMENTOCAIXA.TERMICOD = ' + ComboTerminal.Value;

  if ComboOperador.Value <> '' then
    SQLTotaNumerario.MacroByName('MOperador').Value := 'MOVIMENTOCAIXA.USUAICOD = ' + ComboOperador.Value
  else
    SQLTotaNumerario.MacroByName('MOperador').Value := '0=0';

  SQLTotaNumerario.Open;

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

procedure TFormConferenciaFechamentoCaixa.ReportTotaisPreviewFormClose(
  Sender: TObject);
begin
  Close ;
end;

procedure TFormConferenciaFechamentoCaixa.BtnFecharTelaClick(                                                             
  Sender: TObject);
begin
  Close;
end;

end.
