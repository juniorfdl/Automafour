unit BemaFi32;

interface

uses RXCtrls, RxQuery, Forms, DBTables, SysUtils, Dialogs ;

function Bematech_FI_AlteraSimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaDepartamento( Indice: Integer; Departamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaArredondamento: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaTruncamento: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento';
function Bematech_FI_LinhasEntreCupons( Linhas: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EspacoEntreLinhas( Dots: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ForcaImpactoAgulhas( ForcaImpacto: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções do Cupom Fiscal

function Bematech_FI_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupomResumido( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ResetaImpressora: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoDescricaoForma( FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoFormasPagamento( FormaOrigem: String; FormaDestino: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaUnidadeMedida( UnidadeMedida: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AumentaDescricaoItem( Descricao: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoImpAntiga( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções dos Relatórios Fiscais

function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções das Operações Não Fiscais

function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções de Informações da Impressora

function Bematech_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraXSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmware( VersaoFirmware: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CGC_IE( CGC: String; IE: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Cancelamentos( ValorCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Descontos( ValorDescontos: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCuponsCancelados( NumeroCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroIntervencoes( NumeroIntervencoes: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroReducoes( NumeroReducoes: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSubstituicoesProprietario( NumeroSubstituicoes: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ClicheProprietario( Cliche: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroLoja( NumeroLoja: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosLigada( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosImprimindo( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorPagoUltimoCupom( ValorCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscais( Contadores: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimento( Data: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTruncamento( Flag: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Acrescimos( ValorAcrescimos: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorBilhetePassagem( ContadorPassagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaDepartamentos( Departamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducao( DadosReducao: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MonitoramentoPapel( Var Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorFormaPagamento( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorTotalizadorNaoFiscal( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções de Autenticação e Gaveta de Dinheiro

function Bematech_FI_Autenticacao:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao';
function Bematech_FI_ProgramaCaracterAutenticacao( Parametros: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta';
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções para a Impressora Restaurante

function Bematech_FIR_AbreCupomRestaurante( Mesa: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_RegistraVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_CancelaVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_ConferenciaMesa( Mesa: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_AbreConferenciaMesa( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_FechaConferenciaMesa( FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_TransferenciaMesa( MesaOrigem: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_ContaDividida( NumeroCupons: String; ValorPago: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_FechaCupomContaDividida( NumeroCupons: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; FormasPagamento: String; ValorFormasPagamento: String; ValorPagoCliente: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_TransferenciaItem( MesaOrigem: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_RelatorioMesasAbertas( TipoRelatorio: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_ImprimeCardapio: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_RelatorioMesasAbertasSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_CardapioPelaSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_RegistroVendaSerial( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_VerificaMemoriaLivre( Bytes: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_FechaCupomRestaurante( FormaPagamento: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorFormaPagto: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_FechaCupomResumidoRestaurante( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Função para a Impressora Bilhete de Passagem

function Bematech_FI_AbreBilhetePassagem( ImprimeValorFinal: string; ImprimeEnfatizado: string; Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string; Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Funções de Impressão de Cheques

function Bematech_FI_ProgramaMoedaSingular( MoedaSingular: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaMoedaPlural( MoedaPlural: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaImpressaoCheque: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaStatusCheque( Var StatusCheque: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCopiaCheque: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque';

// Outras Funções

function Bematech_FI_AbrePortaSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaPortaSerial: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechaPortaSerial';
function Bematech_FI_MapaResumo:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo';
function Bematech_FI_AberturaDoDia( ValorCompra: string; FormaPagamento: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechamentoDoDia: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
function Bematech_FI_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
function Bematech_FI_ImprimeDepartamentos: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeDepartamentos';
function Bematech_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_VerificaImpressoraLigada: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';
//function Bematech_FI_DadosSintegra( DataInicial: string; DataFinal: string ): integer; StdCall; External 'BEMAFI32.DLL';

// Funções da Impressora Fiscal MFD

function Bematech_FI_AbreCupomMFD(CGC: string; Nome: string; Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupomMFD(CGC, Nome, Endereco: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: String) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoMFD(FormaPagamento, ValorFormaPagamento, Parcelas, DescricaoFormaPagto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CupomAdicionalMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoItemMFD (Item, AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimoDesconto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioGerencialMFD (Indice, Descricao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AutenticacaoMFD(Linhas, Texto : string) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculadoMFD(FormaPagamento, Valor, NumeroCupom, CGC, nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReimpressaoNaoFiscalVinculadoMFD() : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaRecebimentoNaoFiscalMFD(IndiceTotalizador, ValorRecebimento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupomMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoRecebimentoNaoFiscalMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRecebimentoNaoFiscalMFD(Mensagem : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRelatorioGerencialMFD(Indice : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaRelatorioGerencialMFD(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaRelatorioGerencialMFDTEF(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoNaoFiscalVinculadoMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMFD(NumeroSerie : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmwareMFD(VersaoFirmware : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CNPJMFD(CNPJ : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoEstadualMFD(InscricaoEstadual : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoMunicipalMFD(InscricaoMunicipal : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoOperacionalMFD(TempoOperacional : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosEmitindoDocumentosFiscaisMFD(Minutos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscaisMFD(Contadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamentoMFD(FormasPagamento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscalMFD(Recebimentos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRelatorioGerencialMFD(Relatorios : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorComprovantesCreditoMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorRelatoriosGerenciaisMFD (Relatorios : String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorCupomFiscalMFD(CuponsEmitidos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorFitaDetalheMFD(ContadorFita : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMemoriaMFD(NumeroSerieMFD : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReducoesRestantesMFD(Reducoes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducaoMFD(DadosReducao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraChequeMFD(CodigoCMC7 : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeChequeMFD(NumeroBanco, Valor, Favorecido, Cidade, Data, Mensagem, ImpressaoVerso, Linhas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD(var ACK, ST1, ST2, ST3 : Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreBilhetePassagemMFD(Embarque, Destino, Linha, Agencia, Data, Hora, Poltrona, Plataforma, TipoPassagem: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoItemMFD( cFlag, cItem: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TamanhoTotalMFD( cTamanhoMFD: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalRecebimentoMFD( cFlag, cTipo, cValor: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalMFD( cFlag, cTipo, cValor: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalMFD( cFlag: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalRecebimentoMFD( cFlag: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_PercentualLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraUltimoDocumentoMFD( cDataHora: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumoMFD:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumoMFD';
function Bematech_FI_RelatorioTipo60AnaliticoMFD: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60AnaliticoMFD';
function Bematech_FI_ValorFormaPagamentoMFD( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorTotalizadorNaoFiscalMFD( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioSintegraMFD( iRelatorios : Integer;
                                           cArquivo    : String;
                                           cMes        : String;
                                           cAno        : String;
                                           cRazaoSocial: String;
                                           cEndereco   : String;
                                           cNumero     : String;
                                           cComplemento: String;
                                           cBairro     : String;
                                           cCidade     : String;
                                           cCEP        : String;
                                           cTelefone   : String;
                                           cFax        : String;
                                           cContato    : String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMF( Arquivo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RegistrosTipo60: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RegistrosTipo60';
function Bematech_FI_FormatoDadosMFD( ArquivoOrigem   : String;
                                      ArquivoDestino  : String;
                                      TipoFormato     : String;
                                      TipoDownload    : String;
                                      ParametroInicial: String;
                                      ParametroFinal  : String;
                                      UsuarioECF      : String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções disponíveis somente na impressora fiscal MP-2000 TH FI versão 01.00.02
function Bematech_FI_AtivaDesativaVendaUmaLinhaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaAlinhamentoEsquerdaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaCorteProximoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaTratamentoONOFFLineMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_StatusEstendidoMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFlagCorteMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoRestanteComprovanteMFD( cTempo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UFProprietarioMFD( cUF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotalUltimaReducaoMFD( cGT: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimentoUltimaReducaoMFD( cData: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalComprovanteNaoFiscalMFD( cSubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimCOOsMFD( cCOOIni, cCOOFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimGTsMFD( cGTIni, cGTFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções para a impressão de Código de Barras

function Bematech_FI_TerminaFechamentoCupomCodigoBarrasMFD( cMensagem: string;
                                                            cTipoCodigo: string;
                                                            cCodigo: string;
                                                            iAltura: integer;
                                                            iLargura: integer;
                                                            iPosicaoCaracteres: integer;
                                                            iFonte: integer;
                                                            iMargem: integer;
                                                            iCorrecaoErros: integer;
                                                            iColunas: integer ): Integer; StdCall; External 'BEMAFI32.DLL';

function AbrirPortaECF_Bematech_MP25_FI : boolean ;
function FecharPortaECF_Bematech_MP25_FI : boolean ;

function FecharCupomFiscal_Bematech_MP25_FI(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano :string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;
function EnviaFP_Bematech_MP25_FI(Descricao_FormaPagamento : string; Valor : double) : boolean ;

function EmiteRelatorioGerencial_Bematech_MP25_FI(Texto:String):Boolean;
function FechamentoRelatorioGerencial_Bematech_MP25_FI():Boolean;

function EmiteCNFNV_Bematech_MP25_FI(Identificador, Cod_Numerario : string; Valor:double) : boolean ;
function Autenticacao_Bematech_MP25_FI : boolean ;

function AbrirCupomFiscal_Bematech_MP25_FI(Var NroCupom : String) : boolean ;
function ImprimeItem_Bematech_MP25_FI(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;
function CancelaItem_Bematech_MP25_FI(Posicao: String) : boolean ;
function CancelarCupomFiscal_Bematech_MP25_FI : boolean ;

function AbrirGaveta_Bematech_MP25_FI : Boolean;
function Guilhotina_Bematech_MP25_FI : boolean ;

function AbrirCNFV_Bematech_MP25_FI( Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String ) : Boolean ;
function LinhaTextoLivre_Bematech_MP25_FI(Texto : string) : boolean ;
function FecharCNFV_Bematech_MP25_FI : Boolean ;


implementation

uses UnitCheckoutLibrary, DB, UnitLibrary, DataModulo ;

function EmiteRelatorioGerencial_Bematech_MP25_FI(Texto:String):Boolean;
begin
  if Bematech_FI_RelatorioGerencial(Texto) = 1 then
    EmiteRelatorioGerencial_Bematech_MP25_FI := True
  else
    EmiteRelatorioGerencial_Bematech_MP25_FI := False;
end;

function FechamentoRelatorioGerencial_Bematech_MP25_FI():Boolean;
begin
   if Bematech_FI_FechaRelatorioGerencial = 1 then
     FechamentoRelatorioGerencial_Bematech_MP25_FI := True
   else
     FechamentoRelatorioGerencial_Bematech_MP25_FI := False;
end;

function AbrirCupomFiscal_Bematech_MP25_FI(Var NroCupom : String) : boolean ;
var iConta : Integer;
begin
  if Bematech_FI_AbreCupom(Pchar('')) = 1 then
    begin
      NroCupom := '      ';
      Bematech_FI_NumeroCupom( NroCupom );
    end;
  if NroCupom <> '' then
    AbrirCupomFiscal_Bematech_MP25_FI := true
  else
    AbrirCupomFiscal_Bematech_MP25_FI := false;

end;

function ImprimeItem_Bematech_MP25_FI(Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: Double; Casas_Decimais: Integer; Valor_Unitario: Double; Tipo_de_Desconto: String; Valor_do_Desconto: Double ): boolean ;
var Valor_Unitario_ECF, Valor_Desconto_ECF, Quantidade_ECF, FormatSTRValor, FormatSTRQTde : String;
var TotalItemECF, TotalItemCalc : Double;
begin
 {Parâmetros da DLL:
  Codigo: STRING até 13 caracteres com o código do produto.
  Descricao: STRING até 29 caracteres com a descrição do produto.
  Aliquota: STRING com o valor ou o índice da alíquota tributária. Se for o valor deve ser informado com o tamanho de 4 caracteres ou 5  com a  vírgula. Se for o índice da alíquota deve ser 2 caracteres. Ex. (18,00 para o valor ou  05 para o índice).
  TipoQuantidade: 1 (um) caracter indicando o tipo de quantidade. I - Inteira e F - Fracionária.
  Quantidade: STRING com até 4 dígitos para quantidade inteira e 7 dígitos para quantidade fracionária. Na quantidade fracionária são 3 casas decimais.
  CasasDecimais: INTEIRO indicando o número de casas decimais para o valor unitário (2 ou 3).
  ValorUnitario: STRING até 8 dígitos para valor unitário.
  TipoDesconto: 1 (um) caracter indicando a forma do desconto. '$' desconto por valor e '%' desconto percentual.
  ValorDesconto: String com até 8 dígitos para desconto por valor (2 casas decimais) e 4 dígitos para desconto percentual.}

  Case DM.SQLTerminalAtivo.FieldByName('TERMINRODECVALORUNIT').AsInteger of
  2: FormatSTRValor := '0.00';
  3: FormatSTRValor := '0.000';
  End;
  Case DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger of
  2: FormatSTRQTde := '0.00';
  3: FormatSTRQTde := '0.000';
  End;

  Valor_Unitario_ECF := FormatFloat(FormatSTRValor,Valor_Unitario);

  if Frac(Quantidade) > 0 then
    begin
      Tipo_de_Quantidade := 'F';
      Quantidade_ECF     := FormatFloat(FormatSTRQTde,Quantidade);
      Valor_Desconto_ECF := FormatFloat('00.00',Valor_do_Desconto);
      if Bematech_FI_VendeItem(copy(Codigo,1,13),copy(Descricao,1,29),Aliquota,Tipo_de_Quantidade,Quantidade_ECF,dm.SQLTerminalAtivo.FieldByName('TERMINRODECVALORUNIT').AsInteger,Valor_Unitario_ECF,Tipo_de_Desconto,Valor_Desconto_ECF) = 1 then
        Result := True
      else
        Result := False;
    end
  else
    begin
      Tipo_de_Quantidade := 'I';
      Valor_Unitario_ECF := FormatFloat(FormatSTRValor,Valor_Unitario);
      Quantidade_ECF     := FormatFloat('0000',Quantidade);
      Valor_Desconto_ECF := FormatFloat('00.00',Valor_do_Desconto);
      if Bematech_FI_VendeItem(copy(Codigo,1,13),copy(Descricao,1,29),Aliquota,Tipo_de_Quantidade,Quantidade_ECF,DM.SQLTerminalAtivo.FieldByName('TERMINRODECVALORUNIT').AsInteger,Valor_Unitario_ECF,Tipo_de_Desconto,Valor_Desconto_ECF) = 1 then
        Result := True
      else
        Result := False;
    end;
end;

function CancelaItem_Bematech_MP25_FI(Posicao: String) : boolean ;
begin
  if Bematech_FI_CancelaItemGenerico(Posicao) = 1 then
    Result := True
  else
    Result := False;
end ;

function AbrirGaveta_Bematech_MP25_FI : Boolean;
begin

  if Bematech_FI_AcionaGaveta = 1 then
    AbrirGaveta_Bematech_MP25_FI := True
  else
    AbrirGaveta_Bematech_MP25_FI := False;
end ;

function EmiteCNFNV_Bematech_MP25_FI(Identificador, Cod_Numerario : string; Valor:double) : boolean ;
Var
  Vlr, NumerarioDescr : string ;
begin
  Vlr := FormatCurr('##0.00',Valor);
  NumerarioDescr := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA30DESCR', Cod_Numerario);
  if Bematech_FI_RecebimentoNaoFiscal(Identificador,Vlr,NumerarioDescr) = 1 then
    EmiteCNFNV_Bematech_MP25_FI := True
  else
    EmiteCNFNV_Bematech_MP25_FI := False;
end ;

function AbrirCNFV_Bematech_MP25_FI( Forma_de_Pagamento: String; Valor_Pago: Double; Numero_do_Cupom: String ) : Boolean ;
begin
  if Bematech_FI_AbreComprovanteNaoFiscalVinculado(Forma_de_Pagamento,pchar( '' ),pchar( '' )) = 1 then
    AbrirCNFV_Bematech_MP25_FI := True
  else
    AbrirCNFV_Bematech_MP25_FI := False;
end ;

function LinhaTextoLivre_Bematech_MP25_FI(Texto : string) : boolean ;
begin
  if Bematech_FI_UsaComprovanteNaoFiscalVinculado(Texto + Chr(10)) = 1 then
    LinhaTextoLivre_Bematech_MP25_FI := True
  else
    LinhaTextoLivre_Bematech_MP25_FI := False;
end ;

function FecharCNFV_Bematech_MP25_FI : Boolean ;
begin
  if Bematech_FI_FechaComprovanteNaoFiscalVinculado() = 1 then
    FecharCNFV_Bematech_MP25_FI := True
  else
    FecharCNFV_Bematech_MP25_FI := False;
end ;

function CancelarCupomFiscal_Bematech_MP25_FI : boolean ;
begin
  if Bematech_FI_CancelaCupom = 1 then
    CancelarCupomFiscal_Bematech_MP25_FI := True
  else
    CancelarCupomFiscal_Bematech_MP25_FI := False;
end ;

function Autenticacao_Bematech_MP25_FI : boolean ;
begin
  if Bematech_FI_Autenticacao = 1 then
    Autenticacao_Bematech_MP25_FI := True
  else
    Autenticacao_Bematech_MP25_FI := False;
end ;

function EnviaFP_Bematech_MP25_FI(Descricao_FormaPagamento : string; Valor : double) : boolean ;
Var
  Vlr : string ;
begin
  Vlr := FormatFloat('##0.00',Valor);
  if Bematech_FI_EfetuaFormaPagamento(Descricao_FormaPagamento, Vlr) = 1 then
    EnviaFP_Bematech_MP25_FI := True
  else
    EnviaFP_Bematech_MP25_FI := False;
end ;

function FecharCupomFiscal_Bematech_MP25_FI(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano :string; VlrImpostoMedio, AliqImpostoMedio : Double) : boolean ;
var
  MsgFimCupom, NumerarioDescricao, VlrAcrescDescSTR : string ;
  TotalVista,  TotalPrazo, VlrRectoECF : double ;
  I : Integer;
begin

  // INICIAR FECHAMENTO CUPOM
  VlrAcrescDescSTR := FormatFloat('##0.00',VlrAcrescDesc);

  if TipoAcrescDesc = 'A' then
    Bematech_FI_IniciaFechamentoCupom( 'A', '$', VlrAcrescDescSTR )
  else
    Bematech_FI_IniciaFechamentoCupom( 'D', '$', VlrAcrescDescSTR ) ;

  // CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
    begin
      TotalPrazo :=  TotalPrazo + StrToFloat(FormatCurr('##0.00',SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat));
      SQLFPPrazo.Next;
    end ;

  // ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First;
  while not SQLFPVista.Eof do
    begin
      NumerarioDescricao := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPVista.Fieldbyname('NUMEICOD').AsString);

      EnviaFP_Bematech_MP25_FI(NumerarioDescricao, StrToFloat(FormatCurr('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)));

      TotalVista := TotalVista + StrToFloat(FormatCurr('##0.00',SQLFPVista.Fieldbyname('VALORPARC').AsFloat)) ;
      SQLFPVista.Next ;
    end ;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
    begin
      NumerarioDescricao := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      EnviaFP_Bematech_MP25_FI(NumerarioDescricao, TotalPrazo);
    end;

  //IMPRIMIR DADOS DO CLIENTE
  if ImprimeDadosClienteCupom = 'S' then
    begin
      if dm.SQLEmpresaEMPRCLUCROREAL.Value = 'N' then
        MsgFimCupom := 'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT' + Chr(10) +
                       'ID:' + IDCupom +'-Pl:'+PlacaCliente+ '-KM:' + KmCliente + Chr(10) +
                       'USUARIO : ' + UsuarioAtualNome + Chr(10) +
                       'VENDEDOR: ' + Vendedor + Chr(10) +
                       'PLANO   : ' + Plano    + Chr(10) +
                       'CLIENTE : ' + copy(ConverteAcentos(NomeCli),1,30)   + Chr(10) +
                       'CNPJ/CPF: ' + DocumentoCli                          + Chr(10) +
                       'END: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'CID: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) + Chr(10) +
                       'Doc.emit p/empr.peq.Porte. Nao gera ICMS'
      else
        MsgFimCupom := 'Val aprox Tributos R$ ' + FormatFloat('##0.00',VlrImpostoMedio) + ' ('+FormatFloat('##0.00',AliqImpostoMedio)+'%) IBPT' + Chr(10) +
                       'ID:' + IDCupom +'-Pl:'+PlacaCliente+ '-KM:'+KmCliente + Chr(10) +
                       'USUARIO : ' + UsuarioAtualNome + Chr(10) +
                       'VENDEDOR: ' + Vendedor + Chr(10) +
                       'PLANO   : ' + Plano    + Chr(10) +
                       'CLIENTE : ' + copy(ConverteAcentos(NomeCli),1,30)   + Chr(10) +
                       'CNPJ/CPF: ' + DocumentoCli                          + Chr(10) +
                       'END: ' + ConverteAcentos(Copy(EnderecoCli, 01, 35)) + Chr(10) +
                       'CID: ' + ConverteAcentos(Copy(CidadeCli,   01, 35)) ;
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
  if Bematech_FI_TerminaFechamentoCupom( MsgFimCupom ) = 1 then
    FecharCupomFiscal_Bematech_MP25_FI := True
  else
    FecharCupomFiscal_Bematech_MP25_FI := False;
end;

function AbrirPortaECF_Bematech_MP25_FI : boolean ;
begin
  if Bematech_FI_AbrePortaSerial = 1 then
    AbrirPortaECF_Bematech_MP25_FI := True
  else
    AbrirPortaECF_Bematech_MP25_FI := False ;
end ;

function FecharPortaECF_Bematech_MP25_FI : boolean ;
begin
  if Bematech_FI_FechaPortaSerial = 1 then
    FecharPortaECF_Bematech_MP25_FI := True
  else
    FecharPortaECF_Bematech_MP25_FI := False ;
end ;

function Guilhotina_Bematech_MP25_FI : boolean ;
begin
  {Onde 1 = Corte Total, 0 = Corte Parcial}
 { if Bematech_FI_AcionaGuilhotinaMFD(1) = 1 then
    Guilhotina_Bematech_MP25_FI := True
  else
    Guilhotina_Bematech_MP25_FI := False; }
end ;

end.
