unit RelatorioNotaFiscalItensCobrancaFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, DBTables, Placemnt, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  ppCtrls, ppBands, ppClass, ppPrnabl, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppDBBDE, ExtensoLib, Grids, DBGrids,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioNotaFiscalItensCobrancaFrete = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    ComboOperacao: TRxDBLookupCombo;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueSERIA5COD: TStringField;
    SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaoEstoquePENDENTE: TStringField;
    SQLOperacaoEstoqueREGISTRO: TDateTimeField;
    SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaoEstoquePDVDA13ID: TStringField;
    SQLEstoque: TRxQuery;
    DSSQLCliente: TDataSource;
    DSSQLOperacaoEstoque: TDataSource;
    SQLEstoqueQTDE: TFloatField;
    SQLEstoqueNOFIINUMERO: TIntegerField;
    SQLEstoquePRODICOD: TIntegerField;
    SQLEstoqueLOTEA30NRO: TStringField;
    TblTemporariaQTDE: TFloatField;
    TblTemporariaNOFIINUMERO: TIntegerField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaLOTEA30NRO: TStringField;
    SQLEstoqueCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    Report: TCrpe;
    SQLEstoquePRODA60DESCR: TStringField;
    TblTemporariaPRODA60DESCR: TStringField;
    SQLEstoqueNFITN2VLRUNIT: TFloatField;
    TblTemporariaNFITN2VLRUNIT: TFloatField;
    GroupBox4: TGroupBox;
    ComboStatus: TComboBox;
    SQLEstoqueCORA30DESCR: TStringField;
    SQLEstoqueGRTMA5DESCR: TStringField;
    TblTemporariaCORA30DESCR: TStringField;
    TblTemporariaGRTMA5DESCR: TStringField;
    GroupBox5: TGroupBox;
    EditNroInicial: TEdit;
    Label5: TLabel;
    EditNroFinal: TEdit;
    Label6: TLabel;
    GroupBox6: TGroupBox;
    ComboSerie: TRxDBLookupCombo;
    DSSQLSerie: TDataSource;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSeriePENDENTE: TStringField;
    SQLSerieREGISTRO: TDateTimeField;
    SQLSerieSERIINRONF: TIntegerField;
    SQLEstoqueVALORTOTALFRETE: TFloatField;
    TblTemporariaVALORTOTALFRETE: TFloatField;
    Pipe: TppBDEPipeline;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine3: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel9: TppLabel;
    ppRecibo: TppLabel;
    ppLabel10: TppLabel;
    RadioTipo: TRadioGroup;
    ppLine4: TppLine;
    ppTotalFrete: TppDBCalc;
    ppLabel11: TppLabel;
    SQLSerieEMPRICOD: TIntegerField;
    ppLabel12: TppLabel;
    PipeppField11: TppField;
    TblTemporariaVALORTOTALPRODUTOS: TFloatField;
    SQLEstoqueVALORTOTALPRODUTOS: TFloatField;
    SQLEstoqueQTDITENS: TIntegerField;
    TblTemporariaQTDITENS: TIntegerField;
    PipeppField12: TppField;
    ppLabel13: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppLabel13Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioNotaFiscalItensCobrancaFrete: TFormRelatorioNotaFiscalItensCobrancaFrete;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioNotaFiscalItensCobrancaFrete.FormCreate(
  Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open;
  if not SQLSerie.Active then SQLSerie.Open;
end;

procedure TFormRelatorioNotaFiscalItensCobrancaFrete.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLEstoque.Close;
  SQLEstoque.MacroByName('MSerie').Value     := '0=0';
  SQLEstoque.MacroByName('NROInicial').Value := '0=0';
  SQLEstoque.MacroByName('NROFinal').Value   := '0=0';

  SQLEstoque.MacroByName('Data').Value := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy',De.Date) + '"  AND ' +
                                          'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  if ComboCliente.Text <> '' then
    SQLEstoque.MacroByName('Cliente').Value := 'NOTAFISCAL.CLIEA13ID = ' + '"' + ComboCliente.Value + '"'
  else
    SQLEstoque.MacroByName('Cliente').Value := '0=0';

  if ComboOperacao.Text <> '' then
    SQLEstoque.MacroByName('Operacao').Value := 'NOTAFISCAL.OPESICOD = ' + ComboOperacao.Value
  else
    SQLEstoque.MacroByName('Operacao').Value := '0=0';

  if ComboSerie.Value <> '' then
    SQLEstoque.MacroByName('MSerie').Value  := 'NOTAFISCAL.SERIA5COD = "' + ComboSerie.Value + '"'
  else
    begin
      ShowMessage('É necessário escolher uma Série!');
      exit;
    end;

  if EditNroInicial.Text <> '' then
    SQLEstoque.MacroByName('NROInicial').Value := 'NOTAFISCAL.NOFIINUMERO >= '+ EditNroInicial.Text;

  if EditNroFinal.Text <> '' then
  SQLEstoque.MacroByName('NROFinal').Value   := 'NOTAFISCAL.NOFIINUMERO <= '+ EditNroFinal.Text;

  SQLEstoque.MacroByName('Status').Value := '0=0';
  Case ComboStatus.ItemIndex of
    0 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "A"';
    1 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "E"';
    2 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "C"';
    3 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "F"';
  end;

  SQLEstoque.Open;
  BatchExec(SQLEstoque, TblTemporaria);



  if RadioTipo.ItemIndex = 1 then
    begin
      ppReport.DetailBand.Visible := False;
      ppReport.GroupFooterBand[1].Visible := False;
    end
  else
    begin
      ppReport.DetailBand.Visible := True;
      ppReport.GroupFooterBand[1].Visible := True;
    end;

  ppReport.Print;
end;

procedure TFormRelatorioNotaFiscalItensCobrancaFrete.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormRelatorioNotaFiscalItensCobrancaFrete.ppGroupFooterBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppRecibo.Caption := 'Recebemos a quantia de acima informada reference a cobrança de frete, pelo que passamos o presente recibo.';
end;

procedure TFormRelatorioNotaFiscalItensCobrancaFrete.ppLabel13Print(
  Sender: TObject);
begin
  inherited;
  ppLabel13.Caption := FormatFloat (',0.00',PipeppField11.Value / PipeppField12.Value);
end;

end.
