unit RelatorioNotaFiscalEmitidaPorICMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, StdCtrls, UCrpe32, RxQuery, DBTables,
  Placemnt, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioNotaEmitidaPorICMS = class(TFormRelatorioTEMPLATE)
    DSSQLOperacaoEstoque: TDataSource;
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
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    Report: TCrpe;
    GroupBox4: TGroupBox;
    ComboStatus: TComboBox;
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    ComboOperacao: TRxDBLookupCombo;
    SQLEstoque: TRxQuery;
    TblTemporariaNOFIINUMERO: TIntegerField;
    TblTemporariaNOFIDEMIS: TDateTimeField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaALIQDESCR: TStringField;
    TblTemporariaVALRBASE: TFloatField;
    TblTemporariaVALORIMPOSTO: TFloatField;
    TblTemporariaVALORTOTAL: TFloatField;
    SQLEstoqueNOFIINUMERO: TIntegerField;
    SQLEstoqueNOFIDEMIS: TDateTimeField;
    SQLEstoquePRODICOD: TIntegerField;
    SQLEstoqueNFITN2BASEICMS: TFloatField;
    SQLEstoqueNFITN2VLRICMS: TFloatField;
    SQLEstoqueICMSICOD: TIntegerField;
    SQLEstoqueCLIEA60RAZAOSOC: TStringField;
    SQLEstoqueNFITN2BASESUBS: TFloatField;
    SQLEstoqueNFITN2VLRSUBS: TFloatField;
    SQLEstoqueNOFIN2VLRNOTA: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioNotaEmitidaPorICMS: TFormRelatorioNotaEmitidaPorICMS;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormRelatorioNotaEmitidaPorICMS.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLEstoque.Close;
  SQLEstoque.MacroByName('Data').Value := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy',de.Date) + '"  AND ' +
                                          'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';

  if ComboCliente.Text <> '' then
    SQLEstoque.MacroByName('Cliente').Value := 'NOTAFISCAL.CLIEA13ID = ' + '"' + ComboCliente.Value + '"'
  else
    SQLEstoque.MacroByName('Cliente').Value := '0=0';

  if ComboOperacao.Text <> '' then
    SQLEstoque.MacroByName('Operacao').Value := 'NOTAFISCAL.OPESICOD = ' + ComboOperacao.Value
  else
    SQLEstoque.MacroByName('Operacao').Value := '0=0';

  SQLEstoque.MacroByName('Status').Value := '0=0';
  Case ComboStatus.ItemIndex of
    0 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "A"';
    1 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "E"';
    2 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "C"';
    3 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "F"';
  end;

  SQLEstoque.Open;


  // Popular a tabela Temporaria
 TblTemporaria.Close;
 try
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;
  except
    TblTemporaria.CreateTable;
  end ;

  TblTemporaria.Open;
  while not SQLEstoque.eof do
    begin
      TblTemporaria.Append;
      TblTemporariaNOFIINUMERO.AsString    := SQLEstoqueNOFIINUMERO.AsString;
      TblTemporariaNOFIDEMIS.Value         := SQLEstoqueNOFIDEMIS.Value;
      TblTemporariaVALORTOTAL.VALUE        := SQLEstoqueNOFIN2VLRNOTA.Value;
      TblTemporariaPRODICOD.Value          := SQLEstoquePRODICOD.Value;
      TblTemporariaALIQDESCR.Value         := dm.SQLLocate('ICMS','ICMSICOD','ICMSA60DESCR',SQLEstoqueICMSICOD.AsString);
      TblTemporariaCLIEA60RAZAOSOC.Value   := SQLEstoqueCLIEA60RAZAOSOC.Value;
      TblTemporariaVALRBASE.Value          := SQLEstoqueNFITN2BASEICMS.Value;
      TblTemporariaVALORIMPOSTO.Value      := SQLEstoqueNFITN2VLRICMS.Value;
      if SQLEstoqueNFITN2BASESUBS.Value > 0 then
        begin
          TblTemporariaVALRBASE.Value          := SQLEstoqueNFITN2BASESUBS.Value;
          TblTemporariaVALORIMPOSTO.Value      := SQLEstoqueNFITN2VLRSUBS.Value;
        end;
      TblTemporaria.Post;
      SQLEstoque.Next;
    end;

  // Carregar o Report
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Notas Fiscais Emitidas por ICMS.rpt' ;
  Report.WindowStyle.Title := 'Notas Fiscais Emitidas por Cliente e por Icms';
  Report.ReportTitle       := 'Notas Fiscais Emitidas por Cliente e por Icms';
  Report.Formulas.Retrieve;
  Report.Formulas.Name := 'Periodo';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy',De.Date) +  ' Até ' + FormatDateTime('dd/mm/yyyy',Ate.Date) + '"';
  if ComboOperacao.Text <> '' then
    begin
      Report.Formulas.Name := 'OperacaoEstoque';
      Report.Formulas.Formula.Text := '"' + ComboOperacao.Value + '"';
    end;
  if ComboCliente.Value <> '' then
    begin
      Report.Formulas.Name := 'Cliente';
      Report.Formulas.Formula.Text := '"' + ComboCliente.DisplayValue + '"';
    end;
  if ComboStatus.Text <> '' then
    begin
      Report.Formulas.Name := 'Status';
      Report.Formulas.Formula.Text := '"' + ComboStatus.Text + '"';
    end;
  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormRelatorioNotaEmitidaPorICMS.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open;
end;

end.
