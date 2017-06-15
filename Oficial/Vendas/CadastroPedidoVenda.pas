unit CadastroPedidoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, EDBNum, RxDBComb, ToolEdit, RXDBCtrl, VarSys,
  FormResources, CurrEdit, RxLookup, UCrpe32, ValEdit, Placemnt, ppDB, ppDBPipe, ppDBBDE,
  ppStrtch, ppMemo, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppViewr,
  ppRelatv, ppProd, ppReport, ppSubRpt,  RDprint, Serial,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroPedidoVenda = class(TFormCadastroTEMPLATE)
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePDVDICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePDVDDEMISSAO: TDateTimeField;
    SQLTemplatePDVDN2VLRFRETE: TFloatField;
    SQLTemplatePDVDA30NROPEDCOMP: TStringField;
    SQLTemplatePDVDA30COMPRADOR: TStringField;
    SQLTemplatePDVDCTIPO: TStringField;
    SQLTemplatePDVDCSTATUS: TStringField;
    SQLTemplatePDVDN2VLRDESC: TFloatField;
    SQLTemplatePDVDN2TOTPROD: TFloatField;
    SQLTemplatePDVDN2TOTPED: TFloatField;
    SQLTemplatePDVDTOBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label2: TLabel;
    DBEdit2: TDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    ComboTipo: TRxDBComboBox;
    Combostatus: TRxDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SQLTemplateVendedorLookUp: TStringField;
    MnCancelarPedidodeVenda: TMenuItem;
    EtiquetasdeCdigodeBarras1: TMenuItem;
    Label24: TLabel;
    SQLTemplatePDVDN2VLRDESCPROM: TFloatField;
    SQLTemplatePDVDINROTALAO: TIntegerField;
    ImprimirPedidodeVenda1: TMenuItem;
    SQLTemplatePDVDCTIPOFRETE: TStringField;
    SQLTemplatePDVDDENTREGA: TDateTimeField;
    Label27: TLabel;
    DateEntrega: TDBDateEdit;
    OrdemdeServio1: TMenuItem;
    SQLTemplateEmpresaLookUp: TStringField;
    MnCalcularFinanceiro: TMenuItem;
    SQLEmpresa: TTable;
    mnGerarOS: TMenuItem;
    SQLTemplatePDVDN2PERCFAT: TFloatField;
    SQLTemplatePDVDN2PERCOMIS: TFloatField;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLVendedorVENDN2COMISV: TFloatField;
    SQLVendedorVENDN2COMISP: TFloatField;
    SQLVendedorVENDCTIPCOMIS: TStringField;
    SQLVendedorVENDCCOMISACRESC: TStringField;
    SQLVendedorPENDENTE: TStringField;
    SQLVendedorREGISTRO: TDateTimeField;
    SQLVendedorVENDA60EMAIL: TStringField;
    SQLVendedorVENDA5FISJURID: TStringField;
    SQLVendedorVENDA14CGC: TStringField;
    SQLVendedorVENDA20IE: TStringField;
    SQLVendedorVENDA11CPF: TStringField;
    SQLVendedorVENDA10RG: TStringField;
    SQLVendedorVENDA60CONTATO: TStringField;
    SQLVendedorVENDA15FONE1: TStringField;
    SQLVendedorVENDA15FONE2: TStringField;
    SQLVendedorVENDA15FAX: TStringField;
    SQLVendedorVENDA60END: TStringField;
    SQLVendedorVENDA60BAI: TStringField;
    SQLVendedorVENDA60CID: TStringField;
    SQLVendedorVENDA2UF: TStringField;
    SQLVendedorVENDA8CEP: TStringField;
    SQLVendedorBANCA5COD: TStringField;
    SQLVendedorVENDA5AGENCIA: TStringField;
    SQLVendedorVENDA10CONTA: TStringField;
    SQLVendedorVENDA60TITULAR: TStringField;
    SQLVendedorVENDDABERTCONTA: TDateTimeField;
    SQLVendedorVENDA254OBS: TStringField;
    SQLVendedorVENDA30CORE: TStringField;
    SQLVendedorVENDA60RAZAOSOCIAL: TStringField;
    SQLVendedorVENDIDIASVALFIDEL: TIntegerField;
    SQLVendedorVENDN2PERCFIDEL: TFloatField;
    SQLVendedorVENDN2PERCIRRF: TFloatField;
    PedidoOramentocomComposioCabecalho: TMenuItem;
    SQLTemplateUSUAA60LOGIN: TStringField;
    PedidoOramentocomComposicaoSemcabealho: TMenuItem;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLTemplateROTAICOD: TIntegerField;
    FormStorage1: TFormStorage;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    DSSQLRota: TDataSource;
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoPLRCA60DESCR: TStringField;
    SQLPlanoRecebimentoPLRCN2TXJURO: TFloatField;
    SQLPlanoRecebimentoPLRCN2TXMULTA: TFloatField;
    SQLPlanoRecebimentoPLRCN2TXCRED: TFloatField;
    SQLPlanoRecebimentoPLRCN2PERCDESC: TFloatField;
    SQLPlanoRecebimentoPLRCCDFIX: TStringField;
    SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoRecebimentoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField;
    SQLPlanoRecebimentoPLRCN2PERCENTR: TFloatField;
    SQLPlanoRecebimentoPLRCN2DESC: TFloatField;
    SQLPlanoRecebimentoPLRCCATIVO: TStringField;
    SQLPlanoRecebimentoPENDENTE: TStringField;
    SQLPlanoRecebimentoREGISTRO: TDateTimeField;
    SQLPlanoRecebimentoPLRCCIMPDESCRNF: TStringField;
    SQLPlanoRecebimentoPLRCN5FATOR: TFloatField;
    SQLPlanoRecebimentoPLRCN5FATORPARC: TFloatField;
    SQLPlanoRecebimentoPLRCN2PERCACRESC: TFloatField;
    DSSQLPlanoRecebimento: TDataSource;
    SQLRotaROTAA60NOME: TStringField;
    SQLTemplatePlanoRecebimentoLookUp: TStringField;
    MnPedidoOramentoemSequencia: TMenuItem;
    SQLPedidoVendaItem: TRxQuery;
    DSSQLPedidoVendaItem: TDataSource;
    SQLPedidoVendaItemPDVDA13ID: TStringField;
    SQLPedidoVendaItemPVITIITEM: TIntegerField;
    SQLPedidoVendaItemPRODICOD: TIntegerField;
    SQLPedidoVendaItemPVITN3QUANT: TFloatField;
    SQLPedidoVendaItemPVITN2VLRUNIT: TFloatField;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    SQLPedidoItens: TRxQuery;
    SQLPedidoVendaItemPVITN2PERCDESC: TFloatField;
    SQLPedidoVendaItemPVITN2VLRDESC: TFloatField;
    SQLPedidoVendaItemREGISTRO: TDateTimeField;
    SQLPedidoVendaItemPENDENTE: TStringField;
    SQLPedidoVendaItemPVITN3QUANTVEND: TFloatField;
    SQLPedidoVendaItemPVITN2PERCCOMIS: TFloatField;
    MnTrrocarVendedoreRotaPadrao: TMenuItem;
    LbVendedorAtual: TLabel;
    LbRotaAtual: TLabel;
    MnTrocarStatusdoPedidoparaFaturado: TMenuItem;
    LbDataEntrega: TLabel;
    RadioConsultaCodigo: TRadioGroup;
    ComboSerie: TRxDBLookupCombo;
    Label8: TLabel;
    SQLSerie: TRxQuery;
    DSSQLSerie: TDataSource;
    SQLSerieSERIA5COD: TStringField;
    SQLTemplatePDVDCIMPORTADO: TStringField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateVEICA13ID: TStringField;
    SQLTransportadora: TRxQuery;
    DSSQLTransportadora: TDataSource;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLVeiculo: TRxQuery;
    DSSQLVeiculo: TDataSource;
    SQLVeiculoVEICA13ID: TStringField;
    SQLVeiculoVEICA7PLACA: TStringField;
    SQLVeiculoVEICA60DESCR: TStringField;
    LbTranspAtual: TLabel;
    LbVeiculo: TLabel;
    LbEmissao: TLabel;
    Label17: TLabel;
    ComboTipoFrete: TRxDBComboBox;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dbFrete: TDBEdit;
    TabItens: TTabSheet;
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
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCN2TOTJUROREC: TFloatField;
    SQLContasReceberCTRCN2TOTMULTAREC: TFloatField;
    SQLContasReceberCTRCN2TOTDESCREC: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCA254HIST: TStringField;
    DSSQLContasReceber: TDataSource;
    TabFinanceiro: TTabSheet;
    Panel4: TPanel;
    Label13: TLabel;
    Label18: TLabel;
    DBEditQuantidade: TDBEdit;
    DBEditUnitario: TDBEdit;
    BTItemNovo: TBitBtn;
    BtItemGravar: TBitBtn;
    BtItemExcluir: TBitBtn;
    DBGridItens: TDBGrid;
    Panel7: TPanel;
    Button4: TRxSpeedButton;
    GroupCliente: TGroupBox;
    Panel8: TPanel;
    Panel9: TPanel;
    Label25: TLabel;
    DBMemo1: TDBMemo;
    DSSQLObsNota: TDataSource;
    SQLObsNota: TRxQuery;
    SQLObsNotaOBSNICOD: TIntegerField;
    SQLTemplateNOFIAOBSCORPONF: TStringField;
    LBPlaca: TLabel;
    DBEditPlaca: TDBEdit;
    SQLTemplatePDVD8PLACAVEIC: TStringField;
    SQLTemplatePDVDA15NROPEDPALM: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLVeiculoVEICA3OMOTORISTA: TStringField;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    SQLGeral: TRxQuery;
    MNGerarPedidoParcial: TMenuItem;
    MnIgualarSaldoaEntregarcomoSaldoPedido: TMenuItem;
    DBEdit13: TDBEdit;
    Label31: TLabel;
    SQLTemplatePDVDN2VLROUTRASDESP: TFloatField;
    MnVisualizarPedidoOrcamentoAtual: TMenuItem;
    SQLPedidoVendaItemPVITN3TOTVENDITEM: TFloatField;
    SQLTotal: TRxQuery;
    GroupConsultaSituacao: TGroupBox;
    RdAbertos: TRadioButton;
    RdFaturado: TRadioButton;
    RdCanc: TRadioButton;
    Label32: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    SQLClienteCLIEA13ID: TStringField;
    MnTrocarStatusdoPedidoparaAberto: TMenuItem;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIECTPPRCVENDA: TStringField;
    RDprint: TRDprint;
    PedidoEspecialPic1: TMenuItem;
    SQLObsNotaNOFIA50DESC: TStringField;
    SQLObsNotaOBSNA255DESC: TMemoField;
    EditCdProduto: TEdit;
    AcessaProduto: TSpeedButton;
    DBEditObs: TDBEdit;
    SQLPedidoVendaItemPDVDA255OBS1: TStringField;
    DBEdit6: TDBEdit;
    BtnCliente: TSpeedButton;
    GrupoVendedorRota: TGroupBox;
    DBEdit15: TDBEdit;
    ComboVendedor: TRxDBLookupCombo;
    DBEdit7: TDBEdit;
    ComboRota: TRxDBLookupCombo;
    GrupoPlanoTransp: TGroupBox;
    DBEdit10: TDBEdit;
    ComboTransp: TRxDBLookupCombo;
    BtnTransportadora: TSpeedButton;
    ComboVeiculo: TRxDBLookupCombo;
    GroupPlano: TGroupBox;
    ComboPlanoRecto: TRxDBLookupCombo;
    DBEdit17: TDBEdit;
    ComboUnidade: TRxDBLookupCombo;
    dsSQLUnidade2: TDataSource;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadeUNIDA15DESCR: TStringField;
    SQLUnidadeUNIDN3FATORCONV: TFloatField;
    Label9: TLabel;
    SQLPedidoVendaItemUNIDICOD: TIntegerField;
    SQLPedidoVendaItemUnidadeLookup: TStringField;
    SQLUnidade2: TRxQuery;
    SQLUnidade2UNIDICOD: TIntegerField;
    SQLUnidade2UNIDA5DESCR: TStringField;
    SQLUnidade2UNIDA15DESCR: TStringField;
    SQLUnidade2UNIDCFRAC: TStringField;
    SQLUnidade2UNIDN3FATORCONV: TFloatField;
    SQLTemplatePDVDN2VLRIMPERMEAB: TFloatField;
    SQLTemplatePDVDN2VLRMONTAGEM: TFloatField;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    SQLPedidoVendaItemDescricaoProduto: TStringField;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    EditParc: TDBEdit;
    Label23: TLabel;
    DTVencto: TDBDateEdit;
    Label26: TLabel;
    EvDBNumEdit5: TEvDBNumEdit;
    ComboNumerario: TRxDBLookupCombo;
    DBEdit18: TDBEdit;
    Label28: TLabel;
    BTParcNovo: TBitBtn;
    BtParcGravar: TBitBtn;
    BtParcExcluir: TBitBtn;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    Label29: TLabel;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    DSSQLNumerario: TDataSource;
    SQLContasReceberNumerario: TStringField;
    ckObsItens: TCheckBox;
    SQLPedidoVendaItemPVITN3QTDBONIF: TFloatField;
    DBEditBonificacao: TDBEdit;
    ckBonificacao: TCheckBox;
    btCalcMix: TBitBtn;
    SQLTemplatePDVDN2PERCMIX: TFloatField;
    ComboTipoPrecoVenda: TRxDBComboBox;
    SQLTemplateCLIECTPPRCVENDA: TStringField;
    SQLPedidoVendaItemPRODCMIX: TStringField;
    SQLPedidoVendaItemTotalItemLiq: TFloatField;
    SQLPedidoVendaItemPRODN3PESOBRUTO: TFloatField;
    ckVendaUnit: TCheckBox;
    SQLPedidoVendaItemCdBarras: TStringField;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    SaldoAtual: TLabel;
    LSaldo: TLabel;
    DBText1: TDBText;
    Label16: TLabel;
    Label14: TLabel;
    LblNomeSistema: TRxLabel;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    RxLabel1: TRxLabel;
    BTNRecalcularPedido: TSpeedButton;
    SQLTemplateCLIENTENOME: TStringField;
    SQLTemplateCLIENTEFONE: TStringField;
    SQLTemplateCLIENTEEMAIL: TStringField;
    DBEditNomeCliente: TDBEdit;
    DBEdit19: TDBEdit;
    Label1: TLabel;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    SQLTemplatePESOTOTAL: TFloatField;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    N1: TMenuItem;
    CorrigeNomesdeClientesVazios1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtnVendedorClick(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure MnCancelarPedidodeVendaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EtiquetasdeCdigodeBarras1Click(Sender: TObject);
    procedure SQLTemplatePDVDN2VLRDESCPROMChange(Sender: TField);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure ImprimirPedidodeVenda1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure BtnEmpresaClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure mnGerarOSClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure MnPedidoOramentoemSequenciaClick(Sender: TObject);
    procedure BTItemNovoClick(Sender: TObject);
    procedure BtItemGravarClick(Sender: TObject);
    procedure SQLPedidoVendaItemNewRecord(DataSet: TDataSet);
    procedure BtItemExcluirClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure MnTrrocarVendedoreRotaPadraoClick(Sender: TObject);
    procedure MnTrocarStatusdoPedidoparaFaturadoClick(Sender: TObject);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure ComboVeiculoExit(Sender: TObject);
    procedure BtnExcluirParcAtuaisClick(Sender: TObject);
    procedure SQLPedidoVendaItemPRODICODChange(Sender: TField);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure MNGerarPedidoParcialClick(Sender: TObject);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure MnIgualarSaldoaEntregarcomoSaldoPedidoClick(Sender: TObject);
    procedure MnVisualizarPedidoOrcamentoAtualClick(Sender: TObject);
    procedure SQLPedidoVendaItemPVITN2VLRUNITChange(Sender: TField);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
    procedure MnTrocarStatusdoPedidoparaAbertoClick(Sender: TObject);
    procedure EditCdProdutoExit(Sender: TObject);
    procedure AcessaProdutoClick(Sender: TObject);
    procedure SQLTemplateCLIEA13IDChange(Sender: TField);
    procedure SQLPedidoVendaItemUNIDICODChange(Sender: TField);
    procedure SQLPedidoVendaItemCalcFields(DataSet: TDataSet);
    procedure EditCdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTParcNovoClick(Sender: TObject);
    procedure BtParcGravarClick(Sender: TObject);
    procedure BtParcExcluirClick(Sender: TObject);
    procedure SQLContasReceberCalcFields(DataSet: TDataSet);
    procedure ckObsItensClick(Sender: TObject);
    procedure ckBonificacaoClick(Sender: TObject);
    procedure btCalcMixClick(Sender: TObject);
    procedure ckVendaUnitClick(Sender: TObject);
    procedure BTNRecalcularPedidoClick(Sender: TObject);
    procedure DBEditNomeClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CorrigeNomesdeClientesVazios1Click(Sender: TObject);
  private
    { Private declarations }
    StatusNovo, StatusAnterior:String;
    IniciouVenda, GerandoPedidoParcial, PlanoDoCliente, CancelandoPedido,TrocaEntrada, PermiteExcluirSemPerguntar :Boolean;
    ValorEntrada:Double;
    ContasReceberID:String;
    BkpEmpresaCorrente : Integer;
    procedure CalculaTotal ;
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoVenda: TFormCadastroPedidoVenda;

implementation

uses DataModulo, CadastroCliente, CadastroVendedor, CadastroTransportadora,
  CadastroPedidoVendaItem, TelaEmissaoEtiquetasCodigoBarras, UnitLibrary,
  CadastroPedidoVendaFinanceiro, TelaConsultaPlanoRecebimento, WaitWindow,
  TelaConsultaEmpresa, TelaDadosOSPedidoVenda, ppForms, TelaConfigPedidos,
  DataModuloTemplate, TelaAssistenteLancamentoContasReceber,
  TelaGeracaoPedidoParcial, SearchLibrary, CadastroProdutos, Math;


{$R *.dfm}

procedure TFormCadastroPedidoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='PEDIDOVENDA';
  PermiteExcluirSemPerguntar := False;
  if not SQLVendedor.Active        then SQLVendedor.Open;
  if not SQLCliente.Active         then SQLCliente.Open;
  if not SQLTransportadora.Active  then SQLTransportadora.Open;
  if not SQLVeiculo.Active         then SQLVeiculo.Open;
  if not SQLSerie.Active           then SQLSerie.Open;
  if not SQLRota.Active            then SQLRota.Open;
  if not SQLNumerario.Active       then SQLNumerario.Open;

  if ckObsItens.Checked then
    DBEditObs.Enabled := True
  else
    DBEditObs.Enabled := False;

  // Dados Padrao Financeiro da Nota
 { ComboNumerarioVista.Value := dm.SQLTerminalAtivoTERMINUMEVISTA.AsString;
  ComboNumerarioPrazo.Value := dm.SQLTerminalAtivoTERMINUMEPRAZO.AsString;
  ComboPortador.Value       := dm.SQLConfigVendaPORTICOD.AsString;
  ComboTipoDoc.Value        := dm.SQLConfigVendaTPDCICOD.AsString;}
end;

procedure TFormCadastroPedidoVenda.BtnClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem   := 'CLIEA13ID';
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroPedidoVenda.BtnVendedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('VENDICOD');
  FieldOrigem   := 'VENDICOD';
  DataSetLookup := SQLVendedor;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,True,False,'');
