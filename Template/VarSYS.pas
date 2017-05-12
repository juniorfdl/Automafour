unit VarSYS;
interface
uses
  DB, StdCtrls, sysutils;
Const
  MensagemLookUp='Não Encontrado';


Var
  UsuarioCorrente,
  EmpresaCorrente,
  TerminalCorrente, TimeOutIntegrador, TimeOutIntegradorInicial : Integer;
  bRetaguarda,
  Exporta,
  UsuarioMaster, TranspVeiculo, EsperaParaPerguntar : Boolean;
  FieldLookup      : TField;
  MatrizFilial,
  FieldOrigem, TimeOutIntegradorSTR      : String;
  DataSetLookup    : TDataSet;
  EditLookup       : TEdit;
  DSMasterSys      : TDataSource;
  ClienteCadastro, UsaPrecoVenda, ProdutoDescricao, ProdutoReferencia, IntegracaoAutomatica, ObsCliente : String;
  ValorVenda       : Double;

function TabelaNaLista(Tabela : string) : boolean;
function TabelaNaListaExportaCadastro(Tabela : String) : Boolean;

implementation

function TabelaNaLista(Tabela : string) : boolean ;
begin
  // Lista de tabelas que nao devem ser importadas ou exportadas, qdo uma Filial esta Exportando
  Result := False;
  Tabela := UpperCase(Tabela);
  if (Tabela = 'ALINEA') or
     (Tabela = 'BANCO') or
     (Tabela = 'CARTAAVISOCOBRANCA') or
     (Tabela = 'CARTAAVISOSPC') or
     (Tabela = 'CARTAPRIMEIROAVISO') or
     (Tabela = 'CARTASEGUNDOAVISO') or
     (Tabela = 'CFOP') or
     (Tabela = 'CLASSE') or
     (Tabela = 'CLASSEMODULO') or
     (Tabela = 'CLASSETABELA') or
     (Tabela = 'CLASSEUSUARIO') or
     (Tabela = 'CLASSIFICACAOFISCAL') or
     (Tabela = 'COBRADOR') or
     (Tabela = 'CONFIGCOMPRAS') or
     (Tabela = 'CONFIGCONTA') or
     (Tabela = 'CONFIGCREDIARIO') or
     (Tabela = 'CONFIGETIQUETACODIGOBARRA') or
     (Tabela = 'CONFIGGERAL') or
     (Tabela = 'CONFIGVENDA') or
     (Tabela = 'CONVENIO') or
     (Tabela = 'COR') or
     (Tabela = 'DECRETO') or
     (Tabela = 'ECFALIQUOTAICMS') or
     (Tabela = 'EMPRESA') or
     (Tabela = 'EMPRESASERIE') or
     (Tabela = 'FECHAMENTOCAIXA') or
     (Tabela = 'FORNECEDOR') or
     (Tabela = 'GRADE') or
     (Tabela = 'GRADETAMANHO') or
     (Tabela = 'GRUPO') or
     (Tabela = 'HISTORICOPADRAO') or
     (Tabela = 'ICMS') or
     (Tabela = 'ICMSUF') or
     (Tabela = 'MARCA') or
     (Tabela = 'MOTIVOBLOQUEIO') or
     (Tabela = 'NUMERARIO') or
     (Tabela = 'NUMERARIOTOTALIZADOR') or
     (Tabela = 'NUMERARIOTOTALIZADORECF') or
     (Tabela = 'OPERACAOBANCO') or
     (Tabela = 'OPERACAOCAIXA') or
     (Tabela = 'OPERACAOCAIXATOTALIZADOR') or
     (Tabela = 'OPERACAOESTOQUE') or
     (Tabela = 'OPERACAOTESOURARIA') or
     (Tabela = 'PLANODECONTAS') or
     (Tabela = 'PLANOPAGAMENTO') or
     (Tabela = 'PLANOPAGAMENTOPARCELA') or
     (Tabela = 'PLANORECEBIMENTO') or
     (Tabela = 'PLANORECEBIMENTOPARCELA') or
     (Tabela = 'PORTADOR') or
     (Tabela = 'PRODUTO') or
     (Tabela = 'PRODUTOREAJUSTE') or
     (Tabela = 'PROFISSAO') or
     (Tabela = 'PROVEDORCARTAO') or
     (Tabela = 'SERIE') or
     (Tabela = 'SITUACAOOS') or
     (Tabela = 'SUBGRUPO') or
     (Tabela = 'TIPOCLIENTE') or
     (Tabela = 'TIPOCUSTO') or
     (Tabela = 'TIPODOCUMENTO') or
     (Tabela = 'TIPOFORNECEDOR') or
     (Tabela = 'TIPOMOVIMENTOBANCO') or
     (Tabela = 'TIPOOS') or
     (Tabela = 'TIPOSERVICOOS') or
     (Tabela = 'TIPOVENDA') or
     (Tabela = 'TOTALIZADORCAIXA') or
     (Tabela = 'TRANSPORTADORA') or
     (Tabela = 'UNIDADE') or
     (Tabela = 'USUARIO') or
     (Tabela = 'VARIACAO') or
     (Tabela = 'VENDEDOR') or
     (Tabela = 'LOTE') or
     (Tabela = 'VENDEDORCOMISSAO') then
    Result := True;
