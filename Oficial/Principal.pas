unit Principal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PrincipalTemplate, Menus, ExtCtrls, jpeg, ComCtrls, ToolWin, VarSys, EWall, DB,
  ImgList, StdCtrls, DBTables, AdvGlowButton, XPMan, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, dxGDIPlusClasses, RXCtrls, FormResources, IniFiles,
  Buttons;

type
  TFormPrincipal = class(TFormPrincipalTemplate)
    mmFinanceiro: TMenuItem;
    TimeLembrete: TTimer;
    SQLAgendaVer: TQuery;
    btnFormCadastroCliente: TAdvGlowButton;
    btnFormCadastroProduto: TAdvGlowButton;
    btnFormCadastroNotaFiscal: TAdvGlowButton;
    RxLabel5: TRxLabel;
    TimerImpressaoTablets: TTimer;
    ResumoFinanceiro1: TMenuItem;
    Pagar1: TMenuItem;
    MnFormCadastroContasPagar: TMenuItem;
    MnFormTelaBaixarDocumentosPagar: TMenuItem;
    Receber1: TMenuItem;
    MnFormCadastroContasReceber: TMenuItem;
    MnFormTelaBaixarDocumentosReceber: TMenuItem;
    MnFormCadastroCartaoCreditoManual: TMenuItem;
    MnFormTelaImpressaoDuplicata: TMenuItem;
    ContaCorrent1: TMenuItem;
    MnFormCadastroMovimentoBanco: TMenuItem;
    MnFormCadastroRemessaBancos: TMenuItem;
    esouraria1: TMenuItem;
    MnFormCadastroTesouraria: TMenuItem;
    MnFormCadastroRecibo: TMenuItem;
    Faturamento1: TMenuItem;
    MnFormCadastroPedidoVenda: TMenuItem;
    MnFormCadastroNotaFiscal: TMenuItem;
    Servio1: TMenuItem;
    MnFormCadastroMecOrdem: TMenuItem;
    MnFormCadastroMecExecutaEm: TMenuItem;
    MnFormCadastroMecTipoServico: TMenuItem;
    Integrador1: TMenuItem;
    Exportao1: TMenuItem;
    MnFormTelaExportacaoBalanca: TMenuItem;
    erminaldeConsulta1: TMenuItem;
    Contabil1: TMenuItem;
    MnFormTelaExportacaoSped: TMenuItem;
    MnFormCadastroProduto: TMenuItem;
    MnADMCadastroProduto: TMenuItem;
    MnFormCadastroCliente: TMenuItem;
    MnFormCadastroFornecedor: TMenuItem;
    MnFormCadastroVendedor: TMenuItem;
    MnFormCadastroTransportadora: TMenuItem;
    MnFormCadastroRepresentante: TMenuItem;
    MnFormCadastroConvenio: TMenuItem;
    Controle1: TMenuItem;
    MnFormCadastroGrupo: TMenuItem;
    MnFormCadastroMarca: TMenuItem;
    MnFormCadastroGrade: TMenuItem;
    MnFormCadastroCor: TMenuItem;
    MnFormCadastroColecao: TMenuItem;
    MnFormCadastroUnidade: TMenuItem;
    MnFormCadastroICMS: TMenuItem;
    MnFormCadastroIcmsUf: TMenuItem;
    MnFormCadastroNCM: TMenuItem;
    MnCadastroCSTConverter: TMenuItem;
    MnCadastroCSTPisCofinsConverte: TMenuItem;
    MnFormCadastroCidade: TMenuItem;
    arefas1: TMenuItem;
    MnFormTelaLembreteTarefa2: TMenuItem;
    GerenciarTarefa1: TMenuItem;
    CadastrarTarefas1: TMenuItem;
    ConfigurarTempodeTarefa1: TMenuItem;
    Financeiro1: TMenuItem;
    MnFormCadastroTipoDocumento: TMenuItem;
    MnFormCadastroPortador: TMenuItem;
    MnFormCadastroTipoLiquidacao: TMenuItem;
    MnFormCadastroHistoricoPadrao: TMenuItem;
    mnFormCadastroBanco: TMenuItem;
    MnFormCadastroContaCorrente: TMenuItem;
    MnFormCadastroOperacaoBanco: TMenuItem;
    MnFormCadastroSituacaoCheque: TMenuItem;
    MnFormCadastroProtocoloChequeRecebido: TMenuItem;
    MnOperacaoTesouraria: TMenuItem;
    MnFormTelaPlanoContas: TMenuItem;
    Faturamento2: TMenuItem;
    MnFormCadastroOperacoesEstoque: TMenuItem;
    MnFormCadastroObsNotaFiscal: TMenuItem;
    MnFormCadastroSerie: TMenuItem;
    Compras1: TMenuItem;
    MnFormCadastroPedidoCompra: TMenuItem;
    MnFormCadastroNotaCompra: TMenuItem;
    MnFormTelaImportadorXML: TMenuItem;
    MnFormTelaListaPreco: TMenuItem;
    Estoque1: TMenuItem;
    MnFormCadastroMovimentosDiversosEstoque: TMenuItem;
    MnFormTelaEmissaoEtiquetasCodigoBarras: TMenuItem;
    MnFormTelaReajustePreco: TMenuItem;
    MnFormCadastroTrocas: TMenuItem;
    MnFormTelaTransferencia: TMenuItem;
    Inventrio1: TMenuItem;
    MnFormTelaContagemManual: TMenuItem;
    MnFormRelatorioDivergenciaInventario: TMenuItem;
    MnFormTelaZeraSaldoEstoque: TMenuItem;
    MnFormTelaProdutosSemMov: TMenuItem;
    Utilitrios1: TMenuItem;
    MnFormTelaManutencaoProdutos: TMenuItem;
    MnFormCadastroManutencaoCupom: TMenuItem;
    Comisso1: TMenuItem;
    MnFormTelaCalculoComissao: TMenuItem;
    MnFormCadastroVendedorComissao: TMenuItem;
    MnFormTelaQuitacaoComissoes: TMenuItem;
    PrVenda1: TMenuItem;
    MnADMUtilitariosApagarPreVendasImportadas: TMenuItem;
    ApagarOramento30Dias1: TMenuItem;
    Relatrios1: TMenuItem;
    Administrativo1: TMenuItem;
    Vendas1: TMenuItem;
    MnFormRelatorioVendasPeriodo: TMenuItem;
    MnFormRelatorioVendasPeriodoApuracaoMargem: TMenuItem;
    MnFormRelatorioApuracaoMargemPorProduto: TMenuItem;
    MnFormRelatorioCupomEmitidoPorEmpresa: TMenuItem;
    MnFormRelatorioProdutosVendidos: TMenuItem;
    MnFormRelatorioVendasPorPlano: TMenuItem;
    MnFormRelatorioVendasPorGrade: TMenuItem;
    MnFormRelatorioVendasGrupo: TMenuItem;
    MnFormRelatorioVendasMarca: TMenuItem;
    MnFormRelatorioVendasColecao: TMenuItem;
    MnFormRelatorioComissao: TMenuItem;
    MnFormRelatorioComissaoDetalhado: TMenuItem;
    PrVendaporPerodo1: TMenuItem;
    Compras2: TMenuItem;
    MnFormRelatorioNotasCompra: TMenuItem;
    MnFormRelatorioProdutosComprados: TMenuItem;
    MnFormRelatorioComprasGrupo: TMenuItem;
    MnFormRelatorioComprasMarca: TMenuItem;
    MnFormRelatorioComprasColecao: TMenuItem;
    MnFormRelatorioVendasComprasPorGrupo: TMenuItem;
    MnFormRelatorioProdutosPedidosCompra: TMenuItem;
    MnFormRelatorioProdutosAbaixoMinimo: TMenuItem;
    Caixa1: TMenuItem;
    MnFormRelatorioResumoCaixa: TMenuItem;
    MnFormRelatorioMovimentacaoCaixa: TMenuItem;
    MnFormRelatorioTotalNumerarioCaixa: TMenuItem;
    MnFormTelaRecalcularTotalizador: TMenuItem;
    MnFormRelatorioBoletimCaixa: TMenuItem;
    Produtos2: TMenuItem;
    MnFormRelatorioListagemProduto: TMenuItem;
    MnFormRelatorioProdutosPorFornecedor: TMenuItem;
    MnFormRelatorioProdutoCadastrado: TMenuItem;
    MnFormRelatorioProdutoEmPromocao: TMenuItem;
    MnFormRelatorioLotePorProduto: TMenuItem;
    Estoque2: TMenuItem;
    MnFormRelatorioExtratoProdutos: TMenuItem;
    MnFormRelatorioEstoquePorGrade: TMenuItem;
    MnFormRelatorioEstoquePorGradePorProduto: TMenuItem;
    MnFormRelatorioEstoquePorMarca: TMenuItem;
    MnFormRelatorioEstoquePorMarcaPorGrupo: TMenuItem;
    MnFormRelatorioEstoqueMarcaReferencia: TMenuItem;
    MnFormRelatorioPosicaoDiariaEstoque: TMenuItem;
    MnFormRelatorioTransferencia: TMenuItem;
    MnFormRelatorioEstoquePorLote: TMenuItem;
    MnFormRelatorioFisicoFinanceiroEstoque: TMenuItem;
    MnFormRelatorioMotvoDiversos: TMenuItem;
    Invetrio1: TMenuItem;
    MnFormRelatorioRegistroInventario: TMenuItem;
    MnFormRelatorioInventarioEstoque: TMenuItem;
    MnFormRelatorioListagemParaInventarioPorGradePorProduto: TMenuItem;
    Gerenciais1: TMenuItem;
    MnFormRelatorioCurvaABC: TMenuItem;
    MnFormRelatorioCurvaABCEstoque: TMenuItem;
    MnFormRelatorioCurvaABCCliente: TMenuItem;
    MnFormRelatorioIndiceInadimplenciaCrediario: TMenuItem;
    MnFormRelatorioInadimplenciaAnual: TMenuItem;
    MnFormRelatorioResumoOperacaoDiaria: TMenuItem;
    MnFormRelatorioPontoDeEquilibrio: TMenuItem;
    MnFormRelatorioProdutosSemMovto: TMenuItem;
    Clientes2: TMenuItem;
    MnFormRelatorioClienteCadastrado: TMenuItem;
    MnFormRelatorioClienteBloqueado: TMenuItem;
    MnFormRelatorioClienteporCidade: TMenuItem;
    MnFormRelatorioClienteLimiteCreditoExcedido: TMenuItem;
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
    btnFormCadastroContasPagar: TAdvGlowButton;
    btnMnFormCadastroFornecedor: TAdvGlowButton;
    btnFormCadastroPedidoCompra: TAdvGlowButton;
    btnFormCadastroContasReceber: TAdvGlowButton;
    btnFormCadastroMovimentosDiversosEstoque: TAdvGlowButton;
    btnFormTelaEmissaoEtiquetasCodigoBarras: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    btnFormTelaImportadorXML: TAdvGlowButton;
    Sobre1: TMenuItem;
    AdvGlowButton9: TAdvGlowButton;
    MnFormCadastroCupom: TMenuItem;
    Especiais1: TMenuItem;
    MnFormTelaAtualizaEstoquePDVs: TMenuItem;
    ConfernciadoFechamentodeCaixa1: TMenuItem;
    MnFormCadastroChequesRecebidos: TMenuItem;
    MnFormCadastroChequeEmitido: TMenuItem;
    MnFormTelaBaixarChequesRecebidos: TMenuItem;
    MnFormTelaBaixarChequeEmitido: TMenuItem;
    MnFormTelaGerarSaldoProduto: TMenuItem;
    Restaurante1: TMenuItem;
    MnFormCadastroMesa: TMenuItem;
    MnFormTelaConsultaSaldoPorEmpresa: TMenuItem;
    MnFormCadastroSabores: TMenuItem;
    MnFormCadastroTributacaoNFSE: TMenuItem;
    MnFormCadastroNotaServico: TMenuItem;
    MnFormCadastroServico: TMenuItem;
    MnFormRelatorioComissaoDetalhadoRepresentante: TMenuItem;
    MnFormTelaConsultaMovNumeroSerie: TMenuItem;
    MnFormCadastroTipoFornecedor: TMenuItem;
    procedure FATUMnCadastroClientesCadastroClick(Sender: TObject);
    procedure FATUMnCadastroClientesTipodeClienteClick(Sender: TObject);
    procedure FATUMnCadastroBancosClick(Sender: TObject);
    procedure FATUMnCadastroTiposDocumentosClick(Sender: TObject);
    procedure FATUMnCadastroPortadoresClick(Sender: TObject);
    procedure FATUMnUtilitariosControledeAcessoClick(Sender: TObject);
    procedure FATUMnVendasPedidosVendaClick(Sender: TObject);
    procedure MnFormCadastroNotaFiscalClick(Sender: TObject);
    procedure MnFormCadastroSerieClick(Sender: TObject);
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
    procedure MnFormCadastroTransportadoraClick(Sender: TObject);
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
    procedure MnFormCadastroFornecedorClick(Sender: TObject);
    procedure MnFormCadastroRepresentanteClick(Sender: TObject);
    procedure Mecanica1Click(Sender: TObject);
    procedure OrdensdeServiosMecnicas1Click(Sender: TObject);
    procedure GruposdeExecuodeServio1Click(Sender: TObject);
    procedure Mecnicos1Click(Sender: TObject);
    procedure MnFormCadastroMecTipoServicoClick(Sender: TObject);
    procedure MnAcompanharTarefascriadaspeloUsuarioAtualClick(Sender: TObject);
    procedure MnGerenciarTarefasClick(Sender: TObject);
    procedure MnAdicionarTarefasClick(Sender: TObject);
    procedure MnConfigPopLembreteTarefaClick(Sender: TObject);
    procedure TimeLembreteTimer(Sender: TObject);
    procedure MnFATEmitidasporClienteeporIcmsClick(Sender: TObject);
    procedure MnFormCadastroCidadeClick(Sender: TObject);
    procedure OrdensdeSer1Click(Sender: TObject);
    procedure MnCadastroCSTConverterClick(Sender: TObject);
    procedure abeladeConversodeCSTPISeCOFINS1Click(Sender: TObject);
    procedure DigitaoConhecimentosdeFrete1Click(Sender: TObject);
    procedure abeladeConversodeCSTdeIPI1Click(Sender: TObject);
    procedure EmissodeConhecimentoEletrnicodeFrete1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnF4Click(Sender: TObject);
    procedure btnF11Click(Sender: TObject);
    procedure BTNnFEClick(Sender: TObject);
    procedure MnMixVendaClick(Sender: TObject);
    procedure MnFormCadastroVendedorClick(Sender: TObject);
    procedure TimerImpressaoTabletsTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MnRelMovimentoCaixaFaturamentoClick(Sender: TObject);
    procedure MnFormCadastroContasPagarClick(Sender: TObject);
    procedure MnADMCadastroProdutoClick(Sender: TObject);
    procedure MnFormCadastroClienteClick(Sender: TObject);
    procedure MnFormCadastroGrupoClick(Sender: TObject);
    procedure MnFormCadastroMarcaClick(Sender: TObject);
    procedure MnFormCadastroGradeClick(Sender: TObject);
    procedure MnFormCadastroCorClick(Sender: TObject);
    procedure MnFormCadastroColecaoClick(Sender: TObject);
    procedure MnFormCadastroUnidadeClick(Sender: TObject);
    procedure MnFormCadastroICMSClick(Sender: TObject);
    procedure MnFormCadastroIcmsUfClick(Sender: TObject);
    procedure MnFormCadastroNCMClick(Sender: TObject);
    procedure MnFormCadastroTipoDocumentoClick(Sender: TObject);
    procedure MnFormCadastroPortadorClick(Sender: TObject);
    procedure MnFormCadastroTipoLiquidacaoClick(Sender: TObject);
    procedure MnFormCadastroHistoricoPadraoClick(Sender: TObject);
    procedure mnFormCadastroBancoClick(Sender: TObject);
    procedure MnFormCadastroContaCorrenteClick(Sender: TObject);
    procedure MnFormCadastroOperacaoBancoClick(Sender: TObject);
    procedure MnFormCadastroSituacaoChequeClick(Sender: TObject);
    procedure MnFormCadastroProtocoloChequeRecebidoClick(Sender: TObject);
    procedure MnFormCadastroOperacoesEstoqueClick(Sender: TObject);
    procedure MnFormCadastroObsNotaFiscalClick(Sender: TObject);
    procedure ConveroCSTporPISCofins1Click(Sender: TObject);
    procedure MnFormTelaPlanoContasClick(Sender: TObject);
    procedure MnFormCadastroConvenioClick(Sender: TObject);
    procedure MnFormCadastroPedidoCompraClick(Sender: TObject);
    procedure MnFormCadastroNotaCompraClick(Sender: TObject);
    procedure MnFormTelaImportadorXMLClick(Sender: TObject);
    procedure MnFormTelaListaPrecoClick(Sender: TObject);
    procedure MnFormCadastroMovimentosDiversosEstoqueClick(Sender: TObject);
    procedure MnFormTelaEmissaoEtiquetasCodigoBarrasClick(Sender: TObject);
    procedure MnFormTelaReajustePrecoClick(Sender: TObject);
    procedure MnFormCadastroTrocasClick(Sender: TObject);
    procedure MnFormTelaTransferenciaClick(Sender: TObject);
    procedure MnFormTelaContagemManualClick(Sender: TObject);
    procedure MnFormRelatorioDivergenciaInventarioClick(Sender: TObject);
    procedure MnFormTelaZeraSaldoEstoqueClick(Sender: TObject);
    procedure MnFormTelaProdutosSemMovClick(Sender: TObject);
    procedure MnFormTelaManutencaoProdutosClick(Sender: TObject);
    procedure MnFormCadastroManutencaoCupomClick(Sender: TObject);
    procedure MnFormTelaCalculoComissaoClick(Sender: TObject);
    procedure MnFormCadastroVendedorComissaoClick(Sender: TObject);
    procedure MnFormTelaQuitacaoComissoesClick(Sender: TObject);
    procedure MnADMUtilitariosApagarPreVendasImportadasClick(Sender: TObject);
    procedure ApagarOramento30Dias1Click(Sender: TObject);
    procedure MnFormTelaBaixarDocumentosPagarClick(Sender: TObject);
    procedure MnExportaparaBalancasClick(Sender: TObject);
    procedure MnADMRelVendasPorPeriodoClick(Sender: TObject);
    procedure MnADMRelVendasPorPerodocomApuraodeMargemClick(Sender: TObject);
    procedure MNADMRelApuraodeMargemporProdutoClick(Sender: TObject);
    procedure MnPorPeriodoporEmpresaConferenciaClick(Sender: TObject);
    procedure MnADMRelProdutosVendidosClick(Sender: TObject);
    procedure MnADMRelVendasPorPlanoClick(Sender: TObject);
    procedure MnFormRelatorioVendasPorGradeClick(Sender: TObject);
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
    procedure MnFormRelatorioResumoCaixaClick(Sender: TObject);
    procedure MnADMRelCaixaMovimentacaoCaixaClick(Sender: TObject);
    procedure MnADMRelCaixaTotaisporNumerarioClick(Sender: TObject);
    procedure MnADMRelCaixaBoletimCaixaClick(Sender: TObject);
    procedure btnFormCadastroMovimentosDiversosEstoqueClick(Sender: TObject);
    procedure btnFormCadastroClienteClick(Sender: TObject);
    procedure btnFormCadastroProdutoClick(Sender: TObject);
    procedure btnFormCadastroNotaFiscalClick(Sender: TObject);
    procedure btnFormCadastroContasPagarClick(Sender: TObject);
    procedure btnMnFormCadastroFornecedorClick(Sender: TObject);
    procedure btnFormCadastroPedidoCompraClick(Sender: TObject);
    procedure btnFormCadastroContasReceberClick(Sender: TObject);
    procedure MnADMUtilitariosEspeciaisRecalcularTotalizadoresdeCaixaClick(Sender: TObject);
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
    procedure MnADMRelInvListagemParaInventrioPorGradePorProdutoClick(Sender: TObject);
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
    procedure MnFormCadastroContasReceberClick(Sender: TObject);
    procedure MnFormTelaBaixarDocumentosReceberClick(Sender: TObject);
    procedure MnFormCadastroCartaoCreditoManualClick(Sender: TObject);
    procedure MnFormTelaImpressaoDuplicataClick(Sender: TObject);
    procedure MnADMRelCupomEmitidoClick(Sender: TObject);
    procedure MnADMRelCupomQuitadoClick(Sender: TObject);
    procedure MnADMRELApuracaodePisCofinsClick(Sender: TObject);
    procedure MnADMRELApuracaodeICMSClick(Sender: TObject);
    procedure MnADMRelFiscalNotasFiscaisCuponsEmitidosPorCFOPClick(Sender: TObject);
    procedure VendasporTipo1Click(Sender: TObject);
    procedure MnVendasporAliquotasparaContabilidadeClick(Sender: TObject);
    procedure MnContasRecebidasparaContabidadeClick(Sender: TObject);
    procedure MnFormCadastroMovimentoBancoClick(Sender: TObject);
    procedure MnFormCadastroRemessaBancosClick(Sender: TObject);
    procedure MnFormCadastroTesourariaClick(Sender: TObject);
    procedure MnFormCadastroReciboClick(Sender: TObject);
    procedure erminaldeConsulta1Click(Sender: TObject);
    procedure MnFormTelaExportacaoSpedClick(Sender: TObject);
    procedure MnFINRelPagarEmitidasClick(Sender: TObject);
    procedure MnFINRelContasPagarVencidasClick(Sender: TObject);
    procedure MnFINRelContasPagarPagasClick(Sender: TObject);
    procedure PagasPorOrigem1Click(Sender: TObject);
    procedure MnFINRELContasPagasPorTipodeLiquidcaoClick(Sender: TObject);
    procedure MnFINRelContasPagarAPagarClick(Sender: TObject);
    procedure MnFINRelReceberEmitidasClick(Sender: TObject);
    procedure MnFINRelReceberRecebidasClick(Sender: TObject);
    procedure MnFINRELRecebidasPorSetorClick(Sender: TObject);
    procedure MnFINRELRecebidasPorTipodeLiquidacaoClick(Sender: TObject);
    procedure MnFINRELRecebidasPorEmpresaOrigemRecebtoClick(Sender: TObject);
    procedure MnFINRelReceberVencidasClick(Sender: TObject);
    procedure MnFINRelReceberAReceberClick(Sender: TObject);
    procedure MnFINRelChequesEmitidosClick(Sender: TObject);
    procedure MnFINRelChequesRecebidosClick(Sender: TObject);
    procedure MNFINRelBancoExtratoBancarioClick(Sender: TObject);
    procedure MnFINRelCaixaBoletimdeCaixaClick(Sender: TObject);
    procedure MnFINRelCaixaMovimentacaodeCaixaClick(Sender: TObject);
    procedure MnFINRelTesourariaSaldoDiarioConsolidadoClick(Sender: TObject);
    procedure MnFINRelClientesExtratoClick(Sender: TObject);
    procedure MnFINRelContSaldodeContasReceberClick(Sender: TObject);
    procedure MnFINRelPagContSaldodeContasaPagarClick(Sender: TObject);
    procedure MnFINRelContAuxiliarParaLivroCaixaClick(Sender: TObject);
    procedure MnFINRelPlanodeContasClick(Sender: TObject);
    procedure MnFINRelFluxodeCaixaDiarioClick(Sender: TObject);
    procedure MnFINRelPosicaoFinanceiraConsolidadaClick(Sender: TObject);
    procedure btnFormTelaImportadorXMLClick(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure btnFormTelaEmissaoEtiquetasCodigoBarrasClick(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MnADMUtilitariosConsultadeCuponsClick(Sender: TObject);
    procedure MnAtualizaodeEstoquedasVendasdosPDVsClick(Sender: TObject);
    procedure ConfernciadoFechamentodeCaixa1Click(Sender: TObject);
    procedure MnFINChequesRecebidosLancamentosClick(Sender: TObject);
    procedure MnChqEmitidosLancamentosCheuqesEmitidosClick(
      Sender: TObject);
    procedure MnFINCheRecebidosBaixaChequesRecebidosClick(Sender: TObject);
    procedure FormPrincipalB1Click(Sender: TObject);
    procedure MnSaldoInicialProdutosClick(Sender: TObject);
    procedure MnCadastroMesasClick(Sender: TObject);
    procedure MnFormTelaConsultaSaldoPorEmpresaClick(Sender: TObject);
    procedure MnFormCadastroSaboresClick(Sender: TObject);
    procedure MnFormCadastroTributacaoNFSEClick(Sender: TObject);
    procedure MnFormCadastroNotaServicoClick(Sender: TObject);
    procedure MnFormCadastroServicoClick(Sender: TObject);
    procedure MnFormRelatorioComissaoDetalhadoRepresentanteClick(Sender: TObject);
    procedure MnFormTelaConsultaMovNumeroSerieClick(Sender: TObject);
    procedure MnFormCadastroTipoFornecedorClick(Sender: TObject);
    procedure ResumoFinanceiro1Click(Sender: TObject);
  private
    procedure ApagarOrcamentos;
    procedure ApagarPreVendas;
    procedure ConfigurarMenus;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  DataModulo, UnSoundPlay, UnitLibrary, CadastroContasPagar, CadastroProdutos,
  CadastroCliente, CadastroGrupo, CadastroMarca, CadastroGrade, CadastroCor,
  CadastroColecao, CadastroUnidade, CadastroTesouraria, CadastroICMS,
  CadastroIcmsUf, CadastroNCM, CadastroTipoDocumento, CadastroPortador,
  CadastroTipoLiquidacao, CadastroHistoricoPadrao, CadastroBanco,
  CadastroContaCorrente, CadastroOperacaoBanco, CadastroSituacaoCheque,
  CadastroProtocoloChequeRecebido, CadastroOperacaoTesouraria,
  CadastroOperacoesEstoque, CadastroObsNotaFiscal, CadastroSerie,
  CadastroCSTConverte, CadastroCSTPisCofinsConverter, TelaPlanoContas,
  TelaLembreteTarefa2, TelaConsultaTarefa, TelaLembreteTarefa,
  CadastroFornecedor, CadastroVendedor, CadastroTransportadora,
  CadastroRepresentante, CadastroConvenio, CadastroCidade, CadastroPedidoCompra,
  CadastroNotaCompra, TelaImportadorXML, TelaListaPreco, TelaCadastroTarefa,
  ConfigPopUp, CadastroPedidoVenda, CadastroMovimentosDiversosEstoque,
  TelaEmissaoEtiquetasCodigoBarras, TelaReajustePreco, CadastroTrocas,
  TelaTransferenciaGrade, TelaTransferenciaMercadoria, TelaContagemManual,
  RelatorioDivergenciaInventario, TelaZerarSaldoEstoque,
  TelaProdutosSemMovimento, TelaManutencaoProdutos, CadastroManutencaoCupom,
  TelaCalculoComissao, CadastroVendedorComissao, TelaQuitacaoComissoes,
  TelaBaixarDocumentosPagar, CadastroNotaFiscal, CadastroMecOrdem,
  CadastroMecExecutaEm, CadastroMecTipoServico, TelaExportacaoBalanca,
  RelatorioVendasPeriodo, RelatorioVendasPeriodoApuracaoMargem,
  RelatorioApuracaoMargemPorProduto, RelatorioCupomEmitidoPorEmpresa,
  RelatorioProdutosVendidos, RelatorioVendasPorPlano, RelatorioVendasPorGrade,
  RelatorioVendasGrupo, RelatorioVendasMarca, RelatorioVendasColecao,
  RelatorioComissao, RelatorioComissaoDetalhado, RelatorioNotasCompra,
  RelatorioProdutosComprados, RelatorioComprasGrupo, RelatorioComprasMarca,
  RelatorioComprasColecao, RelatorioVendasComprasPorGrupo,
  RelatorioProdutosPedidosCompra, RelatorioProdutosAbaixoMinimo,
  RelatorioResumoCaixa, RelatorioMovimentacaoCaixa, RelatorioTotalNumerarioCaixa,
  RelatorioBoletimCaixa, TelaRecalcularTotalizador, RelatorioListagemProduto,
  RelatorioProdutosPorFornecedor, RelatorioProdutoCadastrado,
  RelatorioProdutoEmPromocao, RelatorioLotePorProduto, RelatorioExtratoProdutos,
  RelatorioEstoquePorGrade, RelatorioEstoquePorGradePorProduto,
  RelatorioEstoquePorMarca, RelatorioEstoquePorMarcaPorGrupo,
  RelatorioEstoqueMarcaReferencia, RelatorioPosicaoDiariaEstoque,
  RelatorioTransferencia, RelatorioEstoquePorLote,
  RelatorioFisicoFinanceiroEstoque, RelatorioMovtoDiversos,
  RelatorioRegistroInventario, RelatorioInventarioEstoque,
  RelatorioListagemParaInventarioPorGradePorProduto, RelatorioCurvaABC,
  RelatorioCurvaABCEstoque, RelatorioCurvaABCCliente,
  RelatorioIndiceInadimplenciaCrediario, RelatorioInadimplenciaAnual,
  RelatorioResumoOperacaoDiaria, RelatorioPontoDeEquilibrio,
  RelatorioProdutosSemMovto, RelatorioClienteCadastrado,
  RelatorioClienteBloqueado, RelatorioClientesPorCidade,
  RelatorioClienteLimiteCreditoExcedido, CadastroContasReceber,
  TelaBaixarDocumentosReceber, CadastroCartaoCreditoManual,
  TelaImpressaoDuplicatas, RelatorioCupomEmitido, RelatorioCupomQuitado,
  RelatorioApuracaoPISCOFINS, RelatorioApuracaoICMS,
  RelatorioNotaFiscalEmitidaPorCFOP, RelatorioResumoVendasportipo,
  RelatorioResumoVendasporAliquota, RelatorioContasRecebidas,
  CadastroMovimentoBanco, CadastroRemessaBancos, CadastroRecibo,
  TelaExportacaoSPED, RelatorioContasPagarEMITIDAS, RelatorioContasPagarVencidas,
  RelatorioContasPagarPAGAS, RelatorioContasPagasPorOrigem,
  RelatorioContasPagasTipoLiquidacao, RelatorioContasPagarAPAGAR,
  RelatorioContasReceberEmitidas, RelatorioContasRecebidasPorSetor,
  RelatorioContasRecebidasTipoLiquidacao, RelatorioContasRecebidasPorEmpresa,
  RelatorioContasReceberVencidas, RelatorioContasaReceber,
  RelatorioChequeEmitido, RelatorioChequesRecebidos,
  RelatorioExtratoMovimentoBanco, RelatorioBoletimCaixaTesouraria,
  RelatorioMovimentacaoTesouraria, RelatorioSaldoDiarioTesouraria,
  RelatorioExtratoCliente, RelatorioSaldoContasaReceberContabil,
  RelatorioSaldoContasaPagarContabil, RelatorioAuxiliarParaLivroCaixa,
  RelatorioReceitasDespesasPlanoContas, RelatorioFluxoCaixa,
  RelatorioPosicaoFinanceiraConsolidada, RelatorioPedidoVenda,
  RelatorioItensPedidoVenda, RelatorioNotaFiscalEmitida,
  RelatorioNotaFiscalEmitidaPorICMS, RelatorioItensNotaFiscal,
  RelatorioNotaFiscalItensCobrancaFrete, uSobre, CadastroCupom,
  TelaAtualizaEstoquePDVs, RelatorioConferenciaFechamentoCaixa,
  CadastroChequesRecebidos, CadastroChequeEmitido,
  TelaBaixarChequesRecebidos, TelaBaixarChequesEmitidos,
  TelaGerarSaldoProduto, CadastroMesa, TelaConsultaSaldoPorEmpresa,
  CadastroSabores, CadastroTributacaoNFSE, CadastroNotaServico,
  CadastroServico, RelatorioComissaoRepresentanteDetalhado, TelaConsultaMovNumeroSerie, CadastroTipoFornecedor,
  TelaResumoFinanceiro;



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
  dm.RotaAtualPedidos := 0;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPedidoVenda, 'FormCadastroPedidoVenda', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroNotaFiscalClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNotaFiscal, 'FormCadastroNotaFiscal', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroSerieClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroSerie, 'FormCadastroSerie', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
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
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPedidoVenda, 'FormRelatorioPedidoVenda', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.FATUMnRelatoriosPedidosListagemdeItensClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioItensPedidoVenda, 'FormRelatorioItensPedidoVenda', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.FATUMnRelatoriosNotasFiscaisEmitidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalEmitida, 'FormRelatorioNotaFiscalEmitida', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnRelListagemdeItensClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioItensNotaFiscal, 'FormRelatorioItensNotaFiscal', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
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
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalEmitidaPorCFOP, 'FormRelatorioNotaFiscalEmitidaPorCFOP', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
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

procedure TFormPrincipal.MnFormCadastroTransportadoraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTransportadora, 'FormCadastroTransportadora', False, False, True, '')
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
    CriaFormulario(TFormRelatorioNotaFiscalItensCobrancaFrete, 'FormRelatorioNotaFiscalItensCobrancaFrete', False, False, True, '')
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

procedure TFormPrincipal.MnFormCadastroFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroFornecedor, 'FormCadastroFornecedor', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroRepresentanteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRepresentante, 'FormCadastroRepresentante', False, False, False, '')
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
    CriaFormulario(TFormCadastroMecOrdem, 'FormCadastroMecOrdem', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.GruposdeExecuodeServio1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecExecutaEm, 'FormCadastroMecExecutaEm', False, False, False, '') 
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

