unit TelaImportadorXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, RXCtrls,
  FileCtrl, Mask, ToolEdit, Placemnt, ACBrNFe, DB, DBTables, RxLookup,
  RxQuery, ActnList, ComCtrls, CurrEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,FormResources,

  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox, ImgList, Menus, DBClient, ACBrBase, ACBrDFe, Grids,
  DBGrids, Spin, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, IniFiles, pcnConversao,
  VarSYS, ShellAPI, pcnConversaoNFe;

type
  TTipoInconsistencia = (tiCritica, tiInformacao, tiErro);
  TTipoVisualizacao = (tvProcessar, tvVisualizar);
  TTipoImposto = (tiIPI, tiPIS, tiCOFINS, tiICMS);

  TFormTelaImportadorXML = class(TFormTelaGeralTEMPLATE)
    ACBrNFe: TACBrNFe;
    actPrincipal: TActionList;
    actSelecionarArquivo: TAction;
    actGravarDados: TAction;
    actGerarParcelas: TAction;
    dlgOpenXML: TOpenDialog;
    cdsItens: TClientDataSet;
    dsItens: TDataSource;
    cdsItenssequencia: TIntegerField;
    cdsItenscodigo: TStringField;
    cdsItensdescricao: TStringField;
    cdsItensunidade: TStringField;
    cdsItensquantidade: TFloatField;
    cdsItensvalor_unitario: TFloatField;
    cdsItensbase_icms: TFloatField;
    cdsItensvalor_icms: TFloatField;
    cdsItensaliquota_icms: TFloatField;
    cdsItensvalor_ipi: TFloatField;
    cdsItensaliquota_ipi: TFloatField;
    cdsItenscst_icms: TStringField;
    cdsItenscst_ipi: TStringField;
    cdsItenscfop_nf_entrada: TIntegerField;
    cdsItenscfop_gravar: TIntegerField;
    cdsItensbase_pis: TFloatField;
    cdsItensvalor_pis: TFloatField;
    cdsItensbase_cofins: TFloatField;
    cdsItensvalor_cofins: TFloatField;
    cdsItensvalor_frete: TFloatField;
    cdsItensvalor_seguro: TFloatField;
    cdsItensvalor_outras_despesas: TFloatField;
    cdsItensncm: TStringField;
    cdsItensaliquota_pis: TFloatField;
    cdsItensaliquota_cofins: TFloatField;
    cdsItensvalor_icms_st: TFloatField;
    cdsItensbase_icms_st: TFloatField;
    cdsItensperc_mva: TFloatField;
    cdsItensvalor_desconto: TFloatField;
    cdsItensvalor_parcial: TFloatField;
    cdsItenstotal_item: TFloatField;
    pmGrid: TPopupMenu;
    CadastrarReferenciaMarcados: TMenuItem;
    CadastrodoProduto1: TMenuItem;
    cdsItenscodigo_gravar: TStringField;
    cdsContaPagar: TClientDataSet;
    dsContaPagar: TDataSource;
    cdsContaPagarid: TIntegerField;
    cdsContaPagarcodigo: TStringField;
    cdsContaPagardata_pagamento: TDateField;
    cdsContaPagarvalor_pagamento: TFloatField;
    cdsContaPagardia_semana: TStringField;
    dsOpEstoque: TDataSource;
    dsContaDespesa: TDataSource;
    cdsTemp: TClientDataSet;
    cdsTempPDCPA13ID: TStringField;
    dsTemp: TDataSource;
    pnlImportador: TPanel;
    pgcImportador: TPageControl;
    tsXMLs: TTabSheet;
    tsInfoNfe: TTabSheet;
    Label27: TLabel;
    grpTotaisImpostos: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label14: TLabel;
    edtBIcms: TCurrencyEdit;
    edtValorIcms: TCurrencyEdit;
    edtValorST: TCurrencyEdit;
    edtBSt: TCurrencyEdit;
    edtValorIsento: TCurrencyEdit;
    edtValorOutras: TCurrencyEdit;
    edtValorIpi: TCurrencyEdit;
    edtValorFrete: TCurrencyEdit;
    edtValorProd: TCurrencyEdit;
    edtTotalNF: TCurrencyEdit;
    edtDescontos: TCurrencyEdit;
    edtCreditoIcms: TCurrencyEdit;
    edtValorCofins: TCurrencyEdit;
    edtValorPis: TCurrencyEdit;
    edtICMSRetido: TCurrencyEdit;
    edtItemEspecial: TCurrencyEdit;
    edtSeguro: TCurrencyEdit;
    mmoObs: TMemo;
    tsItens: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableViewItens: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1sequencia: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1codigo: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1codigo_gravar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1descricao: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1ncm: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1cfop_nf_entrada: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1cfop_gravar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1unidade: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1quantidade: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_unitario: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_desconto: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1total_item: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1cst_icms: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1base_icms: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_icms: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1aliquota_icms: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1cst_ipi: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_ipi: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1aliquota_ipi: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1base_pis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1aliquota_pis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_pis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1base_cofins: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1aliquota_cofins: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_cofins: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_frete: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_seguro: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_outras_despesas: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1base_icms_st: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1valor_icms_st: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1perc_mva: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    tsTransporte: TTabSheet;
    grpInfoTransp: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label47: TLabel;
    Label50: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    Label52: TLabel;
    Label51: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    edtCnpjTransp: TEdit;
    edtNomeTransp: TEdit;
    cbbTipoFrete: TComboBox;
    edtQuantidade: TCurrencyEdit;
    edtNumero: TEdit;
    edtEspecie: TEdit;
    edtMarca: TEdit;
    edtPesoLiquido: TCurrencyEdit;
    edtPesoBruto: TCurrencyEdit;
    edtPlaca: TEdit;
    edtUF: TEdit;
    tsFaturamento: TTabSheet;
    Label25: TLabel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid2DBTableView1id: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1codigo: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1data_pagamento: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1dia_semana: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1valor_pagamento: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    grpInformacoesFat: TGroupBox;
    Label85: TLabel;
    Label26: TLabel;
    Label84: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    seNParcelas: TSpinEdit;
    edtValorFaturar: TCurrencyEdit;
    edtHistorico: TEdit;
    seIntervaloDias: TSpinEdit;
    seDiaBase: TSpinEdit;
    chkEntrada: TCheckBox;
    pgcValidacoes: TPageControl;
    tsValidacoes: TTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cdsValidacao: TClientDataSet;
    dsValidacao: TDataSource;
    cdsValidacaotipo: TStringField;
    cdsValidacaodescricao: TStringField;
    cdsValidacaovalor: TStringField;
    cxGrid3DBTableView1id: TcxGridDBColumn;
    cxGrid3DBTableView1tipo: TcxGridDBColumn;
    cxGrid3DBTableView1descricao: TcxGridDBColumn;
    cxGrid3DBTableView1valor: TcxGridDBColumn;
    cxGrid3DBTableView1Flag: TcxGridDBColumn;
    cxImageList: TcxImageList;
    cdsValidacaoid: TIntegerField;
    pnlNfImp: TPanel;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    pnl: TPanel;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    DirectoryEditNFERecebidas: TDirectoryEdit;
    cxGridVis: TcxGrid;
    cxGridDBTableViewVis: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevelVis: TcxGridLevel;
    cdsXML: TClientDataSet;
    dsXML: TDataSource;
    cdsXMLid: TIntegerField;
    cdsXMLchave_acesso: TStringField;
    cxGrid4DBTableView1id: TcxGridDBColumn;
    cxGrid4DBTableView1chave_acesso: TcxGridDBColumn;
    actVincularProduto: TAction;
    actAbrirCadProdutoVinc: TAction;
    v: TPanel;
    Label42: TLabel;
    edtDescOperacaoVis: TEdit;
    Label31: TLabel;
    Label34: TLabel;
    edtTotalNotaVis: TCurrencyEdit;
    Label30: TLabel;
    Edit3: TEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cdsTempPRODICOD: TIntegerField;
    cdsItenscst_pis: TStringField;
    cdsItenscst_cofins: TStringField;
    cxGrid1DBTableViewItenscst_pis: TcxGridDBColumn;
    cxGrid1DBTableViewItenscst_cofins: TcxGridDBColumn;
    actCfopConvert: TAction;
    N1: TMenuItem;
    AdicionarConversoCFOP1: TMenuItem;
    actCadFornecedor: TAction;
    cdsItensquantidade_emb: TFloatField;
    cxgrdbclmnGrid1DBTableView1quantidade_emb: TcxGridDBColumn;
    actSiteSefazRS: TAction;
    actPortalNFE: TAction;
    edtCNPJDestinatario: TEdit;
    cdsItensean: TStringField;
    cxgrdbclmnGrid1DBTableView1ean: TcxGridDBColumn;
    grpOperacaoEstoque: TGroupBox;
    dblkcbbOpEstoque: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    dblkcbbContaDespesa: TDBLookupComboBox;
    grpOrigem: TGroupBox;
    BtnPedidos: TSpeedButton;
    btReloadArquivos: TSpeedButton;
    btnlimparFinanceiro: TSpeedButton;
    actlimparFinanceiro: TAction;
    N2: TMenuItem;
    actAlterarCapacEmb: TAction;
    AlterarCapacidadedaEmbalagem1: TMenuItem;
    cdsVisualizacao: TClientDataSet;
    StringField3: TStringField;
    StringField5: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    dsVisualizacao: TDataSource;
    cdsVisualizacaosequencia: TIntegerField;
    actCadNCM: TAction;
    CadastrarNCM1: TMenuItem;
    lblAcao: TLabel;
    btnCopiarDuplicatasNF: TSpeedButton;
    actCopiarDuplicatasNF: TAction;
    AdicionarProdutoRapido: TMenuItem;
    cdsItenseantrib: TStringField;
    btnCadFornecedor: TSpeedButton;
    cdsItensaliquota_icms_st: TFloatField;
    N3: TMenuItem;
    btTransfImportados: TSpeedButton;
    btnGravarDados: TSpeedButton;
    btnPortalNFE: TSpeedButton;
    btnSelecionarArquivo: TSpeedButton;
    btnSiteSefazRS: TSpeedButton;
    edtChaveProcura: TEdit;
    cdsItensvalor_compra_anterior: TFloatField;
    cxgrdbclmnGrid1DBTableView1valor_compra_anterior: TcxGridDBColumn;
    cdsItenspercentual_diferenca_compra: TFloatField;
    cdsItensorigem_produto: TStringField;
    cxgrdbclmnGrid1DBTableView1Percentual_Diferenca_Compra: TcxGridDBColumn;
    edtChaveNfe: TMaskEdit;
    edtCodigoNFVis: TEdit;
    edtSerieNota: TEdit;
    Label1: TLabel;
    edtEmissaoVis: TDateEdit;
    edtDataEntrada: TDateEdit;
    Label4: TLabel;
    edtCodigoFornecedor: TEdit;
    edtCnpjFornecedorVis: TEdit;
    edtNomeFornecedorVis: TEdit;
    Label2: TLabel;
    ckTestaItem: TCheckBox;
    ckImportaFinanceiro: TCheckBox;
    SQLProdutoEditar: TRxQuery;
    SQLNota: TRxQuery;
    sqlContaDespesa: TRxQuery;
    sqlOpEstoque: TRxQuery;
    TabConsultaSefaz: TTabSheet;
    Panel2: TPanel;
    btConsultarXmlsSefaz: TSpeedButton;
    DBGridManifestos: TDBGrid;
    SQLNFSEFAZ: TRxQuery;
    SQLNFSEFAZCHAVE: TStringField;
    SQLNFSEFAZDTEMISSAO: TDateTimeField;
    SQLNFSEFAZSERIE: TStringField;
    SQLNFSEFAZNUMERO: TIntegerField;
    SQLNFSEFAZEMIT_CNPJ: TStringField;
    SQLNFSEFAZEMIT_IE: TStringField;
    SQLNFSEFAZEMIT_RAZAO: TStringField;
    SQLNFSEFAZVALORTOTAL: TFloatField;
    SQLNFSEFAZENTRADA_SAIDA: TStringField;
    SQLNFSEFAZSIT_NFE: TStringField;
    SQLNFSEFAZSIT_EVENTO: TStringField;
    SQLNFSEFAZDTEVENTO: TDateTimeField;
    SQLNFSEFAZPROT_EVENTO: TStringField;
    SQLNFSEFAZJUSTIFICATIVA: TStringField;
    SQLNFSEFAZNSUCONSULTA: TIntegerField;
    dsNFSEFAZ: TDataSource;
    btnInformaCienciaOperacao: TSpeedButton;
    btnInformaConfirmaOperacao: TSpeedButton;
    btnInformaDesconheceOperacao: TSpeedButton;
    btnInformaOperacaoNaoRealizada: TSpeedButton;
    btnDownLoadXML: TSpeedButton;
    SQLNFSEFAZSituacaoNota: TStringField;
    cdsItenscest: TStringField;
    cxgrdbclmnGrid1DBTableView1cest: TcxGridDBColumn;
    sqlCest: TRxQuery;
    sqlNCM: TRxQuery;
    GroupBox1: TGroupBox;
    DBEditPC: TDBEdit;
    btnPedido: TSpeedButton;
    cdsPedidoCompra: TClientDataSet;
    dsPedidoCompra: TDataSource;
    cdsPedidoCompraPDCPA13ID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actSelecionarArquivoExecute(Sender: TObject);
    procedure seNParcelasChange(Sender: TObject);
    procedure seIntervaloDiasChange(Sender: TObject);
    procedure chkEntradaClick(Sender: TObject);
    procedure seNParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtPedidoCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblkcbbOpEstoqueCloseUp(Sender: TObject);
    procedure cxGrid1DBTableViewItensCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure DirectoryEditNFERecebidasChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid4DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid4DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actVincularProdutoExecute(Sender: TObject);
    procedure actCfopConvertExecute(Sender: TObject);
    procedure actGravarDadosExecute(Sender: TObject);
    procedure actCadFornecedorExecute(Sender: TObject);
    procedure actPrincipalUpdate(Action: TBasicAction;
      var Handled: Boolean);
    procedure tsInfoNfeShow(Sender: TObject);
    procedure tsItensShow(Sender: TObject);
    procedure tsTransporteShow(Sender: TObject);
    procedure tsFaturamentoShow(Sender: TObject);
    procedure actSiteSefazRSExecute(Sender: TObject);
    procedure actPortalNFEExecute(Sender: TObject);
    procedure pmGridPopup(Sender: TObject);
    procedure tsXMLsShow(Sender: TObject);
    procedure btReloadArquivosClick(Sender: TObject);
    procedure actlimparFinanceiroExecute(Sender: TObject);
    procedure actAlterarCapacEmbExecute(Sender: TObject);
    procedure actCadNCMExecute(Sender: TObject);
    procedure actCopiarDuplicatasNFExecute(Sender: TObject);
    procedure AdicionarProdutoRapidoClick(Sender: TObject);
    procedure btTransfImportadosClick(Sender: TObject);
    procedure edtChaveProcuraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnPedidosClick(Sender: TObject);
    procedure btConsultarXmlsSefazClick(Sender: TObject);
    procedure SQLNFSEFAZCalcFields(DataSet: TDataSet);
    procedure btnDownLoadXMLClick(Sender: TObject);
    procedure btnInformaCienciaOperacaoClick(Sender: TObject);
    procedure SQLNFSEFAZAfterScroll(DataSet: TDataSet);
    procedure SQLNFSEFAZSIT_EVENTOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnInformaConfirmaOperacaoClick(Sender: TObject);
    procedure btnInformaDesconheceOperacaoClick(Sender: TObject);
    procedure btnInformaOperacaoNaoRealizadaClick(Sender: TObject);
    procedure DBGridManifestosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnPedidoClick(Sender: TObject);

  private
    XMLOutraEmpresa: Boolean;
    FornecedorNaoCadastrado: Boolean;
    Arquivo_Salvar : TIniFile;

    //Flag Validação de XML
    AcaoValidar : Boolean;

    seqValidacao, pItems : Integer;
    {Acumuladores de Erros para ativar a ação gravar_nota_fiscal}
    acErro, acInconsistencia, acCritica: Integer;
    FFornecedor: String;
    FCodigoNF: String;
    FCNPJDestinatarioNFe: String;
    procedure EnviarEvento(pTipo: TpcnTpEvento);
    procedure Inicia_NFe;
    Function GravaNota : Boolean;
    procedure SetCodigoNF(const Value: String);
    function getUnidadeId(aUnidade: String): Integer;
    function LocalizouProdutoVinculado(aCodigoProdutoNota: String; aCodigoFornecedor, aCodigoVincular: Integer): Boolean;
    procedure SetFornecedor(const Value: String);

    {Procedimento para atualização de NCM dos produtos}
    procedure VerificaNCMProdutos;
    function ProdutoContemNCM(aCodigoProduto, aIdNCM: Integer): Boolean;
    procedure AtualizaNCMCadastroProduto(aCodigoProduto: Integer; aNCM: String);
    procedure AtualizaCST_ICMSCadastroProduto(aCodigoProduto: Integer; aCST_ICMS: String);
    function getIdNCMFromCodigo(aNCM: String): Integer;
    function CriaNCM(aNCM: String): Integer;
    function CriaCEST(aCEST, aNCM: String): String;

    {Retornos de parâmetros do configurador}
    function getPrevistoRealizado: String;
    function getCodigoPortador: Integer;
    function getCodigoTipoDocumento: Integer;

    {Função para get em capacidade de embalagem - conversão de quantidades}
    function getCapacidadeEmbalagemFromProduto(aCodigo: Integer): Real;

    {Campos que contém vinculos com tabelas do banco de dados - Exposição: Properties com Set para Edit}
    property Fornecedor: String read FFornecedor write SetFornecedor;
    property CodigoNF: String read FCodigoNF write SetCodigoNF; {//*validação de nota ja importada}

    {Procedimento responsavel por validar dados na tela}
    procedure ExecutaValidacoes;

    procedure ExibeInconsistencia(aTipo: TTipoInconsistencia; aDescricao, aValor: String);
    procedure PopulaComponentesTela(aTipoVisualizacao: TTipoVisualizacao);
    procedure InicializaAcbrNfe;
    procedure GeraParcelasContasPagar(aNParcelas: Integer);
    procedure SetFornecedorCadastroVinculado(aCodigoFornecedorVinculado:String);
    function VerificaProdutoVinculoFornecedor(aCodigoItem: String; aIdFornecedor: Integer): Boolean;
    function RetornaCodigoProdutoGravar(aCodigoItem: String; aIdFornecedor: Integer; aEAN, aEANTRIB: String): Integer;
    procedure ListarArquivos(sDiretorio: string; aSubdiretorio: Boolean);
    function PossuiAtributo(aAtributo, aValor: Integer): Boolean;
    procedure VisualizaArquivoXML(aTipoVisualizao: TTipoVisualizacao);
    procedure ReferenciaProdutoFornecedor(aCodigoProdutoNota: String; aCodigoFornecedor: Integer);
    function NFJaImportada(aSerie, aCodigoNF, aFornecedor: String): Boolean;  {True = Já Importada, False = Não Importada}
    procedure MoveXMLPastaImportado;
    function getCNPJEmpresaAtual(aCnpjDestinatario: String): String;
    function getIdEmpresaAtual(aCnpj: String): Integer;

    {Procedimento de Conversão de Dados}
    function getCSTConversao(aTipoImposto: TTipoImposto; aCSTOrigem: string): String;
    function getCFOPConversao(aOperacaoEstoqueId: Integer; aCFOPOrigem: String): string;

    function RetornaCodigoCompra(aSequencia: Integer): String;

    function RetornaCodigoCPagar(aSequencia: Integer): String;
    procedure SetCNPJDestinatarioNFe(const Value: String);
    procedure ValidaProdutoFornecedor(aCodigoProduto, aCodigoFornecedor: Integer);

    procedure FinalizaProcessamentos;
    procedure SetProgresso(aMensagem: String);

    procedure pCalculaCustoMedio;

  public
    { Public declarations }
    fGravar, fErroNCM: Boolean;
    property CNPJDestinatarioNFe: String read FCNPJDestinatarioNFe write SetCNPJDestinatarioNFe;
  end;

var
  FormTelaImportadorXML: TFormTelaImportadorXML;

implementation

uses pcnNFe, DataModulo, ACBrNFeNotasFiscais, DateUtils, Math, UnitLibrary,
  CadastroProdutos, VinculoCfopOperacaoEstoque,
  DataModuloTemplate, CadastroNCM, TelaLancamentoGradeXML,
  CadastroProdutoRapido, ACBrDFeWebService, CadastroPedidoCompra,
  uDlgComparaNotaPedido;

{$R *.dfm}

procedure TFormTelaImportadorXML.FormCreate(Sender: TObject);
begin
  inherited;
  sqlnfsefaz.Open;
  cdsItens.Close;
  seqValidacao := 1;
  sqlOpEstoque.Open;
  sqlContaDespesa.Open;

  Arquivo_Salvar               := TIniFile.Create('FormTelaImportXML.ini');
  DirectoryEditNFERecebidas.InitialDir  := Arquivo_Salvar.ReadString('DirectoryEditNFERecebidas','DirectoryEditNFERecebidas.InitialDir','C:\Easy2Solutions\NFe\Recebidos');
  DirectoryEditNFERecebidas.Text        := DirectoryEditNFERecebidas.InitialDir ;
  dblkcbbOpEstoque.KeyValue    := Arquivo_Salvar.ReadString('dblkcbbOpEstoque','dblkcbbOpEstoque.KeyValue','0');
  dblkcbbContaDespesa.KeyValue := Arquivo_Salvar.ReadString('dblkcbbContaDespesa','dblkcbbContaDespesa.KeyValue','0');
  ckTestaItem.Checked          := StrToBool(Arquivo_Salvar.ReadString('ckTestaItem','ckTestaItem.Checked','False'));
  ckImportaFinanceiro.Checked  := StrToBool(Arquivo_Salvar.ReadString('ckImportaFinanceiro','ckImportaFinanceiro.Checked','False'));
  Arquivo_Salvar.Free;
end;

procedure TFormTelaImportadorXML.actSelecionarArquivoExecute(Sender: TObject);
begin
  inherited;
  //dm.Zdb.Connected := False;
  //dm.Zdb.Connected := True;

  if dblkcbbOpEstoque.Text = '' then
    begin
      ShowMessage('É preciso informar uma Operação de Estoque!');
      exit;
    end;
  if dblkcbbContaDespesa.Text = '' then
    begin
      ShowMessage('É preciso informar um Plano de Contas!');
      exit;
    end;

  VisualizaArquivoXML(tvProcessar);
end;

procedure TFormTelaImportadorXML.PopulaComponentesTela(aTipoVisualizacao: TTipoVisualizacao);
var
  s, sEan, xTitulo_Embalagem : String;
  i: Integer;
  ce: Real;
begin
  {Dados da nota fiscal}
  s := ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.ID;
  edtChaveNfe.Text := Copy(s, 4, Length(s)-2);
  edtCodigoNFVis.Text := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);
  edtSerieNota.Text := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.serie);
  edtDataEntrada.Date := Date;

  // DISPLAY -------------------------------------------------------------------------
  edtDescOperacaoVis.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.natOp;
  edtCodigoNFVis.Text := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);
  edtEmissaoVis.Date := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
  // ---------------------------------------------------------------------------------

  {Dados do Fornecedor}
  edtCnpjFornecedorVis.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
  edtNomeFornecedorVis.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.xNome;
  Fornecedor := trim(edtCnpjFornecedorVis.Text);
  // ---------------------------------------------------------------------------------
  if (aTipoVisualizacao = tvProcessar) then
    begin
      ExecutaValidacoes;

      if FornecedorNaoCadastrado then
        begin
          Abort;
          Exit;
        end;
    end;

  {Dados Destinatário}
  edtCNPJDestinatario.Text := AcbrNfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;

  {Valores Totais}
  edtBIcms.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
  edtValorIcms.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
  edtBSt.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
  edtValorST.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
  edtICMSRetido.Value := 0.00;
  edtCreditoIcms.Value := 0.00;
  edtValorIpi.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;
  edtValorProd.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
  edtValorFrete.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
  edtSeguro.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
  edtDescontos.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
  edtValorPis.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
  edtValorCofins.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;
  edtValorIsento.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
  edtValorOutras.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
  edtItemEspecial.Value := 0.00;
  edtTotalNF.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
  // DISPLAY -------------------------------------------------------------------------
  edtTotalNotaVis.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
  // ---------------------------------------------------------------------------------
  edtValorFaturar.Value := edtTotalNF.Value;

  {Observações e Mensagens da NF}
  mmoObs.Lines.Text := Trim(ACBrNFe.NotasFiscais.Items[0].NFe.InfAdic.infCpl);

  cdsItens.Close;
  cdsItens.CreateDataSet;

  cdsVisualizacao.Close;
  cdsVisualizacao.CreateDataSet;

  {Dados de Produtos da NF}
  for i := 0 to ACBrNFe.NotasFiscais.Items[0].NFe.Det.Count -1 do
  begin
    if aTipoVisualizacao = tvProcessar then
      begin
        cdsItens.Insert;
        pItems := i;
        ce := 0; //capacidade embalagem
        cdsItens.FieldByName('sequencia').AsInteger := cdsItens.RecordCount + 1;
        cdsItens.FieldByName('codigo').AsString     := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
        cdsItens.FieldByName('eantrib').AsString    := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cEANTrib;

        sEan := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cEAN;
        cdsItens.FieldByName('ean').AsString := sEan;

        if (Trim(edtCodigoFornecedor.Text) <> EmptyStr) then
          cdsItens.FieldByName('codigo_gravar').AsString := IntToStr(RetornaCodigoProdutoGravar(cdsItens.FieldByName('codigo').AsString, StrToInt(Trim(edtCodigoFornecedor.Text)), cdsItens.FieldByName('ean').AsString,cdsItens.FieldByName('eantrib').AsString))
        else
          cdsItens.FieldByName('codigo_gravar').AsString := '0';

        cdsItens.FieldByName('descricao').AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.xProd;

        cdsItens.FieldByName('ncm').AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.NCM;
        cdsItens.FieldByName('cest').AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CEST;
        {Testa se o NCM existe no Cadastro de NCMs, senao Cria Automatico}
        CriaNCM(cdsItens.FieldByName('ncm').AsString);
        CriaCEST(cdsItens.FieldByName('cest').AsString, cdsItens.FieldByName('ncm').AsString);

        {CFOP NF E CFOP A GRAVAR}
        cdsItens.FieldByName('cfop_nf_entrada').AsInteger := StrToInt(ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP);
        cdsItens.FieldByName('cfop_gravar').AsInteger := StrToInt(getCFOPConversao(dblkcbbOpEstoque.KeyValue,ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP));

        {VALORES, UNIDADE, ORIGEM E QUANTIDADE COMERCIALIZADA}
        cdsItens.FieldByName('unidade').AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom;

        if ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.orig <> oeNacional then
          cdsItens.FieldByName('origem_produto').AsString := '1'
        else
          cdsItens.FieldByName('origem_produto').AsString := '0';

        cdsItens.FieldByName('valor_unitario').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom;
        cdsItens.FieldByName('quantidade').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qCom;

        if not ckTestaItem.Checked then
          cdsItens.FieldByName('quantidade_emb').AsFloat := getCapacidadeEmbalagemFromProduto(cdsItens.FieldByName('codigo_gravar').AsInteger)
        else
          begin
            xTitulo_Embalagem := 'Produto  : ' + cdsItens.FieldByName('descricao').AsString + #13#10#13#10 +
                                 'Ean      : ' + cdsItens.FieldByName('ean').AsString + #13#10 +
                                 'Ean Trib : ' + cdsItens.FieldByName('eantrib').AsString + #13#10 +
                                 'Unidade  : ' + cdsItens.FieldByName('unidade').AsString + #13#10 +
                                 'Vlr  Embalagem : ' + cdsItens.FieldByName('valor_unitario').AsString + #13#10 +
                                 'Qtde Comprada  : ' + cdsItens.FieldByName('quantidade').AsString ;

            if cdsItens.FieldByName('codigo_gravar').AsInteger > 0 then
              begin
                ce := StrToFloat(InputBox('Digite a capacidade da embalagem.', xTitulo_Embalagem, FloatToStr(getCapacidadeEmbalagemFromProduto(cdsItens.FieldByName('codigo_gravar').AsInteger)) ));
                cdsItens.FieldByName('quantidade_emb').AsFloat := ce;
              end
            else
              begin
                ce := StrToFloat(InputBox('Digite a capacidade da embalagem.', xTitulo_Embalagem, '1'));
                cdsItens.FieldByName('quantidade_emb').AsFloat := ce;
              end;
          end;

        cdsItens.FieldByName('valor_parcial').AsFloat := (cdsItens.FieldByName('quantidade').AsFloat * cdsItens.FieldByName('valor_unitario').AsFloat);
        cdsItens.FieldByName('valor_desconto').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vDesc;
        cdsItens.FieldByName('total_item').AsFloat    := (cdsItens.FieldByName('valor_parcial').AsFloat - cdsItens.FieldByName('valor_desconto').AsFloat);

        if cdsItens.FieldByName('codigo_gravar').AsString <> '0' then
          begin
            try
              cdsItensvalor_compra_anterior.AsString := dm.SQLLocate('produto','prodicod','PRODN3VLRCOMPRA',cdsItenscodigo_gravar.AsString);
            except
              cdsItensvalor_compra_anterior.Asfloat := 0;
            end;
            {Ajustar para mostrar o compra anterior unitario x cap.embal}
            cdsItensvalor_compra_anterior.asFloat := cdsItensvalor_compra_anterior.asFloat * cdsItensquantidade_emb.AsFloat;
            if cdsItensvalor_compra_anterior.asFloat = cdsItensvalor_unitario.AsFloat then
              cdsItenspercentual_diferenca_compra.asFloat := 0
            else
              begin
                if cdsItensvalor_compra_anterior.asFloat > 0 then
                  begin
                    if cdsItensvalor_unitario.AsFloat > cdsItensvalor_compra_anterior.asFloat then
                      cdsItenspercentual_diferenca_compra.asFloat := ((cdsItensvalor_unitario.AsFloat/cdsItensvalor_compra_anterior.asFloat)-1) * 100
                    else
                      cdsItenspercentual_diferenca_compra.asFloat := ((cdsItensvalor_compra_anterior.asFloat/cdsItensvalor_unitario.AsFloat)-1) * 100
                  end;
              end;
          end;

        {ICMS/CSOSN}
        // adilson superbom
        cdsItens.FieldByName('cst_icms').AsString := getCSTConversao(tiICMS, CSTICMSToStr(ACBrNFe.NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST));
