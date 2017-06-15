unit RelatorioContasRecebidasPorEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasRecebidasPorEmpresa = class(TFormRelatorioTEMPLATE)
    GroupBox3: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    GroupBox5: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    GroupBox6: TGroupBox;
    ComboTipoDoc: TRxDBLookupCombo;
    SQLPortador: TQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    SQLTipoDoc: TQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    SQLCliente: TQuery;
    DSSQLCliente: TDataSource;
    CheckNroDuplic: TCheckBox;
    Report: TCrpe;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICODREC: TIntegerField;
    SQLContasReceberRECEDRECTO: TDateTimeField;
    SQLContasReceberRECEN2DESC: TFloatField;
    SQLContasReceberRECEN2VLRJURO: TFloatField;
    SQLContasReceberRECEN2VLRMULTA: TFloatField;
    SQLContasReceberRECEN2VLRRECTO: TFloatField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberTPDCA60DESCR: TStringField;
    SQLContasReceberPORTA60DESCR: TStringField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaEMPRICODREC: TIntegerField;
    TblTemporariaRECEDRECTO: TDateTimeField;
    TblTemporariaRECEN2DESC: TFloatField;
    TblTemporariaRECEN2VLRJURO: TFloatField;
    TblTemporariaRECEN2VLRMULTA: TFloatField;
    TblTemporariaRECEN2VLRRECTO: TFloatField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaNOFIA13ID: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCTRCN2VLR: TFloatField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    SQLContasReceberEMPRA60NOMEFANT: TStringField;
    TblTemporariaEMPRA60NOMEFANT: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  NroDuplic : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasRecebidasPorEmpresa: TFormRelatorioContasRecebidasPorEmpresa;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioContasRecebidasPorEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  SQLNumerario.Open ;
  SQLCliente.Open ;
  SQLTipoDoc.Open;
  SQLPortador.Open;
end;

procedure TFormRelatorioContasRecebidasPorEmpresa.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  if ComboEmpresa.KeyValue = null then
    begin
      Informa('Por favor selecione a empresa de origem!');
      ComboEmpresa.SetFocus;
      Exit;
    end;
  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value  := '0=0' ;
  SQLContasReceber.MacrobyName('MData').Value     := '0=0' ;
  SQLContasReceber.MacrobyName('MCliente').Value  := '0=0' ;
  SQLContasReceber.MacrobyName('MCliente2').Value := '0=0' ;
  SQLContasReceber.MacrobyName('MEmpresa2').Value := '0=0' ;
  //SETAR MACROS CONTAS A RECEBER
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MEmpresa2').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;

  SQLContasReceber.MacrobyName('MData').Value    := 'RECEBIMENTO.RECEDRECTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'RECEBIMENTO.RECEDRECTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLContasReceber.MacrobyName('MData2').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboPortador.Value <> '' then
    SQLContasReceber.MacrobyName('MPortador').Value := 'CONTASRECEBER.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasReceber.MacrobyName('MPortador').Value := '0=0';

  if ComboTipoDoc.Value <> '' then
    SQLContasReceber.MacrobyName('MTipoDoc').Value := 'CONTASRECEBER.TPDCICOD = '  + ComboTipoDoc.Value
  else
    SQLContasReceber.MacrobyName('MTipoDoc').Value := '0=0';

  if ComboCliente.text <> '' then
  begin
    SQLContasReceber.MacrobyName('MCliente').Value          := 'CONTASRECEBER.CLIEA13ID = "' + ComboCliente.Value + '"' ;
    SQLContasReceber.MacrobyName('MCliente2').Value         := 'CUPOM.CLIEA13ID = "' + ComboCliente.Value + '"' ;
  end ;

  if ComboNumerario.text <> '' then
    begin
      SQLContasReceber.MacrobyName('MNumerario').Value      := 'CONTASRECEBER.NUMEICOD = ' + ComboNumerario.Value;
      SQLContasReceber.MacrobyName('MNumerario2').Value     := 'CUPOMNUMERARIO.NUMEICOD = ' + ComboNumerario.Value;
    end
  else
    begin
      SQLContasReceber.MacrobyName('MNumerario').Value      := '0=0';
      SQLContasReceber.MacrobyName('MNumerario2').Value     := '0=0';
    end;

  // Empresa Recebimento
  SQLContasReceber.MacroByName('MEmpresaOrigem').Value      := ' RECEBIMENTO.EMPRICODREC = ' + ComboEmpresa.Value;
  SQLContasReceber.MacroByName('MEmpresaOrigem2').Value     := ' CUPOM.EMPRICOD = ' + ComboEmpresa.Value;

  SQLContasReceber.Open ;

  BatchExec(SQLContasReceber, TblTemporaria) ;

  TblTemporaria.Open ;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit ;
      if TblTemporariaNOFIA13ID.AsString <> '' then
        TblTemporariaCTRCA13ID.AsString := SQLLocate('NOTAFISCAL', 'NOFIA13ID','SERIA5COD', '"' + TblTemporariaNOFIA13ID.AsString + '"') + '-' +
                                           SQLLocate('NOTAFISCAL', 'NOFIA13ID','NOFIINUMERO', '"' + TblTemporariaNOFIA13ID.AsString + '"') ;

      if TblTemporariaPDVDA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := TblTemporariaPDVDA13ID.AsString;
        end;
      if TblTemporariaCUPOA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := TblTemporariaCUPOA13ID.AsString;
        end;

      if TblTemporariaCTRCA13ID.AsString = '' then
        TblTemporariaCTRCA13ID.AsString := SQLContasReceberCTRCA13ID.AsString;
      if CheckNroDuplic.Checked then
        begin
           NroDuplic := SQLLocate('CONTASRECEBER','CTRCA13ID','CTRCA30NRODUPLICBANCO','"' + TblTemporariaCTRCA13ID.AsString + '"');
          if NroDuplic <> '' then
            TblTemporariaCTRCA13ID.AsString := NroDuplic;
        end;

      TblTemporaria.Post ;
      TblTemporaria.Next ;
    end ;
  TblTemporaria.Close;
  
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Recebidas Por Empresa.rpt';
      
  //AjustaCaminhoCrystal;
  
  Report.ReportTitle       := 'Relatório de Contas Recebidas Por Empresa';
  Report.WindowStyle.Title := 'Relatório de Contas Recebidas Por Empresa';
 //SETAR FORMULAS REPORT
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  Report.Execute ;

end;

procedure TFormRelatorioContasRecebidasPorEmpresa.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