procedure TFormPrincipal.MnFormCadastroMecTipoServicoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMecTipoServico, 'FormCadastroMecTipoServico', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnAcompanharTarefascriadaspeloUsuarioAtualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  begin
    Application.CreateForm(TFormTelaLembreteTarefa2, FormTelaLembreteTarefa2);
    FormTelaLembreteTarefa2.ShowModal;
  end
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnGerenciarTarefasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  begin
    Application.CreateForm(TFormTelaLembreteTarefa, FormTelaLembreteTarefa);
    FormTelaLembreteTarefa.ShowModal;
  end
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnAdicionarTarefasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  begin
    Application.CreateForm(TFormTelaCadastroTarefa, FormTelaCadastroTarefa);
    FormTelaCadastroTarefa.ShowModal;
  end
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnConfigPopLembreteTarefaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
  begin
    Application.CreateForm(TFormConfigPopUp, FormConfigPopUp);
    FormConfigPopUp.ShowModal;
  end
  else
    SoundPlay('Acesso Negado.wav', Sender);
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
    CriaFormulario(TFormRelatorioNotaEmitidaPorICMS, 'FormRelatorioNotaEmitidaPorICMS', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroCidadeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCidade, 'FormCadastroCidade', False, False, False, '')
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

procedure TFormPrincipal.MnFormCadastroVendedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroVendedor, 'FormCadastroVendedor', False, False, False, '')
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

  ConfigurarMenus;