//        cdsItens.FieldByName('cst_icms').AsString := CSTICMSToStr(ACBrNFe.NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CST);

        {Se CSON for Dif de zero é pq a nota é do Simples Nacional entao substitui o cst}
        if  CSOSNIcmsToStr(ACBrNFe.NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CSOSN) <> '0' then
          cdsItens.FieldByName('cst_icms').AsString := CSOSNIcmsToStr(ACBrNFe.NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.ICMS.CSOSN);

        {ICMS NORMAL}
        cdsItens.FieldByName('base_icms').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBC;
        cdsItens.FieldByName('valor_icms').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS;
        cdsItens.FieldByName('aliquota_icms').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMS;
        {ICMS ST}
        cdsItens.FieldByName('perc_mva').AsFloat      := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pMVAST;
        cdsItens.FieldByName('base_icms_st').AsFloat  := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBCST;
        cdsItens.FieldByName('aliquota_icms_st').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMSST;
        cdsItens.FieldByName('valor_icms_st').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST;

        {IPI}
        cdsItens.FieldByName('cst_ipi').AsString := getCSTConversao(tiIpi, CSTIPIToStr(ACBrNFe.NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.IPI.CST));
        cdsItens.FieldByName('valor_ipi').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI;
        cdsItens.FieldByName('aliquota_ipi').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.pIPI;
        {PIS}
        cdsItens.FieldByName('cst_pis').AsString := getCSTConversao(tiPis, CSTPISToStr(ACBrNFe.NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.PIS.CST));
        cdsItens.FieldByName('base_pis').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vBC;
        cdsItens.FieldByName('aliquota_pis').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.pPIS;
        cdsItens.FieldByName('valor_pis').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vPIS;
        {COFINS}
        cdsItens.FieldByName('cst_cofins').AsString := getCSTConversao(tiCofins, CSTCOFINSToStr(ACBrNFe.NotasFiscais.Items[0].Nfe.Det.Items[i].Imposto.COFINS.CST));
        cdsItens.FieldByName('base_cofins').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vBC;
        cdsItens.FieldByName('aliquota_cofins').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.pCOFINS;
        cdsItens.FieldByName('valor_cofins').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vCOFINS;
        {FRETE, SEGURO E OUTRAS DESPESAS}
        cdsItens.FieldByName('valor_frete').AsFloat  := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vFrete;
        cdsItens.FieldByName('valor_seguro').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vSeg;
        cdsItens.FieldByName('valor_outras_despesas').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vOutro;
        cdsItens.Post;
      end
    else
      begin
        cdsVisualizacao.Insert;
        cdsVisualizacao.FieldByName('sequencia').AsInteger := cdsVisualizacao.RecordCount + 1;
        cdsVisualizacao.FieldByName('descricao').AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.xProd;
        cdsVisualizacao.FieldByName('unidade').AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom;
        cdsVisualizacao.FieldByName('quantidade').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qCom;
        cdsVisualizacao.FieldByName('valor_unitario').AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom;
        cdsVisualizacao.FieldByName('valor_parcial').AsFloat := (cdsVisualizacao.FieldByName('quantidade').AsFloat * cdsVisualizacao.FieldByName('valor_unitario').AsFloat);
        cdsVisualizacao.Post;
      end;
  end;

  {Dados de Transporte da Mercadoria}
  edtCnpjTransp.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
  edtNomeTransp.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome;

  if ACBrNFe.NotasFiscais.Items[0].NFe.Transp.modFrete = mfContaEmitente then
  begin
    cbbTipoFrete.ItemIndex := 0;
  end else
  begin
    cbbTipoFrete.ItemIndex := 1;
  end;

  edtPlaca.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.veicTransp.placa;
  edtUF.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.veicTransp.UF;

  if ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Count > 0 then
  begin
    edtQuantidade.value := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol;
    edtEspecie.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp;
    edtPesoLiquido.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL;
    edtPesoBruto.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB;
    edtNumero.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].nVol;
    edtMarca.Text := ACBrNFe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].marca;
  end;

  {Gera as duplicatas a pagar}
  //GeraParcelasContasPagar(seNParcelas.Value);

  {Adilson Pegar Financeiro direto do XML se nao tiver marcado}
  if not ckImportaFinanceiro.Checked then
    actCopiarDuplicatasNFExecute(self);
end;

procedure TFormTelaImportadorXML.InicializaAcbrNfe;
begin
  ACBrNFe.NotasFiscais.Clear;
end;

procedure TFormTelaImportadorXML.GeraParcelasContasPagar(aNParcelas: Integer);
var
  aAno, aMes: Word;
  i, aIntervaloDias: Integer;
  aVencParcela: TDateTime;
  s, aDtAnterior: String;
  aValorParcela: Real;
begin
  if aNParcelas > 0 then
  begin
    cdsContaPagar.Close;
    cdsContaPagar.FieldDefs.Clear;
    cdsContaPagar.CreateDataSet;

    aValorParcela := (edtValorFaturar.Value / aNParcelas);
    aIntervaloDias := seIntervaloDias.Value;

    if chkEntrada.Checked then
    begin
      aVencParcela := Date;
    end else
    begin
      aVencParcela := IncDay(Date, aIntervaloDias);
    end;

    for i := 1 to aNParcelas do
    begin
      cdsContaPagar.Insert;

      cdsContaPagar.FieldByName('id').AsInteger := i;
      cdsContaPagar.FieldByName('codigo').AsString := edtCodigoNFVis.Text + '/' + IntToStr(i);
      cdsContaPagar.FieldByName('valor_pagamento').AsFloat := aValorParcela;

      If seDiaBase.Value = 0 then
      begin
        cdsContaPagar.FieldByName('data_pagamento').AsDateTime := aVencParcela;
      end else
      begin
        s := DateToStr(aVencParcela);
        aDtAnterior := Format('%.2d',[seDiaBase.Value]) + Copy(s,3,8);
        s := aDtAnterior;

        if (seDiaBase.Value = 29) or (seDiaBase.Value = 30) or (seDiaBase.Value = 31) then
        begin
          aAno := StrToInt(Copy(s, 7,4));
          aMes := StrToInt(Copy(s, 4,2));
          s    := IntToStr(DaysInAMonth(aAno,aMes)) + '/' + IntToStr(aMes) + '/' + IntToStr(aAno);
        end;

        cdsContaPagar.FieldByName('data_pagamento').AsDateTime := StrToDate(s);
      end;
      cdsContaPagar.FieldByName('dia_semana').AsString := DiaSemana(cdsContaPagar.FieldByName('data_pagamento').AsDateTime);

      cdsContaPagar.Post;
      aVencParcela := IncDay(aVencParcela, aIntervaloDias);
    end;
  end;
end;

procedure TFormTelaImportadorXML.seNParcelasChange(Sender: TObject);
begin
  inherited;
  GeraParcelasContasPagar(seNParcelas.Value);
end;

procedure TFormTelaImportadorXML.seIntervaloDiasChange(Sender: TObject);
begin
  inherited;
  GeraParcelasContasPagar(seNParcelas.Value);
end;

procedure TFormTelaImportadorXML.chkEntradaClick(Sender: TObject);
begin
  inherited;
  GeraParcelasContasPagar(seNParcelas.Value);
end;

procedure TFormTelaImportadorXML.seNParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFormTelaImportadorXML.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Arquivo_Salvar := TIniFile.Create('FormTelaImportXML.ini');
  Arquivo_Salvar.WriteString('DirectoryEditNFERecebidas','DirectoryEditNFERecebidas.InitialDir',DirectoryEditNFERecebidas.Text);
  Arquivo_Salvar.WriteString('ckTestaItem','ckTestaItem.Checked',BoolToStr(ckTestaItem.Checked));
  Arquivo_Salvar.WriteString('ckImportaFinanceiro','ckImportaFinanceiro.Checked',BoolToStr(ckImportaFinanceiro.Checked));
  if dblkcbbOpEstoque.KeyValue > 0 then
    Arquivo_Salvar.WriteString('dblkcbbOpEstoque','dblkcbbOpEstoque.KeyValue',intToStr(dblkcbbOpEstoque.KeyValue));
  if dblkcbbContaDespesa.KeyValue > 0 then
    Arquivo_Salvar.WriteString('dblkcbbContaDespesa','dblkcbbContaDespesa.KeyValue',intToStr(dblkcbbContaDespesa.KeyValue));
  Arquivo_Salvar.Free;

  sqlnfsefaz.Close;
  sqlOpEstoque.Close;
  sqlContaDespesa.Close;
end;

procedure TFormTelaImportadorXML.edtPedidoCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnPedidos.Click;
end;

procedure TFormTelaImportadorXML.SetFornecedor(const Value: String);
begin
  FFornecedor := Value;
  SetFornecedorCadastroVinculado(FFornecedor);
end;

procedure TFormTelaImportadorXML.SetFornecedorCadastroVinculado(
  aCodigoFornecedorVinculado: String);
begin
  dm.SQLConsulta.Close;
  dm.SQLConsulta.SQL.clear;
  dm.SQLConsulta.SQL.Add('select FORNICOD from FORNECEDOR where FORNECEDOR.FORNA14CGC = :FORNA14CGC');
  dm.SQLConsulta.Params.ParamByName('FORNA14CGC').AsString := Trim(aCodigoFornecedorVinculado);
  dm.SQLConsulta.Open;
  if not dm.SQLConsulta.IsEmpty then
  begin
    FornecedorNaoCadastrado := False;
    edtCodigoFornecedor.Text := IntToStr(dm.SQLConsulta.FieldByName('FORNICOD').AsInteger);
  end else
  begin
    edtCodigoFornecedor.Text := '0';
    ExibeInconsistencia(tiErro, 'Fornecedor não cadastrado!  Para cadastrar, clique no botão Novo!', edtNomeFornecedorVis.Text);
    FornecedorNaoCadastrado := True;
  end;
end;

procedure TFormTelaImportadorXML.ExibeInconsistencia(
  aTipo: TTipoInconsistencia; aDescricao, aValor: String);
begin
  if not(cdsValidacao.active) then
    cdsValidacao.CreateDataSet;

  cdsValidacao.Insert;
  cdsValidacao.FieldByName('id').AsInteger := seqValidacao;

  case aTipo of
    tiCritica:
      begin
        Inc(acCritica,1);
        cdsValidacao.FieldByName('tipo').AsString := 'Crítica';
      end;
    tiInformacao:
      begin
        Inc(acInconsistencia,1);
        cdsValidacao.FieldByName('tipo').AsString := 'Informação';
      end;
    tiErro:
      begin
        Inc(acErro,1);
        cdsValidacao.FieldByName('tipo').AsString := 'Erro';
      end;
  end;
  cdsValidacao.FieldByName('descricao').AsString := aDescricao;

  if Trim(aValor) <> EmptyStr then
    cdsValidacao.FieldByName('valor').AsString := 'Detalhe - '+aValor;

  cdsValidacao.Post;
  seqValidacao := seqValidacao + 1;
end;

procedure TFormTelaImportadorXML.ExecutaValidacoes;
var
  s, sPrevRealizado: String;
  iCodPortador, iCodTipoDoc: Integer;
