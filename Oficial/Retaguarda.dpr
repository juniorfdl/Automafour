program Retaguarda;

uses
  Forms,
  windows,
  DataModuloTemplate in '..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  VarSYS in '..\Template\VarSYS.pas',
  WaitWindow in 'ArquivosComuns\WaitWindow.pas',
  WindowsLibrary in 'ArquivosComuns\WindowsLibrary.pas',
  TelaSplash in 'ArquivosComuns\TelaSplash.pas' {FormS1plash},
  UnitLibrary in 'ArquivosComuns\UnitLibrary.pas',
  DataModuloFaturamento in 'Faturamento\DataModuloFaturamento.pas' {DMFaturamento: TDataModule},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  dialogs,
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  PrincipalTemplate in '..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  TelaGerenciamentoAcesso in '..\Template\TelaGerenciamentoAcesso.pas' {FormTelaGerenciamentoAcesso},
  TelaAutenticaUsuario in '..\Template\TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  Principal in 'Principal.pas' {FormPrincipal},
  FormResources in '..\Template\FormResources.pas',
  UnSoundPlay in '..\Template\UnSoundPlay.pas',
  CadastroTEMPLATE in '..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE},
  CadastroContasPagar in 'Financeiro\CadastroContasPagar.pas' {FormCadastroContasPagar},
  TelaConsultaPagamento in 'Financeiro\TelaConsultaPagamento.pas' {FormTelaConsultaPagamento},
  TelaAssistenteLancamentoContasPagar in 'Financeiro\TelaAssistenteLancamentoContasPagar.pas',
  TelaGeralModalTemplate in '..\Template\TelaGeralModalTemplate.pas' {FormTelaGeralModalTemplate},
  TelaBaixaContasPagarAVista in 'Financeiro\TelaBaixaContasPagarAVista.pas' {FormTelaBaixaContasPagarAVista},
  TelaConsultaTarefa in 'TelaConsultaTarefa.pas' {FormTelaConsultaTarefa},
  CadastroProdutos in 'Cadastros\CadastroProdutos.pas' {FormCadastroProduto},
  CadastroVariacao in 'Cadastros\CadastroVariacao.pas' {FormCadastroVariacao},
  CadastroCor in 'Cadastros\CadastroCor.pas' {FormCadastroCor},
  CadastroGrade in 'Cadastros\CadastroGrade.pas' {FormCadastroGrade},
  CadastroGrupo in 'Cadastros\CadastroGrupo.pas' {FormCadastroGrupo},
  CadastroMarca in 'Cadastros\CadastroMarca.pas' {FormCadastroMarca},
  CadastroMateriais in 'Cadastros\CadastroMateriais.pas' {FormCadastroMateriais},
  CadastroMotivoBloqueio in 'Cadastros\CadastroMotivoBloqueio.pas' {FormCadastroMotivoBloqueio},
  CadastroNCM in 'Cadastros\CadastroNCM.pas' {FormCadastroNCM},
  CadastroOperacoesEstoque in 'Cadastros\CadastroOperacoesEstoque.pas' {FormCadastroOperacoesEstoque},
  CadastroProfExterno in 'Cadastros\CadastroProfExterno.pas' {FormCadastroProfExterno},
  CadastroProfissao in 'Cadastros\CadastroProfissao.pas' {FormCadastroProfissao},
  CadastroRamo in 'Cadastros\CadastroRamo.pas' {FormCadastroRamo},
  CadastroRota in 'Cadastros\CadastroRota.pas' {FormCadastroRota},
  CadastroSubgrupo in 'Cadastros\CadastroSubgrupo.pas' {FormCadastroSubgrupo},
  CadastroSubRamo in 'Cadastros\CadastroSubRamo.pas' {FormCadastroSubRamo},
  CadastroUnidade in 'Cadastros\CadastroUnidade.pas' {FormCadastroUnidade},
  CadastroUsuario in 'Cadastros\CadastroUsuario.pas' {FormCadastroUsuario},
  CadastroTamanho in 'Cadastros\CadastroTamanho.pas' {FormCadastroTamanho},
  CadastroICMS in 'Cadastros\CadastroICMS.pas' {FormCadastroICMS},
  CadastroClassificacaoFiscal in 'Cadastros\CadastroClassificacaoFiscal.pas' {FormCadastroClassificacaoFiscal},
  CadastroProdutoFornecedor in 'Cadastros\CadastroProdutoFornecedor.pas' {FormCadastroProdutoFornecedor},
  CadastroFornecedor in 'Cadastros\CadastroFornecedor.pas' {FormCadastroFornecedor},
  CadastroBanco in 'Cadastros\CadastroBanco.pas' {FormCadastroBanco},
  CadastroTipoFornecedor in 'Cadastros\CadastroTipoFornecedor.pas' {FormCadastroTipoFornecedor},
  CadastroTipoCusto in 'Cadastros\CadastroTipoCusto.pas' {FormCadastroTipoCusto},
  CadastroCep in 'Cadastros\CadastroCep.pas' {FormCadastroCep},
  TelaConsultaTemplate in '..\Template\TelaConsultaTemplate.pas' {FormTelaConsultaTemplate},
  TelaConsultaPlanoContas in 'Cadastros\TelaConsultaPlanoContas.pas' {FormTelaConsultaPlanoContas},
  CadastroFornecedorContato in 'Cadastros\CadastroFornecedorContato.pas' {FormCadastroFornecedorContato},
  TelaGeralTEMPLATE in '..\Template\TelaGeralTEMPLATE.pas' {FormTelaGeralTEMPLATE},
  TelaCriacaoGrade in 'ArquivosComuns\TelaCriacaoGrade.pas' {FormTelaCriacaoGrade},
  CadastroProdutoComposicao in 'Cadastros\CadastroProdutoComposicao.pas' {FormCadastroProdutoComposicao},
  TelaConsultaProduto in 'ArquivosComuns\TelaConsultaProduto.pas' {FormTelaConsultaProduto},
  CadastroProdutoSerie in 'Cadastros\CadastroProdutoSerie.pas' {FormCadastroProdutoSerie},
  CadastroProdutoTabelaPreco in 'Cadastros\CadastroProdutoTabelaPreco.pas' {FormCadastroProdutoTabelaPreco},
  CadastroTabelaPreco in 'Cadastros\CadastroTabelaPreco.pas' {FormCadastroTabelaPreco},
  CadastroTabelaPrecoProduto in 'Cadastros\CadastroTabelaPrecoProduto.pas' {FormCadastroTabelaPrecoProduto},
  CadastroColecao in 'Cadastros\CadastroColecao.pas' {FormCadastroColecao},
  CadastroDecreto in 'Cadastros\CadastroDecreto.pas' {FormCadastroDecreto},
  TelaEntradaRapidaEstoque in 'ArquivosComuns\TelaEntradaRapidaEstoque.pas' {FormTelaEntradaRapidaEstoque},
  TelaFotoExpandida in 'ArquivosComuns\TelaFotoExpandida.pas' {FormTelaFotoExpandida},
  CadastroBarras in 'ArquivosComuns\CadastroBarras.pas' {FormCadastroBarras},
  TelaSaidaRapidaEstoque in 'ArquivosComuns\TelaSaidaRapidaEstoque.pas' {FormTelaSaidaRapidaEstoque},
  CadastroTabCest in 'ArquivosComuns\CadastroTabCest.pas' {FormCadastroTabCEST},
  CadastroSerie in 'Cadastros\CadastroSerie.pas' {FormCadastroSerie},
  CadastroCodigoFiscalOperacao in 'Cadastros\CadastroCodigoFiscalOperacao.pas' {FormCadastroCodigoFiscalOperacao},
  CadastroEmpresa in 'Cadastros\CadastroEmpresa.pas' {FormCadastroEmpresa},
  CadastroVendedor in 'Cadastros\CadastroVendedor.pas' {FormCadastroVendedor},
  CadastroClienteContato in 'Cadastros\CadastroClienteContato.pas' {FormCadastroClienteContato},
  TelaConsultaTabelaPreco in 'Cadastros\TelaConsultaTabelaPreco.pas' {FormTelaConsultaTabelaPreco},
  CadastroConsulta in 'Cadastros\CadastroConsulta.pas' {FormCadastroConsulta},
  TelaEnvioEmailGeral in 'Cadastros\TelaEnvioEmailGeral.pas' {FormTelaEnvioEmailGeral},
  CadastroClienteHistorico in 'Cadastros\CadastroClienteHistorico.pas' {FormCadastroClienteHistorico},
  CadastroCliente in 'Cadastros\CadastroCliente.pas' {FormCadastroCliente},
  TelaConsultaPlanoRecebimento in 'ArquivosComuns\TelaConsultaPlanoRecebimento.pas' {FormTelaConsultaPlanoRecebimento},
  TelaNegociacaoDivida in 'ArquivosComuns\TelaNegociacaoDivida.pas' {FormTelaNegociacaoDivida},
  ExtensoLib in 'ArquivosComuns\ExtensoLib.pas',
  TelaDadosTeleEntrega in 'ArquivosComuns\TelaDadosTeleEntrega.pas' {FormTelaDadosTeleEntrega},
  CadastroTipoCliente in 'ArquivosComuns\CadastroTipoCliente.pas' {FormCadastroTipoCliente},
  TelaGeracaoMalaDireta in 'ArquivosComuns\TelaGeracaoMalaDireta.pas' {FormTelaGeracaoMalaDireta},
  CadastroClienteProduto in 'ArquivosComuns\CadastroClienteProduto.pas' {FormCadastroClienteProduto},
  CadastroProfissional in 'Cadastros\CadastroProfissional.pas' {FormCadastroProfissional},
  CadastroClienteVeiculos in 'Cadastros\CadastroClienteVeiculos.pas' {FormCadastroClienteVeiculos},
  CadastroAnimaisRaca in 'Cadastros\CadastroAnimaisRaca.pas' {FormCadastroAnimaisRaca},
  CadastroAnimaisEspecie in 'Cadastros\CadastroAnimaisEspecie.pas' {FormCadastroAnimais_especie},
  CadastroAnimaisAgenda in 'Cadastros\CadastroAnimaisAgenda.pas' {FormCadastroAnimaisAgenda},
  CadastroClienteExtintor in 'Cadastros\CadastroClienteExtintor.pas' {FormCadastroClienteExtintor},
  TelaDetalheRecebimento in 'Cadastros\TelaDetalheRecebimento.pas' {FormTelaDetalheRecebimento},
  CadastroClienteReferencia in 'Cadastros\CadastroClienteReferencia.pas' {FormCadastroClienteReferencia},
  CadastroClienteDependente in 'Cadastros\CadastroClienteDependente.pas' {FormCadastroClienteDependente},
  TelaClienteHistorico in 'Cadastros\TelaClienteHistorico.pas' {FormTelaClienteHistorico},
  CadastroTesouraria in 'Cadastros\CadastroTesouraria.pas' {FormCadastroTesouraria},
  CadastroOperacaoTesouraria in 'Cadastros\CadastroOperacaoTesouraria.pas' {FormCadastroOperacaoTesouraria},
  CadastroHistoricoPadrao in 'Cadastros\CadastroHistoricoPadrao.pas',
  CadastroIcmsUf in 'Cadastros\CadastroIcmsUf.pas' {FormCadastroIcmsUF},
  CadastroTipoDocumento in 'Cadastros\CadastroTipoDocumento.pas' {FormCadastroTipoDocumento},
  CadastroPortador in 'Cadastros\CadastroPortador.pas' {FormCadastroPortador},
  CadastroTipoLiquidacao in 'Cadastros\CadastroTipoLiquidacao.pas' {FormCadastroTipoLiquidacao},
  CadastroContaCorrente in 'Cadastros\CadastroContaCorrente.pas' {FormCadastroContaCorrente},
  CadastroOperacaoBanco in 'Cadastros\CadastroOperacaoBanco.pas' {FormCadastroOperacaoBanco},
  CadastroSituacaoCheque in 'Cadastros\CadastroSituacaoCheque.pas' {FormCadastroSituacaoCheque},
  CadastroProtocoloChequeRecebido in 'Cadastros\CadastroProtocoloChequeRecebido.pas' {FormCadastroProtocoloChequeRecebido},
  CadastroObsNotaFiscal in 'Cadastros\CadastroObsNotaFiscal.pas' {FormCadastroObsNotaFiscal},
  CadastroCSTConverte in 'Cadastros\CadastroCSTConverte.pas' {CadastroCSTConverter},
  CadastroCSTPisCofinsConverter in 'Cadastros\CadastroCSTPisCofinsConverter.pas' {CadastroCSTPisCofinsConverte},
  TelaPlanoContas in 'Cadastros\TelaPlanoContas.pas' {FormTelaPlanoContas},
  TelaLembreteTarefa2 in 'Cadastros\TelaLembreteTarefa2.pas' {FormTelaLembreteTarefa2},
  TelaLembreteTarefa in 'Cadastros\TelaLembreteTarefa.pas' {FormTelaLembreteTarefa},
  CadastroTransportadora in 'Cadastros\CadastroTransportadora.pas' {FormCadastroTransportadora},
  CadastroRepresentante in 'Cadastros\CadastroRepresentante.pas' {FormCadastroRepresentante},
  CadastroConvenio in 'Cadastros\CadastroConvenio.pas' {FormCadastroConvenio},
  CadastroCidade in 'Cadastros\CadastroCidade.pas' {FormCadastroCidade},
  CadastroPedidoCompra in 'Compras\CadastroPedidoCompra.pas' {FormCadastroPedidoCompra},
  CadastroPedidoCompraItem in 'Compras\CadastroPedidoCompraItem.pas' {FormCadastroPedidoCompraItem},
  TelaLancamentoGrade in 'Compras\TelaLancamentoGrade.pas' {FormTelaLancamentoGrade},
  SearchLibrary in 'ArquivosComuns\SearchLibrary.pas',
  TelaConsultaProdutoGeral in 'ArquivosComuns\TelaConsultaProdutoGeral.pas' {FormTelaConsultaProdutoGeral},
  TelaRetornoPesquisaProduto in 'ArquivosComuns\TelaRetornoPesquisaProduto.pas' {FormTelaRetornoPesquisaProduto},
  TelaPedidoCompraItemFiltro in 'Compras\TelaPedidoCompraItemFiltro.pas' {FormTelaPedidoCompraItemFiltro},
  TelaPedidoCompraHistoricoComprasVendasProduto in 'Compras\TelaPedidoCompraHistoricoComprasVendasProduto.pas' {FormTelaPedidoCompraHistoricoComprasVendasProduto},
  CadastroPlanoPagamento in 'Cadastros\CadastroPlanoPagamento.pas' {FormCadastroPlanoPagamento},
  CadastroPlanoPagamentoParcela in 'Cadastros\CadastroPlanoPagamentoParcela.pas' {FormCadastroPlanoPagamentoParcela},
  TelaConsultaPedidoCompra in 'Cadastros\TelaConsultaPedidoCompra.pas' {FormTelaConsultaPedidoCompra},
  TelaConsultaNotaCompra in 'Cadastros\TelaConsultaNotaCompra.pas' {FormTelaConsultaNotaCompra},
  TelaConsultaPedidoVenda in 'ArquivosComuns\TelaConsultaPedidoVenda.pas' {FormTelaConsultaPedidoVenda},
  TelaConsultaNotaFiscal in 'ArquivosComuns\TelaConsultaNotaFiscal.pas' {FormTelaConsultaNotaFiscal},
  CadastroPedidoCompraFinanceiro in 'Compras\CadastroPedidoCompraFinanceiro.pas' {FormCadastroPedidoCompraFinanceiro},
  CadastroNotaCompra in 'Compras\CadastroNotaCompra.pas' {FormCadastroNotaCompra},
  CadastroNotaCompraFinanceiro in 'Compras\CadastroNotaCompraFinanceiro.pas' {FormCadastroNotaCompraFinanceiro},
  CadastroNotaCompraItem in 'Compras\CadastroNotaCompraItem.pas' {FormCadastroNotaCompraItem},
  TelaLancamentoGradeNota in 'Compras\TelaLancamentoGradeNota.pas' {FormTelaLancamentoGradeNota},
  CadastroLote in 'Cadastros\CadastroLote.pas' {FormCadastroLote},
  TelaProdutoNumeroSerie in 'ArquivosComuns\TelaProdutoNumeroSerie.pas' {FormTelaGeralModalCadastroProdutoNumeroSerie},
  TelaImportacaoPedidoCompra in 'Compras\TelaImportacaoPedidoCompra.pas' {FormTelaImportacaoPedidoCompra},
  TelaEmissaoEtiquetasCodigoBarras in 'Compras\TelaEmissaoEtiquetasCodigoBarras.pas' {FormTelaEmissaoEtiquetasCodigoBarras},
  TelaConsultaPlanoContasDebitos in 'ArquivosComuns\TelaConsultaPlanoContasDebitos.pas' {FormTelaConsultaPlanoContasDebitos},
  TelaConsultaCliente in 'ArquivosComuns\TelaConsultaCliente.pas' {FormTelaConsultaCliente},
  RelatorioMediaComprasPeriodo in 'Compras\RelatorioMediaComprasPeriodo.pas',
  RelatorioTemplate in '..\Template\RelatorioTemplate.pas' {FormRelatorioTEMPLATE};