end;

procedure TFormCadastroPedidoVenda.DBEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnCliente.Click;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  IniciouVenda := True;

  SQLTemplateUSUAA60LOGIN.AsString    := UsuarioAtualNome;
  SQLTemplateEMPRICOD.Value           := EmpresaCorrente;
  StatusAnterior                      := '';
  SQLTemplatePDVDCTIPO.Value          := 'P';
  SQLTemplatePDVDCSTATUS.Value        := 'A';
  SQLTemplatePDVDCIMPORTADO.Value     := 'N';
  SQLTemplatePDVDN2PERCMIX.Value      := 0;
  if DM.SQLConfigVenda.Fieldbyname('OPESICODNF').AsString <> Null then //#ver estava asvariant
    begin
      DataSet.FindField('OPESICOD').Value   := DM.SQLConfigVenda.Fieldbyname('OPESICODNF').Value;
      DataSet.FindField('SERIA5COD').Value  := SQLLocate('OPERACAOESTOQUE','OPESICOD','SERIA5COD',DM.SQLConfigVenda.Fieldbyname('OPESICODNF').AsString);
    end;
  if dm.DataEmissaoPedidos > 0 then
    SQLTemplatePDVDDEMISSAO.AsString  := FormatDateTime('dd/mm/yyyy',dm.DataEmissaoPedidos)
  else
    SQLTemplatePDVDDEMISSAO.AsString  := FormatDateTime('dd/mm/yyyy',Now);
  if dm.DataEntregaPedidos > 0 then
    SQLTemplatePDVDDENTREGA.AsString  := FormatDateTime('dd/mm/yyyy',dm.DataEntregaPedidos)
  else
    SQLTemplatePDVDDENTREGA.AsString  := FormatDateTime('dd/mm/yyyy',Now);
  SQLTemplatePDVDN2TOTPROD.Value    := 0;
  SQLTemplatePDVDN2TOTPED.Value     := 0;
  SQLTemplatePDVDN2VLRDESC.Value    := 0;
  SQLTemplatePDVDN2VLRFRETE.Value   := 0;
  SQLTemplatePDVDN2VLRMONTAGEM.Value   := 0;
  SQLTemplatePDVDN2VLRIMPERMEAB.Value  := 0;
  SQLTemplatePDVDN2VLRDESCPROM.Value   := 0;
  SQLTemplatePDVDN2VLROUTRASDESP.Value := 0;

  if FileExists('rede.txt') then
    SQLTemplatePDVDCTIPOFRETE.Value   := 'F'
  else
    SQLTemplatePDVDCTIPOFRETE.Value   := 'C';
  SQLTemplatePDVDN2PERCFAT.Value    := 0;
  SQLTemplatePDVDN2PERCOMIS.Value   := 0;
  if DM.SQLConfigVenda.Fieldbyname('CFVETOBSPADRAOPED').AsString <> '' then
    SQLTemplatePDVDTOBS.AsString := DM.SQLConfigVenda.Fieldbyname('CFVETOBSPADRAOPED').AsString;
  if DM.SQLTerminalAtivo.ParamByName('VENDICOD').AsInteger > 0 then
    SQLTemplateVENDICOD.AsInteger := DM.SQLTerminalAtivo.Fieldbyname('VENDICOD').AsInteger;
  if dm.RotaAtualPedidos > 0 then
    SQLTemplateRotaIcod.Value := dm.RotaAtualPedidos;
  if dm.VendedorAtualPedidos > 0 then
    SQLTemplateVENDICOD.Value := dm.VendedorAtualPedidos;
  if dm.TranspAtualPedidos > 0 then
    SQLTemplateTRANICOD.Value := dm.TranspAtualPedidos;
  if dm.VeiculoAtualPedidos <> '' then
    SQLTemplateVEICA13ID.Value := dm.VeiculoAtualPedidos;
  if dm.SerieAtualPedidos <> '' then
    SQLTemplateSERIA5COD.Value := dm.SerieAtualPedidos
  else
    SQLTemplateSERIA5COD.Value := SQLSerieSERIA5COD.Value;
  DBEdit6.SetFocus;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
{  if (SQLTemplate.FindField('PDVDCSTATUS').AsString <> 'A') and (not CancelandoPedido) and (not dm.TrocarStatusPedidoParaFaturado) then
    begin
      Informa('Este pedido de venda não está aberto, portanto não pode ser alterado!');
      Abort;
      Exit;
    end;}
  StatusAnterior := SQLTemplate.FindField('PDVDCSTATUS').AsString;
  inherited;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  If SQLTemplate.FindField('PDVDCSTATUS').asString<>'A' Then
    Begin
      ShowMessage('Pedido de Venda não está aberto, portanto não pode ser excluído!');
      Abort;
    End;
  inherited;
end;

