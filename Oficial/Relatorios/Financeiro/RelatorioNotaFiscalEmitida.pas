unit RelatorioNotaFiscalEmitida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UnitLibrary,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioNotaFiscalEmitida = class(TFormRelatorioTEMPLATE)
    SQLNotaFiscal: TRxQuery;
    SQLOperEstoque: TRxQuery;
    SQLSerie: TRxQuery;
    SQLCliente: TRxQuery;
    DSSQLOperEstoque: TDataSource;
    DSSQLSerie: TDataSource;
    DSSQLCliente: TDataSource;
    SQLNotaFiscalEMPRICOD: TIntegerField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalCLIEA60RAZAOSOC: TStringField;
    SQLNotaFiscalSERIA5COD: TStringField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaFiscalNOFICSTATUS: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalNOFIN2VLRNOTA: TFloatField;
    SQLNotaFiscalNOFIN2VLRSUBS: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaSERIA5COD: TStringField;
    TblTemporariaOPESICOD: TIntegerField;
    TblTemporariaNOFIINUMERO: TIntegerField;
    TblTemporariaNOFICSTATUS: TStringField;
    TblTemporariaNOFIDEMIS: TDateTimeField;
    TblTemporariaNOFIN2VLRICMS: TFloatField;
    TblTemporariaNOFIN2VLRNOTA: TFloatField;
    TblTemporariaNOFIN2VLRSUBS: TFloatField;
    SQLNotaFiscalOperacaoLookup: TStringField;
    TblTemporariaOperacaoLookup: TStringField;
    GroupFiltro: TGroupBox;
    ComboSerie: TRxDBLookupCombo;
    ComboOperEstoque: TRxDBLookupCombo;
    ComboCliente: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboStatus: TComboBox;
    Report: TCrpe;
    RadioOrder: TRadioGroup;
    Label9: TLabel;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    DSSQLVendedor: TDataSource;
    ComboVendedor: TRxDBLookupCombo;
    TblTemporariaFORNA60RAZAOSOC: TStringField;
    SQLNotaFiscalFORNA60RAZAOSOC: TStringField;
    SQLNotaFiscalNOFIN2VLRICMS: TFloatField;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    EditNroInicial: TEdit;
    EditNroFinal: TEdit;
    SQLSerieSERIA5COD: TStringField;
    SQLSerieEMPRICOD: TIntegerField;
    SQLNotaFiscalNOFIN3VLRPIS: TFloatField;
    SQLNotaFiscalNOFIN3VLRCOFINS: TFloatField;
    TblTemporariaNOFIN3VLRPIS: TFloatField;
    TblTemporariaNOFIN3VLRCOFINS: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboOperEstoqueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioNotaFiscalEmitida: TFormRelatorioNotaFiscalEmitida;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioNotaFiscalEmitida.ExecutarBtnClick(
  Sender: TObject);
var
 I : Integer;
