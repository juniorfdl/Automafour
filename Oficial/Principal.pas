unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrincipalTemplate, Menus, ExtCtrls, jpeg, ComCtrls, ToolWin, VarSys, EWall, DB,
  ImgList, StdCtrls, DBTables, AdvGlowButton, XPMan, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, dxGDIPlusClasses, RXCtrls, FormResources;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    mmFinanceiro: TMenuItem;
    FATUMnSairdoSistema: TMenuItem;
    N3: TMenuItem;
    TimeLembrete: TTimer;
    SQLAgendaVer: TQuery;
    bClientes: TAdvGlowButton;
    bProdutos: TAdvGlowButton;
    bEmitirNFE: TAdvGlowButton;
    RxLabel5: TRxLabel;
    TimerImpressaoTablets: TTimer;
    ResumoFinanceiro1: TMenuItem;
    Pagar1: TMenuItem;
    MnFINPagarLancamentos: TMenuItem;
    MnFINPagarBaixarDocumentos: TMenuItem;
    Receber1: TMenuItem;
    MnFINReceberLancamentos: TMenuItem;
    MnFINReceberBaixarDocumentos: TMenuItem;
    MnCartoesCreditoManual: TMenuItem;
    MnFINReceberEmissaoBoletosDuplicatas: TMenuItem;
    ContaCorrent1: TMenuItem;
    LanamentodeMovimentao1: TMenuItem;
    RemessadeArquivo1: TMenuItem;
    esouraria1: TMenuItem;
    LanamentodeCaixa1: TMenuItem;
    EmissodeRecibo1: TMenuItem;
    Faturamento1: TMenuItem;
    PedidodeVenda1: TMenuItem;
    FATUMnVendasNotasFiscais: TMenuItem;
    Servio1: TMenuItem;
    OrdemdeServioMecanica1: TMenuItem;
    GrupodeServio1: TMenuItem;
    ipodeServio1: TMenuItem;
    Integrador1: TMenuItem;
    Exportao1: TMenuItem;
    Balanas1: TMenuItem;
    erminaldeConsulta1: TMenuItem;
    Contabil1: TMenuItem;
    SPEDFiscal1: TMenuItem;
    Cadastros1: TMenuItem;
    MnADMCadastroProduto: TMenuItem;
    MnADMCadastroClientesCadastro: TMenuItem;
    MnFornecedores: TMenuItem;
    MnVendedores: TMenuItem;
    MnTransportadoras: TMenuItem;
    MNRepresentante: TMenuItem;
    MNADMConvenios: TMenuItem;
    Controle1: TMenuItem;
    Grupo1: TMenuItem;
    MnADMCadastroProdutosGrades: TMenuItem;
    Grade1: TMenuItem;
    MnADMCadastroProdutosCores: TMenuItem;
    MnColecao: TMenuItem;
    MnADMCadastroProdutosUnidades: TMenuItem;
    MnADMCadastroProdutosIcms: TMenuItem;
    MnADMCadastroProdutosIcmsUF: TMenuItem;
    MNADMCadastroNCM: TMenuItem;
    abeladeConversodeCSTdoICMS1: TMenuItem;
    abeladeConversodeCSTPISeCOFINS1: TMenuItem;
    Cidades1: TMenuItem;
    arefas1: TMenuItem;
    AcompanharTarefa1: TMenuItem;
    GerenciarTarefa1: TMenuItem;
    CadastrarTarefas1: TMenuItem;
    ConfigurarTempodeTarefa1: TMenuItem;
    Financeiro1: TMenuItem;
    MnFINCadastroTiposDocumentos: TMenuItem;
    FINAMnCadastroPortadores: TMenuItem;
    MnFINCadTipoLiquidacao: TMenuItem;
    MnFINCadHistoricoPadrao: TMenuItem;
    MnFINCadastroBancos: TMenuItem;
    MnFINBancosContaCorrente: TMenuItem;
    MnFINCadastroOperacoesBancarias: TMenuItem;
    MnFINCadastroSituacoesCheques: TMenuItem;
    MnFINCadastroProtocoloCheque: TMenuItem;
    MnOperacaoTesouraria: TMenuItem;
    MnFINCadastroPlanoContas: TMenuItem;
    Faturamento2: TMenuItem;
    mniMnOperacaoEstoque: TMenuItem;
    MnObsNotaFiscal: TMenuItem;
    FATUMnCadastroSerie: TMenuItem;
    Compras1: TMenuItem;
    MNPedidoCompra: TMenuItem;
    MnNotadeEntrada: TMenuItem;
    ImportaXMLDelphi: TMenuItem;
    MnADMListaPreco: TMenuItem;
    Estoque1: TMenuItem;
    MnADMEstoqueMovimentosDiversos: TMenuItem;
    MnADMEmissaoEtiquetas: TMenuItem;
    MnADMReajustePreco: TMenuItem;
    MnTrocasMercadoria: TMenuItem;
    MnADMEstTransfernciadeMercadoria: TMenuItem;
    Inventrio1: TMenuItem;
    MnADMInvGerarInventario: TMenuItem;
    MnADMInvRelDivergenciasInventario: TMenuItem;
    MnADMInvZerarSaldoEstoque: TMenuItem;
    ProdutosSemMovimento1: TMenuItem;
    Utilitrios1: TMenuItem;
    MnADMManutencaoProdutos: TMenuItem;
    MnADMUtilitariosManutenodeCupons: TMenuItem;
    Comisso1: TMenuItem;
    MnADMUtilitariosCalcularComissoes: TMenuItem;
    MnADMFINCadastroComissao: TMenuItem;
    mnQuitaoComisses: TMenuItem;
    PrVenda1: TMenuItem;
    MnADMUtilitariosApagarPreVendasImportadas: TMenuItem;
    ApagarOramento30Dias1: TMenuItem;
    Relatrios1: TMenuItem;
    Administrativo1: TMenuItem;
    Vendas1: TMenuItem;
    PorPerodo1: TMenuItem;
    PorPerodocomMargemdeVendedor1: TMenuItem;
    PorPerodocomMargemdeProduto1: TMenuItem;
    PorPeriododeEmpresa1: TMenuItem;
    ProdutosVendidos1: TMenuItem;
    PorPlano1: TMenuItem;
    PorGrade1: TMenuItem;
    PorGrupo1: TMenuItem;
    PorMarca1: TMenuItem;
    PorColeo1: TMenuItem;
    ComissoSinttico1: TMenuItem;
    ComissoDetalhado1: TMenuItem;
    PrVendaporPerodo1: TMenuItem;
    Compras2: TMenuItem;
    NotadeEntrada2: TMenuItem;
    ProdutosComprados1: TMenuItem;
    ComprasporGrupo1: TMenuItem;
    ComprasporMarca1: TMenuItem;
    ComprasporColeo1: TMenuItem;
    CompraxVendaporGrupo1: TMenuItem;
    ProdutossemPedidodeCompra1: TMenuItem;
    ProdutosAbaixodoMnimo1: TMenuItem;
    Caixa1: TMenuItem;
    ResumodeCaixa1: TMenuItem;
    MovimentaodeCaixa1: TMenuItem;
    otaisporNumerario1: TMenuItem;
    otalizadoresdeCaixa1: TMenuItem;
    BoletimdeCaixa1: TMenuItem;
    Produtos2: TMenuItem;
    ListagemdeProdutos1: TMenuItem;
    PorFornecedor1: TMenuItem;
    Cadastrados1: TMenuItem;
    EmPromoo1: TMenuItem;
    LotesdeProdutos1: TMenuItem;
    Estoque2: TMenuItem;
    MovimentaodeEstoque1: TMenuItem;
    PorGrade2: TMenuItem;
    PorGradedeProdutos1: TMenuItem;
    PorMarca2: TMenuItem;
    PorMarcaeGrupo1: TMenuItem;
    PorMarcaeReferncia1: TMenuItem;
    PosioDiariadeEstoque1: TMenuItem;
    ransferenciadeProdutos1: TMenuItem;
    SaldoporLote1: TMenuItem;
    PosioFsicaFinanceira1: TMenuItem;
    MovimentaoDiversas2: TMenuItem;
    Invetrio1: TMenuItem;
    RegistrodeInventario1: TMenuItem;
    PorestoqueporGrupodeProduto1: TMenuItem;
    ListagemPorGradedeProdutos1: TMenuItem;
    Gerenciais1: TMenuItem;
    CurvaABCdeVendaProdutos1: TMenuItem;
    CurvaABCdeEstoque1: TMenuItem;
    CurvaABCdeVendaClientes1: TMenuItem;
    ndicedeInadimplenciaPeriodo1: TMenuItem;
    ndicedeInadimplenciaUltimos6Anos1: TMenuItem;
    ResumodeOperaes1: TMenuItem;
    PontodeEquilbrio1: TMenuItem;
    ProdutossemMovimentao1: TMenuItem;
    Clientes2: TMenuItem;
    ListagemdeClientes1: TMenuItem;
    Bloqueados1: TMenuItem;
    PorCidades1: TMenuItem;
    LimitedeCompra1: TMenuItem;
    Fiscais1: TMenuItem;
    CuponsEmitidos1: TMenuItem;
    CuponsQuitados1: TMenuItem;
    ApuraodePisCofins1: TMenuItem;
    ApuraodeICMS1: TMenuItem;
    VendasporCFOP1: TMenuItem;
    VendasporTipo1: TMenuItem;
    VendasporAlquota1: TMenuItem;
    ContasRecebidas1: TMenuItem;
    Financeiro2: TMenuItem;
    ContasaPagar1: TMenuItem;
    Emitidas1: TMenuItem;
    Vencidas1: TMenuItem;
    Pagas1: TMenuItem;
    PagasporOrigem1: TMenuItem;
    PagasporTipodeLiquidao1: TMenuItem;
    APagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Emitidas2: TMenuItem;
    Recebidas1: TMenuItem;
    RecebidasporOrigem1: TMenuItem;
    RecebidasporTipodeLiquidao1: TMenuItem;
    RecebidasporEmpresa1: TMenuItem;
    Vencidas2: TMenuItem;
    AReceber1: TMenuItem;
    Cheque1: TMenuItem;
    Emitidos1: TMenuItem;
    Recebidos1: TMenuItem;
    ContaCorrenteMovimentao1: TMenuItem;
    Caixa2: TMenuItem;
    BoletimdeCaixa2: TMenuItem;
    MovimentaodeCaixa2: TMenuItem;
    esourariaSaldo1: TMenuItem;
    ClientesExtrato1: TMenuItem;
    Contabilidade1: TMenuItem;
    SaldoContasaReceber1: TMenuItem;
    SaldoContasaPagar1: TMenuItem;
    LivroCaixa1: TMenuItem;
    PlanodeContasReceitaxDespesas1: TMenuItem;
    FluxodeCaixaDiario1: TMenuItem;
    PosioFinanceira1: TMenuItem;
    Faturamento3: TMenuItem;
    Pedidos1: TMenuItem;
    Listagem1: TMenuItem;
    ListagemporItem1: TMenuItem;
    NotaFiscal2: TMenuItem;
    Emitidas3: TMenuItem;
    EmitidasporCFOP1: TMenuItem;
    EmitidasporClienteeICMS1: TMenuItem;
    ListagemdeItens1: TMenuItem;
    CobranadeFrete1: TMenuItem;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    procedure FATUMnCadastroClientesCadastroClick(Sender: TObject);
    procedure FATUMnCadastroClientesTipodeClienteClick(Sender: TObject);
    procedure FATUMnCadastroBancosClick(Sender: TObject);
    procedure FATUMnCadastroTiposDocumentosClick(Sender: TObject);
    procedure FATUMnCadastroPortadoresClick(Sender: TObject);
    procedure FATUMnUtilitariosControledeAcessoClick(Sender: TObject);
    procedure FATUMnVendasPedidosVendaClick(Sender: TObject);
    procedure FATUMnVendasNotasFiscaisClick(Sender: TObject);
    procedure FATUMnCadastroSerieClick(Sender: TObject);
    procedure FATUMnSairdoSistemaClick(Sender: TObject);
    procedure FATUMnRelatoriosPedidosListagemClick(Sender: TObject);
    procedure FATUMnRelatoriosPedidosListagemdeItensClick(Sender: TObject);
    procedure FATUMnRelatoriosNotasFiscaisEmitidasClick(Sender: TObject);
    procedure MnRelListagemdeItensClick(Sender: TObject);
    procedure MnGeracaodePedidosClick(Sender: TObject);
    procedure MnFATRelEmitidasporCFOPClick(Sender: TObject);
    procedure MnFATFreteConhecimentoClick(Sender: TObject);
    procedure MnFATRELListagemdeFretesClick(Sender: TObject);
    procedure MnFATFRETEImportacaodeNotasClick(Sender: TObject);
    procedure ConhecimentoSimples1Click(Sender: TObject);
    procedure MnFATCadastroAvalistasClick(Sender: TObject);
    procedure MnFATOSPesquisarOSClick(Sender: TObject);
    procedure FATUMnCadastroClientesMotivoBloqueioClick(Sender: TObject);
    procedure FATUMnCadastroClientesProfissoesClick(Sender: TObject);
    procedure MnFATCadastroProdutoCadastroClick(Sender: TObject);
    procedure MnFATCadastroProdutoICMSClick(Sender: TObject);
    procedure MnFATCadastroProdutoICMSporUFClick(Sender: TObject);
    procedure Tabela_FreteClick(Sender: TObject);
    procedure MnFATOrdemdeServicoClick(Sender: TObject);
    procedure MnFATContratoServicoClick(Sender: TObject);
    procedure MnFATVendConsultadeProdutosClick(Sender: TObject);
    procedure MnRotasClick(Sender: TObject);
    procedure MnMixdeCargaClick(Sender: TObject);
    procedure MnListagemAcompanhamentoEntregadorClick(Sender: TObject);
    procedure MnTransportadorasClick(Sender: TObject);
    procedure MnVeiculosClick(Sender: TObject);
    procedure MnGeracaoNotasClick(Sender: TObject);
    procedure MnCadastroVisitaClick(Sender: TObject);
    procedure MnCadastroRoteiroClick(Sender: TObject);
    procedure MnGeracaoRoteiroPalmClick(Sender: TObject);
    procedure Decretos1Click(Sender: TObject);
    procedure MnConfigurarLayoutNotasparaModoDOSClick(Sender: TObject);
    procedure MnCobrancaFreteClick(Sender: TObject);
    procedure MnOperacaoEstoqueClick(Sender: TObject);
    procedure MnPedidoVendaComGradeClick(Sender: TObject);
    procedure MnAgendaTelefonicaClick(Sender: TObject);
    procedure MnFornecedoresClick(Sender: TObject);
    procedure MNRepresentanteClick(Sender: TObject);
    procedure Mecanica1Click(Sender: TObject);
    procedure OrdensdeServiosMecnicas1Click(Sender: TObject);
    procedure GruposdeExecuodeServio1Click(Sender: TObject);
    procedure Mecnicos1Click(Sender: TObject);
    procedure ipodeServio1Click(Sender: TObject);
    procedure MnAcompanharTarefascriadaspeloUsuarioAtualClick(Sender: TObject);
    procedure MnGerenciarTarefasClick(Sender: TObject);
    procedure MnAdicionarTarefasClick(Sender: TObject);
    procedure MnConfigPopLembreteTarefaClick(Sender: TObject);
    procedure TimeLembreteTimer(Sender: TObject);
    procedure MnFATEmitidasporClienteeporIcmsClick(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure OrdensdeSer1Click(Sender: TObject);
    procedure abeladeConversodeCSTdoICMS1Click(Sender: TObject);
    procedure abeladeConversodeCSTPISeCOFINS1Click(Sender: TObject);
    procedure DigitaoConhecimentosdeFrete1Click(Sender: TObject);
    procedure abeladeConversodeCSTdeIPI1Click(Sender: TObject);
    procedure EmissodeConhecimentoEletrnicodeFrete1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnF4Click(Sender: TObject);
    procedure btnF11Click(Sender: TObject);
    procedure BTNnFEClick(Sender: TObject);
    procedure MnMixVendaClick(Sender: TObject);
    procedure MnVendedoresClick(Sender: TObject);
    procedure TimerImpressaoTabletsTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MnRelMovimentoCaixaFaturamentoClick(Sender: TObject);
    procedure MnFINPagarLancamentosClick(Sender: TObject);
    procedure MnADMCadastroProdutoClick(Sender: TObject);
    procedure MnADMCadastroClientesCadastroClick(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure MnADMCadastroProdutosGradesClick(Sender: TObject);
    procedure Grade1Click(Sender: TObject);
    procedure MnADMCadastroProdutosCoresClick(Sender: TObject);
    procedure MnColecaoClick(Sender: TObject);
    procedure MnADMCadastroProdutosUnidadesClick(Sender: TObject);
    procedure MnADMCadastroProdutosIcmsClick(Sender: TObject);
    procedure MnADMCadastroProdutosIcmsUFClick(Sender: TObject);
    procedure MNADMCadastroNCMClick(Sender: TObject);
    procedure MnFINCadastroTiposDocumentosClick(Sender: TObject);
    procedure FINAMnCadastroPortadoresClick(Sender: TObject);
    procedure MnFINCadTipoLiquidacaoClick(Sender: TObject);
    procedure MnFINCadHistoricoPadraoClick(Sender: TObject);
    procedure MnFINCadastroBancosClick(Sender: TObject);
    procedure MnFINBancosContaCorrenteClick(Sender: TObject);
    procedure MnFINCadastroOperacoesBancariasClick(Sender: TObject);
    procedure MnFINCadastroSituacoesChequesClick(Sender: TObject);
    procedure MnFINCadastroProtocoloChequeClick(Sender: TObject);
    procedure mniMnOperacaoEstoqueClick(Sender: TObject);
    procedure MnObsNotaFiscalClick(Sender: TObject);
    procedure ConveroCSTporPISCofins1Click(Sender: TObject);
    procedure MnFINCadastroPlanoContasClick(Sender: TObject);
    procedure MNADMConveniosClick(Sender: TObject);
    procedure MNPedidoCompraClick(Sender: TObject);
    procedure MnNotadeEntradaClick(Sender: TObject);
    procedure ImportaXMLDelphiClick(Sender: TObject);
    procedure MnADMListaPrecoClick(Sender: TObject);
    procedure MnADMEstoqueMovimentosDiversosClick(Sender: TObject);
    procedure MnADMEmissaoEtiquetasClick(Sender: TObject);
    procedure MnADMReajustePrecoClick(Sender: TObject);
    procedure MnTrocasMercadoriaClick(Sender: TObject);
    procedure MnADMEstTransfernciadeMercadoriaClick(Sender: TObject);
    procedure MnADMInvGerarInventarioClick(Sender: TObject);
    procedure MnADMInvRelDivergenciasInventarioClick(Sender: TObject);
    procedure MnADMInvZerarSaldoEstoqueClick(Sender: TObject);
    procedure ProdutosSemMovimento1Click(Sender: TObject);
    procedure MnADMManutencaoProdutosClick(Sender: TObject);
    procedure MnADMUtilitariosManutenodeCuponsClick(Sender: TObject);
    procedure MnADMUtilitariosCalcularComissoesClick(Sender: TObject);
    procedure MnADMFINCadastroComissaoClick(Sender: TObject);
    procedure mnQuitaoComissesClick(Sender: TObject);
    procedure MnADMUtilitariosApagarPreVendasImportadasClick(Sender: TObject);
    procedure ApagarOramento30Dias1Click(Sender: TObject);
    procedure MnFINPagarBaixarDocumentosClick(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure MnExportaparaBalancasClick(Sender: TObject);
    procedure MnADMRelVendasPorPeriodoClick(Sender: TObject);
    procedure MnADMRelVendasPorPerodocomApuraodeMargemClick(
      Sender: TObject);
    procedure MNADMRelApuraodeMargemporProdutoClick(Sender: TObject);
    procedure MnPorPeriodoporEmpresaConferenciaClick(Sender: TObject);
    procedure MnADMRelProdutosVendidosClick(Sender: TObject);
    procedure MnADMRelVendasPorPlanoClick(Sender: TObject);
    procedure PorGrade1Click(Sender: TObject);
    procedure MnADMRelVendasPorGrupoClick(Sender: TObject);
    procedure MnADMRelVendasPorMarcaClick(Sender: TObject);
    procedure MnVendasPorColecaoClick(Sender: TObject);
    procedure MnADMRelVenComSinteticoClick(Sender: TObject);
    procedure MnADMRelVenDetalhadoClick(Sender: TObject);
    procedure MNADMRelPrevendasClick(Sender: TObject);
    procedure MnADMNotasEntradasClick(Sender: TObject);
    procedure MnProdutosCompradosClick(Sender: TObject);
    procedure MnComprasporGrupoClick(Sender: TObject);
    procedure MnComprasporMarcaClick(Sender: TObject);
    procedure MnComprasporColecaoClick(Sender: TObject);
    procedure MNADMRelatoriosComprasVendasporGrupoClick(Sender: TObject);
    procedure MnProdutosPedidosCompraClick(Sender: TObject);
    procedure MnProdutosAbaixoMinimoClick(Sender: TObject);
    procedure ResumodeCaixa1Click(Sender: TObject);
    procedure MnADMRelCaixaMovimentacaoCaixaClick(Sender: TObject);
    procedure MnADMRelCaixaTotaisporNumerarioClick(Sender: TObject);
    procedure MnADMRelCaixaBoletimCaixaClick(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure bClientesClick(Sender: TObject);
    procedure bProdutosClick(Sender: TObject);
    procedure bEmitirNFEClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure MnADMUtilitariosEspeciaisRecalcularTotalizadoresdeCaixaClick(
      Sender: TObject);
    procedure MnADMRelProdutosListagemProdutoClick(Sender: TObject);
    procedure MnADMRelProdutosPorFornecedorClick(Sender: TObject);
    procedure MnADMRelProdProdutosCadastradosClick(Sender: TObject);
    procedure MnADMRelProdutosemPromocaoClick(Sender: TObject);
    procedure MnADMRelLotesPorProdutoClick(Sender: TObject);
    procedure MnADMRelMovimentacaodeEstoqueClick(Sender: TObject);
    procedure MnADMRelEstoqueporGradeClick(Sender: TObject);
    procedure MnADMRELEstoquePorGradePorProdutoClick(Sender: TObject);
    procedure MnADMRelEstoquePorMarcaClick(Sender: TObject);
    procedure MnADMRELEstoquePorMarcaPorGrupoClick(Sender: TObject);
    procedure MnADMRelEstoqueMarcaReferenciaClick(Sender: TObject);
    procedure MnADMRelPosicaodiariaClick(Sender: TObject);
    procedure MnADMRelEstTransfernciadeProdutosClick(Sender: TObject);
    procedure MnADMRelSaldoporLoteClick(Sender: TObject);
    procedure MnADMRelPosicaoFisicoFinanceiroEstoqueClick(Sender: TObject);
    procedure MnADMRelMovimentosDiversosporClienteClick(Sender: TObject);
    procedure MnADMRelRegistrodeInventarioClick(Sender: TObject);
    procedure MnADMRelInventarioEstoqueClick(Sender: TObject);
    procedure MnADMRelInvListagemParaInventrioPorGradePorProdutoClick(
      Sender: TObject);
    procedure MnADMRelCurvaABCVendasClick(Sender: TObject);
    procedure MnADMRelCurvaABCEstoqueClick(Sender: TObject);
    procedure MnCurvaABCVendasClientesClick(Sender: TObject);
    procedure MnIndiceInadimpleciaCredClick(Sender: TObject);
    procedure MnIndiceInadimpleciaAnualClick(Sender: TObject);
    procedure MnADMRelGeranciaisResumodeOperacaoClick(Sender: TObject);
    procedure MnADMRemPontodeEquilbrioClick(Sender: TObject);
    procedure MnProdutosSemMovtoClick(Sender: TObject);
    procedure MnADMRelClientesCadastradosClick(Sender: TObject);
    procedure MnADMRelClientesBloqueadosClick(Sender: TObject);
    procedure MnADMRelClientesporcidadeClick(Sender: TObject);
    procedure MnRelatorioLimitesCompraClienteClick(Sender: TObject);

    procedure MnFINReceberLancamentosClick(Sender: TObject);
    procedure MnFINReceberBaixarDocumentosClick(Sender: TObject);
    procedure MnCartoesCreditoManualClick(Sender: TObject);
    procedure MnFINReceberEmissaoBoletosDuplicatasClick(Sender: TObject);

    procedure MnADMRelCupomEmitidoClick(Sender: TObject);
    procedure MnADMRelCupomQuitadoClick(Sender: TObject);
    procedure MnADMRELApuracaodePisCofinsClick(Sender: TObject);
    procedure MnADMRELApuracaodeICMSClick(Sender: TObject);
    procedure MnADMRelFiscalNotasFiscaisCuponsEmitidosPorCFOPClick(
      Sender: TObject);
    procedure VendasporTipo1Click(Sender: TObject);
    procedure MnVendasporAliquotasparaContabilidadeClick(Sender: TObject);
    procedure MnContasRecebidasparaContabidadeClick(Sender: TObject);

  private
    procedure ApagarOrcamentos;
    procedure ApagarPreVendas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  DataModulo, UnSoundPlay, UnitLibrary, CadastroContasPagar,
  CadastroProdutos, CadastroCliente, CadastroGrupo, CadastroMarca, CadastroGrade,
  CadastroCor, CadastroColecao, CadastroUnidade, CadastroTesouraria,
  CadastroICMS, CadastroIcmsUf, CadastroNCM, CadastroTipoDocumento,
  CadastroPortador, CadastroTipoLiquidacao, CadastroHistoricoPadrao,
  CadastroBanco, CadastroContaCorrente, CadastroOperacaoBanco,
  CadastroSituacaoCheque, CadastroProtocoloChequeRecebido,
  CadastroOperacaoTesouraria, CadastroOperacoesEstoque, CadastroObsNotaFiscal,
  CadastroSerie, CadastroCSTConverte, CadastroCSTPisCofinsConverter,
  TelaPlanoContas, TelaLembreteTarefa2, TelaConsultaTarefa,
  TelaLembreteTarefa, CadastroFornecedor, CadastroVendedor,
  CadastroTransportadora, CadastroRepresentante, CadastroConvenio,
  CadastroCidade, CadastroPedidoCompra, CadastroNotaCompra,
  TelaImportadorXML, TelaListaPreco,           
  TelaCadastroTarefa, ConfigPopUp, CadastroPedidoVenda,
  CadastroMovimentosDiversosEstoque, TelaEmissaoEtiquetasCodigoBarras,
  TelaReajustePreco, CadastroTrocas, TelaTransferenciaGrade,
  TelaTransferenciaMercadoria, TelaContagemManual,
  RelatorioDivergenciaInventario, TelaZerarSaldoEstoque,
  TelaProdutosSemMovimento, TelaManutencaoProdutos,
  CadastroManutencaoCupom, TelaCalculoComissao, CadastroVendedorComissao,
  TelaQuitacaoComissoes, TelaBaixarDocumentosPagar, CadastroNotaFiscal,
  CadastroMecOrdem, CadastroMecExecutaEm, CadastroMecTipoServico,
  TelaExportacaoBalanca, RelatorioVendasPeriodo,
  RelatorioVendasPeriodoApuracaoMargem, RelatorioApuracaoMargemPorProduto,
  RelatorioCupomEmitidoPorEmpresa, RelatorioProdutosVendidos,
  RelatorioVendasPorPlano, RelatorioVendasPorGrade, RelatorioVendasGrupo,
  RelatorioVendasMarca, RelatorioVendasColecao, RelatorioComissao,
  RelatorioComissaoDetalhado, RelatorioNotasCompra,
  RelatorioProdutosComprados, RelatorioComprasGrupo, RelatorioComprasMarca,
  RelatorioComprasColecao, RelatorioVendasComprasPorGrupo,
  RelatorioProdutosPedidosCompra, RelatorioProdutosAbaixoMinimo,
  RelatorioResumoCaixa, RelatorioMovimentacaoCaixa,
  RelatorioTotalNumerarioCaixa, RelatorioBoletimCaixa,
  TelaRecalcularTotalizador, RelatorioListagemProduto,
  RelatorioProdutosPorFornecedor, RelatorioProdutoCadastrado,
  RelatorioProdutoEmPromocao, RelatorioLotePorProduto,
  RelatorioExtratoProdutos, RelatorioEstoquePorGrade,
  RelatorioEstoquePorGradePorProduto, RelatorioEstoquePorMarca,
  RelatorioEstoquePorMarcaPorGrupo, RelatorioEstoqueMarcaReferencia,
  RelatorioPosicaoDiariaEstoque, RelatorioTransferencia,
  RelatorioEstoquePorLote, RelatorioFisicoFinanceiroEstoque,
  RelatorioMovtoDiversos, RelatorioRegistroInventario,
  RelatorioInventarioEstoque,
  RelatorioListagemParaInventarioPorGradePorProduto, RelatorioCurvaABC,
  RelatorioCurvaABCEstoque, RelatorioCurvaABCCliente,
  RelatorioIndiceInadimplenciaCrediario, RelatorioInadimplenciaAnual,
  RelatorioResumoOperacaoDiaria, RelatorioPontoDeEquilibrio,
  RelatorioProdutosSemMovto, RelatorioClienteCadastrado,
  RelatorioClienteBloqueado, RelatorioClientesPorCidade,

  RelatorioClienteLimiteCreditoExcedido, CadastroContasReceber,
  TelaBaixarDocumentosReceber, CadastroCartaoCreditoManual,
  TelaImpressaoDuplicatas,
  RelatorioCupomEmitido,
  RelatorioCupomQuitado, RelatorioApuracaoPISCOFINS, RelatorioApuracaoICMS,
  RelatorioNotaFiscalEmitidaPorCFOP, RelatorioResumoVendasportipo,
  RelatorioResumoVendasporAliquota, RelatorioContasRecebidas;



{uses CadastroCliente, CadastroTemplate, CadastroTipoCliente, CadastroBanco,
  CadastroTipoDocumento, CadastroPortador, CadastroClasse, CadastroPedidoVenda,
  CadastroNotaFiscal, CadastroSerie, UnSoundPlay,
  UnitLibrary, DataModulo, TelaConsultaProduto, RelatorioNotaFiscalEmitida,
  RelatorioItensPedidoVenda, RelatorioPedidoVenda, RelatorioItensNotaFiscal,
  TelaGeracaoPedido, RelatorioNotaFiscalEmitidaPorCFOP, CadastroFrete,
  RelatorioListagemFrete, TelaConhecimento, CadastroFreteSimples, CadastroAvalista, CadastroProdutos,
  CadastroMotivoBloqueio, CadastroProfissao, CadastroIcmsUf, CadastroICMS,
  TelaConfiguracaoLayOutNF, CadastroTabelaFrete, CadastroContrato,
  CadastroRota, RelatorioMixCarga, TelaConfigPedidos,
  RelatorioPedidoVendaEntrega, CadastroTransportadora, CadastroVeiculo,
  TelaGeracaoNotaFiscal, CadastroVisita, TelaSaldoPorLote, CadastroRoteiro,
  TelaGeracaoRoteiroPalm, CadastroObsNotaFiscal, CadastroDecreto,
  RelatorioNotaFiscalItensCobrancaFrete, CadastroOperacoesEstoque,
  CadastroPedidoVendaComGrade, CadastroAgendaTelefonica, CadastroFornecedor,
  CadastroRepresentante, CadastroMecanicos, CadastroMecOrdem,
  CadastroMecExecutaEm, CadastroMecVeiculosdoCliente,
  CadastroMecTipoServico, TelaLembreteTarefa2, TelaLembreteTarefa,
  TelaCadastroTarefa, ConfigPopUp, RelatorioNotaFiscalEmitidaPorICMS,
  CadastroCidade, CadastroGraficaOrdem, CadastroCSTConverte,
  CadastroCSTPisCofinsConverter, CadastroConhecimento,
  CadastroCSTConverteIPI, CadastroFreteCTE, CadastroMixVenda,
  CadastroVendedor, RelatorioMovimentoCaixaFaturamento; }

{$R *.DFM}

procedure TFormPrincipal.FATUMnCadastroClientesCadastroClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);  }
end;

procedure TFormPrincipal.FATUMnCadastroClientesTipodeClienteClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoCliente,'FormCadastroTipoCliente',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.FATUMnCadastroBancosClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.FATUMnCadastroTiposDocumentosClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.FATUMnCadastroPortadoresClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.FATUMnUtilitariosControledeAcessoClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroClasse, 'FormCadastroClasse',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);  }
end;