procedure TFormCadastroPedidoVenda.MnCancelarPedidodeVendaClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplate.FindField('PDVDCSTATUS').asString = 'C' then
    begin
      Informa('Este Pedido/Orçamento Já Foi Cancelado!');
      Abort;
      Exit;
    end;
  if SQLTemplate.FindField('PDVDCSTATUS').asString = 'F' then
    begin
      Informa('Este Pedido/Orçamento Já Foi Faturado!');
      Abort;
      Exit;
    end;
  If Not SQLTemplate.IsEmpty And (SQLTemplate.FindField('PDVDCSTATUS').asString = 'E') and (Application.MessageBox('Deseja realmente cancelar o Pedido?','Atenção',MB_YesNo)=IdYes) Then
    Begin
      CancelandoPedido := True;
      SQLTemplate.Edit;
      SQLTemplate.FindField('PDVDCSTATUS').asString := 'C';
      SQLTemplate.Post;
      CancelandoPedido := False;
    End;
end;

procedure TFormCadastroPedidoVenda.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      PagePrincipal.ActivePage := TabItens;
      SQLPedidoVendaItem.Close;
      SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
      SQLPedidoVendaItem.Open;
      BTItemNovo.SetFocus;
    end;
  If (Sender as TRxSpeedButton).Name='Button4' Then
    begin
      PagePrincipal.ActivePage := TabFinanceiro;
      SQLContasReceber.Close;
      SQLContasReceber.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
      SQLContasReceber.Open;
      BTParcNovo.SetFocus;
    end;
end;

procedure TFormCadastroPedidoVenda.EtiquetasdeCdigodeBarras1Click(
  Sender: TObject);
begin
  inherited;
  EtiquetaPedidoVenda := SQLTemplate.FindField('PDVDA13ID').asString;
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,True,'');
end;

procedure TFormCadastroPedidoVenda.SQLTemplatePDVDN2VLRDESCPROMChange(
  Sender: TField);
begin
  inherited;
  if FileExists('LaTorre.txt') then
    SQLTemplatePDVDN2TOTPED.asFloat := SQLTemplatePDVDN2TOTPROD.asFloat - SQLTemplatePDVDN2VLRDESCPROM.asFloat
  else
    SQLTemplatePDVDN2TOTPED.asFloat := SQLTemplatePDVDN2TOTPROD.asFloat - SQLTemplatePDVDN2VLRDESCPROM.asFloat + SQLTemplatePDVDN2VLRFRETE.asFloat + SQLTemplatePDVDN2VLROUTRASDESP.asFloat;
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  If DataSet.FindField('EMPRICOD')<>Nil Then
    DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
  If DataSet.FindField('TERMICOD')<>Nil Then
    DataSet.FindField('TERMICOD').Value := TerminalCorrente ;
  Case DataSet.State Of
    DsInsert: DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
  end;
end;

procedure TFormCadastroPedidoVenda.ImprimirPedidodeVenda1Click(
  Sender: TObject);
begin
  inherited;
  if (DM.SQLTerminalAtivo.ParamByName('TERMCTIPO').AsString <> '') then
    begin
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = ''' + SQLTemplate.FieldByName('PDVDA13ID').AsString + '''' ;
      SQLPedidoItens.Open;
      if DM.SQLTerminalAtivo.ParamByName('TERMACTIPOIMPPEDORC').AsString <> '' then
        Case DM.SQLTerminalAtivo.ParamByName('TERMACTIPOIMPPEDORC').AsString[1] of
          '0' : begin
                  // Prepara Impressão de Pedido/Orçamento
                  // Padrao 80 Colunas bobina;
                  Informa('A opção de impressão para bobina 80 colunas, não está disponível no módulo Faturamento!');
                  Exit;
                end;
          '1' : begin
                  // Padrão Matricial/Deskjet/Laser
                  if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                    begin
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString <> '' then
                        begin
                          DM.Report.Output          := toPrinter;
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString;
                        end
                      else
                        DM.Report.Output            := toWindow;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
                end;
          '2' : begin
                  // Personalizado
                  if FileExists(DM.SQLTerminalAtivo.ParamByName('TERMTPATHPEDORC').AsString) then
                    begin
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLTerminalAtivo.ParamByName('TERMTPATHPEDORC').Value;
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString <> '' then
                        begin
                          DM.Report.Output          := toPrinter;
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString;
                        end
                      else
                        DM.Report.Output            := toWindow;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O arquivo para impressão de pedido/orçamento personalizado não foi encontrado, verifique suas consigurações!');
                end;
          '3' : begin
                  // Arquivo Externo .exe
                  if FileExists('PedidoVenda.exe') then
                    WinExec(PChar('PedidoVenda.exe '+ SQLTemplatePDVDA13ID.asString),SW_SHOW)
                  else
                    Informa('Você configurou o sistema para imprimir pedido/orçamento com arquivo externo, mas o arquivo não foi encontrado favor verificar!');
                end;
        end
      else
        begin
          if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
            begin
              DM.Report.DiscardSavedData    := True;
              DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
              DM.Report.ReportTitle         := 'Orçamento';
              DM.Report.WindowStyle.Title   := 'Orçamento';
              if Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString <> '' then
                begin
                  DM.Report.Output          := toPrinter;
                  DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString;
                end
              else
                DM.Report.Output            := toWindow;

              DM.Report.Execute;
            end
          else
            Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
        end;
    end
  else
    begin
      Informa('Este orçamento não será impresso porque as configurações estão incompletas!');
    end;
end;

procedure TFormCadastroPedidoVenda.OrdemdeServio1Click(Sender: TObject);
begin
  inherited;
  if (DM.SQLTerminalAtivo.ParamByName('TERMCTIPO').AsString <> '') then
    begin
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = ''' + SQLTemplate.FieldByName('PDVDA13ID').AsString + '''' ;
      SQLPedidoItens.Open;
      Case DM.SQLTerminalAtivo.ParamByName('TERMACTIPOIMPPEDORC').AsString[1] of
        '0' : begin
                // Prepara Impressão de Pedido/Orçamento
                // Padrao 80 Colunas bobina;
                Informa('A opção de impressão para bobina 80 colunas, não está disponível no módulo Faturamento!');
                Exit;
              end;
        '1' : begin
                // Padrão Matricial/Deskjet/Laser
                if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                  begin
                    DM.Report.DiscardSavedData    := True;
                    DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                    DM.Report.ReportTitle         := 'Orçamento';
                    DM.Report.WindowStyle.Title   := 'Orçamento';
                    if Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString <> '' then
                      begin
                        DM.Report.Output          := toPrinter;
                        DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString;
                      end
                    else
                      DM.Report.Output            := toWindow;

                    DM.Report.Execute;
                  end
                else
                  Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
              end;
        '2' : begin
                // Personalizado
                if FileExists(DM.SQLTerminalAtivo.ParamByName('TERMTPATHPEDORC').AsString) then
                  begin
                    DM.Report.ReportName          := DM.SQLTerminalAtivo.ParamByName('TERMTPATHPEDORC').Value;
                    DM.Report.ReportTitle         := 'Orçamento';
                    DM.Report.WindowStyle.Title   := 'Orçamento';
                    if Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString <> '' then
                      begin
                        DM.Report.Output          := toPrinter;
                        DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString;
                      end
                    else
                      DM.Report.Output            := toWindow;

                    DM.Report.Execute;
                  end
                else
                  Informa('O arquivo para impressão de pedido/orçamento personalizado não foi encontrado, verifique suas consigurações!');
              end;
        '3' : begin
                // Arquivo Externo .exe
                if FileExists('PedidoVenda.exe') then
                  begin
                    WinExec(PChar(DM.PathAplicacao + 'PedidoVenda.exe '+SQLTemplatePDVDA13ID.asString+' OS'),SW_SHOW);
                  end
                else
                  begin
                    Informa('Você configurou o sistema para imprimir pedido/orçamento com arquivo externo, mas o arquivo não foi encontrado favor verificar!');
                  end;
              end;
      end;
    end
  else
    begin
      Informa('Este orçamento não será impresso porque as configurações estão incompletas!');
    end;
end;

procedure TFormCadastroPedidoVenda.BtnEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,True,'');
end;

procedure TFormCadastroPedidoVenda.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
    if (PagePrincipal.ActivePage = TabItens) then
      begin
        SQLPedidoVendaItem.Close;
        SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
        SQLPedidoVendaItem.open;
      end;
end;

