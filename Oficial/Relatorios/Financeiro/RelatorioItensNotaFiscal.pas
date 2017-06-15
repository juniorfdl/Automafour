unit RelatorioItensNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, DBTables, Placemnt, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioItensNotaFiscal = class(TFormRelatorioTEMPLATE)
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
    SQLEstoqueNOFIDEMIS: TDateTimeField;
    TblTemporariaNOFIDEMIS: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioItensNotaFiscal: TFormRelatorioItensNotaFiscal;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioItensNotaFiscal.FormCreate(
  Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open; 
end;

procedure TFormRelatorioItensNotaFiscal.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLEstoque.Close;
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

  SQLEstoque.MacroByName('Status').Value := '0=0';
  Case ComboStatus.ItemIndex of
    0 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "A"';
    1 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "E"';
    2 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "C"';
    3 : SQLEstoque.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "F"';
  end;

  SQLEstoque.Open;
  BatchExec(SQLEstoque, TblTemporaria);

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Itens das Notas Fiscais.rpt' ;
  Report.WindowStyle.Title := 'Relatório de Itens das Notas Fiscais';
  Report.ReportTitle       := 'Relatório de Itens das Notas Fiscais';
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

procedure TFormRelatorioItensNotaFiscal.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

end.