end;

procedure TFormPrincipal.MnRelMovimentoCaixaFaturamentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormRelatorioMovimentoCaixaFaturamento, 'RelatorioMovimentoCaixaFaturamento',False,False,False,'')

  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroContasPagarClick(Sender: TObject);
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

procedure TFormPrincipal.MnFormCadastroClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroGrupoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroGrupo, 'FormCadastroGrupo', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMarca, 'FormCadastroMarca', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroGradeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroGrade, 'FormCadastroGrade', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroCorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCor, 'FormCadastroCor', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroColecaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroColecao, 'FormCadastroColecao', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroUnidadeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroUnidade, 'FormCadastroUnidade', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroICMSClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroICMS, 'FormCadastroICMS', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroIcmsUfClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroIcmsUf, 'FormCadastroIcmsUf', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroNCMClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNCM, 'FormCadastroNCM', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);

end;

procedure TFormPrincipal.MnFormCadastroTipoDocumentoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroPortadorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroTipoLiquidacaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoLiquidacao, 'FormCadastroTipoLiquidacao', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroHistoricoPadraoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.mnFormCadastroBancoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroContaCorrenteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContaCorrente, 'FormCadastroContaCorrente', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroOperacaoBancoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacaoBanco, 'FormCadastroOperacaoBanco', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroSituacaoChequeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroSituacaoCheque, 'FormCadastroSituacaoCheque', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroProtocoloChequeRecebidoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroProtocoloChequeRecebido, 'FormCadastroProtocoloChequeRecebido', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroOperacoesEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroOperacoesEstoque, 'FormCadastroOperacoesEstoque', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroObsNotaFiscalClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroObsNotaFiscal, 'FormCadastroObsNotaFiscal', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnCadastroCSTConverterClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TCadastroCSTConverter, 'CadastroCSTConverter', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.ConveroCSTporPISCofins1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TCadastroCSTPisCofinsConverte, 'CadastroCSTPisCofinsConverte', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaPlanoContasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaPlanoContas, 'FormTelaPlanoContas', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroConvenioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroConvenio, 'FormCadastroConvenio', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroPedidoCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroPedidoCompra, 'FormCadastroPedidoCompra', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroNotaCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNotaCompra, 'FormCadastroNotaCompra', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaImportadorXMLClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImportadorXML, 'FormTelaImportadorXML', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaListaPrecoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaListaPreco, 'FormTelaListaPreco', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroMovimentosDiversosEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMovimentosDiversosEstoque, 'FormCadastroMovimentosDiversosEstoque', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);