procedure TFormCadastroPedidoVenda.GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
begin
  if not SQLOrcamento.Active then SQLOrcamento.Open;
{  SQLOrcamento.Close ;
  SQLOrcamento.MacroByName('MFiltro').Value := 'PDVDA13ID = ''' + IDOrcamento  + '''';
  SQLOrcamento.Open ;}
  if SQLOrcamento.IsEmpty then
    begin
      Informa('Problemas ao imprimir Orçamento!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  DM.TblPedidoCab.Close;
  try
    DM.TblPedidoCab.DeleteTable;
    DM.TblPedidoCab.CreateTable;
  except
    DM.TblPedidoCab.CreateTable;
  end;
  DM.TblPedidoCab.AddIndex('Primario','PedICod',[ixPrimary]);
  DM.TblPedidoCab.Open;

  DM.SQLEmpresa.Locate('EMPRICOD',EmpresaPadrao,[]);

  DM.TblPedidoCab.Append;
  If SQLOrcamento.FieldByName('PDVDCTIPO').asString = 'P' Then
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'PEDIDO NRO:'
  Else
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'ORÇAMENTO NRO:';
  DM.TblPedidoCabPedICod.AsString                := SQLOrcamento.FieldByName('PDVDA13ID').AsString;
  DM.TblPedidoCabEmitente_Nome.asString          := DM.SQLEmpresaEMPRA60NOMEFANT.AsString;
  DM.TblPedidoCabEmitente_Ender.asString         := DM.SQLEmpresaEMPRA60END.asString;
  DM.TblPedidoCabEmitente_Bairro.asString        := DM.SQLEmpresaEMPRA60BAI.asString;
  DM.TblPedidoCabEmitente_Cidade.asString        := DM.SQLEmpresaEMPRA60CID.asString;
  DM.TblPedidoCabEmitente_UF.asString            := DM.SQLEmpresaEMPRA2UF.asString;
  DM.TblPedidoCabEmitente_CGC.asString           := DM.SQLEmpresaEMPRA14CGC.asString;
  DM.TblPedidoCabEmitente_IE.asString            := DM.SQLEmpresaEMPRA20IE.asString;
  DM.TblPedidoCabEmitente_Fone.asString          := Dm.SQLEmpresaEMPRA20FONE.asString;
  DM.TblPedidoCabDtEmissao.Value                 := SQLOrcamento.FieldByName('PDVDDEMISSAO').Value;
  if DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLOrcamento.FieldByName('CLIEA13ID').Value],1) then
    begin
      DM.TblPedidoCabDestinatario_Nome.asString      := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString;
      DM.TblPedidoCabDestinatario_Endereco.asString  := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString;
      DM.TblPedidoCabDestinatario_Bairro.asString    := DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString;
      DM.TblPedidoCabDestinatario_Cep.asString       := DM.SQLTemplate.FieldByName('CLIEA8CEPRES').AsString;
      DM.TblPedidoCabDestinatario_Cidade.asString    := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString;
      DM.TblPedidoCabDestinatario_UF.asString        := DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
      DM.TblPedidoCabDestinatario_CpfCgc.asString    := DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString;
      DM.TblPedidoCabDestinatario_IE.asString        := DM.SQLTemplate.FieldByName('CLIEA20IE').AsString;
      DM.TblPedidoCabDestinatario_Fone.asString      := DM.SQLTemplate.FieldByName('CLIEA15FONE1').AsString;
      DM.TblPedidoCabDestinatario_Fone2.AsString     := DM.SQLTemplate.FieldByName('CLIEA15FONE2').AsString;
      DM.TblPedidoCabDestinatario_Fax.asString       := DM.SQLTemplate.FieldByName('CLIEA15FAX').AsString;
    end;
    DM.TblPedidoCabDtaEntrega.asVariant            := SQLTemplatePDVDDENTREGA.asVariant;
    DM.TblPedidoCabDtEmissao.AsDateTime            := SQLTemplatePDVDDEMISSAO.AsDateTime;
    DM.TblPedidoCabComprador.asString              := SQLTemplatePDVDA30COMPRADOR.asString;
    DM.TblPedidoCabOrdemCompra.asString            := SQLTemplatePDVDA30NROPEDCOMP.asString;
    DM.TblPedidoCabPlano.asString                  := SQLTemplatePLRCICOD.AsString + ' - ' +
                                                      SQLTemplatePlanoRecebimentoLookUp.asString;
    If SQLTemplatePDVDCTIPOFRETE.asString='C' Then
      DM.TblPedidoCabTipoFrete.asString   := '1'
    Else
      DM.TblPedidoCabTipoFrete.asString   := '2';
  DM.TblPedidoCabValorFrete.Value                := SQLOrcamento.FieldByName('PDVDN2VLRFRETE').AsFloat;
  DM.TblPedidoCabTotalDesconto.Value             := SQLOrcamento.FieldByName('PDVDN2VLRDESC').AsFloat + SQLOrcamento.FieldByName('PDVDN2VLRDESCPROM').AsFloat;
  DM.TblPedidoCabTotal.Value                     := SQLOrcamento.FieldByName('PDVDN2TOTPROD').AsFloat;
  DM.TblPedidoCabObservacoes.asString            := SQLOrcamento.FieldByName('PDVDTOBS').asString;
  DM.TblPedidoCabVendedor.asString               := SQLOrcamento.FieldByName('VENDICOD').AsString + ' - '+
                                                    SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLOrcamento.FieldByName('VENDICOD').AsString);
  DM.TblPedidoCabRota.asString                   := SQLOrcamento.FieldByName('ROTAICOD').AsString + ' - '+
                                                    SQLLocate('ROTA', 'ROTAICOD', 'ROTAA60NOME', SQLOrcamento.FieldByName('ROTAICOD').AsString);
  //  DM.TblPedidoCabEmail.asString                  := AnsiLowerCase(SQLTemplateVendedorEmailLookUp.asString);
  DM.TblPedidoCabEmitente_Email.AsString         := LowerCase(DM.SQLEmpresaEMPRA60EMAIL.AsString);
  DM.TblPedidoCabEmitente_URL.AsString           := LowerCase(DM.SQLEmpresaEMPRA60URL.AsString);
  DM.TblPedidoCabEmitenteLogo.AsVariant          := DM.SQLEmpresaEMPRBLOGOTIPO.AsVariant;

  DM.TblPedidoCab.Post;
  DM.TblPedidoCab.Close;

  If DM.TblPedidoItens.Exists Then
    DM.TblPedidoItens.DeleteTable;
  DM.TblPedidoItens.CreateTable;
  DM.TblPedidoItens.Open;

  if not SQLOrcamentoItem.Active then SQLOrcamentoItem.Open;
  SQLOrcamentoItem.First;
  // Itens
  While Not SQLOrcamentoItem.Eof Do
    Begin
      DM.TblPedidoItens.Append;
      DM.TblPedidoItensVlrUnitario.Value := SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value;
      DM.TblPedidoItensVlrTotal.Value    := (SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value) *
                                             SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value ;

      DM.TblPedidoItensUn.Value          := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',
                                            SQLLocate('PRODUTO','PRODICOD','UNIDICOD', SQLOrcamentoItem.FieldByName('PRODICOD').AsString));

      DM.TblPedidoItensQtd1.Value        := SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value;
      DM.TblPedidoItensPedICod.Value     := SQLOrcamentoItem.FieldbyName('PDVDA13ID').Value;
      DM.TblPedidoItensDescricao.Value   := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensReferencia.Value  := SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensCodigo.Value      := SQLOrcamentoItem.FieldbyName('PRODICOD').AsInteger;
      DM.TblPedidoItensCodItem.Value     := SQLOrcamentoItem.FieldbyName('PVITIITEM').AsInteger;
      DM.TblPedidoItens.Post;
      SQLOrcamentoItem.Next;
    End;

  DM.TblPedidoItens.Close;
  SQLOrcamentoItem.Close;

    DM.TblPedidoFinan.Close;
  try
    DM.TblPedidoFinan.DeleteTable;
    DM.TblPedidoFinan.CreateTable;
  except
    DM.TblPedidoFinan.CreateTable;
  end;

  DM.TblPedidoFinan.Open;

  if SQLParcelasVista <> nil then
    begin
      if not SQLParcelasVista.Active then SQLParcelasVista.Open;
      SQLParcelasVista.First;
      While not SQLParcelasVista.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasVista.FieldByName(CampoValorParcela).Value;
          DM.TblPedidoFinanVencimento.Value := Date;
          DM.TblPedidoFinan.Post;
          SQLParcelasVista.Next;
        end;
    end;

  if SQLParcelasPrazo <> nil then
    begin
      if not SQLParcelasPrazo.Active then SQLParcelasPrazo.Open;
      SQLParcelasPrazo.First;
      While not SQLParcelasPrazo.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasPrazo.FieldByName(CampoValorParcela).Value;
          DM.TblPedidoFinanVencimento.Value := SQLParcelasPrazo.FieldByName(CampoDataVectoParcela).Value;
          DM.TblPedidoFinan.Post;
          SQLParcelasPrazo.Next;
        end;
    end;
  DM.TblPedidoFinan.Close;
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
 ID : String;
begin
  inherited;
  Case DataSet.State Of
    DsInsert: begin
                DataSet.FieldByName('CTRCICOD').AsInteger:=DataSet.FieldByName('CTRCICOD').AsInteger + 1;
                ID := Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.FieldByName('CTRCICOD').asInteger]);
                DataSet.FieldByName('CTRCA13ID').asString:=ID+DM.DigitVerifEAN(ID);
              end;

  end;
  Action := DaRetry;
end;

procedure TFormCadastroPedidoVenda.mnGerarOSClick(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  Application.CreateForm(TFormTelaDadosOSPedidoVenda,FormTelaDadosOSPedidoVenda);
  FormTelaDadosOSPedidoVenda.ShowModal;
end;

procedure TFormCadastroPedidoVenda.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
     mnGerarOS.Enabled := True
  else
     mnGerarOS.Enabled := False;
end;

procedure TFormCadastroPedidoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := Nil;
end;

procedure TFormCadastroPedidoVenda.BTNLocalizarClick(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if RdAbertos.Checked then
    Clausula := Clausula + ' and (PDVDCSTATUS = ''A'' or PDVDCSTATUS = ''E'' or PDVDCSTATUS = ''P'')';
  if RdFaturado.Checked then
    Clausula := Clausula + ' and PDVDCSTATUS = ''F''';
  if RdCanc.Checked then
    Clausula := Clausula + ' and PDVDCSTATUS = ''C''';

  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));
  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      if Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text) <> 0 Then
        begin
          TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text,1,Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text)-1));
        end;
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
      SQLTemplate.Open;
    end
  else
    Informa('Pesquisa incomleta, verifique!');
end;