begin
  cdsValidacao.Close;
  cdsValidacao.FieldDefs.Clear;
  cdsValidacao.CreateDataSet;

  {Zerando variaveis globais acumuladores de erros, inconsistencias e criticas}
  acErro := 0;
  acInconsistencia := 0;
  acCritica := 0;

  {Destinatário da Nf-e}
  CNPJDestinatarioNFe := edtCNPJDestinatario.Text;

  {Fornecedor Cadastrado}
  Fornecedor := edtCnpjFornecedorVis.Text;

  {Verificação de Nota ja Digitada}
  CodigoNF := edtCodigoNFVis.Text;

  {Operação de Estoque informada}
  if (dblkcbbOpEstoque.KeyValue = -1) then
  begin
    ExibeInconsistencia(tiInformacao,'Informe a Operação de Estoque!',EmptyStr);
  end;

  {Conta Despesa Informada}
  if (dblkcbbContaDespesa.KeyValue = -1) then
  begin
    ExibeInconsistencia(tiErro,'Informe a Conta Despesa para alimentar o Financeiro!',EmptyStr);
  end;

  {Preenche CFOP a gravar nos produtos}
  if cdsItens.active then
  begin
    try
      cdsItens.DisableControls;
      cdsItens.First;
      while not cdsItens.Eof do
      begin
        if cdsItenscfop_gravar.AsInteger = 0 then
        begin
          {Verifica se possue ja vinculo, se sim edita a linha}
          cdsItens.Edit;
          cdsItens.FieldByName('cfop_gravar').AsInteger := StrToInt(getCFOPConversao(dblkcbbOpEstoque.KeyValue,cdsItens.FieldByName('cfop_nf_entrada').AsString));
          cdsItens.Post;
        end;
        cdsItens.Next;
      end;
    finally
      cdsItens.EnableControls;
    end;
  end;

  //Parametros de Compras - ref a Contas a Pagar (Configurador)
  sPrevRealizado := getPrevistoRealizado;

  //Parametros de Compras (Configurador)
  iCodTipoDoc := getCodigoTipoDocumento;

  //Parametros de Compras (Configurador)
  iCodPortador := getCodigoPortador;


  {Validação principal - se possui ja fornecedor cadastrado com o cnpj do emitente}
  if cdsItens.active then
  begin
    if (Trim(edtCodigoFornecedor.Text) <> EmptyStr) then
    begin
      try
        cdsItens.DisableControls;
        cdsItens.First;

        while not cdsItens.Eof do
        begin
          if cdsItenscfop_gravar.AsInteger = 0 then
          begin
            {Verifica se possue ja vinculo, se sim edita a linha}
            ExibeInconsistencia(tiErro, 'Não existe registro de conversão do CFOP '+IntToStr(cdsItenscfop_nf_entrada.AsInteger), 'Operação de Estoque: '+dblkcbbOpEstoque.Text);
          end;

          if not VerificaProdutoVinculoFornecedor(cdsItens.FieldByName('codigo').AsString, StrToInt(edtCodigoFornecedor.Text)) then
            begin
              s := cdsItens.FieldByName('codigo').AsString + ': ' + cdsItens.FieldByName('descricao').AsString;
              ExibeInconsistencia(tiErro, 'Produto não Cadastrado ou não Referenciado para o fornecedor atual!', s);
            end
          else
            begin
              cdsItens.Edit;
              cdsItens.FieldByName('codigo_gravar').AsString := IntToStr(RetornaCodigoProdutoGravar(cdsItens.FieldByName('codigo').AsString, StrToInt(Trim(edtCodigoFornecedor.Text)), '', ''));
              cdsItens.Post;
            end;

          {Verifica se a diferenca eh muito grande entre a compra anterior e a compra atual, isso pode ser erro de cap.embal}
          if cdsItens.FieldByName('percentual_diferenca_compra').asFloat > 20 then
            ExibeInconsistencia(tiCritica, 'Produto: '+cdsItens.FieldByName('codigo_gravar').AsString+' com grande diferença entre o preço de compra atual e o anterior! Verifique pode ser um erro!', '');

          if cdsItens.FieldByName('quantidade_emb').asFloat = 0 then
            begin
              s := cdsItens.FieldByName('codigo').AsString + ': ' + cdsItens.FieldByName('descricao').AsString;
              ExibeInconsistencia(tiErro, 'Produto: '+cdsItens.FieldByName('codigo_gravar').AsString+' com a capacidade de embalagem! Verifique pode ser um erro!', '');
            end;

          cdsItens.Next;
        end;

      finally
        cdsItens.EnableControls;
      end;
      btnGravarDados.Enabled := (acErro = 0) and (XMLOutraEmpresa = False);
    end;
  end;
end;

procedure TFormTelaImportadorXML.dblkcbbOpEstoqueCloseUp(Sender: TObject);
begin
  inherited;
  ExecutaValidacoes;
end;

function TFormTelaImportadorXML.VerificaProdutoVinculoFornecedor(
  aCodigoItem: String; aIdFornecedor: Integer): Boolean;
begin
  result := False;
  dm.SQLConsulta.close;
  dm.SQLConsulta.SQL.Clear;
  dm.SQLConsulta.SQL.add('SELECT prodicod, fornicod, prfoa30referencia from PRODUTOFORNECEDOR');
  dm.SQLConsulta.SQL.add('where (fornicod = :fornicod) and (prfoa30referencia = :prfoa30referencia)');
  dm.SQLConsulta.ParamByName('fornicod').AsInteger := aIdFornecedor;
  dm.SQLConsulta.ParamByName('prfoa30referencia').AsString := aCodigoItem;
  dm.SQLConsulta.Open;
  if not dm.SQLConsulta.IsEmpty then
    result := true;
end;

procedure TFormTelaImportadorXML.cxGrid1DBTableViewItensCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (AViewInfo.GridRecord.Values[cxgrdbclmnGrid1DBTableView1codigo_gravar.Index] = '0') then
    begin
      ACanvas.Canvas.Brush.Color := clRed;
      ACanvas.Canvas.Font.Color := clWhite;
    end;
end;

function TFormTelaImportadorXML.RetornaCodigoProdutoGravar(
  aCodigoItem: String; aIdFornecedor: Integer; aEAN, aEANTRIB: String): Integer;
  var cod: Integer;
      ref: string;
begin
  Result := 0;

  if trim(aEAN) <> EmptyStr then
    begin
      //Teste com o EAN
      //Teste com Ean do cadastro de produtos
      dm.SQLConsulta.Close;
      dm.SQLConsulta.SQL.Clear;
      dm.SQLConsulta.SQL.add('SELECT PRODICOD from PRODUTO');
      dm.SQLConsulta.SQL.add('where PRODCATIVO=''S'' and PRODA60CODBAR = :PRODA60CODBAR');
      dm.SQLConsulta.ParamByName('PRODA60CODBAR').AsString := aEAN;
      dm.SQLConsulta.Open;
      if dm.SQLConsulta.IsEmpty then
        if trim(aEANTRIB) <> EmptyStr then
          begin
            //Teste com Ean do cadastro de produtos
            dm.SQLConsulta.Close;
            dm.SQLConsulta.SQL.Clear;
            dm.SQLConsulta.SQL.add('SELECT PRODICOD from PRODUTO');
            dm.SQLConsulta.SQL.add('where PRODCATIVO=''S'' and PRODA60CODBAR = :PRODA60CODBAR');
            dm.SQLConsulta.ParamByName('PRODA60CODBAR').AsString := aEANTRIB;
            dm.SQLConsulta.Open;
          end;

      if dm.SQLConsulta.IsEmpty then
        begin
          //Teste com ean do produtobarras
          dm.SQLConsulta.Close;
          dm.SQLConsulta.SQL.Clear;
          dm.SQLConsulta.SQL.add('SELECT PRODUTOBARRAS.PRODICOD from PRODUTOBARRAS');
          dm.SQLConsulta.SQL.add('left outer join PRODUTO on PRODUTOBARRAS.PRODICOD = PRODUTO.PRODICOD');
          dm.SQLConsulta.SQL.add('where PRODUTO.PRODCATIVO=''S'' and PRODUTOBARRAS.PRBAA15BARRAS = :PRBAA15BARRAS');
          dm.SQLConsulta.ParamByName('PRBAA15BARRAS').AsString := aEAN;
          dm.SQLConsulta.Open;
        end;

      if dm.SQLConsulta.IsEmpty then
        if trim(aEANTRIB) <> EmptyStr then
          begin
            //Teste com ean do produtobarras
            dm.SQLConsulta.Close;
            dm.SQLConsulta.SQL.Clear;
            dm.SQLConsulta.SQL.add('SELECT PRODUTOBARRAS.PRODICOD from PRODUTOBARRAS');
            dm.SQLConsulta.SQL.add('left outer join PRODUTO on PRODUTOBARRAS.PRODICOD = PRODUTO.PRODICOD');
            dm.SQLConsulta.SQL.add('where PRODUTO.PRODCATIVO=''S'' and PRODUTOBARRAS.PRBAA15BARRAS = :PRBAA15BARRAS');
            dm.SQLConsulta.ParamByName('PRBAA15BARRAS').AsString := aEANTRIB;
            dm.SQLConsulta.Open;
          end;

      if not dm.SQLConsulta.IsEmpty then
        begin
          cod := dm.SQLConsulta.FieldByName('PRODICOD').AsInteger;
          //procura e adiciona vinculo ja existente ao fornecedor
          ref := aCodigoItem;
          //vincula o produto encontrado com o fonecedor
          //Insere no banco de dados a referencia entre produto, produto vinculado e fornecedor
          // adilson ValidaProdutoFornecedor(cod, aIdFornecedor);
          try
            dm.SQLUpdate.Close;
            dm.SQLUpdate.SQL.Clear;
            dm.SQLUpdate.sql.add('INSERT INTO PRODUTOFORNECEDOR (PRODICOD, FORNICOD, PRFOA30REFERENCIA)');
            dm.SQLUpdate.sql.add('VALUES (:PRODICOD, :FORNICOD, :PRFOA30REFERENCIA)');
            dm.SQLUpdate.Params.ParamByName('PRODICOD').AsInteger := cod;
            dm.SQLUpdate.Params.ParamByName('FORNICOD').AsInteger := aIdFornecedor;
            dm.SQLUpdate.Params.ParamByName('PRFOA30REFERENCIA').AsString := ref;
            dm.SQLUpdate.ExecSql;
          except
            Application.ProcessMessages;
          end;

          //retorna o codigo do produto no sistema
          result := cod;
        end
      else
        begin
          //Teste com codigo
          dm.SQLConsulta.Close;
          dm.SQLConsulta.SQL.Clear;
          dm.SQLConsulta.SQL.add('SELECT prodicod, fornicod, prfoa30referencia from PRODUTOFORNECEDOR');
          dm.SQLConsulta.SQL.add('where (fornicod = :fornicod) and (prfoa30referencia = :prfoa30referencia)');
          dm.SQLConsulta.ParamByName('fornicod').AsInteger := aIdFornecedor;
          dm.SQLConsulta.ParamByName('prfoa30referencia').AsString := aCodigoItem;
          dm.SQLConsulta.Open;
          if not dm.SQLConsulta.IsEmpty then
            result := dm.SQLConsulta.FieldByName('prodicod').AsInteger
          else
            Result := 0;
        end;
    end
  else
    begin
      //Teste com codigo
      dm.SQLConsulta.close;
      dm.SQLConsulta.SQL.Clear;
      dm.SQLConsulta.SQL.add('SELECT prodicod, fornicod, prfoa30referencia from PRODUTOFORNECEDOR');
      dm.SQLConsulta.SQL.add('where (fornicod = :fornicod) and (prfoa30referencia = :prfoa30referencia)');
      dm.SQLConsulta.ParamByName('fornicod').AsInteger := aIdFornecedor;
      dm.SQLConsulta.ParamByName('prfoa30referencia').AsString := aCodigoItem;
      dm.SQLConsulta.Open;
      if not dm.SQLConsulta.IsEmpty then
        result := dm.SQLConsulta.FieldByName('prodicod').AsInteger
      else
        Result := 0;
      dm.SQLConsulta.Close;
    end;
end;

procedure TFormTelaImportadorXML.ListarArquivos(sDiretorio: string; aSubdiretorio: Boolean);
var aSr: TSearchRec;
    i: Integer;
