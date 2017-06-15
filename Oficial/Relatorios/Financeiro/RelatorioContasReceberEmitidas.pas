unit RelatorioContasReceberEmitidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  VarSys, RXCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasReceberEmitidas = class(TFormRelatorioTEMPLATE)
    SQLContasReceber: TRxQuery;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberDTVENC: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberDTULTREC: TStringField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCN2TOTDESCREC: TFloatField;
    SQLContasReceberSALDO: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    Report: TCrpe;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCTRCA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaCTRCDEMIS: TDateTimeField;
    TblTemporariaCTRCDVENC: TDateTimeField;
    TblTemporariaCTRCA13ID: TStringField;
    TblTemporariaCTRCINROPARC: TIntegerField;
    TblTemporariaDTVENC: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaNOFIA13ID: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaCTRCN2VLR: TFloatField;
    TblTemporariaEMPRICODULTREC: TIntegerField;
    TblTemporariaDTULTREC: TStringField;
    TblTemporariaCTRCN2TOTREC: TFloatField;
    TblTemporariaCTRCN2TXJURO: TFloatField;
    TblTemporariaCTRCN2TXMULTA: TFloatField;
    TblTemporariaCTRCN2TOTDESCREC: TFloatField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaNUMEICOD: TIntegerField;
    TblTemporariaCTRCCSTATUS: TStringField;
    SQLCliente: TRxQuery;
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    CheckNroDuplic: TCheckBox;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    TblTemporariaCTRCA30NRODUPLICBANCO: TStringField;
    GroupBox3: TGroupBox;
    ComboTipoDoc: TRxDBLookupCombo;
    GroupBox4: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    DSSQLPortador: TDataSource;
    SQLContasReceberPORTA60DESCR: TStringField;
    TblTemporariaPORTA60DESCR: TStringField;
    CheckPortador: TCheckBox;
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    GroupBox5: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    DSSQLPlanoContas: TDataSource;
    GroupBox6: TGroupBox;
    ComboConta: TRxDBLookupCombo;
    CheckCheques: TCheckBox;
    CheckTerminal: TCheckBox;
    GroupBox7: TGroupBox;
    ListTerminal: TRxCheckListBox;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioContasReceberEmitidas: TFormRelatorioContasReceberEmitidas;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioContasReceberEmitidas.ExecutarBtnClick(
  Sender: TObject);