{$R *.res}

begin
  Application.Initialize ;
  VersaoSistema := '3.2' ;
  bRetaguarda := true;
  Application.Title := 'Gestão Empresarial - Módulo Faturamento';

  Application.CreateForm(TDM, DM);
  if dm.SQLConfigGeralCFGECBLOQ.AsString = 'S' then
    begin
      ShowMessage('Sistema Bloqueado!!! Ligue para a Suporte');
      application.terminate;
    end
  else
    begin
      FormTelaLogin := TFormTelaLogin.Create(Application);
      FormTelaLogin.Caption := 'Bem Vindo ao Gestão Empresarial - Módulo Faturamento' ;

      if FormTelaLogin.ShowModal <> idOk then
        begin
          application.terminate;
        end;

      Application.CreateForm(TFormPrincipal, FormPrincipal);
      FormPrincipal.RodapePrincipal.Panels[0].Text := 'Empresa: ' +DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
      FormPrincipal.RodapePrincipal.Panels[1].Text := 'Terminal: '+Dm.SQLTerminalAtivo.fieldbyname('TERMA60DESCR').AsString;
      FormPrincipal.RodapePrincipal.Panels[2].Text := 'Usuário: ' +DM.SQLUsuario.fieldbyname('USUAA60LOGIN').Value;
      FormPrincipal.RodapePrincipal.Panels[4].Text := 'Validade da Licença: ' +DM.SQLConfigGeralCFGEDBLOQ.AsString;
      Application.Run;
    end;
end.
