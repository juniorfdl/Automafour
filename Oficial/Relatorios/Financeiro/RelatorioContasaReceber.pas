unit RelatorioContasaReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelatorioTemplate, Placemnt, Db, DBTables, ComCtrls, RxLookup,
  StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, jpeg, OleCtrls,
  RxQuery, ImgList, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioContasaReceber = class(TFormRelatorioTEMPLATE)
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    GroupBox2: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    SQLContasReceber: TRxQuery;
    Report: TCrpe;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCA13ID: TStringField;
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
    TblTemporariaNUMEICOD: TIntegerField;
    GroupBox3: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLCliente: TQuery;
    DSSQLCliente: TDataSource;
    CheckNroDuplic: TCheckBox;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    TblTemporariaCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberCUPOA30NSUINSTITUICAO: TStringField;
    TblTemporariaCUPOA30NSUINSTITUICAO: TStringField;
    CKDadosCartoes: TCheckBox;
    SQLContasReceberNUMEA30DESCR: TStringField;
    TblTemporariaNUMEA30DESCR: TStringField;
    GroupBox4: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    SQLVendedor: TQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    GroupBox5: TGroupBox;
    ComboTipoCliente: TRxDBLookupCombo;
    SQLTipoCliente: TQuery;
    DSTipoCliente: TDataSource;
    SQLTipoClienteTPCLICOD: TIntegerField;
    SQLTipoClienteTPCLA30DESCR: TStringField;
    SQLContasReceberTPCLICOD: TIntegerField;
    CkMostrarCheques: TCheckBox;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    TblTemporariaCTRCA5TIPOPADRAO: TStringField;
    TblTemporariaCTRCA15NROCHQ: TStringField;
    TblTemporariaTPCLICOD: TIntegerField;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    DSSQLPlanoContas: TDataSource;
    GroupBox6: TGroupBox;
    ComboConta: TRxDBLookupCombo;
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
  FormRelatorioContasaReceber: TFormRelatorioContasaReceber;

implementation

uses UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormRelatorioContasaReceber.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLContasReceber.Close ;
  SQLContasReceber.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CONTASRECEBER', '') ;
  SQLContasReceber.MacrobyName('MData').Value    := 'CONTASRECEBER.CTRCDVENC >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                    'CONTASRECEBER.CTRCDVENC <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  if ComboCliente.Text <> '' then
    SQLContasReceber.MacrobyName('MCliente').Value := 'CONTASRECEBER.CLIEA13ID = ' + '"' + ComboCliente.KeyValue + '"'
  else
    SQLContasReceber.MacrobyName('MCliente').Value := '0=0';

  if ComboNumerario.Text <> '' then
    SQLContasReceber.MacrobyName('MNumerario').Value := 'CONTASRECEBER.NUMEICOD = ' + ComboNumerario.KeyValue
  else
    SQLContasReceber.MacrobyName('MNumerario').Value := '0=0';

  if ComboVendedor.Text <> '' then
    SQLContasReceber.MacrobyName('MVendedor').Value := 'Cupom.VENDICOD = ' + ComboVendedor.KeyValue
  else
    SQLContasReceber.MacrobyName('MVendedor').Value := '0=0';

  if ComboTipoCliente.Text <> '' then
    SQLContasReceber.MacrobyName('MTipoCliente').Value := 'CLIENTE.TPCLICOD = ' + ComboTipoCliente.KeyValue
  else
    SQLContasReceber.MacrobyName('MTipoCliente').Value := '0=0';

  if not CkMostrarCheques.Checked then
    SQLContasReceber.MacrobyName('MCheq').Value := 'CONTASRECEBER.CTRCA5TIPOPADRAO not in("CHQ","CHQV","CHQP")'
  else
    SQLContasReceber.MacrobyName('MCheq').Value := '0=0';

  if ComboConta.Value <> '' then
    SQLContasReceber.MacrobyName('MConta').Value := 'CONTASRECEBER.PLCTA15COD = "'+ ComboConta.Value + '"'
  else
    SQLContasReceber.MacrobyName('MConta').Value := '0=0';

  SQLContasReceber.Open ;
  if SQLContasReceber.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

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
          TblTemporariaCTRCA13ID.AsString := TblTemporariaPDVDA13ID.AsString;
        end;
      if TblTemporariaCUPOA13ID.AsString <> '' then
        begin
          TblTemporariaCTRCA13ID.AsString := TblTemporariaCUPOA13ID.AsString;
        end;

      if (CheckNroDuplic.Checked) and (TblTemporariaCTRCA30NRODUPLICBANCO.AsString <> '') then
        TblTemporariaCTRCA13ID.AsString := TblTemporariaCTRCA30NRODUPLICBANCO.AsString;

      TblTemporaria.Post;

      TblTemporaria.Next;
    end;

  TblTemporaria.Close;
  if not CKDadosCartoes.Checked then
    begin
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas a Receber.rpt';
      Report.ReportTitle       := 'Relatório de Contas à Receber';
      Report.WindowStyle.Title := 'Relatório de Contas à Receber';
    end
  else
    begin
      Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Contas a Receber Dados Cartao Credito.rpt';
      Report.ReportTitle       := 'Relatório de Contas à Receber com dados do cartão de crédito';
      Report.WindowStyle.Title := 'Relatório de Contas à Receber com dados do cartão de crédito';
    end;
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"';

  //AjustaCaminhoCrystal;
  Report.Execute ;
end;

procedure TFormRelatorioContasaReceber.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLNumerario.Active then SQLNumerario.Open ;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLVendedor.Active then SQLVendedor.Open;
  if not SQLTipoCliente.Active then SQLTipoCliente.Open;
  if not SQLPlanoContas.Active then SQLPlanoContas.Open;

  De.Date  := Date + 1 ;
  Ate.Date := Date + 1 ;
end;

procedure TFormRelatorioContasaReceber.ComboClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);                                                                                         
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.