end;

procedure TFormPrincipal.MnFormTelaEmissaoEtiquetasCodigoBarrasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras, 'FormTelaEmissaoEtiquetasCodigoBarras', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaReajustePrecoClick(Sender: TObject);
begin
  inherited;

  if SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRCMATRIZFILIAL', EmpresaPadrao) <> 'M' then
  begin
    Application.MessageBox('Você não pode reajustar preços em uma filial !', 'Informação', MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONINFORMATION);
    Exit;
  end
  else if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaReajustePreco, 'FormTelaReajustePreco', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroTrocasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTrocas, 'FormCadastroTrocas', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaTransferenciaClick(Sender: TObject);
begin
  inherited;

  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaTransferencia, 'FormTelaTransferencia', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaContagemManualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaContagemManual, 'FormTelaContagemManual', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormRelatorioDivergenciaInventarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioDivergenciaInventario, 'FormRelatorioDivergenciaInventario', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaZeraSaldoEstoqueClick(Sender: TObject);
begin
  inherited;

  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaZeraSaldoEstoque, 'FormTelaZeraSaldoEstoque', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaProdutosSemMovClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaProdutosSemMov, 'FormTelaProdutosSemMov', False, False, False, '');
end;

procedure TFormPrincipal.MnFormTelaManutencaoProdutosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaManutencaoProdutos, 'FormTelaManutencaoProdutos', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroManutencaoCupomClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroManutencaoCupom, 'FormCadastroManutencaoCupom', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaCalculoComissaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaCalculoComissao, 'FormTelaCalculoComissao', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroVendedorComissaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroVendedorComissao, 'FormCadastroVendedorComissao', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaQuitacaoComissoesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaQuitacaoComissoes, 'FormTelaQuitacaoComissoes', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMUtilitariosApagarPreVendasImportadasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) = 0 then
    exit
  else if Pergunta('Nao', 'Deseja apagar as Prevendas com mais de quinze dias.') then
    ApagarPreVendas;