procedure TFormCadastroPedidoVenda.DBEdit6Exit(Sender: TObject);
var MotBloq: String;
begin
  inherited;
  if DBEdit6.Text <> '' then
    begin
      MotBloq := DM.SQLLocate('CLIENTE','CLIEA13ID','MTBLICOD',''''+SQLTemplateCLIEA13ID.AsString+'''');
      if MotBloq <> '' then
        begin
          MotBloq := DM.SQLLocate('MOTIVOBLOQUEIO','MTBLICOD','MTBLA60DESCR',MotBloq);
          ShowMessage(MotBloq);
        end;
    end;
end;

procedure TFormCadastroPedidoVenda.MnPedidoOramentoemSequenciaClick(
  Sender: TObject);
var Linha, vCol : integer;
begin
  inherited;
  // Arquivo Externo .exe
  if sqltemplate.IsEmpty then
    begin
      ShowMessage('Não existe nenhum pedido a ser impresso!');
      Exit;
    end;
  if FileExists('PedidoVenda.exe') then
    begin
      SQLTemplate.First;
      While not SQLTemplate.Eof Do
        begin
          WinExec(PChar('PedidoVenda.exe '+ SQLTemplatePDVDA13ID.asString),SW_SHOW);
          SQLTemplate.Next;
        end;
      Exit;
    end;
end;

procedure TFormCadastroPedidoVenda.BTItemNovoClick(Sender: TObject);
begin
  if SQLTemplatePDVDCSTATUS.Value = 'A' then
    begin
      if (SQLTemplate.State in dsEditModes) then
        SQLTemplate.Post
      else
        Application.ProcessMessages;

      if not SQLPedidoVendaItem.Active then
        begin
          SQLPedidoVendaItem.Close;
          SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
          SQLPedidoVendaItem.Open;
        end;
      SQLPedidoVendaItem.Append;
      SaldoAtual.Visible := True;
      SaldoAtual.Update;

      // Liberar Campos dos itens
      EditCdProduto.ReadOnly    := False;
      DBEditQuantidade.ReadOnly := False;
      ComboUnidade.ReadOnly     := False;
      DBEditUnitario.ReadOnly   := False;
      DBEditObs.ReadOnly        := False;

      EditCdProduto.Clear;
      EditCdProduto.SetFocus;
    end
  else
    ShowMessage('Este Pedido não está em Aberto! Não é permitido incluir item!');
end;

procedure TFormCadastroPedidoVenda.BtItemGravarClick(Sender: TObject);
begin
  if SQLPedidoVendaItemPRODICOD.Value < 1 then
    begin
      ShowMessage('O campo codigo do produto deve ser maior do que zero! Verifique!');
      EditCdProduto.SetFocus;
      exit;
    end;

  if SQLPedidoVendaItemPVITN3QUANT.Value = 0 then
    begin
      ShowMessage('O campo quantidade deve ser maior do que zero! Verifique!');
      DBEditQuantidade.SetFocus;
      exit;
    end;

  if SQLPedidoVendaItemPVITN2VLRUNIT.Value = 0 then
    begin
      ShowMessage('O campo valor unitário não foi informado! Verifique!');
      DBEditUnitario.SetFocus;
      exit;
    end;

  if (SQLPedidoVendaItem.State in dsEditModes) then
    begin
      try
        SQLPedidoVendaItemPVITN3QUANTVEND.Value := SQLPedidoVendaItemPVITN3QUANT.Value;
      except
        Application.ProcessMessages;
      end;
      SQLPedidoVendaItem.Post;
      SQLPedidoVendaItem.Close;
      SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
      SQLPedidoVendaItem.open;
      SQLPedidoVendaItem.last;
      CalculaTotal;

      // Liberar Campos dos itens
      EditCdProduto.ReadOnly    := True;
      DBEditQuantidade.ReadOnly := True;
      ComboUnidade.ReadOnly     := True;
      DBEditUnitario.ReadOnly   := True;
      DBEditObs.ReadOnly        := True;

      SaldoAtual.Visible := True;
      SaldoAtual.Update;
      BtItemNovo.SetFocus;
    end
  else
    ShowMessage('Não existem dados a ser gravados!');
end;

procedure TFormCadastroPedidoVenda.SQLPedidoVendaItemNewRecord(
  DataSet: TDataSet);
begin
  SQLPedidoVendaItemPDVDA13ID.Value   := SQLTemplatePDVDA13ID.Value;
  if SQLPedidoItens.Active then SQLPedidoItens.Close;
  SQLPedidoItens.SQL.Text := 'Select Max(PVITIITEM) From PEDIDOVENDAITEM Where PDVDA13ID = ''' + SQLTemplatePDVDA13ID.AsString + '''' ;
  SQLPedidoItens.Open;
  if SQLPedidoItens.FieldByName('MAX').AsInteger = dm.SQLConfigVenda.Fieldbyname('CFVEINROITENSNF').Value then
    ShowMessage('Aviso!'+chr(13)+chr(13)+'Ultrapassou o número máximo de itens que a sua Nota Fiscal permite!');

  SQLPedidoVendaItemPVITIITEM.Value := SQLPedidoItens.FieldByName('MAX').AsInteger+1;
  SQLPedidoItens.Close;
  SQLPedidoVendaItem.DisableControls;
  SQLPedidoVendaItemPVITN3QUANT.Value           := 1;
  SQLPedidoVendaItemPVITN3QUANTVEND.asFloat     := 0;
  SQLPedidoVendaItemPVITN3QTDBONIF.asFloat      := 0;
  SQLPedidoVendaItemPVITN2VLRUNIT.asFloat       := 0;
  SQLPedidoVendaItemPVITN2PERCDESC.asFloat      := 0;
  SQLPedidoVendaItemPVITN2VLRDESC.asFloat       := 0;
  SQLPedidoVendaItemPVITN2PERCCOMIS.asFloat     := 0;
  SQLPedidoVendaItemPVITN3TOTVENDITEM.asFloat   := 0;
  SQLPedidoVendaItemREGISTRO.Value              := Now;
  SQLPedidoVendaItemPENDENTE.Value              := 'S';
  SQLPedidoVendaItemPRODN3PESOBRUTO.value       := 0;
  SQLPedidoVendaItem.EnableControls;
  ckBonificacao.Checked := False;
  DBEditBonificacao.Enabled := False;
  ckVendaUnit.Checked := False;
  DBEditUnitario.Enabled := False;
end;


procedure TFormCadastroPedidoVenda.BtItemExcluirClick(Sender: TObject);
begin
  if SQLTemplatePDVDCSTATUS.Value = 'A' then
    begin
      if Pergunta('Não','Tem certeza que deseja excluir o item lançado atualmente?') then
        begin
          SQLPedidoVendaItem.Delete;
          CalculaTotal;
          BtItemNovo.SetFocus;
        end;
    end
  else
    ShowMessage('Este Pedido não está em Aberto! Não é permitido excluir item!');
end;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if (SQLTemplateCLIEA13ID.Value <> '' ) then
    begin
      if (SQLTemplate.State in ([dsInsert])) and not GerandoPedidoParcial then
        begin
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select') ;
          DM.SQLTemplate.SQL.Add('Count(*) as NROPARCVENC') ;
          DM.SQLTemplate.SQL.Add('from CONTASRECEBER') ;
          DM.SQLTemplate.SQL.Add('where CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + '''') ;
          DM.SQLTemplate.SQL.Add(' and (CTRCN2VLR-CTRCN2TOTREC) > 0') ;
          DM.SQLTemplate.SQL.Add(' and (CTRCCSTATUS = ''A'' OR CTRCCSTATUS = ''N'')') ;
          DM.SQLTemplate.SQL.Add(' and (CTRCCTIPOREGISTRO = ''N'' OR CTRCCTIPOREGISTRO IS NULL)') ;
          DM.SQLTemplate.SQL.Add(' and (CTRCDVENC < :xDataVencimento)') ;
          Dm.SQLTemplate.ParamByName('xDataVencimento').asdate := date;

          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.FieldByName('NROPARCVENC').Value > 0 then
            ShowMessage('Este cliente possui parcelas em aberto!');
        end;
    end
  else
    begin
      ShowMessage('Voce deve escolher um cliente para poder gravar um pedido!');
      Abort;
      Exit;
    end;

  if DM.SQLConfigVenda.Fieldbyname('CFVECVENDEDOREXIGE').Value = 'S' then
    if SQLTemplateVENDICOD.AsString = '' then
      begin
        ComboVendedor.SetFocus;
        ShowMessage('Erro! O Vendedor esta configurado para ser Obrigatório!');
        Abort;
        Exit;
      end;

  if SQLTemplatePLRCICOD.AsString = '' then
    begin
      ComboPlanoRecto.SetFocus;
      ShowMessage('Erro! O Plano de Recebimento é Obrigatório!');
      Abort;
      Exit;
    end;

  inherited;
  StatusNovo := SQLTemplate.FindField('PDVDCSTATUS').asString;
end;

procedure TFormCadastroPedidoVenda.MnTrrocarVendedoreRotaPadraoClick(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaConfigPedidos,FormTelaConfigPedidos);
  FormTelaConfigPedidos.ShowModal;
  if dm.VendedorAtualPedidos > 0 then
    begin
      LbVendedorAtual.Visible := True;
      LbVendedorAtual.Caption := 'Vendedor Atual '+ intToStr(dm.VendedorAtualPedidos);
      LbVendedorAtual.Update;
    end
  else
    begin
      LbVendedorAtual.Visible := False;
      LbVendedorAtual.Update;
    end;
  if dm.RotaAtualPedidos > 0 then
    begin
      LbRotaAtual.Visible := True;
      LbRotaAtual.Caption := 'Rota Atual '+ intToStr(dm.RotaAtualPedidos);
      LbRotaAtual.Update;
    end
  else
    begin
      LbRotaAtual.Visible := False;
      LbRotaAtual.Update;
    end;
  if dm.TranspAtualPedidos > 0 then
    begin
      LbTranspAtual.Visible := True;
      LbTranspAtual.Caption := 'Transp Atual '+ intToStr(dm.TranspAtualPedidos);
      LbTranspAtual.Update;
    end
  else
    begin
      LbTranspAtual.Visible := False;
      LbTranspAtual.Update;
    end;
  if dm.VeiculoAtualPedidos <> '' then
    begin
      LbVeiculo.Visible := True;
      LbVeiculo.Caption := 'Veiculo Atual '+ dm.VeiculoAtualPedidos;
      LbVeiculo.Update;
    end
  else
    begin
      LbVeiculo.Visible := False;
      LbVeiculo.Update;
    end;
  if dm.DataEmissaoPedidos <> null then
    begin
      LbEmissao.Visible := True;
      LbEmissao.Caption := 'Emissão '+ FormatDateTime('dd/mm/yyyy',dm.DataEmissaoPedidos);
      LbEmissao.Update;
    end
  else
    begin
      LbEmissao.Visible := False;
      LbEmissao.Update;
    end;
  if dm.DataEntregaPedidos <> null then
    begin
      LbDataEntrega.Visible := True;
      LbDataEntrega.Caption := 'Entrega '+ FormatDateTime('dd/mm/yyyy',dm.DataEntregaPedidos);
      LbDataEntrega.Update;
    end
  else
    begin
      LbDataEntrega.Visible := False;
      LbDataEntrega.Update;
    end;
end;

procedure TFormCadastroPedidoVenda.MnTrocarStatusdoPedidoparaFaturadoClick(
  Sender: TObject);
begin
  inherited;
  dm.TrocarStatusPedidoParaFaturado := True;
  if SQLTemplatePDVDCSTATUS.Value = 'E' then
    begin
      SQLTemplate.Edit;
      SQLTemplatePDVDCSTATUS.Value := 'F';
      SQLTemplate.Post;
    end
  else
    ShowMessage('O pedido não está Encerrado ainda, Verifique');
end;

procedure TFormCadastroPedidoVenda.BtnTransportadoraClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('TRANICOD');
  FieldOrigem := 'TRANICOD';
  DataSetLookup := SQLTransportadora;
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,True,'');
end;

procedure TFormCadastroPedidoVenda.ComboVeiculoExit(Sender: TObject);
begin
  inherited;
  if (ComboVeiculo.KeyValue <> null) and (SQLTemplate.State in dsEditModes) then
    SQLTemplatePDVD8PLACAVEIC.AsString := DM.SQLLocate('VEICULO','VEICA13ID','VEICA7PLACA',''''+SQLTemplateVEICA13ID.Value+'''');
end;

procedure TFormCadastroPedidoVenda.BtnExcluirParcAtuaisClick(
  Sender: TObject);
begin
  inherited;
  if not PermiteExcluirSemPerguntar then
    if Pergunta('Não', 'Tem certeza que deseja excluir estas parcelas?') then
      begin
        DM.RegistraExclusao('CONTASRECEBER',SQLContasReceber);
        SQLContasReceber.first;
        While not SQLContasReceber.eof do
            SQLContasReceber.Delete;

        SQLTemplate.Edit;
        SQLTemplatePLRCICOD.AsString := '';
        SQLTemplate.Post;

        SQLContasReceber.Close;
        SQLContasReceber.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
        SQLContasReceber.Open;
      end;

  ComboPlanoRecto.Value := '';
end;

procedure TFormCadastroPedidoVenda.SQLPedidoVendaItemPRODICODChange(
  Sender: TField);
var xUnidade1, xUnidade2 : string;
begin
  inherited;
  // alimenta o Combo Unidade2 com apenas as unidades cadastradas no produto.
  xUnidade1 := SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLPedidoVendaItemPRODICOD.AsString);
  xUnidade2 := SQLLocate('PRODUTO','PRODICOD','UNIDICOD2',SQLPedidoVendaItemPRODICOD.AsString);
  sqlunidade2.close;
  sqlunidade2.MacroByName('Filtro').Value := 'UNIDICOD = ' + xUnidade1;
  if xunidade2 <> '' then
    sqlunidade2.MacroByName('Filtro').Value := sqlunidade2.MacroByName('Filtro').Value + ' or UNIDICOD = ' + xUnidade2;

  if (xUnidade1 = '') then
    begin
      Showmessage('Produto: '+SQLPedidoVendaItemPRODICOD.AsString+' , sem nenhuma Unidade de Venda Varejo Cadastrada! Verifique Cadastro!');
      Abort;
      Exit;
    end;

  sqlunidade2.open;

  // Seta a Unidade1 como padrao
  SQLPedidoVendaItemUNIDICOD.AsString := xUnidade1;

  // Monta Saldo Produto
  SaldoAtual.Caption := '0' ;
  SaldoAtual.Update;
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO');
  SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao);
  SQLGeral.SQL.Add('and   PRODICOD = ' + SQLPedidoVendaItemPRODICOD.AsString);
  SQLGeral.Open ;
  if not SQLGeral.Eof then
    begin
      SaldoAtual.Caption := FloatToStr(SQLGeral.FieldByName('PSLDN3QTDE').asFloat);
      SaldoAtual.Update;
    end ;
  SQLGeral.Close ;
end;

procedure TFormCadastroPedidoVenda.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  if IniciouVenda then
    begin
      SQLContasReceber.Close;
      Button3.Click;
      IniciouVenda := False;
    end;
end;

