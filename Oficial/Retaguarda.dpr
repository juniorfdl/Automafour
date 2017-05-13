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
  TelaLembreteTarefa in 'TelaLembreteTarefa.pas' {FormTelaLembreteTarefa},
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
  CadastroEmpresa in 'Cadastros\CadastroEmpresa.pas' {FormCadastroEmpresa};

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