end;

procedure TFormPrincipal.ApagarPreVendas;
var
  Painel, DataLimite: string;
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
  Painel, DataLimite: string;
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
  else if Pergunta('Nao', 'Deseja apagar os Orçamentos com mais de trinta dias.') then
    ApagarOrcamentos;
end;

procedure TFormPrincipal.MnFormTelaBaixarDocumentosPagarClick(Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO', 'USUAICOD', 'USUACBXCPAGFIN', INTTOSTR(UsuarioCorrente)) <> 'S' then
    Showmessage('Você não possui acesso a esta rotina! Entre em contato com o administrador do sistema!')
  else if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixarDocumentosPagar, 'FormTelaBaixarDocumentosPagar', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnExportaparaBalancasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoBalanca, 'FormTelaExportacaoBalanca', False, True, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorPeriodoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPeriodo, 'FormRelatorioVendasPeriodo', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorPerodocomApuraodeMargemClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPeriodoApuracaoMargem, 'FormRelatorioVendasPeriodoApuracaoMargem', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MNADMRelApuraodeMargemporProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioApuracaoMargemPorProduto, 'FormRelatorioApuracaoMargemPorProduto', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnPorPeriodoporEmpresaConferenciaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCupomEmitidoPorEmpresa, 'FormRelatorioCupomEmitidoPorEmpresa', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosVendidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosVendidos, 'FormRelatorioProdutosVendidos', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorPlanoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPorPlano, 'FormRelatorioVendasPorPlano', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormRelatorioVendasPorGradeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasPorGrade, 'FormRelatorioVendasPorGrade', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorGrupoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasGrupo, 'FormRelatorioVendasGrupo', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelVendasPorMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasMarca, 'FormRelatorioVendasMarca', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnVendasPorColecaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasColecao, 'FormRelatorioVendasColecao', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelVenComSinteticoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComissao, 'FormRelatorioComissao', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelVenDetalhadoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComissaoDetalhado, 'FormRelatorioComissaoDetalhado', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MNADMRelPrevendasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    //CriaFormulario(TFormRelatorioPrevendas,'FormRelatorioPrevendas',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMNotasEntradasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotasCompra, 'FormRelatorioNotasCompra', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnProdutosCompradosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosComprados, 'FormRelatorioProdutosComprados', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnComprasporGrupoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComprasGrupo, 'FormRelatorioComprasGrupo', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnComprasporMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComprasMarca, 'FormRelatorioComprasMarca', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnComprasporColecaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComprasColecao, 'FormRelatorioComprasColecao', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MNADMRelatoriosComprasVendasporGrupoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioVendasComprasPorGrupo, 'FormRelatorioVendasComprasPorGrupo', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnProdutosPedidosCompraClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosPedidosCompra, 'FormRelatorioProdutosPedidosCompra', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnProdutosAbaixoMinimoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosAbaixoMinimo, 'FormRelatorioProdutosAbaixoMinimo', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormRelatorioResumoCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoCaixa, 'FormRelatorioResumoCaixa', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelCaixaMovimentacaoCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMovimentacaoCaixa, 'FormRelatorioMovimentacaoCaixa', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelCaixaTotaisporNumerarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioTotalNumerarioCaixa, 'FormRelatorioTotalNumerarioCaixa', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelCaixaBoletimCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioBoletimCaixa, 'FormRelatorioBoletimCaixa', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.btnFormCadastroMovimentosDiversosEstoqueClick(Sender: TObject);
begin
  inherited;
  MnFormCadastroMovimentosDiversosEstoque.Click;
end;

procedure TFormPrincipal.btnFormCadastroClienteClick(Sender: TObject);
begin
  inherited;
  MnFormCadastroCliente.Click;   
end;

procedure TFormPrincipal.btnFormCadastroProdutoClick(Sender: TObject);
begin
  inherited;
  MnADMCadastroProduto.Click;
//  MnFormCadastroProduto.Click;
end;

procedure TFormPrincipal.btnFormCadastroNotaFiscalClick(Sender: TObject);
begin
  inherited;
  MnFormCadastroNotaFiscal.Click;
end;

procedure TFormPrincipal.btnFormCadastroContasPagarClick(Sender: TObject);
begin
  inherited;
  MnFormCadastroContasPagar.Click;
end;

procedure TFormPrincipal.btnMnFormCadastroFornecedorClick(Sender: TObject);
begin
  inherited;
  MnFormCadastroFornecedor.Click;
end;

procedure TFormPrincipal.btnFormCadastroPedidoCompraClick(Sender: TObject);
begin
  inherited;
  MnFormCadastroPedidoCompra.Click;
end;

procedure TFormPrincipal.btnFormCadastroContasReceberClick(Sender: TObject);
begin
  inherited;
  MnFormCadastroContasReceber.Click;
end;

procedure TFormPrincipal.MnADMUtilitariosEspeciaisRecalcularTotalizadoresdeCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaRecalcularTotalizador, 'FormTelaRecalcularTotalizador', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosListagemProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioListagemProduto, 'FormRelatorioListagemProduto', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosPorFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosPorFornecedor, 'FormRelatorioProdutosPorFornecedor', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelProdProdutosCadastradosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutoCadastrado, 'FormRelatorioProdutoCadastrado', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelProdutosemPromocaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutoEmPromocao, 'FormRelatorioProdutoEmPromocao', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelLotesPorProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioLotePorProduto, 'FormRelatorioLotePorProduto', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelMovimentacaodeEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoProdutos, 'FormRelatorioExtratoProdutos', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelEstoqueporGradeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorGrade, 'FormRelatorioEstoquePorGrade', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRELEstoquePorGradePorProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorGradePorProduto, 'FormRelatorioEstoquePorGradePorProduto', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelEstoquePorMarcaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorMarca, 'FormRelatorioEstoquePorMarca', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRELEstoquePorMarcaPorGrupoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorMarcaPorGrupo, 'FormRelatorioEstoquePorMarcaPorGrupo', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelEstoqueMarcaReferenciaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoqueMarcaReferencia, 'FormRelatorioEstoqueMarcaReferencia', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelPosicaodiariaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPosicaoDiariaEstoque, 'FormRelatorioPosicaoDiariaEstoque', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelEstTransfernciadeProdutosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioTransferencia, 'FormRelatorioTransferencia', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelSaldoporLoteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioEstoquePorLote, 'FormRelatorioEstoquePorLote', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelPosicaoFisicoFinanceiroEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioFisicoFinanceiroEstoque, 'FormRelatorioFisicoFinanceiroEstoque', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelMovimentosDiversosporClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMotvoDiversos, 'FormRelatorioMotvoDiversos', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelRegistrodeInventarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioRegistroInventario, 'FormRelatorioRegistroInventario', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelInventarioEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioInventarioEstoque, 'FormRelatorioInventarioEstoque', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelInvListagemParaInventrioPorGradePorProdutoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioListagemParaInventarioPorGradePorProduto, 'FormRelatorioListagemParaInventarioPorGradePorProduto', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelCurvaABCVendasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCurvaABC, 'FormRelatorioCurvaABC', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelCurvaABCEstoqueClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCurvaABCEstoque, 'FormRelatorioCurvaABCEstoque', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender)
end;