begin
  cdsXML.Close;
  cdsXML.CreateDataSet;

  i := 1;
  if FindFirst(sDiretorio+'\' + '*.xml', faAnyFile, aSr) = 0 then
  begin
    repeat
      if(aSr.Attr > 0) then
      begin
        if not(cdsXML.Active) then
          cdsXML.CreateDataSet;

        if (aSr.Name <> '.') and (aSr.Name <> '..') and (Length(aSr.Name) > 3) then
        begin
          cdsXML.Insert;
          cdsXML.FieldByName('id').AsInteger := i;
          cdsXML.FieldByName('chave_acesso').AsString := aSr.Name;
          cdsXML.Post;
          i := i + 1;
        end;

        SetProgresso('Aguarda... Listando XMLs disponiveis...');
        application.ProcessMessages;
      end;
    until FindNext(aSr)>0;
    FindClose(aSr);
  end;
  SetProgresso('Escolha um XML e clique em Processar...');
end;

function TFormTelaImportadorXML.PossuiAtributo(aAtributo,
  aValor: Integer): Boolean;
begin
  result := aAtributo and aValor = aValor;
end;

procedure TFormTelaImportadorXML.DirectoryEditNFERecebidasChange(
  Sender: TObject);
begin
  inherited;
  cdsXML.Close;
  ListarArquivos(DirectoryEditNFERecebidas.Text, True);
end;

procedure TFormTelaImportadorXML.FormShow(Sender: TObject);
begin
  inherited;
  DirectoryEditNFERecebidasChange(Self);
  tsXMLs.Show;
  FornecedorNaoCadastrado := False;
  ForceDirectories(DirectoryEditNFERecebidas.InitialDir+'\Importados');
  FinalizaProcessamentos;
  edtChaveProcura.setfocus;
  cdsPedidoCompra.Close;
  cdsPedidoCompra.CreateDataSet;
end;

procedure TFormTelaImportadorXML.cxGrid4DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  VisualizaArquivoXML(tvVisualizar);
end;

procedure TFormTelaImportadorXML.VisualizaArquivoXML(
  aTipoVisualizao: TTipoVisualizacao);
begin
  SetProgresso('Traduzindo o arquivo XML... Aguarde...');

  XMLOutraEmpresa := False;
  FornecedorNaoCadastrado := False;

  InicializaAcbrNfe;
  if (edtChaveProcura.Text <> '') then
    ACBrNFe.NotasFiscais.LoadFromFile(DirectoryEditNFERecebidas.Text + '\' + edtChaveProcura.Text+'.xml')
  else
    ACBrNFe.NotasFiscais.LoadFromFile(DirectoryEditNFERecebidas.Text + '\' + cdsXML.FieldByName('chave_acesso').AsString);

  edtChaveProcura.Text := '';
  SetProgresso('Carregando XM na Tela... Aguarde...');
  PopulaComponentesTela(aTipoVisualizao);
  fErroNCM := False;

  lblAcao.caption := '';
  lblAcao.update;

  if aTipoVisualizao = tvVisualizar then
  begin
    AcaoValidar := false;
    cdsValidacao.Close;
    cdsValidacao.FieldDefs.Clear;
  end;

  if aTipoVisualizao = tvProcessar then
  begin
    AcaoValidar := true;
   // ExecutaValidacoes;
    tsItens.show;
  end;
end;

procedure TFormTelaImportadorXML.cxGrid4DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  VisualizaArquivoXML(tvProcessar);
end;

procedure TFormTelaImportadorXML.ReferenciaProdutoFornecedor(
  aCodigoProdutoNota: String; aCodigoFornecedor: Integer);
begin
  //Abre pesquisa de produtos, aguarda seleção.
  FieldLookup  := cdsTempPRODICOD;
  FieldOrigem := 'PRODICOD';
  //CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');

  FormCadastroProduto := TFormCadastroProduto.Create(Self);
  FormCadastroProduto.LabelTitulo.Caption := 'Produto no Arquivo XML => ' + UpperCase(cdsItensdescricao.Value);
  FormCadastroProduto.ShowModal;

  if (cdsTempPRODICOD.Value > 0) then
  begin
    // adilson ValidaProdutoFornecedor(cdsTempPRODICOD.AsInteger, aCodigoFornecedor);
    if not(LocalizouProdutoVinculado(aCodigoProdutoNota, aCodigoFornecedor, cdsTempPRODICOD.AsInteger)) then
      begin
        //Insere no banco de dados a referencia entre produto, produto vinculado e fornecedor
        try
          dm.SQLUpdate.Close;
          dm.SQLUpdate.sql.clear;
          dm.SQLUpdate.sql.add('UPDATE OR INSERT INTO PRODUTOFORNECEDOR (PRODICOD, FORNICOD, PRFOA30REFERENCIA)');
          dm.SQLUpdate.sql.add('VALUES (:PRODICOD, :FORNICOD, :PRFOA30REFERENCIA)');
          dm.SQLUpdate.Params.ParamByName('PRODICOD').AsInteger := cdsTempPRODICOD.AsInteger;
          dm.SQLUpdate.Params.ParamByName('FORNICOD').AsInteger := aCodigoFornecedor;
          dm.SQLUpdate.Params.ParamByName('PRFOA30REFERENCIA').AsString := aCodigoProdutoNota;
          dm.SQLUpdate.ExecSql;
          // MessageDlg('Produto Vinculado com Sucesso!', mtInformation, [mbOK], 0);
        except
          application.ProcessMessages;
        end;
      end
    else
      begin
        //tenta localizar codigo do produto selecionado com o codigo do forncedor e atualiza a referencia
        dm.SQLUpdate.Close;
        dm.SQLUpdate.sql.clear;
        dm.SQLUpdate.sql.add('UPDATE PRODUTOFORNECEDOR SET PRFOA30REFERENCIA = :PRFOA30REFERENCIA');
        dm.SQLUpdate.sql.add('WHERE (PRODICOD = :PRODICOD) AND (FORNICOD = :FORNICOD) AND (PRFOA30REFERENCIA = :PRFOA30REFERENCIA)');
        dm.SQLUpdate.Params.ParamByName('PRODICOD').AsInteger := cdsTempPRODICOD.AsInteger;
        dm.SQLUpdate.Params.ParamByName('FORNICOD').AsInteger := aCodigoFornecedor;
        dm.SQLUpdate.Params.ParamByName('PRFOA30REFERENCIA').AsString := aCodigoProdutoNota;
        dm.SQLUpdate.ExecSql;
        MessageDlg('Produto Atualizado com Sucesso!', mtInformation, [mbOK], 0);
      end;
  end;

  //Executa procedimento de verificação dos produtos e vinculos
  ExecutaValidacoes;
end;

procedure TFormTelaImportadorXML.actVincularProdutoExecute(
  Sender: TObject);
begin
  inherited;
  if (edtCodigoFornecedor.Text) = EmptyStr then
  begin
    MessageDlg('Fornecedor não cadastrado, verifique.', mtError, [mbOK], 0);
    Abort;
  end;

  cdsTemp.Edit;
  cdsTempPRODICOD.AsInteger := 0;
  cdsTemp.Post;

  ReferenciaProdutoFornecedor(cdsItens.FieldByName('codigo').AsString, StrToInt(edtCodigoFornecedor.Text));
  // actSelecionarArquivoExecute(Self);
  ExecutaValidacoes;
end;

function TFormTelaImportadorXML.getCFOPConversao(aOperacaoEstoqueId: Integer; aCFOPOrigem: String): string;
begin
  result := '0';
  dm.SQLConsulta.Close;
  dm.SQLConsulta.sql.clear;
  dm.SQLConsulta.SQL.Add('SELECT OPESICOD, CFOP, CFOPCONVERTE ');
  dm.SQLConsulta.SQL.Add('FROM OPERACAOESTOQUECONVERSOR ');
  dm.SQLConsulta.SQL.Add('WHERE (OPESICOD = :OPESICOD) AND (CFOP = :CFOP) ');
  dm.SQLConsulta.ParamByName('OPESICOD').AsInteger := aOperacaoEstoqueId;
  dm.SQLConsulta.ParamByName('CFOP').AsString := aCFOPOrigem;
  dm.SQLConsulta.Open;
  if not (dm.SQLConsulta.IsEmpty) then
    result := dm.SQLConsulta.FieldByName('CFOPCONVERTE').AsString;
end;

function TFormTelaImportadorXML.getCSTConversao(aTipoImposto: TTipoImposto; aCSTOrigem: string): String;
var
  sCampoRetorno: string;
  aTipoEmpresa: Integer;
begin
  if (aTipoImposto = tiIpi) then
    begin
      {PROCESSA CONVERSÃO DE CST IPI}
      sCampoRetorno := 'CSTENTRADA';
      dm.SQLConsulta.SQL.Clear;
      dm.SQLConsulta.SQL.Add('SELECT CSTENTRADA, CSTSAIDA ');
      dm.SQLConsulta.SQL.Add('FROM CONVERTECSTIPI ');
      dm.SQLConsulta.SQL.Add('WHERE (CSTSAIDA = :CSTSAIDA)  ');
      dm.SQLConsulta.ParamByName('CSTSAIDA').AsString := aCSTOrigem;
    end
  else
    begin
      {PROCESSA CONVERSÃO DE CST PIS E COFINS}
      sCampoRetorno := 'CSTENTRADA';
      dm.SQLConsulta.SQL.Clear;
      dm.SQLConsulta.SQL.Add('SELECT  CSTSAIDA, CSTENTRADA, PISCOFINS');
      dm.SQLConsulta.SQL.Add('FROM CONVERTECSTPISCOFINS');
      dm.SQLConsulta.SQL.Add('WHERE (PISCOFINS = :PISCOFINS) ');
      dm.SQLConsulta.SQL.Add('AND (CSTSAIDA = :CSTSAIDA) ');
      if (aTipoImposto = tiPIS) then
      begin
        dm.SQLConsulta.ParamByName('PISCOFINS').AsString := 'P';
      end else
      begin
        dm.SQLConsulta.ParamByName('PISCOFINS').AsString := 'C';
      end;
      dm.SQLConsulta.ParamByName('CSTSAIDA').AsString := aCSTOrigem;
    end;
  if aTipoImposto = tiICMS then
    begin
      {Corrige cst para ficar igual ao nosso Conversor que grava um zero no banco}
      if aCSTOrigem = '00' then aCSTOrigem := '0';

      aTipoEmpresa := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',EmpresaPadrao));
      {PROCESSA CONVERSÃO DE CST ICMS}
      sCampoRetorno := 'CSTENTRADA';
      dm.SQLConsulta.SQL.Clear;
      dm.SQLConsulta.SQL.Add('SELECT CSTENTRADA, CSTSAIDA ');
      dm.SQLConsulta.SQL.Add('FROM CSTCONVERTE ');
      dm.SQLConsulta.SQL.Add('WHERE (CSTSAIDA = :CSTSAIDA) and (TIPOEMPRESA = :TIPOEMPRESA)  ');
      dm.SQLConsulta.ParamByName('CSTSAIDA').AsString := aCSTOrigem;
      dm.SQLConsulta.ParamByName('TIPOEMPRESA').AsInteger := aTipoEmpresa;
    end;
  dm.SQLConsulta.Open;
  if not(dm.SQLConsulta.IsEmpty) then
    result := dm.SQLConsulta.FieldByName(sCampoRetorno).AsString;
end;

procedure TFormTelaImportadorXML.actCfopConvertExecute(Sender: TObject);
begin
  inherited;
  {Verificar se o CFOP em questão ja não possui vinculos para a operação de estoque atual}
  if (getCFOPConversao(dblkcbbOpEstoque.KeyValue, IntToStr(cdsItenscfop_nf_entrada.AsInteger)) <> '0') then
  begin
    raise Exception.Create('O CFOP selecionado ja possui vínculo para a Operação de Estoque informada.');
  end;

  {Abrir tela para informação de CFOP que será utilizado}
  FormVinculoCfopOperacaoEstoque := TFormVinculoCfopOperacaoEstoque.Create(Self);
  FormVinculoCfopOperacaoEstoque.OperacaoEstoque := dblkcbbOpEstoque.KeyValue;
  FormVinculoCfopOperacaoEstoque.CfopOrigem := cdsItenscfop_nf_entrada.AsInteger;
  FormVinculoCfopOperacaoEstoque.ShowModal;

  {Executa validações para consistência de dados}
  ExecutaValidacoes;
end;

   procedure TFormTelaImportadorXML.actGravarDadosExecute(Sender: TObject);
var
  UnidadeCadastrada: String;
  iSequencialNf : integer;
begin
  inherited;
  //dm.Zdb.Connected := False;
  //dm.Zdb.Connected := True;

  edtChaveProcura.Text := '';
  fGravar := false;

   SetProgresso('Executando validações');
   ExecutaValidacoes;

  SetProgresso('Verificando e atualizando o NCM dos produtos');
  VerificaNCMProdutos;

  If (acErro > 0) or (fErroNCM = true) then
  begin
    MessageDlg('Processo Cancelado, corrija as validações referentes a NCM exibidas no painel de inconsistências.', mtInformation, [mbOK], 0);
    Abort;
  end
  else
  begin
    {Gravar Dados da nf}
    SetProgresso('Gravando informações da Nota Fiscal');
    SQLNota.close;
    SQLNota.sql.Text := 'select * from notacompra where NOCPICOD is null';
    SQLNota.open;
    SQLNota.append;
    iSequencialNf := SQLMax('NOTACOMPRA', 'NOCPICOD', 'EMPRICOD='+EmpresaPadrao);
    SQLNota.FieldByName('NOCPA13ID').AsString   := RetornaCodigoCompra(iSequencialNf);
    SQLNota.FieldByName('EMPRICOD').AsInteger   := EmpresaCorrente;
    SQLNota.FieldByName('EMPRICODDESTCOMPRA').AsInteger := getIdEmpresaAtual(edtCNPJDestinatario.Text);
    SQLNota.FieldByName('NOCPICOD').AsInteger   := iSequencialNf;
    SQLNota.FieldByName('FORNICOD').AsInteger   := StrToInt(edtCodigoFornecedor.Text);
    SQLNota.FieldByName('NOCPA4ANO').AsString   := FormatDateTime('YYYY',edtEmissaoVis.Date);
    SQLNota.FieldByName('NOCPA5SERIE').AsString := edtSerieNota.Text;
    SQLNota.FieldByName('NOCPA30NRO').AsString  := edtCodigoNFVis.Text;
    SQLNota.FieldByName('NOCPCSTATUS').AsString := 'A';
    SQLNota.FieldByName('OPESICOD').AsInteger   := dblkcbbOpEstoque.KeyValue;
    SQLNota.FieldByName('NOCPDEMISSAO').AsDateTime  := edtEmissaoVis.Date;

    if edtDataEntrada.Date > 0 then
      SQLNota.FieldByName('NOCPDRECEBIMENTO').AsDateTime := edtDataEntrada.Date
    else
      SQLNota.FieldByName('NOCPDRECEBIMENTO').Value    := null;

    SQLNota.FieldByName('NOCPN3SOMAITENS').AsFloat    := edtValorProd.Value;
    SQLNota.FieldByName('NOCPN3TOTITENS').AsFloat     := edtValorProd.Value;
    SQLNota.FieldByName('NOCPN3TOTDESC').AsFloat      := edtDescontos.Value;
    SQLNota.FieldByName('NOCPN3VLRTOTNOTA').AsFloat   := edtTotalNF.Value;
    SQLNota.FieldByName('NOCPN3VLRBASCALICM').AsFloat := edtBIcms.Value;
    SQLNota.FieldByName('NOCPN3VLRICMS').AsFloat      := edtValorIcms.Value;
    SQLNota.FieldByName('NOCPN3VLRBCICMSSUB').AsFloat := edtBSt.Value;
    SQLNota.FieldByName('NOCPN3VLRICMSSUB').AsFloat   := edtValorST.Value;

    if (edtValorFrete.Value) > 0 then
      SQLNota.FieldByName('NOCPN3VLRFRETE').AsFloat := edtValorFrete.Value
    else
      SQLNota.FieldByName('NOCPN3VLRFRETE').AsFloat := 0.00;

    SQLNota.FieldByName('NOCPN3VLRSEGURO').AsFloat    := edtSeguro.Value;
    SQLNota.FieldByName('NOCPN3VLROUTRADESP').AsFloat := edtValorOutras.Value;
    SQLNota.FieldByName('NOCPN3VLRISENTO').AsFloat    := edtValorIsento.Value;
    SQLNota.FieldByName('NOCPN3VLRIPI').AsFloat       := edtValorIpi.Value;
    SQLNota.FieldByName('NOCPN3VLRDESC').AsFloat      := edtDescontos.Value;

    SQLNota.FieldByName('NOCPA254OBS').AsString       := copy(mmoObs.Lines.Text,1,4000);
    SQLNota.FieldByName('NOCPN3PERCICMSFRET').AsFloat := 0.00;

    // corrigir frete 1 = Fob, 0 = Cif
    if cbbTipoFrete.ItemIndex = 1 then
      SQLNota.FieldByName('NOCPA5TIPOFRETE').AsString := 'F'
    else
      SQLNota.FieldByName('NOCPA5TIPOFRETE').AsString := 'C';

    SQLNota.FieldByName('PLCTA15COD').AsString         := TrimRight(dblkcbbContaDespesa.KeyValue);
    SQLNota.FieldByName('NOFIA44CHAVEACESSO').AsString := edtChaveNfe.Text;

    SQLNota.FieldByName('NOCPN3VLRCOFINS').AsFloat     := edtValorCofins.Value;
    SQLNota.FieldByName('NOCPN3VLRPIS').AsFloat        := edtValorPis.Value;

    SQLNota.FieldByName('USUAA60LOGIN').AsString       := UsuarioAtualNome;

    SQLNota.FieldByName('PENDENTE').AsString           := 'S';
    SQLNota.FieldByName('REGISTRO').Value              := Now;

    try
      SQLNota.post;
      fGravar := True;
    except
      SQLNota.cancel;
      fGravar := False;
    end;

    if fGravar then
    begin
      //Gravar Itens da nf
      SetProgresso('Gravando Produto '+cdsItensdescricao.AsString+' na Nota Fiscal');
      cdsItens.First;
      cdsItens.DisableControls;

      dm.SeqItemCompra := 1;
      while not(cdsItens.eof) do
        begin
          if SQLLocate('PRODUTO','PRODICOD','GRADICOD',cdsItenscodigo_gravar.AsString) <> '' then
            begin
              dm.CodigoProdutoCompra  := cdsItenscodigo_gravar.AsInteger;
              Application.CreateForm(TFormTelaLancamentoGradeXML,FormTelaLancamentoGradeXML);
              FormTelaLancamentoGradeXML.Qtde_Xml             := cdsItensquantidade.AsInteger*cdsItensquantidade_emb.AsInteger;
              FormTelaLancamentoGradeXML.labeltitulo.caption  := cdsItenscodigo_gravar.AsString+'-'  + cdsItensdescricao.Value+
                                                                '   Quantidade que veio no XML => ' + FloatToStr(cdsItensquantidade.value*cdsItensquantidade_emb.Value);
              FormTelaLancamentoGradeXML.lbMarcaReferencia.caption := 'Marca: '+dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',dm.SQLLocate('PRODUTO','PRODICOD','MARCICOD',cdsItenscodigo_gravar.AsString)) +
                                                                      ' => Ref.: '+dm.SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',cdsItenscodigo_gravar.AsString);
              FormTelaLancamentoGradeXML.xNOCPA13ID           := RetornaCodigoCompra(iSequencialNf);
              FormTelaLancamentoGradeXML.xCFOPA5CODAUX        := cdsItenscfop_gravar.AsString;
              FormTelaLancamentoGradeXML.xNOCIN3CAPEMBAL      := cdsItensquantidade_emb.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN3VLREMBAL      := cdsItensvalor_unitario.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN2VLRSEGURO     := cdsItensvalor_seguro.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN2VLRDESPESAS   := cdsItensvalor_outras_despesas.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN3VLRDESC       := cdsItensvalor_desconto.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN3VLRFRETE      := cdsItensvalor_frete.AsFloat;

              if cdsItenscst_icms.AsString = '00' then
                FormTelaLancamentoGradeXML.xNOCIA3CSTICMS    :=  '0'
              else
                FormTelaLancamentoGradeXML.xNOCIA3CSTICMS    := cdsItenscst_icms.AsString;

              FormTelaLancamentoGradeXML.xNOCIN2VBC           := cdsItensbase_icms.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN3PERCICMS      := cdsItensaliquota_icms.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN3VLRICMS       := cdsItensvalor_icms.AsFloat;

              FormTelaLancamentoGradeXML.xNOCIN2PMVAST        := cdsItensperc_mva.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN2VBCST         := cdsItensbase_icms_st.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN2PERCSUBST     := cdsItensaliquota_icms_st.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN3VLRSUBST      := cdsItensvalor_icms_st.AsFloat;
              FormTelaLancamentoGradeXML.xNOCA3CSTIPI         := cdsItenscst_ipi.AsString;
              FormTelaLancamentoGradeXML.xNOCIN3PERCIPI       := cdsItensaliquota_ipi.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN3VLRIPI        := cdsItensvalor_ipi.AsFloat;
              FormTelaLancamentoGradeXML.xNOCA3CSTPIS         := cdsItenscst_pis.AsString;
              FormTelaLancamentoGradeXML.xNOCIN2BASEPIS       := cdsItensbase_pis.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN2PERCPIS       := cdsItensaliquota_pis.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN2VLRPIS        := cdsItensvalor_pis.AsFloat;
              FormTelaLancamentoGradeXML.xNOCA3CSTCOFINS      := cdsItenscst_cofins.AsString;
              FormTelaLancamentoGradeXML.xNOCIN2BASECOFINS    := cdsItensbase_cofins.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN2PERCCOFINS    := cdsItensaliquota_cofins.AsFloat;
              FormTelaLancamentoGradeXML.xNOCIN2VLRCOFINS     := cdsItensvalor_cofins.AsFloat;
              FormTelaLancamentoGradeXML.xPDCPA13ID           := cdsTempPDCPA13ID.AsString;
              FormTelaLancamentoGradeXML.ShowModal;
            end
          else
            begin
              try
                dm.SQLUpdate.close;
                dm.SQLUpdate.sql.clear;
                dm.SQLUpdate.SQL.Add('INSERT INTO NOTACOMPRAITEM (NOCPA13ID, NOCIIITEM, PRODICOD, NOCIN3CAPEMBAL,');
                dm.SQLUpdate.SQL.Add('                            NOCIN3QTDEMBAL, NOCIN3QTDEPED, NOCIN3TOTPED, NOCIN3VLRDESC, NOCIN3PERCDESC,');
                dm.SQLUpdate.SQL.Add('                            NOCIN3VLRICMS, NOCIN3PERCICMS, NOCIN3VLRSUBST, NOCIN3VLRIPI, NOCIN3PERCIPI,');
                dm.SQLUpdate.SQL.Add('                            NOCIN3VLRCUSTOMED, NOCIN3VLRFRETE, PDCPA13ID, PCITIPOS, PENDENTE, REGISTRO,');
                dm.SQLUpdate.SQL.Add('                            NOCICALTPRECO, NOCIN2PERCDIFICM, NOCIN2PERCSUBST, CFOPA5CODAUX, ');
                dm.SQLUpdate.SQL.Add('                            NOCIN2PMVAST, NOCIN2VLRSEGURO, NOCIN2VLRDESPESAS, NOCN4COFINSQTD,');
                dm.SQLUpdate.SQL.Add('                            NOCA3CSTCOFINS, NOCIN2PERCCOFINS, NOCIN2VLRCOFINS, NOCN4COFINSREAL, NOCIN2BASECOFINS, ');
                dm.SQLUpdate.SQL.Add('                            NOCIN2VBC, NOCIN2VBCST, NOCIN2VBCSTRET, NOCIN2PREDBC, NOCIN2PREDBCST, NOCIA3CSTICMS,');
                dm.SQLUpdate.SQL.Add('                            NOCIN2VICMSSTRET, NOCIN2VCREDICMSSN, NOCA3CSTIPI, NOCN4QTDIPI, ');
                dm.SQLUpdate.SQL.Add('                            NOCN4UNDIPI, NOCIN2VBCIPI, NOCIN2PERCISS, NOCIN2BASEISS, NOCIN2VLRISS, NOCA3CSTPIS, ');
                dm.SQLUpdate.SQL.Add('                            NOCIN2VLRPIS, NOCIN2BASEPIS, NOCIN2PERCPIS, NOCN4PISREAL, NOCN4PISQTD, UNIDICOD,  ');
                dm.SQLUpdate.SQL.Add('                            NOCIN3VLREMBAL, NOCIN3VLRUNIT, NOCIN3PERCFRETE, NOCIN3QTDBONIF, NOCIN2MGVENDA, NOCIN2VLRVENDA)  ');
                dm.SQLUpdate.SQL.Add('                    VALUES (:NOCPA13ID, :NOCIIITEM, :PRODICOD, :NOCIN3CAPEMBAL,');
                dm.SQLUpdate.SQL.Add('                            :NOCIN3QTDEMBAL, :NOCIN3QTDEPED, :NOCIN3TOTPED, :NOCIN3VLRDESC, :NOCIN3PERCDESC, ');
                dm.SQLUpdate.SQL.Add('                            :NOCIN3VLRICMS, :NOCIN3PERCICMS, :NOCIN3VLRSUBST, :NOCIN3VLRIPI, :NOCIN3PERCIPI, ');
                dm.SQLUpdate.SQL.Add('                            :NOCIN3VLRCUSTOMED, :NOCIN3VLRFRETE, :PDCPA13ID, :PCITIPOS, :PENDENTE, :REGISTRO,');
                dm.SQLUpdate.SQL.Add('                            :NOCICALTPRECO, :NOCIN2PERCDIFICM, :NOCIN2PERCSUBST, :CFOPA5CODAUX, ');
                dm.SQLUpdate.SQL.Add('                            :NOCIN2PMVAST, :NOCIN2VLRSEGURO, :NOCIN2VLRDESPESAS, :NOCN4COFINSQTD, ');
                dm.SQLUpdate.SQL.Add('                            :NOCA3CSTCOFINS, :NOCIN2PERCCOFINS, :NOCIN2VLRCOFINS, :NOCN4COFINSREAL, :NOCIN2BASECOFINS, ');
                dm.SQLUpdate.SQL.Add('                            :NOCIN2VBC, :NOCIN2VBCST, :NOCIN2VBCSTRET, :NOCIN2PREDBC, :NOCIN2PREDBCST, :NOCIA3CSTICMS, ');
                dm.SQLUpdate.SQL.Add('                            :NOCIN2VICMSSTRET, :NOCIN2VCREDICMSSN, :NOCA3CSTIPI, :NOCN4QTDIPI,  ');
                dm.SQLUpdate.SQL.Add('                            :NOCN4UNDIPI, :NOCIN2VBCIPI, :NOCIN2PERCISS, :NOCIN2BASEISS, :NOCIN2VLRISS, :NOCA3CSTPIS,');
                dm.SQLUpdate.SQL.Add('                            :NOCIN2VLRPIS, :NOCIN2BASEPIS, :NOCIN2PERCPIS, :NOCN4PISREAL, :NOCN4PISQTD, :UNIDICOD,');
                dm.SQLUpdate.SQL.Add('                            :NOCIN3VLREMBAL, :NOCIN3VLRUNIT, :NOCIN3PERCFRETE, :NOCIN3QTDBONIF, :NOCIN2MGVENDA, :NOCIN2VLRVENDA)');

                dm.SQLUpdate.ParamByName('NOCPA13ID').AsString     := RetornaCodigoCompra(iSequencialNf);
                dm.SQLUpdate.ParamByName('NOCIIITEM').AsInteger    := dm.SeqItemCompra;
                dm.SQLUpdate.ParamByName('PCITIPOS').AsInteger     := dm.SQLUpdate.ParamByName('NOCIIITEM').AsInteger; {Posicao no Pedido Compra}
                dm.SQLUpdate.ParamByName('PRODICOD').AsInteger     := cdsItens.FieldByName('codigo_gravar').AsInteger;
                dm.SQLUpdate.ParamByName('CFOPA5CODAUX').AsString  := IntToStr(cdsItenscfop_gravar.AsInteger);
                dm.SQLUpdate.ParamByName('PDCPA13ID').AsString     := cdsTempPDCPA13ID.AsString;
                dm.SQLUpdate.ParamByName('NOCICALTPRECO').AsString := 'I';
                dm.SQLUpdate.ParamByName('NOCIN3QTDBONIF').AsFloat := 0.00;

                dm.SQLUpdate.ParamByName('NOCIN3CAPEMBAL').AsFloat := cdsItens.FieldByName('quantidade_emb').AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN3QTDEMBAL').AsFloat := cdsItens.fieldbyName('quantidade').AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN3VLREMBAL').AsFloat := cdsItensvalor_unitario.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN3VLRUNIT').AsFloat  := cdsItensvalor_unitario.AsFloat/cdsItens.FieldByName('quantidade_emb').AsFloat;

                dm.SQLUpdate.ParamByName('NOCIN2VLRSEGURO').AsFloat   := cdsItensvalor_seguro.AsFloat;

                dm.SQLUpdate.ParamByName('NOCIN2VLRDESPESAS').AsFloat := cdsItensvalor_outras_despesas.AsFloat;
                if dm.SQLUpdate.ParamByName('NOCIN2VLRDESPESAS').IsNull then
                  dm.SQLUpdate.ParamByName('NOCIN2VLRDESPESAS').asfloat := 0.00;

                dm.SQLUpdate.ParamByName('NOCIN3VLRDESC').AsFloat     := cdsItensvalor_desconto.AsFloat;
                if dm.SQLUpdate.ParamByName('NOCIN3VLRDESC').AsFloat > 0 then
                  dm.SQLUpdate.ParamByName('NOCIN3PERCDESC').AsFloat    := (cdsItensvalor_desconto.AsFloat/(cdsItensvalor_unitario.AsFloat*cdsItens.FieldByName('quantidade').AsFloat)) * 100
                else
                  dm.SQLUpdate.ParamByName('NOCIN3PERCDESC').AsFloat    := 0;

                dm.SQLUpdate.ParamByName('NOCIN3VLRFRETE').AsFloat    := cdsItensvalor_frete.AsFloat;

{                if dm.SQLUpdate.ParamByName('NOCIN3VLRFRETE').AsFloat > 0 then
                  dm.SQLUpdate.ParamByName('NOCIN3PERCFRETE').AsFloat    := (cdsItensvalor_frete.AsFloat/edtValorFrete.Value) * 100
                else
                  dm.SQLUpdate.ParamByName('NOCIN3PERCFRETE').AsFloat    := 0;  }

                if dm.SQLUpdate.ParamByName('NOCIN3VLRFRETE').AsFloat > 0 then
                  dm.SQLUpdate.ParamByName('NOCIN3PERCFRETE').AsFloat    := (cdsItensvalor_frete.AsFloat/edtValorFrete.Value) * 100
                else
                  dm.SQLUpdate.ParamByName('NOCIN3PERCFRETE').AsFloat    := 0;


                dm.SQLUpdate.ParamByName('NOCIN2PERCDIFICM').AsFloat  := 0.00;

                if cdsItenscst_icms.AsString = '00' then
                  dm.SQLUpdate.ParamByName('NOCIA3CSTICMS').AsString    :=  '0'
                else
                  dm.SQLUpdate.ParamByName('NOCIA3CSTICMS').AsString    := cdsItenscst_icms.AsString;

                dm.SQLUpdate.ParamByName('NOCIN2VBC').AsFloat         := cdsItensbase_icms.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN3PERCICMS').AsFloat    := cdsItensaliquota_icms.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN3VLRICMS').AsFloat     := cdsItensvalor_icms.AsFloat;

                dm.SQLUpdate.ParamByName('NOCIN2PMVAST').AsFloat      := cdsItensperc_mva.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN2VBCST').AsFloat       := cdsItensbase_icms_st.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN2PERCSUBST').AsFloat   := cdsItensaliquota_icms_st.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN3VLRSUBST').AsFloat    := cdsItensvalor_icms_st.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN2VBCSTRET').AsFloat    := 0.00;
                dm.SQLUpdate.ParamByName('NOCIN2PREDBC').AsFloat      := 0.00;
                dm.SQLUpdate.ParamByName('NOCIN2PREDBCST').AsFloat    := 0.00;
                dm.SQLUpdate.ParamByName('NOCIN2VICMSSTRET').AsFloat  := 0.00;
                dm.SQLUpdate.ParamByName('NOCIN2VCREDICMSSN').AsFloat := 0.00;

                if cdsItenscst_ipi.AsString = '' then
                  dm.SQLUpdate.ParamByName('NOCA3CSTIPI').AsString := '02'
                else
                  dm.SQLUpdate.ParamByName('NOCA3CSTIPI').AsString := cdsItenscst_ipi.AsString;
                dm.SQLUpdate.ParamByName('NOCIN2VBCIPI').AsFloat   := 0.00;
                dm.SQLUpdate.ParamByName('NOCN4QTDIPI').AsFloat    := 0.00;
                dm.SQLUpdate.ParamByName('NOCN4UNDIPI').AsFloat    := 0.00;
                dm.SQLUpdate.ParamByName('NOCIN3PERCIPI').AsFloat  := cdsItensaliquota_ipi.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN3VLRIPI').AsFloat   := cdsItensvalor_ipi.AsFloat;

                dm.SQLUpdate.ParamByName('NOCA3CSTPIS').AsString     := cdsItenscst_pis.AsString;
                dm.SQLUpdate.ParamByName('NOCIN2BASEPIS').AsFloat    := cdsItensbase_pis.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN2PERCPIS').AsFloat    := cdsItensaliquota_pis.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN2VLRPIS').AsFloat     := cdsItensvalor_pis.AsFloat;
                dm.SQLUpdate.ParamByName('NOCN4PISQTD').AsFloat      := 0.000;
                dm.SQLUpdate.ParamByName('NOCN4PISREAL').AsFloat     := 0.00;

                dm.SQLUpdate.ParamByName('NOCA3CSTCOFINS').AsString  := cdsItenscst_cofins.AsString;
                dm.SQLUpdate.ParamByName('NOCIN2BASECOFINS').AsFloat := cdsItensbase_cofins.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN2PERCCOFINS').AsFloat := cdsItensaliquota_cofins.AsFloat;
                dm.SQLUpdate.ParamByName('NOCIN2VLRCOFINS').AsFloat  := cdsItensvalor_cofins.AsFloat;
                dm.SQLUpdate.ParamByName('NOCN4COFINSQTD').AsFloat   := 0.000;
                dm.SQLUpdate.ParamByName('NOCN4COFINSREAL').AsFloat  := 0.00;

                dm.SQLUpdate.ParamByName('NOCIN2PERCISS').AsFloat    := 0.00;
                dm.SQLUpdate.ParamByName('NOCIN2BASEISS').AsFloat    := 0.00;
                dm.SQLUpdate.ParamByName('NOCIN2VLRISS').AsFloat     := 0.00;

                dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat := (cdsItensquantidade.AsFloat * (cdsItensvalor_unitario.AsFloat / cdsItensquantidade_emb.AsFloat)) / cdsItensquantidade.AsFloat;
              //  dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat  := ((dm.SQLUpdate.ParamByName('NOCIN3VLRUNIT').AsFloat * dm.SQLUpdate.ParamByName('NOCIN3QTDEMBAL').AsFloat) +
              //                                                              dm.SQLUpdate.ParamByName('NOCIN2VLRCOFINS').AsFloat + dm.SQLUpdate.ParamByName('NOCIN2VLRPIS').AsFloat +
              //                                                              dm.SQLUpdate.ParamByName('NOCIN3VLRIPI').AsFloat + dm.SQLUpdate.ParamByName('NOCIN3VLRICMS').AsFloat +
              //                                                              dm.SQLUpdate.ParamByName('NOCIN3VLRFRETE').AsFloat) / dm.SQLUpdate.ParamByName('NOCIN3QTDEMBAL').AsFloat;
                pCalculaCustoMedio;

                dm.SQLUpdate.ParamByName('NOCIN3QTDEPED').AsFloat  := 0.00;
                dm.SQLUpdate.ParamByName('NOCIN3TOTPED').AsFloat   := 0.00;

                {Calcula o novo preco venda}
                try
                  if strToFloat(dm.SQLLocate('PRODUTO','PRODICOD','PRODN3PERCMGLVFIXA',cdsItens.FieldByName('codigo_gravar').AsString)) > 0 then
                    dm.SQLUpdate.ParamByName('NOCIN2MGVENDA').AsFloat   := strToFloat(dm.SQLLocate('PRODUTO','PRODICOD','PRODN3PERCMGLVFIXA',cdsItens.FieldByName('codigo_gravar').AsString))
                  else
                    dm.SQLUpdate.ParamByName('NOCIN2MGVENDA').AsFloat   := 0.00;
                  if dm.SQLUpdate.ParamByName('NOCIN2MGVENDA').AsFloat > 0 then