procedure TFormCadastroPedidoVenda.MNGerarPedidoParcialClick(Sender: TObject);
begin
  inherited;
  if SQLTemplatePDVDCSTATUS.Value = 'P' then
    begin
      GerandoPedidoParcial := True;
      Application.CreateForm(TFormTelaPedidoParcial,FormTelaPedidoParcial);
      SQLPedidoVendaItem.First;
      FormTelaPedidoParcial.TblQtde.Open;
      while not SQLPedidoVendaItem.eof do
        begin
          if SQLPedidoVendaItemPVITN3QUANTVEND.Value > 0 then
            begin
              FormTelaPedidoParcial.TblQtde.Append;
              FormTelaPedidoParcial.TblQtdePRODICOD.Value      := SQLPedidoVendaItemPRODICOD.Value;
              FormTelaPedidoParcial.TblQtdePRODA60DESCR.Value  := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLPedidoVendaItemPRODICOD.AsString);
              FormTelaPedidoParcial.TblQtdePVITN3VLRUNIT.Value := SQLPedidoVendaItemPVITN2VLRUNIT.Value;
              FormTelaPedidoParcial.TblQtdePVITN3QUANT.Value   := SQLPedidoVendaItemPVITN3QUANT.Value;
              FormTelaPedidoParcial.TblQtdeVlrTotalItem.Value  := SQLPedidoVendaItemPVITN3TOTVENDITEM.Value;
              FormTelaPedidoParcial.TblQtdeQTDEATENDIDO.Value  := SQLPedidoVendaItemPVITN3QUANTVEND.Value;
              FormTelaPedidoParcial.TblQtdeCLIEA13ID.Value     := SQLTemplateCLIEA13ID.Value;
              FormTelaPedidoParcial.TblQtdeVENDICOD.Value      := SQLTemplateVENDICOD.Value;
              FormTelaPedidoParcial.TblQtdePLRCICOD.Value      := SQLTemplatePLRCICOD.Value;
              FormTelaPedidoParcial.TblQtdeROTAICOD.Value      := SQLTemplateROTAICOD.Value;
              FormTelaPedidoParcial.TblQtdePDVDA13ID.Value     := SQLTemplatePDVDA13ID.Value;
              FormTelaPedidoParcial.TblQtde.Post;
            end;
          SQLPedidoVendaItem.Next;
        end;
      FormTelaPedidoParcial.ShowModal;
      if FormTelaPedidoParcial.ModalResult = MROK then
        begin
          // Lancar Cabecalho
          SQLGeral.Close;
          SQLGeral.sql.Clear;
          SQLGeral.SQL.Add('Select * from PedidoVenda where PDVDA13ID = '''+FormTelaPedidoParcial.TblQtdePDVDA13ID.Value+'''');
          SQLGeral.Open;
          SQLTemplate.Append;
          IniciouVenda := False;
          SQLTemplatePDVDDEMISSAO.Asstring     := FormatDateTime('dd/mm/yyyy',now);
          SQLTemplatePDVDDENTREGA.Asstring     := FormatDateTime('dd/mm/yyyy',now);
          SQLTemplateEMPRICOD.Value            := SQLGeral.FindField('EMPRICOD').Value;
          SQLTemplateCLIEA13ID.Value           := SQLGeral.FindField('CLIEA13ID').Value;
          SQLTemplateVENDICOD.AsVariant        := SQLGeral.FindField('VENDICOD').AsVariant;
          SQLTemplatePLRCICOD.AsVariant        := SQLGeral.FindField('PLRCICOD').AsVariant;
          SQLTemplateROTAICOD.AsVariant        := SQLGeral.FindField('ROTAICOD').AsVariant;
          SQLTemplateTRANICOD.AsVariant        := SQLGeral.FindField('TRANICOD').AsVariant;
          SQLTemplatePDVDN2VLRFRETE.Value      := 0;
          SQLTemplatePDVDN2VLRDESC.Value       := 0;
          SQLTemplatePDVDN2VLRDESCPROM.Value   := 0;
          SQLTemplatePDVDN2TOTPROD.Value       := 0;
          SQLTemplatePDVDN2TOTPED.Value        := 0;
          SQLTemplatePDVDN2TOTPROD.Value       := 0;
          SQLTemplatePDVDINROTALAO.AsVariant   := SQLGeral.FindField('PDVDINROTALAO').AsVariant;
          SQLTemplateVEICA13ID.AsVariant       := SQLGeral.FindField('VEICA13ID').AsVariant;
          SQLTemplatePDVD8PLACAVEIC.AsVariant  := SQLGeral.FindField('PDVD8PLACAVEIC').AsVariant;
          SQLTemplatePDVDCTIPOFRETE.AsVariant  := SQLGeral.FindField('PDVDCTIPOFRETE').AsVariant;
          SQLTemplatePDVDCTIPO.AsVariant       := SQLGeral.FindField('PDVDCTIPO').AsVariant;
          SQLTemplateSERIA5COD.AsVariant       := SQLGeral.FindField('SERIA5COD').AsVariant;
          SQLTemplatePDVDCSTATUS.Value         := 'A';
          SQLTemplate.Post;
          // Lancar Itens
          FormTelaPedidoParcial.TblQtde.First;
          While not FormTelaPedidoParcial.TblQtde.Eof do
            begin
              if FormTelaPedidoParcial.TblQtdeQTDEATENDIDO.Value > 0 then
                begin
                  SQLPedidoVendaItem.Close;
                  SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
                  SQLPedidoVendaItem.Open;
                  SQLPedidoVendaItem.Append;
                  SQLPedidoVendaItemPDVDA13ID.Value       := SQLTemplatePDVDA13ID.Value;
                  SQLPedidoVendaItemPRODICOD.Value        := FormTelaPedidoParcial.TblQtdePRODICOD.Value;
                  SQLPedidoVendaItemPVITN2VLRUNIT.Value   := FormTelaPedidoParcial.TblQtdePVITN3VLRUNIT.Value;
                  SQLPedidoVendaItemPVITN3QUANT.Value     := FormTelaPedidoParcial.TblQtdeQTDEATENDIDO.Value;
                  SQLPedidoVendaItemPVITN2PERCDESC.Value  := 0;
                  SQLPedidoVendaItemPVITN2VLRDESC.Value   := 0;
                  SQLPedidoVendaItemPVITN2PERCCOMIS.Value := 0;
                  SQLPedidoVendaItem.Post;
                  CalculaTotal;
                  // Corrige a Quantidade no pedido Original (Coluna=PVITN3QUANTVEND) usada para fazer o parcial
                  SQLGeral.Close;
                  SQLGeral.sql.Clear;
                  SQLGeral.SQL.Add('Select * from PedidoVendaItem where PDVDA13ID = '''+FormTelaPedidoParcial.TblQtdePDVDA13ID.Value+''' and PRODICOD = '+
                                   FormTelaPedidoParcial.TblQtdePRODICOD.Asstring);
                  SQLGeral.Open;
                  SQLGeral.Edit;
                  SQLGeral.FindField('PVITN3QUANTVEND').Value := sqlgeral.FindField('PVITN3QUANTVEND').Value -
                                                                 FormTelaPedidoParcial.TblQtdeQTDEATENDIDO.Value;
                  SQLGeral.Post;
                end;
              FormTelaPedidoParcial.TblQtde.Next;
            end;
          SQLPedidoVendaItem.Close;
          SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
          SQLPedidoVendaItem.Open;
        end;
      GerandoPedidoParcial := False;
    end
  else
    ShowMessage('O Status do pedido selecionado não permite gerar entrega parcial!');
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  //  SQLContasReceberCTRCCEMITIDOBOLETO.Value  := 'N' ;
  SQLContasReceberPDVDA13ID.AsString      := SQLTemplatePDVDA13ID.Value ;
  SQLContasReceberCLIEA13ID.AsString      := SQLTemplateCLIEA13ID.Value ;

  SQLContasReceberCTRCN2VLR.Value         := 0 ;
  SQLContasReceberCTRCN2DESCFIN.Value     := 0 ;

  SQLContasReceberCTRCN2TOTREC.Value      := 0 ;
  SQLContasReceberCTRCN2TOTJUROREC.Value  := 0 ;
  SQLContasReceberCTRCN2TOTMULTAREC.Value := 0 ;
  SQLContasReceberCTRCN2TOTDESCREC.Value  := 0 ;
  SQLContasReceberCTRCCSTATUS.Value       := 'A' ;
  SQLContasReceberCTRCA5TIPOPADRAO.Value  := 'CRD';
  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  // SQLContasReceberCTRCCTIPOREGISTRO.Value := 'N';
end;

procedure TFormCadastroPedidoVenda.MnIgualarSaldoaEntregarcomoSaldoPedidoClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplatePDVDCSTATUS.Value = 'P' then
    begin
      if Pergunta('Não','Tem Certeza que deseja igualar o saldo a entregar dos itens deste pedido parcial?') then
        begin
          SQLPedidoVendaItem.First;
          while not SQLPedidoVendaItem.Eof do
            begin
              SQLPedidoVendaItem.Edit;
              SQLPedidoVendaItemPVITN3QUANTVEND.Value := SQLPedidoVendaItemPVITN3QUANT.Value; 
              SQLPedidoVendaItem.Post;
              SQLPedidoVendaItem.Next;
            end;
        end;
    end;
end;

procedure TFormCadastroPedidoVenda.MnVisualizarPedidoOrcamentoAtualClick(
  Sender: TObject);
begin
  inherited;
  if (DM.SQLTerminalAtivo.ParamByName('TERMCTIPO').AsString <> '') then
    begin
      SQLPedidoItens.Close;
      SQLPedidoItens.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID = ''' + SQLTemplate.FieldByName('PDVDA13ID').AsString + '''' ;
      SQLPedidoItens.Open;
      if DM.SQLTerminalAtivo.ParamByName('TERMACTIPOIMPPEDORC').AsString <> '' then
        Case DM.SQLTerminalAtivo.ParamByName('TERMACTIPOIMPPEDORC').AsString[1] of
          '0' : begin
                  // Prepara Impressão de Pedido/Orçamento
                  // Padrao 80 Colunas bobina;
                  Informa('A opção de impressão para bobina 80 colunas, não está disponível no módulo Faturamento!');
                  Exit;
                end;
          '1' : begin
                  // Padrão Matricial/Deskjet/Laser
                  if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                    begin
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString <> '' then
                        begin
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString;
                          DM.Report.Output          := toWindow;
                        end;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
                end;
          '2' : begin
                  // Personalizado
                  if FileExists(DM.SQLTerminalAtivo.ParamByName('TERMTPATHPEDORC').AsString) then
                    begin
                      DM.Report.DiscardSavedData    := True;
                      DM.Report.ReportName          := DM.SQLTerminalAtivo.ParamByName('TERMTPATHPEDORC').Value;
                      DM.Report.ReportTitle         := 'Orçamento';
                      DM.Report.WindowStyle.Title   := 'Orçamento';
                      if Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString <> '' then
                        begin
                          DM.Report.Output          := toWindow;
                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString;
                        end;

                      DM.Report.Execute;
                    end
                  else
                    Informa('O arquivo para impressão de pedido/orçamento personalizado não foi encontrado, verifique suas consigurações!');
                end;
          '3' : begin
                  // Arquivo Externo .exe
                  if FileExists('PedidoVenda.exe') then
                    begin
                      WinExec(PChar('PedidoVenda.exe '+ SQLTemplatePDVDA13ID.asString),SW_SHOW);
                    end
                  else
                    begin
                      Informa('Você configurou o sistema para imprimir pedido/orçamento com arquivo externo, mas o arquivo não foi encontrado favor verificar!');
                    end;
                end;
        end
      else
        begin
          if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
            begin
              DM.Report.DiscardSavedData    := True;
              DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
              DM.Report.ReportTitle         := 'Orçamento';
              DM.Report.WindowStyle.Title   := 'Orçamento';
              if Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString <> '' then
                begin
                  DM.Report.Output          := toPrinter;
                  DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString;
                end
              else
                DM.Report.Output            := toWindow;

              DM.Report.Execute;
            end
          else
            Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
        end;
    end
  else
    begin
      Informa('Este orçamento não será impresso porque as configurações estão incompletas!');
    end;
end;

procedure TFormCadastroPedidoVenda.SQLPedidoVendaItemPVITN2VLRUNITChange(
  Sender: TField);
begin
  inherited;
  if (SQLPedidoVendaItemPVITN2VLRUNIT.Value > 0) and (SQLPedidoVendaItemPVITN3QUANT.Value > 0)
    and (SQLPedidoVendaItem.State in dsEditModes) then
    SQLPedidoVendaItemPVITN3TOTVENDITEM.Value := SQLPedidoVendaItemPVITN2VLRUNIT.Value * (SQLPedidoVendaItemPVITN3QUANT.Value * SQLUnidade2UNIDN3FATORCONV.Value);
end;

procedure TFormCadastroPedidoVenda.CalculaTotal ;
begin
  SQLTotal.Close;
  SQLTotal.SQL.Clear;
  SQLTotal.SQL.Add('Select Sum(PVITN3TOTVENDITEM) as TotalGeral, Sum(PRODN3PESOBRUTO*(PVITN3QUANT+PVITN3QTDBONIF)) as PesoTotal from PedidoVendaItem where PDVDA13ID = '''+SQLTemplatePDVDA13ID.Value+'''');
  SQLTotal.Prepare;
  SQLTotal.Open;
  try
    SQLtemplate.Edit;
    try
      SQLTemplatePDVDN2TOTPROD.value := SQLTotal.FieldByName('TotalGeral').Value;
    except
      SQLTemplatePDVDN2TOTPROD.value := 0;
    end;
    try
      SQLTemplatePESOTOTAL.value := SQLTotal.FieldByName('PesoTotal').Value;
    except
      SQLTemplatePESOTOTAL.value := 0;
    end;

    SQLtemplate.Post;
  except
    Application.ProcessMessages;
  end;
end ;

procedure TFormCadastroPedidoVenda.SQLTemplateBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  if RdAbertos.Checked then SQLtemplate.MacroByName('MSituacao').Value  := '(PDVDCSTATUS = ''A'' or PDVDCSTATUS = ''E'' or PDVDCSTATUS = ''P'')';
  if RdFaturado.Checked then SQLtemplate.MacroByName('MSituacao').Value := '(PDVDCSTATUS = ''F'')';
  if RdCanc.Checked then SQLtemplate.MacroByName('MSituacao').Value     := '(PDVDCSTATUS = ''C'')';
end;

procedure TFormCadastroPedidoVenda.MnTrocarStatusdoPedidoparaAbertoClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplatePDVDCSTATUS.Value <> 'C' then
    begin
      SQLTemplate.Edit;
      SQLTemplatePDVDCSTATUS.Value := 'A';
      SQLTemplate.Post;
    end
  else
    ShowMessage('O pedido está Cancelado, Verifique!');
end;

procedure TFormCadastroPedidoVenda.EditCdProdutoExit(Sender: TObject);
begin
  inherited;
  if EditCdProduto.Text <> '' then
    if FindProduct(EditCdProduto,SQLPedidoVendaItem.FieldByName('PRODICOD')) then
      DBEditQuantidade.SetFocus;
end;

procedure TFormCadastroPedidoVenda.AcessaProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLPedidoVendaItem.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  DBEditQuantidade.SetFocus;
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroPedidoVenda.SQLTemplateCLIEA13IDChange(
  Sender: TField);
begin
  inherited;
  try
    If SQLTemplateCLIEA13ID.AsVariant <> null then
      Begin
        // Cod.ID
        If RadioConsultaCodigo.ItemIndex = 0 Then
          Begin
            If DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLTemplateCLIEA13ID.asString],1) Then
              Begin
                // Plano
                if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
                  SQLTemplate.FieldByName('PLRCICOD').AsVariant := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;
                // Vendedor
                if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('VENDICOD').AsVariant := DM.SQLTemplate.FindField('VENDICOD').AsVariant;
                // Rota
                if DM.SQLTemplate.FindField('ROTAICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('ROTAICOD').AsVariant  := DM.SQLTemplate.FindField('ROTAICOD').AsVariant;
                // Contato
                SQLTemplate.FieldByName('PDVDA30COMPRADOR').AsVariant := DM.SQLTemplate.FindField('CLIEA60CONTATO').AsVariant;
                // Obs do Cliente
                SQLTemplatePDVDTOBS.AsVariant := DM.SQLTemplate.FindField('CLIETOBS1').AsVariant;

                SQLTemplate.FieldByName('CLIENTENOME').AsVariant              := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
                SQLTemplate.FieldByName('CLIENTEFONE').AsVariant              := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
                SQLTemplate.FieldByName('CLIENTEEMAIL').AsVariant             := DM.SQLTemplate.FindField('CLIEA60EMAIL').AsVariant;
                SQLTemplate.FieldByName('ClienteTabelaPrecoLookUp').AsVariant := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;

                If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
                  Begin
                    SQLTemplate.FieldByName('ClienteCPF').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
                    SQLTemplate.FieldByName('ClienteRG').AsVariant     := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
                    SQLTemplate.FieldByName('ClienteCPF').EditMask     := '000.000.000-00;0;_';
                  End
                Else
                  Begin
                    SQLTemplate.FieldByName('ClienteCGC').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
                    SQLTemplate.FieldByName('ClienteIE').AsVariant     := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
                    SQLTemplate.FieldByName('ClienteCGC').EditMask     := '00.000.000/0000-00;0;_';
                  End;
              End
            Else
              begin
                SQLTemplate.FieldByName('ClienteLookUp').asString     := MensagemLookUp;
              end;
          End;
        // Cod.Antigo
        If RadioConsultaCodigo.ItemIndex = 1 Then
          Begin
            If DM.ProcuraRegistro('CLIENTE',['CLIEA10CODANT'],[SQLTemplateCLIEA13ID.asString],1) Then
              Begin
                SQLTemplate.FieldByName('CLIEA13ID').AsVariant   := DM.SQLTemplate.FindField('CLIEA13ID').AsVariant;
                // Plano
                if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
                  SQLTemplate.FieldByName('PLRCICOD').AsVariant := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;
                // Vendedor
                if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('VENDICOD').AsVariant := DM.SQLTemplate.FindField('VENDICOD').AsVariant;
                // Rota
                if DM.SQLTemplate.FindField('ROTAICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('ROTAICOD').AsVariant  := DM.SQLTemplate.FindField('ROTAICOD').AsVariant;
                // Contato
                SQLTemplate.FieldByName('PDVDA30COMPRADOR').AsVariant := DM.SQLTemplate.FindField('CLIEA60CONTATO').AsVariant;
                // Obs do Cliente
                SQLTemplatePDVDTOBS.AsVariant := DM.SQLTemplate.FindField('CLIETOBS1').AsVariant;

                SQLTemplate.FieldByName('CLIENTENOME').AsVariant              := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
                SQLTemplate.FieldByName('CLIENTEFONE').AsVariant              := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
                SQLTemplate.FieldByName('CLIENTEEMAIL').AsVariant             := DM.SQLTemplate.FindField('CLIEA60EMAIL').AsVariant;
                SQLTemplate.FieldByName('ClienteTabelaPrecoLookUp').AsVariant := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;

                If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
                  Begin
                    SQLTemplate.FieldByName('ClienteCPF').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
                    SQLTemplate.FieldByName('ClienteRG').AsVariant     := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
                    SQLTemplate.FieldByName('ClienteCPF').EditMask     := '000.000.000-00;0;_';
                  End
                Else
                  Begin
                    SQLTemplate.FieldByName('ClienteCGC').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
                    SQLTemplate.FieldByName('ClienteIE').AsVariant     := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
                    SQLTemplate.FieldByName('ClienteCGC').EditMask     := '00.000.000/0000-00;0;_';
                  End;
              End
            Else
              begin
                SQLTemplate.FieldByName('ClienteLookUp').asString     := MensagemLookUp;
              end;
          End;
       // Cod.Rota+Seq Diaria
        If RadioConsultaCodigo.ItemIndex = 2 Then
          Begin
            If DM.ProcuraRegistro('CLIENTE',['ROTAICOD','CLIEA10CODANT'],[IntToStr(dm.RotaAtualPedidos),SQLTemplateCLIEA13ID.asString],2) Then
              Begin
                SQLTemplate.FieldByName('CLIEA13ID').AsVariant   := DM.SQLTemplate.FindField('CLIEA13ID').AsVariant;
                // Plano
                if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
                  SQLTemplate.FieldByName('PLRCICOD').AsVariant := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;
                // Vendedor
                if DM.SQLTemplate.FindField('VENDICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('VENDICOD').AsVariant := DM.SQLTemplate.FindField('VENDICOD').AsVariant;
                // Rota
                if DM.SQLTemplate.FindField('ROTAICOD').AsVariant <>  null then
                  SQLTemplate.FieldByName('ROTAICOD').AsVariant  := DM.SQLTemplate.FindField('ROTAICOD').AsVariant;
                // Contato
                SQLTemplate.FieldByName('PDVDA30COMPRADOR').AsVariant := DM.SQLTemplate.FindField('CLIEA60CONTATO').AsVariant;
                // Obs do Cliente
                SQLTemplatePDVDTOBS.AsVariant := DM.SQLTemplate.FindField('CLIETOBS1').AsVariant;

                SQLTemplate.FieldByName('CLIENTENOME').AsVariant              := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
                SQLTemplate.FieldByName('CLIENTEFONE').AsVariant              := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
                SQLTemplate.FieldByName('CLIENTEEMAIL').AsVariant             := DM.SQLTemplate.FindField('CLIEA60EMAIL').AsVariant;
                SQLTemplate.FieldByName('ClienteTabelaPrecoLookUp').AsVariant := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;

                If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
                  Begin
                    SQLTemplate.FieldByName('ClienteCPF').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
                    SQLTemplate.FieldByName('ClienteRG').AsVariant     := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
                    SQLTemplate.FieldByName('ClienteCPF').EditMask     := '000.000.000-00;0;_';
                  End
                Else
                  Begin
                    SQLTemplate.FieldByName('ClienteCGC').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
                    SQLTemplate.FieldByName('ClienteIE').AsVariant     := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
                    SQLTemplate.FieldByName('ClienteCGC').EditMask     := '00.000.000/0000-00;0;_';
                  End;
              End
            Else
              begin
                SQLTemplate.FieldByName('ClienteLookUp').asString     := MensagemLookUp;
              end;
          End;
      End
    Else
      SQLTemplate.FieldByName('ClienteLookUp').AsVariant := NULL;
  except
    Application.ProcessMessages;
  end;
end;

procedure TFormCadastroPedidoVenda.SQLPedidoVendaItemUNIDICODChange(
  Sender: TField);
begin
  inherited;
  if SQLPedidoVendaItemPRODICOD.AsString <> '' then
    begin
      dm.zConsulta.Close;
      dm.zConsulta.SQL.Text := 'select PRODDINIPROMO, PRODDFIMPROMO, PRODN3VLRVENDA, PRODN3VLRVENDA2, PRODN3VLRVENDAPROM, PRODN3QTDVENDA2835D, PRODN2VLRVENDA2835D, PRODN3QTDVENDA283542D, PRODN2VLRVENDA283542D, PRODN3PESOBRUTO, PRODA60CODBAR from produto where prodicod = ' + SQLPedidoVendaItemPRODICOD.AsString ;
      dm.zConsulta.Open;

      SQLPedidoVendaItemPRODN3PESOBRUTO.value := dm.zConsulta.fieldbyname('PRODN3PESOBRUTO').AsFloat;

      // Produto Participa do mix de venda, para futuro calculo de Descontos
      SQLPedidoVendaItemPRODCMIX.Value := SQLLocate('PRODUTO','PRODICOD','PRODCMIX',SQLPedidoVendaItemPRODICOD.AsString);

      If copy(SQLTemplateCLIECTPPRCVENDA.Value,1,1) = 'A' Then
        begin
          // Testa se a Unidade Venda Igual a Unidado do Produto , trazer preco 1 senao preco 2
          // Ex. Uso a Distribuidora KR
          if sqlunidade2.RecordCount > 1 then
            begin
              if SQLPedidoVendaItemUNIDICOD.AsString = SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLPedidoVendaItemPRODICOD.AsString) then
                SQLPedidoVendaItemPVITN2VLRUNIT.AsVariant := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRVENDA',SQLPedidoVendaItemPRODICOD.AsString)
              else
                SQLPedidoVendaItemPVITN2VLRUNIT.AsVariant := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRVENDA2',SQLPedidoVendaItemPRODICOD.AsString);
            end
          else
            begin
              // Ex. Uso Dist.Racao(Guinho) que trabalha com precos conf qtde comprada!
              // Pegar Preco Conforme Selecao inicial no cabecalho do Pedido, apanas para cliente = Atacado !
              if SQLTemplateCLIECTPPRCVENDA.Value = 'A1' then     // Preco Atacado1
                SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDA2').AsFloat;
              if SQLTemplateCLIECTPPRCVENDA.Value = 'A2' then     // Preco Atacado2
                SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN2VLRVENDA2835D').AsFloat;
              if SQLTemplateCLIECTPPRCVENDA.Value = 'A3' then     // Preco Atacado3
                SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN2VLRVENDA283542D').AsFloat;
            end;
        end
      else
        begin
          if ((dm.zConsulta.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.zConsulta.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (dm.zConsulta.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) or
             ((dm.zConsulta.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.zConsulta.FieldByName('PRODDFIMPROMO').AsString = '') and (dm.zConsulta.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) then
            SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDAPROM').AsFloat
          else
            SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDA').AsFloat;
        end;
    end;

  if (SQLPedidoVendaItemPVITN2VLRUNIT.Value > 0) and (SQLPedidoVendaItemPVITN3QUANT.Value > 0)
    and (SQLPedidoVendaItem.State in dsEditModes) then
    SQLPedidoVendaItemPVITN3TOTVENDITEM.Value := SQLPedidoVendaItemPVITN2VLRUNIT.Value * (SQLPedidoVendaItemPVITN3QUANT.Value * SQLUnidade2UNIDN3FATORCONV.Value);
end;

procedure TFormCadastroPedidoVenda.SQLPedidoVendaItemCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If SQLPedidoVendaItemPRODICOD.AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLPedidoVendaItemPRODICOD.AsString],1) Then
        SQLPedidoVendaItemDescricaoProduto.AsVariant := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

      SQLPedidoVendaItemCdBarras.value := DM.SQLTemplate.FindField('PRODA60CODBAR').AsString;
    End
  else
    SQLPedidoVendaItemDescricaoProduto.AsString := 'Produto não Encontrado';

  if (SQLPedidoVendaItemPVITN2VLRUNIT.Value>0) and (SQLPedidoVendaItemPVITN3QUANT.Value>0) then
  SQLPedidoVendaItemTotalItemLiq.Value := SQLPedidoVendaItemPVITN2VLRUNIT.Value - SQLPedidoVendaItemPVITN2VLRDESC.Value;
end;

procedure TFormCadastroPedidoVenda.EditCdProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaProduto.Click;
end;

procedure TFormCadastroPedidoVenda.BTParcNovoClick(Sender: TObject);
begin
  inherited;
  if SQLTemplatePDVDCSTATUS.Value = 'A' then
    begin
      try
        SQLTemplate.Post;
      except
        Application.ProcessMessages;
      end;
      SQLContasReceber.Append;
      EditParc.SetFocus;
    end
  else
    ShowMessage('Esta Venda não está em Aberto! Não é permitido incluir parcela!');

end;

procedure TFormCadastroPedidoVenda.BtParcGravarClick(Sender: TObject);
begin
  inherited;
  if (SQLContasReceber.State in dsEditModes) then
    begin
      try
        SQLContasReceber.Post;
      except
        Application.ProcessMessages;
      end;
      SQLContasReceber.close;
      SQLContasReceber.open;
      BTParcNovo.SetFocus;
    end
  else
    ShowMessage('Não existem dados a ser gravados!');
end;

procedure TFormCadastroPedidoVenda.BtParcExcluirClick(Sender: TObject);
begin
  inherited;
  if SQLTemplatePDVDCSTATUS.Value = 'A' then
    begin
      if Pergunta('Não','Tem certeza que deseja excluir a parcela lançada atualmente') then
        begin
          SQLContasReceber.Delete;
          BTParcNovo.SetFocus;
        end;
    end
  else
    ShowMessage('Esta Venda não está em Aberto! Não é permitido excluir parcela!');
end;

procedure TFormCadastroPedidoVenda.SQLContasReceberCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If SQLContasReceberNUMEICOD.AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLContasReceberNUMEICOD.AsString],1) Then
        SQLContasReceberNumerario.Value := DM.SQLTemplate.FindField('NUMEA30DESCR').AsVariant;
    End;
end;

procedure TFormCadastroPedidoVenda.ckObsItensClick(Sender: TObject);
begin
  inherited;
  if ckObsItens.Checked then
    DBEditObs.Enabled := True
  else
    DBEditObs.Enabled := False;
end;

procedure TFormCadastroPedidoVenda.ckBonificacaoClick(Sender: TObject);
begin
  inherited;
  if ckBonificacao.Checked then
    begin
      DBEditBonificacao.Enabled := True;
      DBEditBonificacao.SetFocus;
    end
  else
    DBEditBonificacao.Enabled := False;
end;

procedure TFormCadastroPedidoVenda.btCalcMixClick(Sender: TObject);
var xPesoTotalMix, xPesoTotalPedido, xDesconto : double;
begin
  inherited;
  xPesoTotalMix := 0;  xPesoTotalPedido := 0;
  SQLPedidoVendaItem.DisableControls;
  SQLPedidoVendaItem.First;
  while not SQLPedidoVendaItem.eof do
    begin
      {Pego o Peso Total Pedido x Quantidade}
      if SQLPedidoVendaItemPRODCMIX.Value <> 'D' then
        xPesoTotalPedido := xPesoTotalPedido + ((SQLPedidoVendaItemPVITN3QUANT.Value+SQLPedidoVendaItemPVITN3QTDBONIF.Value) * SQLPedidoVendaItemPRODN3PESOBRUTO.Value);

      {Somo os pesos x quantidades, pra achar o peso total de mix}
      if SQLPedidoVendaItemPRODCMIX.Value = 'N' then
        xPesoTotalMix := xPesoTotalMix + ((SQLPedidoVendaItemPVITN3QUANT.Value+SQLPedidoVendaItemPVITN3QTDBONIF.Value) * SQLPedidoVendaItemPRODN3PESOBRUTO.Value);
      SQLPedidoVendaItem.next;
    end;

  {Segundo, divido o total de peso / pelo total do pedido}
  if xPesoTotalMix > 0 then
    begin
      sqltemplate.Edit;
      sqltemplatePDVDN2PERCMIX.Value := round((xPesoTotalMix / xPesoTotalPedido) * 100) ;
      sqltemplate.post;
    end;

  {Agora que tenho o perc mix de venda, tenho q buscar na tabela de mix por volume vendas, pra trazer o percentual de desconto respectivo}
  dm.ZConsulta.close;
  dm.ZConsulta.SQL.Text := 'Select MIXN2PERCVOLUME, MIXN2PERCDESCONTO from Mixvenda where MIXN2PERCVOLUME <= ' + TrocaVirgulaPorPonto(sqltemplatePDVDN2PERCMIX.AsString);
  dm.ZConsulta.Open;
  dm.ZConsulta.Last;
  xDesconto := dm.ZConsulta.fieldbyname('MIXN2PERCDESCONTO').AsFloat;
  SQLPedidoVendaItem.First;
  while not SQLPedidoVendaItem.eof do
    begin
      if SQLPedidoVendaItemPRODCMIX.Value = 'S' then
        begin
          SQLPedidoVendaItem.edit;
          SQLPedidoVendaItemPVITN2PERCDESC.Value := xDesconto;
          SQLPedidoVendaItemPVITN2VLRDESC.Value  := (SQLPedidoVendaItemPVITN2VLRUNIT.Value * SQLPedidoVendaItemPVITN2PERCDESC.Value) / 100;
          SQLPedidoVendaItemPVITN3TOTVENDITEM.Value := SQLPedidoVendaItemTotalItemLiq.Value * SQLPedidoVendaItemPVITN3QUANT.Value;
          SQLPedidoVendaItem.post;
        end
      else
        begin
          SQLPedidoVendaItem.edit;
          SQLPedidoVendaItemPVITN2PERCDESC.Value := 0;
          SQLPedidoVendaItemPVITN2VLRDESC.Value  := 0;
          SQLPedidoVendaItemPVITN3TOTVENDITEM.Value := SQLPedidoVendaItemTotalItemLiq.Value * SQLPedidoVendaItemPVITN3QUANT.Value;
          SQLPedidoVendaItem.post;
        end;

      SQLPedidoVendaItem.next;
    end;
  CalculaTotal;
  SQLPedidoVendaItem.EnableControls;
end;

procedure TFormCadastroPedidoVenda.ckVendaUnitClick(Sender: TObject);
begin
  inherited;
  if ckVendaUnit.Checked then
    begin
      DBEditUnitario.Enabled := True;
      DBEditUnitario.SetFocus;
    end
  else
    DBEditUnitario.Enabled := False;
end;

procedure TFormCadastroPedidoVenda.BTNRecalcularPedidoClick(
  Sender: TObject);
var xUnidade1, xUnidade2 : string;
begin
  inherited;
  if Pergunta('Não','Recalcular Pedido Atual?') then
    begin
      {Reabre os itens do pedido selecionado}
      SQLPedidoVendaItem.Close;
      SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
      SQLPedidoVendaItem.open;
      if not SQLPedidoVendaItem.IsEmpty then
        begin
          while not SQLPedidoVendaItem.Eof do
            begin
              dm.zConsulta.Close;
              dm.zConsulta.SQL.Text := 'select PRODDINIPROMO, PRODDFIMPROMO, PRODN3VLRVENDA, PRODN3VLRVENDA2, PRODN3VLRVENDAPROM, PRODN3QTDVENDA2835D, PRODN2VLRVENDA2835D, PRODN3QTDVENDA283542D, PRODN2VLRVENDA283542D, PRODN3PESOBRUTO, PRODA60CODBAR from produto where prodicod = ' + SQLPedidoVendaItemPRODICOD.AsString ;
              dm.zConsulta.Open;

              xUnidade1 := SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLPedidoVendaItemPRODICOD.AsString);
              xUnidade2 := SQLLocate('PRODUTO','PRODICOD','UNIDICOD2',SQLPedidoVendaItemPRODICOD.AsString);
              sqlunidade2.close;
              sqlunidade2.MacroByName('Filtro').Value := 'UNIDICOD = ' + xUnidade1;
              if xunidade2 <> '' then
                sqlunidade2.MacroByName('Filtro').Value := sqlunidade2.MacroByName('Filtro').Value + ' or UNIDICOD = ' + xUnidade2;
              sqlunidade2.open;

              SQLPedidoVendaItem.edit;

              SQLPedidoVendaItemPRODN3PESOBRUTO.value := dm.zConsulta.fieldbyname('PRODN3PESOBRUTO').AsFloat;

              if copy(SQLTemplateCLIECTPPRCVENDA.Value,1,1) = 'A' Then
                begin
                  // Testa se a Unidade Venda Igual a Unidado do Produto , trazer preco 1 senao preco 2
                  // Ex. Uso a Distribuidora KR
                  if sqlunidade2.RecordCount > 1 then
                    begin
                      if SQLPedidoVendaItemUNIDICOD.AsString = SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLPedidoVendaItemPRODICOD.AsString) then
                        SQLPedidoVendaItemPVITN2VLRUNIT.AsVariant := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRVENDA',SQLPedidoVendaItemPRODICOD.AsString)
                      else
                        SQLPedidoVendaItemPVITN2VLRUNIT.AsVariant := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRVENDA2',SQLPedidoVendaItemPRODICOD.AsString);
                    end
                  else
                    begin
                      // Ex. Uso Dist.Racao(Guinho) que trabalha com precos conf qtde comprada!
                      // Pegar Preco Conforme Selecao inicial no cabecalho do Pedido, apanas para cliente = Atacado !
                      if SQLTemplateCLIECTPPRCVENDA.Value = 'A1' then     // Preco Atacado1
                        SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDA2').AsFloat;
                      if SQLTemplateCLIECTPPRCVENDA.Value = 'A2' then     // Preco Atacado2
                        SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN2VLRVENDA2835D').AsFloat;
                      if SQLTemplateCLIECTPPRCVENDA.Value = 'A3' then     // Preco Atacado3
                        SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN2VLRVENDA283542D').AsFloat;
                    end;
                end
              else
                begin
                  if ((dm.zConsulta.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.zConsulta.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (dm.zConsulta.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) or
                     ((dm.zConsulta.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.zConsulta.FieldByName('PRODDFIMPROMO').AsString = '') and (dm.zConsulta.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) then
                    SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDAPROM').AsFloat
                  else
                    SQLPedidoVendaItemPVITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDA').AsFloat;
                end;

              SQLPedidoVendaItemPVITN3TOTVENDITEM.Value := SQLPedidoVendaItemPVITN2VLRUNIT.Value * (SQLPedidoVendaItemPVITN3QUANT.Value * SQLUnidade2UNIDN3FATORCONV.Value);
              SQLPedidoVendaItem.Post;

              SQLPedidoVendaItem.Next;
            end;
          CalculaTotal;  
          SQLPedidoVendaItem.Close;
          SQLPedidoVendaItem.ParamByName('PDVDA13ID').AsString := SQLTemplatePDVDA13ID.AsString;
          SQLPedidoVendaItem.open;
          ShowMessage('Pedido Recalculado com Sucesso!');
        end;
    end;
end;

procedure TFormCadastroPedidoVenda.DBEditNomeClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnCliente.Click;
end;

procedure TFormCadastroPedidoVenda.CorrigeNomesdeClientesVazios1Click(
  Sender: TObject);
begin
  inherited;
  while not SQLTemplate.eof do
    begin
      LabelRegistros.Caption := 'Atualizando Pedido: ' + SQLTemplatePDVDA13ID.Value;
      LabelRegistros.Update;
      if SQLTemplateCLIENTENOME.IsNull then
        begin
          if not SQLTemplateCLIEA13ID.IsNull then
            begin
              SQLTemplate.edit;
              SQLTemplateCLIENTENOME.Value    := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC',''''+SQLTemplateCLIEA13ID.AsString+'''');
              if SQLTemplateCLIENTEFONE.IsNull then
                SQLTemplateCLIENTEFONE.Value  := SQLLocate('CLIENTE','CLIEA13ID','CLIEA15FONE1',''''+SQLTemplateCLIEA13ID.AsString+'''');
              if SQLTemplateCLIENTEEMAIL.IsNull then
                SQLTemplateCLIENTEEMAIL.Value := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60EMAIL',''''+SQLTemplateCLIEA13ID.AsString+'''');
              SQLTemplate.post;
            end;
        end;
      SQLTemplate.Next;
      Application.ProcessMessages;
    end;
  showmessage('Rotina Finalizada com Sucesso!');
end;

end.
