unit Sweda_Termica;

interface

uses DataModulo, RXCtrls, Forms, RxQuery,  UnitLibrary, SysUtils, Dialogs ;

// Funções de Comunicação  ---------------------------------------------------------------------------------------------------------------
function ECF_AbrePortaSerial: Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaPortaSerial: Integer; StdCall; External 'CONVECF.dll';
function ECF_MsgLog(Conteudo:Pchar):Integer; StdCall; External 'CONVECF.dll';

//Funções de Início de Dia
function ECF_AberturaDoDia( ValorInicioDia:String ; Pagto:String): Integer; StdCall; External 'CONVECF.dll';

// Funções de Leituras Fiscais  ---------------------------------------------------------------------------------------------------------------
function ECF_LeituraX: Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalData( cDatai: String; cDataf: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalDataMFD( cDatai: String; cDataf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalReducao( cCRZi: String; cCRZf: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalReducaoMFD( cCRZi: String; cCRZf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';

// Funções do Cupom Fiscal  ---------------------------------------------------------------------------------------------------------------
function ECF_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreCupomMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_IdentificaConsumidor( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AumentaDescricaoItem( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaUnidadeMedida ( unidade: String ):Integer; StdCall; External 'CONVECF.dll';
function ECF_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_VendeItemTresDecimais( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; TipoDesconto: String; Taxa: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; Acrescimo: String; Desconto: String; IndiceDepto: String; UM:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_DescontoSobreItemVendido(Item:String; TipoDesc:String; ValorDesc:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AcrescimoDescontoItemMFD(Item:String; TipoDescAcres:String; TipoDesc:String; ValorDesc:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemAnterior: Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaAcrescimoDescontoItemMFD( Tipo: String ; Item:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_IniciaFechamentoCupom(DescAcres:String ; TipoDescontoACres:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_IniciaFechamentoCupomMFD(DescAcres:String ; TipoDescontoACres:String; ValorAcrescimo:String; ValorDesconto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_AcrescimoDescontoSubtotalMFD(DescAcres:String ; TipoDescontoACres:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaAcrescimoDescontoSubtotalMFD( Tipo: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_TotalizaCupomMFD: Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaFormaPagamento( Pagto:String;Valor:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaFormaPagamentoDescricaoForma( Pagto:String;Valor:String ;Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaFormaPagamentoMFD( Pagto:String;Valor:String ;Parcelas:String; Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_TerminaFechamentoCupom(Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaCupomResumido( FormaPagamento: String; Mensagem: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_AtivaDesativaCorteProximoMFD(tipocorte:Integer): Integer; StdCall; External 'CONVECF.dll';
function ECF_CupomAdicionalMFD: Integer; StdCall; External 'CONVECF.dll';
function ECF_ProgramaArredondamento: Integer; StdCall; External 'CONVECF.dll';
function ECF_ProgramaTruncamento: Integer; StdCall; External 'CONVECF.dll';
function ECF_EstornoFormasPagamento(Oritem:String; Destino:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';


// Funções de Cancelamento  ---------------------------------------------------------------------------------------------------------------
function ECF_CancelaCupom: Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaCupomMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';

// Funções de COmprovante Crédito e Débito (TEF) ---------------------------------------------------------------------------------------------------------------
function ECF_IniciaModoTEF:Integer;StdCall; External 'CONVECF.dll';
function ECF_FinalizaModoTEF:Integer;StdCall; External 'CONVECF.dll';
function ECF_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreComprovanteNaoFiscalVinculadoMFD( FormaPagamento: String; Valor: String; NumeroCupom: String ; CPF:String; Nome:String; Endereco: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'CONVECF.dll';
function ECF_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'CONVECF.dll';
function ECF_ReimpressaoNaoFiscalVinculadoMFD(): Integer; StdCall; External 'CONVECF.dll';
function ECF_EstornoNaoFiscalVinculadoMFD(CPF:String ;NomeConsumidor:String ;EnderecoCOnsumidor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_TEF_ImprimirRespostaCartao(NomeArquivo:String; Pagto:String; Trava:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_TEF_FechaRelatorio(): Integer; StdCall; External 'CONVECF.dll';
function ECF_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaRelatorioGerencialMFDTEF( Texto: String ): Integer; StdCall; External 'CONVECF.dll';

// Funções de Comprovantes  ---------------------------------------------------------------------------------------------------------------
function ECF_Suprimento( ValorInicioDia:String ; Pagto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_Sangria( ValorInicioDia:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreRecebimentoNaoFiscalMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreRecebimentoNaoFiscal(Item:String; TipoDesc:String; AcresDesconto:String; ValorDesc:String ;ValorReceb:String; texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_RecebimentoNaoFiscal( Totalizador:String; Valor:String ; Pagto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaRecebimentoNaoFiscalMFD( Totalizador:String; Valor:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemNaoFiscalMFD( NumeroItem: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AcrescimoItemNaoFiscalMFD(Item:String; TipoDescAcres:String; TipoDesc:String; ValorDesc:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AcrescimoDescontoSubtotalRecebimentoMFD(DescAcres:String ; TipoDescontoACres:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_TotalizaRecebimentoMFD: Integer; StdCall; External 'CONVECF.dll';
function ECF_IniciaFechamentoRecebimentoNaoFiscalMFD(DescAcres:String ; TipoDescontoACres:String; ValorAcrescimo:String; ValorDesconto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaRecebimentoNaoFiscalMFD(Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaRecebimentoNaoFiscalMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaFormaPagamentoNaoFiscal( Pagto:String;Valor:String; Texto:String ): Integer; StdCall; External 'CONVECF.dll';

// Funções de Relatório Gerencial  ---------------------------------------------------------------------------------------------------------------

function ECF_AbreRelatorioGerencial: Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreRelatorioGerencialMFD(Indice:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_EnviarTextoCNF( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_RelatorioGerencial( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaRelatorioGerencialMFD( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaRelatorioGerencial: Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaRelatorioXouZ: Integer; StdCall; External 'CONVECF.dll';


// Funções de Fechamento do dia ---------------------------------------------------------------------------------------------------------------
function ECF_FechamentoDoDia: Integer; StdCall; External 'CONVECF.dll';
function ECF_ReducaoZ( cData: String; cHora: String ): Integer; StdCall; External 'CONVECF.dll';

// Funções de Autenticações ---------------------------------------------------------------------------------------------------------------
function ECF_Autenticacao: Integer; StdCall; External 'CONVECF.dll';
function ECF_AutenticacaoMFD(Linha: String; Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_AutenticacaoStr(Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaDocAutenticacao: Integer; StdCall; External 'CONVECF.dll';

// Funções de Gaveta ---------------------------------------------------------------------------------------------------------------
function ECF_AcionaGaveta: Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaEstadoGaveta(Var Estado:Integer): Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaEstadoGavetaStr(Var Estado:String): Integer; StdCall; External 'CONVECF.dll';

//Funções de Cheque ---------------------------------------------------------------------------------------------------------------
function ECF_ProgramaMoedaSingular(Nome:String):integer;StdCall; External 'CONVECF.dll';
function ECF_ProgramaMoedaPlural(Nome:String):integer;StdCall; External 'CONVECF.dll';
function ECF_IncluiCidadeFavorecido(Cidade:String; Favorecido:String):integer;StdCall; External 'CONVECF.dll';
function ECF_VerificaStatusCheque(Var Estado:Integer): Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaStatusChequeStr(Var Estado:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_ImprimeCheque(Banco:String; Valor:String;Favorecido:String;Cidade:String; Data:String; Texto:String):integer;StdCall; External 'CONVECF.dll';
function ECF_ImprimeChequeMFD(Banco:String; Valor:String;Favorecido:String;Cidade:String; Data:String; Texto:String; Verso:String):integer;StdCall; External 'CONVECF.dll';
function ECF_LeituraChequeMFD(CMC7: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraLeiautesCheques: Integer; StdCall; External 'CONVECF.dll';

//Funções de Status ---------------------------------------------------------------------------------------------------------------
function ECF_RetornaTipoEcf(Tipo:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VersaoDll(Versao:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VersaoFirmware(Versao:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerie(NumeroSerie:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerieMFD(NumeroSerie:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerieMemoriaMFD(NumeroSerie:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MarcaModeloTipoImpressoraMFD(Marca:String; Modelo:String; Tipo:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CGC_IE(CGC:String; IE:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_CNPJMFD(CGC:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_InscricaoEstadualMFD(IE:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_InscricaoMunicipalMFD(IM:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_NumeroSubstituicoesProprietario(Proprietario:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_SimboloMoeda(Moeda:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_ClicheProprietario(Linhas:pchar): Integer;StdCall; External 'CONVECF.DLL';
function ECF_NumeroLoja(Loja:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_NumeroCaixa(Caixa:String):integer;StdCall; External 'CONVECF.dll';
function ECF_DataHoraImpressora(Data:String; Hora:String):integer;StdCall; External 'CONVECF.dll';
function ECF_LerAliquotasComIndice(Tribut:Pchar ):integer;StdCall; External 'CONVECF.dll';
function ECF_VerificaTotalizadoresNaoFiscaisMFD(Nome:Pchar ):integer;StdCall; External 'CONVECF.dll';
function ECF_VerificaModoOperacao(Modo:String):integer;StdCall; External 'CONVECF.dll';
function ECF_VerificaDescricaoFormasPagamento(Pagtos:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTotalizadoresNaoFiscaisEx(Nomes:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRelatorioGerencialProgMFD(Nomes:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CasasDecimaisProgramada(Unitario:String; Quantidade:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTruncamento(Status:String ): Integer; StdCall; External 'CONVECF.DLL';

function ECF_VerificaEstadoImpressoraMFD( ACK: Integer;  ST1: Integer;  ST2: Integer; ST3: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_RetornoImpressoraMFD(Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornoAliquotas(Aliquotas:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ImprimeCopiaCheque: Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaImpressaoCheque: Integer; StdCall; External 'CONVECF.dll';

//Funções de Status Ultima Transacao ---------------------------------------------------------------------------------------------------------------
function ECF_TipoUltimoDocumento(Tipo:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotal(Subt:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotalComprovanteNaoFiscalMFD(Subt:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorPagoUltimoCupom(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCupom(COO:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaFormasPagamento(Texto:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_TotaisVenda(Texto:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorAcrescimosUltimoCupom(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorDescontosUltimoCupom(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorCancelamentosUltimoCupom(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorCancelamentosUltimoCupomISS(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';

//Funções de Status Acumuladores Diários ---------------------------------------------------------------------------------------------------------------
function ECF_Acrescimos(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Descontos(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRecebimentoNaoFiscal(Texto:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRecebimentoNaoFiscalMFD(Texto:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Cancelamentos(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_GrandeTotal(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VendaBruta(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaAcrescimoNF(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaDescontoNF(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaCancelamentoNF(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaTroco(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';

//Funções de Staus Contadores  ---------------------------------------------------------------------------------------------------------------
function ECF_NumeroIntervencoes(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorCupomFiscalMFD(Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCuponsCancelados(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroOperacoesNaoFiscais(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorComprovantesCreditoMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ComprovantesNaoFiscaisNaoEmitidosMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorOperacoesNaoFiscaisCanceladasMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorFitaDetalheMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorRelatoriosGerenciaisMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroReducoes(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaCOO(Valor:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_COO(ValorIni:String;Valor:String ): Integer; StdCall; External 'CONVECF.DLL';

//Funções de Staus do ECF  ---------------------------------------------------------------------------------------------------------------
function ECF_FlagsFiscais(Var Valor:Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaEstadoImpressora( var ACK: Integer;  var ST1: Integer;  var ST2: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_RetornoImpressora( var ACK: Integer;  var ST1: Integer;  var ST2: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaTipoImpressora( var Tipo: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusEstendidoMFD( var Tipo: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusCupomFiscal( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusRelatorioGerencial( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusComprovanteNaoFiscalVinculado( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusComprovanteNaoFiscalNaoVinculado( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaModeloEcf: Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaHorarioVerao( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaZPendente( Tipo: String ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaDiaAberto( Tipo: String ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaFlagCorteMFD( Tipo: String ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_GeraRFD( Texto: Pchar ): Integer;StdCall; External 'CONVECF.DLL';

// Funções Status Diversos---------------------------------------------------------------------
function ECF_PercentualLivreMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_TotalLivreMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_ReducoesRestantesMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_TamanhoTotalMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_TempoRestanteComprovanteMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DataMovimento(Livre:String): Integer;StdCall; External 'CONVECF.DLL';

// Status de Valores após a Redução Z ---------------------------------------------------------------
function ECF_DataHoraUltimoDocumentoMFD(DAtaHora:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DataHoraReducao(Data:String; Hora:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DataMovimentoUltimaReducaoMFD(Data:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_InicioFimCOOsMFD(Inicial:String; Final:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_InicioFimGTsMFD(Inicial:String; Final:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_GrandeTotalUltimaReducaoMFD(GT:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DadosUltimaReducaoMFD(Texto:PChar): Integer;StdCall; External 'CONVECF.DLL';
function ECF_MapaResumoMFD:Integer;StdCall; External 'CONVECF.DLL';


// Funções SINTEGRA ---------------------------------------------------------------------
function ECF_ArquivoSintegra2004MFD( itipo: Integer; cArquivo: String;  cMes: String; cAno: String; cMesf: String; cAnof: String; cRazaoSocial: String; cEndereco: String; cNumero: String; cComplemento: String; cBairro: String; cCidade: String; cUF: String; cCEP: String; cTelefone: String; cFax: String; cContato: String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RelatorioSintegraMFD(TipoRel:Integer; Arquivo:String;MesInic:String;AnoInic:String;Razao:String;Endereco:String; numero:String;Complemento:String;Bairro:String;Cidade:String; Cep:String; telefone:String; fax:String; Contato:string): Integer;StdCall; External 'CONVECF.DLL';
function ECF_RegistrosTipo60: Integer;StdCall; External 'CONVECF.DLL';
function ECF_RelatorioTipo60Mestre: Integer;StdCall; External 'CONVECF.DLL';
function ECF_RelatorioTipo60Analitico: Integer;StdCall; External 'CONVECF.DLL';
function ECF_RelatorioTipo60AnaliticoMFD: Integer;StdCall; External 'CONVECF.DLL';

// Funções CAptura Movimento Gravado ECF ---------------------------------------------------------------------
function ECF_LeituraXSerial: Integer;StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalSerialData( cDatai: String; cDataf: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialDataMFD( cDatai: String; cDataf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialReducao( cCRZi: String; cCRZf: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialReducaoMFD( cCRZi: String; cCRZf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_DownloadSB( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_DownloadMF( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_DownloadMFD( nome: String ; tipo: String; inicio: String ; fim: String ; usuario: String  ): Integer; StdCall; External 'CONVECF.dll';
function ECF_FormatoDadosMFD(Origem:String; Destino:String; Formato:String;Tipo:String; Inicio:String; Fim:String; Usuario:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CapturaDocumentos(Tipo:String; Destino:String; Inicio:String; Fim:String; Exibe:String): Integer; StdCall; External 'CONVECF.dll';

// Funções COTEPE --------------------------------------------------------------------------------------------------------------
function ECF_TabelaMercadoriasServicos3404(Arquivo:String; Inicio:String; Fim:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_ReproduzirMemoriaFiscalMFD(Tipo:String; Inicio:String; Fim:String; Binario:String; Arquivo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_GeraRegistrosCAT52MFD(Binario:String; Data:String ): Integer; StdCall; External 'CONVECF.dll';

//Funções Código de Barras--------------------------------------------------------------------
function ECF_ConfiguraCodigoBarrasMFD( Altura:String; largura:String; posicao:String; fonte:String; Margem:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasCODABARMFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasCODE39MFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasEAN13MFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasEAN8MFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasITFMFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasUPCAMFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasUPCEMFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';

//Funcoes Adilson Complementares-------------------------------------------------------------------------------------------------
  function AbrirPortaECF_Sweda_Termica  : boolean ;
  function FecharPortaECF_Sweda_Termica : boolean ;

  function Leitura_X_Sweda_Termica : boolean;
  function Reducao_Z_Sweda_Termica : boolean;

  function AbrirGaveta_Sweda_Termica : Boolean;

  function AbrirCupomFiscal_Sweda_Termica(Var NroCupom : String) : boolean ;
  function ImprimeItem_Sweda_Termica(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;

  function CancelaItem_Sweda_Termica(Posicao: String) : boolean ;
  function CancelarCupomFiscal_Sweda_Termica : boolean ;

  function FecharCupomFiscal_Sweda_Termica(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;
  function EnviaFP_Sweda_Termica(Descricao_FormaPagamento : string; Valor : double) : boolean ;

  function AbreRelatorioGerencial_Sweda_Termica:Boolean;
  function EmiteRelatorioGerencial_Sweda_Termica(Texto:String):Boolean;
  function FechamentoRelatorioGerencial_Sweda_Termica : Boolean;

  function AbrirCNFV_Sweda_Termica(Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String) : Boolean ;
  function LinhaTextoLivre_Sweda_Termica(Texto : string) : boolean ;
  function FecharCNFV_Sweda_Termica : Boolean ;

  function EmiteCNFNV_Sweda_Termica(Identificador, Msg : string; Valor:double) : boolean ;
//  function AbreRecebimentoNaoFiscal_Sweda_Termica( Indice_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer;

  function Autenticacao_Sweda_Termica(Msg : String) : boolean ;

  function Sangria_Sweda_Termica(Valor : Double) : boolean ;
  function Suprimento_Sweda_Termica(Valor : Double; Forma_de_Pagamento: String) : boolean ;

  function ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;

  function Zeros(Str:String; Tam:Integer; Orient:String) : String ;

var
  IntRet : integer ;

implementation

uses UnitCheckoutLibrary, DB ;

function AbrirPortaECF_Sweda_Termica : boolean ;
begin
{   if ECF_AbrePortaSerial > 0 then
     AbrirPortaECF_Sweda_Termica := True
   else
     AbrirPortaECF_Sweda_Termica := False; }
end ;

function FecharPortaECF_Sweda_Termica : boolean ;
begin
{   if ECF_FechaPortaSerial > 0 then
     FecharPortaECF_Sweda_Termica := True
   else
     FecharPortaECF_Sweda_Termica := False; }
end ;

function AbreRelatorioGerencial_Sweda_Termica:Boolean;
begin
   if ECF_AbreRelatorioGerencial > 0 then
     AbreRelatorioGerencial_Sweda_Termica := True
   else
     AbreRelatorioGerencial_Sweda_Termica := False;
end;

function EmiteRelatorioGerencial_Sweda_Termica(Texto:String):Boolean;
begin
  if ECF_RelatorioGerencial(Texto) > 0 then
    EmiteRelatorioGerencial_Sweda_Termica := True
  else
    EmiteRelatorioGerencial_Sweda_Termica := False;
end;

function FechamentoRelatorioGerencial_Sweda_Termica : Boolean;
begin
   if ECF_FechaRelatorioGerencial > 0 then
     FechamentoRelatorioGerencial_Sweda_Termica := True
   else
     FechamentoRelatorioGerencial_Sweda_Termica := False;
end;

function Leitura_X_Sweda_Termica : boolean ;
begin
  if ECF_LeituraX > 0 then
     Leitura_X_Sweda_Termica := True
   else
     Leitura_X_Sweda_Termica := False;
end ;

function Reducao_Z_Sweda_Termica : boolean ;
var xData, xHora : string;
begin
  xData := FormatDateTime('dd/mm/yy',Now);
  xHora := FormatDateTime('hh:mm:ss',Now);
  if ECF_FechamentoDoDia > 0 then
    if ECF_ReducaoZ(xData, xHora) > 0 then
       Reducao_Z_Sweda_Termica := True
     else
       Reducao_Z_Sweda_Termica := False;
end ;

function AbrirCupomFiscal_Sweda_Termica(Var NroCupom : String) : boolean ;
var CPF : string;
var i : integer;
begin
  try

    NroCupom := '000000';

    if NotaGaucha = 'S' then
      begin
        i := 0;
        while i < 3 do
          begin
            CPF := '';
            CPF := InputBox('Nota Fiscal Gaucha!','Informar CPF no Cupom?','');
            if (CPF<>'') and (IsNumeric(CPF,'INTEGER')) then i := 3;
            if CPF = '' then i := 3;
            inc(i);
          end;

        if CPF <> '' then
          if not IsNumeric(CPF,'INTEGER') then
            CPF := '';
      end;

    IntRet := ECF_AbreCupom(pchar(CPF));
    ECF_NumeroCupom(NroCupom);
    AbrirCupomFiscal_Sweda_Termica := True;
  except
    AbrirCupomFiscal_Sweda_Termica := False;
  end;
end ;

function ImprimeItem_Sweda_Termica(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;
var ValorUnitarioEcf, ValorDescontoEcf, QuantEcf, TipoDescEcf : string;
var ValorUnitarioMenosDesconto, TotalItemECF, TotalItemCalc : Double;
begin
  ValorUnitarioMenosDesconto := Valor_Unitario * (Valor_do_Desconto/100);
  ValorUnitarioMenosDesconto := Valor_Unitario - ValorUnitarioMenosDesconto;
  ValorUnitarioEcf           := FormatFloat('##0.000',ValorUnitarioMenosDesconto);
  ValorDescontoEcf           := '00,00';
  if Frac(Quantidade) > 0 then
    begin
      Tipo_de_Quantidade := 'F';
      TipoDescECF        := 'D';
      case DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').Value of
        2 : begin
              QuantEcf := FormatFloat('##0.00',Quantidade);
              IntRet   := ECF_VendeItem(Codigo, Descricao, Aliquota, Tipo_de_Quantidade, QuantEcf, Casas_Decimais, ValorUnitarioECF, Tipo_de_Desconto, ValorDescontoEcf );
            end;
        3 : begin
              QuantEcf := FormatFloat('##0.000', Quantidade);
              IntRet   := ECF_VendeItem(Codigo, Descricao, Aliquota, Tipo_de_Quantidade, QuantEcf, Casas_Decimais, ValorUnitarioECF, Tipo_de_Desconto, ValorDescontoEcf );
            end;
      end;
    end
  else
    begin
      Tipo_de_Quantidade := 'I';
      QuantEcf := IntToStr(Round(Int(Quantidade)));
      // O Parametro abaixo ''Casas Decimais'' é somente para o Valor Unitario a ser passado
      IntRet := ECF_VendeItem(Codigo, Descricao, Aliquota, Tipo_de_Quantidade, QuantEcf, Casas_Decimais, ValorUnitarioECF, Tipo_de_Desconto, ValorDescontoEcf );
    end;
  if IntRet = 1 then
    ImprimeItem_Sweda_Termica := true
  else
    ImprimeItem_Sweda_Termica := false;
end;

function CancelaItem_Sweda_Termica(Posicao: String) : boolean ;
begin
  if ECF_CancelaItemGenerico(Posicao) > 0 then
    CancelaItem_Sweda_Termica := True
  else
    CancelaItem_Sweda_Termica := False;
end ;

function FecharCupomFiscal_Sweda_Termica(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano :string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;
var
  MsgFimCupom, NumerarioDescricao, VlrAcrescDescSTR : string ;
  TotalVista,  TotalPrazo : double ;
  I : Integer;
begin
  // INICIAR FECHAMENTO CUPOM
  VlrAcrescDescSTR := FormatFloat('##0.00',VlrAcrescDesc);

  if TipoAcrescDesc = 'A' then
    ECF_IniciaFechamentoCupom( 'A', '$', VlrAcrescDescSTR )
  else
    ECF_IniciaFechamentoCupom( 'D', '$', VlrAcrescDescSTR ) ;

  // CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
    begin
      TotalPrazo :=  TotalPrazo + StrToFloat(FormatFloat('##0.00',SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat));
      SQLFPPrazo.Next;
    end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First;
  while not SQLFPVista.Eof do
    begin
      NumerarioDescricao := RetornaTotalizadorNumerarioECFElgin_FIT(Ecf_ID,SQLFPVista.Fieldbyname('NUMEICOD').AsString);
      EnviaFP_Sweda_Termica(NumerarioDescricao, StrToFloat(FormatCurr('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)));

      TotalVista := TotalVista + StrToFloat(FormatFloat('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)) ;
      SQLFPVista.Next ;
    end ;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
    begin
      NumerarioDescricao := RetornaTotalizadorNumerarioECFElgin_FIT(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      EnviaFP_Sweda_Termica(NumerarioDescricao, TotalPrazo);
    end;

  //IMPRIMIR DADOS DO CLIENTE
  if ImprimeDadosClienteCupom = 'S' then
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'Val aprox dos Tributos R$' + FloatToStr(VlrImpostoMedio) + ' ('+FloatToStr(AliqImpostoMedio)+'%) Fonte: IBPT' + Chr(10) +
                       'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:'+KmCliente+ Chr(10) +
                       'Vend: '  + copy(Vendedor,1,10) +
                       ' Plano: ' + copy(Plano,1,17)  + Chr(10) +
                       'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       DocumentoCli                                         + Chr(10) +
                       'End: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'Cid: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) + Chr(10) +
                       'Doc.emit p/empr.peq.Porte. Nao gera ICMS'
      else
        MsgFimCupom := 'Val aprox dos Tributos R$' + FloatToStr(VlrImpostoMedio) + ' ('+FloatToStr(AliqImpostoMedio)+'%) Fonte: IBPT' + Chr(10) +
                       'Cup.ID:' + IDCupom +'  Pl:'+PlacaCliente+ '  KM:'+KmCliente+ Chr(10) +
                       'Vend: '  + copy(Vendedor,1,10) +
                       ' Plano: ' + copy(Plano,1,17) + Chr(10) +
                       'Cliente: ' + copy(ConverteAcentos(NomeCli),1,30)    + Chr(10) +
                       DocumentoCli                                         + Chr(10) +
                       'End: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'Cid: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) ;
    end
  else
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'CNPJ/CPF: ' + DocumentoCli                      + Chr(10) +
                       'Doc.emit p/empr.peq.Porte. Nao gera ICMS'       + Chr(10) +
                       'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT'

      else
        MsgFimCupom := 'CNPJ/CPF: ' + DocumentoCli                      + Chr(10) +
                       'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT';

    end;
  if ECF_TerminaFechamentoCupom(MsgFimCupom) > 0 then
    FecharCupomFiscal_Sweda_Termica := True
  else
    FecharCupomFiscal_Sweda_Termica := False;
end;

function CancelarCupomFiscal_Sweda_Termica: boolean ;
begin
  if ECF_CancelaCupom > 0 then
    CancelarCupomFiscal_Sweda_Termica := True
  else
    CancelarCupomFiscal_Sweda_Termica := False;
end ;

function EmiteCNFNV_Sweda_Termica(Identificador, Msg : string; Valor:double) : boolean ;
Var
  Vlr : string ;
begin
  Vlr := FormatCurr('###,##0.00',Valor);
  If ECF_RecebimentoNaoFiscal(Pchar(Trim(Identificador)), Pchar(Trim(Vlr)), Pchar(Trim(Msg))) > 0 then
    EmiteCNFNV_Sweda_Termica := True
  else
    EmiteCNFNV_Sweda_Termica := False;
end ;

function EnviaFP_Sweda_Termica(Descricao_FormaPagamento : string; Valor : double) : boolean ;
Var
  Vlr : string ;
begin
  // Vlr := FormatCurr('##0.00',Valor);
  Vlr := FormatFloat('##0.00',Valor);
  if ECF_EfetuaFormaPagamento(Descricao_FormaPagamento, Vlr) > 0 then
    EnviaFP_Sweda_Termica := True
  else
    EnviaFP_Sweda_Termica := False;
end ;

function Autenticacao_Sweda_Termica(Msg : String) : boolean ;
begin
  if ECF_Autenticacao > 0 then
    Autenticacao_Sweda_Termica := True
  else
    Autenticacao_Sweda_Termica := False;
end ;

function AbrirCNFV_Sweda_Termica( Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String ) : Boolean ;
var
  Vlr, TotalizadorEcf : string;
begin
  if ECF_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento, Vlr, Numero_do_Cupom ) > 0 then
    AbrirCNFV_Sweda_Termica := True
  else
    AbrirCNFV_Sweda_Termica := False;
end ;

function LinhaTextoLivre_Sweda_Termica(Texto : string) : boolean ;
begin
  if ECF_UsaComprovanteNaoFiscalVinculado(Texto) > 0 then
    LinhaTextoLivre_Sweda_Termica := True
  else
    LinhaTextoLivre_Sweda_Termica := False;
end ;

function FecharCNFV_Sweda_Termica : Boolean ;
begin
  if ECF_FechaComprovanteNaoFiscalVinculado > 0 then
    FecharCNFV_Sweda_Termica := True
  else
    FecharCNFV_Sweda_Termica := False;
end ;

function ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
var Valor : string ;
begin
  Valor := FormatFloat('#,##0.00', Numero);
  if Pos(',', Valor) > 0 then
    Delete(Valor, Pos(',', Valor), 1);
  if Pos('.',Valor) > 0 then
    Delete(Valor, Pos('.', Valor), 1);
  ConvFloatToStrECF := Zeros(Valor, Tam, 'Dir') ;
end ;

function Zeros(Str:String; Tam:Integer; Orient:String) : String ;
Var Dif, i : integer ;
begin
  Dif := Tam - Length(Str) ;
  for i := 1 to Dif do
  begin
    if Orient = 'Esq' then
      Str := Str + '0' ;
    if Orient = 'Dir' then
      Str := '0' + Str ;
  End ;
  Zeros := Str ;
end ;

function AbrirGaveta_Sweda_Termica : Boolean;
begin
  if ECF_AcionaGaveta > 0 then
    AbrirGaveta_Sweda_Termica := True
  else
    AbrirGaveta_Sweda_Termica := False;
end ;

function Sangria_Sweda_Termica(Valor : Double) : boolean ;
var Vlr : String;
begin
  Vlr := FormatFloat('##0.00', Valor);
  IntRet := ECF_Sangria(Vlr) ;
  if IntRet > 0 then
    Sangria_Sweda_Termica := True
  else
    Sangria_Sweda_Termica := False;
end ;

function Suprimento_Sweda_Termica(Valor : Double; Forma_de_Pagamento: String) : boolean ;
var Vlr, NumerarioDescricao : String;
begin
  NumerarioDescricao := RetornaTotalizadorNumerarioECFElgin_FIT(Ecf_ID,Forma_de_Pagamento);
  Vlr := FormatFloat('##0.00', Valor);
  if ECF_Suprimento(Vlr, NumerarioDescricao) > 0 then
    Suprimento_Sweda_Termica := True
  else
    Suprimento_Sweda_Termica := False;
end ;

end.