procedure TFormPrincipal.FATUMnVendasPedidosVendaClick(Sender: TObject);
begin
  inherited;
  dm.VendedorAtualPedidos := 0;
  dm.RotaAtualPedidos     := 0;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPedidoVenda, 'FormCadastroPedidoVenda',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnVendasNotasFiscaisClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNotaFiscal, 'FormCadastroNotaFiscal',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);  }
end;

procedure TFormPrincipal.FATUMnCadastroSerieClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroSerie, 'FormCadastroSerie',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FATUMnSairdoSistemaClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
  Destroy;
end;

procedure TFormPrincipal.FATUMnRelatoriosPedidosListagemClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPedidoVenda, 'FormRelatorioPedidoVenda',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);  }
end;

procedure TFormPrincipal.FATUMnRelatoriosPedidosListagemdeItensClick(Sender: TObject);
begin
  inherited;
 { if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioItensPedidoVenda, 'FormRelatorioItensPedidoVenda',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.FATUMnRelatoriosNotasFiscaisEmitidasClick(Sender: TObject);
begin
  inherited;
 { if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalEmitida, 'FormRelatorioNotaFiscalEmitida',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);  }
end;

procedure TFormPrincipal.MnRelListagemdeItensClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioItensNotaFiscal, 'FormRelatorioItensNotaFiscal',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.MnGeracaodePedidosClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGeracaoPedido, 'FormTelaGeracaoPedido',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.MnFATRelEmitidasporCFOPClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalEmitidaPorCFOP, 'FormRelatorioNotaFiscalEmitidaPorCFOP',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.MnFATFreteConhecimentoClick(Sender: TObject);
begin
  inherited;
 { if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFrete, 'FormCadastroFrete',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.MnFATRELListagemdeFretesClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioListagemFrete, 'FormRelatorioListagemFrete',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.MnFATFRETEImportacaodeNotasClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConhecimento, 'FormTelaConhecimento',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.ConhecimentoSimples1Click(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFreteSimples, 'FormCadastroFreteSimples',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);   }