//                    dm.SQLUpdate.ParamByName('NOCIN2VLRVENDA').AsFloat   := dm.SQLUpdate.ParamByName('NOCIN3VLRUNIT').AsFloat + (dm.SQLUpdate.ParamByName('NOCIN3VLRUNIT').AsFloat * (dm.SQLUpdate.ParamByName('NOCIN2MGVENDA').AsFloat / 100))
                    dm.SQLUpdate.ParamByName('NOCIN2VLRVENDA').AsFloat   := dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat + (dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat * (dm.SQLUpdate.ParamByName('NOCIN2MGVENDA').AsFloat / 100))
                  else
                    dm.SQLUpdate.ParamByName('NOCIN2VLRVENDA').AsFloat   := 0.00;
                except
                  dm.SQLUpdate.ParamByName('NOCIN2MGVENDA').AsFloat   := 0.00;
                  dm.SQLUpdate.ParamByName('NOCIN2VLRVENDA').AsFloat  := 0.00;
                end;

                dm.SQLUpdate.ParamByName('PENDENTE').AsString  := 'S';
                dm.SQLUpdate.ParamByName('REGISTRO').AsString  := FormatDateTime('mm/dd/yyyy hh:nn:ss',Now);

                // Adilson, removi pq tem q buscar do nosso cad.produto dm.SQLUpdate.ParamByName('UNIDICOD').AsInteger := getUnidadeId(cdsItensunidade.AsString);
                dm.SQLUpdate.ParamByName('UNIDICOD').AsString := dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',cdsItens.FieldByName('codigo_gravar').AsString);
                if dm.SQLUpdate.ParamByName('UNIDICOD').AsString = '' then
                  begin
                    ShowMessage('Erro: Falta Informar a Unidade no Produto => '+cdsItens.FieldByName('codigo_gravar').AsString);
                    fGravar := False ;
                  end;
                if cdsItenscst_icms.AsString <> '' then
                  AtualizaCST_ICMSCadastroProduto(StrToInt(cdsItenscodigo_gravar.AsString), cdsItenscst_icms.AsString);
                dm.SQLUpdate.ExecSQL;
              except
                Application.ProcessMessages;
                ShowMessage('Erro ao gravar o item Codigo: '+cdsItens.FieldByName('codigo_gravar').AsString);
              end;
            end;
          cdsItens.Next;
          dm.SeqItemCompra := dm.SeqItemCompra + 1;
        end;

      cdsItens.EnableControls;

      //Grava Financeiro (Contas a Pagar)
      if cdsContaPagar.Active then
      begin
        SetProgresso('Gravando Contas a Pagar');
        cdsContaPagar.First;
        try
          cdsContaPagar.DisableControls;
          while not(cdsContaPagar.eof) do
          begin
            dm.SQLUpdate.close;
            dm.SQLUpdate.SQL.Clear;
            dm.SQLUpdate.SQL.Add('INSERT INTO CONTASPAGAR (CTPGA13ID, EMPRICOD, CTPGICOD, FORNICOD, PLCTA15COD, CTPGA20DOCORIG, ');
            dm.SQLUpdate.SQL.Add('                         CTPGINROPARC, CTPGDTEMIS, CTPGDVENC, CTPGN3VLR, TPDCICOD,            ');
            dm.SQLUpdate.SQL.Add('                         NOCPA13ID, PORTICOD, CTPGN2TOTPAG, CTPGN3JUROPAGTO,                  ');
            dm.SQLUpdate.SQL.Add('                         CTPGN3MULTAPAGTO, CTPGN3DESCPAGTO, CTPGN2DESCPROMO,                  ');
            dm.SQLUpdate.SQL.Add('                         CTPGCPREVREAL, CTPGN3TXJURO, CTPGN3TXMULTA, PENDENTE, REGISTRO,      ');
            dm.SQLUpdate.SQL.Add('                         CTPGA254HIST, NOCPA30NRO, CTPGDRECBTO, CTPGA2MESCOMP, CTPGA4ANOCOMP) ');
            dm.SQLUpdate.SQL.Add('                 VALUES (:CTPGA13ID, :EMPRICOD, :CTPGICOD, :FORNICOD, :PLCTA15COD, :CTPGA20DOCORIG,');
            dm.SQLUpdate.SQL.Add('                         :CTPGINROPARC, :CTPGDTEMIS, :CTPGDVENC, :CTPGN3VLR, :TPDCICOD, ');
            dm.SQLUpdate.SQL.Add('                         :NOCPA13ID, :PORTICOD, :CTPGN2TOTPAG, :CTPGN3JUROPAGTO,        ');
            dm.SQLUpdate.SQL.Add('                         :CTPGN3MULTAPAGTO, :CTPGN3DESCPAGTO, :CTPGN2DESCPROMO,         ');
            dm.SQLUpdate.SQL.Add('                         :CTPGCPREVREAL, :CTPGN3TXJURO, :CTPGN3TXMULTA, :PENDENTE, :REGISTRO, ');
            dm.SQLUpdate.SQL.Add('                         :CTPGA254HIST, :NOCPA30NRO, :CTPGDRECBTO, :CTPGA2MESCOMP, :CTPGA4ANOCOMP) ');

            dm.SQLUpdate.ParamByName('CTPGA13ID').AsString := RetornaCodigoCPagar(SQLMax('CONTASPAGAR', 'CTPGICOD', 'EMPRICOD='+EmpresaPadrao));
            dm.SQLUpdate.ParamByName('EMPRICOD').AsInteger := EmpresaCorrente;
            dm.SQLUpdate.ParamByName('CTPGICOD').AsInteger := SQLMax('CONTASPAGAR', 'CTPGICOD', 'EMPRICOD='+EmpresaPadrao);
            dm.SQLUpdate.ParamByName('FORNICOD').AsInteger := StrToInt(edtCodigoFornecedor.Text);
            dm.SQLUpdate.ParamByName('PLCTA15COD').AsString := dblkcbbContaDespesa.KeyValue;
            dm.SQLUpdate.ParamByName('CTPGA20DOCORIG').AsString := edtCodigoNFVis.Text;
            dm.SQLUpdate.ParamByName('CTPGINROPARC').AsInteger := cdsContaPagarid.AsInteger;
            dm.SQLUpdate.ParamByName('CTPGDTEMIS').AsDate := Date;
            dm.SQLUpdate.ParamByName('CTPGDVENC').AsDate := cdsContaPagardata_pagamento.AsDateTime;
            dm.SQLUpdate.ParamByName('CTPGN3VLR').AsFloat := cdsContaPagarvalor_pagamento.AsFloat;
            dm.SQLUpdate.ParamByName('TPDCICOD').AsInteger := getCodigoTipoDocumento;
            dm.SQLUpdate.ParamByName('NOCPA13ID').AsString := RetornaCodigoCompra(iSequencialNf);
            dm.SQLUpdate.ParamByName('PORTICOD').AsInteger := getCodigoPortador;
            dm.SQLUpdate.ParamByName('CTPGN2TOTPAG').AsFloat := 0.00;
            dm.SQLUpdate.ParamByName('CTPGN3JUROPAGTO').AsFloat := 0.00;
            dm.SQLUpdate.ParamByName('CTPGN3MULTAPAGTO').AsFloat := 0.00;
            dm.SQLUpdate.ParamByName('CTPGN3DESCPAGTO').AsFloat := 0.00;
            dm.SQLUpdate.ParamByName('CTPGN2DESCPROMO').AsFloat := 0.00;
            dm.SQLUpdate.ParamByName('CTPGCPREVREAL').AsString := getPrevistoRealizado;
            dm.SQLUpdate.ParamByName('CTPGN3TXJURO').AsFloat := 0.00;
            dm.SQLUpdate.ParamByName('CTPGN3TXMULTA').AsFloat := 0.00;
            dm.SQLUpdate.ParamByName('PENDENTE').AsString := 'S';
            dm.SQLUpdate.ParamByName('REGISTRO').AsDate := Date;
            dm.SQLUpdate.ParamByName('CTPGA254HIST').AsString := 'IMPORTAÇÃO XML COMPRA NF: '+edtCodigoNFVis.Text;
            dm.SQLUpdate.ParamByName('NOCPA30NRO').AsString := edtCodigoNFVis.Text;
            dm.SQLUpdate.ParamByName('CTPGDRECBTO').AsDate := Date;
            dm.SQLUpdate.ParamByName('CTPGA2MESCOMP').AsString := FormatDateTime('MM', edtEmissaoVis.Date);
            dm.SQLUpdate.ParamByName('CTPGA4ANOCOMP').AsString := FormatDateTime('YYYY', edtEmissaoVis.Date);
            dm.SQLUpdate.ExecSQL;

            cdsContaPagar.Next;
          end;

        finally
          cdsContaPagar.EnableControls;
        end;
      end;
      if not cdsPedidoCompra.IsEmpty then
      begin
        fDlgComparaNotaPedido := TfDlgComparaNotaPedido.Create(Self);
        fDlgComparaNotaPedido.cdsDados.Close;
        fDlgComparaNotaPedido.cdsDados.CreateDataSet;
        fDlgComparaNotaPedido.lblNumNota.Caption := RetornaCodigoCompra(iSequencialNf);
        fDlgComparaNotaPedido.lblNumPedido.Caption := cdsPedidoCompraPDCPA13ID.AsString;
        fDlgComparaNotaPedido.lblNomeFornecedor.Caption := edtNomeFornecedorVis.Text;
        fDlgComparaNotaPedido.MontaDados(RetornaCodigoCompra(iSequencialNf),cdsPedidoCompraPDCPA13ID.AsString);
        fDlgComparaNotaPedido.ShowModal;
        cdsPedidoCompra.ClearFields;
      end;

      SetProgresso('Atualizando lista de XMLs');
      MoveXMLPastaImportado;
      MessageDlg('XML Importado com Sucesso! ATENÇÃO: A nota de compra importada está ABERTA, Execute a Rotina de Reajustes de Preços e depois Encerre as Notas Fiscais para dar ENTRADA no Estoque!', mtInformation, [mbOK],0);
      tsXMLs.Show;
      SetProgresso('Importação OK.');
      FinalizaProcessamentos;
      edtChaveProcura.setfocus;
    end;
  end;
end;

procedure TFormTelaImportadorXML.SetCodigoNF(const Value: String);
begin
  FCodigoNF := Value;

  if NFJaImportada(edtSerieNota.Text, FCodigoNF, FFornecedor) then
  begin
    {Mostra erro nota fiscal ja importada}
    ExibeInconsistencia(tiErro, 'Nota Fiscal já digitada / importada no sistema.', 'Código NF.: '+FCodigoNF+' | Série: '+edtSerieNota.Text+' | Data Emissao: '+DateToStr(edtEmissaoVis.Date));
  end;
end;

function TFormTelaImportadorXML.NFJaImportada(aSerie, aCodigoNF, aFornecedor: String): Boolean;
begin
  result := False;
  dm.SQLConsulta.Close;
  dm.SQLConsulta.SQL.Clear;
  dm.SQLConsulta.sql.add('SELECT NOTACOMPRA.NOCPA30NRO FROM NOTACOMPRA ');
  dm.SQLConsulta.sql.add('LEFT JOIN FORNECEDOR ON NOTACOMPRA.FORNICOD = FORNECEDOR.FORNICOD ');
  dm.SQLConsulta.sql.add('WHERE (NOTACOMPRA.NOCPA5SERIE = :NOCPA5SERIE) AND (FORNECEDOR.FORNA14CGC = :FORNA14CGC) AND (NOTACOMPRA.NOCPA30NRO = :NOCPA30NRO) ');
  dm.SQLConsulta.ParamByName('NOCPA5SERIE').AsString := Trim(aSerie);
  dm.SQLConsulta.ParamByName('NOCPA30NRO').AsString  := Trim(aCodigoNF);
  dm.SQLConsulta.ParamByName('FORNA14CGC').AsString  := Trim(aFornecedor);
  dm.SQLConsulta.Open;
  if not(dm.SQLConsulta.IsEmpty) then
    Result := True;
end;

function TFormTelaImportadorXML.getUnidadeId(aUnidade: String): Integer;
begin
  result := 1;
  Dm.SQLConsulta.SQL.Add('Select UNIDICOD from UNIDADE where UNIDA5DESCR = :UNIDA5DESCR');
  Dm.SQLConsulta.ParamByName('UNIDA5DESCR').AsString := aUnidade;
  Dm.SQLConsulta.Open;
  if not(Dm.SQLConsulta.IsEmpty) then
    result := Dm.SQLConsulta.FieldByName('UNIDICOD').AsInteger;
end;

function TFormTelaImportadorXML.RetornaCodigoCompra(aSequencia: Integer): String;
var
  s: String;
begin
  s := Format('%.3d',[EmpresaCorrente])+Format('%.9d',[aSequencia]);
  s := s + DigitVerifEAN(s);
  result := s;
end;

function TFormTelaImportadorXML.RetornaCodigoCPagar(
  aSequencia: Integer): String;
var
  s: String;
begin
  s := Format('%.3d',[EmpresaCorrente])+Format('%.9d',[aSequencia]);
  s := s + DigitVerifEAN(s);
  result := s;
end;

function TFormTelaImportadorXML.LocalizouProdutoVinculado(aCodigoProdutoNota: String; aCodigoFornecedor, aCodigoVincular: Integer): Boolean;
begin
  result := FALSE;
  dm.SQLConsulta.close;
  dm.SQLConsulta.sql.Clear;
  dm.SQLConsulta.SQL.Add('select PRODICOD from PRODUTOFORNECEDOR');
  dm.SQLConsulta.SQL.Add('where (PRODICOD = :PRODICOD) and (FORNICOD = :FORNICOD) and (PRFOA30REFERENCIA = :PRFOA30REFERENCIA)');
  dm.SQLConsulta.ParamByName('PRODICOD').AsInteger := aCodigoVincular;
  dm.SQLConsulta.ParamByName('FORNICOD').AsInteger := aCodigoFornecedor;
  dm.SQLConsulta.ParamByName('PRFOA30REFERENCIA').AsString := aCodigoProdutoNota;
  dm.SQLConsulta.Open;
  if not(dm.SQLConsulta.IsEmpty) then
    result := TRUE;
  dm.SQLConsulta.close;