procedure TFormPrincipal.MnCurvaABCVendasClientesClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCurvaABCCliente, 'FormRelatorioCurvaABCCliente', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnIndiceInadimpleciaCredClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioIndiceInadimplenciaCrediario, 'FormRelatorioIndiceInadimplenciaCrediario', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnIndiceInadimpleciaAnualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioInadimplenciaAnual, 'FormRelatorioInadimplenciaAnual', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelGeranciaisResumodeOperacaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoOperacaoDiaria, 'FormRelatorioResumoOperacaoDiaria', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRemPontodeEquilbrioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioPontoDeEquilibrio, 'FormRelatorioPontoDeEquilibrio', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnProdutosSemMovtoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioProdutosSemMovto, 'FormRelatorioProdutosSemMovto', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelClientesCadastradosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteCadastrado, 'FormRelatorioClienteCadastrado', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelClientesBloqueadosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteBloqueado, 'FormRelatorioClienteBloqueado', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelClientesporcidadeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteporCidade, 'FormRelatorioClienteporCidade', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnRelatorioLimitesCompraClienteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioClienteLimiteCreditoExcedido, 'FormRelatorioClienteLimiteCreditoExcedido', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroContasReceberClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroContasReceber, 'FormCadastroContasReceber', False, False, False, '')
end;