end;

procedure TFormPrincipal.MnFATCadastroAvalistasClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroAvalista, 'FormCadastroAvalista',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.MnFATOSPesquisarOSClick(Sender: TObject);
begin
  inherited;
 {{ if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaPesquisaOS, 'FormTelaPesquisaOS',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.FATUMnCadastroClientesMotivoBloqueioClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMotivoBloqueio, 'FormCadastroMotivoBloqueio',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.FATUMnCadastroClientesProfissoesClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProfissao, 'FormCadastroProfissao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.MnFATCadastroProdutoCadastroClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProduto, 'FormCadastroProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.MnFATCadastroProdutoICMSClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroICMS, 'FormCadastroICMS',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.MnFATCadastroProdutoICMSporUFClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroIcmsUF, 'FormCadastroIcmsUF',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.Tabela_FreteClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTabelaFrete,'FormCadastroTabelaFrete',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.MnFATOrdemdeServicoClick(Sender: TObject);
begin
  inherited;
 { if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOS, 'FormCadastroOS',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.MnFATContratoServicoClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContrato, 'FormCadastroContrato',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.MnFATVendConsultadeProdutosClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConsultaProduto, 'FormTelaConsultaProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.MnRotasClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRota, 'FormCadastroRota',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender); }
end;

procedure TFormPrincipal.MnMixdeCargaClick(Sender: TObject);
begin
  inherited;
  {if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMixCarga, 'FormRelatorioMixCarga',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);}
end;

procedure TFormPrincipal.MnListagemAcompanhamentoEntregadorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormRelatorioPedidoVendaEntrega, 'FormRelatorioPedidoVendaEntrega',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnTransportadorasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTransportadora, 'FormCadastroTransportadora',False,False,True,'') 
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnVeiculosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroVeiculo, 'FormCadastroVeiculo',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnGeracaoNotasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormTelaGeracaoNotasFiscais, 'FormTelaGeracaoNotasFiscais',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnCadastroVisitaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroVisita, 'FormCadastroVisita',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnCadastroRoteiroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroRoteiro, 'FormCadastroRoteiro',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnGeracaoRoteiroPalmClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormTelaGeracaoRoteiro, 'FormTelaGeracaoRoteiro',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;


procedure TFormPrincipal.Decretos1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroDecreto, 'FormCadastroDecreto',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnConfigurarLayoutNotasparaModoDOSClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormTelaConfiguracaoLayOutNF, 'FormTelaConfiguracaoLayOutNF',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnCobrancaFreteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormRelatorioNotaFiscalItensCobrancaFrete, 'FormRelatorioNotaFiscalItensCobrancaFrete',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnOperacaoEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroOperacoesEstoque, 'FormCadastroOperacoesEstoque',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnPedidoVendaComGradeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroPedidoVendaComGrade, 'FormCadastroPedidoVendaComGrade',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnAgendaTelefonicaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroAgendaTelefonica,'FormCadastroAgendaTelefonica',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFornecedoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MNRepresentanteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRepresentante,'FormCadastroRepresentante',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.Mecanica1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroMecOrdem,'FormCadastroMecOrdem',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.OrdensdeServiosMecnicas1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecOrdem,'FormCadastroMecOrdem',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.GruposdeExecuodeServio1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecExecutaEm,'FormCadastroMecExecutaEm',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.Mecnicos1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroMecanicos,'FormCadastroMecanicos',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.ipodeServio1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecTipoServico,'FormCadastroMecTipoServico',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnAcompanharTarefascriadaspeloUsuarioAtualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormTelaLembreteTarefa2,FormTelaLembreteTarefa2);
      FormTelaLembreteTarefa2.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnGerenciarTarefasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormTelaLembreteTarefa,FormTelaLembreteTarefa);
      FormTelaLembreteTarefa.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAdicionarTarefasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormTelaCadastroTarefa,FormTelaCadastroTarefa);
      FormTelaCadastroTarefa.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnConfigPopLembreteTarefaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    begin
      Application.CreateForm(TFormConfigPopUp,FormConfigPopUp);
      FormConfigPopUp.ShowModal;
    end
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.TimeLembreteTimer(Sender: TObject);
var
  AMANHA: string;
  Year1, Month1, Day1: Word;
