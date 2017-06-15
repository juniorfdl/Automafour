unit RelatorioNotaFiscalEmitidaPorCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, StdCtrls, DB, RxQuery, DBTables, Placemnt,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioNotaFiscalEmitidaPorCFOP = class(TFormRelatorioTEMPLATE)
    SQLNotaFiscal: TRxQuery;
    DSSQLCFOP: TDataSource;
    SQLCFOP: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    GroupFiltro: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    ComboCFOP: TRxDBLookupCombo;
    ComboStatus: TComboBox;
    ComboVendedor: TRxDBLookupCombo;
    SQLCFOPCFOPA5COD: TStringField;
    Report: TCrpe;
    Label7: TLabel;
    ComboPortador: TRxDBLookupCombo;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
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
    SQLNotaFiscalFORNA60RAZAOSOC: TStringField;
    SQLNotaFiscalFORNICOD: TIntegerField;
    SQLNotaFiscalEMPRESADESTINO: TIntegerField;
    SQLNotaFiscalEMPRA60RAZAOSOC: TStringField;
    SQLNotaFiscalNOFIINROTALAO: TIntegerField;
    SQLNotaFiscalCFOPA5COD: TStringField;
    SQLNotaFiscalPLRCICOD: TIntegerField;
    SQLNotaFiscalPLRCA60DESCR: TStringField;
    SQLNotaFiscalVENDICOD: TIntegerField;
    SQLNotaFiscalVENDA60NOME: TStringField;
    SQLNotaFiscalPORTICOD: TIntegerField;
    SQLNotaFiscalPORTA60DESCR: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaSERIA5COD: TStringField;
    TblTemporariaOPESICOD: TIntegerField;
    TblTemporariaNOFIINUMERO: TIntegerField;
    TblTemporariaNOFICSTATUS: TStringField;
    TblTemporariaNOFIDEMIS: TDateTimeField;
    TblTemporariaNOFIN2VLRNOTA: TFloatField;
    TblTemporariaNOFIN2VLRSUBS: TFloatField;
    TblTemporariaFORNA60RAZAOSOC: TStringField;
    TblTemporariaFORNICOD: TIntegerField;
    TblTemporariaEMPRESADESTINO: TIntegerField;
    TblTemporariaEMPRA60RAZAOSOC: TStringField;
    TblTemporariaNOFIINROTALAO: TIntegerField;
    TblTemporariaCFOPA5COD: TStringField;
    TblTemporariaPLRCICOD: TIntegerField;
    TblTemporariaPLRCA60DESCR: TStringField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaVENDA60NOME: TStringField;
    TblTemporariaPORTICOD: TIntegerField;
    TblTemporariaPORTA60DESCR: TStringField;
    SQLNotaFiscalNOFIN2VLRICMSFRETE: TFloatField;
    SQLNotaFiscalNOFIN2VLRICMS: TFloatField;
    TblTemporariaNOFIN2VLRICMS: TFloatField;
    TblTemporariaNOFIN2VLRICMSFRETE: TFloatField;
    SQLNotaFiscalNOFIN2BASCALCICMS: TFloatField;
    TblTemporariaNOFIN2BASCALCICMS: TFloatField;
    ckAgrupar: TCheckBox;
    ckDestinatario: TCheckBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioNotaFiscalEmitidaPorCFOP: TFormRelatorioNotaFiscalEmitidaPorCFOP;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioNotaFiscalEmitidaPorCFOP.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLNotaFiscal.Close;

  SQLNotaFiscal.MacrobyName('Empresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas,'','NotaFiscal','') ;

  SQLNotaFiscal.MacroByName('CampoData').Value   := 'NotaFiscal.NOFIDEMIS';
  SQLNotaFiscal.MacroByName('DataInicial').Value := ' ''' + FormatDateTime('mm/dd/yyyy',De.Date)  + ''' ';
  SQLNotaFiscal.MacroByName('DataFinal').Value   := ' ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + ''' ';

  if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
    SQLNotaFiscal.MacroByName('Vendedor').Value := 'NOTAFISCAL.VENDICOD = ' + IntToStr(ComboVendedor.KeyValue)
  else
    SQLNotaFiscal.MacroByName('Vendedor').Value := '0=0';

  SQLNotaFiscal.MacroByName('Status').Value := '0=0';

  Case ComboStatus.ItemIndex of
    0 : SQLNotaFiscal.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = ''A''';
    1 : SQLNotaFiscal.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = ''E''';
    2 : SQLNotaFiscal.MacroByName('Status').Value := 'NotaFiscal.NOFICSTATUS = ''C''';
  end;

  if ComboCFOP.Value <> '' then
    SQLNotaFiscal.MacroByName('CFOP').Value := 'NotaFiscal.CFOPA5COD = ''' + ComboCFOP.Value + ''''
  else
    SQLNotaFiscal.MacroByName('CFOP').Value := '0=0';

  if ComboPortador.Value <> '' then
    SQLNotaFiscal.MacroByName('Portador').Value := 'ContasReceber.PORTICOD = ' + ComboPortador.Value
  else
    SQLNotaFiscal.MacroByName('Portador').Value := '0=0';

  SQLNotaFiscal.Open;

  BatchExec(SQLNotaFiscal,TblTemporaria);

 if not ckAgrupar.Checked then
   Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Notas Fiscais Emitidas Por CFOP.rpt'
 else
   Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Notas Fiscais Emitidas Sem CFOP.rpt';

 if ckDestinatario.Checked then
   begin
     if not TblTemporaria.Active then TblTemporaria.open;
     TblTemporaria.first;
     while not TblTemporaria.eof do
       begin
         if TblTemporariaEMPRESADESTINO.AsString = '' then TblTemporaria.delete;
         TblTemporaria.next;
       end;
     TblTemporaria.close;  
     Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Notas Fiscais Emitidas Por Dest.rpt';
   end;

 Report.Formulas.Retrieve;

 Report.Formulas.Name := 'Empresa' ;
 Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''' ;

 Report.Formulas.Name := 'Emissao';
 Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) + '''';

 Report.Formulas.Name := 'PeriodoEmissao';
 Report.Formulas.Formula.Text := '''' + De.Text + ' até ' + Ate.Text + '''';

 Report.Formulas.Name := 'StatusFiltro';
 Report.Formulas.Formula.Text := '''' + ComboStatus.Text + '''';

 if ComboCFOP.Value <> '' then
   begin
        Report.Formulas.Name := 'CFOP';
     Report.Formulas.Formula.Text := '''' + ComboCFOP.DisplayValue + '''';
   end;

 if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
   begin
     Report.Formulas.Name := 'Vendedor';
     Report.Formulas.Formula.Text := '''' + ComboVendedor.DisplayValue + '''';
   end;

 if ComboPortador.Value <> '' then
   begin
     Report.Formulas.Name := 'Portador';
     Report.Formulas.Formula.Text := '''' + ComboPortador.DisplayValue + '''';
   end;

 Report.Formulas.Send;
 Report.ReportTitle       := 'Relatório de Notas Fiscais Emitidas Por CFOP' ;
 Report.WindowStyle.Title := 'Relatório de Notas Fiscais Emitidas Por CFOP' ;
 if ckDestinatario.Checked then
   begin
     Report.ReportTitle       := 'Relatório de Notas Fiscais Emitidas Por Destinatario' ;
     Report.WindowStyle.Title := 'Relatório de Notas Fiscais Emitidas Por Destinatario' ;
   end;
 Report.Execute;

end;

procedure TFormRelatorioNotaFiscalEmitidaPorCFOP.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLVendedor.Open;
  SQLCFOP.Open;
  SQLPortador.Open;
end;

procedure TFormRelatorioNotaFiscalEmitidaPorCFOP.ComboPortadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