procedure TFormPrincipal.MnADMRelCupomEmitidoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCupomEmitido, 'FormRelatorioCupomEmitido', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaBaixarDocumentosReceberClick(Sender: TObject);
begin
  inherited;
  if dm.SQLLocate('USUARIO', 'USUAICOD', 'USUACBXCRECFIN', INTTOSTR(UsuarioCorrente)) <> 'S' then
    Showmessage('Você não possui acesso a esta rotina! Entre em contato com o administrador do sistema!')
  else if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixarDocumentosReceber, 'FormTelaBaixarDocumentosReceber', False, False, False, '')
  else
    soundplay('acesso negado.wav', sender);
end;

procedure TFormPrincipal.MnFormCadastroCartaoCreditoManualClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroCartaoCreditoManual, 'FormCadastroCartaoCreditoManual', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelCupomQuitadoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioCupomQuitado, 'FormRelatorioCupomQuitado', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRELApuracaodePisCofinsClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioApuracaoPisCofins, 'FormRelatorioApuracaoPisCofins', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRELApuracaodeICMSClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioApuracaoICMS, 'FormRelatorioApuracaoICMS', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnADMRelFiscalNotasFiscaisCuponsEmitidosPorCFOPClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioNotaFiscalEmitidaPorCFOP, 'FormRelatorioNotaFiscalEmitidaPorCFOP', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.VendasporTipo1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoVendasportipo, 'FormRelatorioResumoVendasportipo', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnVendasporAliquotasparaContabilidadeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioResumoVendasporAliquota, 'FormRelatorioResumoVendasporAliquota', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaImpressaoDuplicataClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaImpressaoDuplicata, 'FormTelaImpressaoDuplicata', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnContasRecebidasparaContabidadeClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidas, 'FormRelatorioContasRecebidas', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroMovimentoBancoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMovimentoBanco, 'FormCadastroMovimentoBanco', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroRemessaBancosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRemessaBancos, 'FormCadastroRemessaBancos', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroTesourariaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTesouraria, 'FormCadastroTesouraria', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroReciboClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroRecibo, 'FormCadastroRecibo', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.erminaldeConsulta1Click(Sender: TObject);
var CaminhoNomeArquivo, Linha, PrecoStr : String;
    Arquivo : TextFile;
    Preco : Double;
begin
  inherited;
  if Pergunta('Nao','Deseja gerar na pasta ..\BuscaPreco o arquivo para o Pricetab.txt?') then
    begin
      CaminhoNomeArquivo := dm.PathAplicacao + '\BuscaPreco\Pricetab.txt';
      AssignFile(Arquivo,CaminhoNomeArquivo);
      Rewrite(Arquivo);
      Reset(Arquivo);
      Append(Arquivo);
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Select * from Produto Where PRODCSERVICO = "N" and PRODCATIVO = "S"');
      dm.SQLTemplate.Open;
      dm.SQLTemplate.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.SQLTemplate.Eof Do
        begin
          try
            if (((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
               ((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsString = ''))) and (dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0) then
               Preco := dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').Value
            else
               Preco := dm.SQLTemplate.fieldbyname('PRODN3VLRVENDA').Value;

            PrecoSTR := FormatFloat('##0.00', Preco);
            if dm.SQLTemplate.fieldbyname('PRODA60CODBAR').AsString <> '' then
              Linha := dm.SQLTemplate.fieldbyname('PRODA60CODBAR').AsString +'|'+
                       Copy(dm.SQLTemplate.fieldbyname('PRODA30ADESCRREDUZ').AsString,1,20) +'|'+
                       PrecoSTR +'|';
            Writeln(Arquivo,Linha);
          except
            ShowMessage('Cód.Produto com Erro = ' +dm.SQLTemplate.fieldbyname('PRODICOD').AsString +CHR(13)+
                        'Valor R$ '+ FloatToStr(Preco));
          end;
          dm.SQLTemplate.Next;
        end;

      // Loop no Cd.Barras Aux
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Select PRODUTOBARRAS.PRODICOD,PRODUTOBARRAS.PRBAA15BARRAS,PRODUTO.PRODICOD,PRODUTO.PRODA30ADESCRREDUZ, PRODUTO.PRODN3VLRVENDAPROM,PRODUTO.PRODN3VLRVENDA,PRODUTO.PRODDINIPROMO,PRODUTO.PRODDFIMPROMO');
      dm.SQLTemplate.sql.Add('From ProdutoBarras inner join Produto  on ProdutoBarras.PRODICOD = Produto.PRODICOD');
      dm.SQLTemplate.Open;
      dm.SQLTemplate.First;
      Linha := '';
      // Criar Proximas Linhas
      While not dm.SQLTemplate.Eof Do
        begin
          try
            if (((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsDateTime >= Now)) or
               ((dm.SQLTemplate.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.SQLTemplate.FieldByName('PRODDFIMPROMO').AsString = ''))) and (dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0) then
               Preco := dm.SQLTemplate.FieldByName('PRODN3VLRVENDAPROM').Value
            else
               Preco := dm.SQLTemplate.fieldbyname('PRODN3VLRVENDA').Value;

            PrecoSTR := FormatFloat('##0.00', Preco);
            if dm.SQLTemplate.fieldbyname('PRBAA15BARRAS').AsString <> '' then
              Linha := dm.SQLTemplate.fieldbyname('PRBAA15BARRAS').AsString +'|'+
                       Copy(dm.SQLTemplate.fieldbyname('PRODA30ADESCRREDUZ').AsString,1,20) +'|'+
                       PrecoSTR +'|';
            Writeln(Arquivo,Linha);
          except
            ShowMessage('Cód.Produto com Erro = ' +dm.SQLTemplate.fieldbyname('PRODICOD').AsString +CHR(13)+
                        'Valor R$ '+ FloatToStr(Preco));
          end;
          dm.SQLTemplate.Next;
        end;
      // Fechar Arquivo
      CloseFile(Arquivo);
      ShowMessage('Concluído com Sucesso!');
    end;
end;

procedure TFormPrincipal.MnFormTelaExportacaoSpedClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaExportacaoSped, 'FormTelaExportacaoSped', False, False, True, '');
end;

procedure TFormPrincipal.MnFINRelPagarEmitidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarEmitidas, 'FormRelatorioContasPagarEmitidas', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelContasPagarVencidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarVENCIDAS, 'FormRelatorioContasPagarVENCIDAS', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelContasPagarPagasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarPAGAS, 'FormRelatorioContasPagarPAGAS', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.PagasPorOrigem1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagasPorOrigem, 'FormRelatorioContasPagasPorOrigem', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRELContasPagasPorTipodeLiquidcaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagasTipoLiquidacao, 'FormRelatorioContasPagasTipoLiquidacao', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelContasPagarAPagarClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasPagarAPAGAR, 'FormRelatorioContasPagarAPAGAR', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelReceberEmitidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberEmitidas, 'FormRelatorioContasReceberEmitidas', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelReceberRecebidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidas, 'FormRelatorioContasRecebidas', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRELRecebidasPorSetorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidasPorSetor, 'FormRelatorioContasRecebidasPorSetor', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRELRecebidasPorTipodeLiquidacaoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidasTipoLiquidacao, 'FormRelatorioContasRecebidasTipoLiquidacao', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRELRecebidasPorEmpresaOrigemRecebtoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasRecebidasPorEmpresa, 'FormRelatorioContasRecebidasPorEmpresa', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelReceberVencidasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasReceberVencidas, 'FormRelatorioContasReceberVencidas', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelReceberAReceberClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioContasaReceber, 'FormRelatorioContasaReceber', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelChequesEmitidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioChequeEmitido, 'FormRelatorioChequeEmitido', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelChequesRecebidosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioChequeRecebidos, 'FormRelatorioChequeRecebidos', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MNFINRelBancoExtratoBancarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoMovimentoBanco, 'FormRelatorioExtratoMovimentoBanco', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelCaixaBoletimdeCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioBoletimCaixaTesouraria, 'FormRelatorioBoletimCaixaTesouraria', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelCaixaMovimentacaodeCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioMovimentacaoTesouraria, 'FormRelatorioMovimentacaoTesouraria', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelTesourariaSaldoDiarioConsolidadoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoDiarioTesouraria, 'FormRelatorioSaldoDiarioTesouraria', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelClientesExtratoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioExtratoCliente, 'FormRelatorioExtratoCliente', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelContSaldodeContasReceberClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoContasReceberContabil, 'FormRelatorioSaldoContasReceberContabil', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelPagContSaldodeContasaPagarClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoContasPagarContabil, 'FormRelatorioSaldoContasPagarContabil', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelContAuxiliarParaLivroCaixaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioAuxiliarLivroCaixa, 'FormRelatorioAuxiliarLivroCaixa', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelPlanodeContasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioReceitasDespesasPlanoContas, 'FormRelatorioReceitasDespesasPlanoContas', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelFluxodeCaixaDiarioClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioFluxoCaixa, 'FormRelatorioFluxoCaixa', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINRelPosicaoFinanceiraConsolidadaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioSaldoDiarioPosicaoFinanceiraConsolidada, 'FormRelatorioSaldoDiarioPosicaoFinanceiraConsolidada', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.btnFormTelaImportadorXMLClick(Sender: TObject);
begin
  inherited;
  MnFormTelaImportadorXML.Click;
end;

procedure TFormPrincipal.Sobre1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TfSobre, 'fSobre', False, False, false, '');

