unit RelatorioContasReceberVencidas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, DBTables, Placemnt, Db, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasReceberVencidas = class(TFormRelatorioTEMPLATE)
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    SQLContasReceber: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLCliente: TQuery;
    GroupBox3: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberDTVENC: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
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
    SQLContasReceberNUMEA30DESCR: TStringField;
    SQLContasReceberNUMEICOD: TIntegerField;
    Report: TCrpe;
    OrdIDCli: TCheckBox;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
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
    TblTemporariaNUMEA30DESCR: TStringField;
    TblTemporariaNUMEICOD: TIntegerField;
    CheckNroDuplic: TCheckBox;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    TblTemporariaCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCLIEA15FONE1: TStringField;
    SQLContasReceberCLIEA15FONE2: TStringField;
    TblTemporariaCLIEA15FONE1: TStringField;
    TblTemporariaCLIEA15FONE2: TStringField;
    GroupBox4: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    SQLPortador: TQuery;
    DSSQLPortador: TDataSource;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    CheckGrupoCliente: TCheckBox;
    CheckCheques: TCheckBox;
    CKAgrupSintetico: TCheckBox;
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
  FormRelatorioContasReceberVencidas: TFormRelatorioContasReceberVencidas;

implementation

uses UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormRelatorioContasReceberVencidas.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MData').Value    := 'CONTASRECEBER.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'CONTASRECEBER.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if ComboCliente.Value <> '' then
    SQLContasReceber.MacrobyName('MCliente').Value    := 'CONTASRECEBER.CLIEA13ID = "' + ComboCliente.Value + '"'
  else
    SQLContasReceber.MacrobyName('MCliente').Value    := '0=0';

  if ComboNumerario.Value <> '' then
    SQLContasReceber.MacrobyName('MNumerario').Value  := 'CONTASRECEBER.NUMEICOD = ' + ComboNumerario.Value
  else
    SQLContasReceber.MacrobyName('MNumerario').Value  := '0=0';

  if ComboPortador.Value <> '' then
    SQLContasReceber.MacrobyName('MPortador').Value   := 'CONTASRECEBER.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasReceber.MacrobyName('MPortador').Value   := '0=0';

    if not CheckCheques.Checked then
    SQLContasReceber.MacrobyName('MCheques').Value    := '(CONTASRECEBER.CTRCA5TIPOPADRAO not in("CHQ","CHQV","CHQP"))'
  else
    SQLContasReceber.MacrobyName('MCheques').Value := '0=0';

  SQLContasReceber.Open ;
  if SQLContasReceber.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  BatchExec(SQLContasReceber, TblTemporaria) ;

{  TblTemporaria.Open ;
  while not TblTemporaria.Eof do
    begin
      TblTemporaria.Edit ;

      if TblTemporariaNOFIA13ID.AsString <> '' then
          TblTemporariaCTRCA13ID.Value := 'NF - ' + SQLLocate('NOTAFISCAL', 'NOFIA13ID','SERIA5COD', '"' + TblTemporariaNOFIA13ID.AsString + '"') + '-' +
                                                    SQLLocate('NOTAFISCAL', 'NOFIA13ID','NOFIINUMERO', '"' + TblTemporariaNOFIA13ID.AsString + '"') ;

      if TblTemporariaPDVDA13ID.AsString <> '' then
          TblTemporariaCTRCA13ID.AsString :='PD - ' + TblTemporariaPDVDA13ID.AsString;

      if TblTemporariaCUPOA13ID.AsString <> '' then
          TblTemporariaCTRCA13ID.AsString :='CP - ' + TblTemporariaCUPOA13ID.AsString;

      if (CheckNroDuplic.Checked) and (TblTemporariaCTRCA30NRODUPLICBANCO.AsString <> '') then
        TblTemporariaCTRCA13ID.AsString := TblTemporariaCTRCA30NRODUPLICBANCO.AsString;

      if (TblTemporariaCTRCA13ID.AsString = '') and (TblTemporariaCTRCA30NRODUPLICBANCO.AsString <> '') then
        TblTemporariaCTRCA13ID.AsString := TblTemporariaCTRCA30NRODUPLICBANCO.AsString;

      TblTemporaria.Post ;

      TblTemporaria.Next ;
    end ;
  TblTemporaria.Close ;}
  if not CheckGrupoCliente.Checked then
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas a Receber Vencidas.rpt'
  else
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas a Receber Vencidas Por Cliente.rpt';

  if CKAgrupSintetico.Checked then
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas a Receber Vencidas Por Cliente Sintetico.rpt';

  Report.ReportTitle       := 'Relatório de Contas a Receber Vencidas' ;
  Report.WindowStyle.Title := 'Relatório de Contas a Receber Vencidas' ;
  Report.Formulas.Retrieve ;
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
  if OrdIDCli.Checked then
    begin
      Report.GroupCondition.Retrieve ;
      Report.GroupCondition.Clear ;
      Report.GroupCondition.Add(1) ;
      Report.GroupCondition.Field  := '{RelContasVencidas.CLIEA13ID}' ;

      Report.SectionFormat.Retrieve ;
      Report.SectionFormat.Section  := 'GH1' ;
      Report.SectionFormat.Suppress := cTrue ;
      Report.SectionFormat.Section  := 'GF1' ;
      Report.SectionFormat.Suppress := cTrue ;
      Report.SectionFormat.Send ;
    end ;

  Report.Execute ;
end;

procedure TFormRelatorioContasReceberVencidas.FormCreate(Sender: TObject);
begin
  inherited ;
  SQLNumerario.Open;
  SQLCliente.Open;
  SQLPortador.Open;
  De.Date  := StrToDate('01/01/' + FormatDateTime('yyyy',Date));
  Ate.Date := Date - 1;
end;

procedure TFormRelatorioContasReceberVencidas.ComboClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