var NroDocumento : string;
begin
  inherited;
  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MData').Value    := 'CONTASRECEBER.CTRCDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'CONTASRECEBER.CTRCDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if CheckTerminal.Checked then
    SQLContasReceber.MacrobyName('MTerminal').Value   := 'CONTASRECEBER.TERMICOD IN'      + MontaSQLdeListaTerminal(ListTerminal)
  else
    SQLContasReceber.MacrobyName('MTerminal').Value   := '0=0';

  if ComboCliente.Text <> '' then
    SQLContasReceber.MacrobyName('MCliente').Value := 'CONTASRECEBER.CLIEA13ID = ' + '"'+ ComboCliente.Value + '"'
  else
    SQLContasReceber.MacrobyName('MCliente').Value := '0=0';

  if ComboTipoDoc.Value <> '' then
    SQLContasReceber.MacrobyName('MTipoDoc').Value  := 'CONTASRECEBER.TPDCICOD = ' + ComboTipoDoc.Value
  else
    SQLContasReceber.MacrobyName('MTipoDoc').Value  := '0=0';

  if ComboPortador.Value <> '' then
    SQLContasReceber.MacrobyName('MPortador').Value := 'CONTASRECEBER.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasReceber.MacrobyName('MPortador').Value := '0=0';

  if ComboNumerario.Value <> '' then
    SQLContasReceber.MacrobyName('MNumerario').Value := 'CONTASRECEBER.NUMEICOD = ' + ComboNumerario.Value
  else
    SQLContasReceber.MacrobyName('MNumerario').Value := '0=0';

  if ComboConta.Value <> '' then
    SQLContasReceber.MacrobyName('MConta').Value := 'CONTASRECEBER.PLCTA15COD = "'+ ComboConta.Value + '"'
  else
    SQLContasReceber.MacrobyName('MConta').Value := '0=0';

  if not CheckCheques.Checked then
    SQLContasReceber.MacrobyName('MCheques').Value := '(CONTASRECEBER.CTRCA5TIPOPADRAO <> "CHQ" )  and '+
                                                      '(CONTASRECEBER.CTRCA5TIPOPADRAO <> "CHQV")  and '+
                                                      '(CONTASRECEBER.CTRCA5TIPOPADRAO <> "CHQP") '

  else
    SQLContasReceber.MacrobyName('MCheques').Value := '0=0';


  SQLContasReceber.Open ;

  BatchExec(SQLContasReceber, TblTemporaria) ;

  TblTemporaria.Open ;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit ;
      if TblTemporariaNOFIA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.Value := 'NF - ' + SQLLocate('NOTAFISCAL', 'NOFIA13ID','SERIA5COD', '"' + TblTemporariaNOFIA13ID.AsString + '"') + '-' +
                                          SQLLocate('NOTAFISCAL', 'NOFIA13ID','NOFIINUMERO', '"' + TblTemporariaNOFIA13ID.AsString + '"') ;
        end;
      if TblTemporariaPDVDA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString :='PD - ' + TblTemporariaPDVDA13ID.AsString;
        end;
      if TblTemporariaCUPOA13ID.AsString <> '' then
        begin
          NroDocumento := SQLLocate('CUPOM','CUPOA13ID','CUPOINRO','"'+TblTemporariaCUPOA13ID.AsString+'"');
          if NroDocumento <> '' then
            TblTemporariaCTRCA13ID.AsString := 'CP - ' + NroDocumento
          else
            TblTemporariaCTRCA13ID.AsString :='CP - ' + TblTemporariaCUPOA13ID.AsString;
        end;

      if (CheckNroDuplic.Checked) and (TblTemporariaCTRCA30NRODUPLICBANCO.AsString <> '') then
        TblTemporariaCTRCA13ID.AsString := TblTemporariaCTRCA30NRODUPLICBANCO.AsString;

      TblTemporaria.Post ;

      TblTemporaria.Next ;
    end ;                                  
  TblTemporaria.Close ;
  if CheckPortador.Checked then
    begin
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Receber Emitidas Por Portador.rpt' ;
      Report.ReportTitle       := 'Relatório de Contas À RECEBER EMITIDAS Por Portador' ;
      Report.WindowStyle.Title := 'Relatório de Contas À RECEBER EMITIDAS Por Portador' ;
    end
  else
    begin
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas Receber Emitidas.rpt' ;
      Report.ReportTitle       := 'Relatório de Contas À RECEBER EMITIDAS' ;
      Report.WindowStyle.Title := 'Relatório de Contas À RECEBER EMITIDAS' ;
    end;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa';
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';
  if ComboPortador.Value <> '' then
    begin
      Report.Formulas.Name         := 'Portador';
      Report.Formulas.Formula.Text := '"' + ComboPortador.DisplayValue + '"';
    end;
  if ComboTipoDoc.Value <> '' then
    begin
      Report.Formulas.Name         := 'TipoDoc';
      Report.Formulas.Formula.Text := '"' + ComboTipoDoc.DisplayValue + '"';
    end;
  if ComboNumerario.Value <> '' then
    begin
      Report.Formulas.Name         := 'Numerario';
      Report.Formulas.Formula.Text := '"' + ComboNumerario.DisplayValue + '"';
    end;

  Report.Execute;

end;

procedure TFormRelatorioContasReceberEmitidas.FormCreate(Sender: TObject);
begin
  inherited;
  if not UsuarioMaster then
    ListaTerminal(ListTerminal,EmpresaPadrao)
  else
    ListaTerminal(ListTerminal,'');

  if not SQLCliente.Active then SQLCliente.Open;
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLNumerario.Open;
  SQLPlanoContas.Open;
end;

procedure TFormRelatorioContasReceberEmitidas.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).Value = '' then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

end.
