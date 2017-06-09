unit ECF_AFRAC;

interface

uses RXCtrls, RxQuery, Forms, DBTables, SysUtils, Dialogs, Windows ;
   function AFRAC_AbrirCupom: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_000: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_VenderItem(codigo, Descricao, Qtde, Valor_Unitario,Acres_desc,
                             Perc_valor, Valor_acresdesc,  Valor_total, Aliquota, Unidade,
                             ForcarImpressaoUmaLinha : pchar): Integer; Stdcall; external 'ecfafrac.dll';
   function AFRAC_001(codigo, Descricao, Qtde, Valor_Unitario,Acres_desc, Perc_valor,
                      Valor_acresdesc,  Valor_total, Aliquota, Unidade,
                      ForcarImpressaoUmaLinha : pchar): Integer; Stdcall; external 'ecfafrac.dll';
   function AFRAC_AcrescimoDescontoItem(acres_desc, Perc_Valor, Valor_AcresDesc: Pchar ):
                                        integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_002(acres_desc, Perc_Valor, Valor_AcresDesc: Pchar ): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_CancelarItem(NumeroItem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_003(NumeroItem: integer): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_AcrescimoDescontoCupom(acres_desc:PChar; perc_valor: PChar;
               ValorAcresDesc: PChar; Descricao: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_004(acres_desc:PChar; perc_valor: PChar;
               ValorAcresDesc: PChar; Descricao: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_FecharAcrescimoDesconto(padrao_desc: Pchar; padrao_acres: Pchar;
                           ValorLiquido: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_005(padrao_desc: Pchar; padrao_acres: Pchar;
                   ValorLiquido: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_FormaPagamento(descForma: Pchar; Indice: Pchar; Valor: PChar;
                                Mensagem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_006(descForma: Pchar; Indice: Pchar; Valor: PChar;
                                Mensagem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_InformarCNPJ(cnpj:Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_007(cnpj:Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_InformarRazaoSocial(razao:Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_008(razao:Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_InformarInscricao(ie: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_009(ie: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_InformarEndereco(endereco: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_010(endereco: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_InformarGerente(gerente: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_011(gerente: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_InformarOperador(operador: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_012(operador: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_InformarVendedor(Vendedor: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_013(vendedor: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_InformarMensagemCupom(Mensagem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_014(Mensagem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_FecharCupom(vinculado: PChar; Adicional:PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_015(vinculado: PChar; Adicional:PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_CancelarCupom(COO: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_016(COO: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_AbrirVinculado(coo:Pchar; FormPagto: Pchar; valor: PChar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_100(coo:Pchar; FormPagto: Pchar; valor: PChar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ImprimirVinculado(Linha1, Linha2: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_101(Linha1, Linha2: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_FecharVinculado: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_102: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_CancelarVinculado: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_103: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_AbrirNaoFiscalNaoVinculado: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_104: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_RegistrarNaoFiscal(Indice: Pchar; Valor: PChar; Mensagem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_105(Indice: Pchar; Valor: PChar;
                          Mensagem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_CancelarNaoVinculado: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_106: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_AbrirRelatorioGerencial(indice: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_107(indice: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ImprimirRelatorioGerencial(Linha: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_108(Linha: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_FecharRelatorioGerencial: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_109: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LeituraX: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_200: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ReducaoZ(data: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_201(data: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_EmitirLeituraMemoriaFiscal(tipo, inicio: Pchar;
            final: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_202(tipo, inicio: Pchar; final: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_GravarLeituraX(arquivo: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_203(arquivo: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_GravarLeituraMemoriaFiscal(tipo, Inicio, Final, arquivo: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_204(tipo: Pchar; Inicio, Final: PChar; arquivo: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_Autenticar(Linha: Pchar; Mensagem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_300(Linha: Pchar; Mensagem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_RepetirAutenticacao: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_301: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_AbrirGaveta: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_325: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_VerificarGaveta(estado: char): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_326(estado: char): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ChequeProgramarMoeda(MoedaSingular, MoedaPlural: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_350(MoedaSingular, MoedaPlural: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ChequeImprimir(Banco: Pchar; Valor: PChar; Favorecido: Pchar;
                    Cidade: Pchar; data: PChar; BomPara: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_351(Banco: Pchar; Valor: PChar; Favorecido: Pchar;
                    Cidade: Pchar; data: PChar; BomPara: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ChequeConfiguraFormatacao(FormatoValor, FormatoExtenso, FormatoFavorecido,
                                 FormatoCidade, FormatoData, FormatoBomPara: Pchar;
                                 CruzarCheque:PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_352(FormatoValor, FormatoExtenso, FormatoFavorecido, FormatoCidade,
                    FormatoData, FormatoBomPara: Pchar; CruzarCheque:PChar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ChequeImprimirVerso(Texto: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_353(Texto: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LerCMC7(CMC7Lido: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_354(CMC7Lido: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ChequeExpulsar: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_355: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ProgramarTributacao(Tributacao: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_400(Tributacao: Pchar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_EntrarHorarioVerao: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_401: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_SairHorarioVerao: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_402: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_AjustarRelogio: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_403: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ArrendondarTruncar(Metodo: char): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_404(Metodo: char): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ForcarImpactoAgulhas(Forcar: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_405(Forcar: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ConfigurarLinhasEntreCupons(Quantidade: integer): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_406(Quantidade: integer): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ProgramarTotalizadorNaoSujeitoICMS(Indice, Totalizador, TipoOperacao,
                                                     Vinculado, FrmPagto,
                                                     IndFrmPagto: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_407(Indice: Pchar; Totalizador: Pchar; TipoOperacao: char;
                     Grupo: Pchar; Vinculado: char; FrmPagto: PChar;
                     IndFrmPagto: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ProgramarRelatorioGerencial(Indice: Pchar;
                                              Descricao: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_408(Indice: Pchar;Descricao: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LerIndiceRelatorioGerencial(Indice: Pchar;
                                              Descricao: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_409(Indice: Pchar;Descricao: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ProgramarFormasDePagamento(Indice: Pchar; Descricao: PChar; Vinculado: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_410(Indice: Pchar; Descricao: Pchar;
                    Vinculado: char): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LerFormaDePagamento(Indice: Pchar; Descricao: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_411(Indice: Pchar; Descricao: Pchar;
                    Vinculado: char): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_SetaPadrao(Versao: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_412(Versao: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_AbrirDia(data: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_413(data: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LerInformacaoImpressora(CodInformacao, Retorno: PChar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_500(CodInformacao: Pchar; Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LerAliquotas(retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_501(retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LerValorTotalAliquota(Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_502(Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LerTotalizadoresNSICMS(Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_503(Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LerFormasPagamento(Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_504(Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_AbrirPorta(Porta: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_600(Porta: Pchar):Integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_FecharPorta: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_601: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_VerificarEstado(Retorno: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_602(Retorno: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_Retornar_Features(Retorno: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_603(Retorno: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_PegarCodigoErro(codigoErro, Mensagem, Acao: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_604(codigoErro: Pchar; Mensagem: Pchar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_ConfigurarFonte(fonte: integer): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_605(fonte: integer): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_InformarFonte(ListaFonte: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_606(ListaFonte: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_Configura: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_607: integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_Indice(Funcao: Pchar; Entrada: PChar; Retorno: PChar):integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_608(Funcao: Pchar; Entrada: PChar; Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_Fabricante(Entrada: PChar; Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_700(Entrada: PChar; Retorno: PChar): integer; stdcall; external 'ecfafrac.dll';
   function AFRAC_LerValorFormaPagamento (indice, descricao, valor: pchar) : Integer; StdCall; external 'ecfafrac.dll';
   function AFRAC_RetornaErro() : String;

implementation
function AFRAC_RetornaErro() : String;
var codigoErro: array[0..4] of char;
    mensagem, acao: array[0..200] of char;
begin
   codigoerro:=#0;
   mensagem:=#0;
   acao:=#0;
   AFRAC_PegarCodigoErro(codigoErro, Mensagem, Acao);
   if StrPas(codigoerro) <> '0000' then
     Result := 'Mensagem erro: ' + strpas(codigoerro) + ' ' + strpas(mensagem)
   else
     Result := '';
end;
end.
