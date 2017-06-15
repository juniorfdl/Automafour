unit RelatorioVendasPeriodoApuracaoMargem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioVendasPeriodoApuracaoMargem = class(TFormRelatorioTEMPLATE)
    SQLNotasFiscais: TRxQuery;
    GroupBox2: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    Report: TCrpe;
    SQLVendas: TRxQuery;
    SQLNotasFiscaisNOFIA13ID: TStringField;
    SQLNotasFiscaisEMPRICOD: TIntegerField;
    SQLNotasFiscaisCLIEA13ID: TStringField;
    SQLNotasFiscaisSERIE: TStringField;
    SQLNotasFiscaisNOFIDEMIS: TDateTimeField;
    SQLNotasFiscaisNOFIN2VLRPRODUTO: TFloatField;
    SQLNotasFiscaisTOTAL: TFloatField;
    SQLNotasFiscaisNOFIN2VLRDESC: TFloatField;
    SQLNotasFiscaisVENDICOD: TIntegerField;
    SQLNotasFiscaisNOFICSTATUS: TStringField;
    SQLNotasFiscaisCLIEA60RAZAOSOC: TStringField;
    SQLNotasFiscaisVENDA60NOME: TStringField;
    SQLNotasFiscaisVLRLUCRO: TFloatField;
    SQLNotasFiscaisDOC: TIntegerField;
    SQLNotasFiscaisCOMISSAO: TFloatField;
    SQLVendasNOFIA13ID: TStringField;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasCLIEA13ID: TStringField;
    SQLVendasSERIE: TStringField;
    SQLVendasNOFIDEMIS: TDateTimeField;
    SQLVendasNOFIN2VLRPRODUTO: TFloatField;
    SQLVendasTOTAL: TFloatField;
    SQLVendasNOFIN2VLRDESC: TFloatField;
    SQLVendasVENDICOD: TIntegerField;
    SQLVendasNOFICSTATUS: TStringField;
    SQLVendasCLIEA60RAZAOSOC: TStringField;
    SQLVendasVENDA60NOME: TStringField;
    SQLVendasVLRLUCRO: TFloatField;
    SQLVendasDOC: TIntegerField;
    SQLVendasCOMISSAO: TFloatField;
    TblTemporariaNOFIA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaSERIE: TStringField;
    TblTemporariaNOFIDEMIS: TDateTimeField;
    TblTemporariaNOFIN2VLRPRODUTO: TFloatField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaNOFIN2VLRDESC: TFloatField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaNOFICSTATUS: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaVENDA60NOME: TStringField;
    TblTemporariaVLRLUCRO: TFloatField;
    TblTemporariaDOC: TIntegerField;
    TblTemporariaCOMISSAO: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendasPeriodoApuracaoMargem: TFormRelatorioVendasPeriodoApuracaoMargem;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioVendasPeriodoApuracaoMargem.ExecutarBtnClick(
  Sender: TObject);
var
  I : Integer;
begin
  inherited;
  SQLNotasFiscais.Close;
  SQLNotasFiscais.MacrobyName('MEmpresa').Value     := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL','');
  SQLNotasFiscais.MacrobyName('MCampoData').Value   := 'NOTAFISCAL.NOFIDEMIS';
  SQLNotasFiscais.MacrobyName('MDataInicial').Value := '''' + FormatDateTime('mm/dd/yyyy',De.Date)  + '''';
  SQLNotasFiscais.MacrobyName('MDataFinal').Value   := '''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

  if ComboVendedor.Text <> '' then
    SQLNotasFiscais.MacroByName('MVendedor').Value   := 'NOTAFISCAL.VENDICOD = ' + IntToStr(ComboVendedor.KeyValue)
  else
    SQLNotasFiscais.MacroByName('MVendedor').Value   := '0=0';

  SQLVendas.MacrobyName('MEmpresa').Value     := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM','');
  SQLVendas.MacrobyName('MCampoData').Value   := 'CUPOM.CUPODEMIS';
  SQLVendas.MacrobyName('MDataInicial').Value := '''' + FormatDateTime('mm/dd/yyyy',De.Date)  + '''';
  SQLVendas.MacrobyName('MDataFinal').Value   := '''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

  if ComboVendedor.Text <> '' then
    SQLVendas.MacroByName('MVendedor').Value   := 'CUPOM.VENDICOD = ' + IntToStr(ComboVendedor.KeyValue)
  else
    SQLVendas.MacroByName('MVendedor').Value   := '0=0';


  SQLNotasFiscais.Open;
  SQLVendas.Open;
  if not TblTemporaria.Active then
    TblTemporaria.Open;
  SQLNotasFiscais.First ;
  while not SQLNotasFiscais.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLNotasFiscais.FieldCount-1 do
        if (SQLNotasFiscais.Fields[i].AsString <> '') and (TblTemporaria.FindField(SQLNotasFiscais.Fields[i].FieldName)<>Nil) then
          Begin
            TblTemporaria.FieldByName(SQLNotasFiscais.Fields[i].FieldName).AsVariant := SQLNotasFiscais.Fields[i].AsVariant ;
            If (SQLNotasFiscais.Fields[i].FieldName='NOFIA13ID') and (SQLNotasFiscais.FieldByName('DOC').asString<>'') Then
              Begin
                TblTemporaria.FieldByName('NOFIA13ID').Clear;
                TblTemporaria.FieldByName('NOFIA13ID').Value:= SQLNotasFiscais.FieldByName('SERIE').AsString + '-' + SQLNotasFiscais.FieldByName('DOC').AsString;
              End;
          End;
      TblTemporaria.Post ;
      SQLNotasFiscais.Next ;
    end ;

  SQLVendas.First;
  while not SQLVendas.Eof do
    begin
      TblTemporaria.Append ;
      for i := 0 to SQLVendas.FieldCount-1 do
        if (SQLVendas.Fields[i].AsString <> '') and (TblTemporaria.FindField(SQLVendas.Fields[i].FieldName)<>Nil) then
          Begin
            TblTemporaria.FieldByName(SQLVendas.Fields[i].FieldName).AsVariant := SQLVendas.Fields[i].AsVariant ;
            If (SQLVendas.Fields[i].FieldName='CUPOA13ID') and ((SQLVendas.FieldByName('DOC').asString<>'') and (SQLVendas.FieldByName('DOC').AsInteger > 0)) Then
              Begin
                TblTemporaria.FieldByName('CUPOA13ID').Clear;
                TblTemporaria.FieldByName('CUPOA13ID').Value := 'CP-' + SQLVendas.FieldByName('DOC').AsString;
              End;
          End;
      TblTemporaria.Post ;
      SQLVendas.Next ;
    end ;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Por Periodo Apuracao de Margem.rpt' ;
  Report.Formulas.Retrieve ;

  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Vendedor' ;

  if ComboVendedor.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboVendedor.Text + '''';

  Report.ReportTitle       := 'Relatório de Vendas Por Vendedor com Apuração de Margem' ;
  Report.WindowStyle.Title := 'Relatório de Vendas Por Vendedor com Apuração de Margem' ;
  Report.Execute;


end;

procedure TFormRelatorioVendasPeriodoApuracaoMargem.FormCreate(
  Sender: TObject);
begin
  inherited;
  if not SQLVendedor.Active then SQLVendedor.Open;
end;

end.
