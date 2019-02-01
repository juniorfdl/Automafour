unit CadastroContasReceber;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit, VarSYS,
  FormResources, RXDBCtrl, DBActns, ActnList, ImgList, ToolWin, ActnMan,
  ActnCtrls, ActnMenus, EDBNum, RxLookup, RxDBComb, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel, ppStrtch, ppMemo, Placemnt, MaskEdEx;

type
  TFormCadastroContasReceber = class(TFormCadastroTEMPLATE)
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateEMPRICODULTREC: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCTRCICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCTRCINROPARC: TIntegerField;
    SQLTemplateCTRCDVENC: TDateTimeField;
    SQLTemplateCTRCN2VLR: TFloatField;
    SQLTemplateCTRCN2DESCFIN: TFloatField;
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplateCTRCN2TXJURO: TFloatField;
    SQLTemplateCTRCN2TXMULTA: TFloatField;
    SQLTemplateCTRCA5TIPOPADRAO: TStringField;
    SQLTemplateCTRCDULTREC: TDateTimeField;
    SQLTemplateCTRCN2TOTREC: TFloatField;
    SQLTemplateCTRCN2TOTJUROREC: TFloatField;
    SQLTemplateCTRCN2TOTMULTAREC: TFloatField;
    SQLTemplateCTRCN2TOTDESCREC: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateEmpresaUltRecCalcField: TStringField;
    SQLTemplateTerminalCalcField: TStringField;
    SQLTemplateClienteCalcField: TStringField;
    SQLTemplateNumerarioCalcField: TStringField;
    SQLTemplatePortadorCalcField: TStringField;
    SQLTemplateTipoDocumentoCalcField: TStringField;
    SQLTemplatePlanodeContasCalcField: TStringField;
    SQLTemplateEmpresaDestCalcField: TStringField;
    SQLTemplateCTRCA30NRODUPLICBANCO: TStringField;
    GroupHistRecto: TGroupBox;
    DBGrid1: TDBGrid;
    SQLRecebimento: TQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TFloatField;
    SQLRecebimentoRECEN2VLRJURO: TFloatField;
    SQLRecebimentoRECEN2VLRMULTA: TFloatField;
    SQLRecebimentoRECEN2DESC: TFloatField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    DSSQLRecebimento: TDataSource;
    SQLRecebimentoSaldoCalcField: TFloatField;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateCTRCDEMIS: TDateTimeField;
    SQLTemplateCTRCCSTATUS: TStringField;
    Label1: TLabel;
    BtnEmpresa: TSpeedButton;
    Label2: TLabel;
    BtnCliente: TSpeedButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label10: TLabel;
    Label4: TLabel;
    DBEdit4: TDBDateEdit;
    Label5: TLabel;
    EditValor: TEvDBNumEdit;
    Label9: TLabel;
    DBEdit13: TDBEdit;
    Geraroutrolanamentoapartirdodocumentoatual1: TMenuItem;
    SQLEspelhoNovoLanc: TRxQuery;
    SQLEspelhoNovoLancCTRCA13ID: TStringField;
    SQLEspelhoNovoLancEMPRICOD: TIntegerField;
    SQLEspelhoNovoLancTERMICOD: TIntegerField;
    SQLEspelhoNovoLancCLIEA13ID: TStringField;
    SQLEspelhoNovoLancCTRCCSTATUS: TStringField;
    SQLEspelhoNovoLancCTRCINROPARC: TIntegerField;
    SQLEspelhoNovoLancCTRCDVENC: TDateTimeField;
    SQLEspelhoNovoLancCTRCN2VLR: TFloatField;
    SQLEspelhoNovoLancCTRCN2DESCFIN: TFloatField;
    SQLEspelhoNovoLancNUMEICOD: TIntegerField;
    SQLEspelhoNovoLancPORTICOD: TIntegerField;
    SQLEspelhoNovoLancCTRCN2TXJURO: TFloatField;
    SQLEspelhoNovoLancCTRCN2TXMULTA: TFloatField;
    SQLEspelhoNovoLancCTRCA5TIPOPADRAO: TStringField;
    SQLEspelhoNovoLancCUPOA13ID: TStringField;
    SQLEspelhoNovoLancTPDCICOD: TIntegerField;
    SQLEspelhoNovoLancPLCTA15COD: TStringField;
    SQLEspelhoNovoLancCTRCA30NRODUPLICBANCO: TStringField;
    SQLEspelhoNovoLancCTRCDEMIS: TDateTimeField;
    SQLTemplateTipoPadraoCalcField: TStringField;
    Label12: TLabel;
    DBEdit15: TDBEdit;
    SQLRecebimentoEmpresaLookup: TStringField;
    SQLTemplateCTRCA254HIST: TStringField;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLTipoDocumento: TRxQuery;
    DSSQLTipoDocumento: TDataSource;
    SQLConta: TRxQuery;
    DSSQLConta: TDataSource;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    PanelPesquisa: TPanel;
    ComboCliente: TRxDBLookupCombo;
    ComboConta: TRxDBLookupCombo;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboPortador: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SQLTemplateDUPLA13ID: TStringField;
    SQLTemplateHTPDICOD: TIntegerField;
    SQLTemplateHistoricoPadraoCalcField: TStringField;
    SQLTemplatePLCTA15CODDEBITO: TStringField;
    SQLTemplatePlanodeContasDebitoCalcField: TStringField;
    SQLEspelhoNovoLancCTRCA254HIST: TStringField;
    SQLEspelhoNovoLancHTPDICOD: TIntegerField;
    SQLEspelhoNovoLancPLCTA15CODDEBITO: TStringField;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCN2TOTJUROREC: TFloatField;
    SQLContasReceberCTRCN2TOTMULTAREC: TFloatField;
    SQLContasReceberCTRCN2TOTDESCREC: TFloatField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    DSSQLContasReceber: TDataSource;
    SQLTemplateCTRCN2TOTMULTACOBR: TFloatField;
    SQLTemplateCTRCDREABILSPC: TDateTimeField;
    SQLTemplateBANCA5CODCHQ: TStringField;
    SQLTemplateCTRCA10AGENCIACHQ: TStringField;
    SQLTemplateCTRCA15CONTACHQ: TStringField;
    SQLTemplateCTRCA15NROCHQ: TStringField;
    SQLTemplateCTRCA60TITULARCHQ: TStringField;
    SQLTemplateCTRCA20CGCCPFCHQ: TStringField;
    SQLTemplateCTRCDDEPOSCHQ: TDateTimeField;
    SQLTemplateALINICOD: TIntegerField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateCTRCDESTORNO: TDateTimeField;
    SQLTemplateFRETA13ID: TStringField;
    SQLTemplateCOBRA13ID: TStringField;
    SQLTemplateCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    SQLTemplateAVALA13ID: TStringField;
    DSSQLAvalista: TDataSource;
    SQLAvalista: TRxQuery;
    SQLAvalistaAVALA13ID: TStringField;
    SQLAvalistaAVALA60RAZAOSOC: TStringField;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    ComboEmpresa: TRxDBLookupCombo;
    ComboClienteCad: TRxDBLookupCombo;
    SQLAvalistaAVALA60CIDRES: TStringField;
    SQLTemplateCTRCCTIPOREGISTRO: TStringField;
    SQLEspelhoNovoLancAVALA13ID: TStringField;
    SQLEspelhoNovoLancCTRCCTIPOREGISTRO: TStringField;
    SQLEspelhoNovoLancDUPLA13ID: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    PanelHistPadrao: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    DBEditHistoricoPadrao: TDBEdit;
    BtnHistorico: TSpeedButton;
    MemoHistorico: TDBMemo;
    SQLRecebimentoCTRCA13IDCREDITO: TStringField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLTemplateCTRCCTEMREGRECEBER: TStringField;
    SQLTemplateCONTA13ID: TStringField;
    SQLTemplateCTRCA13CTRCAIDCHQ: TStringField;
    SQLTemplateCTRCCEMITIDOBOLETO: TStringField;
    DBEdit1: TDBEdit;
    Panel7: TPanel;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GerarMultiplosLanctos: TMenuItem;
    Label8: TLabel;
    ComboPortadorCad: TRxDBLookupCombo;
    RetornaPortador: TSpeedButton;
    RetornaTipoDoc: TSpeedButton;
    ComboTipoDocCad: TRxDBLookupCombo;
    Label7: TLabel;
    Label19: TLabel;
    ComboCompetenciaMes: TRxDBComboBox;
    ComboAno: TRxDBComboBox;
    SQLTemplateCTRCA2MESCOMP: TStringField;
    SQLTemplateCTRCA4ANOCOMP: TStringField;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    MostrarLancSemPlanoContas: TMenuItem;
    RxDBComboBox1: TRxDBComboBox;
    Label6: TLabel;
    SQLRecebimentoTPLQICOD: TIntegerField;
    SQLRecebimentoNUMEICOD: TIntegerField;
    Label14: TLabel;
    ComboStatus: TRxDBComboBox;
    mnNotaPromissoria: TMenuItem;
    ppPromissoria: TppReport;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppVencimento: TppLabel;
    ppLabel4: TppLabel;
    ppNomeCNPJEmpresa: TppLabel;
    ppCidadeEmpresa: TppLabel;
    ppNomeCliente: TppLabel;
    ppCPFCliente: TppLabel;
    ppLine1: TppLine;
    ppLogo: TppImage;
    ppValor: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    N1: TMenuItem;
    MnAssistenteLancContratosMensais: TMenuItem;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoUSUAICOD: TIntegerField;
    SQLTemplateCTRCA15NOSSONUMERO: TStringField;
    Label15: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    ppRecibo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppVencimentoRecibo: TppLabel;
    ppLabel7: TppLabel;
    ppNomeCNPJEmpresaRecibo: TppLabel;
    ppCidadeEmpresaRecibo: TppLabel;
    ppNomeClienteRecibo: TppLabel;
    ppCPFClienteRecibo: TppLabel;
    ppLogoRecibo: TppImage;
    ppValorRecibo: TppLabel;
    ppDetailBand2: TppDetailBand;
    MnRecibo: TMenuItem;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppVencimentoRecibo1: TppLabel;
    ppLabel10: TppLabel;
    ppNomeCNPJEmpresaRecibo1: TppLabel;
    ppCidadeEmpresaRecibo1: TppLabel;
    ppNomeClienteRecibo1: TppLabel;
    ppCPFClienteRecibo1: TppLabel;
    ppLogoRecibo1: TppImage;
    ppValorRecibo1: TppLabel;
    ppHistoricoRecibo: TppMemo;
    ppHistoricoRecibo1: TppMemo;
    ckImprimeMesReferencia: TCheckBox;
    DBEdit7: TDBEdit;
    RetornaPlanoContas: TSpeedButton;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    ppMesReferencia: TppLabel;
    ppMesReferencia1: TppLabel;
    FormStorage: TFormStorage;
    Label18: TLabel;
    DBEdit5: TDBEdit;
    CorrigeTotalRecebidoSafe1: TMenuItem;
    SQLTemplateLOTEREMESSABANCO: TIntegerField;
    DBEdit6: TDBEdit;
    Label20: TLabel;
    SQLTemplateCTRCN2VLRTAXA: TFloatField;
    SQLContasReceberCODIGOBARRA: TStringField;
    Label21: TLabel;
    DBEdit10: TDBEdit;
    SQLTemplateCODIGOBARRA: TStringField;
    edtJuros: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    edtMulta: TDBEdit;
    Label24: TLabel;
    DBEdit12: TDBEdit;
    SQLTemplateNSU: TStringField;
    SQLTemplateAUTORIZACAO: TIntegerField;
    SQLTemplateTAXA_OPERADORA: TFloatField;
    SQLTemplateVALOR_LIQUIDO: TFloatField;
    Label25: TLabel;
    DBEdit14: TDBEdit;
    Label26: TLabel;
    DBEdit16: TDBEdit;
    Label27: TLabel;
    DBEdit17: TDBEdit;
    Label28: TLabel;
    DBDateEdit2: TDBDateEdit;
    SQLTemplateDATA_PREVISTA: TDateTimeField;
    SQLTemplatePREVISTO: TStringField;
    DBCheckBox1: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure BtnClienteClick(Sender: TObject);
    procedure RetornaTipoDocClick(Sender: TObject);
    procedure RetornaPortadorClick(Sender: TObject);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure Geraroutrolanamentoapartirdodocumentoatual1Click(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SQLTemplateNUMEICODChange(Sender: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure BtnEmpresaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateHTPDICODChange(Sender: TField);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure DBEditHistoricoPadraoExit(Sender: TObject);
    procedure DBEditHistoricoPadraoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboEmpresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboClienteCadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboTipoDocCadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboPortadorCadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure GerarMultiplosLanctosClick(Sender: TObject);
    procedure MostrarLancSemPlanoContasClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DBEdit4Exit(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure mnNotaPromissoriaClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MnAssistenteLancContratosMensaisClick(Sender: TObject);
    procedure MnReciboClick(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure CorrigeTotalRecebidoSafe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SQLTemplateTPDCICODChange(Sender: TField);
  private
    Replicando: Boolean;
    function Estorna: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroContasReceber: TFormCadastroContasReceber;

implementation

uses
  CadastroCliente, DataModulo, CadastroTipoDocumento, CadastroPlanodeContas,
  CadastroPortador, TelaConsultaNumerario, TelaConsultaEmpresa,
  TelaConsultaPlanoContas, UnitLibrary, CadastroHistoricoPadrao,
  TelaConsultaRecebimento, WaitWindow, TelaDadosReplicacaoContasReceber,
  CadastroAvalista, DataModuloTemplate, TelaAssistenteLancamentoContasReceber,
  TelaBaixaContasReceberAVista, TelaAssistenteContratosMensais, TelaSplash;

{$R *.DFM}

procedure TFormCadastroContasReceber.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONTASRECEBER';
  SQLRecebimento.Open;
  SQLCliente.Open;
  SQLConta.Open;
  SQLTipoDocumento.Open;
  SQLPortador.Open;
  Replicando := False;

  if not dm.SQLConfigGeral.Active then
    dm.SQLConfigGeral.Open;
  if not dm.SQLConfigCrediario.Active then
    dm.SQLConfigCrediario.Open;

end;

procedure TFormCadastroContasReceber.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  //EMPRESA
  if DataSet.FieldByName('EMPRICOD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('EMPRESA', ['EMPRICOD'], [DataSet.FieldByName('EMPRICOD').AsString], 1) then
      DataSet.FieldByName('EmpresaDestCalcField').AsVariant := DM.SQLTemplate.FindField('EMPRA60RAZAOSOC').AsVariant
    else
      DataSet.FieldByName('EmpresaDestCalcField').asString := MensagemLookUp;
  end
  else
    DataSet.FieldByName('EmpresaDestCalcField').AsVariant := Null;
  //CLIENTE
  if DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('CLIENTE', ['CLIEA13ID'], [DataSet.FieldByName('CLIEA13ID').AsString], 1) then
      DataSet.FieldByName('ClienteCalcField').AsVariant := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant
    else
      DataSet.FieldByName('ClienteCalcField').asString := MensagemLookUp;
  end
  else
    DataSet.FieldByName('ClienteCalcField').AsVariant := Null;
  //PLANO CONTAS CREDITO
  if DataSet.FieldByName('PLCTA15COD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('PLANODECONTAS', ['PLCTA15COD'], [DataSet.FieldByName('PLCTA15COD').AsString], 1) then
      DataSet.FieldByName('PlanodeContasCalcField').AsVariant := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
    else
      DataSet.FieldByName('PlanodeContasCalcField').asString := MensagemLookUp;
  end
  else
    DataSet.FieldByName('PlanodeContasCalcField').AsVariant := Null;

  //PLANO CONTAS DEBITO
  if DataSet.FieldByName('PLCTA15CODDEBITO').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('PLANODECONTAS', ['PLCTA15COD'], [DataSet.FieldByName('PLCTA15CODDEBITO').AsString], 1) then
      DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
    else
      DataSet.FieldByName('PlanodeContasDebitoCalcField').asString := MensagemLookUp;
  end
  else
    DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant := Null;

  //TIPO DOCUMENTO
  if DataSet.FieldByName('TPDCICOD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('TIPODOCUMENTO', ['TPDCICOD'], [DataSet.FieldByName('TPDCICOD').AsString], 1) then
      DataSet.FieldByName('TipoDocumentoCalcField').AsVariant := DM.SQLTemplate.FindField('TPDCA60DESCR').AsVariant
    else
      DataSet.FieldByName('TipoDocumentoCalcField').asString := MensagemLookUp;
  end
  else
    DataSet.FieldByName('TipoDocumentoCalcField').AsVariant := Null;
  //PORTADOR
  if DataSet.FieldByName('PORTICOD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('PORTADOR', ['PORTICOD'], [DataSet.FieldByName('PORTICOD').AsString], 1) then
      DataSet.FieldByName('PortadorCalcField').AsVariant := DM.SQLTemplate.FindField('PORTA60DESCR').AsVariant
    else
      DataSet.FieldByName('PortadorCalcField').asString := MensagemLookUp;
  end
  else
    DataSet.FieldByName('PortadorCalcField').AsVariant := Null;

{  //NUMERARIO
   if DataSet.FieldByName('NUMEICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[DataSet.FieldByName('NUMEICOD').AsString],1) Then
        begin
          DataSet.FieldByName('NumerarioCalcField').AsVariant  := DM.SQLTemplate.FindField('NUMEA30DESCR').AsVariant ;
          DataSet.FieldByName('TipoPadraoCalcField').AsVariant := DM.SQLTemplate.FindField('NUMEA5TIPO').AsVariant ;
        end
      else
        DataSet.FieldByName('NumerarioCalcField').asString := MensagemLookUp ;
    end
  else
     DataSet.FieldByName('NumerarioCalcField').AsVariant  := Null;}
  //HISTORICO PADRAO
  if DataSet.FieldByName('HTPDICOD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('HISTORICOPADRAO', ['HTPDICOD'], [DataSet.FieldByName('HTPDICOD').AsString], 1) then
      DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant := DM.SQLTemplate.FindField('HTPDA100HISTORICO').AsVariant
    else
      DataSet.FieldByName('HistoricoPadraoCalcField').asString := MensagemLookUp;
  end
  else
    DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant := Null;

end;

procedure TFormCadastroContasReceber.BtnClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  DataSetLookup := SQLCliente;
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente', False, True, False, '');
end;

procedure TFormCadastroContasReceber.RetornaTipoDocClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPDCICOD');
  DataSetLookup := SQLTipoDocumento;
  FieldOrigem := 'TPDCICOD';
  CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento', False, True, True, '');
end;

procedure TFormCadastroContasReceber.RetornaPortadorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PORTICOD');
  DataSetLookup := SQLPortador;
  FieldOrigem := 'PORTICOD';
  CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador', False, True, True, '');
end;

procedure TFormCadastroContasReceber.RetornaPlanoContasClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas', False, True, True, 'Contas à Receber');
end;

procedure TFormCadastroContasReceber.Geraroutrolanamentoapartirdodocumentoatual1Click(Sender: TObject);
var
  PosicaoInicial: TBookmark;
  i, Rows: integer;
begin
  inherited;
  try
    Application.CreateForm(TFormTelaDadosReplicacaoContasReceber, FormTelaDadosReplicacaoContasReceber);
    FormTelaDadosReplicacaoContasReceber.ShowModal;
    if FormTelaDadosReplicacaoContasReceber.ModalResult = Mrok then
    begin
      SQLEspelhoNovoLanc.Close;
      SQLEspelhoNovoLanc.MacroByName('MFiltro').Value := 'CTRCA13ID = ''' + SQLTemplateCTRCA13ID.Value + '''';
      SQLEspelhoNovoLanc.Open;

      SQLTemplate.Append;
      for i := 0 to SQLEspelhoNovoLanc.FieldCount - 1 do
        if (SQLEspelhoNovoLanc.Fields[i].FieldName <> 'CTRCA13ID') then
        begin
          if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTRCINROPARC') then
            SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsInteger + 1
          else if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTRCDEMIS') then
            SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).AsString := FormatDateTime('dd/mm/yyyy', Now)
          else if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTRCDVENC') then
            SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).AsString := FormatDateTime('dd/mm/yyyy', IncMonth(SQLEspelhoNovoLanc.Fields[i].AsDateTime, 1))
          else
            SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant;
        end;

      if FormTelaDadosReplicacaoContasReceber.EditNroDuplic.Text <> '' then
        SQLTemplateCTRCA30NRODUPLICBANCO.AsString := UpperCase(FormTelaDadosReplicacaoContasReceber.EditNroDuplic.Text);

      if FormTelaDadosReplicacaoContasReceber.MemoHist.Lines.Text <> '' then
        SQLTemplateCTRCA254HIST.AsString := UpperCase(FormTelaDadosReplicacaoContasReceber.MemoHist.Lines.Text);

        {limpar campo nosso numero para ao gerar boleto no futuro o sistema nao colocar o mesmo nro de nosso nro em contas diferentes}
      SQLTemplateCTRCA15NOSSONUMERO.AsString := '';
    end
    else
      Informa('Operação Cancelada!');
  except
    on E: Exception do
    begin
      Informa('Problemas ao replicar lançamentos. ANOTE O ERRO: ' + #13 + E.Message);
      DestroyWindow;
    end;
  end;
end;

procedure TFormCadastroContasReceber.DBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click;
end;

procedure TFormCadastroContasReceber.SQLTemplateNUMEICODChange(Sender: TField);
begin
  inherited;
  SQLTemplateCTRCA5TIPOPADRAO.AsVariant := SQLTemplateTipoPadraoCalcField.AsVariant;
end;

procedure TFormCadastroContasReceber.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CTRCN2VLR').Value := 0;
  DataSet.FieldByName('CTRCN2DESCFIN').Value := 0;
  DataSet.FieldByName('CTRCN2TOTREC').Value := 0;
  DataSet.FieldByName('CTRCN2TOTJUROREC').Value := 0;
  DataSet.FieldByName('CTRCN2TOTMULTAREC').Value := 0;
  DataSet.FieldByName('CTRCN2TOTDESCREC').Value := 0;
  DataSet.FieldByName('CTRCCSTATUS').Value := 'A';
//  DataSet.FieldByName('CTRCDEMIS').Value := DM.DataBaseSistema;
  DataSet.FieldByName('CTRCDEMIS').Value := Date;
  DataSet.FieldByName('CTRCA5TIPOPADRAO').Value := 'CRD';
  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  DataSet.FieldByName('CTRCCTIPOREGISTRO').Value := 'N';
  DataSet.FieldByName('CTRCCEMITIDOBOLETO').Value := 'N';

  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').AsFloat > 0 then
    DataSet.FindField('CTRCN2TXMULTA').Value := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value
  else
    DataSet.FindField('CTRCN2TXMULTA').Value := 0;

  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').AsFloat > 0 then
    DataSet.FindField('CTRCN2TXJURO').Value := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value
  else
    DataSet.FindField('CTRCN2TXJURO').Value := 0;
  SQLTemplateCTRCA2MESCOMP.Value := FormatDateTime('MM', Date);
  SQLTemplateCTRCA4ANOCOMP.Value := FormatDateTime('YYYY', Date);
end;

procedure TFormCadastroContasReceber.BtnEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa, 'FormTelaConsultaEmpresa', False, True, True, '');
end;

procedure TFormCadastroContasReceber.SpeedButton1Click(Sender: TObject);
var
  Clausula: string;
  CampoOrdem: TField;
begin
  inherited;
  Clausula := '';
  if ComboCliente.Value <> '' then
    Clausula := 'CLIEA13ID = ''' + ComboCliente.Value + ''' ';

  if (ComboConta.Value <> '') and (Clausula <> '') then
    Clausula := Clausula + ' AND PLCTA15COD = ''' + ComboConta.Value + ''''
  else if (Clausula = '') and (ComboConta.Value <> '') then
    Clausula := 'PLCTA15COD = ''' + ComboConta.Value + '''';

  if (ComboTipoDoc.Value <> '') and (Clausula <> '') then
    Clausula := Clausula + ' AND TPDCICOD = ' + ComboTipoDoc.Value
  else if (Clausula = '') and (ComboTipoDoc.Value <> '') then
    Clausula := 'TPDCICOD = ' + ComboTipoDoc.Value;

  if (ComboPortador.Value <> '') and (Clausula <> '') then
    Clausula := Clausula + ' AND  PORTICOD = ' + ComboPortador.Value
  else if (Clausula = '') and (ComboPortador.Value <> '') then
    Clausula := 'PORTICOD = ' + ComboPortador.Value;

  EditProcura.Text := '';
  EditEntre.Text := '';
  EditE.Text := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate, ComboOrder.Text));
  if Clausula <> '' then
  begin
    SQLTemplate.Close;
    if Pos('ORDER BY', TRxQuery(SQLTemplate).SQL.Text) <> 0 then
    begin
      TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text, 1, Pos('ORDER BY', TRxQuery(SQLTemplate).SQL.Text) - 1));
    end;
    SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
    SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
    SQLTemplate.Open;
  end
  else
    Informa('Pesquisa incomleta, verifique!');
end;

procedure TFormCadastroContasReceber.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  ComboCliente.Value := '';
  ComboConta.Value := '';
  ComboTipoDoc.Value := '';
  ComboPortador.Value := '';
end;

procedure TFormCadastroContasReceber.ComboClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
        (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroContasReceber.DSTemplateDataChange(Sender: TObject; Field: TField);
begin
  inherited;
//  EditValor.Enabled := (SQLTemplate.FieldByName('DUPLA13ID').AsVariant = Null) and (SQLRecebimento.IsEmpty) ;
end;

procedure TFormCadastroContasReceber.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  if SQLTemplateCTRCN2TOTREC.Value > 0 then
  begin
    Informa('Você não pode excluir esta parcela, existem recebimentos referentes à ela.' + #13 + 'Se necessário estorne o(s) Recebimento(s) e após efetue a Exclusão.');
    Abort;
  end;
  //DM.RegistraExclusao('RECEBIMENTO',TRxQuery(SQLRecebimento));
  try
    AtualizaTotaisCabecalhoContasReceber(SQLRecebimentoCTRCA13ID.AsString);
  except
    on E: Exception do
      Informa('Problemas ao estornar parcela, anote o ERRO: ' + #13 + E.Message);
  end;
  inherited;
end;

procedure TFormCadastroContasReceber.SQLTemplateHTPDICODChange(Sender: TField);
begin
  inherited;
  //HISTORICO PADRAO
  if DSTemplate.DataSet.FieldByName('HTPDICOD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('HISTORICOPADRAO', ['HTPDICOD'], [DSTemplate.DataSet.FieldByName('HTPDICOD').AsString], 1) then
    begin
      DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant := DM.SQLTemplate.FindField('HTPDA100HISTORICO').AsVariant;
      if (DSTemplate.DataSet.State in DsEditModes) then
        DSTemplate.DataSet.FieldByName('CTRCA254HIST').AsVariant := DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant;
    end
    else
      DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').asString := MensagemLookUp;
  end
  else
    DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant := Null;
end;

procedure TFormCadastroContasReceber.BtnHistoricoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := 'C';
  CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao', False, True, True, 'Contas à Receber');
end;

procedure TFormCadastroContasReceber.DBEditHistoricoPadraoExit(Sender: TObject);
var
  Tam: Integer;
begin
  inherited;
  if DBEditHistoricoPadrao.Text <> '' then
  begin
    MemoHistorico.SetFocus;
    Tam := Length(MemoHistorico.Text) + 2;
    MemoHistorico.SelStart := Tam;
  end;
end;

procedure TFormCadastroContasReceber.DBEditHistoricoPadraoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnHistorico.Click;
end;

procedure TFormCadastroContasReceber.DBGrid1DblClick(Sender: TObject);
var
  RetornoUsuario: TInfoRetornoUser;
begin
  inherited;
  if SQLRecebimento.IsEmpty then
    Exit;

  if not UsuarioMaster then
  begin
    if AutenticaUsuario(UsuarioAtualNome, 'USUACUSERMASTER', RetornoUsuario) = 'S' then
    begin
      DSMasterSys := DSSQLRecebimento;
      Application.CreateForm(TFormTelaConsultaRecebimento, FormTelaConsultaRecebimento);
      FormTelaConsultaRecebimento.ShowModal;
      DSMasterSys := Nil;
      SQLRecebimento.Close;
      SQLRecebimento.Open;
    end
    else
      Informa('Você não tem permissão para acessar essa tela, somente um usuário master do sistema terá acesso!');
  end
  else
  begin
    DSMasterSys := DSSQLRecebimento;
    Application.CreateForm(TFormTelaConsultaRecebimento, FormTelaConsultaRecebimento);
    FormTelaConsultaRecebimento.ShowModal;
    DSMasterSys := Nil;
    SQLRecebimento.Close;
    SQLRecebimento.Open;
  end;
end;

procedure TFormCadastroContasReceber.SQLContasReceberBeforePost(DataSet: TDataSet);
begin
  inherited;
  SQLContasReceberEMPRICOD.AsInteger := EmpresaCorrente;
  SQLContasReceberTERMICOD.AsInteger := TerminalCorrente;
  SQLContasReceberPENDENTE.AsString := 'S';
  SQLContasReceberREGISTRO.AsDateTime := Now;
  if SQLContasReceber.State in [DsInsert] then
    DM.CodigoAutomatico('CONTASRECEBER', DSTemplate, SQLContasReceber, 3, 0);
end;

procedure TFormCadastroContasReceber.SQLContasReceberPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
  ID: string;
begin
  inherited;
  SQLContasReceberEMPRICOD.AsInteger := EmpresaCorrente;
  SQLContasReceberTERMICOD.AsInteger := TerminalCorrente;
  SQLContasReceberPENDENTE.AsString := 'S';
  SQLContasReceberREGISTRO.AsDateTime := Now;
  DataSet.FieldByName('CTRCICOD').AsInteger := DataSet.FieldByName('CTRCICOD').AsInteger + 1;
  ID := Format('%.3d', [EmpresaCorrente]) + Format('%.3d', [TerminalCorrente]) + Format('%.6d', [DataSet.FieldByName('CTRCICOD').asInteger]);
  DataSet.FieldByName('CTRCA13ID').asString := ID + DM.DigitVerifEAN(ID);
  Action := DaRetry;
end;

procedure TFormCadastroContasReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DataSetLookup <> nil then
    DataSetLookup := Nil;
end;

procedure TFormCadastroContasReceber.ComboEmpresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
  if Key = VK_F2 then
    BtnEmpresa.Click;
end;

procedure TFormCadastroContasReceber.ComboClienteCadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    BtnCliente.Click;
end;

procedure TFormCadastroContasReceber.ComboTipoDocCadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    RetornaTipoDoc.Click;
end;

procedure TFormCadastroContasReceber.ComboPortadorCadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    RetornaPortador.Click;

end;

procedure TFormCadastroContasReceber.FormActivate(Sender: TObject);
begin
  inherited;
  SQLRecebimento.Close;
  SQLRecebimento.Open;
end;

procedure TFormCadastroContasReceber.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not SQLRecebimento.IsEmpty then
    if Column.Field = Nil then
    begin
      DBGrid1.Canvas.Brush.Color := clBtnFace;
      DBGrid1.Canvas.Font.Color := clBtnText;
      DrawFrameControl(DBGrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH);
      DBGrid1.Canvas.TextOut(Rect.Left + 5, Rect.Top + 1, 'Estornar...');
    end;
end;

function TFormCadastroContasReceber.Estorna: Boolean;
var
  StID, StValor: string;

  procedure FimEstorno;
  begin
    if Result then
    try
      StID := SQLRecebimento.Bookmark;
      SQLTemplate.Edit;
      SQLTemplateCTRCCSTATUS.AsString := 'A';
      SQLTemplate.Post;
      SQLRecebimento.Close;
      SQLRecebimento.Open;
      SQLRecebimento.Bookmark := StID;
      if not SQLRecebimento.IsEmpty then
        SQLRecebimento.Delete;
      AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);
    except
    end;
    SQLCount.RequestLive := False;
  end;

begin
  try
    Result := False;
     //Verifica e Estorna Recebimentos feitos com BANCO;
    SQLCount.Close;
    SQLCount.RequestLive := True;
    SQLCount.SQL.Text := 'select * from MOVIMENTOBANCO where CTRCA13ID = ''' + SQLTemplateCTRCA13ID.AsString + ''' and ' + 'MVBCDLANC = ''' + FormatDateTime('mm/dd/yyyy', SQLRecebimentoRECEDRECTO.AsDateTime) + ''''; // and ' +
                          //'(MVBCCSTATUS <> ''E'' or MVBCCSTATUS is Null) ';
    SQLCount.Open;

    if SQLCount.RecordCount > 0 then
    begin
      if DM.SQLConfigFinanceiro.FieldByName('OPBCICODESTORNOCRD').IsNull then
        InformaErro('É necessário Configurar uma Operação Bancária de Estorno ''Crédito'' para o Contas A Receber no Configurador', True, Nil);

      if not Pergunta('Sim', 'Deseja Criar um Lançamento de Crédito no ''MOVIMENTO BANCÁRIO'' Valor de R$ ' + FormatFloat('#,##0.00', SQLCount.FieldByName('MVBCN2VLRCRED').AsFloat) + ' referente o Estorno do Recebimento de ID : ''' + SQLRecebimentoCTRCA13ID.AsString + '''?' + #13 + 'Clique ''SIM'' para Continuar e ''NÃO'' para Cancelar o Estorno.') then
        Abort;

      LancaMovimentacaoBanco(SQLTemplateEMPRICOD.AsInteger, SQLCount.FieldByName('CTCRICOD').AsInteger, DM.SQLConfigFinanceiro.FieldByName('OPBCICODESTORNODEB').AsInteger, 0, SQLCount.FieldByName('MVBCN2VLRCRED').AsFloat, SQLCount.FieldByName('MVBCDCHQBOMPARA').AsDateTime, SQLCount.FieldByName('MVBCDCHQBAIXA').AsDateTime, Date, 'Estorno de Crédito Referente Duplicata: ' + SQLTemplateCTRCINROPARC.AsString + '-' + SQLRecebimentoRECEICOD.AsString, '', SQLTemplateCTRCA13ID.AsString, '', SQLCount.FieldByName('CQEMA13ID').AsString, SQLCount.FieldByName('PLCTA15COD').AsString);

      SQLCount.Edit;
      SQLCount.FieldByName('MVBCCSTATUS').AsString := 'E';
      SQLCount.Post;

      SQLRecebimento.Delete;
      AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);

      Result := True;

      FimEstorno;
      Exit;
    end;
     //Fim Estorno Lançamentos Banco

     //Verifica e Estorna Recebimentos feitos com CAIXA;
    SQLCount.Close;
    SQLCount.SQL.Text := 'select * from TESOURARIA where CTRCA13ID = ''' + SQLTemplateCTRCA13ID.AsString + ''' and ' + 'TESODMOV = ''' + FormatDateTime('mm/dd/yyyy', SQLRecebimentoRECEDRECTO.AsDateTime) + ''' and ' + '(TESOCSTATUS <> ''E'' or TESOCSTATUS is Null) ';
    SQLCount.Open;

    if SQLCount.RecordCount > 0 then
    begin
      if DM.SQLConfigFinanceiro.FieldByName('OPTEICODESTORNOCRD').IsNull then
        InformaErro('É necessário Configurar uma Operação Tesouraria para Estorno ''Crédito'' para o Contas A Receber no Configurador', True, Nil);

      if not Pergunta('Sim', 'Deseja Criar um Lançamento de Crédito na ''TESOURARIA/CAIXA'' no valor de R$ ' + FormatFloat('#,##0.00', SQLCount.FieldByName('TESON2VLRCREDITO').AsFloat) + ' referennte o Estorno do Recebimento de ID : ''' + SQLRecebimentoCTRCA13ID.AsString + '''?' + #13 + 'Clique ''SIM'' para Continuar e ''NÃO'' para Cancelar o Estorno.') then
        Abort;

      LancaMovimentacaoTesouraria(SQLTemplateEMPRICOD.AsInteger, SQLTemplateTERMICOD.AsInteger, SQLCount.FieldByName('NUMEICOD').AsInteger, DM.SQLConfigFinanceiro.FieldByName('OPTEICODESTORNODEB').AsInteger, SQLCount.FieldByName('TESON2VLRCREDITO').AsFloat, 'Estorno de Crédito Referente Duplicata: ' + SQLTemplateCTRCINROPARC.AsString + '-' + SQLRecebimentoRECEICOD.AsString, '', SQLTemplateCTRCA13ID.AsString, '', '', Date, SQLTemplateCTRCA13ID.AsString, '');

      SQLCount.Edit;
      SQLCount.FieldByName('TESOCSTATUS').AsString := 'E';
      SQLCount.Post;

      SQLRecebimento.Delete;
      AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);

      Result := True;

      FimEstorno;
      Exit;
    end;
      //Fim Estorno Recebimentos feitos com CAIXA;

      //Verifica e Estorna Recebimentos feitos com CREDITOS;
    if not SQLRecebimentoCTRCA13IDCREDITO.IsNull then
    begin
      if not Pergunta('Sim', 'Deseja Estornar a Baixa do Lançamento de Crédito do Cliente ''' + SQLTemplateClienteCalcField.AsString + ''' ' + 'no valor de R$ ' + FormatFloat('#,##0.00', SQLRecebimentoRECEN2VLRRECTO.AsFloat) + ' referennte o Estorno do Recebimento de ID : ''' + SQLRecebimentoCTRCA13ID.AsString + '''?' + #13 + 'Clique ''SIM'' para Continuar e ''NÃO'' para Cancelar o Estorno.') then
        Abort;

      try
        SQLCount.Close;
        SQLCount.SQL.Text := 'Delete From RECEBIMENTO where CTRCA13ID = (select CTRCA13ID from RECEBIMENTO where CTRCA13IDCREDITO = ''' + SQLRecebimentoCTRCA13IDCREDITO.AsString + ''' and ' + ' RECEN2VLRRECTO = ' + SQLRecebimentoRECEN2VLRRECTO.AsString + ') and ' + 'CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + '''';

        SQLCount.ExecSQL;

        SQLRecebimento.Delete;
        AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);

        Result := True;

        FimEstorno;
        Exit;
      except
        on E: Exception do
        begin
          InformaErro('Ocorreu erros ao tentar estornar o Lançamento de Baixa dos Créditos do Cliente.' + #13 + E.Message, True, Nil);
          Result := False;
        end;
      end;

      try
        SQLCount.Close;
        SQLCount.SQL.Text := 'delete from RECEBIMENTO where CTRCA13ID = ''' + SQLRecebimentoCTRCA13IDCREDITO.AsString + ''' and ' + ' RECEN2VLRRECTO = ' + SQLRecebimentoRECEN2VLRRECTO.AsString + ' and ' + 'CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + ''' and ' + 'RECEN2VLRRECTO = ' + SQLRecebimentoRECEN2VLRRECTO.AsString;
        SQLCount.ExecSQL;

        AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);
        AtualizaTotaisCabecalhoContasReceber(SQLRecebimentoCTRCA13IDCREDITO.AsString);

        Result := True;

        FimEstorno;
        Exit;
      except
        on E: Exception do
        begin
          InformaErro('Ocorreu erros ao tentar Atualizar o Lançamento de Créditos do Cliente.' + #13 + E.Message, True, Nil);
          Result := False;
        end;
      end;
    end;
      //Fim Estorno Recebimentos feitos com CREDITOS;

      //Verifica e Estorna Recebimentos feitos com CHEQUES;
    SQLCount.Close;
    SQLCount.SQL.Text := 'select * from CONTASRECEBER where CTRCA13CTRCAIDCHQ = ''' + SQLTemplateCTRCA13ID.AsString + '''';
    SQLCount.Open;

    if not SQLCount.IsEmpty then
    begin
      StID := '';
      SQLCount.First;
      while not SQLCount.Eof do
      begin
        StID := StID + SQLCount.FieldByName('CTRCA13ID').AsString + ' CHQ :' + SQLCount.FieldByName('CTRCA15NROCHQ').AsString + ', ' + #13;
        SQLCount.Next;
      end;
      StID[Length(StID)] := ' ';
      if not Pergunta('Sim', 'Os Moviventos de Cheques abaixo seram desvinculados do Recebimento Atual:' + #13 + StID + #13 + 'Deseja Continuar?') then
        Abort;

      SQLRecebimento.Delete;
      AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);

      SQLCount.First;
      while not SQLCount.Eof do
      begin
        SQLCount.Edit;
        SQLCount.FieldByName('CTRCA13CTRCAIDCHQ').Clear;
        SQLCount.Post;
        SQLCount.Next;
      end;

    end;
      //Fim Estorno Recebimentos feitos com CHEQUES;
    Result := True;
    FimEstorno;
    Exit;
  except
    on E: Exception do
    begin
      Informa(E.Message);
      SQLCount.RequestLive := False;
      Result := False;
      FimEstorno;
    end;
  end;
end;

procedure TFormCadastroContasReceber.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if (Column.Field = Nil) and not SQLRecebimento.IsEmpty then
    if Pergunta('Sim', 'Deseja Realmente ESTORNAR este Recebimento.') then
      if not Estorna then
        InformaErro('Não foi Possivel Estornar o Lançamento Atual.', True, Nil);
  begin
    AtualizaTotaisCabecalhoContasReceber(SQLTemplateCTRCA13ID.AsString);
    SQLTemplate.Close;
    SQLRecebimento.Close;
    Button1.Click;
  end;
end;

procedure TFormCadastroContasReceber.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if DBGrid1.MouseCoord(X, Y).X = 7 then
    DBGrid1.Cursor := crHandPoint
  else
    DBGrid1.Cursor := crDefault;
end;

procedure TFormCadastroContasReceber.GerarMultiplosLanctosClick(Sender: TObject);
var
  I, ContadorDocumento, codigo: Integer;
  DocumentoSTR: string;
begin
  inherited;
  Application.CreateForm(TFormTelaAssistenteLancamentoContasReceber, FormTelaAssistenteLancamentoContasReceber);
  FormTelaAssistenteLancamentoContasReceber.edtEmissao.Date := Date;
  FormTelaAssistenteLancamentoContasReceber.ShowModal;
  if FormTelaAssistenteLancamentoContasReceber.ModalResult = MrOk then
  begin
    if not FormTelaAssistenteLancamentoContasReceber.RxTable.IsEmpty then
    begin
      SQLTemplate.DisableControls;
      FormTelaAssistenteLancamentoContasReceber.RxTable.First;
      try
        ContadorDocumento := StrToInt(FormTelaAssistenteLancamentoContasReceber.edtDocum.text);
      except
        Application.ProcessMessages;
        ContadorDocumento := 0;
      end;
      if ContadorDocumento > 0 then
        DocumentoSTR := IntToStr(ContadorDocumento);

      I := 0;

      SQLTemplate.BeforePost := nil;
      SQLTemplate.OnCalcFields := nil;
      SQLTemplate.OnPostError := nil;

      dm.sqlconsulta.Close;
      dm.sqlconsulta.sql.Clear;
      dm.sqlconsulta.sql.Text := 'select max(CTRCICOD) from contasreceber where empricod=' + dm.SQLTerminalAtivo.FieldByName('EMPRICOD').AsString + ' and termicod=' + dm.SQLTerminalAtivo.FieldByName('TERMICOD').AsString;
      dm.sqlconsulta.open;
      if (dm.sqlconsulta.fieldbyname('MAX').Value > 0) then
        codigo := dm.sqlconsulta.fieldbyname('MAX').Value + 1
      else
        codigo := 1;
      dm.sqlconsulta.Close;

      while not FormTelaAssistenteLancamentoContasReceber.RxTable.Eof do
      begin
        SQLTemplate.Append;
        SQLTemplateEMPRICOD.Value := dm.SQLTerminalAtivo.FieldByName('EMPRICOD').Value;
        SQLTemplateTERMICOD.Value := dm.SQLTerminalAtivo.FieldByName('TERMICOD').Value;
        SQLTemplateCTRCICOD.Value := codigo;
        SQLTemplateCTRCA13ID.Value := FormatFloat('###000', dm.SQLTerminalAtivo.FieldByName('EMPRICOD').Value) + FormatFloat('###000', dm.SQLTerminalAtivo.FieldByName('TERMICOD').Value) + FormatFloat('######000000', codigo);
        SQLTemplateCTRCA13ID.Value := SQLTemplateCTRCA13ID.Value + DigitVerifEAN(SQLTemplateCTRCA13ID.Value);
        SQLTemplateCLIEA13ID.AsVariant := FormTelaAssistenteLancamentoContasReceber.ComboCliente.Value;
        if ContadorDocumento > 0 then
          SQLTemplateCTRCA30NRODUPLICBANCO.AsString := DocumentoSTR;
        SQLTemplateCTRCA254HIST.AsString := FormTelaAssistenteLancamentoContasReceber.RxTableDESCR.AsString;
        SQLTemplateCTRCDEMIS.AsDateTime := FormTelaAssistenteLancamentoContasReceber.RxTableEMI.AsDateTime;
        SQLTemplateCTRCDVENC.AsDateTime := FormTelaAssistenteLancamentoContasReceber.RxTableVENCI.AsDateTime;
        SQLTemplateCTRCN2VLR.AsFloat := FormTelaAssistenteLancamentoContasReceber.RxTableVALOR.AsFloat;
        SQLTemplatePLCTA15COD.AsString := FormTelaAssistenteLancamentoContasReceber.ComboContaCredito.Value;
        SQLTemplatePLCTA15CODDEBITO.AsString := FormTelaAssistenteLancamentoContasReceber.ComboContaDebito.Value;
        SQLTemplatePORTICOD.AsVariant := FormTelaAssistenteLancamentoContasReceber.ComboPortador.KeyValue;
        SQLTemplateTPDCICOD.AsVariant := FormTelaAssistenteLancamentoContasReceber.ComboTipoDoc.KeyValue;
        SQLTemplateHTPDICOD.AsVariant := FormTelaAssistenteLancamentoContasReceber.ComboHistorico.KeyValue;
        SQLTemplateCTRCA254HIST.Value := FormTelaAssistenteLancamentoContasReceber.edtDescricao.Text;
        SQLTemplateCTRCCSTATUS.AsString := 'A';
        SQLTemplateCTRCA5TIPOPADRAO.AsString := 'CRD';
        if SQLTemplateCTRCDEMIS.AsDateTime = SQLTemplateCTRCDVENC.AsDateTime then
        begin
          SQLTemplateCTRCINROPARC.AsInteger := I;
          I := I - 1;
        end
        else
        begin
          SQLTemplateCTRCINROPARC.AsInteger := I + 1;
        end;
        SQLTemplate.Post;
        FormTelaAssistenteLancamentoContasReceber.RxTable.Next;
        if ContadorDocumento > 0 then
        begin
          inc(ContadorDocumento);
          DocumentoSTR := IntToStr(ContadorDocumento);
        end;
        inc(I);
        inc(codigo);
      end;

          // Realimenta os eventos abaixo:
      SQLTemplate.BeforePost := SQLTemplateBeforePost;
      SQLTemplate.OnCalcFields := SQLTemplateCalcFields;
      SQLTemplate.OnPostError := SQLTemplatePostError;

      SQLTemplate.Close;
      SQLTemplate.MacroByName('MFiltro').AsString := 'CLIEA13ID = ''' + FormTelaAssistenteLancamentoContasReceber.ComboCliente.Value + '''';
      SQLTemplate.Open;
      PagePrincipal.ActivePage := TabSheetConsulta;
      SQLTemplate.EnableControls;
      FormTelaAssistenteLancamentoContasReceber.RxTable.Close;
      FormTelaAssistenteLancamentoContasReceber.RxTable.Free;
    end;
  end;
end;

procedure TFormCadastroContasReceber.MostrarLancSemPlanoContasClick(Sender: TObject);
begin
  inherited;
  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').Value := 'PLCTA15COD is Null';
  SQLTemplate.Open;
end;

procedure TFormCadastroContasReceber.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if SQLTemplateCLIEA13ID.AsString = '' then
  begin
    Showmessage('Atenção! É preciso escolher um Cliente!');
    DBEdit1.SetFocus;
    Abort;
  end;
  if SQLTemplateCTRCDVENC.Value < SQLTemplateCTRCDEMIS.Value then
  begin
    Showmessage('Atenção! Data de Vencimento menor que a Data de Emissão!');
    DBEdit4.SetFocus;
    Abort;
  end;
  if SQLTemplateCTRCN2VLR.Value = 0 then
  begin
    Showmessage('Atenção! O Valor não foi informado!');
    EditValor.SetFocus;
    Abort;
  end;
  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').AsFloat > 0 then
    DataSet.FieldByName('CTRCN2TXMULTA').Value := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value
  else
    DataSet.FieldByName('CTRCN2TXMULTA').Value := 0;

  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').AsFloat > 0 then
    DataSet.FieldByName('CTRCN2TXJURO').Value := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value
  else
    DataSet.FieldByName('CTRCN2TXJURO').Value := 0;

  if (SQLTemplate.State in [DsInsert]) and (SQLTemplateDATA_PREVISTA.AsDateTime < 10) then
    SQLTemplateDATA_PREVISTA.AsDateTime := SQLTemplateCTRCDVENC.AsDateTime;

  inherited;
end;

procedure TFormCadastroContasReceber.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if SQLTemplateCTRCDVENC.Value < SQLTemplateCTRCDEMIS.Value then
  begin
    Showmessage('Atenção! Data de Vencimento menor que a Data de Emissão!');
    DBEdit4.SetFocus;
  end;
end;

procedure TFormCadastroContasReceber.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  // Quita Parcela a vista automaticamente
  if (SQLTemplateCTRCDEMIS.Value = SQLTemplateCTRCDVENC.Value) and (SQLTemplateCTRCN2TOTREC.Value < SQLTemplateCTRCN2VLR.Value) then
  begin
    Application.CreateForm(TFormTelaBaixaContasReceberAVista, FormTelaBaixaContasReceberAVista);
    FormTelaBaixaContasReceberAVista.ValorAteVencimento.Value := SQLTemplateCTRCN2VLR.Value;
    FormTelaBaixaContasReceberAVista.ValorTotalOperacao.Value := SQLTemplateCTRCN2VLR.Value;
    FormTelaBaixaContasReceberAVista.LbID.Caption := SQLTemplateCTRCA13ID.Value;
    FormTelaBaixaContasReceberAVista.LbDoc.Caption := SQLTemplateCTRCA30NRODUPLICBANCO.Value;
    FormTelaBaixaContasReceberAVista.DataMovTesouraria.Date := SQLTemplateCTRCDVENC.Value;
    FormTelaBaixaContasReceberAVista.DateEditMovBanco.Date := SQLTemplateCTRCDVENC.Value;
    FormTelaBaixaContasReceberAVista.ShowModal;
    if FormTelaBaixaContasReceberAVista.ModalResult = MrOk then
    begin
      SQLRecebimento.Close;
      SQLRecebimento.Open;
      SQLRecebimento.Append;
      SQLRecebimentoRECEICOD.Value := 1;
      SQLRecebimentoCTRCA13ID.Value := SQLTemplateCTRCA13ID.Value;
      SQLRecebimentoEMPRICODREC.Value := EmpresaCorrente;
      SQLRecebimentoRECEDDATAMOV.Value := SQLTemplateCTRCDVENC.Value;
      SQLRecebimentoRECEDRECTO.Value := SQLTemplateCTRCDVENC.Value;
      SQLRecebimentoRECEN2VLRRECTO.Value := SQLTemplateCTRCN2VLR.Value;
      SQLRecebimentoRECEN2VLRJURO.Value := FormTelaBaixaContasReceberAVista.VlrJuros.Value;
      SQLRecebimentoRECEN2VLRMULTA.Value := FormTelaBaixaContasReceberAVista.VlrMulta.Value;
      SQLRecebimentoRECEN2DESC.Value := FormTelaBaixaContasReceberAVista.VlrDesconto.Value;
      SQLRecebimentoCLIEA13ID.Value := SQLTemplateCLIEA13ID.Value;
      if FormTelaBaixaContasReceberAVista.ComboTipoLiquidacao.Value <> '' then
        SQLRecebimentoTPLQICOD.Value := FormTelaBaixaContasReceberAVista.ComboTipoLiquidacao.KeyValue;
      SQLRecebimento.Post;
      AtualizaTotaisCabecalhoContasReceber(SQLRecebimentoCTRCA13ID.Value);
    end;
    FormTelaBaixaContasReceberAVista.Close;
    FormTelaBaixaContasReceberAVista.Free;
  end;
end;

procedure TFormCadastroContasReceber.mnNotaPromissoriaClick(Sender: TObject);
begin
  inherited;
  ppPromissoria.Print;
end;

procedure TFormCadastroContasReceber.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppNomeCliente.Caption := ComboClienteCad.Text;
  ppCPFCliente.Caption := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA11CPF', '''' + SQLTemplateCLIEA13ID.AsString + '''');
  if ppCPFCliente.Caption = '' then
    ppCPFCliente.Caption := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA14CGC', '''' + SQLTemplateCLIEA13ID.AsString + '''');

  ppNomeCNPJEmpresa.Caption := dm.SQLEmpresaEMPRA60RAZAOSOC.AsString + ' CNPJ: ' + dm.SQLEmpresaEMPRA14CGC.AsString;
  ppCidadeEmpresa.Caption := dm.SQLEmpresaEMPRA60CID.AsString + ', ' + FormatDateTime('dd', SQLTemplateCTRCDEMIS.Value) + ' de ' + FormatDateTime('mmmm', SQLTemplateCTRCDEMIS.Value) + ' de ' + FormatDateTime('yyyy', SQLTemplateCTRCDEMIS.Value);
  ppValor.Caption := FormatCurr('##0.00', SQLTemplateCTRCN2VLR.Value);
  ppVencimento.Caption := 'Vencimento em ' + FormatDateTime('dd', SQLTemplateCTRCDVENC.Value) + ' de ' + FormatDateTime('mmmm', SQLTemplateCTRCDVENC.Value) + ' de ' + FormatDateTime('yyyy', SQLTemplateCTRCDVENC.Value);

  ppLogo.Picture.LoadFromFile('Bmp\Logo PDV.jpg');
end;

procedure TFormCadastroContasReceber.DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if SQLTemplateCTRCCSTATUS.AsString = 'C' then
    DBGridLista.Canvas.Font.Color := clRed;

  inherited;
end;

procedure TFormCadastroContasReceber.MnAssistenteLancContratosMensaisClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaAssistenteContratosMensais, FormTelaAssistenteContratosMensais);
  FormTelaAssistenteContratosMensais.ShowModal;
  if FormTelaAssistenteContratosMensais.ModalResult = MrOk then
  begin
    if not FormTelaAssistenteContratosMensais.RxTable.IsEmpty then
    begin
      FormSplash := TFormSplash.Create(Application);
      FormSplash.Show;
      FormSplash.lbDados.Caption := 'Aguarde!! Gerando Contas a Receber...';
      FormSplash.lbDados.Update;
      SQLTemplate.DisableControls;
      SQLTemplate.BeforePost := nil;
      SQLTemplate.OnCalcFields := nil;
      FormTelaAssistenteContratosMensais.RxTable.First;
      while not FormTelaAssistenteContratosMensais.RxTable.Eof do
      begin
        SQLTemplate.Append;
        SQLTemplateEMPRICOD.AsString := EmpresaPadrao;
        SQLTemplateCLIEA13ID.AsVariant := FormTelaAssistenteContratosMensais.RxTableCLIEA13ID.Value;
        SQLTemplateCTRCDEMIS.AsDateTime := FormTelaAssistenteContratosMensais.RxTableEMI.AsDateTime;
        SQLTemplateCTRCDVENC.AsDateTime := FormTelaAssistenteContratosMensais.RxTableVENCI.AsDateTime;
        SQLTemplateCTRCN2VLR.AsFloat := FormTelaAssistenteContratosMensais.RxTableVALOR.AsFloat;
        SQLTemplateTPDCICOD.AsVariant := FormTelaAssistenteContratosMensais.RxTableTPDCICOD.Value;
        SQLTemplatePORTICOD.AsVariant := FormTelaAssistenteContratosMensais.RxTablePORTICOD.Value;
        SQLTemplatePLCTA15COD.AsString := FormTelaAssistenteContratosMensais.RxTablePLCTA15COD.Value;
        SQLTemplateCTRCA254HIST.AsString := 'Contrato Mensal - Lancto Automatico';
        SQLTemplateCTRCCSTATUS.AsString := 'A';
        SQLTemplateCTRCA5TIPOPADRAO.AsString := 'CRD';
        SQLTemplateCTRCINROPARC.Value := 1;
        SQLTemplateCTRCA2MESCOMP.Value := FormatDateTime('MM', FormTelaAssistenteContratosMensais.RxTableEMI.AsDateTime);
        SQLTemplateCTRCA4ANOCOMP.Value := FormatDateTime('YYYY', FormTelaAssistenteContratosMensais.RxTableEMI.AsDateTime);
        sqltemplateCTRCA30NRODUPLICBANCO.Value := FormTelaAssistenteContratosMensais.RxTableCTRCA30NRODUPLICBANCO.AsString;
        if sqltemplate.State in [DsInsert] then
          DM.CodigoAutomatico('CONTASRECEBER', DSTemplate, sqltemplate, 3, 0);
        SQLTemplate.Post;
        FormTelaAssistenteContratosMensais.RxTable.Next;
      end;
      SQLTemplate.BeforePost := SQLTemplateBeforePost;
      SQLTemplate.OnCalcFields := SQLTemplateCalcFields;
      SQLTemplate.EnableControls;
      FormSplash.Close;
    end;
  end;
end;

procedure TFormCadastroContasReceber.MnReciboClick(Sender: TObject);
begin
  inherited;
  ppRecibo.Print;
end;

procedure TFormCadastroContasReceber.ppHeaderBand2BeforePrint(Sender: TObject);
var
  mes, ano: integer;
begin
  inherited;
  if ckImprimeMesReferencia.Checked then
  begin
    mes := strToInt(FormatDateTime('MM', sqltemplateCTRCDVENC.Value));
    ano := strToInt(FormatDateTime('YYYYY', sqltemplateCTRCDVENC.Value));

    if (mes = 1) then
      ppMesReferencia.Caption := 'REF. DEZEMBRO/' + IntToStr(ano - 1);
    if (mes = 2) then
      ppMesReferencia.Caption := 'REF. JANEIRO/' + IntToStr(ano);
    if (mes = 3) then
      ppMesReferencia.Caption := 'REF. FEVEREIRO/' + IntToStr(ano);
    if (mes = 4) then
      ppMesReferencia.Caption := 'REF. MARCO/' + IntToStr(ano);
    if (mes = 5) then
      ppMesReferencia.Caption := 'REF. ABRIL/' + IntToStr(ano);
    if (mes = 6) then
      ppMesReferencia.Caption := 'REF. MAIO/' + IntToStr(ano);
    if (mes = 7) then
      ppMesReferencia.Caption := 'REF. JUNHO/' + IntToStr(ano);
    if (mes = 8) then
      ppMesReferencia.Caption := 'REF. JULHO/' + IntToStr(ano);
    if (mes = 9) then
      ppMesReferencia.Caption := 'REF. AGOSTO/' + IntToStr(ano);
    if (mes = 10) then
      ppMesReferencia.Caption := 'REF. SETEMBRO/' + IntToStr(ano);
    if (mes = 11) then
      ppMesReferencia.Caption := 'REF. OUTUBRO/' + IntToStr(ano);
    if (mes = 12) then
      ppMesReferencia.Caption := 'REF. NOVEMBRO/' + IntToStr(ano);
    ppMesReferencia1.Caption := ppMesReferencia.Caption;
  end;

  ppNomeClienteRecibo.Caption := ComboClienteCad.Text;
  ppNomeClienteRecibo1.Caption := ppNomeClienteRecibo.Caption;

  ppCPFClienteRecibo.Caption := 'CPF: ' + SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA11CPF', '''' + SQLTemplateCLIEA13ID.AsString + '''');
  ppCPFClienteRecibo1.Caption := ppCPFClienteRecibo.Caption;

  if ppCPFClienteRecibo.Caption = '' then
  begin
    ppCPFClienteRecibo.Caption := 'CNPJ: ' + SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA14CGC', '''' + SQLTemplateCLIEA13ID.AsString + '''');
    ppCPFClienteRecibo1.Caption := ppCPFClienteRecibo.Caption;
  end;

  ppHistoricoRecibo.Text := sqltemplateCTRCA254HIST.Value;
  ppHistoricoRecibo1.Text := sqltemplateCTRCA254HIST.Value;

  ppNomeCNPJEmpresaRecibo.Caption := dm.SQLEmpresaEMPRA60RAZAOSOC.AsString + ' CNPJ: ' + dm.SQLEmpresaEMPRA14CGC.AsString;
  ppNomeCNPJEmpresaRecibo1.Caption := ppNomeCNPJEmpresaRecibo.Caption;

  ppCidadeEmpresaRecibo.Caption := dm.SQLEmpresaEMPRA60CID.AsString + ', ' + FormatDateTime('dd', now) + ' de ' + FormatDateTime('mmmm', now) + ' de ' + FormatDateTime('yyyy', now);
  ppCidadeEmpresaRecibo1.Caption := ppCidadeEmpresaRecibo.Caption;

  ppValorRecibo.Caption := FormatCurr('##0.00', SQLTemplateCTRCN2VLR.Value);
  ppValorRecibo1.Caption := ppValorRecibo.Caption;

  ppVencimentoRecibo.Caption := 'Vencimento em ' + FormatDateTime('dd', SQLTemplateCTRCDVENC.Value) + ' de ' + FormatDateTime('mmmm', SQLTemplateCTRCDVENC.Value) + ' de ' + FormatDateTime('yyyy', SQLTemplateCTRCDVENC.Value);
  ppVencimentoRecibo1.Caption := ppVencimentoRecibo.Caption;

  if FileExists('Bmp\Logo PDV.jpg') then
  begin
    ppLogoRecibo.Picture.LoadFromFile('Bmp\Logo PDV.jpg');
    ppLogoRecibo1.Picture.LoadFromFile('Bmp\Logo PDV.jpg');
  end;
end;

procedure TFormCadastroContasReceber.CorrigeTotalRecebidoSafe1Click(Sender: TObject);
begin
  inherited;
  sqltemplate.First;
  while not sqltemplate.Eof do
  begin
    if sqltemplateCTRCN2TOTREC.Value > 0 then
    begin
      dm.SQLConsulta.close;
      dm.SQLConsulta.sql.text := 'select CTRCA13ID from recebimento where CTRCA13ID = ''' + sqltemplateCTRCA13ID.Value + '''';
      dm.SQLConsulta.Open;
      if dm.SQLConsulta.IsEmpty then
      begin
        sqltemplate.edit;
        sqltemplateCTRCN2TOTREC.Value := 0;
        sqltemplate.post;
      end;
    end;
    application.ProcessMessages;
    sqltemplate.Next;
  end;
end;

procedure TFormCadastroContasReceber.FormShow(Sender: TObject);
begin
  inherited;
  DBEdit2.ReadOnly := not (DM.SQLTerminalAtivo.FieldByName('ALTERA_NOSSO_NUMERO').AsString = 'S');
end;

procedure TFormCadastroContasReceber.SQLTemplateTPDCICODChange(
  Sender: TField);
begin
  inherited;
  if SQLLocate('CLIENTE', 'CLIEA13ID', 'TAXA_BANCARIA', '''' + SQLTemplateCLIEA13ID.AsString + '''') = 'S' then
    SQLTemplateCTRCN2VLRTAXA.AsFloat := SQLTipoDocumento.FieldByname('VLRTAXA').AsFloat
  else
    SQLTemplateCTRCN2VLRTAXA.AsFloat := 0;
end;

end.