end;

procedure TFormTelaImportadorXML.actCadFornecedorExecute(Sender: TObject);
begin
  inherited;
  dm.SQLUpdate.SQL.Clear;
    dm.SQLUpdate.SQL.Add('INSERT INTO FORNECEDOR (FORNICOD, FORNA60RAZAOSOC, FORNA60NOMEFANT, TPFRICOD, ');
    dm.SQLUpdate.SQL.Add('                    FORNCFISJURID, FORNA14CGC, FORNA20IE, FORNA11CPF,       ');
    dm.SQLUpdate.SQL.Add('                    FORNA10RG, FORNA60END, FORNA60BAI, FORNA60CID, FORNA2UF, FORNA8CEP,');
    dm.SQLUpdate.SQL.Add('                    FORNA15FONE1, FORNIMUNICODFED, PLCTA15CODDEBITO, ');
    dm.SQLUpdate.SQL.Add('                    PENDENTE, REGISTRO, FORNA5NROEND, FORNICODPAIS, FORNCSIMPLES)');
    dm.SQLUpdate.SQL.Add('VALUES (:FORNICOD, :FORNA60RAZAOSOC, :FORNA60NOMEFANT, :TPFRICOD, ');
    dm.SQLUpdate.SQL.Add('                    :FORNCFISJURID, :FORNA14CGC, :FORNA20IE, :FORNA11CPF,  ');
    dm.SQLUpdate.SQL.Add('                    :FORNA10RG, :FORNA60END, :FORNA60BAI, :FORNA60CID, :FORNA2UF, :FORNA8CEP, ');
    dm.SQLUpdate.SQL.Add('                    :FORNA15FONE1, :FORNIMUNICODFED, :PLCTA15CODDEBITO, ');
    dm.SQLUpdate.SQL.Add('                    :PENDENTE, :REGISTRO, :FORNA5NROEND, :FORNICODPAIS, :FORNCSIMPLES)');

    dm.SQLUpdate.ParamByName('FORNICOD').AsInteger := SQLMax('FORNECEDOR', 'FORNICOD','0=0');
    dm.SQLUpdate.ParamByName('FORNA60RAZAOSOC').AsString := copy(uppercase(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.xNome),1,60);
    dm.SQLUpdate.ParamByName('FORNA60NOMEFANT').AsString := copy(uppercase(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.xFant),1,60);
    dm.SQLUpdate.ParamByName('TPFRICOD').AsInteger := 2;
    dm.SQLUpdate.ParamByName('PLCTA15CODDEBITO').AsString := dblkcbbContaDespesa.KeyValue;

    if Length(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) = 11 then
    begin
      dm.SQLUpdate.ParamByName('FORNCFISJURID').AsString := 'F';
      dm.SQLUpdate.ParamByName('FORNA11CPF').AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;

      dm.SQLUpdate.ParamByName('FORNCFISJURID').DataType := ftString;
      dm.SQLUpdate.ParamByName('FORNCFISJURID').Value := null;
      dm.SQLUpdate.ParamByName('FORNA14CGC').DataType := ftString;
      dm.SQLUpdate.ParamByName('FORNA14CGC').Value := null;
      dm.SQLUpdate.ParamByName('FORNA20IE').DataType := ftString;
      dm.SQLUpdate.ParamByName('FORNA20IE').Value := null;
    end else
    begin
      dm.SQLUpdate.ParamByName('FORNCFISJURID').AsString := 'J';
      dm.SQLUpdate.ParamByName('FORNA14CGC').AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
      dm.SQLUpdate.ParamByName('FORNA20IE').AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.IE;

      dm.SQLUpdate.ParamByName('FORNA11CPF').DataType := ftString;
      dm.SQLUpdate.ParamByName('FORNA11CPF').Value := null;
    end;

    dm.SQLUpdate.ParamByName('FORNA10RG').DataType := ftString;
      dm.SQLUpdate.ParamByName('FORNA10RG').Value := null;

    dm.SQLUpdate.ParamByName('FORNA8CEP').DataType := ftString;
      dm.SQLUpdate.ParamByName('FORNA8CEP').Value := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);

    if ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CRT = crtSimplesNacional then  //Simples Nacional
    begin
      dm.SQLUpdate.ParamByName('FORNCSIMPLES').AsString := 'S';
    end else
    begin
      if ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CRT = crtRegimeNormal then  //Regime Normal
      begin
        dm.SQLUpdate.ParamByName('FORNCSIMPLES').AsString := 'N';
      end else
      begin
        dm.SQLUpdate.ParamByName('FORNCSIMPLES').DataType := ftString;
        dm.SQLUpdate.ParamByName('FORNCSIMPLES').Value := null;
      end;
    end;

    dm.SQLUpdate.ParamByName('FORNA60END').AsString := copy(uppercase(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr),1,60);
    dm.SQLUpdate.ParamByName('FORNA60BAI').AsString := copy(uppercase(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro),1,60);
    dm.SQLUpdate.ParamByName('FORNA60CID').AsString := copy(uppercase(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun),1,60);
    dm.SQLUpdate.ParamByName('FORNA2UF').AsString   := uppercase(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF);
    dm.SQLUpdate.ParamByName('FORNA15FONE1').AsString := copy(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone,1,15);
    dm.SQLUpdate.ParamByName('PENDENTE').AsString     := 'S';
    dm.SQLUpdate.ParamByName('REGISTRO').AsDate       := Date;
    dm.SQLUpdate.ParamByName('FORNA5NROEND').AsString     := copy(uppercase(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro),1,5);
    dm.SQLUpdate.ParamByName('FORNICODPAIS').AsInteger    := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais;
    dm.SQLUpdate.ParamByName('FORNIMUNICODFED').AsInteger := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
    try
      dm.SQLUpdate.ExecSQL;

      MessageDlg('Fornecedor Cadastrado com Sucesso!', mtInformation, [mbOK], 0);

      ExecutaValidacoes;
    except
      MessageDlg('Erro ao cadastrar o fornecedor apartir do XML. ', mtError, [mbOk], 0);
    end;
end;