begin
  inherited;
  if ExecSql('select CFGCCEXIBIRPOPTARE from CFGCALLCENTER').fieldbyname('CFGCCEXIBIRPOPTARE').AsString = 'S' then
  begin
    SQLAgendaVer.Close;
    SQLAgendaVer.SQL.Text := 'Select Count(*) From TAREFA Where  USUAICODDEST = ' + IntToStr(UsuarioCorrente) + ' and TARECSTATUS <> ''T''';
    SQLAgendaVer.Open;
    if (SQLAgendaVer.FieldByName('Count').AsInteger > 0) then
    begin
      if Application.FindComponent('FormTelaLembreteTarefa') = nil then
      begin
        Application.CreateForm(TFormTelaLembreteTarefa, FormTelaLembreteTarefa);
        FormTelaLembreteTarefa.Show;
      end;
    end;
  end;
end;

procedure TFormPrincipal.MnFATEmitidasporClienteeporIcmsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormRelatorioNotaEmitidaPorICMS,'FormRelatorioNotaEmitidaPorICMS',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.Cidades1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCidade,'FormCadastroCidade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.OrdensdeSer1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroGraficaOrdem, 'FormCadastroGraficaOrdem',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.abeladeConversodeCSTPISeCOFINS1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TCadastroCSTPisCofinsConverte, 'CadastroCSTPisCofinsConverte',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.DigitaoConhecimentosdeFrete1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TCadastroConhecimentos, 'CadastroConhecimentos',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.abeladeConversodeCSTdeIPI1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TCadastroCSTConverterIPI, 'CadastroCSTConverterIPI',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.EmissodeConhecimentoEletrnicodeFrete1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormCadastroFreteCTE, 'FormCadastroFreteCTE',False,False,True,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.btn1Click(Sender: TObject);
begin
  inherited;
  //CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,False,'');