end ;

function TabelaNaListaExportaCadastro(Tabela : String) : Boolean;
begin
  Result := False;
  Tabela := UpperCase(Tabela);
  if (Tabela = 'ALINEA') or
     (Tabela = 'BANCO') or
     (Tabela = 'CFOP') or
     (Tabela = 'CLASSIFICACAOFISCAL') or
     (Tabela = 'CLIENTE') or
     (Tabela = 'CLIENTEAUTORIZACOMPRA') or
     (Tabela = 'CLIENTECONTATO') or
     (Tabela = 'CLIENTEDEPENDENTE') or
     (Tabela = 'CLIENTEENDERECOCOBRANCA') or
     (Tabela = 'CLIENTEENDERECOCOMERCIAL') or
     (Tabela = 'CLIENTEENDERECOENTREGA') or
     (Tabela = 'CLIENTEHISTORICO') or
     (Tabela = 'CLIENTERECEITUARIO') or
     (Tabela = 'CLIENTEREFERENCIA') or
     (Tabela = 'COBRADOR') or
     (Tabela = 'CONVENIO') or
     (Tabela = 'COR') or
     (Tabela = 'DECRETO') or
     (Tabela = 'ECF') or
     (Tabela = 'ECFALIQUOTAICMS') or
     (Tabela = 'EMPRESA') or
     (Tabela = 'FORNECEDOR') or
     (Tabela = 'GRADE') or
     (Tabela = 'GRADETAMANHO') or
     (Tabela = 'GRUPO') or
     (Tabela = 'HISTORICOPADRAO') or
     (Tabela = 'ICMS') or
     (Tabela = 'ICMSUF') or
     (Tabela = 'INTEGRACAO') or
     (Tabela = 'MARCA') or
     (Tabela = 'MOTIVOBLOQUEIO') or
     (Tabela = 'NUMERARIO') or
     (Tabela = 'NUMERARIOTOTALIZADOR') or
     (Tabela = 'NUMERARIOTOTALIZADORECF') or
     (Tabela = 'LOTE') or
     (Tabela = 'MARCA') or
     (Tabela = 'MOTIVOBLOQUEIO') or
     (Tabela = 'OPERACAOBANCO') or
     (Tabela = 'OPERACAOCAIXA') or
     (Tabela = 'OPERACAOCAIXATOTALIZADOR') or
     (Tabela = 'OPERACAOESTOQUE') or
     (Tabela = 'OPERACAOTESOURARIA') or
     (Tabela = 'PLANODECONTAS') or
     (Tabela = 'PLANOPAGAMENTO') or
     (Tabela = 'PLANOPAGAMENTOPARCELA') or
     (Tabela = 'PLANORECEBIMENTO') or
     (Tabela = 'PLANORECEBIMENTOPARCELA') or
     (Tabela = 'PORTADOR') or
     (Tabela = 'PRODUTO') or
     (Tabela = 'PRODUTOCOMPOSICAO') or
     (Tabela = 'PRODUTOFORNECEDOR') or
     (Tabela = 'PRODUTOREAJUSTE') or
     (Tabela = 'PRODUTOSALDO') or
     (Tabela = 'PROFISSAO') or
     (Tabela = 'PROVEDORCARTAO') or
     (Tabela = 'SERIE') or
     (Tabela = 'SITUACAOOS') or
     (Tabela = 'SUBGRUPO') or
     (Tabela = 'TABELAPRECO') or
     (Tabela = 'TABELAPRECOPRODUTO') or
     (Tabela = 'TERMINAL') or
     (Tabela = 'TIPOCLIENTE') or
     (Tabela = 'TIPOCUSTO') or
     (Tabela = 'TIPODOCUMENTO') or
     (Tabela = 'TIPOFORNECEDOR') or
     (Tabela = 'TIPOMOVIMENTOBANCO') or
     (Tabela = 'TIPOOS') or
     (Tabela = 'TIPOSERVICOOS') or
     (Tabela = 'TIPOVENDA') or
     (Tabela = 'TOTALIZADORCAIXA') or
     (Tabela = 'TRANSPORTADORA') or
     (Tabela = 'UNIDADE') or
     (Tabela = 'USUARIO') or
     (Tabela = 'VARIACAO') or
     (Tabela = 'VENDEDOR') or
     (Tabela = 'VENDEDORCOMISSAO') then
     Result := True;
end;
end.