procedure TFormTelaImportadorXML.actPrincipalUpdate(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  actCadFornecedor.Enabled := FornecedorNaoCadastrado = True;
  actVincularProduto.Enabled := not(cdsItens.IsEmpty) and (edtCodigoFornecedor.Text <> '0');
  actAlterarCapacEmb.Enabled := not(cdsItens.IsEmpty);
  actCfopConvert.Enabled := not(cdsItens.IsEmpty);
  //Açoes de tabvisible
{  tsInfoNfe.TabVisible := AcaoValidar;
  tsItens.TabVisible := AcaoValidar;
  tsTransporte.TabVisible := AcaoValidar;
  tsFaturamento.TabVisible := AcaoValidar; }
end;

procedure TFormTelaImportadorXML.MoveXMLPastaImportado;
var Origem, Destino : string;
begin
  try
    if not DirectoryExists(DirectoryEditNFERecebidas.Text+'\Importados') then
      CreateDir(DirectoryEditNFERecebidas.Text+'\Importados');
    origem  := DirectoryEditNFERecebidas.Text+'\'+cdsXMLchave_acesso.AsString;
    destino := DirectoryEditNFERecebidas.Text+'\Importados\'+cdsXMLchave_acesso.AsString;
    CopyFile(PChar(origem), PChar(destino), false);
    DeleteFile(PChar(origem));
  except
    application.ProcessMessages;
  end;
  ListarArquivos(DirectoryEditNFERecebidas.Text, False);
end;

function TFormTelaImportadorXML.getCapacidadeEmbalagemFromProduto(
  aCodigo: Integer): Real;
begin
  result := 1;
  dm.SQLConsulta.Close;
  dm.SQLConsulta.sql.Clear;
  dm.SQLConsulta.SQL.Add('select PRODN3CAPACEMBAL from PRODUTO');
  dm.SQLConsulta.SQL.Add('where PRODICOD = :PRODICOD');
  dm.SQLConsulta.ParamByName('PRODICOD').AsInteger := aCodigo;
  dm.SQLConsulta.Open;
  if not dm.SQLConsulta.isempty then
    result := dm.SQLConsulta.FieldByName('PRODN3CAPACEMBAL').AsFloat;
  dm.SQLConsulta.Close;
end;

procedure TFormTelaImportadorXML.AtualizaNCMCadastroProduto(
  aCodigoProduto: Integer; aNCM: String);
begin
  SQLProdutoEditar.Close;
  SQLProdutoEditar.sql.clear;
  SQLProdutoEditar.sql.Text := 'Select PRODICOD, NCMICOD from produto where prodicod='+inttostr(aCodigoProduto);
  SQLProdutoEditar.open;
  if not SQLProdutoEditar.IsEmpty then
    begin
      SQLProdutoEditar.edit;
      SQLProdutoEditar.FieldByName('NCMICOD').AsInteger := getIdNCMFromCodigo(aNCM);
      try
        SQLProdutoEditar.post;
      except
        SQLProdutoEditar.cancel;
        MessageDlg('Erro ao atualizar a Capacidade Embalagem!', mtInformation, [mbOK], 0);
        ExibeInconsistencia(tiErro, 'NCM NAO atualizado', 'Produto: '+cdsItensdescricao.AsString);
      end
    end;
  SQLProdutoEditar.Close;
end;

function TFormTelaImportadorXML.ProdutoContemNCM(
  aCodigoProduto, aIdNCM: Integer): Boolean;
begin
  result := True;
  dm.SQLConsulta.close;
  dm.SQLConsulta.sql.Clear;
  dm.SQLConsulta.SQL.Add('select NCMICOD from PRODUTO');
  dm.SQLConsulta.SQL.Add('where PRODICOD = :PRODICOD');
  dm.SQLConsulta.ParamByName('PRODICOD').AsInteger := aCodigoProduto;
  dm.SQLConsulta.Open;
  if (dm.SQLConsulta.FieldByName('NCMICOD').AsInteger = null) or (dm.SQLConsulta.FieldByName('NCMICOD').AsInteger = 0) or (dm.SQLConsulta.FieldByName('NCMICOD').AsInteger <> aIdNCM) then
    result := False;
  dm.SQLConsulta.Close;
end;

procedure TFormTelaImportadorXML.VerificaNCMProdutos;
begin
  try
    cdsItens.DisableControls;
    cdsItens.First;
    while not cdsItens.Eof do
    begin
      if not(ProdutoContemNCM(StrToInt(cdsItenscodigo_gravar.AsString), getIdNCMFromCodigo(cdsItensncm.AsString))) then
      begin
        AtualizaNCMCadastroProduto(StrToInt(cdsItenscodigo_gravar.AsString), cdsItensncm.AsString);
      end;
      cdsItens.Next;
    end;
  finally
    cdsItens.First;
    cdsItens.EnableControls;
  end;
end;

function TFormTelaImportadorXML.getIdNCMFromCodigo(aNCM: String): Integer;
begin
  result := 0;
  dm.SQLConsulta.Close;
  dm.SQLConsulta.sql.Clear;
  dm.SQLConsulta.SQL.Add('select NCMICOD from NCM');
  dm.SQLConsulta.SQL.Add('where NCMA30CODIGO = :NCMA30CODIGO');
  dm.SQLConsulta.ParamByName('NCMA30CODIGO').AsString := aNCM;
  dm.SQLConsulta.Open;
  if not(dm.SQLConsulta.Eof) then
    result := dm.SQLConsulta.FieldByName('NCMICOD').AsInteger
  else
    begin
      ExibeInconsistencia(tiErro, 'NCM não localizado no sistema.', 'NCM: '+aNCM);
      fErroNCM := true;
    end;
  dm.SQLConsulta.Close;
end;

function TFormTelaImportadorXML.CriaNCM(aNCM: String): Integer;
begin
  Dm.SQLConsulta.Close;
  Dm.SQLConsulta.SQL.Clear;
  Dm.SQLConsulta.SQL.Add('select NCMICOD from NCM');
  Dm.SQLConsulta.SQL.Add('where NCMA30CODIGO = :NCMA30CODIGO');
  Dm.SQLConsulta.ParamByName('NCMA30CODIGO').AsString := aNCM;
  Dm.SQLConsulta.Open;
  if Dm.SQLConsulta.IsEmpty then
    begin
      sqlNCM.close;
      sqlNCM.open;
      sqlNCM.append;
      sqlNCM.fieldbyname('NCMICOD').AsInteger        := SQLMax('NCM','NCMICOD','NCMICOD IS NOT NULL');
      sqlNCM.fieldbyname('NCMA30CODIGO').AsString    := aNCM;
      sqlNCM.fieldbyname('NCMA100DESCR').AsString    := 'NCM INCLUIDO AUTOMATICAMENTE';
      sqlNCM.fieldbyname('ALIQUOTAINTERNA').AsString := '0';
      sqlNCM.fieldbyname('MVA').AsString             := '0';
      sqlNCM.fieldbyname('NCMN2ALIQNAC').AsString    := '0';
      sqlNCM.fieldbyname('NCMN2ALIQIMP').AsString    := '0';
      sqlNCM.fieldbyname('PENDENTE').AsString        := 'S';
      sqlNCM.fieldbyname('REGISTRO').AsDateTime      :=  now;
      try
        sqlNCM.post;
      except
        sqlNCM.cancel;
      end;
    end;
  Dm.SQLConsulta.close;
end;

function TFormTelaImportadorXML.CriaCEST(aCEST, aNCM: String): String;
begin
  dm.SQLConsulta.close;
  dm.SQLConsulta.SQL.Clear;
  dm.SQLConsulta.SQL.Add('select CEST from CESTNCM');
  dm.SQLConsulta.SQL.Add('where NCM ="'+aNCM+'" and ');
  dm.SQLConsulta.SQL.Add(' CEST="'+aCEST+'"');
  dm.SQLConsulta.Open;
  if dm.SQLConsulta.IsEmpty then
    begin
      sqlCest.close;
      sqlCest.open;
      sqlCest.append;
      sqlCest.fieldbyname('CEST').AsString        := aCEST;
      sqlCest.fieldbyname('NCM').AsString         := aNCM;
      sqlCest.fieldbyname('DESCRICAO').AsString   := 'CEST INCLUIDO AUTOMATICAMENTE';
      sqlCest.fieldbyname('PENDENTE').AsString    := 'S';
      sqlCest.fieldbyname('REGISTRO').AsDateTime  := now;
      try
        sqlCest.post;
      except
        sqlCest.cancel;
      end;
    end;
  dm.SQLConsulta.close;
end;

procedure TFormTelaImportadorXML.tsInfoNfeShow(Sender: TObject);
begin
  inherited;
  //  ExecutaValidacoes;
end;

procedure TFormTelaImportadorXML.tsItensShow(Sender: TObject);
begin
  inherited;
  ExecutaValidacoes;
end;

procedure TFormTelaImportadorXML.tsTransporteShow(Sender: TObject);
begin
  inherited;
//  ExecutaValidacoes;
end;

procedure TFormTelaImportadorXML.tsFaturamentoShow(Sender: TObject);
begin
  inherited;
//  ExecutaValidacoes;
end;

procedure TFormTelaImportadorXML.actSiteSefazRSExecute(Sender: TObject);
begin
  inherited;
  shellExecute(0, 'open', PChar('https://www.sefaz.rs.gov.br/NFE/NFE-CER.aspx'), '', '', SW_SHOWNORMAL);
end;

procedure TFormTelaImportadorXML.actPortalNFEExecute(Sender: TObject);
begin
  inherited;
  shellExecute(0, 'open', PChar('http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8='), '', '', SW_SHOWNORMAL);
end;

function TFormTelaImportadorXML.getPrevistoRealizado: String;
begin
  if not dm.SQLConfigCompra.Active then dm.SQLConfigCompra.Open;

  if dm.SQLConfigCompra.FieldByName('CFCOCPREVREALNFCOMPRAFIN').Value <> '' then
    result := dm.SQLConfigCompra.FieldByName('CFCOCPREVREALNFCOMPRAFIN').Value
  else
    begin
      result :='';
      ExibeInconsistencia(tiErro, 'Configurador/Compras (Tipo de Conta nao definido). Processo cancelado.', '');
    end;
end;

function TFormTelaImportadorXML.getCodigoPortador: Integer;
begin
  if not dm.SQLConfigCompra.Active then dm.SQLConfigCompra.Open;

  if dm.SQLConfigCompra.FieldByName('PORTICOD').AsString <> '' then
    result := dm.SQLConfigCompra.FieldByName('PORTICOD').Value
  else
    begin
      result :=0;
      ExibeInconsistencia(tiErro, 'Configuração de Compras não definida (Portador). Processo cancelado.', '');
    end;
end;

function TFormTelaImportadorXML.getCodigoTipoDocumento: Integer;
begin
  if not dm.SQLConfigCompra.Active then dm.SQLConfigCompra.Open;

  if dm.SQLConfigCompra.FieldByName('TPDCICOD').AsString <> '' then
    result := dm.SQLConfigCompra.FieldByName('TPDCICOD').Value
  else
    begin
      result :=0;
      ExibeInconsistencia(tiErro, 'Configuração de Compras não definida (Tipo de Documento). Processo cancelado.', '');
    end;
end;

procedure TFormTelaImportadorXML.SetCNPJDestinatarioNFe(
  const Value: String);
begin
  FCNPJDestinatarioNFe := Value;
  if (dm.sqlempresaEMPRA3CRT.Value = '3') then
    if FCNPJDestinatarioNFe <> getCNPJEmpresaAtual(edtCNPJDestinatario.Text) then
      begin
        ExibeInconsistencia(tiErro, 'O XML informado não é com destino a empresa atual. Processo Cancelado.', '');
        XMLOutraEmpresa := True;
      end;
end;

function TFormTelaImportadorXML.getCNPJEmpresaAtual(aCnpjDestinatario: String): String;
begin
  if dm.SQLEmpresaEMPRA14CGC.Value = aCnpjDestinatario then
    result := dm.SQLEmpresaEMPRA14CGC.Value
  else
    begin
      result := '';
      ExibeInconsistencia(tiErro, 'CNPJ do destinatário da NF-e é diferente do CNPJ da Empresa Atual, verifique. Processo Cancelado.', '');
    end;
end;

procedure TFormTelaImportadorXML.pmGridPopup(Sender: TObject);
begin
  inherited;
  actVincularProduto.Enabled := edtCodigoFornecedor.Text <> '0';
end;

procedure TFormTelaImportadorXML.ValidaProdutoFornecedor(aCodigoProduto, aCodigoFornecedor: Integer);
begin
  exit;
{  dm.SQLUpdate.close;
  dm.SQLUpdate.SQL.Clear;
  dm.SQLUpdate.SQL.Add('delete from PRODUTOFORNECEDOR');
  dm.SQLUpdate.SQL.Add('where (PRODICOD = :PRODICOD) AND (FORNICOD = :FORNICOD)');
  dm.SQLUpdate.ParamByName('PRODICOD').AsInteger := aCodigoProduto;
  dm.SQLUpdate.ParamByName('FORNICOD').AsInteger := aCodigoFornecedor;
  dm.SQLUpdate.ExecSQL; }
end;

procedure TFormTelaImportadorXML.FinalizaProcessamentos;
begin
  AcaoValidar := false;

  lblAcao.Caption := EmptyStr;

  //Finaliza Validações
  cdsValidacao.Close;
  cdsValidacao.FieldDefs.Clear;

  //Finaliza Financeiro
  cdsContaPagar.Close;
  cdsContaPagar.FieldDefs.Clear;

  //Finaliza Itens
  cdsItens.Close;
  cdsItens.FieldDefs.Clear;

  //FInaliza cds visualização
  cdsVisualizacao.Close;
  cdsVisualizacao.FieldDefs.Clear;

  {Dados da nota fiscal}
  edtChaveNfe.Clear;
  edtSerieNota.Clear;
  edtDataEntrada.Clear;
  // DISPLAY -------------------------------------------------------------------------
  edtDescOperacaoVis.Clear;
  edtCodigoNFVis.Clear;
  edtEmissaoVis.Clear;
  // ---------------------------------------------------------------------------------

  {Dados do Fornecedor}
  edtCnpjFornecedorVis.Clear;
  edtNomeFornecedorVis.Clear;
  // ---------------------------------------------------------------------------------

  {Dados Destinatário}
  edtCNPJDestinatario.Clear;

  {Valores Totais}
  edtBIcms.Clear;
  edtValorIcms.Clear;
  edtBSt.Clear;
  edtValorST.Clear;
  edtICMSRetido.Clear;
  edtCreditoIcms.Clear;
  edtValorIpi.Clear;
  edtValorProd.Clear;
  edtValorFrete.Clear;
  edtSeguro.Clear;
  edtDescontos.Clear;
  edtValorPis.Clear;
  edtValorCofins.Clear;
  edtValorIsento.Clear;
  edtValorOutras.Clear;
  edtItemEspecial.Clear;
  edtTotalNF.Clear;
  // DISPLAY -------------------------------------------------------------------------
  edtTotalNotaVis.Clear;
  // ---------------------------------------------------------------------------------
  edtValorFaturar.Clear;

  {Observações e Mensagens da NF}
  mmoObs.Lines.Clear;

  {Dados de Transporte da Mercadoria}
  edtCnpjTransp.Clear;
  edtNomeTransp.Clear;

  cbbTipoFrete.ItemIndex := -1;

  edtPlaca.Clear;
  edtUF.Clear;

  edtQuantidade.Clear;
  edtEspecie.Clear;
  edtPesoLiquido.Clear;
  edtPesoBruto.Clear;
  edtNumero.Clear;
  edtMarca.Clear;

  seNParcelas.Value := 1;
  seIntervaloDias.Value := 30;

end;

procedure TFormTelaImportadorXML.tsXMLsShow(Sender: TObject);
begin
  inherited;
  btnGravarDados.Enabled := false;
end;

procedure TFormTelaImportadorXML.btReloadArquivosClick(Sender: TObject);
begin
  inherited;
  cdsXML.Close;
  ListarArquivos(DirectoryEditNFERecebidas.Text, True);
end;

procedure TFormTelaImportadorXML.actlimparFinanceiroExecute(
  Sender: TObject);
begin
  inherited;
  seNParcelas.Value := 0;
  cdsContaPagar.Close;
  cdsContaPagar.FieldDefs.Clear;
end;

procedure TFormTelaImportadorXML.actAlterarCapacEmbExecute(
  Sender: TObject);
begin
  inherited;
  cdsItens.Edit;
  cdsItensquantidade_emb.AsFloat := StrToFloat(InputBox('Digite a capacidade da embalagem.', PChar('Produto: '+cdsItens.FieldByName('descricao').AsString), '1'));
  {Refazer devido a troca da cap.embal influenciar no calculo}
  if cdsItenscodigo_gravar.AsInteger > 0 then
    begin
      cdsItensvalor_compra_anterior.AsString := dm.SQLLocate('produto','prodicod','PRODN3VLRCOMPRA',cdsItenscodigo_gravar.AsString);
      {Ajustar para mostrar o compra anterior unitario x cap.embal}
      cdsItensvalor_compra_anterior.asFloat := cdsItensvalor_compra_anterior.asFloat * cdsItensquantidade_emb.AsFloat;
      try
        if cdsItensvalor_unitario.AsFloat > cdsItensvalor_compra_anterior.asFloat then
          cdsItenspercentual_diferenca_compra.asFloat := ((cdsItensvalor_unitario.asFloat/cdsItensvalor_compra_anterior.asFloat)-1) * 100
        else
          cdsItenspercentual_diferenca_compra.asFloat := ((cdsItensvalor_compra_anterior.asFloat/cdsItensvalor_unitario.asFloat)-1) * 100;
      except
        application.ProcessMessages;
      end;
    end;
  cdsItens.Post;

  {Atualiza Ficha do Produto}
  SQLProdutoEditar.Close;
  SQLProdutoEditar.sql.clear;
  SQLProdutoEditar.sql.Text := 'Select PRODICOD, PRODN3CAPACEMBAL from produto where prodicod='+cdsItenscodigo_gravar.AsString;
  SQLProdutoEditar.open;
  if not SQLProdutoEditar.IsEmpty then
    begin
      SQLProdutoEditar.edit;
      SQLProdutoEditar.FieldByName('PRODN3CAPACEMBAL').AsFloat := cdsItensquantidade_emb.AsFloat;
      try
        SQLProdutoEditar.post;
        MessageDlg('Capacidade Embalagem Atualizada com Sucesso!', mtInformation, [mbOK], 0);
      except
        SQLProdutoEditar.cancel;
        MessageDlg('Erro ao atualizar a Capacidade Embalagem!', mtInformation, [mbOK], 0);
      end
    end;
  SQLProdutoEditar.Close;

  ExecutaValidacoes;
end;

procedure TFormTelaImportadorXML.actCadNCMExecute(Sender: TObject);
begin
  inherited;
  FormCadastroNCM := TFormCadastroNCM.Create(Self);
  FormCadastroNCM.ShowModal;
end;

procedure TFormTelaImportadorXML.SetProgresso(aMensagem: String);
begin
  lblAcao.Caption := aMensagem;
  lblAcao.Update;
  Application.ProcessMessages;
end;

function TFormTelaImportadorXML.getIdEmpresaAtual(aCnpj: String): Integer;
begin
  dm.SQLConsulta.Close;
  dm.SQLConsulta.SQL.Clear;
  dm.SQLConsulta.SQL.Add('select EMPRICOD, EMPRA14CGC from EMPRESA');
  dm.SQLConsulta.SQL.Add('where EMPRA14CGC = :EMPRA14CGC');
  dm.SQLConsulta.ParamByName('EMPRA14CGC').AsString := aCnpj;
  dm.SQLConsulta.Open;
  if not(dm.SQLConsulta.Eof) then
    result := dm.SQLConsulta.FieldByName('EMPRICOD').AsInteger
  else
    begin
      result := 0;
      ExibeInconsistencia(tiErro, 'CNPJ do destinatário da NF-e é diferente do CNPJ da Empresa Atual, verifique. Processo Cancelado.', '');
    end;
end;

procedure TFormTelaImportadorXML.actCopiarDuplicatasNFExecute(
  Sender: TObject);
  var i : Integer;
begin
  inherited;
  actlimparFinanceiroExecute(self);
  if ACBrNFe.NotasFiscais.Items[0].NFe.Cobr.Dup.Count > 0 then
  begin
    cdsContaPagar.Close;
    cdsContaPagar.CreateDataSet;

    for i := 0 to ACBrNFe.NotasFiscais.Items[0].NFe.Cobr.Dup.Count -1 do
    begin
      cdsContaPagar.Insert;
      cdsContaPagarid.AsInteger := cdsContaPagar.RecordCount + 1;
      cdsContaPagarcodigo.AsString := ACBrNFe.NotasFiscais.Items[0].NFe.Cobr.Dup[i].nDup;
      cdsContaPagardata_pagamento.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy', ACBrNFe.NotasFiscais.Items[0].NFe.Cobr.Dup[i].dVenc));
      cdsContaPagarvalor_pagamento.AsFloat := ACBrNFe.NotasFiscais.Items[0].NFe.Cobr.Dup[i].vDup;
      cdsContaPagardia_semana.AsString := DiaSemana(cdsContaPagardata_pagamento.AsDateTime);
      cdsContaPagar.Post;
    end;
  end else
  begin
    seNParcelas.Value := 0;
    cdsContaPagar.Close;
    cdsContaPagar.FieldDefs.Clear;

    {MessageDlg('Não foram detectadas duplicatas na Nota selecionada, verifique!', mtInformation, [mbOK], 0);
    cdsContaPagar.Close;
    cdsContaPagar.CreateDataSet;
    seNParcelas.Value := 1;
    seDiaBase.value := 1;
    seIntervaloDias.Value := 30;
    GeraParcelasContasPagar(seNParcelas.Value);}
  end;
end;

procedure TFormTelaImportadorXML.AdicionarProdutoRapidoClick(
  Sender: TObject);
var xDescricao, CSTIcms, AliqIcms, Unidade : string;
var GravouProdutoNovo : boolean;
begin
  inherited;
  {Testa se o produto ja esta cadastrado}
  if cdsItensean.Value <> '' then
    begin
      dm.zConsulta.Close;
      dm.zConsulta.sql.clear;
      dm.zConsulta.sql.Text := 'Select PRODICOD from Produto where PRODA60CODBAR = '''+cdsItensean.Value+''' ';
      dm.zConsulta.Open;
      if not dm.zConsulta.IsEmpty then
        begin
          Showmessage('Produto Já Cadastrado! Operação Cancelada! Código Barras: ' + cdsItensean.AsString + ' Produto: '+ dm.zConsulta.FieldByName('PRODICOD').AsString);
          Abort;
          Exit;
        end;
    end;

  if cdsItenseantrib.Value <> '' then
    begin
      dm.zConsulta.Close;
      dm.zConsulta.sql.clear;
      dm.zConsulta.sql.Text := 'Select PRODICOD from Produto where PRODA60CODBAR = '''+cdsItenseantrib.Value+''' ';
      dm.zConsulta.Open;
      if not dm.zConsulta.IsEmpty then
        begin
          Showmessage('Produto Já Cadastrado! Operação Cancelada! Código Barras Trib: ' + cdsItenseantrib.AsString);
          Abort;
          Exit;
        end;
    end;

  GravouProdutoNovo := False;
  // Cadastro Rapido do Produto
  Application.CreateForm(TFormCadastroProdutoRapido,FormCadastroProdutoRapido);
  FormCadastroProdutoRapido.CdFornec     := edtCodigoFornecedor.Text;
  FormCadastroProdutoRapido.CdReferencia := cdsItenscodigo.AsString;

  if cdsItensean.Value <> '' then
    FormCadastroProdutoRapido.SQLTemplatePRODA60CODBAR.Value := cdsItensean.Value;
  if cdsItenseantrib.Value <> '' then
    FormCadastroProdutoRapido.SQLTemplatePRODA20BARRAUNIDADE.AsString := cdsItenseantrib.Value;

  FormCadastroProdutoRapido.SQLTemplatePRODA60DESCR.AsString        := uppercase(cdsItens.FieldByName('descricao').AsString);
  FormCadastroProdutoRapido.SQLTemplatePRODA30ADESCRREDUZ.AsString  := uppercase(cdsItens.FieldByName('descricao').AsString);
  FormCadastroProdutoRapido.SQLTemplatePRODN3CAPACEMBAL.asFloat     := cdsItensquantidade_emb.Value;
  FormCadastroProdutoRapido.SQLTemplatePRODN2PERCIPIENTRADA.AsFloat := cdsItensaliquota_ipi.Value;
  FormCadastroProdutoRapido.SQLTemplatePRODIORIGEM.AsString         := cdsItensorigem_produto.Value;
  FormCadastroProdutoRapido.SQLTemplatePRODISITTRIB.AsString        := cdsItenscst_icms.Value;
  FormCadastroProdutoRapido.vCompraEmbalagem                        := cdsItensvalor_unitario.Value;
  FormCadastroProdutoRapido.vDescEmbalagem                          := cdsItensvalor_desconto.AsFloat / cdsItensquantidade.AsFloat;
  FormCadastroProdutoRapido.SQLTemplatePRODN3VLRCOMPRA.AsFloat      := (cdsItensvalor_unitario.Value/cdsItensquantidade_emb.Value)-(FormCadastroProdutoRapido.vDescEmbalagem/cdsItensquantidade_emb.Value);

  //FormCadastroProdutoRapido.SQLTemplatePRODN2PERCSUBST.AsFloat      := cdsItensaliquota_icms_st.AsFloat;
  if (cdsItens.FieldByName('valor_icms_st').AsFloat > 0)and(cdsItens.FieldByName('quantidade').AsFloat > 0)  then
  begin
    FormCadastroProdutoRapido.SQLTemplatePRODN2PERCSUBST.AsFloat :=
     ((cdsItens.FieldByName('valor_icms_st').AsFloat / cdsItens.FieldByName('quantidade').AsFloat) / cdsItens.FieldByName('valor_unitario').AsFloat) * 100;
  end;

  if (cdsItens.FieldByName('valor_desconto').AsFloat > 0)and(cdsItens.FieldByName('quantidade').AsFloat > 0) then
  begin
    FormCadastroProdutoRapido.SQLTemplatePRODN2PERCDESP.AsFloat :=
    ((cdsItens.FieldByName('valor_desconto').AsFloat / cdsItens.FieldByName('quantidade').AsFloat) / cdsItens.FieldByName('valor_unitario').AsFloat) * 100;
  end;

  if (cdsItensvalor_icms_st.Value>0) and (cdsItenstotal_item.Value>0) then
    FormCadastroProdutoRapido.SQLTemplatePRODN2PERCSUBST.asFloat  := (cdsItensvalor_icms_st.Value/cdsItenstotal_item.Value) * 100
  else
    FormCadastroProdutoRapido.SQLTemplatePRODN2PERCSUBST.asFloat  := 0 ;

  FormCadastroProdutoRapido.SQLTemplateTABCEST.Value                := cdsItenscest.Value;

  {Procura NCM compativel em nossa tabela de NCMs}
  dm.SQLTemplate.Close;
  dm.SQLTemplate.sql.clear;
  dm.SQLTemplate.sql.Text := 'Select * From NCM Where NCMA30CODIGO = ''' + cdsItensncm.AsString +'''';
  dm.SQLTemplate.Open;
  if not dm.SQLTemplate.IsEmpty then
    begin
      {Carrega informações conforme o NCM}
      FormCadastroProdutoRapido.SQLTemplateNCMICOD.Value := dm.sqltemplate.fieldbyname('NCMICOD').AsInteger;
      CSTIcms  := dm.sqltemplate.fieldbyname('CSTICMS').AsString ;
      AliqIcms := dm.sqltemplate.fieldbyname('ALIQ_ICMS').AsString ;

      if DM.SQLEmpresa.fieldbyname('EMPRA3CRT').value <> '3' then
        begin {Lucro Presumido}
          if CSTIcms <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODISITTRIB.AsString := CSTIcms ;
          if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODA2CSTPIS.Value           := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
          if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODA3CSTPISENTRADA.Value    := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
          if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODA2CSTCOFINS.Value        := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
          if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODA3CSTCOFINSENTRADA.Value := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
          if dm.sqltemplate.fieldbyname('ALIQ_PIS_PRESUMIDO').Value > 0 then
            FormCadastroProdutoRapido.SQLTemplatePRODN2ALIQPIS.Value    := dm.sqltemplate.fieldbyname('ALIQ_PIS_PRESUMIDO').Value;
          if dm.sqltemplate.fieldbyname('ALIQ_COFINS_PRESUMIDO').Value > 0 then
            FormCadastroProdutoRapido.SQLTemplatePRODN2ALIQCOFINS.Value := dm.sqltemplate.fieldbyname('ALIQ_COFINS_PRESUMIDO').Value;
          {Filtra a tabela de Icms}
          if (AliqIcms <> '') and (CSTIcms <> '') then
            begin
              dm.SQLTemplate.Close;
              dm.SQLTemplate.sql.clear;
              dm.SQLTemplate.sql.Text := 'select * from ICMS where ICMSN2ALIQUOTA = ' + AliqIcms + ' and ICMSICODSITTRIB = ' + CSTIcms ;
              dm.SQLTemplate.Open;
              if not dm.SQLTemplate.IsEmpty then
                FormCadastroProdutoRapido.SQLTemplateICMSICOD.Value := dm.sqltemplate.fieldbyname('ICMSICOD').Value ;
            end;
        end
      else
        begin {Lucro Real}
          if CSTIcms <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODISITTRIB.AsString := CSTIcms ;
          if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODA2CSTPIS.Value           := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
          if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODA3CSTPISENTRADA.Value    := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
          if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODA2CSTCOFINS.Value        := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
          if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
            FormCadastroProdutoRapido.SQLTemplatePRODA3CSTCOFINSENTRADA.Value := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
          if dm.sqltemplate.fieldbyname('ALIQ_PIS_REAL').Value > 0 then
            FormCadastroProdutoRapido.SQLTemplatePRODN2ALIQPIS.Value          := dm.sqltemplate.fieldbyname('ALIQ_PIS_REAL').Value;
          if dm.sqltemplate.fieldbyname('ALIQ_COFINS_REAL').Value > 0 then
            FormCadastroProdutoRapido.SQLTemplatePRODN2ALIQCOFINS.Value       := dm.sqltemplate.fieldbyname('ALIQ_COFINS_REAL').Value;
          {Filtra a tabela de Icms}
          if (AliqIcms <> '') and (CSTIcms <> '') then
            begin
              dm.SQLTemplate.Close;
              dm.SQLTemplate.sql.clear;
              dm.SQLTemplate.sql.Text := 'select * from ICMS where ICMSN2ALIQUOTA = ' + AliqIcms + ' and ICMSICODSITTRIB = ' + CSTIcms ;
              dm.SQLTemplate.Open;
              if not dm.SQLTemplate.IsEmpty then
                FormCadastroProdutoRapido.SQLTemplateICMSICOD.Value := dm.sqltemplate.fieldbyname('ICMSICOD').Value ;
            end;
        end;
    end;

  FormCadastroProdutoRapido.ShowModal;
  cdsItens.Edit;
  cdsItensquantidade_emb.AsFloat := FormCadastroProdutoRapido.sqltemplatePRODN3CAPACEMBAL.Value;
  cdsItens.post;

  ExecutaValidacoes;
end;

procedure TFormTelaImportadorXML.btTransfImportadosClick(Sender: TObject);
begin
  inherited;
  MoveXMLPastaImportado;
end;

procedure TFormTelaImportadorXML.edtChaveProcuraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    btnSelecionarArquivo.click;
end;

procedure TFormTelaImportadorXML.BtnPedidosClick(Sender: TObject);
begin
  inherited;
  btnSelecionarArquivo.click;
end;

Function TFormTelaImportadorXML.GravaNota : Boolean;
begin
{  qry := TSQLQuery.Create(nil);
    try
      qry.SQLConnection := DM.SQLCON;
      qry.sql.Clear;
      qry.SQL.Add('INSERT INTO NOTACOMPRA (NOCPA13ID, EMPRICOD, NOCPICOD, FORNICOD, NOCPA4ANO, ');
      qry.SQL.Add('                    NOCPA5SERIE, NOCPA30NRO, NOCPCSTATUS, OPESICOD,');
      qry.SQL.Add('                    NOCPDEMISSAO, NOCPDRECEBIMENTO, ');
      qry.SQL.Add('                    NOCPN3SOMAITENS, NOCPN3TOTITENS, ');
      qry.SQL.Add('                    NOCPN3TOTDESC, NOCPN3VLRTOTNOTA, NOCPN3VLRBASCALICM,');
      qry.SQL.Add('                    NOCPN3VLRICMS, NOCPN3VLRBCICMSSUB, NOCPN3VLRICMSSUB,');
      qry.SQL.Add('                    NOCPN3VLRFRETE, NOCPN3VLRSEGURO, NOCPN3VLROUTRADESP,');
      qry.SQL.Add('                    NOCPN3VLRIPI, NOCPN3VLRDESC, NOCPN3PERCICMSFRET,');
      qry.SQL.Add('                    NOCPA254OBS, NOCPA5TIPOFRETE, PENDENTE, REGISTRO,');
      qry.SQL.Add('                    PLCTA15COD, USUAA60LOGIN, NOCPN3VLRISENTO, ');
      qry.SQL.Add('                    EMPRICODDESTCOMPRA, NOCPN3VLRCOFINS, NOCPN3VLRPIS, ');
      qry.SQL.Add('                    NOFIA44CHAVEACESSO) ');
      qry.SQL.Add('VALUES (:NOCPA13ID, :EMPRICOD, :NOCPICOD, :FORNICOD, :NOCPA4ANO, :NOCPA5SERIE, :NOCPA30NRO, ');
      qry.SQL.Add('        :NOCPCSTATUS, :OPESICOD, :NOCPDEMISSAO, :NOCPDRECEBIMENTO,');
      qry.SQL.Add('        :NOCPN3SOMAITENS, :NOCPN3TOTITENS, :NOCPN3TOTDESC,');
      qry.SQL.Add('        :NOCPN3VLRTOTNOTA, :NOCPN3VLRBASCALICM, :NOCPN3VLRICMS, :NOCPN3VLRBCICMSSUB, :NOCPN3VLRICMSSUB, ');
      qry.SQL.Add('        :NOCPN3VLRFRETE, :NOCPN3VLRSEGURO, :NOCPN3VLROUTRADESP, :NOCPN3VLRIPI, ');
      qry.SQL.Add('        :NOCPN3VLRDESC, :NOCPN3PERCICMSFRET, :NOCPA254OBS, :NOCPA5TIPOFRETE, ');
      qry.SQL.Add('        :PENDENTE, :REGISTRO, ');
      qry.SQL.Add('        :PLCTA15COD, :USUAA60LOGIN, :NOCPN3VLRISENTO, ');
      qry.SQL.Add('        :EMPRICODDESTCOMPRA, :NOCPN3VLRCOFINS, :NOCPN3VLRPIS,');
      qry.SQL.Add('        :NOFIA44CHAVEACESSO) ');

      iSequencialNf := getMaxOfTable('NOTACOMPRA', 'NOCPICOD');
      qry.ParamByName('NOCPA13ID').AsString   := RetornaCodigoCompra(iSequencialNf);
      qry.ParamByName('EMPRICOD').AsInteger   := EmpresaCorrente;
      qry.ParamByName('EMPRICODDESTCOMPRA').AsInteger := getIdEmpresaAtual(edtCNPJDestinatario.Text);
      qry.ParamByName('NOCPICOD').AsInteger   := iSequencialNf;
      qry.ParamByName('FORNICOD').AsInteger   := StrToInt(edtCodigoFornecedor.Text);
      qry.ParamByName('NOCPA4ANO').AsString   := FormatDateTime('YYYY',edtEmissaoVis.Date);
      qry.ParamByName('NOCPA5SERIE').AsString := edtSerieNota.Text;
      qry.ParamByName('NOCPA30NRO').AsString  := edtCodigoNFVis.Text;
      qry.ParamByName('NOCPCSTATUS').AsString := 'A';
      qry.ParamByName('OPESICOD').AsInteger   := dblkcbbOpEstoque.KeyValue;
      qry.ParamByName('NOCPDEMISSAO').asDate  := edtEmissaoVis.Date;

      if edtDataEntrada.Date > 0 then
        qry.ParamByName('NOCPDRECEBIMENTO').asDate := edtDataEntrada.Date
      else
        begin
          qry.ParamByName('NOCPDRECEBIMENTO').DataType := ftDate;
          qry.ParamByName('NOCPDRECEBIMENTO').Value    := null;
        end;

      qry.ParamByName('NOCPN3SOMAITENS').AsFloat    := edtValorProd.Value;
      qry.ParamByName('NOCPN3TOTITENS').AsFloat     := edtValorProd.Value;
      qry.ParamByName('NOCPN3TOTDESC').AsFloat      := edtDescontos.Value;
      qry.ParamByName('NOCPN3VLRTOTNOTA').AsFloat   := edtTotalNF.Value;
      qry.ParamByName('NOCPN3VLRBASCALICM').AsFloat := edtBIcms.Value;
      qry.ParamByName('NOCPN3VLRICMS').AsFloat      := edtValorIcms.Value;
      qry.ParamByName('NOCPN3VLRBCICMSSUB').AsFloat := edtBSt.Value;
      qry.ParamByName('NOCPN3VLRICMSSUB').AsFloat   := edtValorST.Value;

      if (edtValorFrete.Value) > 0 then
        qry.ParamByName('NOCPN3VLRFRETE').AsFloat := edtValorFrete.Value
      else
        qry.ParamByName('NOCPN3VLRFRETE').AsFloat := 0.00;

      qry.ParamByName('NOCPN3VLRSEGURO').AsFloat    := edtSeguro.Value;
      qry.ParamByName('NOCPN3VLROUTRADESP').AsFloat := edtValorOutras.Value;
      qry.ParamByName('NOCPN3VLRISENTO').AsFloat    := edtValorIsento.Value;
      qry.ParamByName('NOCPN3VLRIPI').AsFloat       := edtValorIpi.Value;
      qry.ParamByName('NOCPN3VLRDESC').AsFloat      := edtDescontos.Value;

      qry.ParamByName('NOCPA254OBS').AsString       := copy(mmoObs.Lines.Text,1,4000);
      qry.ParamByName('NOCPN3PERCICMSFRET').AsFloat := 0.00;

      // corrigir frete 1 = Fob, 0 = Cif
      if cbbTipoFrete.ItemIndex = 1 then
        qry.ParamByName('NOCPA5TIPOFRETE').AsString := 'F'
      else
        qry.ParamByName('NOCPA5TIPOFRETE').AsString := 'C';

      qry.ParamByName('PLCTA15COD').AsString         := TrimRight(dblkcbbContaDespesa.KeyValue);
      qry.ParamByName('NOFIA44CHAVEACESSO').AsString := edtChaveNfe.Text;

      qry.ParamByName('NOCPN3VLRCOFINS').AsFloat     := edtValorCofins.Value;
      qry.ParamByName('NOCPN3VLRPIS').AsFloat        := edtValorPis.Value;

      qry.ParamByName('USUAA60LOGIN').AsString       := UsuarioAtualNome;

      qry.ParamByName('PENDENTE').AsString   := 'S';
      qry.ParamByName('REGISTRO').AsString   := FormatDateTime('mm/dd/yyyy hh:nn:ss',Now);

      try
        qry.ExecSQL;
        dm.Commit;

        fGravar := true;
      except
        on e: Exception do
        begin
          messagedlg('Erro ao incluir Cabeçalho da Nota Fiscal. '+e.message,mtError,[mbOk],0);
          fGravar := false;
        end;
      end;
    finally
      qry.Free;
    end;
        }
end;

procedure TFormTelaImportadorXML.btConsultarXmlsSefazClick(
  Sender: TObject);
var
 CNPJ, Impresso, sChave, sEmissao, sCNPJ, sNome, sNumero, sSerie, sStat, sMotivo, sTemMais, sIEst, sNSU, sTipoNFe: String;
 Valor: Double;
 i, iLote: integer;
begin
  inherited;
  Inicia_NFe;

  sNSU := IntToStr(SQLMax('EMPRESA','NSUCONSULTA','EMPRICOD='+EmpresaPadrao));

  iLote := 0;
  repeat
    inc(iLote);
    ExibeInconsistencia(tiInformacao, 'Iniciando leitura e verificação do Lote Nr.'+intToStr(iLote), EmptyStr);
    ACBrNFe.DistribuicaoDFe( dm.SQLEmpresaEMPRIUFCODFED.Value,
                            dm.SQLEmpresaEMPRA14CGC.Value,
                              sNSU, '' );

    sStat   := IntToStr(ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.cStat);
    sMotivo := ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.xMotivo;

    {137=Nao achou notas para o cnpj}
    {138=Achou notas para o cnpj}
    if ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 137 then
      begin
        sTemMais := 'N';
        ExibeInconsistencia(tiErro, 'Nenhum Documento Localizado para o Lote Nr.'+intToStr(iLote), 'Verifique!');
      end
    else
      sTemMais := 'S';

    {Gravar na Empresa o ultimo nsu retornado pelo acbr para usar na prox consulta}
    dm.SQLUpdate.Close;
    dm.SQLUpdate.sql.text := 'update EMPRESA set NSUCONSULTA='+ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU+
                               ' where EMPRICOD='+EmpresaPadrao;
    dm.SQLUpdate.ExecSQL;

    {Achou notas para o cnpj nesse lote}
    if ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then
      begin
        ExibeInconsistencia(tiInformacao, sMotivo, EmptyStr);

        for i := 0 to ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count -1 do
          begin
            sSerie   := '';
            sNumero  := '';
            sCNPJ    := '';
            sNome    := '';
            sIEst    := '';
            sNSU     := '';
            sEmissao := '';
            sTipoNFe := '';
            Valor    := 0.0;
            Impresso := ' ';

            if ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.chNFe <> '' then
              begin
                // Conjunto de informações resumo da NF-e localizadas.
                // Este conjunto de informação será gerado quando a NF-e for autorizada ou denegada.
                sChave := ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.chNFe;
                sSerie  := Copy(sChave, 23, 3);
                sNumero := Copy(sChave, 26, 9);
                sCNPJ := ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.CNPJCPF;
                sNome := ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.xNome;
                sIEst := ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.IE;
                case ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.tpNF of
                  tnEntrada: sTipoNFe := 'E';
                  tnSaida:   sTipoNFe := 'S';
                end;
                sNSU       := ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].NSU;
                sEmissao   := DateToStr(ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.dhEmi);
                Valor      := ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.vNF;

                case ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.cSitNFe of
                  snAutorizado: Impresso := 'A';
                  snDenegado:   Impresso := 'D';
                  snCancelado:  Impresso := 'C';
                end;
              end;

            // Registra no Banco de Dados as Notas Retornadas pela Consulta
            SQLNFSEFAZ.Close;
            SQLNFSEFAZ.MacroByName('MFiltro').Value := 'CHAVE = ''' + sChave + '''';
            SQLNFSEFAZ.Open;
            if SQLNFSEFAZ.IsEmpty then
              begin
                SQLNFSEFAZ.append;
                SQLNFSEFAZCHAVE.Value          := sChave;
                SQLNFSEFAZSERIE.AsString       := sSerie;
                SQLNFSEFAZNUMERO.AsString      := sNumero;
                SQLNFSEFAZDTEMISSAO.Value      := StrToDate(sEmissao);
                SQLNFSEFAZDTEVENTO.Value       := now;
                SQLNFSEFAZEMIT_CNPJ.Value      := sCNPJ;
                SQLNFSEFAZEMIT_IE.Value        := sIEst;
                SQLNFSEFAZEMIT_RAZAO.Value     := sNome;
                SQLNFSEFAZENTRADA_SAIDA.Value  := sTipoNFe; {E=ENTRADA S=SAIDA}
                SQLNFSEFAZSIT_NFE.Value        := Impresso; {A=AUTORIZADO D=DENEGADO C=CANCELADO}
                SQLNFSEFAZVALORTOTAL.Value     := Valor;
                SQLNFSEFAZNSUCONSULTA.AsString := sNSU;
                SQLNFSEFAZ.Post;
              end;
          end; // Fim do For
      end;
  until
    (sTemMais = 'S');

  SQLNFSEFAZ.Close;
  SQLNFSEFAZ.MacroByName('MFiltro').Value := '0=0';
  SQLNFSEFAZ.Open;
end;

procedure TFormTelaImportadorXML.Inicia_NFe();
begin
  {$IFDEF ACBrNFeOpenSSL}
    ACBrNFe.Configuracoes.Certificados.Certificado  := dm.sqlEmpresaEMPRA100CERTIFSERIE.AsString;
    ACBrNFe.Configuracoes.Certificados.Senha        := dm.sqlEmpresaEMPRA35CERTIFSENHA.AsString;
  {$ELSE}
    ACBrNFe.Configuracoes.Certificados.NumeroSerie  := dm.SQLEmpresaEMPRA100CERTIFSERIE.AsString;
  {$ENDIF}
end;

procedure TFormTelaImportadorXML.SQLNFSEFAZCalcFields(DataSet: TDataSet);
begin
  inherited;
  if SQLNFSEFAZSIT_NFE.Value = 'A' then SQLNFSEFAZSituacaoNota.Value := 'Autorizado';
  if SQLNFSEFAZSIT_NFE.Value = 'D' then SQLNFSEFAZSituacaoNota.Value := 'Denegado';
  if SQLNFSEFAZSIT_NFE.Value = 'C' then SQLNFSEFAZSituacaoNota.Value := 'Cancelado';
end;

procedure TFormTelaImportadorXML.btnDownLoadXMLClick(Sender: TObject);
var
  vDados:TStringList;
begin
  inherited;
  Inicia_NFe;

  {ACBrNFe.Configuracoes.Arquivos.DownloadNFe.PathDownload := DirectoryEditNFERecebidas.Text;
  ACBrNFe.DownloadNFe.Download.CNPJ := dm.SQLEmpresaEMPRA14CGC.Value;
  ACBrNFe.DownloadNFe.Download.Chaves.Add.chNFe := SQLNFSEFAZCHAVE.Value;
  ACBrNFe.Download;}

  ACBrNFe.DistribuicaoDFePorChaveNFe( dm.SQLEmpresaEMPRIUFCODFED.Value, dm.SQLEmpresaEMPRA14CGC.Value, SQLNFSEFAZCHAVE.Value);

  if ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count > 0 then
  begin
    try
      vDados:= TStringList.Create;
      vDados.Text := ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].XML;
      vDados.SaveToFile(DirectoryEditNFERecebidas.Text+'\'+SQLNFSEFAZCHAVE.Value+'.xml');
      ShowMessage('Download do xml efetuado!');
    except
      application.ProcessMessages;
    end;
  end
  else
    ShowMessage('Xml não encontrado, verifique mais tarde!');
  //sStat   := IntToStr(ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.cStat);
  //sMotivo := ACBrNFe.WebServices.DistribuicaoDFe.retDistDFeInt.xMotivo;
end;

procedure TFormTelaImportadorXML.pCalculaCustoMedio;
var valorIpi, valorSubst, valorFrete, valorDespesa, valordifIcms, valorPIS, valorCofins, ValorEncargos, ValorDesconto : Extended;
begin
  valorIpi   := 0;
  valorSubst := 0;
  valorFrete := 0;
  valorDespesa := 0;
  valordifIcms := 0;
  valorPIS := 0;
  valorCofins := 0;
  ValorEncargos := 0;
  ValorDesconto := 0;
  try
    valorIpi     := (dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat * dm.SQLUpdate.ParamByName('NOCIN3PERCIPI').AsFloat)/100;
    if (dm.SQLUpdate.ParamByName('NOCIN3VLRSUBST').AsFloat > 0) and (dm.SQLUpdate.ParamByName('NOCIN2VBCST').AsFloat > 0) then
      valorSubst   := (dm.SQLUpdate.ParamByName('NOCIN3VLRSUBST').AsFloat / (dm.SQLUpdate.ParamByName('NOCIN3CAPEMBAL').asFloat * dm.SQLUpdate.ParamByName('NOCIN3QTDEMBAL').AsFloat));
    valorFrete   := (dm.SQLUpdate.ParamByName('NOCIN3VLRFRETE').AsFloat / dm.SQLUpdate.ParamByName('NOCIN3QTDEMBAL').AsFloat);
    ValorDesconto := (dm.SQLUpdate.ParamByName('NOCIN3VLRDESC').AsFloat / (dm.SQLUpdate.ParamByName('NOCIN3CAPEMBAL').asFloat * dm.SQLUpdate.ParamByName('NOCIN3QTDEMBAL').AsFloat));
    valorDespesa := 0;
    valordifIcms := (dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat * dm.SQLUpdate.ParamByName('NOCIN2PERCDIFICM').AsFloat)/100;
    valorPIS     := (dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat * dm.SQLUpdate.ParamByName('NOCIN2PERCPIS').AsFloat)/100;
    valorCofins  := (dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat * dm.SQLUpdate.ParamByName('NOCIN2PERCCOFINS').AsFloat)/100;
    ValorEncargos:= 0;
//  ValorEncargos:= (dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat * vEncargos)/100;
//  valorSubst   := (dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat * ((dm.SQLUpdate.ParamByName('NOCIN3VLRSUBST').AsFloat / dm.SQLUpdate.ParamByName('NOCIN2VBCST').AsFloat) * 100)) /100;
//  valorFrete   := (dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat * dm.SQLUpdate.ParamByName('NOCIN3PERCFRETE').AsFloat)/100;
//  valorDespesa := (dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat * dm.SQLUpdate.ParamByName('NOCIN2PERCDESP').AsFloat)/100;

    dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat := dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat +
                                                             valorIpi + valorSubst  + valorFrete + valorDespesa + valordifIcms +
                                                             ValorEncargos - ValorDesconto;
  except
    dm.SQLUpdate.ParamByName('NOCIN3VLRCUSTOMED').AsFloat := 0;
  end;
end;

procedure TFormTelaImportadorXML.btnInformaCienciaOperacaoClick(
  Sender: TObject);
begin
  EnviarEvento(teManifDestCiencia);
end;

procedure TFormTelaImportadorXML.SQLNFSEFAZAfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnInformaCienciaOperacao.Enabled := not SQLNFSEFAZ.IsEmpty;
  btnInformaConfirmaOperacao.Enabled := not SQLNFSEFAZ.IsEmpty;
  btnInformaDesconheceOperacao.Enabled := not SQLNFSEFAZ.IsEmpty;
  btnInformaOperacaoNaoRealizada.Enabled := not SQLNFSEFAZ.IsEmpty;
end;

procedure TFormTelaImportadorXML.EnviarEvento(pTipo: TpcnTpEvento);
var
  sCNPJ, lMsg, vSIT_EVENTO  : String;
begin
  ACBrNFe.NotasFiscais.Clear;
  Inicia_NFe;

  sCNPJ    := dm.SQLEmpresaEMPRA14CGC.Value;

  ACBrNFe.EventoNFe.Evento.Clear;
  with ACBrNFe.EventoNFe.Evento.Add do
  begin
      InfEvento.cOrgao       := 91;
      InfEvento.chNFe        := Trim(SQLNFSEFAZCHAVE.Value);
      InfEvento.CNPJ         := sCNPJ;
      InfEvento.dhEvento     := Now;
      InfEvento.tpEvento     := pTipo;
      InfEvento.versaoEvento := '1.00';
  end;

  if (pTipo = teManifDestCiencia) then
    vSIT_EVENTO := '1'
  else
  if (pTipo = teManifDestConfirmacao) then
    vSIT_EVENTO := '2'
  else
  if (pTipo = teManifDestDesconhecimento) then
    vSIT_EVENTO := '3'
  else
  if (pTipo = teManifDestOperNaoRealizada) then
    vSIT_EVENTO := '4';
  ACBrNFe.EnviarEvento(StrToInt(vSIT_EVENTO));

  if (ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 128)or
     (ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135) then
  begin
    SQLNFSEFAZ.Edit;
    SQLNFSEFAZSIT_EVENTO.Value := vSIT_EVENTO;
    SQLNFSEFAZ.Post;
  end
  else
  if ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 573 then
  begin
     ShowMessage('Duplicidade de Evento!');
     SQLNFSEFAZ.Edit;
     SQLNFSEFAZSIT_EVENTO.Value := vSIT_EVENTO;
     SQLNFSEFAZ.Post;
  end
  else
  if ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo <> '135' then
  begin
      with ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento do
      begin
          lMsg:=
          'Id: '+Id+#13+
          'tpAmb: '+TpAmbToStr(tpAmb)+#13+
          'verAplic: '+verAplic+#13+
          'cOrgao: '+IntToStr(cOrgao)+#13+
          'cStat: '+IntToStr(cStat)+#13+
          'xMotivo: '+xMotivo+#13+
          'chNFe: '+chNFe+#13+
          'tpEvento: '+TpEventoToStr(tpEvento)+#13+
          'xEvento: '+xEvento+#13+
          'nSeqEvento: '+IntToStr(nSeqEvento)+#13+
          'CNPJDest: '+CNPJDest+#13+
          'emailDest: '+emailDest+#13+
          'dhRegEvento: '+DateTimeToStr(dhRegEvento)+#13+
          'nProt: '+nProt;
      end;
      ShowMessage(lMsg);
  end;
end;

procedure TFormTelaImportadorXML.SQLNFSEFAZSIT_EVENTOGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = '1' then
    Text := 'Ciencia da Operação registrada'
  else
  if Sender.AsString = '2' then
    Text := 'Confirmação de Operação registrada'
  else
  if Sender.AsString = '3' then
    Text := 'Desconhecimento da Operação registrada'
  else
  if Sender.AsString = '4' then
    Text := 'Operação não Realizada registrada';
end;

procedure TFormTelaImportadorXML.btnInformaConfirmaOperacaoClick(
  Sender: TObject);
begin
  inherited;
  EnviarEvento(teManifDestConfirmacao);
end;

procedure TFormTelaImportadorXML.btnInformaDesconheceOperacaoClick(
  Sender: TObject);
begin
  inherited;
  EnviarEvento(teManifDestDesconhecimento);
end;

procedure TFormTelaImportadorXML.btnInformaOperacaoNaoRealizadaClick(
  Sender: TObject);
begin
  inherited;
  EnviarEvento(teManifDestOperNaoRealizada);
end;

procedure TFormTelaImportadorXML.DBGridManifestosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLNFSEFAZSIT_NFE.AsString = 'C' then
    DBGridManifestos.Canvas.Font.Color := clRed;
end;

procedure TFormTelaImportadorXML.btnPedidoClick(Sender: TObject);
begin
  inherited;
  cdsPedidoCompra.Edit;
  FieldLookUp := cdsPedidoCompra.FindField('PDCPA13ID');
  FieldOrigem := 'PDCPA13ID';
  CriaFormulario(TFormCadastroPedidoCompra,'FormCadastroPedidoCompra',False,True,False,'');
  cdsPedidoCompra.Post
end;


procedure TFormTelaImportadorXML.AtualizaCST_ICMSCadastroProduto(
  aCodigoProduto: Integer; aCST_ICMS: String);
begin
  SQLProdutoEditar.Close;
  SQLProdutoEditar.sql.clear;
  SQLProdutoEditar.sql.Text := 'Select PRODICOD, PRODISITTRIB from produto where prodicod='+inttostr(aCodigoProduto);
  SQLProdutoEditar.open;
  if not SQLProdutoEditar.IsEmpty then
    begin
      SQLProdutoEditar.edit;
      SQLProdutoEditar.FieldByName('PRODISITTRIB').AsInteger := StrToInt(aCST_ICMS);
      try
        SQLProdutoEditar.post;
      except
        SQLProdutoEditar.cancel;
        MessageDlg('Erro ao atualizar o cst_icms!', mtInformation, [mbOK], 0);
        ExibeInconsistencia(tiErro, 'CST_ICMS NAO atualizado', 'Produto: '+cdsItensdescricao.AsString);
      end
    end;
  SQLProdutoEditar.Close;
end;

end.