end;

procedure TFormPrincipal.btnF4Click(Sender: TObject);
begin
  inherited;
  //CriaFormulario(TFormCadastroProduto, 'FormCadastroProduto',False,False,False,'');
end;

procedure TFormPrincipal.btnF11Click(Sender: TObject);
begin
  inherited;
  //CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,False,False,'')
end;

procedure TFormPrincipal.BTNnFEClick(Sender: TObject);
begin
  inherited;
  //CriaFormulario(TFormCadastroNotaFiscal, 'FormCadastroNotaFiscal',False,False,False,'');
end;

procedure TFormPrincipal.MnMixVendaClick(Sender: TObject);
begin
  inherited;
  //CriaFormulario(TFormCadastroMixVenda, 'FormCadastroMixVenda',False,False,True,'');
end;

procedure TFormPrincipal.MnVendedoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav', Sender); 
end;

procedure TFormPrincipal.TimerImpressaoTabletsTimer(Sender: TObject);
begin
  inherited;
  TimerImpressaoTablets.Enabled := False;
  {fitlra pedidos a serem impressos}
  dm.sqltemplate.Close;
  dm.sqltemplate.sql.Text := 'Select * from Prevenda where PRVDN2TOTITENS>0 and PRVDCIMPORT=''N'' and PDVCPRECONCLU=''S'' and PRVDCIMPRESSO<>''S'' and EMPRICOD=' + EmpresaPadrao + ' order by PRVDICOD asc';
  dm.sqltemplate.open;
  if not dm.sqltemplate.IsEmpty then
  begin
    while not dm.sqltemplate.eof do
    begin
      if FileExists('C:\Easy2Solutions\Gestao\ImpressaoViaParametro.EXE') then
      begin
        WinExec(Pchar('C:\Easy2Solutions\Gestao\ImpressaoViaParametro.EXE ' + dm.sqltemplate.FieldByName('termicod').AsString + ' ' + dm.sqltemplate.FieldByName('prvdicod').AsString), sw_Show);
      end;
      dm.sqltemplate.next;
    end;
  end;
  TimerImpressaoTablets.Enabled := True;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  if dm.SQLTerminalAtivo.FieldByName('USATABLET').Value = 'S' then
    TimerImpressaoTablets.Enabled := True
  else
    TimerImpressaoTablets.Enabled := False;