end;

procedure TFormPrincipal.btnFormTelaEmissaoEtiquetasCodigoBarrasClick(Sender: TObject);
begin
  inherited;
  MnFormTelaEmissaoEtiquetasCodigoBarras.Click;
end;

procedure TFormPrincipal.AdvGlowButton9Click(Sender: TObject);
begin
  inherited;
  try
    WinExec(Pchar(ParceiroPath), sw_Show);
  except
    Application.ProcessMessages;
  end;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
var
  arqFile: TIniFile;
  caminhoArq: string;

begin
  inherited;
  caminhoArq := ExtractFilePath(Application.ExeName)+'parceiro.ini';
  arqFile := TIniFile.Create(caminhoArq);
  ParceiroPath := arqFile.ReadString('IB_SOFTWARE', 'LinhaD', '');

  if dm.SQLLocate('USUARIO','USUAICOD','USUACRESUMOFIN',INTTOSTR(UsuarioCorrente)) = 'S' then
    begin
      Application.CreateForm(TFormTelaResumoFinanceiro,FormTelaResumoFinanceiro);
      FormTelaResumoFinanceiro.ShowModal;
    end;
end;

procedure TFormPrincipal.MnADMUtilitariosConsultadeCuponsClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario( TFormCadastroCupom, 'FormCadastroCupom',False,False,False, '')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnAtualizaodeEstoquedasVendasdosPDVsClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaAtualizaEstoquePDVs,'FormTelaAtualizaEstoquePDVs',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.ConfernciadoFechamentodeCaixa1Click(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormConferenciaFechamentoCaixa, 'FormConferenciaFechamentoCaixa', False, False, True, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFINChequesRecebidosLancamentosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroChequesRecebidos, 'FormCadastroChequesRecebidos',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnChqEmitidosLancamentosCheuqesEmitidosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroChequeEmitido,'FormCadastroChequeEmitido',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFINCheRecebidosBaixaChequesRecebidosClick(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixarChequesRecebidos, 'FormTelaBaixarChequesRecebidos',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.FormPrincipalB1Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaBaixarChequeEmitido,'FormTelaBaixarChequeEmitido',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnSaldoInicialProdutosClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGerarSaldoProduto,'FormTelaGerarSaldoProduto',False,False,False,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnCadastroMesasClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroMesa,'FormCadastroMesa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFormTelaConsultaSaldoPorEmpresaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConsultaSaldoPorEmpresa,'FormTelaConsultaSaldoPorEmpresa',False,False,True,'')
  else
    SoundPlay('Acesso Negado.wav',Sender);
end;

procedure TFormPrincipal.MnFormCadastroSaboresClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroSabores, 'FormCadastroSabores', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroTributacaoNFSEClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTributacaoNFSE, 'FormCadastroTributacaoNFSE', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroNotaServicoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroNotaServico, 'FormCadastroNotaServico', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormCadastroServicoClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroServico, 'FormCadastroServico', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormRelatorioComissaoDetalhadoRepresentanteClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioComissaoDetalhadoRepresentante, 'FormRelatorioComissaoDetalhadoRepresentante', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);
end;

procedure TFormPrincipal.MnFormTelaConsultaMovNumeroSerieClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaConsultaMovNumeroSerie, 'FormTelaConsultaMovNumeroSerie', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);

end;

procedure TFormPrincipal.MnFormCadastroTipoFornecedorClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormCadastroTipoFornecedor, 'FormCadastroTipoFornecedor', False, False, False, '')
  else
    SoundPlay('Acesso Negado.wav', Sender);

end;

procedure TFormPrincipal.ConfigurarMenus;
var
 vNomeMenu:String;
begin
  with ExecSql(' select USPEA60NOMETELA from USUARIOPERMISSOES A '
      +' where USUAICOD = '+IntToStr(UsuarioCorrente)+' AND A.USPECACESSOTOTAL = ''N'' AND A.USPECINCLUSAO = ''N'' '
      +' AND A.USPECALTERACAO = ''N'' AND A.USPECEXCLUSAO = ''N'' AND A.USPECLEITURA = ''S'' ') do
  try
    while not eof do
    begin
      vNomeMenu := 'Mn'+fieldbyname('USPEA60NOMETELA').AsString;

      if Self.FindComponent(vNomeMenu) <> nil then
        TMenuItem(Self.FindComponent(vNomeMenu)).Visible:= False;

      vNomeMenu := 'btn'+fieldbyname('USPEA60NOMETELA').AsString;

      if Self.FindComponent(vNomeMenu) <> nil then
        TCustomControl(Self.FindComponent(vNomeMenu)).Visible := False;

      next;
    end;
  finally
    free;
  end;
end;

procedure TFormPrincipal.ResumoFinanceiro1Click(Sender: TObject);
begin
  inherited;
    if dm.SQLLocate('USUARIO','USUAICOD','USUACRESUMOFIN',INTTOSTR(UsuarioCorrente)) = 'S' then
    begin
      Application.CreateForm(TFormTelaResumoFinanceiro,FormTelaResumoFinanceiro);
      FormTelaResumoFinanceiro.ShowModal;
    end
    else
    begin
      try SoundPlay('Acesso Negado.wav',Sender); except Application.ProcessMessages; end;
      ShowMessage('Acesso Negado! Usuario sem permissão para ver o Resumo Financeiro!');
    end;
end;

end.