begin
  inherited;
  SQLNotaFiscal.Close;

  SQLNotaFiscal.MacrobyName('Empresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas,'','NotaFiscal','') ;

  SQLNotaFiscal.MacroByName('CampoData').Value   := 'NotaFiscal.NOFIDEMIS';
  SQLNotaFiscal.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date)  + '" ';
  SQLNotaFiscal.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';

  if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
    SQLNotaFiscal.MacroByName('Vendedor').Value := 'NOTAFISCAL.VENDICOD = ' + IntToStr(ComboVendedor.KeyValue)
  else
    SQLNotaFiscal.MacroByName('Vendedor').Value := '0=0';

  SQLNotaFiscal.MacroByName('Status').Value := '0=0';
  Case ComboStatus.ItemIndex of
    0 : SQLNotaFiscal.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "A"';
    1 : SQLNotaFiscal.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "E"';
    2 : SQLNotaFiscal.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = "C"';
  end;

  if ComboSerie.Value <> '' then
    SQLNotaFiscal.MacroByName('Serie').Value := 'NotaFiscal.SERIA5COD = "' + ComboSerie.KeyValue + '"'
  else
    SQLNotaFiscal.MacroByName('Serie').Value := '0=0';

  if (ComboOperEstoque.KeyValue <> null) and (ComboOperEstoque.KeyValue > 0) then
    SQLNotaFiscal.MacroByName('OperEstoque').Value := 'NotaFiscal.OPESICOD = ' + IntToStr(ComboOperEstoque.KeyValue)
  else
    SQLNotaFiscal.MacroByName('OperEstoque').Value := '0=0';

  if (ComboCliente.KeyValue <> null) and (ComboCliente.KeyValue > 0) then
    SQLNotaFiscal.MacroByName('Cliente').Value := 'NotaFiscal.CLIEA13ID = "' + ComboCliente.KeyValue + '"'
  else
    SQLNotaFiscal.MacroByName('Cliente').Value := '0=0';

  if ComboVendedor.Value <> '' then
    SQLNotaFiscal.MacroByName('Vendedor').Value := 'NotaFiscal.VENDICOD = ' + ComboVendedor.Value
  else
    SQLNotaFiscal.MacroByName('Vendedor').Value := '0=0';

  if EditNroInicial.Text <> '' then
    SQLNotaFiscal.MacroByName('NROInicial').Value := 'NOTAFISCAL.NOFIINUMERO >= '+ EditNroInicial.Text;

  if EditNroFinal.Text <> '' then
    SQLNotaFiscal.MacroByName('NROFinal').Value   := 'NOTAFISCAL.NOFIINUMERO <= '+ EditNroFinal.Text;

   Case RadioOrder.ItemIndex of
     0 : SQLNotaFiscal.MacroByName('MOrdem').Value := 'Cliente.CLIEA60RAZAOSOC';
     1 : SQLNotaFiscal.MacroByName('MOrdem').Value := 'NotaFiscal.NOFIDEMIS';
     2 : SQLNotaFiscal.MacroByName('MOrdem').Value := 'NotaFiscal.NOFIINUMERO';
   end;

  SQLNotaFiscal.Open;
  if not TblTemporaria.Active then
    TblTemporaria.Open;

  SQLNotaFiscal.First ;

  while not SQLNotaFiscal.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLNotaFiscal.FieldCount-1 do
        if SQLNotaFiscal.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLNotaFiscal.Fields[i].FieldName).AsVariant := SQLNotaFiscal.Fields[i].AsVariant ;
      TblTemporaria.Post ;
      SQLNotaFiscal.Next ;
    end ;

   TblTemporaria.First ;
   Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Notas Fiscais Emitidas.rpt' ;
   Report.Formulas.Retrieve;
   Report.Formulas.Name := 'Emissao';
   Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) + '"';
   Report.Formulas.Name := 'PeriodoEmissao';
   Report.Formulas.Formula.Text := '"' + De.Text + ' até ' + Ate.Text + '"';
   Report.Formulas.Name := 'StatusFiltro';
   Report.Formulas.Formula.Text := '"' + ComboStatus.Text + '"';
   if ComboSerie.Value <> '' then
     begin
          Report.Formulas.Name := 'Serie';
       Report.Formulas.Formula.Text := '"' + ComboSerie.DisplayValue + '"';
     end;
   if (ComboOperEstoque.KeyValue <> null) and (ComboOperEstoque.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'OperacaoEstoque';
       Report.Formulas.Formula.Text := '"' + ComboOperEstoque.DisplayValue + '"';
     End;
   if (ComboCliente.KeyValue <> null) and (ComboCliente.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'Cliente';
       Report.Formulas.Formula.Text := '"' + ComboCliente.DisplayValue + '"';
     end;
   if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'Vendedor';
       Report.Formulas.Formula.Text := '"' + ComboVendedor.DisplayValue + '"';
     end;
   Report.Formulas.Name := 'Ordem';
   Case RadioOrder.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Cliente' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Data de Emissão' + '"';
     2 : Report.Formulas.Formula.Text := '"' + 'Nro Nota Fiscal' + '"';
   end;
   Report.Formulas.Send;
   Report.ReportTitle       := 'Relatório de Notas Fiscais Emitidas' ;
   Report.WindowStyle.Title := 'Relatório de Notas Fiscais Emitidas' ;
   Report.Execute;
end;

procedure TFormRelatorioNotaFiscalEmitida.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLOperEstoque.Active then SQLOperEstoque.Open;
  if not SQLSerie.Active then SQLSerie.Open;
  if not SQLVendedor.Active then SQLVendedor.Open;
end;

procedure TFormRelatorioNotaFiscalEmitida.ComboOperEstoqueKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

end.