end;

procedure TFormPrincipal.MnRelMovimentoCaixaFaturamentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormRelatorioMovimentoCaixaFaturamento, 'RelatorioMovimentoCaixaFaturamento',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINPagarLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasPagar, 'FormCadastroContasPagar', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProduto, 'FormCadastroProduto', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMCadastroClientesCadastroClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.Grupo1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroGrupo, 'FormCadastroGrupo', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosGradesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMarca, 'FormCadastroMarca', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.Grade1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroGrade, 'FormCadastroGrade', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosCoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCor, 'FormCadastroCor', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnColecaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroColecao, 'FormCadastroColecao', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosUnidadesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroUnidade, 'FormCadastroUnidade', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;


procedure TFormPrincipal.MnADMCadastroProdutosIcmsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroICMS, 'FormCadastroICMS', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMCadastroProdutosIcmsUFClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroIcmsUf, 'FormCadastroIcmsUf', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MNADMCadastroNCMClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNCM, 'FormCadastroNCM', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);

end;

procedure TFormPrincipal.MnFINCadastroTiposDocumentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.FINAMnCadastroPortadoresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINCadTipoLiquidacaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoLiquidacao, 'FormCadastroTipoLiquidacao', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINCadHistoricoPadraoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINCadastroBancosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINBancosContaCorrenteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContaCorrente, 'FormCadastroContaCorrente', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINCadastroOperacoesBancariasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacaoBanco, 'FormCadastroOperacaoBanco', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINCadastroSituacoesChequesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroSituacaoCheque, 'FormCadastroSituacaoCheque', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINCadastroProtocoloChequeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProtocoloChequeRecebido, 'FormCadastroProtocoloChequeRecebido', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.mniMnOperacaoEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacoesEstoque, 'FormCadastroOperacoesEstoque',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnObsNotaFiscalClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroObsNotaFiscal, 'FormCadastroObsNotaFiscal',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.abeladeConversodeCSTdoICMS1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TCadastroCSTConverter, 'CadastroCSTConverter',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ConveroCSTporPISCofins1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TCadastroCSTPisCofinsConverte, 'CadastroCSTPisCofinsConverte',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCadastroPlanoContasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaPlanoContas, 'FormTelaPlanoContas',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMConveniosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroConvenio,'FormCadastroConvenio',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNPedidoCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPedidoCompra, 'FormCadastroPedidoCompra',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnNotadeEntradaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNotaCompra, 'FormCadastroNotaCompra',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ImportaXMLDelphiClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImportadorXML,'FormTelaImportadorXML',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMListaPrecoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaListaPreco, 'FormTelaListaPreco',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);  
end;

procedure TFormPrincipal.MnADMEstoqueMovimentosDiversosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMovimentosDiversosEstoque,'FormCadastroMovimentosDiversosEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);

end;

procedure TFormPrincipal.MnADMEmissaoEtiquetasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMReajustePrecoClick(Sender: TObject);
begin
  inherited;
  
  if SQLLocate('EMPRESA','EMPRICOD','EMPRCMATRIZFILIAL',EmpresaPadrao) <> 'M'  then
    begin
      Application.MessageBox('Você não pode reajustar preços em uma filial !','Informação',MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
      Exit;
    end
  else
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
      CriaFormulario(TFormTelaReajustePreco,'FormTelaReajustePreco',False,False,False,'')
    else
       SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnTrocasMercadoriaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTrocas,'FormCadastroTrocas',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMEstTransfernciadeMercadoriaClick(Sender: TObject);
begin
  inherited;
  
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaTransferencia, 'FormTelaTransferencia',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMInvGerarInventarioClick(Sender: TObject);
begin
  inherited; 
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaContagemManual,'FormTelaContagemManual',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMInvRelDivergenciasInventarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioDivergenciaInventario,'FormRelatorioDivergenciaInventario',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMInvZerarSaldoEstoqueClick(Sender: TObject);
begin
  inherited;
  
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaZeraSaldoEstoque,'FormTelaZeraSaldoEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ProdutosSemMovimento1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaProdutosSemMov,'FormTelaProdutosSemMov',False,False,False,'');
end;

procedure TFormPrincipal.MnADMManutencaoProdutosClick(Sender: TObject);
begin  
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaManutencaoProdutos,'FormTelaManutencaoProdutos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosManutenodeCuponsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroManutencaoCupom,'FormCadastroManutencaoCupom',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosCalcularComissoesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormTelaCalculoComissao, 'FormTelaCalculoComissao', False, False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMFINCadastroComissaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroVendedorComissao, 'FormCadastroVendedorComissao',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.mnQuitaoComissesClick(Sender: TObject);
begin
  inherited;
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaQuitacaoComissoes, 'FormTelaQuitacaoComissoes',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosApagarPreVendasImportadasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) = 0 then
    exit
  else
    if Pergunta('Nao','Deseja apagar as Prevendas com mais de quinze dias.') then
      ApagarPreVendas;
end;

procedure TFormPrincipal.ApagarPreVendas;
var
  Painel, DataLimite : string ;
begin
  {Painel := FormPrincipal.Caption ;

  DataLimite := FormatDateTime('mm/dd/yyyy',now-7) ;

  FormPrincipal.Caption := Application.Title + ' - Preparando para apagar Pré-Venda com mais de 7 dias...' ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from PREVENDA') ;
  DM.SQLTemplate.SQL.Add('where PDVDDHVENDA <= ''' + DataLimite + '''');
  DM.SQLTemplate.SQL.Add('order by PDVDDHVENDA');
  DM.SQLTemplate.Open ;

  Screen.Cursor := crHourglass ;
  while not DM.SQLTemplate.EOF do
  begin
    FormPrincipal.Caption := Application.Title + ' - Apagando Pré-Venda Item ' +
                             DM.SQLTemplate.FieldByName('TERMICOD').AsString + '.' +
                             DM.SQLTemplate.FieldByName('PRVDICOD').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PREVENDAITEM') ;
    DM.SQLLimparPreVenda.SQL.Add('where TERMICOD = ' + DM.SQLTemplate.FieldByName('TERMICOD').AsString) ;
    DM.SQLLimparPreVenda.SQL.Add('and   PRVDICOD = ' + DM.SQLTemplate.FieldByName('PRVDICOD').AsString) ;
    DM.SQLLimparPreVenda.ExecSQL ;

    FormPrincipal.Caption := Application.Title + ' - Apagando Pré-Venda Nuerário ' +
                             DM.SQLTemplate.FieldByName('TERMICOD').AsString + '.' +
                             DM.SQLTemplate.FieldByName('PRVDICOD').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PREVENDANUMERARIO') ;
    DM.SQLLimparPreVenda.SQL.Add('where TERMICOD = ' + DM.SQLTemplate.FieldByName('TERMICOD').AsString) ;
    DM.SQLLimparPreVenda.SQL.Add('and   PRVDICOD = ' + DM.SQLTemplate.FieldByName('PRVDICOD').AsString) ;
    DM.SQLLimparPreVenda.ExecSQL ;

    FormPrincipal.Caption := Application.Title + ' - Apagando Pré-Venda Contas Receber ' +
                             DM.SQLTemplate.FieldByName('TERMICOD').AsString + '.' +
                             DM.SQLTemplate.FieldByName('PRVDICOD').AsString ;

    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PREVENDACONTASRECEBER') ;
    DM.SQLLimparPreVenda.SQL.Add('where TERMICOD = ' + DM.SQLTemplate.FieldByName('TERMICOD').AsString) ;
    DM.SQLLimparPreVenda.SQL.Add('and   PRVDICOD = ' + DM.SQLTemplate.FieldByName('PRVDICOD').AsString) ;
    DM.SQLLimparPreVenda.ExecSQL ;

    FormPrincipal.Caption := Application.Title + ' - Apagando Pré-Venda ' +
                             DM.SQLTemplate.FieldByName('TERMICOD').AsString + '.' +
                             DM.SQLTemplate.FieldByName('PRVDICOD').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PREVENDA') ;
    DM.SQLLimparPreVenda.SQL.Add('where TERMICOD = ' + DM.SQLTemplate.FieldByName('TERMICOD').AsString);
    DM.SQLLimparPreVenda.SQL.Add('and   PRVDICOD = ' + DM.SQLTemplate.FieldByName('PRVDICOD').AsString);
    DM.SQLLimparPreVenda.ExecSQL ;

    DM.SQLTemplate.Next ;
  end ;
  Screen.Cursor := crDefault ;

  FormPrincipal.Caption := Painel ;
  Informa('Pré-Vendas apagadas com sucesso !') ;}
end;

procedure TFormPrincipal.ApagarOrcamentos;
var
  Painel, DataLimite : string ;
begin
  {Painel := FormPrincipal.Caption ;

  DataLimite := FormatDateTime('mm/dd/yyyy',now-30) ;

  FormPrincipal.Caption := Application.Title + ' - Preparando para apagar Orçamentos com mais de 30 dias...' ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from PEDIDOVENDA') ;
  DM.SQLTemplate.SQL.Add('where REGISTRO <= ''' + DataLimite + '''');
  DM.SQLTemplate.SQL.Add('order by REGISTRO');
  DM.SQLTemplate.Open ;

  Screen.Cursor := crHourglass ;
  while not DM.SQLTemplate.EOF do
  begin
    FormPrincipal.Caption := Application.Title + ' - Apagando Orçamento Item ' +
                             DM.SQLTemplate.FieldByName('PDVDA13ID').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PEDIDOVENDAITEM') ;
    DM.SQLLimparPreVenda.SQL.Add('where PDVDA13ID = ''' + DM.SQLTemplate.FieldByName('PDVDA13ID').AsString+'''') ;
    DM.SQLLimparPreVenda.ExecSQL ;


    FormPrincipal.Caption := Application.Title + ' - Apagando Orçamento Contas Receber ' +
                             DM.SQLTemplate.FieldByName('PDVDA13ID').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from CONTASRECEBER') ;
    DM.SQLLimparPreVenda.SQL.Add('where PDVDA13ID = ''' + DM.SQLTemplate.FieldByName('PDVDA13ID').AsString+'''') ;
    DM.SQLLimparPreVenda.ExecSQL ;

    FormPrincipal.Caption := Application.Title + ' - Apagando Orçamento ' +
                             DM.SQLTemplate.FieldByName('PDVDA13ID').AsString ;
    DM.SQLLimparPreVenda.Close ;
    DM.SQLLimparPreVenda.SQL.Clear ;
    DM.SQLLimparPreVenda.SQL.Add('delete from PEDIDOVENDA') ;
    DM.SQLLimparPreVenda.SQL.Add('where PDVDA13ID = ''' + DM.SQLTemplate.FieldByName('PDVDA13ID').AsString+'''') ;
    DM.SQLLimparPreVenda.ExecSQL ;

    DM.SQLTemplate.Next ;
  end ;
  Screen.Cursor := crDefault ;

  FormPrincipal.Caption := Painel ;
  Informa('Orçamentos apagados com sucesso!') ; }
end;

procedure TFormPrincipal.ApagarOramento30Dias1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) = 0 then
    exit
  else
    if Pergunta('Nao','Deseja apagar os Orçamentos com mais de trinta dias.') then
      ApagarOrcamentos;
end;

procedure TFormPrincipal.MnFINPagarBaixarDocumentosClick(Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO','USUAICOD','USUACBXCPAGFIN',INTTOSTR(UsuarioCorrente)) <> 'S' then
    Showmessage('Você não possui acesso a esta rotina! Entre em contato com o administrador do sistema!')
  else
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
      CriaFormulario(TFormTelaBaixarDocumentosPagar, 'FormTelaBaixarDocumentosPagar',False,False,False,'')
    else
      SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.NotaFiscal1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNotaFiscal, 'FormCadastroNotaFiscal',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnExportaparaBalancasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoBalanca,'FormTelaExportacaoBalanca',False,True,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorPeriodoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPeriodo, 'FormRelatorioVendasPeriodo', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorPerodocomApuraodeMargemClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPeriodoApuracaoMargem, 'FormRelatorioVendasPeriodoApuracaoMargem', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMRelApuraodeMargemporProdutoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioApuracaoMargemPorProduto,'FormRelatorioApuracaoMargemPorProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnPorPeriodoporEmpresaConferenciaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCupomEmitidoPorEmpresa, 'FormRelatorioCupomEmitidoPorEmpresa', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosVendidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosVendidos, 'FormRelatorioProdutosVendidos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorPlanoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPorPlano, 'FormRelatorioVendasPorPlano',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.PorGrade1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPorGrade,'FormRelatorioVendasPorGrade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorGrupoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasGrupo,'FormRelatorioVendasGrupo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasMarca,'FormRelatorioVendasMarca',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnVendasPorColecaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasColecao, 'FormRelatorioVendasColecao',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVenComSinteticoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormRelatorioComissao, 'FormRelatorioComissao',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelVenDetalhadoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormRelatorioComissaoDetalhado, 'FormRelatorioComissaoDetalhado',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMRelPrevendasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormRelatorioPrevendas,'FormRelatorioPrevendas',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMNotasEntradasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotasCompra,'FormRelatorioNotasCompra',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnProdutosCompradosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosComprados,'FormRelatorioProdutosComprados',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnComprasporGrupoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComprasGrupo,'FormRelatorioComprasGrupo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnComprasporMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComprasMarca,'FormRelatorioComprasMarca',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnComprasporColecaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComprasColecao,'FormRelatorioComprasColecao',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MNADMRelatoriosComprasVendasporGrupoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasComprasPorGrupo,'FormRelatorioVendasComprasPorGrupo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnProdutosPedidosCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosPedidosCompra,'FormRelatorioProdutosPedidosCompra',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnProdutosAbaixoMinimoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosAbaixoMinimo,'FormRelatorioProdutosAbaixoMinimo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ResumodeCaixa1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoCaixa, 'FormRelatorioResumoCaixa',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCaixaMovimentacaoCaixaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMovimentacaoCaixa, 'FormRelatorioMovimentacaoCaixa', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCaixaTotaisporNumerarioClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioTotalNumerarioCaixa,'FormRelatorioTotalNumerarioCaixa',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCaixaBoletimCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioBoletimCaixa, 'FormRelatorioBoletimCaixa',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.AdvGlowButton5Click(Sender: TObject);
begin
  inherited;

  MnADMEstoqueMovimentosDiversos.Click;

end;

procedure TFormPrincipal.bClientesClick(Sender: TObject);
begin
  inherited;
  MnADMCadastroClientesCadastro.Click;
end;

procedure TFormPrincipal.bProdutosClick(Sender: TObject);
begin
  inherited;

  MnADMCadastroProduto.Click;  

end;

procedure TFormPrincipal.bEmitirNFEClick(Sender: TObject);
begin
  inherited;
  FATUMnVendasNotasFiscais.Click;
end;

procedure TFormPrincipal.AdvGlowButton1Click(Sender: TObject);
begin
  inherited;
  MnFINPagarLancamentos.Click;
end;

procedure TFormPrincipal.AdvGlowButton2Click(Sender: TObject);
begin
  inherited;
  MnFornecedores.Click;
end;

procedure TFormPrincipal.AdvGlowButton3Click(Sender: TObject);
begin
  inherited;
  MNPedidoCompra.Click;
end;

procedure TFormPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  inherited;
  MNPedidoCompra.Click;
end;

procedure TFormPrincipal.MnADMUtilitariosEspeciaisRecalcularTotalizadoresdeCaixaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaRecalcularTotalizador, 'FormTelaRecalcularTotalizador',False,False,False, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosListagemProdutoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormRelatorioListagemProduto, 'FormRelatorioListagemProduto',False,False,True, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosPorFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosPorFornecedor,'FormRelatorioProdutosPorFornecedor',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelProdProdutosCadastradosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutoCadastrado, 'FormRelatorioProdutoCadastrado',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosemPromocaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutoEmPromocao, 'FormRelatorioProdutoEmPromocao',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelLotesPorProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioLotePorProduto,'FormRelatorioLotePorProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelMovimentacaodeEstoqueClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoProdutos,'FormRelatorioExtratoProdutos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelEstoqueporGradeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorGrade,'FormRelatorioEstoquePorGrade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRELEstoquePorGradePorProdutoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorGradePorProduto, 'FormRelatorioEstoquePorGradePorProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelEstoquePorMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorMarca,'FormRelatorioEstoquePorMarca',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRELEstoquePorMarcaPorGrupoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorMarcaPorGrupo, 'FormRelatorioEstoquePorMarcaPorGrupo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelEstoqueMarcaReferenciaClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoqueMarcaReferencia,'FormRelatorioEstoqueMarcaReferencia',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelPosicaodiariaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPosicaoDiariaEstoque,'FormRelatorioPosicaoDiariaEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelEstTransfernciadeProdutosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioTransferencia, 'FormRelatorioTransferencia',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelSaldoporLoteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorLote,'FormRelatorioEstoquePorLote',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelPosicaoFisicoFinanceiroEstoqueClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioFisicoFinanceiroEstoque,'FormRelatorioFisicoFinanceiroEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelMovimentosDiversosporClienteClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMotvoDiversos, 'FormRelatorioMotvoDiversos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelRegistrodeInventarioClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioRegistroInventario,'FormRelatorioRegistroInventario',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelInventarioEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioInventarioEstoque, 'FormRelatorioInventarioEstoque', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelInvListagemParaInventrioPorGradePorProdutoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioListagemParaInventarioPorGradePorProduto, 'FormRelatorioListagemParaInventarioPorGradePorProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCurvaABCVendasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCurvaABC,'FormRelatorioCurvaABC',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCurvaABCEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCurvaABCEstoque,'FormRelatorioCurvaABCEstoque',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender)
end;

procedure TFormPrincipal.MnCurvaABCVendasClientesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCurvaABCCliente,'FormRelatorioCurvaABCCliente',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnIndiceInadimpleciaCredClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioIndiceInadimplenciaCrediario, 'FormRelatorioIndiceInadimplenciaCrediario',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnIndiceInadimpleciaAnualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioInadimplenciaAnual, 'FormRelatorioInadimplenciaAnual',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelGeranciaisResumodeOperacaoClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoOperacaoDiaria, 'FormRelatorioResumoOperacaoDiaria',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRemPontodeEquilbrioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPontoDeEquilibrio, 'FormRelatorioPontoDeEquilibrio',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnProdutosSemMovtoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosSemMovto,'FormRelatorioProdutosSemMovto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelClientesCadastradosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteCadastrado, 'FormRelatorioClienteCadastrado', False, False, False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelClientesBloqueadosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteBloqueado,'FormRelatorioClienteBloqueado',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelClientesporcidadeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteporCidade,'FormRelatorioClienteporCidade',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnRelatorioLimitesCompraClienteClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteLimiteCreditoExcedido,'FormRelatorioClienteLimiteCreditoExcedido',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINReceberLancamentosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasReceber, 'FormCadastroContasReceber',False,False,False,'')
end;

procedure TFormPrincipal.MnADMRelCupomEmitidoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCupomEmitido, 'FormRelatorioCupomEmitido',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINReceberBaixarDocumentosClick(Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO','USUAICOD','USUACBXCRECFIN',INTTOSTR(UsuarioCorrente)) <> 'S' then
    Showmessage('Você não possui acesso a esta rotina! Entre em contato com o administrador do sistema!')
  else
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
      CriaFormulario(TFormTelaBaixarDocumentosReceber, 'FormTelaBaixarDocumentosReceber',False,False,False,'')
    else
      soundplay('acesso negado.wav',sender);
end;

procedure TFormPrincipal.MnCartoesCreditoManualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCartaoCreditoManual, 'FormCadastroCartaoCreditoManual',False,False,False,'')
    else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelCupomQuitadoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCupomQuitado, 'FormRelatorioCupomQuitado',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRELApuracaodePisCofinsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioApuracaoPisCofins,'FormRelatorioApuracaoPisCofins',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRELApuracaodeICMSClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioApuracaoICMS, 'FormRelatorioApuracaoICMS',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnADMRelFiscalNotasFiscaisCuponsEmitidosPorCFOPClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalEmitidaPorCFOP, 'FormRelatorioNotaFiscalEmitidaPorCFOP',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.VendasporTipo1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoVendasportipo,'FormRelatorioResumoVendasportipo',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnVendasporAliquotasparaContabilidadeClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoVendasporAliquota,'FormRelatorioResumoVendasporAliquota',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINReceberEmissaoBoletosDuplicatasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImpressaoDuplicata,'FormTelaImpressaoDuplicata',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnContasRecebidasparaContabidadeClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidas, 'FormRelatorioContasRecebidas',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

end.

