unit UnitLibrary;

interface

uses Variants, MemTable, Menus, Stdctrls, Classes, Windows, Forms, WinINet,
  RxQuery, DBTables, Controls, Dialogs, DB, JPeg, Sysutils, DBCtrls,
  Registry, CommDlg, Messages, Graphics, IniFiles, FileCtrl, Math, DateUtils, StrUtils;
type
  TInfoRetornoUser = record
    CampoRetorno: string;
    CodUsuarioAutenticado: integer;
    NomeUsuarioAutenticado: string;
    ModalResult: TModalResult;
  end;
type
  TinfoRetornoUltCompra = record
    UltimaCompra: string;
    OrigemCompra: string;
    Documento: string;
  end;
const
  ScreenWidth: Longint = 800;
  ScreenHeight: Longint = 600;
var
  Enter, Esc, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12: Word;
  WBookmark: TBookmark;
  VarCriaNovaNota,
    DelContrLista,
    MoviCaixConcluido,
    RetornoConsulta,
    ConsultandoPlano,
    AtualizarPedidos,
    EnviouNumerariosECF, ProcuraProdutoPelaRef08Char, Gravou, ImpValeTroco, CpfOK, CodRapido, ImpCupomAutomatico, PDV_OffLine: boolean;
  UltimoCodigo,
    NumerarioAtual,
    TerminalAtual,
    TerminalAnterior,
    NumerarioVista,
    NumerarioPrazo,
    PlanoVenda,
    TermPVImp,
    VendedorVenda,
    CodPVImp,
    ConvenioVenda,
    TipoVenda,
    CodUsuarioAutorizouOperacao,
    NroOrdemCompraConvenio,
    CodProxCntRecTemp, CodProxCupomTemp, CodProxMovCxTemp,
    NumItem, ProxCod, CodNextPreVenda,
    NroViasTEF, vCLIEINDIACHQSJURO, CodMesa, CodConta, ProdutoAgrupGrade_MovDiv, VelocECFAtual: Integer;
  CodiProduto,
    CodiCli,
    Status,
    EstadoFechVendaAnt,
    CodigoProduto,
    CodigoBarrasProduto,
    ClienteAtual,
    TerminalModo, OrigemVenda,
    EmpresaPadrao,
    EmpresaPadraoPedidosCompra,
    ECFAtual,
    Ecf_CNFV,
    ImpNaoFiscalAtual,
    PortaImpNaoFiscalAtual,
    LeitorCodigoBarras,
    PortaLeitorCodigoBarras,
    TecladoReduzidoModelo,
    NroCupomFiscal,
    PedidosImportados,
    Ecf_CNFNV,
    Ecf_ID,
    PortaECFAtual,
    TributoTaxaCrediario,
    CamImprMatr,
    NomeLogo,
    TipoPadraoNumerarioAtual, TipoPadrao,
    Versao,
    OrigemPedidoFechamento,
    BotDef,
    EtiquetaProduto,
    EtiquetaPedidoCompra,
    EtiquetaNotaCompra,
    EtiquetaPedidoVenda,
    EtiquetaNotaVenda,
    EtiquetaMovDiversos,
    TipoDescItem,
    TipoDescFech,
    EmpresaAtualNome,
    TerminalAtualNome,
    UsuarioAtualNome,
    UsuarioAutorizouOperacao,
    NumerarioVistaDescr,
    DescrLivreProd, Densidade, Medida, Espessura, Tecido,
    ClienteVenda,
    NomeClienteVenda,
    ClienteDependente,
    ClienteDependenteNome,
    EnderecoClienteVenda,
    CidadeClienteVenda,
    FoneClienteVenda,
    BairroClienteVenda,
    DocumentoClienteVenda,
    CPFCGCClienteVenda,
    PlacaCliente,
    KmCliente,
    NomeVendedorVenda,
    ObsCupom,
    EmailCliente,
    ClienteRecto,
    EstadoFechVenda,
    ObservItem,
    WhoCallDiversos,
    CupomDigitacaoCheque,
    CupomVendaConsig,
    NumCopias,
    TerminalAtualData,
    IDPedido,
    IDChequeEmitido,
    IDChequeRecebido,
    TipoEtiqueta,
    OBSImpressaoCupom,
    MensagemVenda,
    TipoPlanoContas, TxtReciboECF, CodMotoboy, UsaTablet, ImpressoraCaixaPath, Enter_Vazio, TeleQuitado, TabInicial, F2_AUTOMATICO, DetalhesVenda, ParceiroNome, Obs_Venda, ParceiroPath, MostraCodigoBarras,
    NotaGaucha, GravarDisplaySequencial, GravarCupomCancelado, TipoHistoricoPadrao, ImprimeDadosClienteCupom, DataAniversario, Porta, TabelaMaisTerminal, IDReimprimir, ProdutoComplemento, SolicitaDataEntrega,
    OrdemGrupo, OrdemProduto, FiltraTerminal, Servidor_HostName, Servidor_Database, NroViasImpVenda: string;
  PercDesqMaxUsario, PercDesqMaxUsarioAutenticado, VlrDescPromoImportado,
    VlrBonusTroca,
    VlrLivreProd,
    ValorDiminuirAcresc,
    DescPercItem,
    DescValItem,
    ValorLimite,
    TotalProdGrade,
    TotalDescGrade,
    VarValorTroco,
    VarValorRecebido, PerJuroPlanoAoMes, Vlr_Total_Pis, Vlr_Total_Cofins, AliqOlhoImpostoSimples: Double;
  LogTotaliz: TextFile;
  //VARIAVEIS DE RETORNO DO CODIGO PRIMARIO DAS TELAS
  ProdutoCodigoRet,
    CupomOrigemTroca,
    ClienteEspecifico, ClienteCodigoRet: string;
  DataEntregaVenda,
    HoraEntrega1,
    HoraEntrega2,
    NomeSolicitante, NotaCompraNumero, NotaCompraProduto: string;
  //VARIAVEIS
  VersaoSistema,
    NomeClienteRec,
    EnderecoClienteRec,
    BairroCLienteRec,
    CidadeClienteRec,
    EstadoClienteRec,
    FoneClienteRec: string;
  NroUltItem: Integer;
  DataAtualizacaoEstoque, DataNotaCompra: TDateTime;

procedure Informa(Texto: string);
function RetornarNomeComputador: string;
function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind: string): string;
function AutenticaUsuario(UserNameDefault, CAMPO: string; var InfoRetorno: TInfoRetornoUser): string;
function ExecSql(xsql: string; Tipo: Integer = 0): TQuery;
function Pergunta(BotaoDefault, Texto: string): boolean;
procedure InformaErro(Texto: string; Abortar: Boolean; SetarFoco: TWinControl);
procedure AtualizaTotaisCabecalhoContasPagar(NroDocumento: string);
function ConverteAcentos(Str: string): string;
function TiraPontoMilhar(Numero: Double): Double;
function ConvFloatToStr(Numero: Double): string;
procedure LancaMovimentacaoBanco(Empresa, ContaCorrente, Operacao, NroCheque: integer; ValorMov: Double; BomPara, DtBaixa, DtMovimento: TDateTime; Historico, Favorecido, IDContasReceber, IDContasPagar, IDChqEmitido, IDPlanoContas: string);
function DigitVerifEAN(Cod: string): string;
procedure AtualizaSaldoContaCorrente(ContaCorrente: Integer; ValorDebito, ValorCredito: Double);
procedure LancaMovimentacaoTesouraria(Empresa, Terminal, Numerario, OperacaoTes: Integer; Valor: Double; Historico, IDContaPagar, IDContaReceber, IDCheque, IDFechaCaixa: string; DataMovimento: TDateTime; DocOrigem: string; PlanoContas: string);
function ValidaCPF(CPF: string): boolean;
function ValidaCGC(CGC: string): boolean;
function RetornaNumerario(CodNumerario: string): string;
function GeraCodigoBarras(CodigoBase: string): string;
function IsNumeric(Valor, Tipo: string): boolean;
function TrocaVirgulaPorPonto(Numero: string): string;
function TrocaPontoPorVirgula(Numero: string): string;
function RetornaUltimaCotacaoMoeda(Dia: TDateTime; Moeda: string): Double;
function RetornaTotalizadorNumerarioECF(EcfID, CodNumerario: string): string;
function ArredondaValor1(Valor: Double; NroCasasDec: Integer): Double;
procedure LancaReajustePreco(ValorVenda, ValorCompra, ValorCompraMedio, ValorCusto, ValorCustoMedio, Margem: Double; Produto: Integer);
function CalculaMargemLucro(Produto: Integer; ValorBase, ValorVenda: Double): Double;
function CalculaPrecoVenda(Produto: Integer; ValorBase, MargemLucro: Double): Double;
function ArredondaValor(Valor: Double; NroCasasDec: Integer): Double;
function EncontrouProduto(Codigo: string; Tabela: TObject): Boolean;
function PosicaoGrade(Grade, Tamanho: Integer): Integer;
procedure GravaMovimentoEstoque(SqlProd,
  SQLProdFilho,
  SQLProdSald: TQuery;
  EmprCod,
  ProdCod,
  Operacao: integer;
  Quant: double;
  EntrSai,
  DataHora,
  Valor,
  TipoMov,
  NumDocOrig,
  Lote: string);

function TiraCaracteres(SubString: string; Caracteres: string = '.,/\-'): string;
function iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;

function CalculaJuroMultaDesc(VlrVenc, TxJuroMultaDescCobr: double; DVenc, DPag, DVencOrig: TDateTime; Toler: integer; Tipo, Cupom, Parc: string): Double;
function SQLRecCount(Tabela, ClausulaWhere: string): integer;
function CalculaLimiteCredito(Cliente: string; ValorCompra: Double; SQLParcelas, SQLCliente: TQuery): Double;
function RetornaTamanhoProduto(Grade, Tamanho: string): string;
function RetornaCorProduto(Cor: string): string;
function RetornaPreco(QueryProduto: TQuery; TabelaPrecoEmpresa: string; TabelaPrecoCliente: string): double;
function TestaNotaCompraMovimentoEstoque(IDNotaCompra, IDMovDiv, IDNotaVenda, Produto: string; quantidade: double): boolean;

function DiaSemana(aData: TDateTime): string;
function SQLMax(Tabela, CampoMax, ClausulaSQL: string): Integer;
function VerificaNumeroSerie(NroSerie, CodProduto: string): string;
procedure GravaSaidaNroSerieProduto(NroSERIE, Produto, Status, EMPRICOD, CLIEA13ID, CUPOA13ID, PDVDA13ID, NOFIA13ID, MOVDA13ID: string);
procedure DeletaNumeroSerie(PRODICOD, NOFIA13ID, PDVDA13ID, MOVDA13ID: string);
procedure GravaEntradaNroSerieProduto(NroSERIE, Produto,FORNICOD, EMPRICOD, NOCPA13ID, MOVDA13ID, NOFIA13ID, PDVDA13ID: string);
procedure InsereNovoNumeroSerie(Empresa, CodigoProdutoNovo, NumeroSerie, Status : String);
procedure GravaMovimentoCaixa(SQLTotalizadorCaixa,
  SQLTotalizar: TQuery;
  WEMPRICOD,
  WTERMICOD,
  WMVCXDMOV,
  WNUMEICOD,
  WOPCXICOD,
  WUSUAICOD,
  WMVCXA15DOCORIG: string;
  WMVCXN2VLR,
  WMVCXN2VLRJURO,
  WMVCXN2VLRMULTA,
  WMVCXN2VLRDESC: double;
  WMVCXA6NUMCUPOM,
  WTIPO,
  WMVCXA255HIST,
  MOVNORMREV,
  Tipo: string);

procedure AtualizaDataQuitacaoCupom(IDCupom: string);
function Zeros(Str: string; Tam: Integer; Orient: string): string;
function RetornaTotalizadorNumerarioECFElgin_FIT(EcfID, CodNumerario: string): string;
function Spaces(Tamanho: Integer): string;
function Alltrim(const Search: string): string;
function PadR(Str: string; Tamanho: Integer): string;
function PadL(Str: string; Tamanho: Integer): string;
function CancelamentoCupom(Documento, Usuario: string): boolean;
function Preenche(STRI, FloodStr: string; TAM: Integer; JUST: Integer): string;
function AbreFechaDataset(ADataSet: TDataSet; AAbrir: Boolean = True; AAtualizar: Boolean = False): Boolean;
procedure addLog(Erro: string; Arquivo: string = '');
procedure GravaSaldoConsignacao(Empresa, CodProdutoCons, SomaSubtrai : string; Qtde : Real);
function RetornaMesExtenso(Mes:Integer):String;

procedure GravaMovimentoEstoqueSimples(SqlProd,
  SQLProdFilho,
  SQLProdSald: TQuery;
  EmprCod,
  ProdCod,
  Operacao: integer;
  Quant: double;
  EntrSai,
  DataHora,
  Valor,
  TipoMov,
  NumDocOrig,
  Lote: string);

function PlanoVistaPrazo(Plano: integer; SQLPlRec, SQLPlRecParc: TRxQuery): string;
function RetornaUltimaCompraCliente(Cliente, Vendedor: string): TinfoRetornoUltCompra;
function MontaDataSQL(ACampo: string; ADe, AAte: TDate): string;
procedure AtualizaCampoChequeEmitidoCabecalhoContasPagar(IDCheque, IDContasPagar: string);
function RetornaTotalizadorNumerarioECFDarumaFS345(EcfID, CodNumerario: string): string;
procedure AtualizaDataQuitacaoCupomConsignado(NroDocumento: string);
procedure AtualizaTotaisCabecalhoContasReceber(NroDocumento: string);
function RetornaTotalizadorIcmsECF(EcfID, CodICMS: string): string;
function VerificaLimiteCredito(Cliente: string; ValorCompra: Double; SQLParcelas, SQLCliente: TQuery): Boolean;
function AutenticaVendedor(UserNameDefault, CAMPO: string; var InfoRetorno: TInfoRetornoUser): string;
function TrataCodigoLidoPelaSerial(Data: string): string;
function CriaParcelas(SQLParcelasPrazo,
  SQLPlnRec,
  SQLPlnRecParc: TQuery;
  Entrada,
  Desconto,
  Valor: Double;
  Plano: integer;
  Data: TDateTime;
  TpRecVistaTel,
  TpRecPrazoTel,
  TpRecVistaPDV,
  TpRecPrazoPDV,
  Documento: string;
  DiminuiAcresc: double;
  var ValorJuro, Acrescimo, EntradaCalc, TaxaCred: Double): Variant;
procedure CalculaImpostosNotaFiscalItem(DataSet: TRXQuery; DataSource: TDataSource; FatorConversaoUnidade: Double);
procedure AlterPortadorTipoDocContaReceber(IdContaReceber, NovoPortador, NovoTipoDoc: string);
function LancaChequeRecebido(Empresa, Terminal, Numerario, Portador, Alinea: Integer; Cliente, Banco, Agencia, Conta, NroChequeRecbto, Titular, CPFCGC, IdContaReceber: string; ValorCheque: Double; DataVencimento: TDateTime): string;
procedure LancaValorJuroContasReceber(IDContasReceber: string; VlrJuro: Double);
function SaldoContaCorrente(Conta, Operacao, Data: string): double;
procedure RefazTabelaTemp(Tabela: TTable; Abrir: Boolean);
function DelphiAberto: Boolean;
function GetBuildInfo(Prog: string): string;
procedure CopyQueryTable(Query: TQuery; Table: TTable);
procedure BaixaChequeRecebido(IDChequeRecebido:String;DataBaixa : TDateTime);
procedure MudaAlineaCheque(IDCheque,NovaAlinea,NovoPortador : String);
procedure BaixaChequeEmitido(NroCheque:String;DataBaixa : TDateTime);
function MontaString(x: string; Tamanho: integer; tipo: Integer = 0; CompletarCom: string = ' '): string;
function RemoverZeros(S: string): string;
function VerificaDesconto(ValorRecebido, ValorDesconto, PercentualPermitido, PercentualDesconto  : Real): Boolean;
procedure GravaMovimentoNumeroSerie(Empresa, NumeroSerie, EntSai, DocOrigem, NomeCliFor : string; CodigoProdutoMovSer : Integer; DataMovimento : TDateTime);

implementation

uses DataModulo, TelaAutenticaUsuario, TelaAvisoDebito;

procedure CopyQueryTable(Query: TQuery; Table: TTable);
var
  i: Integer;
begin
  while not Query.Eof do
  begin
    Table.Append;
    for i := 0 to Query.FieldCount - 1 do
      if Query.Fields[i].AsString <> '' then
        Table.FieldByName(Query.Fields[i].FieldName).AsVariant := Query.Fields[i].AsVariant;

    Table.Post;
    Query.Next;
  end;
end;

function DelphiAberto: Boolean;
begin
  Result := FindWindow('TAppBuilder', nil) > 0;
end;

function SaldoContaCorrente(Conta, Operacao, Data: string): double;
var
  MyQuery: TQuery;
begin
  if Conta <> '' then
  begin
    MyQuery := TQuery.Create(DM);
    MyQuery.DatabaseName := 'DB';
    MyQuery.Close;
    Data := FormatDateTime('mm/dd/yyyy', StrToDate(Data));
    MyQuery.SQL.Clear;
    MyQuery.SQL.Add('select sum(MVBCN2VLRDEB) as Debitos, sum(MVBCN2VLRCRED) as Creditos from MOVIMENTOBANCO');
    MyQuery.SQL.Add('where CTCRICOD = ' + Conta);
    if Operacao <> '' then
      MyQuery.SQL.Add('and   OPBCICOD = ' + Operacao);
    MyQuery.SQL.Add('and   MVBCDLANC <= ''' + Data + '''');
    MyQuery.Open;
    if not MyQuery.EOF then
    begin
      if MyQuery.FieldByName('Creditos').Value > 0 then
        Result := MyQuery.FieldByName('Creditos').Value
      else
        Result := 0;

      if MyQuery.FieldByName('Debitos').Value > 0 then
        Result := Result - MyQuery.FieldByName('Debitos').Value;
    end
    else
      Result := 0;
    MyQuery.Destroy;
  end
  else
  begin
    MyQuery := TQuery.Create(DM);
    MyQuery.DatabaseName := 'DB';
    MyQuery.Close;
    Data := FormatDateTime('mm/dd/yyyy', StrToDate(Data));
    MyQuery.SQL.Clear;
    MyQuery.SQL.Add('select sum(MVBCN2VLRDEB) as Debitos, sum(MVBCN2VLRCRED) as Creditos from MOVIMENTOBANCO');
    MyQuery.SQL.Add('where MVBCDLANC <= ''' + Data + '''');
    MyQuery.Open;
    if not MyQuery.EOF then
    begin
      if MyQuery.FieldByName('Creditos').Value > 0 then
        Result := MyQuery.FieldByName('Creditos').Value
      else
        Result := 0;

      if MyQuery.FieldByName('Debitos').Value > 0 then
        Result := Result - MyQuery.FieldByName('Debitos').Value;
    end
    else
      Result := 0;
    MyQuery.Destroy;
  end;
end;



procedure LancaValorJuroContasReceber(IDContasReceber: string; VlrJuro: Double);
var
  Query: TrxQuery;
begin
  Query := TRxQuery.Create(DM);
  Query.DatabaseName := 'DB';
  DM.DB.StartTransaction;
  Query.SQL.Clear;
  Query.SQL.Add('UPDATE CONTASRECEBER SET Pendente=''S'', CTRCN2TOTJUROREC = ' + ConvFloatToStr(VlrJuro));
  Query.SQL.Add('WHERE CTRCA13ID = ''' + IDContasReceber + '''');
  try
    Query.ExecSQL;
    DM.DB.Commit;
  except
    on E: Exception do
    begin
      DM.DB.Rollback;
      Informa('Problemas ao lançar juros, ANOTE O ERRO: ' + E.Message);
      Application.ProcessMessages;
    end;
  end;
end;


function LancaChequeRecebido(Empresa, Terminal, Numerario, Portador, Alinea: Integer; Cliente, Banco, Agencia, Conta, NroChequeRecbto, Titular, CPFCGC, IdContaReceber: string; ValorCheque: Double; DataVencimento: TDateTime): string;
var
  SqlCheque, SqlGeral: TRxQuery;
  ProximoCodigo: Double;
  IDCheque: string;
  Sair: Boolean;
begin
  SqlCheque := TRxQuery.Create(DM);
  SqlCheque.DatabaseName := 'DB';
  Sair := False;
  while not Sair do
  begin
    try
      DM.DB.StartTransaction;
      SqlCheque.Close;
      SqlCheque.SQL.Clear;
      SqlCheque.SQL.Add('INSERT INTO CONTASRECEBER (');
      SqlCheque.SQL.Add('CTRCA13ID , ');
      SqlCheque.SQL.Add('EMPRICOD , ');
      SqlCheque.SQL.Add('TERMICOD , ');
      SqlCheque.SQL.Add('CTRCICOD , ');
      SqlCheque.SQL.Add('CLIEA13ID , ');
      SqlCheque.SQL.Add('CTRCCSTATUS , ');
      SqlCheque.SQL.Add('CTRCINROPARC , ');
      SqlCheque.SQL.Add('CTRCDVENC , ');
      SqlCheque.SQL.Add('CTRCN2VLR , ');
      SqlCheque.SQL.Add('CTRCN2DESCFIN , ');
      SqlCheque.SQL.Add('NUMEICOD , ');
      SqlCheque.SQL.Add('PORTICOD , ');
      SqlCheque.SQL.Add('CTRCN2TXJURO , ');
      SqlCheque.SQL.Add('CTRCN2TXMULTA , ');
      SqlCheque.SQL.Add('CTRCA5TIPOPADRAO , ');
      SqlCheque.SQL.Add('CTRCDULTREC , ');
      SqlCheque.SQL.Add('CTRCN2TOTREC , ');
      SqlCheque.SQL.Add('CTRCN2TOTJUROREC , ');
      SqlCheque.SQL.Add('CTRCN2TOTMULTAREC , ');
      SqlCheque.SQL.Add('CTRCN2TOTDESCREC , ');
      SqlCheque.SQL.Add('CTRCN2TOTMULTACOBR , ');
      SqlCheque.SQL.Add('EMPRICODULTREC , ');
      SqlCheque.SQL.Add('CUPOA13ID , ');
      SqlCheque.SQL.Add('TPDCICOD , ');
      SqlCheque.SQL.Add('PLCTA15COD , ');
      SqlCheque.SQL.Add('CTRCA30NRODUPLICBANCO , ');
      SqlCheque.SQL.Add('NOFIA13ID , ');
      SqlCheque.SQL.Add('CTRCDEMIS , ');
      SqlCheque.SQL.Add('PENDENTE , ');
      SqlCheque.SQL.Add('REGISTRO , ');
      SqlCheque.SQL.Add('CTRCDREABILSPC , ');
        //Dados do cheque
      SqlCheque.SQL.Add('BANCA5CODCHQ , ');
      SqlCheque.SQL.Add('CTRCA10AGENCIACHQ , ');
      SqlCheque.SQL.Add('CTRCA15CONTACHQ , ');
      SqlCheque.SQL.Add('CTRCA15NROCHQ , ');
      SqlCheque.SQL.Add('CTRCA60TITULARCHQ , ');
      SqlCheque.SQL.Add('CTRCA20CGCCPFCHQ , ');
      SqlCheque.SQL.Add('CTRCDDEPOSCHQ , ');
      SqlCheque.SQL.Add('ALINICOD , ');
      SqlCheque.SQL.Add('PDVDA13ID , ');
      SqlCheque.SQL.Add('CTRCDESTORNO, ');
      SqlCheque.SQL.Add('CTRCA13CTRCAIDCHQ ) ');
      SqlCheque.SQL.Add('VALUES ( ');

        // Valores dos campos
      SqlGeral := TRxQuery.Create(DM);
      SqlGeral.DatabaseName := 'DB';
      SqlGeral.Close;
      SqlGeral.SQL.Clear;
      SqlGeral.SQL.Add('SELECT MAX(CTRCICOD) FROM CONTASRECEBER');
      SqlGeral.Open;

      if SqlGeral.IsEmpty then
        ProximoCodigo := 1
      else
        ProximoCodigo := SqlGeral.FindField('MAX').AsFloat + 1;

      IDCheque := FormatFloat('000', Empresa) + FormatFloat('000', TerminalAtual) + FormatFloat('000000', ProximoCodigo);
      IDCheque := IDCheque + DigitVerifEAN(IDCheque);

      SqlCheque.SQL.Add('''' + IDCheque + '''' + ' , ');
      SqlCheque.SQL.Add(IntToStr(Empresa) + ' , ');
      SqlCheque.SQL.Add(IntToStr(TerminalAtual) + ' , ');
      SqlCheque.SQL.Add(FloatToStr(ProximoCodigo) + ' , ');
      SqlCheque.SQL.Add('''' + Cliente + ''' , ');
      SqlCheque.SQL.Add('''A'' , ');
      SqlCheque.SQL.Add('Null , ');
      SqlCheque.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', DataVencimento) + '''' + ' , ');
      SqlCheque.SQL.Add(ConvFloatToStr(ValorCheque) + ' , ');
      SqlCheque.SQL.Add('Null , ');
      SqlCheque.SQL.Add(IntToStr(Numerario) + ' , ');
      SqlCheque.SQL.Add(IntToStr(Portador) + ' , ');
      SqlCheque.SQL.Add('Null , ');
      SqlCheque.SQL.Add('Null , ');

      if DataVencimento <> Now then
        SqlCheque.SQL.Add('''CHQP'' , ')
      else
        SqlCheque.SQL.Add('''CHQV'' , ');

      SqlCheque.SQL.Add('Null , '); // Data ult. recbto
      SqlCheque.SQL.Add('0 , '); // Total recbto
      SqlCheque.SQL.Add('0 , '); // Total juro recbto
      SqlCheque.SQL.Add('0 , '); // Total multa recbto
      SqlCheque.SQL.Add('0 , '); // Total desc recbto
      SqlCheque.SQL.Add('0 , '); // Total multa cobranca recbto
      SqlCheque.SQL.Add('Null , '); // Empresa ult. recbto.
      SqlCheque.SQL.Add('Null , '); // Id Cupom
      SqlCheque.SQL.Add('Null , '); // Tipo Doc.
      SqlCheque.SQL.Add('Null , '); // Plano Contas
      SqlCheque.SQL.Add('Null , '); // Nro. Duplic. Banco
      SqlCheque.SQL.Add('Null , '); // Id Nota Fiscal
      SqlCheque.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', Now) + '''' + ' , ');
      SqlCheque.SQL.Add('''S'' , ');
      SqlCheque.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', Now) + '''' + ' , ');
      SqlCheque.SQL.Add('Null , ');
        //Valores do cheque
      SqlCheque.SQL.Add('''' + Banco + '''' + ' , ');
      SqlCheque.SQL.Add('''' + Agencia + '''' + ' , ');
      SqlCheque.SQL.Add('''' + Conta + '''' + ' , ');
      SqlCheque.SQL.Add('''' + NroChequeRecbto + '''' + ' , ');
      SqlCheque.SQL.Add('''' + Titular + '''' + ' , ');
      SqlCheque.SQL.Add('''' + CPFCGC + '''' + ' , ');
      SqlCheque.SQL.Add('Null , '); // Data deposito
      SqlCheque.SQL.Add(IntToStr(Alinea) + ' , ');
      SqlCheque.SQL.Add('Null , '); // Id Pedido Venda
      SqlCheque.SQL.Add('Null ,'); // Dt. Estorno
      SqlCheque.SQL.Add('''' + IdContaReceber + ''')'); // ID CONTAS RECEBER
      SqlCheque.ExecSQL;
      Dm.DB.Commit;
      LancaChequeRecebido := IDCheque;
      Sair := True;
    except
      on E: Exception do
      begin
        ShowMessage('Problemas ao incluir o cheque, anote o erro: ' + E.Message);
        Dm.DB.Rollback;
        Sair := False;
      end;
    end;
  end;
end;


procedure AlterPortadorTipoDocContaReceber(IdContaReceber, NovoPortador, NovoTipoDoc: string);
var
  Query: TQuery;
begin
  try
    if IdContaReceber <> '' then
    begin
      Query := Tquery.Create(DM);
      Query.DatabaseName := 'DB';
      if NovoPortador <> '' then
      begin
        Query.Close;
        Query.SQL.Clear;
        Query.SQL.ADD('UPDATE CONTASRECEBER SET Pendente=''S'', PORTICOD = ' + NovoPortador);
        Query.SQL.ADD(' WHERE CTRCA13ID = ''' + IdContaReceber + '''');
        Query.ExecSQL;
      end;
      if NovoTipoDoc <> '' then
      begin
        Query.Close;
        Query.SQL.Clear;
        Query.SQL.ADD('UPDATE CONTASRECEBER SET Pendente=''S'', TPDCICOD = ' + NovoTipoDoc);
        Query.SQL.ADD(' WHERE CTRCA13ID = ''' + IdContaReceber + '''');
        Query.ExecSQL;
      end;
      Query.Close;
      Query.Destroy;
    end;
  except
    on E: EXCEPTION do
    begin
      Informa('Erro ao Trocar Portador/Tipo Doc. ANOTE O ERRO: ' + E.Message);
      Query.Destroy;
      Abort;
    end;
  end;
end;


procedure AtualizaTotaisCabecalhoContasReceber(NroDocumento: string);
var
  RECEN2VLRRECTO,
    RECEN2VLRJURO,
    RECEN2DESC,
    RECEN2MULTACOBR,
    RECEN2VLRMULTA: double;
  DATAULTREC: TDateTime;
  EMPRULTREC: integer;
begin
  RECEN2VLRRECTO := 0;
  RECEN2VLRJURO := 0;
  RECEN2DESC := 0;
  RECEN2MULTACOBR := 0;
  RECEN2VLRMULTA := 0;
  DATAULTREC := 0;
  EMPRULTREC := 0;

  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('select sum(RECEN2VLRRECTO) AS RECTO,');
  DM.SQLTemplate.SQL.Add('sum(RECEN2VLRJURO) AS JURO,');
  DM.SQLTemplate.SQL.Add('sum(RECEN2DESC) AS DESCO,');
  DM.SQLTemplate.SQL.Add('sum(RECEN2MULTACOBR) AS MULTACOBR,');
  DM.SQLTemplate.SQL.Add('sum(RECEN2VLRMULTA) AS MULTA from RECEBIMENTO');
  DM.SQLTemplate.SQL.Add('where CTRCA13ID = ''' + NroDocumento + '''');
  DM.SQLTemplate.SQL.Add('group by CTRCA13ID');
  DM.SQLTemplate.Open;
  if not DM.SQLTemplate.EOF then
  begin
    if DM.SQLTemplate.FieldByName('RECTO').Value > 0 then
      RECEN2VLRRECTO := DM.SQLTemplate.FieldByName('RECTO').Value;
    if DM.SQLTemplate.FieldByName('JURO').Value > 0 then
      RECEN2VLRJURO := DM.SQLTemplate.FieldByName('JURO').Value;
    if DM.SQLTemplate.FieldByName('DESCO').Value > 0 then
      RECEN2DESC := DM.SQLTemplate.FieldByName('DESCO').Value;
    if DM.SQLTemplate.FieldByName('MULTACOBR').Value > 0 then
      RECEN2MULTACOBR := DM.SQLTemplate.FieldByName('MULTACOBR').Value;
    if DM.SQLTemplate.FieldByName('MULTA').Value > 0 then
      RECEN2VLRMULTA := DM.SQLTemplate.FieldByName('MULTA').Value;

    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('select RECEDRECTO,EMPRICODREC from RECEBIMENTO');
    DM.SQLTemplate.SQL.Add('where CTRCA13ID = ''' + NroDocumento + ''' ');
    DM.SQLTemplate.SQL.Add('order by RECEDRECTO');
    DM.SQLTemplate.Open;
    DM.SQLTemplate.Last;
    DATAULTREC := DM.SQLTemplate.FieldByName('RECEDRECTO').Value;
    EMPRULTREC := DM.SQLTemplate.FieldByName('EMPRICODREC').Value;
  end;

  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('Update CONTASRECEBER');
  DM.SQLTemplate.SQL.Add('Set');
  if DATAULTREC > 0 then
    DM.SQLTemplate.SQL.Add('CTRCDULTREC = ''' + FormatDateTime('mm/dd/yyyy', DATAULTREC) + ''', ')
  else
    DM.SQLTemplate.SQL.Add('CTRCDULTREC = Null, ');
  DM.SQLTemplate.SQL.Add('CTRCN2TOTREC = ' + ConvFloatToStr(RECEN2VLRRECTO) + ', ');
  DM.SQLTemplate.SQL.Add('CTRCN2TOTJUROREC = ' + ConvFloatToStr(RECEN2VLRJURO) + ', ');
  DM.SQLTemplate.SQL.Add('CTRCN2TOTMULTAREC = ' + ConvFloatToStr(RECEN2VLRMULTA) + ', ');
  DM.SQLTemplate.SQL.Add('CTRCN2TOTMULTACOBR = ' + ConvFloatToStr(RECEN2MULTACOBR) + ', ');
  DM.SQLTemplate.SQL.Add('CTRCN2TOTDESCREC = ' + ConvFloatToStr(RECEN2DESC) + ', ');
  DM.SQLTemplate.SQL.Add('REGISTRO = ''' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + ''', ');
  DM.SQLTemplate.SQL.Add('PENDENTE = ''S'',');
  DM.SQLTemplate.SQL.Add('EMPRICODULTREC = ' + IntToStr(EMPRULTREC));
  DM.SQLTemplate.SQL.Add('where CTRCA13ID = ''' + NroDocumento + '''');
  DM.SQLTemplate.ExecSQL;
end;

procedure AtualizaDataQuitacaoCupomConsignado(NroDocumento: string);
var
  VLRRECTO: double;
  DATAULTREC: TDateTime;
begin
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('select sum(CTRCN2VLR-CTRCN2TOTREC) AS SALDO');
  DM.SQLTemplate.SQL.Add('from CONTASRECEBER');
  DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + NroDocumento + '''');
  DM.SQLTemplate.SQL.Add('and   CTRCA5TIPOPADRAO <> ''CONSI''');
  DM.SQLTemplate.Open;
  if not DM.SQLTemplate.EOF then
    if (DM.SQLTemplate.FieldByName('SALDO').Value <= 1.00) then
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('update CUPOM');
      DM.SQLTemplate.SQL.Add('set Pendente=''S'', CUPODPAGTOCONSIG = ''' + FormatDateTime('mm/dd/yyyy', Now) + '''');
      DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + NroDocumento + '''');
      DM.SQLTemplate.ExecSQL;
    end;
end;

function RetornaTotalizadorNumerarioECF(EcfID, CodNumerario: string): string;
























































var
  MyQuery: TQuery;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB';
  MyQuery.Close;
  MyQuery.SQL.Clear;
  MyQuery.SQL.Add('select * from NUMERARIOTOTALIZADORECF');
  MyQuery.SQL.Add('where ECFA13ID = ''' + EcfID + '''');
  MyQuery.SQL.Add('and   NUMEICOD = ' + CodNumerario);
  MyQuery.Open;
  if MyQuery.Fieldbyname('NUTCA5IDENTIFICADOR').AsString <> '' then
    RetornaTotalizadorNumerarioECF := MyQuery.Fieldbyname('NUTCA5IDENTIFICADOR').AsString
  else
  begin
    Informa('Nenhum totalizador foi encontrado para o numerário ' + CodNumerario + '.' + #13 + 'O sistema utilizará o primeiro numerário cadastrado na ECF.');
    if ECFAtual = 'BEMATECH MP-20 FI II' then
      RetornaTotalizadorNumerarioECF := '01'
    else
      RetornaTotalizadorNumerarioECF := '';
  end;
  MyQuery.Destroy;
end;

function RetornaTotalizadorNumerarioECFDarumaFS345(EcfID, CodNumerario: string): string;
var
  MyQuery: TQuery;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB';
  MyQuery.Close;
  MyQuery.SQL.Clear;
  MyQuery.SQL.Add('Select * From NUMERARIOTOTALIZADORECF');
  MyQuery.SQL.Add('Where ECFA13ID = ''' + EcfID + '''');
  MyQuery.SQL.Add('And   NUMEICOD = ' + CodNumerario);
  MyQuery.Open;
  if MyQuery.Fieldbyname('NUTCA15NUMERARIO').AsString <> '' then
    RetornaTotalizadorNumerarioECFDarumaFS345 := MyQuery.Fieldbyname('NUTCA15NUMERARIO').AsString
  else
  begin
    Informa('Nenhum totalizador foi encontrado para o numerário ' + CodNumerario + '.');
    RetornaTotalizadorNumerarioECFDarumaFS345 := '';
  end;
  MyQuery.Destroy;

end;

function RetornaNumerario(CodNumerario: string): string;
var
  MyQuery: TQuery;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB';
  MyQuery.Close;
  MyQuery.SQL.Clear;
  MyQuery.SQL.Add('select NUMEA30DESCR from NUMERARIO');
  MyQuery.SQL.Add('where NUMEICOD = ' + CodNumerario);
  MyQuery.Open;
  if MyQuery.Fieldbyname('NUMEA30DESCR').AsString <> '' then
    RetornaNumerario := MyQuery.Fieldbyname('NUMEA30DESCR').AsString
  else
    RetornaNumerario := '';
  MyQuery.Destroy;
end;

procedure AtualizaCampoChequeEmitidoCabecalhoContasPagar(IDCheque, IDContasPagar: string);
begin
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('Update ContasPagar Set CQEMA13ID = ''' + IDChequeEmitido + ''', Pendente=''S'' where CTPGA13ID = ''' + IDContasPagar + '''');
  DM.SQLTemplate.ExecSQL;
end;


function MontaDataSQL(ACampo: string; ADe, AAte: TDate): string;
begin
  Result := ' ' + ACampo + ' >= ''' + FormatDateTime('mm/dd/yyyy', ADe) + ''' and ' +
    ' ' + ACampo + ' <= ''' + FormatDateTime('mm/dd/yyyy', AAte) + '''';
end;

procedure addLog(Erro: string; Arquivo: string = '');
begin
  try
    if FileExists(ExtractFilePath(Application.ExeName) + 'log.txt') then
      with TStringList.Create do
      try

        if Arquivo = '' then
          Arquivo := ExtractFilePath(Application.ExeName)+'LogErro_' + FormatDateTime('yyyymmdd', now) + '.txt';

        //Arquivo := CaminhoPrograma + Arquivo;

        if FileExists(arquivo) then
          LoadFromFile(arquivo);

        Add(#13 + DateTimeToStr(now) + #13 + erro);

        SaveToFile(arquivo);

      finally
        Free;
      end;
  except
  end;
end;


function AbreFechaDataset(ADataSet: TDataSet; AAbrir: Boolean = True; AAtualizar: Boolean = False): Boolean;
begin
  if AAtualizar then
    ADataSet.Close;
  if not ADataSet.Active then
    ADataSet.Active := AAbrir;
end;

function CancelamentoCupom(Documento, Usuario: string): boolean;
var
  Tabela: string;
  Valor: double;
  SQLItemTroca: TRxQuery;
  IniFile: TiniFile;
  MovEstoqueTerm: Boolean;
begin
  SQLItemTroca := TRxQuery.Create(DM);
  SQLItemTroca.DatabaseName := 'DB';

  CancelamentoCupom := false;

  if DM.SQLConfigVenda.FieldByName('OPESICODCANCTROCA').AsString = '' then
  begin
    Informa('A Operação de Estoque para Cancelamento de Troca não foi configurada. Este cancelamento não será efetuado !');
    exit;
  end;

  if DM.SQLConfigVenda.FieldByName('OPESICODCANCCUPOM').AsString = '' then
  begin
    Informa('A Operação de Estoque para Cancelamento de Cupom não foi configurada. Este cancelamento não será efetuado !');
    exit;
  end;

  DM.DB.StartTransaction;
  try
    //CANCELAR CUPOM
    Tabela := 'Cupom';
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('update CUPOM');
    DM.SQLTemplate.SQL.Add('set CUPOCSTATUS = ''C'', CUPODCANC = ''' + FormatDateTime('mm/dd/yyyy', Date) + ''', USUAICODCANC = ' + Usuario + ' , PENDENTE = ''S'', REGISTRO = ''' + FormatDateTime('mm/dd/yyyy', Date) + '''');
    DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
    DM.SQLTemplate.ExecSQL;

    //FAZER MOVIMENTO CONTRARIO ESTOQUE CASO O TERMINAL MOVIMENTE ESTOQUE ONLINE, SENAO DEIXAR A ROTINA ATUALZA SALDO PDVS CORRIGIR.
    if (DM.SQLTerminalAtivo.FindField('TERMCMOVESTOQUE').AsString = 'S') then
    begin
      Tabela := 'Itens Cupom';
      SQLItemTroca.Close;
      SQLItemTroca.SQL.Clear;
      SQLItemTroca.SQL.Add('select * from CUPOMITEM');
      SQLItemTroca.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
      SQLItemTroca.Open;
      while not SQLItemTroca.EOF do
      begin
            //CANCELA ITENS VENDIDOS
        if SQLItemTroca.FieldByName('CPITN3QTD').Value > 0 then
          GravaMovimentoEstoque(DM.SQLProduto,
            DM.SQLProdutoFilho,
            DM.SQLProdutoSaldo,
            StrToInt(EmpresaPadrao), //Empresa
            SQLItemTroca.FieldByName('PRODICOD').AsInteger, //Produto
            DM.SQLConfigVenda.FieldByName('OPESICODCANCCUPOM').Value, //Operacao
            SQLItemTroca.FieldByName('CPITN3QTD').AsFloat, //Quantidade
            'E', //ENTRADA/SAIDA
            FormatDateTime('mm/dd/yyyy', Now),
            '0',
            'CUPOM',
            Documento,
            '');

            //CANCELA ITENS TROCA
        if SQLItemTroca.FieldByName('CPITN3QTDTROCA').Value > 0 then
          GravaMovimentoEstoque(DM.SQLProduto,
            DM.SQLProdutoFilho,
            DM.SQLProdutoSaldo,
            StrToInt(EmpresaPadrao), //Empresa
            SQLItemTroca.FieldByName('PRODICOD').AsInteger, //Produto
            DM.SQLConfigVenda.FieldByName('OPESICODCANCTROCA').Value, //Operacao
            SQLItemTroca.FieldByName('CPITN3QTDTROCA').AsFloat, //Quantidade
            'S', //ENTRADA/SAIDA
            FormatDateTime('mm/dd/yyyy', Now),
            '0',
            'CUPOM',
            Documento,
            '');

        SQLItemTroca.Next;
      end;
    end;
    //CANCELAR ITENS
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('update CUPOMITEM');
    DM.SQLTemplate.SQL.Add('set CPITCSTATUS = ''C'', PENDENTE = ''S'', REGISTRO = ''' + FormatDateTime('mm/dd/yyyy', Date) + '''');
    DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
    DM.SQLTemplate.ExecSQL;

    //CANCELAR NUMERARIO
    Tabela := 'Numerário Cupom';
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('update CUPOMNUMERARIO');
    DM.SQLTemplate.SQL.Add('set CONMCSTATUS = ''C'', PENDENTE = ''S'', REGISTRO = ''' + FormatDateTime('mm/dd/yyyy', Date) + '''');
    DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
    DM.SQLTemplate.ExecSQL;
    //CANCELAR CONTASRECEBER
    Tabela := 'Contas a Receber';
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('update CONTASRECEBER');
    DM.SQLTemplate.SQL.Add('set CTRCCSTATUS = ''C'', PENDENTE = ''S'', REGISTRO = ''' + FormatDateTime('mm/dd/yyyy', Date) + '''');
    DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
    DM.SQLTemplate.ExecSQL;
    //EXCLUIR MOVIMENO CADERNO
    Tabela := 'Caderno';
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('delete from CADERNO');
    DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
    DM.SQLTemplate.ExecSQL;
    //EXCLUIR CARTAS AVISO
    Tabela := 'CARTAAVISOCOBRANCA';
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('delete from CARTAAVISOCOBRANCA');
    DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
    DM.SQLTemplate.ExecSQL;
    //EXCLUIR CARTAS AVISO
    Tabela := 'CARTAAVISOSPC';
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('delete from CARTAAVISOSPC');
    DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
    DM.SQLTemplate.ExecSQL;
    //EXCLUIR CARTAS AVISO
    Tabela := 'CARTAPRIMEIROAVISO';
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('delete from CARTAPRIMEIROAVISO');
    DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
    DM.SQLTemplate.ExecSQL;
    //EXCLUIR CARTAS AVISO
    Tabela := 'CARTASEGUNDOAVISO';
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('delete from CARTASEGUNDOAVISO');
    DM.SQLTemplate.SQL.Add('where CUPOA13ID = ''' + Documento + '''');
    DM.SQLTemplate.ExecSQL;
  except
    on E: Exception do
    begin
      DM.DB.Rollback;
      Informa('Erro Cancelando ' + Tabela + #13 + E.Message);
      exit;
    end;
  end;

  if DM.DB.InTransaction then
    DM.DB.Commit;

  SQLItemTroca.Close;
  SQLItemTroca.Free;

  CancelamentoCupom := true;
end;


function RetornaUltimaCompraCliente(Cliente, Vendedor: string): TinfoRetornoUltCompra;
var
  Query: Tquery;
  UltCompraNF, UltCompraCP: string;
  InfoRetorno: TinfoRetornoUltCompra;
  DocNF, DocCP: string;
begin
  UltCompraCP := '';
  UltCompraNF := '';
  Query := Tquery.Create(DM);
  Query.DatabaseName := 'DB';
  //nota fiscal
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.ADD('SELECT NOFIDEMIS, NOFIA13ID FROM NOTAFISCAL WHERE CLIEA13ID = ''' + CLIENTE + ''' AND ');
  Query.SQL.ADD('VENDICOD = ' + Vendedor);
  Query.SQL.ADD(' AND NOFICSTATUS = ''E''');
  Query.SQL.ADD(' ORDER BY NOFIDEMIS DESC');
  Query.Open;
  Query.First;
  if not Query.IsEmpty then
  begin
    UltCompraNF := FormatDateTime('dd/mm/yyyy', Query.FieldByName('NOFIDEMIS').AsDateTime);
    DocNF := Query.FieldByName('NOFIA13ID').AsString;
  end;
  //cupom
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.ADD('SELECT CUPODEMIS, CUPOA13ID FROM CUPOM WHERE CLIEA13ID = ''' + CLIENTE + ''' AND ');
  Query.SQL.ADD('VENDICOD = ' + Vendedor);
  Query.SQL.ADD(' AND CUPOCSTATUS = ''A''');
  Query.SQL.ADD(' ORDER BY CUPODEMIS DESC');
  Query.Open;
  Query.First;
  if not Query.IsEmpty then
  begin
    UltCompraCP := FormatDateTime('dd/mm/yyyy', Query.FieldByName('CUPODEMIS').AsDateTime);
    DocCP := Query.FieldByName('CUPOA13ID').AsString;
  end;
  if UltCompraNF <> '' then
  begin
    if UltCompraNF > UltCompraCP then
    begin
      InfoRetorno.UltimaCompra := UltCompraNF;
      InfoRetorno.OrigemCompra := 'NOTAFISCAL';
      InfoRetorno.Documento := DocNF;
    end
    else
    begin
      if UltCompraCP <> '' then
      begin
        InfoRetorno.UltimaCompra := UltCompraCP;
        InfoRetorno.OrigemCompra := 'CUPOM';
        InfoRetorno.Documento := DocCP;
      end;
    end;
  end
  else
    if UltCompraCP <> '' then
    begin
      InfoRetorno.UltimaCompra := UltCompraCP;
      InfoRetorno.OrigemCompra := 'CUPOM';
      InfoRetorno.Documento := DocCP;
    end;

  RetornaUltimaCompraCliente := InfoRetorno;
end;


function PlanoVistaPrazo(Plano: integer; SQLPlRec, SQLPlRecParc: TRxQuery): string;
var
  NroParc: integer;
begin
  Result := '';
  SQLPlRec.Close;
  SQLPlRec.MacroByName('MFiltro').Value := 'PLRCICOD = ' + IntToStr(Plano);
  SQLPlRec.Open;

  SQLPlRecParc.Close;
  SQLPlRecParc.MacroByName('MFiltro').Value := 'PLRCICOD = ' + IntToStr(Plano);
  SQLPlRecParc.Open;

  if (SQLPlRec.FieldByName('PLRCCDFIX').Value = 'S') or (SQLPlRec.FieldByName('PLRCCDFIX').Value = 'V') then
  begin
    Result := 'PRAZO';
  end
  else
  begin
    NroParc := 0;
    SQLPlRecParc.Close;
    SQLPlRecParc.Open;
    SQLPlRecParc.First;
    while not SQLPlRecParc.Eof do
    begin
      SQLPlRecParc.Next;
      Inc(NroParc);
    end;

    if NroParc = 1 then
    begin
      SQLPlRecParc.First;
      if SQLPlRecParc.FieldByName('PLRPINRODIAS').Value = 0 then
        Result := 'VISTA';
      if SQLPlRecParc.FieldByName('PLRPINRODIAS').Value > 0 then
        Result := 'PRAZO';
    end;

    if NroParc > 1 then
    begin
      Result := 'PRAZO';
    end;
  end;
end;

procedure GravaMovimentoEstoqueSimples(SqlProd,
  SQLProdFilho,
  SQLProdSald: TQuery;
  EmprCod,
  ProdCod,
  Operacao: integer;
  Quant: double;
  EntrSai,
  DataHora,
  Valor,
  TipoMov,
  NumDocOrig,
  Lote: string);
  procedure GravaMovimento(Produto, ProdutoFilho: Integer);
  var
    ProxCod: integer;
    SairMov: Boolean;
    QueryProduto: TQuery;
    CodProduto: Integer;
    QuantOrigem: Double;
  begin
    SairMov := False;
    while not SairMov do
    begin
    //TENTA CRIAR REGISTRO INICIAL NA TABELA PRODUTOSALDO
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('Insert Into PRODUTOSALDO');
      DM.SQLTemplate.SQL.Add('(EMPRICOD,');
      DM.SQLTemplate.SQL.Add('PRODICOD,');
      DM.SQLTemplate.SQL.Add('PSLDN3QTDE,');
      DM.SQLTemplate.SQL.Add('PSLDN3QTDMIN,');
      DM.SQLTemplate.SQL.Add('PSLDN3QTDMAX,');
      DM.SQLTemplate.SQL.Add('QTDE_CONSIGNADO)');

      DM.SQLTemplate.SQL.Add('values(');
      DM.SQLTemplate.SQL.Add(IntToStr(EmprCod) + ', '); //EMPRICOD
      DM.SQLTemplate.SQL.Add(IntToStr(Produto) + ', '); //PRODICOD
      DM.SQLTemplate.SQL.Add('0, '); //PSLDN3QTDE
      DM.SQLTemplate.SQL.Add('0, '); //PSLDN3QTDMIN
      DM.SQLTemplate.SQL.Add('0, '); //PSLDN3QTDMAX
      DM.SQLTemplate.SQL.Add('0) '); //QTDE_CONSIGNADO

      try
        DM.SQLTemplate.ExecSQL;
        Application.ProcessMessages;
      except
        Application.ProcessMessages;
      end;
    //PEGAR PROXIMO CODIGO MOVIMENTO DE ESTOQUE
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('select Max(MVESICOD) as CONTADOR from MOVIMENTOESTOQUE');
      DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + IntToStr(EmprCod));
      DM.SQLTemplate.SQL.Add('and   MVESDMOV = ''' + DataHora + '''');
      DM.SQLTemplate.Open;
      if (DM.SQLTemplate.FieldByName('CONTADOR').AsFloat <= 0) or not (DM.SQLTemplate.FieldByName('CONTADOR').IsNull) then
        ProxCod := DM.SQLTemplate.FieldByName('CONTADOR').AsInteger + 1
      else
        ProxCod := 1;

    //ROTINA PARA GRAVAR MOVIMENTO DO ESTOQUE(EXTRATO DE ESTOQUE)
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('insert into MOVIMENTOESTOQUE');
      DM.SQLTemplate.SQL.Add('(EMPRICOD, ');
      DM.SQLTemplate.SQL.Add('MVESDMOV, ');
      DM.SQLTemplate.SQL.Add('MVESICOD, ');
      DM.SQLTemplate.SQL.Add('PRODICOD, ');
      DM.SQLTemplate.SQL.Add('OPESICOD, ');
      DM.SQLTemplate.SQL.Add('MVESN3QTDENTRADA, ');
      DM.SQLTemplate.SQL.Add('MVESN3QTDSAIDA, ');

      if AnsiUpperCase(TipoMov) = 'CUPOM' then
        DM.SQLTemplate.SQL.Add('CUPOA13ID, ');

      if AnsiUpperCase(TipoMov) = 'NOTACOMPRA' then
        DM.SQLTemplate.SQL.Add('NOCPA13ID, ');

      if AnsiUpperCase(TipoMov) = 'NOTAFISCAL' then
        DM.SQLTemplate.SQL.Add('NOFIA13ID, ');

      if AnsiUpperCase(TipoMov) = 'PEDIDOVENDA' then
        DM.SQLTemplate.SQL.Add('PDVDA13ID, ');

      if AnsiUpperCase(TipoMov) = 'MOVIMENTOSDIVERSOS' then
        DM.SQLTemplate.SQL.Add('MOVDA13ID, ');

      if AnsiUpperCase(TipoMov) = 'MOVIMENTOSDIVERSOS' then
        DM.SQLTemplate.SQL.Add('MOVDA13ID, ');

      if AnsiUpperCase(TipoMov) = 'ORDEMPRODUCAO' then
        DM.SQLTemplate.SQL.Add('ORPRA13ID, ');

      if AnsiUpperCase(TipoMov) = 'TRANSFERENCIA' then
        DM.SQLTemplate.SQL.Add('TRFEA13ID, ');

      DM.SQLTemplate.SQL.Add('LOTEA30NRO, ');
      DM.SQLTemplate.SQL.Add('MVESCESTOQUEOK, ');
      DM.SQLTemplate.SQL.Add('PENDENTE, ');
      DM.SQLTemplate.SQL.Add('REGISTRO)');
      DM.SQLTemplate.SQL.Add('values(');
      DM.SQLTemplate.SQL.Add(IntToStr(EmprCod) + ', '); //EMPRICOD
      DM.SQLTemplate.SQL.Add('''' + DataHora + ''', '); //MVESDMOV
      DM.SQLTemplate.SQL.Add(IntToStr(ProxCod) + ', '); //MVESICOD
      DM.SQLTemplate.SQL.Add(IntToStr(Produto) + ', '); //PRODICOD
      DM.SQLTemplate.SQL.Add(IntToStr(Operacao) + ', '); //OPESICOD

    // Retorna Capacidade de Embalagem do Produto Filho;
      try
        if ProdutoFilho > 0 then
        begin
          CodProduto := ProdutoFilho;
          QueryProduto := TQuery.Create(DM);
          QueryProduto.DatabaseName := 'DB';
          QueryProduto.Close;
          QueryProduto.SQL.Clear;
          QueryProduto.SQL.Add('SELECT PRODN3CAPACEMBAL FROM PRODUTO WHERE PRODICOD = ' + IntToStr(CodProduto));
          QueryProduto.Open;
          QuantOrigem := 0;
          if not QueryProduto.IsEmpty then
          begin
            QuantOrigem := Quant;
            if QueryProduto.FieldByName('PRODN3CAPACEMBAL').AsFloat > 1 then
              Quant := Quant * QueryProduto.FieldByName('PRODN3CAPACEMBAL').AsInteger;
          end;
        end;
      except
        Application.ProcessMessages;
      end;
      if EntrSai = 'E' then
      begin
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(Quant) + ', '); //MVESN3QTDENTRADA
        DM.SQLTemplate.SQL.Add('0, '); //MVESN3QTDSAIDA
      end;
      if EntrSai = 'S' then
      begin
        DM.SQLTemplate.SQL.Add('0, '); //MVESN3QTDENTRADA
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(Quant) + ', '); //MVESN3QTDSAIDA
      end;

      DM.SQLTemplate.SQL.Add('''' + NumDocOrig + ''', ');

      if Lote <> '' then
        DM.SQLTemplate.SQL.Add('''' + LOTE + ''', ')
      else
        DM.SQLTemplate.SQL.Add('null, '); //LOTE

      DM.SQLTemplate.SQL.Add('''N'', '); //STATUS DO MOVIMENTO PARA IMPORTACAO DE LOG
      DM.SQLTemplate.SQL.Add('''S'', '); //PENDENTE
      DM.SQLTemplate.SQL.Add('''' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + ''')'); //REGISTRO
      try
        DM.SQLTemplate.ExecSQL;
        SairMov := True;

        if QuantOrigem > 0 then
          Quant := QuantOrigem;
        Application.ProcessMessages;
      except
        SairMov := False;
        Application.ProcessMessages;
        Sleep(1);
      end;
    end;
  end;
var
  Sair: boolean;
  ProdutoComp: TQuery;
begin
  if ProdCod = 0 then
    exit;

  SqlProd.Close;
  SqlProd.SQL.Clear;
  SqlProd.SQL.Add('Select * from PRODUTO');
  SqlProd.SQL.Add('Where PRODICOD = ' + IntToStr(ProdCod));
  SqlProd.Open;
  SQLProdSald.Close;
  SQLProdSald.Open;

  if not SqlProd.IsEmpty then
  begin
    Sair := False;
    while not Sair do
    begin
      try
        GravaMovimento(ProdCod, 0);
        Sair := True;
        Application.ProcessMessages;
      except
        Sair := False;
        Application.ProcessMessages;
        Sleep(1);
      end;
    end;
  end;
end;


procedure GravaEntradaNroSerieProduto(NroSERIE, Produto,FORNICOD, EMPRICOD, NOCPA13ID, MOVDA13ID, NOFIA13ID, PDVDA13ID: string);
var
  SQLProdutoSerie: TQuery;
  SQLFornecedor : TQuery;
  NomeFornecedor : string;
begin
  if (Produto = '') or (NroSERIE = '') then
    Exit;
  if FORNICOD <> '' then
  begin
    SQLFornecedor := TQuery.Create(SQLFornecedor);
    SQLFornecedor.DatabaseName := 'DB';
    SQLFornecedor.Close;
    SQLFornecedor.SQL.Clear;
    SQLFornecedor.SQL.ADD('SELECT FORNA60RAZAOSOC FROM FORNECEDOR WHERE FORNICOD = ''' + FORNICOD +'''' );
    SQLFornecedor.Prepare;
    try
      SQLFornecedor.Open;
      NomeFornecedor := SQLFornecedor.fieldbyname('FORNA60RAZAOSOC').AsString
    finally
      SQLFornecedor.Close;
      SQLFornecedor.Destroy;
    end;
  end;

  SQLProdutoSerie := TQuery.Create(SQLProdutoSerie);
  SQLProdutoSerie.DatabaseName := 'DB';
  SQLProdutoSerie.Close;
  SQLProdutoSerie.SQL.Clear;
  SQLProdutoSerie.SQL.ADD('UPDATE PRODUTOSERIE SET ');
  SQLProdutoSerie.SQL.ADD('PRSECSTATUS = ''D'' , '); // Status I = Indisponivel / D = Disponivel
  // Pendente
  SQLProdutoSerie.SQL.ADD('PENDENTE = ''S'' , ');
  // Registro
  SQLProdutoSerie.SQL.ADD('REGISTRO = ''' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Now) + ''' ,');
  // Empresa Destino
  if EMPRICOD <> '' then
    SQLProdutoSerie.SQL.ADD('EMPRICOD = ' + EMPRICOD + ' , ');
  // fornecedor
  if FORNICOD <> '' then
    SQLProdutoSerie.SQL.ADD('FORNICOD = ''' + FORNICOD + ''' , ');
  //Nro da nota de entrada
  if NOCPA13ID <> '' then
    SQLProdutoSerie.SQL.ADD('NOCPA13ID = ''' + NOCPA13ID + ''' , ');
  // Nome cliente
  if NomeFornecedor <> '' then
    SQLProdutoSerie.SQL.ADD('CLIEA60RAZAOSOC = ''' + NomeFornecedor + '''');
  // FILTRO
  SQLProdutoSerie.SQL.ADD(' WHERE ');
  SQLProdutoSerie.SQL.ADD('PRODICOD = ' + Produto + ' AND ');
  SQLProdutoSerie.SQL.ADD('PRSEA60NROSERIE = ''' + NroSERIE + '''');

//  if NOCPA13ID <> '' then
//    SQLProdutoSerie.SQL.ADD('NOCPA13ID = ''' + NOCPA13ID + '''')
//  else
//    if MOVDA13ID <> '' then
//      SQLProdutoSerie.SQL.ADD('MOVDA13ID = ''' + MOVDA13ID + '''')
//    else
//      if NOFIA13ID <> '' then
//        SQLProdutoSerie.SQL.ADD('NOFIA13ID = ''' + NOFIA13ID + '''')
//      else
//        if PDVDA13ID <> '' then
//          SQLProdutoSerie.SQL.ADD('PDVDA13ID = ''' + PDVDA13ID + '''');
  try
    SQLProdutoSerie.Prepare;
    SQLProdutoSerie.ExecSQL;
  except
    on E: Exception do
    begin
      Informa('Problemaos ao gravar ENTRADA do número de série, ANOTE O ERRO : ' + E.Message);
      SQLProdutoSerie.Cancel;
      SQLProdutoSerie.Close;
      SQLProdutoSerie.Destroy;
    end;
  end;
  SQLProdutoSerie.Close;
  SQLProdutoSerie.Destroy;
end;















































































procedure DeletaNumeroSerie(PRODICOD, NOFIA13ID, PDVDA13ID, MOVDA13ID: string);
var
  SQLConsulta: TQuery;
begin
  SQLConsulta := TQuery.Create(DM);
  SQLConsulta.DatabaseName := 'DB';
  SQLConsulta.Close;
  SQLConsulta.SQL.Clear;
  SQLConsulta.SQL.Add('DELETE FROM PRODUTOSERIETEMP WHERE PRODICOD = ' + PRODICOD);

  if NOFIA13ID <> '' then
    SQLConsulta.SQL.Add(' AND NOFIA13ID = ''' + NOFIA13ID + '''')
  else
    if PDVDA13ID <> '' then
      SQLConsulta.SQL.Add(' AND PDVDA13ID = ''' + PDVDA13ID + '''')
    else
      if MOVDA13ID <> '' then
        SQLConsulta.SQL.Add(' AND MOVDA13ID= ''' + MOVDA13ID + '''');
  try
    SQLConsulta.Prepare;
    SQLConsulta.ExecSQL;
  except
    on E: Exception do
    begin
      Informa('Problemas ao deletar número de série, ANOTE O ERRO: ' + #13 + E.Message);
      Abort;
    end;
  end;

  SQLConsulta.Close;
  SQLConsulta.SQL.Clear;
  SQLConsulta.SQL.Add('UPDATE PRODUTOSERIE SET Pendente=''S'', ');

  if NOFIA13ID <> '' then
    SQLConsulta.SQL.Add('NOFIA13ID = NULL')
  else
    if PDVDA13ID <> '' then
      SQLConsulta.SQL.Add('PDVDA13ID = NULL')
    else
      if MOVDA13ID <> '' then
        SQLConsulta.SQL.Add('MOVDA13ID= NULL');

  SQLConsulta.SQL.Add(' WHERE PRODICOD = ' + PRODICOD);

  if NOFIA13ID <> '' then
    SQLConsulta.SQL.Add(' AND NOFIA13ID = ''' + NOFIA13ID + '''')
  else
    if PDVDA13ID <> '' then
      SQLConsulta.SQL.Add(' AND PDVDA13ID = ''' + PDVDA13ID + '''')
    else
      if MOVDA13ID <> '' then
        SQLConsulta.SQL.Add(' AND MOVDA13ID= ''' + MOVDA13ID + '''');
  try
    SQLConsulta.Prepare;
    SQLConsulta.ExecSQL;
  except
    on E: Exception do
    begin
      Informa('Problemas ao limpar vínculo do número de série, ANOTE O ERRO: ' + #13 + E.Message);
      SQLConsulta.Close;
      SQLConsulta.Destroy;
      Abort;
    end;
  end;

  SQLConsulta.Close;
  SQLConsulta.Destroy;
end;


procedure GravaSaidaNroSerieProduto(NroSERIE, Produto, Status, EMPRICOD, CLIEA13ID, CUPOA13ID, PDVDA13ID, NOFIA13ID, MOVDA13ID: string);
var
  SQLProdutoSerie: TQuery;
  SQLCliente : TQuery;
  NomeCliente : string;
begin
  if (Produto = '') or (Produto = '') then
    Exit;
  if CLIEA13ID <> '' then
  begin
    SQLCliente := TQuery.Create(SQLCliente);
    SQLCliente.DatabaseName := 'DB';
    SQLCliente.Close;
    SQLCliente.SQL.Clear;
    SQLCliente.SQL.ADD('SELECT CLIEA60RAZAOSOC FROM CLIENTE WHERE CLIEA13ID = ''' + CLIEA13ID +'''' );
    SQLCliente.Prepare;
    try
      SQLCliente.Open;
      NomeCliente := SQLCliente.fieldbyname('CLIEA60RAZAOSOC').AsString
    finally
      SQLCliente.Close;
      SQLCliente.Destroy;
    end;
  end;
  SQLProdutoSerie := TQuery.Create(SQLProdutoSerie);
  SQLProdutoSerie.DatabaseName := 'DB';
  SQLProdutoSerie.Close;
  SQLProdutoSerie.SQL.Clear;
  SQLProdutoSerie.SQL.ADD('UPDATE PRODUTOSERIE SET ');
  if Status <> '' then
    SQLProdutoSerie.SQL.ADD('PRSECSTATUS = ''' + Status + ''' , ') // Status I = Indisponivel / D = Disponivel / E = Emprestado
  else
    SQLProdutoSerie.SQL.ADD('PRSECSTATUS = Null , ');
  // Empresa Destino
  if EMPRICOD <> '' then
    SQLProdutoSerie.SQL.ADD('EMPRICOD = ' + EMPRICOD + ' , ');
  // Cliente
  if CLIEA13ID <> '' then
    SQLProdutoSerie.SQL.ADD('CLIEA13ID = ''' + CLIEA13ID + ''' , ');
  // Nota Fiscal
  if NOFIA13ID <> '' then
    SQLProdutoSerie.SQL.ADD('NOFIA13ID = ''' + NOFIA13ID + ''' , ');
  // Cupom
  if CUPOA13ID <> '' then
    SQLProdutoSerie.SQL.ADD('CUPOA13ID = ''' + CUPOA13ID + ''' , ');
  // Pedido de Venda
  if PDVDA13ID <> '' then
    SQLProdutoSerie.SQL.ADD('PDVDA13ID = ''' + PDVDA13ID + ''' , ');
  // Movimento Diverso
  if MOVDA13ID <> '' then
    SQLProdutoSerie.SQL.ADD('MOVDA13ID = ''' + MOVDA13ID + ''' , ');
  // Nome cliente
  if NomeCliente <> '' then
    SQLProdutoSerie.SQL.ADD('CLIEA60RAZAOSOC = ''' + NomeCliente + ''' , ');
  // Pendente
  SQLProdutoSerie.SQL.ADD('PENDENTE = ''S'' , ');
  // Registro
  SQLProdutoSerie.SQL.ADD('REGISTRO = ''' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Now) + '''');
  // FILTRO
  SQLProdutoSerie.SQL.ADD(' WHERE ');
  SQLProdutoSerie.SQL.ADD('PRODICOD = ' + Produto + ' AND ');
  SQLProdutoSerie.SQL.ADD('PRSEA60NROSERIE = ''' + NroSERIE + '''');
  try
    SQLProdutoSerie.Prepare;
    SQLProdutoSerie.ExecSQL;
  except
    on E: Exception do
    begin
      Informa('Problemaos ao gravar SAÍDA do número de série, ANOTE O ERRO : ' + E.Message);
      SQLProdutoSerie.Cancel;
      SQLProdutoSerie.Close;
      SQLProdutoSerie.Destroy;
    end;
  end;
  SQLProdutoSerie.Close;
  SQLProdutoSerie.Destroy;
end;


function VerificaNumeroSerie(NroSerie, CodProduto: string): string;
var
  SQLConsulta: TQuery;
begin
  SQLConsulta := TQuery.Create(DM);
  SQLConsulta.DatabaseName := 'DB';
  SQLConsulta.Close;
  SQLConsulta.SQL.Clear;
  SQLConsulta.SQL.Add('SELECT * FROM PRODUTOSERIE WHERE PRSEA60NROSERIE = ''' + NroSerie + '''');
  SQLConsulta.SQL.Add(' AND PRODICOD = ' + CodProduto);
  SQLConsulta.Open;
  if not SQLConsulta.IsEmpty then
    Result := SQLConsulta.FieldByName('PRSECSTATUS').AsString
  else
    Result := 'N';

  SQLConsulta.Close;
  SQLConsulta.Destroy;
end;



function SQLMax(Tabela, CampoMax, ClausulaSQL: string): Integer;
var
  MyQuery: TQuery;
begin
  if CampoMax <> '' then
  begin
    MyQuery := TQuery.Create(DM);
    if DM.DataBaseName = '' then
      MyQuery.DatabaseName := 'DB'
    else
      MyQuery.DatabaseName := DM.DataBaseName;
    MyQuery.Close;
    MyQuery.SQL.Clear;
    MyQuery.SQL.Add('select MAX(' + CampoMax + ') from ' + UpperCase(Tabela));
    MyQuery.SQL.Add('where  ' + ClausulaSQL);
    MyQuery.Open;
    if not MyQuery.EOF then
      SQLMax := MyQuery.FieldByName('MAX').AsInteger + 1
    else
      SQLMax := 1;
    MyQuery.Destroy;
  end
  else
    Informa('Parametros incorretos na função SelectMax()');
end;


function DiaSemana(aData: TDateTime): string;
var
  aDia: Integer;
  aDiaSemana: array[1..7] of string[13];
begin
  aDiaSemana[1] := 'Domingo';
  aDiaSemana[2] := 'Segunda-Feira';
  aDiaSemana[3] := 'Terça-Feira';
  aDiaSemana[4] := 'Quarta-Feira';
  aDiaSemana[5] := 'Quinta-Feira';
  aDiaSemana[6] := 'Sexta-Feira';
  aDiaSemana[7] := 'Sábado';
  aDia := DayOfWeek(aData);
  result := aDiaSemana[aDia];
end;


function TestaNotaCompraMovimentoEstoque(IDNotaCompra, IDMovDiv, IDNotaVenda, Produto: string; quantidade: double): boolean;
var
  MyQuery: TQuery;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB';
  MyQuery.Close;
  MyQuery.SQL.Clear;
  if IDNotaCompra <> '' then
    MyQuery.SQL.Add('Select Count(NOCPA13ID) as Contador from MOVIMENTOESTOQUE Where NOCPA13ID=''' + IDNotaCompra + ''' and PRODICOD=' + Produto + ' and MVESN3QTDENTRADA=' + ConvFloatToStr(quantidade));
  if IDMovDiv <> '' then
    MyQuery.SQL.Add('Select Count(MOVDA13ID) as Contador from MOVIMENTOESTOQUE Where MOVDA13ID = ''' + IDMovDiv + ''' and PRODICOD = ' + Produto);
  if IDNotaVenda <> '' then
    MyQuery.SQL.Add('Select Count(NOFIA13ID) as Contador from MOVIMENTOESTOQUE Where NOFIA13ID = ''' + IDNotaVenda + ''' and PRODICOD = ' + Produto);
  MyQuery.Open;
  if MyQuery.FieldByName('Contador').Value > 0 then
    Result := True
  else
    Result := False;

  MyQuery.Close;
end;



function RetornaPreco(QueryProduto: TQuery; TabelaPrecoEmpresa: string; TabelaPrecoCliente: string): double;
var
  DataIni,
    DataFim: TDateTime;
  PrecoOk: Boolean;
  SQLPreco: TQuery;
begin
  PrecoOk := False;

  //if trim(TabelaPrecoCliente) = '' then
  //  TabelaPrecoCliente := TabelaPrecoEmpresa;

  SQLPreco := TQuery.Create(nil);
  SQLPreco.DatabaseName := 'DB';
  SQLPreco.SQL.Text := ' select * from TABELAPRECOPRODUTO Where PRODICOD = :PRODICOD AND TPRCICOD = :TPRCICOD ';

  if (not PrecoOk) and (TabelaPrecoCliente <> '') then
    if (TabelaPrecoCliente <> 'V') and (copy(TabelaPrecoCliente, 1, 1) <> 'A') then
    begin
      SQLPreco.ParamByName('TPRCICOD').asString := TabelaPrecoCliente;
      SQLPreco.ParamByName('PRODICOD').asInteger := QueryProduto.FindField('PRODICOD').asInteger;
      SQLPreco.Open;
      if not SQLPreco.Eof then
      begin
        if (SQLPreco.FieldByName('TPCPDINIPROMO').Value <> null) and
          (SQLPreco.FieldByName('TPCPDFIMPROMO').Value <> null) and
          (Date >= SQLPreco.FieldByName('TPCPDINIPROMO').asDateTime) and
          (Date <= SQLPreco.FieldByName('TPCPDFIMPROMO').asDateTime) then
          RetornaPreco := SQLPreco.FieldByName('TPCPN3VLRVENDAPROM').Value
        else
          RetornaPreco := SQLPreco.FieldByName('TPCPN3VLRVENDA').Value;
        PrecoOk := True;
      end;
      SQLPreco.Close;
    end;

  if (not PrecoOk) and (TabelaPrecoEmpresa <> '') then
  begin
    SQLPreco.ParamByName('TPRCICOD').asString := TabelaPrecoEmpresa;
    SQLPreco.ParamByName('PRODICOD').asInteger := QueryProduto.FindField('PRODICOD').asInteger;
    SQLPreco.Open;
    if not SQLPreco.Eof then
    begin
      if (SQLPreco.FieldByName('TPCPDINIPROMO').Value <> null) and
        (SQLPreco.FieldByName('TPCPDFIMPROMO').Value <> null) and
        (Date >= SQLPreco.FieldByName('TPCPDINIPROMO').asDateTime) and
        (Date <= SQLPreco.FieldByName('TPCPDFIMPROMO').asDateTime) then
        RetornaPreco := SQLPreco.FieldByName('TPCPN3VLRVENDAPROM').Value
      else
        RetornaPreco := SQLPreco.FieldByName('TPCPN3VLRVENDA').Value;
      PrecoOk := True;
    end;
    SQLPreco.Close;
  end;

  if (not PrecoOk) then
    if ((QueryProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (QueryProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (QueryProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) or
      ((QueryProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (QueryProduto.FieldByName('PRODDFIMPROMO').AsString = '') and (QueryProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) then
      RetornaPreco := QueryProduto.FieldByName('PRODN3VLRVENDAPROM').Value
    else
    begin
      if (TabelaPrecoCliente = 'V') or (TabelaPrecoCliente = '') then
        RetornaPreco := QueryProduto.FieldByName('PRODN3VLRVENDA').AsFloat;
      if (TabelaPrecoCliente = 'A1') then
        RetornaPreco := QueryProduto.FieldByName('PRODN3VLRVENDA2').AsFloat;
      if (TabelaPrecoCliente = 'A2') then
        RetornaPreco := QueryProduto.FieldByName('PRODN2VLRVENDA2835D').AsFloat;
      if (TabelaPrecoCliente = 'A3') then
        RetornaPreco := QueryProduto.FieldByName('PRODN2VLRVENDA283542D').AsFloat;
    end;
end;

function RetornaCorProduto(Cor: string): string;
var
  SQLCor: TQuery;
begin
  SQLCor := TRxQuery.Create(DM);
  SQLCor.DatabaseName := 'DB';
  SQLCor.SQL.Add('SELECT CORA30DESCR FROM COR WHERE CORICOD = ' + Cor);
  SQLCor.Open;
  if not SQLCor.IsEmpty then
    Result := SQLCor.FindField('CORA30DESCR').AsString
  else
    Result := '';
  SQLCor.Close;
  SQLCor.Destroy;

















































end;

function RetornaTamanhoProduto(Grade, Tamanho: string): string;
var
  SQLTamanho: TQuery;
begin
  if (Grade <> '') and (Tamanho <> '') then
  begin
    SQLTamanho := TRxQuery.Create(DM);
    SQLTamanho.DatabaseName := 'DB';
    SQLTamanho.SQL.Add('SELECT GRTMA5DESCR FROM GRADETAMANHO WHERE GRADICOD = ' + Grade + ' AND GRTMICOD = ' + Tamanho);
    SQLTamanho.Open;
    if not SQLTamanho.IsEmpty then
      Result := SQLTamanho.FindField('GRTMA5DESCR').AsString
    else
      Result := '';
    SQLTamanho.Close;
    SQLTamanho.Destroy;
  end
  else
    Result := '';












end;

function CalculaLimiteCredito(Cliente: string; ValorCompra: Double; SQLParcelas, SQLCliente: TQuery): Double;
var
  Debito, Limite, LimiteOrigem: Double;
begin
  SQLCliente.Close;
  SQLCliente.SQL.Clear;
  SQLCliente.SQL.Add('Select CLIEN2RENDA, CLIEN2CONJUGERENDA, CLIEN2LIMITECRED from CLIENTE where CLIEA13ID = ' + '''' + Cliente + '''');
  SQLCliente.Open;

  try

    if not SQLCliente.IsEmpty then
    begin
      if (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value > 0) then
      begin
        if DM.SQLConfigVenda.FieldByName('CFVECRENDCONJNOLIM').Value = 'S' then
          Limite := (SQLCliente.FieldByName('CLIEN2RENDA').Value +
            SQLCliente.FieldByName('CLIEN2CONJUGERENDA').Value) *
            (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value / 100)
        else
          Limite := (SQLCliente.FieldByName('CLIEN2RENDA').Value) *
            (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value / 100);
      end
      else
      begin
        Application.MessageBox('O sistema está configurado para testar o limite de crédito, mas a operação não foi realizada porque não existe nenhum percentual configurado para o cálculo do limite ! ', 'Chekout Informa', MB_OK + MB_ICONWARNING + MB_SYSTEMMODAL);
        Exit;
      end;

      if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString = 'S' then
      begin
        SQLParcelas.Close;
        SQLParcelas.SQL.Clear;
        SQLParcelas.SQL.Add('Select sum(CTRCN2VLR-CTRCN2TOTREC) from CONTASRECEBER where CLIEA13ID = ' + '''' + Cliente + '''' + ' AND CTRCN2VLR > CTRCN2TOTREC');
        SQLParcelas.SQL.Add('AND (CTRCA5TIPOPADRAO NOT IN (''CRT'',''CONV'') or CTRCA5TIPOPADRAO is null) ');
        SQLParcelas.SQL.Add(' And (CTRCCSTATUS = ''A'' OR CTRCCSTATUS = ''N'')');
        SQLParcelas.SQL.Add(' And (CTRCCTIPOREGISTRO = ''N'' OR CTRCCTIPOREGISTRO is Null) And (PDVDA13ID = '''' OR PDVDA13ID is Null)');
        SQLParcelas.Open;
        if not SQLParcelas.IsEmpty then
          Debito := SQLParcelas.FieldByName('SUM').AsFloat;
        LimiteOrigem := Limite;
        Limite := Limite - Debito;
      end
      else
        LimiteOrigem := Limite;

 //     if Limite > 0 then
 //       begin
      if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString <> 'S' then
      begin
        Result := LimiteOrigem;
      end;
      if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString = 'S' then
      begin
        Result := LimiteOrigem - Debito;
      end;
//        end;
    end;
  except
  end;
end;

function SQLRecCount(Tabela, ClausulaWhere: string): integer;
var
  MyQuery: TQuery;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB';
  MyQuery.Close;
  MyQuery.SQL.Clear;
  MyQuery.SQL.Add('select Count(*) as Contador from ' + uPPERCASE(Tabela));
  if ClausulaWhere <> '' then
    MyQuery.SQL.Add(ClausulaWhere);
  MyQuery.Open;
  SQLRecCount := MyQuery.FieldByName('Contador').Value;
  MyQuery.Destroy;
end;


function CalculaJuroMultaDesc(VlrVenc, TxJuroMultaDescCobr: double; DVenc, DPag, DVencOrig: TDateTime; Toler: integer; Tipo, Cupom, Parc: string): Double;
var
  PerDia: double;
  DiasAdiant: integer;
  SQLocal: TQuery;
begin
  try
    CalculaJuroMultaDesc := 0;
    if UpperCase(Tipo) = UpperCase('Juro') then
    begin
      if ((DPag - DVenc) > Toler) and (DPag > DVencOrig) then
      begin
        PerDia := (TxJuroMultaDescCobr / 30) / 100;
        PerDia := PerDia * (DPag - DVenc);
        CalculaJuroMultaDesc := VlrVenc * PerDia;
      end;
    end;
    if UpperCase(Tipo) = UpperCase('Multa') then
    begin
      if ((DPag - DVenc) > Toler) and (DPag > DVencOrig) then
        CalculaJuroMultaDesc := VlrVenc * (TxJuroMultaDescCobr / 100);
    end;
    if UpperCase(Tipo) = UpperCase('Desconto') then
    begin
      if (DPag - DVenc) >= 0 then
        exit;

      DiasAdiant := StrToInt(FormatFloat('#', DPag - DVenc));
      DiasAdiant := StrToInt(Copy(IntToStr(DiasAdiant), 2, 20));
      PerDia := (TxJuroMultaDescCobr / 30) / 100;
      PerDia := PerDia * DiasAdiant;
      if DiasAdiant >= Toler then
      begin
        CalculaJuroMultaDesc := VlrVenc * PerDia;
      end;
    end;
    if UpperCase(Tipo) = UpperCase('TaxaCobranca') then
    begin
      SQLocal := TQuery.Create(nil);
      SQLocal.DatabaseName := 'DB';

      SQLocal.Close;
      SQLocal.SQL.Clear;
      SQLocal.SQL.Add('select AVCOCENVIADO from CARTAAVISOCOBRANCA');
      SQLocal.SQL.Add('where CUPOA13ID = ''' + Cupom + '''');
      SQLocal.SQL.Add('and   CTRCINROPARC = ' + Parc);
      try
        SQLocal.Open;
      except
        SQLocal.Close;
        SQLocal.Destroy;
        CalculaJuroMultaDesc := 0;
        Exit;
      end;
      if (TxJuroMultaDescCobr > 0) and
        (not SQLocal.EOF) and
        (UpperCase(SQLocal.FieldByName('AVCOCENVIADO').AsString) = 'S') then
      begin
        CalculaJuroMultaDesc := VlrVenc * (TxJuroMultaDescCobr / 100);
      end;
      SQLocal.Close;
      SQLocal.Destroy;
    end;
  except
  end;
end;

procedure GravaMovimentoEstoque(SqlProd,
  SQLProdFilho,
  SQLProdSald: TQuery;
  EmprCod,
  ProdCod,
  Operacao: integer;
  Quant: double;
  EntrSai,
  DataHora,
  Valor,
  TipoMov,
  NumDocOrig,
  Lote: string);
  procedure GravaMovimento(Produto, ProdutoFilho: Integer);
  var
    ProxCod: integer;
    SairMov: Boolean;
    QueryProduto: TQuery;
    CodProduto: Integer;
    QuantOrigem: Double;
    TipoBaixa: string;
  begin
    TipoBaixa := dm.SQLLocate('PRODUTO', 'PRODICOD', 'PRODCTIPOBAIXA', IntToStr(Produto));
    if (TipoBaixa = 'N') or (TipoBaixa = 'F') then
      exit;

    SairMov := False;
    while not SairMov do
    begin
    //TENTA CRIAR REGISTRO INICIAL NA TABELA PRODUTOSALDO
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('select PRODICOD from PRODUTOSALDO where EMPRICOD=' + IntToStr(EmprCod) + ' and PRODICOD=' + IntToStr(Produto));
      DM.SQLTemplate.open;
      if DM.SQLTemplate.IsEmpty then
      begin
        DM.SQLTemplate.Close;
        DM.SQLTemplate.SQL.Clear;
        DM.SQLTemplate.SQL.Add('Insert Into PRODUTOSALDO');
        DM.SQLTemplate.SQL.Add('(EMPRICOD,');
        DM.SQLTemplate.SQL.Add('PRODICOD,');
        DM.SQLTemplate.SQL.Add('PSLDN3QTDE,');
        DM.SQLTemplate.SQL.Add('PSLDN3QTDMIN,');
        DM.SQLTemplate.SQL.Add('PSLDN3QTDMAX,');
        DM.SQLTemplate.SQL.Add('QTDE_CONSIGNADO)');
        DM.SQLTemplate.SQL.Add('values(');
        DM.SQLTemplate.SQL.Add(IntToStr(EmprCod) + ', '); //EMPRICOD
        DM.SQLTemplate.SQL.Add(IntToStr(Produto) + ', '); //PRODICOD
        DM.SQLTemplate.SQL.Add('0, '); //PSLDN3QTDE
        DM.SQLTemplate.SQL.Add('0, '); //PSLDN3QTDMIN
        DM.SQLTemplate.SQL.Add('0, '); //PSLDN3QTDMAX
        DM.SQLTemplate.SQL.Add('0) '); //QTDE_CONSIGNADO
        try
          DM.SQLTemplate.ExecSQL;
          Application.ProcessMessages;
        except
          Application.ProcessMessages;
        end;
      end;
    //PEGAR PROXIMO CODIGO MOVIMENTO DE ESTOQUE
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('select Max(MVESICOD) as CONTADOR from MOVIMENTOESTOQUE');
      DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + IntToStr(EmprCod));
      DM.SQLTemplate.SQL.Add('and   MVESDMOV = ''' + DataHora + '''');
      DM.SQLTemplate.Open;
      if (DM.SQLTemplate.FieldByName('CONTADOR').AsFloat <= 0) or not (DM.SQLTemplate.FieldByName('CONTADOR').IsNull) then
        ProxCod := DM.SQLTemplate.FieldByName('CONTADOR').AsInteger + 1
      else
        ProxCod := 1;

    //ROTINA PARA GRAVAR MOVIMENTO DO ESTOQUE(EXTRATO DE ESTOQUE)
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('Insert Into MOVIMENTOESTOQUE');
      DM.SQLTemplate.SQL.Add('(EMPRICOD, ');
      DM.SQLTemplate.SQL.Add('MVESDMOV, ');
      DM.SQLTemplate.SQL.Add('MVESICOD, ');
      DM.SQLTemplate.SQL.Add('PRODICOD, ');
      DM.SQLTemplate.SQL.Add('OPESICOD, ');
      DM.SQLTemplate.SQL.Add('MVESN3QTDENTRADA, ');
      DM.SQLTemplate.SQL.Add('MVESN3QTDSAIDA, ');

      if AnsiUpperCase(TipoMov) = 'CUPOM' then
        DM.SQLTemplate.SQL.Add('CUPOA13ID, ');

      if AnsiUpperCase(TipoMov) = 'NOTACOMPRA' then
        DM.SQLTemplate.SQL.Add('NOCPA13ID, ');

      if AnsiUpperCase(TipoMov) = 'NOTAFISCAL' then
        DM.SQLTemplate.SQL.Add('NOFIA13ID, ');

      if AnsiUpperCase(TipoMov) = 'PEDIDOVENDA' then
        DM.SQLTemplate.SQL.Add('PDVDA13ID, ');

      if AnsiUpperCase(TipoMov) = 'MOVIMENTOSDIVERSOS' then
        DM.SQLTemplate.SQL.Add('MOVDA13ID, ');

      DM.SQLTemplate.SQL.Add('LOTEA30NRO, ');
      DM.SQLTemplate.SQL.Add('MVESCESTOQUEOK, ');
      DM.SQLTemplate.SQL.Add('PENDENTE, ');
      DM.SQLTemplate.SQL.Add('REGISTRO)');
      DM.SQLTemplate.SQL.Add('values(');
      DM.SQLTemplate.SQL.Add(IntToStr(EmprCod) + ', '); //EMPRICOD
      DM.SQLTemplate.SQL.Add('''' + DataHora + ''', '); //MVESDMOV
      DM.SQLTemplate.SQL.Add(IntToStr(ProxCod) + ', '); //MVESICOD
      DM.SQLTemplate.SQL.Add(IntToStr(Produto) + ', '); //PRODICOD
      DM.SQLTemplate.SQL.Add(IntToStr(Operacao) + ', '); //OPESICOD

    // Retorna Capacidade de Embalagem do Produto Filho;
      try
        if ProdutoFilho > 0 then
        begin
          CodProduto := ProdutoFilho;
          QueryProduto := TQuery.Create(DM);
          QueryProduto.DatabaseName := 'DB';
          QueryProduto.Close;
          QueryProduto.SQL.Clear;
          QueryProduto.SQL.Add('SELECT PRODN3CAPACEMBAL FROM PRODUTO WHERE PRODICOD = ' + IntToStr(CodProduto));
          QueryProduto.Open;
          QuantOrigem := 0;
          if not QueryProduto.IsEmpty then
          begin
            QuantOrigem := Quant;
            if QueryProduto.FieldByName('PRODN3CAPACEMBAL').AsFloat > 1 then
              Quant := Quant * QueryProduto.FieldByName('PRODN3CAPACEMBAL').AsInteger;
          end;
        end;
      except
        Application.ProcessMessages;
      end;
      if (EntrSai = 'E') or (EntrSai = 'D') then
      begin
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(Quant) + ', '); //MVESN3QTDENTRADA
        DM.SQLTemplate.SQL.Add('0, '); //MVESN3QTDSAIDA
      end;
      if EntrSai = 'S' then
      begin
        DM.SQLTemplate.SQL.Add('0, '); //MVESN3QTDENTRADA
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(Quant) + ', '); //MVESN3QTDSAIDA
      end;

      DM.SQLTemplate.SQL.Add('''' + NumDocOrig + ''', ');

      if Lote <> '' then
        DM.SQLTemplate.SQL.Add('''' + LOTE + ''', ')
      else
        DM.SQLTemplate.SQL.Add('null, '); //LOTE

      DM.SQLTemplate.SQL.Add('''N'', '); //STATUS DO MOVIMENTO PARA IMPORTACAO DE LOG
      DM.SQLTemplate.SQL.Add('''S'', '); //PENDENTE
      DM.SQLTemplate.SQL.Add('''' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + ''')'); //REGISTRO
      try
        DM.SQLTemplate.ExecSQL;
        SairMov := True;
        Application.ProcessMessages;
        if QuantOrigem > 0 then
          Quant := QuantOrigem;
      except
        SairMov := False;
        Application.ProcessMessages;
        Sleep(1);
      end;
    end;
  end;
var
  Sair, ExisteFilhoAcougue: boolean;
  ProdutoComp: TQuery;
begin
  if ProdCod = 0 then
    exit;

  SqlProd.Close;
  SqlProd.SQL.Clear;
  SqlProd.SQL.Add('Select * from PRODUTO');
  SqlProd.SQL.Add('Where PRODICOD = ' + IntToStr(ProdCod));
  SqlProd.Open;

  SQLProdFilho.Close;
  SQLProdFilho.SQL.Clear;
  SQLProdFilho.SQL.Add('SELECT * FROM PRODUTOCOMPOSICAO WHERE PRODICOD = ' + IntToStr(ProdCod));
  SQLProdFilho.Open;

  if SQLProdFilho.IsEmpty then
  begin
    SQLProdFilho.Close;
    SQLProdFilho.SQL.Clear;
    SQLProdFilho.SQL.add(' SELECT prodicod, prodicodfilho, ('+StringReplace(FormatFloat('0.00',Quant),',','.',[])
    +' * percentual / 100) AS prodn3qtde, pendente, registro,  CAST(0 AS NUMERIC(15,3)) as PRODN3VLRTOTAL, '
    +' CAST(0 AS NUMERIC(15,3)) as PRODN2PERDA, CAST(0 AS NUMERIC(15,3)) as PRODN3ALTURA, '
    +' CAST(0 AS NUMERIC(15,3)) as PRODN3COMPRIMENTO, CAST(0 AS NUMERIC(15,3)) as PRODN3DIMENTOTAL, '
    +' CAST(0 AS NUMERIC(15,3)) as PRODN3LARGURA FROM PRODUTO_ACOUGUE '
    +' WHERE PRODICOD = ' + IntToStr(ProdCod));
    SQLProdFilho.Open;

    if not SQLProdFilho.IsEmpty then
      ExisteFilhoAcougue := True;
  end;

  SQLProdSald.Close;
  SQLProdSald.Open;

  if not SqlProd.EOF then
  begin
      // EFETUA A BAIXA DOS PRODUTOS QUE FAZEM PARTE DA COMPOSICAO
    if (SqlProd.FieldByName('PRODCTIPOBAIXA').Value = 'F') then
    begin
      SQLProdFilho.First;
      while not SQLProdFilho.EOF do
      begin
        Sair := False;
        while not Sair do
        begin
          try
            //
            if ExisteFilhoAcougue then
              Quant := SQLProdFilho.FindField('prodn3qtde').AsCurrency;

            GravaMovimento(SQLProdFilho.FindField('PRODICODFILHO').AsInteger, 0);
            Sair := true;
            Application.ProcessMessages;
          except
            Sair := False;
            Application.ProcessMessages;
            Sleep(1);
          end;
        end;
        SQLProdFilho.Next;
      end;
    end;
      // EFETUA A MOV DE ESTOQUE DO PRODUTO QUE ï¿½ PAI DA COMPOSICAO
      // SE O PRODUTO NAO FOR ENCONTRADO NA COMPOSICAO ENTAO
      // MOVIMENTA O ESTOQUE DELE MESMO
    if (SqlProd.FieldByName('PRODCTIPOBAIXA').Value = 'P') or
      (SqlProd.FieldByName('PRODCTIPOBAIXA').Value = 'A') then
    begin
      {SQLProdFilho.Close;
      SQLProdFilho.SQL.Clear;
      SQLProdFilho.SQL.Add('SELECT * FROM PRODUTOCOMPOSICAO WHERE PRODICODFILHO = ' + IntToStr(ProdCod));
      SQLProdFilho.Open;}
      SQLProdFilho.First;
      if (not SQLProdFilho.IsEmpty) then
      begin
        while not SQLProdFilho.Eof do
        begin
          Sair := False;
          while not Sair do
          begin
            try
              GravaMovimento(SQLProdFilho.FieldByName('PRODICOD').AsInteger, SQLProdFilho.FieldByName('PRODICODFILHO').AsInteger);
              Sair := True;
              Application.ProcessMessages;
            except
              Sair := False;
              Application.ProcessMessages;
              Sleep(1);
            end;
          end;
          if (SqlProd.FieldByName('PRODCTIPOBAIXA').Value = 'A') and not (SQLProdFilho.IsEmpty) then
          begin
            Sair := False;
            while not Sair do
            begin
              try
                GravaMovimento(SQLProdFilho.FieldByName('PRODICODFILHO').AsInteger, 0);
                Sair := True;
                Application.ProcessMessages;
              except
                Sair := False;
                Application.ProcessMessages;
                Sleep(1);
              end;
            end;
          end;
          SQLProdFilho.Next;
        end;
      end;
      if (SqlProd.FieldByName('PRODCTIPOBAIXA').Value = 'P') and (SQLProdFilho.IsEmpty) then
      begin
        Sair := False;
        while not Sair do
        begin
          try
            GravaMovimento(ProdCod, 0);
            Sair := True;
            Application.ProcessMessages;
          except
            Sair := False;
            Application.ProcessMessages;
          end;
        end;
      end;
    end;
  end;
end;

function PosicaoGrade(Grade, Tamanho: Integer): Integer;
var
  Posicao: Integer;
begin
  Result := 1;
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Text := 'Select * From GRADETAMANHO Where GRADICOD=' + IntToStr(Grade) + ' Order By GRTMICOD';
  DM.SQLTemplate.Open;
  DM.SQLTemplate.First; Posicao := 0;
  while not DM.SQLTemplate.Eof do
  begin
    Inc(Posicao);
    if DM.SQLTemplate.FindField('GRTMICOD').asInteger = Tamanho then
    begin
      Result := Posicao;
      Break;
    end;
    DM.SQLTemplate.Next;
  end;
  DM.SQLTemplate.Close;
end;

function EncontrouProduto(Codigo: string; Tabela: TObject): Boolean;
var Cod: double;
var PrimeiroChar, SegundoChar: string;
begin
  EncontrouProduto := false;
  PrimeiroChar := copy(Codigo, 1, 1);
  SegundoChar := copy(Codigo, 2, 1);
  if (PrimeiroChar = 'F') and ((SegundoChar = '0') or (SegundoChar = '1') or (SegundoChar = '2') or (SegundoChar = '3') or (SegundoChar = '4')
    or (SegundoChar = '5') or (SegundoChar = '6') or (SegundoChar = '7') or (SegundoChar = '8') or (SegundoChar = '9')) then
    Codigo := Copy(Codigo, 2, length(Codigo));

  try
    // PROCURAR NO CODIGO BARRAS PRINCIPAL
    (Tabela as TQuery).Close;
    (Tabela as TQuery).SQL.Clear;
    (Tabela as TQuery).SQL.Add('Select * from PRODUTO');
    if ProcuraProdutoPelaRef08Char then
      (Tabela as TQuery).SQL.Add('where PRODCATIVO = ''S'' and PRODA60CODBAR = ''' + Copy(Codigo, 1, 8) + '''')
    else
      (Tabela as TQuery).SQL.Add('where PRODCATIVO = ''S'' and PRODA60CODBAR = ''' + Codigo + '''');
    (Tabela as TQuery).Open;
    (Tabela as TQuery).First;
    if not (Tabela as TQuery).IsEmpty then
    begin
      EncontrouProduto := True;
      CodigoBarrasProduto := (Tabela as TQuery).FieldbyName('PRODA60CODBAR').Value;
      Exit;
    end
    else
    begin
        // PROCURAR NA TAB.CD BARRAS AUX
      dm.SQLTemplate.Close;
      dm.SQLTemplate.SQL.Clear;
      dm.SQLTemplate.SQL.Add('select PRODICOD, PRBAA15BARRAS from PRODUTOBARRAS');
      dm.SQLTemplate.SQL.Add('where PRBAA15BARRAS = ''' + Codigo + '''');
      dm.SQLTemplate.Open;
      dm.SQLTemplate.First;
      if not dm.SQLTemplate.IsEmpty then
      begin
        Codigo := dm.SQLTemplate.FieldbyName('PRODICOD').AsString;
        CodigoBarrasProduto := dm.SQLTemplate.FieldbyName('PRBAA15BARRAS').Value;
            // PROCURAR PELO CD.INTERNO DO PRODUTO
        (Tabela as TQuery).Close;
        (Tabela as TQuery).SQL.Clear;
        (Tabela as TQuery).SQL.Add('select * from PRODUTO');
        (Tabela as TQuery).SQL.Add('where PRODCATIVO = ''S'' and PRODICOD = ' + Codigo);
        (Tabela as TQuery).Open;
        (Tabela as TQuery).First;
        if not (Tabela as TQuery).IsEmpty then
        begin
          EncontrouProduto := True;
          Exit;
        end;
      end;
      if not FileExists('ProcuraApenasCdBarras.txt') then
      begin
            // PROCURAR PELO CD.INTERNO DO PRODUTO
        (Tabela as TQuery).Close;
        (Tabela as TQuery).SQL.Clear;
        (Tabela as TQuery).SQL.Add('select * from PRODUTO');
        if pos('*', Codigo) > 0 then
          (Tabela as TQuery).SQL.Add('where PRODCATIVO = ''S'' and PRODICOD = 0')
        else
        begin
          if IsNumeric(Codigo, 'INTEGER') then
            (Tabela as TQuery).SQL.Add('where PRODCATIVO = ''S'' and PRODICOD = ' + Codigo)
          else
            (Tabela as TQuery).SQL.Add('where PRODCATIVO = ''S'' and PRODICOD = 0');
        end;
        (Tabela as TQuery).Open;
        (Tabela as TQuery).First;
        if not (Tabela as TQuery).IsEmpty then
        begin
          EncontrouProduto := True;
          Exit;
        end
        else
        begin
                // Testar PRODA60REFER
          (Tabela as TQuery).Close;
          (Tabela as TQuery).SQL.Clear;
          (Tabela as TQuery).SQL.Add('select * from PRODUTO');
          if ProcuraProdutoPelaRef08Char then
            (Tabela as TQuery).SQL.Add('where PRODCATIVO = ''S'' and PRODA60REFER = ''' + Copy(Codigo, 1, 8) + '''')
          else
            (Tabela as TQuery).SQL.Add('where PRODCATIVO = ''S'' and PRODA60REFER = ''' + Codigo + '''');
          (Tabela as TQuery).Open;
          (Tabela as TQuery).First;
          if not (Tabela as TQuery).EOF then
          begin
            CodigoBarrasProduto := (Tabela as TQuery).FieldbyName('PRODA60CODBAR').Value;
            EncontrouProduto := True;
            Exit;
          end;
        end;
      end;
    end;
  except
    EncontrouProduto := False;
  end;
end;


function ArredondaValor(Valor: Double; NroCasasDec: Integer): Double;
var
  ValorFrac: Double;
begin
  ValorFrac := Frac(Valor);
  if ValorFrac <> 0.5 then
    case NroCasasDec of
      2: Result := RoundTo(Valor, 0);
      3: Result := RoundTo(Valor, -1);
      4: Result := RoundTo(Valor, -2);
      5: Result := RoundTo(Valor, -3);
    end
  else
    Result := Valor;































end;


function CalculaPrecoVenda(Produto: Integer; ValorBase, MargemLucro: Double): Double;
var
  QueryProduto, QuerySql: TQuery;
  ICMS, Denominador: Double;
begin
  if not Dm.SQLConfigVenda.Active then
    Dm.SQLConfigVenda.Open;

  QueryProduto := TRxQuery.Create(DM);
  QueryProduto.DatabaseName := 'DB';
  QueryProduto.Close;
  QueryProduto.SQL.Clear;
  QueryProduto.SQL.Add('SELECT PRODICOD,ICMSICOD,PRODN3VLRVENDA,PRODN3VLRCUSTO,PRODN3VLRCUSTOMED,PRODN3PERCMARGLUCR');
  QueryProduto.SQL.Add('FROM PRODUTO WHERE PRODICOD = ' + IntToStr(Produto));
  QueryProduto.Open;
  QuerySql := TRxQuery.Create(DM);
  QuerySql.DatabaseName := 'DB';
  QuerySql.Close;
  QuerySql.SQL.Clear;
  QuerySql.SQL.Add('SELECT CFGECTIPOMARGLUCRO FROM CONFIGGERAL');
  QuerySql.Open;
  if not QueryProduto.IsEmpty then
  begin
    if QuerySql.FieldByName('CFGECTIPOMARGLUCRO').AsString = 'L' then
    begin
      if QueryProduto.FindField('ICMSICOD').IsNull then
        ICMS := 0
      else
        ICMS := StrToFloat(SQLLocate('ICMS', 'ICMSICOD', 'ICMSN2ALIQUOTA', QueryProduto.FindField('ICMSICOD').AsString));

      if MargemLucro <= 0 then
        MargemLucro := QueryProduto.FindField('PRODN3PERCMARGLUCR').AsFloat;

      Denominador := MargemLucro +
        ICMS +
        Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsFloat +
        Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsFloat +
        Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat;

      try

        Result := ValorBase /
          (1 - (MargemLucro +
          ICMS +
          Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsFloat +
          Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsFloat +
          Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat) / 100);
      except
      end;
    end
    else
    begin
      try
        Result := ValorBase * (1 + (MargemLucro / 100));
      except
      end;
    end;
  end;
  //arredonda valor de venda
  if Dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').AsInteger > 1 then
    if (Dm.SQLConfigVenda.FieldByName('CFVECFARREDVLRVEND').AsString = 'S') then
      Result := ArredondaValor(Result, Dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').AsInteger);
  QuerySql.Close;
  QuerySql.Free;
  QueryProduto.Close;
  QueryProduto.Free;
end;

function CalculaMargemLucro(Produto: Integer; ValorBase, ValorVenda: Double): Double;
var
  QueryProduto, QuerySql: TQuery;
  ICMS, LucroBruto: Double;
begin
  QueryProduto := TRxQuery.Create(DM);
  QueryProduto.DatabaseName := 'DB';
  QueryProduto.Close;
  QueryProduto.SQL.Clear;
  QueryProduto.SQL.Add('SELECT * FROM PRODUTO');
  QueryProduto.SQL.Add(' WHERE PRODICOD = ' + IntToStr(Produto));
  QueryProduto.Open;
  QuerySql := TRxQuery.Create(DM);
  QuerySql.DatabaseName := 'DB';
  QuerySql.Close;
  QuerySql.SQL.Clear;
  QuerySql.SQL.Add('SELECT CFGECTIPOMARGLUCRO FROM CONFIGGERAL');
  QuerySql.Open;
  if not QueryProduto.IsEmpty then
  begin
    if QuerySql.FieldByName('CFGECTIPOMARGLUCRO').AsString = 'L' then
    begin
          { if QueryProduto.FindField('ICMSICOD').IsNull then
            ICMS := 0
          else
            ICMS := StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',QueryProduto.FindField('ICMSICOD').AsString));

          if ValorVenda <= 0 then
            ValorVenda := QueryProduto.FindField('PRODN3VLRVENDA').AsFloat;
          LucroBruto := ValorVenda - ValorBase -
          (ValorVenda * (ICMS  +
          Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsFloat  +
          Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsFloat     +
          Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat)/100);
          if ValorVenda <= 0 then
            Result := 0
          else
            Result := (LucroBruto / ValorVenda)*100; }

          // Coloquei as linhas abaixo apenas calcular da mesma forma q esta calculando no cad.produtos

      try
        if ValorBase > 0 then
          Result := ((ValorVenda / ValorBase) - 1) * 100
        else
          Result := 0;
      except
      end;
          //-------------------------------------------------------------------------------------------
    end
    else
    begin
      try
        if ValorBase > 0 then
          Result := ((ValorVenda / ValorBase) - 1) * 100
        else
          Result := 0;
      except
      end;
    end;
  end;
  QuerySql.Close;
  QuerySql.Free;
  QueryProduto.Close;
  QueryProduto.Free;

end;

procedure LancaReajustePreco(ValorVenda, ValorCompra, ValorCompraMedio, ValorCusto, ValorCustoMedio, Margem: Double; Produto: Integer);
var
  QueryProduto, QueryProdutoReajuste, QueryMax: TQuery;
  Erro: Boolean;
begin
  if Produto > 0 then
  begin
    QueryProduto := TRxQuery.Create(DM);
    QueryProduto.DatabaseName := 'DB';
      //SELECIONA PRODUTO
    QueryProduto.Close;
    QueryProduto.SQL.Clear;
    QueryProduto.SQL.Add('SELECT PRODN3VLRCOMPRA, PRODN3VLRCUSTO, PRODN3PERCMARGLUCR, PRODN3VLRVENDA, PRODN3VLRCOMPRAMED, PRODN3VLRCUSTOMED FROM PRODUTO');
    QueryProduto.SQL.Add('WHERE PRODICOD = ' + IntToStr(Produto));
    QueryProduto.Open;
    if (not QueryProduto.EOF) then
    begin
      if ((ValorVenda <> QueryProduto.FieldByName('PRODN3VLRVENDA').AsFloat) and (ValorVenda > 0)) or
        ((ValorCompra <> QueryProduto.FieldByName('PRODN3VLRCOMPRA').AsFloat) and (ValorCompra > 0)) or
        ((ValorCusto <> QueryProduto.FieldByName('PRODN3VLRCUSTO').AsFloat) and (ValorCusto > 0)) or
        ((Margem <> QueryProduto.FieldByName('PRODN3PERCMARGLUCR').AsFloat) and (Margem > 0)) or
        ((ValorCustoMedio <> QueryProduto.FieldByName('PRODN3VLRCUSTOMED').AsFloat) and (ValorCustoMedio > 0)) or
        ((ValorCompraMedio <> QueryProduto.FieldByName('PRODN3VLRCOMPRAMED').AsFloat) and (ValorCompraMedio > 0)) then
      begin
        QueryProdutoReajuste := TRxQuery.Create(DM);
        QueryProdutoReajuste.DatabaseName := 'DB';
        QueryMax := TRxQuery.Create(DM);
        QueryMax.DatabaseName := 'DB';
        while Erro do
        begin
          try
            QueryProdutoReajuste.Close;
            QueryProdutoReajuste.SQL.Clear;
            QueryProdutoReajuste.SQL.Add('Insert Into PRODUTOREAJUSTE');
            QueryProdutoReajuste.SQL.Add('( ');
            QueryProdutoReajuste.SQL.Add('PRRJICOD,PRODICOD,PRRJDREAJUSTE,PRRJVLRVENDA,PRRJN2VLRCOMPRA,PRRJN3ULTCOMPRAMED,PRRJN3VLRCUSTO,PRRJN3ULTCUSTOMED,PRRJN2MARGEM,PENDENTE,REGISTRO');
            QueryProdutoReajuste.SQL.Add(' )');
            QueryProdutoReajuste.SQL.Add(' Values ');
            QueryProdutoReajuste.SQL.Add(' ( ');
                    //RETORNA ULTIMO NUMERO
            QueryMax.Close;
            QueryMax.SQL.Clear;
            QueryMax.SQL.Add('Select MAX(PRRJICOD) from PRODUTOREAJUSTE where PRODICOD = ' + IntToStr(PRODUTO));
            QueryMax.SQL.Add(' AND PRRJDREAJUSTE >= ' + '''' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Now) + '''');
            QueryMax.SQL.Add(' AND PRRJDREAJUSTE <= ' + '''' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Now) + '''');
            QueryMax.Open;
                    //CODIGO
            if QueryMax.FieldByName('MAX').AsFloat > 0 then
              QueryProdutoReajuste.SQL.Add(ConvFloatToStr(QueryMax.FieldByName('MAX').AsFloat + 1) + ',')
            else
              QueryProdutoReajuste.SQL.Add('1,');
                    //PRODUTO
            QueryProdutoReajuste.SQL.Add(IntToStr(Produto) + ',');
                    //DATA DO REAJUSTE
            QueryProdutoReajuste.SQL.Add('''' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Now) + '''' + ',');
                    //VALOR DE VENDA
            QueryProdutoReajuste.SQL.Add(ConvFloatToStr(ValorVenda) + ',');
                    //VALOR DE COMPRA
            QueryProdutoReajuste.SQL.Add(ConvFloatToStr(ValorCompra) + ',');
                    //VALOR DE COMPRA MEDIO
            QueryProdutoReajuste.SQL.Add(ConvFloatToStr(ValorCompraMedio) + ',');
                    //VALOR DE CUSTO
            QueryProdutoReajuste.SQL.Add(ConvFloatToStr(ValorCusto) + ',');
                    //VALOR DE CUSTO MEDIO
            QueryProdutoReajuste.SQL.Add(ConvFloatToStr(ValorCustoMedio) + ',');
                    //MARGEM DE LUCRO
            QueryProdutoReajuste.SQL.Add(ConvFloatToStr(Margem) + ',');
            QueryProdutoReajuste.SQL.Add('''S'',');
            QueryProdutoReajuste.SQL.Add('''' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Now) + '''');
            QueryProdutoReajuste.SQL.Add(' ) ');
            QueryProdutoReajuste.ExecSQL;
            Erro := False;
          except
            Erro := True;
            Application.ProcessMessages;
          end;
        end;
        QueryProdutoReajuste.Close;
        QueryProdutoReajuste.Destroy;
        QueryMax.Close;
        QueryMax.Destroy;
      end;
    end;
    QueryProduto.Close;
    QueryProduto.Destroy;
  end;
end;

function ArredondaValor1(Valor: Double; NroCasasDec: Integer): Double;
var
  ValorFrac: Double;
begin
  ValorFrac := Frac(Valor);
  if ValorFrac <> 0.5 then
    Result := RoundTo(Valor, -NroCasasDec)
  else
    Result := Valor;
end;


function RetornaUltimaCotacaoMoeda(Dia: TDateTime; Moeda: string): Double;
var
  Query: Tquery;
begin
  Query := Tquery.Create(DM);
  Query.DatabaseName := 'DB';
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT * FROM COTACAOMOEDA WHERE CTMODDIA <= ''' + FormatDateTime('mm/dd/yyyy', Dia) + ''' AND ');
  Query.SQL.Add('CTMOA5MOEDA = ''' + MOEDA + '''');
  Query.SQL.Add('ORDER BY REGISTRO DESC');
  Query.Open;
  if not Query.IsEmpty then
    RetornaUltimaCotacaoMoeda := Query.FieldByName('CTMON3VLRDIA').AsFloat
  else
    RetornaUltimaCotacaoMoeda := 0;

  Query.Close;
  Query.Free;
end;


function TrocaPontoPorVirgula(Numero: string): string;
var Wstr: string;
begin
  if Numero <> '' then
  begin
    Wstr := Numero;
    if Pos('.', Wstr) > 0 then
      TrocaPontoPorVirgula := Copy(Wstr, 1, Pos('.', Wstr) - 1) + ',' + Copy(Wstr, Pos('.', Wstr) + 1, 3)
    else
      TrocaPontoPorVirgula := Numero;
  end
  else TrocaPontoPorVirgula := '0,00';
end;

function TrocaVirgulaPorPonto(Numero: string): string;
var Wstr: string;
begin
  if Numero <> '' then
  begin
    Wstr := Numero;
    if Pos(',', Wstr) > 0 then
      TrocaVirgulaPorPonto := Copy(Wstr, 1, Pos(',', Wstr) - 1) + '.' + Copy(Wstr, Pos(',', Wstr) + 1, 3)
    else
      TrocaVirgulaPorPonto := Numero;
  end
  else TrocaVirgulaPorPonto := '0.00';
end;


function IsNumeric(Valor, Tipo: string): boolean;
var
  NumDbl: double;
  NumInt: integer;
begin
  Result := true;
  if AnsiUpperCase(Tipo) = 'FLOAT' then
  begin
    try
      NumDbl := StrToFloat(Valor);
    except
      Result := false;
    end;
  end;

  if AnsiUpperCase(Tipo) = 'INTEGER' then
  begin
    try
      NumDbl := StrToInt(Valor);
    except
      Result := false;
    end;
  end;
end;


function GeraCodigoBarras(CodigoBase: string): string;
var
  CodigoBarra: string;
begin
  if Length(CodigoBase) < 13 then
  begin
    case Length(CodigoBase) of
      01: CodigoBarra := '99900000000' + CodigoBase;
      02: CodigoBarra := '9990000000' + CodigoBase;
      03: CodigoBarra := '999000000' + CodigoBase;
      04: CodigoBarra := '99900000' + CodigoBase;
      05: CodigoBarra := '9990000' + CodigoBase;
      06: CodigoBarra := '999000' + CodigoBase;
      07: CodigoBarra := '99900' + CodigoBase;
      08: CodigoBarra := '9990' + CodigoBase;
      09: CodigoBarra := '999' + CodigoBase;
      10: CodigoBarra := '00' + CodigoBase;
      11: CodigoBarra := '0' + CodigoBase;
      12: CodigoBarra := CodigoBase;
    end;
  end;
  Result := CodigoBarra;
end;


function ValidaCGC(CGC: string): boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12: integer;
  d1, d2: integer;
  digitado, calculado: string;
begin
  n1 := StrToInt(CGC[1]);
  n2 := StrToInt(CGC[2]);
  n3 := StrToInt(CGC[3]);
  n4 := StrToInt(CGC[4]); // Retira cada numero do Edit, e joda p/ variavel
  n5 := StrToInt(CGC[5]);
  n6 := StrToInt(CGC[6]);
  n7 := StrToInt(CGC[7]);
  n8 := StrToInt(CGC[8]);
  n9 := StrToInt(CGC[9]);
  n10 := StrToInt(CGC[10]);
  n11 := StrToInt(CGC[11]);
  n12 := StrToInt(CGC[12]);
  d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5 * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;
  d1 := 11 - (d1 mod 11);
  if d1 >= 10 then d1 := 0;
  d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6 * 9 + n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6;
  d2 := 11 - (d2 mod 11);
  if d2 >= 10 then d2 := 0;
  calculado := inttostr(d1) + inttostr(d2);
  digitado := CGC[13] + CGC[14];
  if calculado = digitado then
    ValidaCGC := true
  else
    ValidaCGC := false;
end;

function TiraCaracteres(SubString: string; Caracteres: string = '.,/\-'): string;
var
  i: Integer;
begin
  for i := 1 to Length(Caracteres) do
    SubString := StringReplace(SubString, Caracteres[i], '', [rfReplaceAll]);
  Result := SubString;
end;

function iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;
begin
  if Condicao then
    Result := Verdadeiro
  else
    Result := Falso;
end;


function ValidaCPF(CPF: string): boolean;
var
  n1, n2, n3, n4, n5, n6, n7, n8, n9: integer;
  d1, d2: integer;
  digitado, calculado: string;
begin
  n1 := StrToInt(CPF[1]);
  n2 := StrToInt(CPF[2]);
  n3 := StrToInt(CPF[3]);
  n4 := StrToInt(CPF[4]);
  n5 := StrToInt(CPF[5]);
  n6 := StrToInt(CPF[6]);
  n7 := StrToInt(CPF[7]);
  n8 := StrToInt(CPF[8]);
  n9 := StrToInt(CPF[9]);
  d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10;
  d1 := 11 - (d1 mod 11);
  if d1 >= 10 then d1 := 0;
  d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11;
  d2 := 11 - (d2 mod 11);
  if d2 >= 10 then d2 := 0;
  calculado := InTtoStr(d1) + InTtoStr(d2);
  digitado := CPF[10] + CPF[11];
  if calculado = digitado then
    ValidaCPF := true
  else
    ValidaCPF := false;
end;

procedure LancaMovimentacaoTesouraria(Empresa, Terminal, Numerario, OperacaoTes: Integer; Valor: Double; Historico, IDContaPagar, IDContaReceber, IDCheque, IDFechaCaixa: string; DataMovimento: TDateTime; DocOrigem: string; PlanoContas: string);
var
  Tesouraria, Operacao, SQLGeral: TRxQuery;
  ProximoCodigo: Double;
  IDTesouraria: string;
begin
  Tesouraria := TRxQuery.Create(DM);
  Tesouraria.DatabaseName := 'DB';
  SQLGeral := TRxQuery.Create(DM);
  SQLGeral.DatabaseName := 'DB';
  Operacao := TRxQuery.Create(DM);
  Operacao.DatabaseName := 'DB';
  Operacao.Close;
  Operacao.SQL.Clear;
  Operacao.SQL.Add('SELECT OPTECDEBCRED FROM OPERACAOTESOURARIA WHERE OPTEICOD = ' + IntToStr(OperacaoTes));
  Operacao.Open;
  if not Operacao.IsEmpty then
  begin
    if Operacao.FindField('OPTECDEBCRED').AsString <> '' then
    begin
      Dm.DB.StartTransaction;
      Tesouraria.Close;
      Tesouraria.SQL.Clear;
          //Campos da tabela
      Tesouraria.SQL.Add('INSERT INTO TESOURARIA (');
      Tesouraria.SQL.Add('TESOA13ID , ');
      Tesouraria.SQL.Add('EMPRICOD , ');
      Tesouraria.SQL.Add('TERMICOD , ');
      Tesouraria.SQL.Add('TESOICOD , ');
      Tesouraria.SQL.Add('TESODMOV , ');
      Tesouraria.SQL.Add('TESON2VLRDEBITO , ');
      Tesouraria.SQL.Add('TESON2VLRCREDITO , ');
      Tesouraria.SQL.Add('NUMEICOD , ');
      Tesouraria.SQL.Add('OPTEICOD , ');
      Tesouraria.SQL.Add('TESOA255HIST , ');
      Tesouraria.SQL.Add('CTRCA13ID , ');
      Tesouraria.SQL.Add('CTPGA13ID , ');
      Tesouraria.SQL.Add('CQEMA13ID , ');
      Tesouraria.SQL.Add('FECXA13ID , ');
      Tesouraria.SQL.Add('USUAICOD , ');
      Tesouraria.SQL.Add('PENDENTE , ');
      Tesouraria.SQL.Add('REGISTRO , ');
      Tesouraria.SQL.Add('TESOA20DOCORIGEM');
      if PlanoContas <> '' then
        Tesouraria.SQL.Add(', PLCTA15COD');
      Tesouraria.SQL.Add(') Values (');
          //Valores dos campos
      SQLGeral.Close;
      SQLGeral.SQL.Add('SELECT MAX(TESOICOD) FROM TESOURARIA WHERE EMPRICOD = ' + IntToStr(Empresa) + ' AND TERMICOD = ' + IntToStr(Terminal));
      SQLGeral.Open;
      if SQLGeral.IsEmpty then
        ProximoCodigo := 1
      else
        ProximoCodigo := SQLGeral.FindField('MAX').AsFloat + 1;
      IDTesouraria := FormatFloat('000', Empresa) + FormatFloat('000', Terminal) + FormatFloat('000000', ProximoCodigo);
      IDTesouraria := IDTesouraria + DigitVerifEAN(IDTesouraria);
      Tesouraria.SQL.Add('''' + IDTesouraria + '''' + ', '); //ID
      Tesouraria.SQL.Add(IntToStr(Empresa) + ', '); //EMPRESA
      Tesouraria.SQL.Add(IntToStr(Terminal) + ', '); //TERMINAL
      Tesouraria.SQL.Add(FloatToStr(ProximoCodigo) + ', '); //CODIGO
      Tesouraria.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', DataMovimento) + '''' + ' , '); //DATA MOV
      case Operacao.FindField('OPTECDEBCRED').AsString[1] of
        'D': begin
            Tesouraria.SQL.Add(ConvFloatToStr(Valor) + ', '); //DEBITO
            Tesouraria.SQL.Add('0, '); //CREDITO
          end;
        'C': begin
            Tesouraria.SQL.Add('0, '); //DEBITO
            Tesouraria.SQL.Add(ConvFloatToStr(Valor) + ', '); //CREDITO
          end;
      end;
      Tesouraria.SQL.Add(IntToStr(Numerario) + ', '); //NUMERARIO
      Tesouraria.SQL.Add(IntToStr(OperacaoTes) + ', '); //OPERACAO
      Tesouraria.SQL.Add('''' + Historico + '''' + ', '); //HISTORICO

      if IDContaReceber <> '' then
        Tesouraria.SQL.Add('''' + IDContaReceber + '''' + ', ')
      else
        Tesouraria.SQL.Add('Null, ');

      if IDContaPagar <> '' then
        Tesouraria.SQL.Add('''' + IDContaPagar + '''' + ', ')
      else
        Tesouraria.SQL.Add('Null, ');

      if IDCheque <> '' then
        Tesouraria.SQL.Add('''' + IDCheque + '''' + ', ')
      else
        Tesouraria.SQL.Add('Null, ');

      if IDFechaCaixa <> '' then
        Tesouraria.SQL.Add('''' + IDFechaCaixa + '''' + ', ')
      else
        Tesouraria.SQL.Add('Null, ');

      Tesouraria.SQL.Add(IntToStr(DM.UsuarioAtual) + ', ');

      Tesouraria.SQL.Add('''S'' , '); // Pendente
      Tesouraria.SQL.Add('''' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '''  ,'); // Registro

      Tesouraria.SQL.Add('''' + DocOrigem + ''''); //DOCUMENTO ORIGEM
      if PlanoContas <> '' then
        Tesouraria.SQL.Add(', ''' + PlanoContas + ''')') //PLANO DE CONTAS
      else
        Tesouraria.SQL.Add(')');
      Tesouraria.ExecSQL;
      Dm.DB.Commit;
    end
    else
    begin
      Informa('A operação de tesouraria escolhida não tem tipo definido, verifique o cadastro !');
      Exit;
    end;
  end
  else
  begin
    Informa('Operação de tesouraria não foi encontrada ! Impossível continuar.');
  end;
end;

procedure AtualizaSaldoContaCorrente(ContaCorrente: Integer; ValorDebito, ValorCredito: Double);
var
  SqlConta: TRxQuery;
  SaldoAtual, NovoSaldo: Double;
begin
  SaldoAtual := 0;
  NovoSaldo := 0;
  SqlConta := TRxQuery.Create(DM);
  SqlConta.DatabaseName := 'DB';
  SqlConta.Close;
  SqlConta.SQL.Clear;
  SqlConta.SQL.Add('SELECT CTCRN2SALDOATUAL FROM CONTACORRENTE where CTCRICOD = ' + IntToStr(ContaCorrente));
  SqlConta.Open;
  if not SqlConta.IsEmpty then
  begin
    SaldoAtual := SqlConta.FindField('CTCRN2SALDOATUAL').AsFloat;
    if ValorDebito > 0 then
    begin
      NovoSaldo := SaldoAtual - ValorDebito;
      SqlConta.Close;
      SqlConta.SQL.Clear;
      SqlConta.SQL.Add('UPDATE CONTACORRENTE SET CTCRN2SALDOATUAL = ' + ConvFloatToStr(NovoSaldo) + ' , CTCRDULTALTSALDO = ''' + FormatDateTime('mm/dd/yyyy', Now) + ''' , Pendente=''S''');
      SqlConta.SQL.Add('WHERE CTCRICOD = ' + IntToStr(ContaCorrente));
      SqlConta.ExecSQL;
    end
    else
    begin
      NovoSaldo := SaldoAtual + ValorCredito;
      SqlConta.Close;
      SqlConta.SQL.Clear;
      SqlConta.SQL.Add('UPDATE CONTACORRENTE SET CTCRN2SALDOATUAL = ' + ConvFloatToStr(NovoSaldo) + ' , CTCRDULTALTSALDO = ''' + FormatDateTime('mm/dd/yyyy', Now) + ''', Pendente=''S''');
      SqlConta.SQL.Add('WHERE CTCRICOD = ' + IntToStr(ContaCorrente));
      SqlConta.ExecSQL;
    end;
  end
  else
  begin
    Informa('Conta Corrente não encontrada !');
    Exit;
  end;
end;

function DigitVerifEAN(Cod: string): string;
var Digito: string[1];
  DAux: Double;
  Par,
    Impar: Integer;
  Str_Aux: string;
begin
  DigitVerifEAN := '';

  {***********  CODIGO REDUZIDO DE PRODUTOS ***********}
  if Length(Cod) = 3 then
  begin
    Impar := StrtoInt(Copy(Cod, 1, 1)) +
      StrtoInt(Copy(Cod, 3, 1));

    Par := StrtoInt(Copy(Cod, 2, 1));

    DAux := (Par * 3) + Impar;
    DAux := DAux / 10;
    Str_Aux := FloatToStr(DAux);
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux) + 1, 1);
      Digito := floattostr(10 - strtofloat(Digito));
    end
    else
      Digito := '0';

    DigitVerifEAN := Digito;





















  end;

  {***********  EAN8 ***********}
  if Length(Cod) = 7 then
  begin
    Impar := StrtoInt(Copy(Cod, 01, 1)) +
      StrtoInt(Copy(Cod, 03, 1)) +
      StrtoInt(Copy(Cod, 05, 1)) +
      StrtoInt(Copy(Cod, 07, 1));

    Par := StrtoInt(Copy(Cod, 02, 1)) +
      StrtoInt(Copy(Cod, 04, 1)) +
      StrtoInt(Copy(Cod, 06, 1));

    DAux := (Par * 3) + Impar;
    DAux := DAux / 10;
    Str_Aux := FloatToStr(DAux);
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux) + 1, 1);
      Digito := floattostr(10 - strtofloat(Digito));
    end
    else
      Digito := '0';

    DigitVerifEAN := Digito;
  end;

  {***********  EAN13 ***********}
  if Length(Cod) = 12 then
  begin
    Impar := StrtoInt(Copy(Cod, 01, 1)) +
      StrtoInt(Copy(Cod, 03, 1)) +
      StrtoInt(Copy(Cod, 05, 1)) +
      StrtoInt(Copy(Cod, 07, 1)) +
      StrtoInt(Copy(Cod, 09, 1)) +
      StrtoInt(Copy(Cod, 11, 1));

    Par := StrtoInt(Copy(Cod, 02, 1)) +
      StrtoInt(Copy(Cod, 04, 1)) +
      StrtoInt(Copy(Cod, 06, 1)) +
      StrtoInt(Copy(Cod, 08, 1)) +
      StrtoInt(Copy(Cod, 10, 1)) +
      StrtoInt(Copy(Cod, 12, 1));

    DAux := (Par * 3) + Impar;
    DAux := DAux / 10;
    Str_Aux := FloatToStr(DAux);
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux) + 1, 1);
      Digito := floattostr(10 - strtofloat(Digito));
    end
    else
      Digito := '0';

    DigitVerifEAN := Digito;
  end;

  {***********  DUN14 ***********}
  if Length(Cod) = 13 then
  begin
    Impar := StrtoInt(Copy(Cod, 01, 1)) +
      StrtoInt(Copy(Cod, 03, 1)) +
      StrtoInt(Copy(Cod, 05, 1)) +
      StrtoInt(Copy(Cod, 07, 1)) +
      StrtoInt(Copy(Cod, 09, 1)) +
      StrtoInt(Copy(Cod, 11, 1)) +
      StrtoInt(Copy(Cod, 13, 1));

    Par := StrtoInt(Copy(Cod, 02, 1)) +
      StrtoInt(Copy(Cod, 04, 1)) +
      StrtoInt(Copy(Cod, 06, 1)) +
      StrtoInt(Copy(Cod, 08, 1)) +
      StrtoInt(Copy(Cod, 10, 1)) +
      StrtoInt(Copy(Cod, 12, 1));

    DAux := (Impar * 3) + Par;
    DAux := DAux / 10;
    Str_Aux := FloatToStr(DAux);
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux) + 1, 1);
      Digito := floattostr(10 - strtofloat(Digito));
    end
    else
      Digito := '0';

    DigitVerifEAN := Digito;
  end;
end;


procedure LancaMovimentacaoBanco(Empresa, ContaCorrente, Operacao, NroCheque: integer; ValorMov: Double; BomPara, DtBaixa, DtMovimento: TDateTime; Historico, Favorecido, IDContasReceber, IDContasPagar, IDChqEmitido, IDPlanoContas: string);
var
  SQLConta, SQLOperacao, SQLLancamento, SQLGeral: TRxQuery;
  ProximoCodigo: Double;
  IDMovBanco: string;
begin
  SQLConta := TRxQuery.Create(DM);
  SQLConta.DatabaseName := 'DB';
  SQLConta.Close;
  SQLConta.SQL.Clear;
  SQLConta.SQL.Add('SELECT * FROM CONTACORRENTE WHERE CTCRICOD = ' + IntToStr(ContaCorrente));
  SQLConta.Open;
  if SQLConta.IsEmpty then
  begin
    Informa('Conta Corrente não encontrada !');
    Exit;
  end;
  SQLOperacao := TRxQuery.Create(DM);
  SQLOperacao.DatabaseName := 'DB';
  SQLOperacao.Close;
  SQLOperacao.SQL.Clear;
  SQLOperacao.SQL.Add('SELECT * FROM OPERACAOBANCO WHERE OPBCICOD = ' + IntToStr(Operacao));
  SQLOperacao.Open;
  if SQLOperacao.IsEmpty then
  begin
    Informa('Operação Bancária não encontrada !');
    Exit;
  end;
  SQLLancamento := TRxQuery.Create(DM);
  SQLLancamento.DatabaseName := 'DB';
  SQLGeral := TRxQuery.Create(DM);
  SQLGeral.DatabaseName := 'DB';
  // Inicia Transação
//  Dm.DB.StartTransaction;
  if SQLOperacao.FindField('OPBCCALTSALDO').AsVariant <> Null then
  begin
    if SQLOperacao.FindField('OPBCCALTSALDO').AsString[1] = 'S' then
    begin
      SQLLancamento.Close;
          // CAMPOS
      SQLLancamento.SQL.Add('INSERT INTO MOVIMENTOBANCO (');
      SQLLancamento.SQL.Add('MVBCA13ID, ');
      SQLLancamento.SQL.Add('EMPRICOD, ');
      SQLLancamento.SQL.Add('MVBCICOD, ');
      SQLLancamento.SQL.Add('MVBCDLANC, ');
      SQLLancamento.SQL.Add('BANCA5COD, ');
      SQLLancamento.SQL.Add('CTCRICOD, ');
      SQLLancamento.SQL.Add('MVBCA6NROCHQ, ');
      SQLLancamento.SQL.Add('MVBCN2VLRDEB, ');
      SQLLancamento.SQL.Add('MVBCN2VLRCRED, ');
      SQLLancamento.SQL.Add('MVBCDCHQBOMPARA, ');
      SQLLancamento.SQL.Add('MVBCDCHQBAIXA, ');
      SQLLancamento.SQL.Add('MVBCA254HIST, ');
      SQLLancamento.SQL.Add('MVBCA60FAVORECIDO, ');
      SQLLancamento.SQL.Add('OPBCICOD, ');
      SQLLancamento.SQL.Add('CTRCA13ID, ');
      SQLLancamento.SQL.Add('CTPGA13ID, ');
      SQLLancamento.SQL.Add('CQEMA13ID, ');
      SQLLancamento.SQL.Add('PENDENTE, ');
      SQLLancamento.SQL.Add('REGISTRO, ');
      SQLLancamento.SQL.Add('PLCTA15COD)');
      SQLLancamento.SQL.Add('VALUES (');
          // VALORES
          {Capturando o próximo código}
      SQLGeral.Close;
      SQLGeral.SQL.Add('SELECT MAX(MVBCICOD) FROM MOVIMENTOBANCO');
      SQLGeral.Open;
      if SQLGeral.IsEmpty then
        ProximoCodigo := 1
      else
        ProximoCodigo := SQLGeral.FindField('MAX').AsFloat + 1;
      IDMovBanco := FormatFloat('000', Empresa);
      IDMovBanco := IDMovBanco + FormatFloat('000000000', ProximoCodigo);
      IDMovBanco := IDMovBanco + DigitVerifEAN(IDMovBanco);
      SQLLancamento.SQL.Add('''' + IDMovBanco + '''' + ',');
      SQLLancamento.SQL.Add(IntToStr(Empresa) + ', ');
      SQLLancamento.SQL.Add(FloatToStr(ProximoCodigo) + ', ');
      SQLLancamento.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', DtMovimento) + '''' + ', '); // Lancamento
      SQLLancamento.SQL.Add(SQLConta.FindField('BANCA5COD').AsString + ', ');
      SQLLancamento.SQL.Add(IntToStr(ContaCorrente) + ', ');
      if NroCheque > 0 then
        SQLLancamento.SQL.Add('''' + IntToStr(NroCheque) + '''' + ', ')
      else
        SQLLancamento.SQL.Add('Null, ');
      case SQLOperacao.FindField('OPBCCTIPO').AsString[1] of
        'D': begin
            SQLLancamento.SQL.Add(ConvFloatToStr(ValorMov) + ', '); //ValorDebito
            SQLLancamento.SQL.Add('0, '); //ValorCredito
          end;
        'C': begin
            SQLLancamento.SQL.Add('0, '); //ValorDebito
            SQLLancamento.SQL.Add(ConvFloatToStr(ValorMov) + ', '); //ValorCredito
          end;
      end;

      if BomPara > 0 then
        SQLLancamento.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', BomPara) + '''' + ', ')
      else
        SQLLancamento.SQL.Add('Null, ');

      if DtBaixa > 0 then
        SQLLancamento.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', DtBaixa) + '''' + ', ')
      else
        SQLLancamento.SQL.Add('Null, ');

      if Historico <> '' then
        SQLLancamento.SQL.Add('''' + Historico + '''' + ', ')
      else
        SQLLancamento.SQL.Add('Null, ');

      if Favorecido <> '' then
        SQLLancamento.SQL.Add('''' + Favorecido + '''' + ', ')
      else
        SQLLancamento.SQL.Add('Null, ');

      SQLLancamento.SQL.Add(IntToStr(Operacao) + ', ');

      if IDContasReceber <> '' then
        SQLLancamento.SQL.Add('''' + IDContasReceber + ''' ,')
      else
        SQLLancamento.SQL.Add('Null ,');

      if IDContasPagar <> '' then
        SQLLancamento.SQL.Add('''' + IDContasPagar + ''' ,')
      else
        SQLLancamento.SQL.Add('Null ,');

      if IDChqEmitido <> '' then
        SQLLancamento.SQL.Add('''' + IDChqEmitido + ''' ,')
      else
        SQLLancamento.SQL.Add('Null ,');

      SQLLancamento.SQL.Add('''S'', ');
      SQLLancamento.SQL.Add('''' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Now) + ''' ,');

      if IDPlanoContas <> '' then
        SQLLancamento.SQL.Add('''' + IDPlanoContas + '''' + ' )')
      else
        SQLLancamento.SQL.Add('NULL )');

      SQLLancamento.ExecSQL;
//          Dm.DB.Commit;
      case SQLOperacao.FindField('OPBCCTIPO').AsString[1] of
        'D': begin
            AtualizaSaldoContaCorrente(ContaCorrente, ValorMov, 0);
          end;
        'C': begin
            AtualizaSaldoContaCorrente(ContaCorrente, 0, ValorMov);
          end;
      end;
    end
    else
    begin
      Informa('Esta operação bancária não pode alterar o saldo da conta corrente. A Operação será cancelada !');
//          Dm.DB.Rollback;
      Exit;
    end;
  end
  else
  begin
    Informa('A operação bancária não foi configurada corretamente. Verifique !');
//      Dm.DB.Rollback;
    Exit;
  end;
  SQLConta.Destroy;
  SQLGeral.Destroy;
  SQLOperacao.Destroy;
  SQLLancamento.Destroy;

end;

function ConvFloatToStr(Numero: Double): string;
var
  Wstr: string;
begin
  ConvFloatToStr := '0.00';
  if Numero <> null then
  begin
    Wstr := FloatToStr(Numero);
    ConvFloatToStr := Wstr;
    if Pos(',', Wstr) > 0 then
      ConvFloatToStr := Copy(Wstr, 1, Pos(',', Wstr) - 1) + '.' + Copy(Wstr, Pos(',', Wstr) + 1, 3)
  end
  else ConvFloatToStr := '0.00';
end;

function TiraPontoMilhar(Numero: Double): Double;
var
  Wstr: string;
  WNum: Double;
begin
  TiraPontoMilhar := 0.00;
  if Numero <> null then
  begin
    {Wstr := FloatToStr(Numero) ;
    Delete(WStr, 1,Pos('.', Wstr)) ;}
    WNum := StrToFloat(FloatToStr(Numero));
    TiraPontoMilhar := WNum;
  end;
end;

procedure InformaErro(Texto: string; Abortar: Boolean; SetarFoco: TWinControl);
begin
  Application.MessageBox(PChar(Texto), PChar('Erro ' + Application.Title), MB_SYSTEMMODAL + MB_Ok + MB_ICONINFORMATION + MB_SETFOREGROUND);
  if SetarFoco <> nil then
    SetarFoco.SetFocus;
  if Abortar then
    Abort;
end;

function Pergunta(BotaoDefault, Texto: string): boolean;
begin
  if AnsiUpperCase(BotaoDefault) = 'SIM' then
  begin
    if Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON1) = IdYes then
      Pergunta := true
    else
      Pergunta := false;
  end
  else
    if Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
      Pergunta := true
    else
      Pergunta := false;
end;

function ExecSql(xsql: string; Tipo: Integer = 0): TQuery;
begin
  try
    if tipo = 0 then
    begin
      Result := TQuery.Create(nil);
      Result.DatabaseName := 'DB';
      Result.SQL.Text := xsql;
      Result.Open;
    end
    else begin
      DM.DB.Execute(xsql);
      Result := nil;
    end;
  except
    on e: exception do
      ShowMessage('Erro sql: ' + xsql + ' - ' + e.Message);
  end;
end;

procedure AtualizaTotaisCabecalhoContasPagar(NroDocumento: string);
var
  PAGAN2VLRRECTO,
    PAGAN2VLRJURO,
    PAGAN2DESC,
    PAGAN2VLRMULTA: double;
  DATAULTPAG: TDateTime;
begin
  PAGAN2VLRRECTO := 0;
  PAGAN2VLRJURO := 0;
  PAGAN2DESC := 0;
  PAGAN2VLRMULTA := 0;
  DATAULTPAG := 0;

  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('select sum(PAGAN3VLRPAGTO) AS RECTO,');
  DM.SQLTemplate.SQL.Add('sum(PAGAN3VLRJURO) AS JURO,');
  DM.SQLTemplate.SQL.Add('sum(PAGAN3VLRDESC) AS DESCO,');
  DM.SQLTemplate.SQL.Add('sum(PAGAN3VLRMULTA) AS MULTA from PAGAMENTO');
  DM.SQLTemplate.SQL.Add('where CTPGA13ID = ''' + NroDocumento + '''');
  DM.SQLTemplate.SQL.Add('group by CTPGA13ID');
  DM.SQLTemplate.Open;
  if not DM.SQLTemplate.EOF then
  begin
    PAGAN2VLRRECTO := DM.SQLTemplate.FieldByName('RECTO').Value;
    PAGAN2VLRJURO := DM.SQLTemplate.FieldByName('JURO').Value;
    PAGAN2DESC := DM.SQLTemplate.FieldByName('DESCO').Value;
    PAGAN2VLRMULTA := DM.SQLTemplate.FieldByName('MULTA').Value;

    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('select PAGADPAGTO from PAGAMENTO');
    DM.SQLTemplate.SQL.Add('where CTPGA13ID = ''' + NroDocumento + '''');
    DM.SQLTemplate.SQL.Add('order by PAGADPAGTO');
    DM.SQLTemplate.Open;
    DM.SQLTemplate.Last;
    DATAULTPAG := DM.SQLTemplate.FieldByName('PAGADPAGTO').Value;
  end;

  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('update CONTASPAGAR');
  DM.SQLTemplate.SQL.Add('set');
  if DATAULTPAG > 0 then
    DM.SQLTemplate.SQL.Add('CTPGDULTPAGTO = ''' + FormatDateTime('mm/dd/yyyy', DATAULTPAG) + ''', ')
  else
    DM.SQLTemplate.SQL.Add('CTPGDULTPAGTO = Null, ');
  DM.SQLTemplate.SQL.Add('CTPGN2TOTPAG = ' + ConvFloatToStr(PAGAN2VLRRECTO) + ', ');
  DM.SQLTemplate.SQL.Add('CTPGN3JUROPAGTO = ' + ConvFloatToStr(PAGAN2VLRJURO) + ', ');
  DM.SQLTemplate.SQL.Add('CTPGN3MULTAPAGTO = ' + ConvFloatToStr(PAGAN2VLRMULTA) + ', ');
  DM.SQLTemplate.SQL.Add('CTPGN3DESCPAGTO = ' + ConvFloatToStr(PAGAN2DESC) + ', ');
  DM.SQLTemplate.SQL.Add('REGISTRO = ''' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + ''', ');
  DM.SQLTemplate.SQL.Add('PENDENTE = ''S''');
  DM.SQLTemplate.SQL.Add('where CTPGA13ID = ''' + NroDocumento + '''');
  DM.SQLTemplate.ExecSQL;
end;

function AutenticaUsuario(UserNameDefault, CAMPO: string; var InfoRetorno: TInfoRetornoUser): string;
var
  SQLUsuario: TQuery;
  UserName: string;
  Password: string;
  ContUser: Integer;
  UsuarioOK, SenhaOK: Boolean;
begin
  SQLUsuario := TQuery.Create(DM);
  SQLUsuario.DatabaseName := 'DB';
  UserName := '';
  Password := '';
  ContUser := 0;
  // While (ContUser < 3) and (MResult <> MrCancel) do
  while (ContUser < 3) do
  begin
      // PassWord := InputBoxMask('Autenticação de Usuário','Digite a sua senha de usuário :','');
    Application.CreateForm(TFormTelaAutenticaUsuario, FormTelaAutenticaUsuario);
    FormTelaAutenticaUsuario.ShowModal;
    if (FormTelaAutenticaUsuario.ModalResult = MrOK) and (FormTelaAutenticaUsuario.EditSenha.Text <> '') then
      Password := FormTelaAutenticaUsuario.EditSenha.Text;
    if (FormTelaAutenticaUsuario.ModalResult = MrCancel) then
    begin
      ContUser := 3; // Sai da Rotina
      Exit;
    end;

    FormTelaAutenticaUsuario.Close;
    FormTelaAutenticaUsuario.Free;
    SQLUsuario.Close;
    SQLUsuario.SQL.Clear;
    SQLUsuario.SQL.Add('SELECT * FROM USUARIO WHERE USUAA5SENHA = ' + '''' + UpperCase(Password) + '''');
    SQLUsuario.Open;
    if SQLUsuario.IsEmpty then
    begin
      ShowMessage('Senha Inválida!');
      Inc(ContUser);
    end
    else
    begin
      if SQLUsuario.RecordCount > 1 then
      begin
        ShowMessage('Existe mais de um usuario com a mesma senha!');
        Inc(ContUser);
      end
      else
      begin
        UserName := SQLUsuario.fieldbyname('USUAA60LOGIN').Value;
        SenhaOK := True;
        ContUser := 3;
      end;
    end;
  end;
  if not SQLUsuario.IsEmpty then
  begin
    AutenticaUsuario := SQLUsuario.FieldByName(CAMPO).AsString;
    InfoRetorno.CampoRetorno := SQLUsuario.FieldByName(CAMPO).FieldName;
    InfoRetorno.CodUsuarioAutenticado := SQLUsuario.FieldByName('USUAICOD').AsInteger;
    InfoRetorno.NomeUsuarioAutenticado := SQLUsuario.FieldByName('USUAA60LOGIN').AsString;
    InfoRetorno.ModalResult := MrOk;
  end;
  SQLUsuario.Destroy;
  CodUsuarioAutorizouOperacao := InfoRetorno.CodUsuarioAutenticado;
  UsuarioAutorizouOperacao := InfoRetorno.NomeUsuarioAutenticado;
  Password := '';
  ContUser := 0;
end;

procedure Informa(Texto: string);
begin
  Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_Ok + MB_ICONINFORMATION + MB_SETFOREGROUND);
end;

function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind: string): string;
var
  MyQuery: TQuery;
begin
  if ValorFind <> '' then
  begin
    MyQuery := TQuery.Create(DM);
    if DM.DataBaseName = '' then
      MyQuery.DatabaseName := 'DB'
    else
      MyQuery.DatabaseName := DM.DataBaseName;
    MyQuery.Close;
    MyQuery.SQL.Clear;
    MyQuery.SQL.Add('select ' + CampoRetorno + ' from ' + Tabela);
    MyQuery.SQL.Add('where  ' + CampoProcura + ' = ' + ValorFind);
    MyQuery.Open;
    if not MyQuery.EOF then
      SQLLocate := MyQuery.FieldByName(CampoRetorno).AsString
    else
      SQLLocate := '';
    MyQuery.Destroy;
  end
  else
    ValorFind := '';
end;

function RetornarNomeComputador: string;
var
  Texto: TextFile;
  Registro: TRegistry;
  IniFile: TIniFile;
  Str, Info: string;
begin
  Registro := TRegistry.Create;
  try
    Registro.RootKey := HKEY_LOCAL_MACHINE;
    Registro.Openkey('System\CurrentControlSet\Services\VXD\VNETSUP', false);
    Result := Registro.Readstring('ComputerName');
    if Result = '' then
    begin
      Registro.RootKey := HKEY_LOCAL_MACHINE;
      Registro.Openkey('SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName', false);
      Result := Registro.Readstring('ComputerName');
    end;
    if (Result = '') and FileExists('Terminal.txt') then
    begin
      AssignFile(Texto, 'Terminal.txt');
      Reset(Texto);
      Readln(Texto, Info);
      CloseFile(Texto);
      Result := Info;
    end;
  except
    ShowMessage('Não foi possível encontrar o nome do computador! Por favor entre em contato com o suporte!');
  end;
end;

procedure AtualizaDataQuitacaoCupom(IDCupom: string);
var
  SQLCupom, SQLAtualiza: TQuery;
begin
  if IDCupom <> '' then
  begin
    SQLCupom := TQuery.Create(SQLCupom);
    SQLCupom.DatabaseName := 'DB';
    SQLCupom.Close;
    SQLCupom.SQL.Clear;
    SQLCupom.SQL.ADD('SELECT * FROM CONTASRECEBER WHERE CUPOA13ID = ''' + IDCupom + '''');
    SQLCupom.SQL.ADD(' AND CTRCN2VLR > CTRCN2TOTREC');
    SQLCupom.Open;
    if SQLCupom.IsEmpty then
    begin
      SQLAtualiza := TQuery.Create(SQLAtualiza);
      SQLAtualiza.DataBaseName := 'DB';
      SQLAtualiza.Close;
      SQLAtualiza.SQL.Clear;
      SQLAtualiza.SQL.ADD('UPDATE CUPOM SET Pendente=''S'', CUPODQUITACAO = ''' + FormatDateTime('mm/dd/yyyy', Date) + '''');
      SQLAtualiza.SQL.ADD(' WHERE CUPOA13ID = ''' + IDCupom + '''');
      try
        SQLAtualiza.ExecSQL;
      except
        on E: EXCEPTION do
        begin
          Informa('Erro ao atualizar data de quitação do CUPOM. ANOTE O ERRO: ' + E.Message);
          SQLAtualiza.Destroy;
          Abort;
        end;
      end;
      SQLAtualiza.Destroy;
    end;
    SQLCupom.Destroy;
  end
  else
  begin
    Informa('IDCupom não foi informado na função: ''AtualizaDataQuitacaoCupom''. Informe seu revendedor!');
  end;
  Application.ProcessMessages;
end;

function ConverteAcentos(Str: string): string;
const
  NumChars = 47;
  Acentuados: array[1..NumChars] of Char = ('Á', 'É', 'Í', 'Ó', 'Ú',
    'á', 'é', 'í', 'ó', 'ú',
    'À', 'È', 'Ì', 'Ò', 'Ù',
    'à', 'è', 'ì', 'ò', 'ù',
    'Â', 'Ê', 'Î', 'Ô', 'Û',
    'â', 'ê', 'î', 'ô', 'û',
    'Ã', 'Õ', 'ã', 'õ',
    'Ä', 'Ë', 'Ï', 'Ö', 'Ü',
    'ä', 'ë', 'ï', 'ö', 'ü',
    'Ç', 'ç', 'º');
  Normais: array[1..NumChars] of Char = ('A', 'e', 'I', 'O', 'U',
    'a', 'e', 'i', 'o', 'u',
    'A', 'E', 'I', 'O', 'U',
    'a', 'e', 'i', 'o', 'u',
    'A', 'E', 'I', 'O', 'U',
    'a', 'e', 'i', 'o', 'u',
    'A', 'O', 'a', 'o',
    'A', 'E', 'I', 'O', 'U',
    'a', 'e', 'i', 'o', 'u',
    'C', 'c', '.');
var
  Len, C: Integer;
  { --- }
  function ConvChar(Ch: Char): Char;
  var
    I: Integer;
  begin
    for I := 1 to NumChars do
      if Acentuados[I] = Ch then
      begin
        Result := Normais[I];
        Exit;
      end;
    Result := Ch;
  end;
  { --- }
begin
  Result := '';
  Len := Length(Str);
  for C := 1 to Len do
    Result := Result + ConvChar(Str[C]);
end;

function Zeros(Str: string; Tam: Integer; Orient: string): string;
var Dif, i: integer;
begin
  Dif := Tam - Length(Str);
  for i := 1 to Dif do
  begin
    if Orient = 'Esq' then
      Str := Str + '0';
    if Orient = 'Dir' then
      Str := '0' + Str;
  end;

  Zeros := Str;
end;

function RetornaTotalizadorNumerarioECFElgin_FIT(EcfID, CodNumerario: string): string;
var
  MyQuery: TQuery;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB';
  MyQuery.Close;
  MyQuery.SQL.Clear;
  MyQuery.SQL.Add('Select * From NUMERARIOTOTALIZADORECF');
  MyQuery.SQL.Add('Where ECFA13ID = ''' + EcfID + '''');
  MyQuery.SQL.Add('And   NUMEICOD = ' + CodNumerario);
  MyQuery.Open;
  if MyQuery.Fieldbyname('NUTCA15NUMERARIO').AsString <> '' then
    RetornaTotalizadorNumerarioECFElgin_FIT := MyQuery.Fieldbyname('NUTCA15NUMERARIO').AsString
  else
  begin
    Informa('Nenhum totalizador foi encontrado para o numerário ' + CodNumerario + '.');
    RetornaTotalizadorNumerarioECFElgin_FIT := '';
  end;
  MyQuery.Destroy;
end;

function PadR(Str: string; Tamanho: Integer): string;
begin
  result := Copy(Alltrim(Str) + Spaces(Tamanho), 1, Tamanho);































end;

function PadL(Str: string; Tamanho: Integer): string;
var
  Temp: string;
begin
  Temp := Spaces(Tamanho) + AllTrim(Str);
  result := Copy(Temp, (Length(Temp) - Tamanho) + 1, Tamanho);
end;

function Alltrim(const Search: string): string;
const
  BlackSpace = [#33..#126];
var
  Index: byte;
begin
  Index := 1;
  while (Index <= Length(Search)) and not (Search[Index] in BlackSpace) do
  begin
    Index := Index + 1;
  end;
  Result := Copy(Search, Index, 255);
  Index := Length(Result);
  while (Index > 0) and not (Result[Index] in BlackSpace) do
  begin
    Index := Index - 1;
  end;
  Result := Copy(Result, 1, Index);
end;

function Spaces(Tamanho: Integer): string;
var
  nPos: Integer;
begin
  result := '';
  for nPos := 1 to Tamanho do
    result := result + ' ';
end;

function Preenche(STRI, FloodStr: string; TAM: Integer; JUST: Integer): string;
var Conta: integer;
  TotalStr: string;
  Aux_Str: string;
begin
  Aux_Str := '';
  for Conta := 1 to (Tam - Length(STRI)) do
    if FloodStr = '' then
      AUX_STR := AUX_STR + ' '
    else
      AUX_STR := AUX_STR + FloodStr;
  if JUST = 0 then //Esquerda
    AUX_STR := AUX_STR + STRI;
  if JUST = 2 then //Direita
    AUX_STR := STRI + AUX_STR;
  Preenche := AUX_STR;
end;

procedure GravaMovimentoCaixa(SQLTotalizadorCaixa,
  SQLTotalizar: TQuery;
  WEMPRICOD,
  WTERMICOD,
  WMVCXDMOV,
  WNUMEICOD,
  WOPCXICOD,
  WUSUAICOD,
  WMVCXA15DOCORIG: string;
  WMVCXN2VLR,
  WMVCXN2VLRJURO,
  WMVCXN2VLRMULTA,
  WMVCXN2VLRDESC: double;
  WMVCXA6NUMCUPOM,
  WTIPO,
  WMVCXA255HIST,
  MOVNORMREV,
  Tipo: string);
var
  ProxCod: integer;
  Gravou: boolean;
  VlrTotaliz: double;
begin
  {// ************** OBSERVAÇÃO ************** \\
  O PARAMETRO ''MOVNORMREV'' SERVE PARA INFORMAR SE O LANCEMANETO DE CAIXA IRA
  TOTALIZAR DE FORMA NORMAL ''N'' OU REVERSA ''R''(CANCELAMENTO DE CUPOM NO CAIXA)}

  //  Apartir 24/06/2006 nao estou mais calculando os totalizadores ao final de cada operacao de caixa
  //  para agilizar o encerramento da venda. O Calculo sera efetuado na tela de Recalculo dos Totalizadores

  if Tipo = '' then
  begin
      //GERAR CODIGO MOVIMENTO CAIXA
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('select Max(MVCXICOD) as Contador from MOVIMENTOCAIXA');
    DM.SQLTemplate.SQL.Add('where');
    DM.SQLTemplate.SQL.Add('EMPRICOD = ' + WEMPRICOD + ' and');
    DM.SQLTemplate.SQL.Add('TERMICOD = ' + WTERMICOD + ' and');
    DM.SQLTemplate.SQL.Add('MVCXDMOV = ''' + WMVCXDMOV + '''');
    DM.SQLTemplate.Open;
    if DM.SQLTemplate.FieldByName('Contador').AsInteger <> null then
      ProxCod := DM.SQLTemplate.FieldByName('Contador').AsInteger + 1
    else
      ProxCod := 1;

      //GRAVA LANCAMENTO DO CAIXA
    Gravou := false;
    while not Gravou do
    begin
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('insert into MOVIMENTOCAIXA');
      DM.SQLTemplate.SQL.Add('(EMPRICOD,');
      DM.SQLTemplate.SQL.Add('TERMICOD,');
      DM.SQLTemplate.SQL.Add('MVCXDMOV,');
      DM.SQLTemplate.SQL.Add('MVCXICOD,');
      DM.SQLTemplate.SQL.Add('NUMEICOD,');
      DM.SQLTemplate.SQL.Add('OPCXICOD,');
      DM.SQLTemplate.SQL.Add('USUAICOD,');
      DM.SQLTemplate.SQL.Add('MVCXA15DOCORIG,'); // ESTE CAMPPO POSSUI 30 CARACTERES NO BANCO
                                                     // POIS QUANDO TINHAMOS MAIS DE 9 PARCELAS ESTORAVA O NRO DE CARACTERES
                                                     // O NOME PERMANECE COM 15 PARA EVITAR ERROS;
      DM.SQLTemplate.SQL.Add('MVCXN2VLRDEB,');
      DM.SQLTemplate.SQL.Add('MVCXN2VLRCRED,');
      DM.SQLTemplate.SQL.Add('MVCXN2VLRJURO,');
      DM.SQLTemplate.SQL.Add('MVCXN2VLRMULTA,');
      DM.SQLTemplate.SQL.Add('MVCXN2VLRDESC,');
      DM.SQLTemplate.SQL.Add('MVCXINROCUPOM,');
      DM.SQLTemplate.SQL.Add('MVCXA255HIST,');
      DM.SQLTemplate.SQL.Add('PENDENTE,');
      DM.SQLTemplate.SQL.Add('MVCXCNORMREV,');
      DM.SQLTemplate.SQL.Add('REGISTRO)');
      DM.SQLTemplate.SQL.Add('values(');
      DM.SQLTemplate.SQL.Add(WEMPRICOD + ', ');
      DM.SQLTemplate.SQL.Add(WTERMICOD + ', ');
      DM.SQLTemplate.SQL.Add('''' + WMVCXDMOV + ''', ');
      DM.SQLTemplate.SQL.Add(IntToStr(ProxCod) + ', ');

      if WNUMEICOD <> '' then
        DM.SQLTemplate.SQL.Add(WNUMEICOD + ', ')
      else
        DM.SQLTemplate.SQL.Add('Null' + ', ');
      if WOPCXICOD <> '' then
        DM.SQLTemplate.SQL.Add(WOPCXICOD + ', ')
      else
        DM.SQLTemplate.SQL.Add('Null' + ', ');

      DM.SQLTemplate.SQL.Add(WUSUAICOD + ', ');
      if WMVCXA15DOCORIG <> '' then
        DM.SQLTemplate.SQL.Add('''' + WMVCXA15DOCORIG + ''', ') // ESTE CAMPPO POSSUI 30 CARACTERES NO BANCO
                                                                 //POIS QUANDO TINHAMOS MAIS DE 9 PARCELAS ESTORAVA O NRO DE CARACTERES
                                                                 //O NOME PERMANECE COM 15 PARA EVITAR ERROS;
      else
        DM.SQLTemplate.SQL.Add('''' + IntToStr(ProxCod) + ''', ');
      if (WTIPO = '') or (WTIPO = 'N') then
      begin
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(0) + ', ');
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(0) + ', ');
      end;
      if WTIPO = 'D' then
      begin
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(WMVCXN2VLR) + ', ');
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(0) + ', ');
      end;
      if WTIPO = 'C' then
      begin
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(0) + ', ');
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(WMVCXN2VLR) + ', ');
      end;
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(WMVCXN2VLRJURO) + ', ');
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(WMVCXN2VLRMULTA) + ', ');
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(WMVCXN2VLRDESC) + ', ');
      DM.SQLTemplate.SQL.Add(WMVCXA6NUMCUPOM + ', ');
      DM.SQLTemplate.SQL.Add('''' + WMVCXA255HIST + ''', ');
      DM.SQLTemplate.SQL.Add('''S'', '); {PENDENTE}
      DM.SQLTemplate.SQL.Add('''' + MOVNORMREV + ''', '); {NormReverso}
      DM.SQLTemplate.SQL.Add('''' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + ''')'); {REGISTRO}
      try
        DM.SQLTemplate.ExecSQL;
        Gravou := true;
      except
        on E: Exception do
        begin
          ShowMessage('Entre em contato com o suporte e comunique este erro: ' + #13 + E.Message);
          Inc(ProxCod);
        end;
      end;
    end;
  end;

  if (AnsiUpperCase(WNUMEICOD) <> 'NULL') and (WNUMEICOD <> '') and (Tipo <> '') then
  begin
      //GRAVA NOS TOTALIZADORES APARTIR DO NUMERARIO
    if not SQLTotalizadorCaixa.Active then
      SQLTotalizadorCaixa.Open;

    SQLTotalizar.Close;
    SQLTotalizar.SQL.Clear;
    SQLTotalizar.SQL.Add('select NUMEICOD, TOTAICOD, NUTOCSOMASUBTRAI');
    SQLTotalizar.SQL.Add('from NUMERARIOTOTALIZADOR');
    SQLTotalizar.SQL.Add('where NUMEICOD = ' + WNUMEICOD);
    SQLTotalizar.Open;

    SQLTotalizar.First;
    while not SQLTotalizar.EOF do
    begin
      SQLTotalizadorCaixa.Locate('TOTAICOD', SQLTotalizar.FieldByName('TOTAICOD').AsString, []);
      if SQLTotalizadorCaixa.FieldByName('TOTACDEBITOCREDITO').Value = '' then
      begin
        Informa('Você deve informar se o totalizador ' + SQLTotalizadorCaixa.FieldByName('TOTAA60DESCR').Value + ' é do tipo Débito ou Crédito. Esta operação não irá totalizar no caixa!');
        Exit;
      end;

      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('Update TOTALIZADORDIARIOCAIXA');

      if SQLTotalizadorCaixa.FieldByName('TOTACDEBITOCREDITO').Value = Null then
      begin
        Informa('O campo Débito/Crédito do Totalizador de Caixa ''' +
          SQLTotalizadorCaixa.FieldByName('TOTAA60DESCR').Value +
          ''' não foi informado. Esta Operação não será totalizadada no caixa!!');
        exit;
      end;

      if SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString = Null then
      begin
        Informa('O campo Soma/Subtrai do Totalizador de Caixa ''' +
          SQLTotalizadorCaixa.FieldByName('TOTAA60DESCR').Value +
          ''' não foi informado. Esta Operação não será totalizadada no caixa!!');
        exit;
      end;

      if SQLTotalizadorCaixa.FieldByName('TOTACDEBITOCREDITO').Value = 'D' then
      begin
        if SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString = '+' then
          case MOVNORMREV[1] of
            'N': DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO + ' + ConvFloatToStr(WMVCXN2VLR));
            'R': DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO - ' + ConvFloatToStr(WMVCXN2VLR));
          end;
        if SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString = '-' then
          case MOVNORMREV[1] of
            'N': DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO - ' + ConvFloatToStr(WMVCXN2VLR));
            'R': DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO + ' + ConvFloatToStr(WMVCXN2VLR));
          end;
      end;

      if SQLTotalizadorCaixa.FieldByName('TOTACDEBITOCREDITO').Value = 'C' then
      begin
        if SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString = '+' then
          case MOVNORMREV[1] of
            'N': DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO + ' + ConvFloatToStr(WMVCXN2VLR));
            'R': DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO - ' + ConvFloatToStr(WMVCXN2VLR));
          end;
        if SQLTotalizar.FieldByName('NUTOCSOMASUBTRAI').AsString = '-' then
          case MOVNORMREV[1] of
            'N': DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO - ' + ConvFloatToStr(WMVCXN2VLR));
            'R': DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO + ' + ConvFloatToStr(WMVCXN2VLR));
          end;
      end;

      DM.SQLTemplate.SQL.Add('where');
      DM.SQLTemplate.SQL.Add('EMPRICOD = ' + EmpresaPadrao + ' and ');
      DM.SQLTemplate.SQL.Add('TERMICOD = ' + IntToStr(TerminalAtual) + ' and ');
      DM.SQLTemplate.SQL.Add('TODIDMOV = ''' + FormatDateTime('mm/dd/yyyy', StrToDateTime(TerminalAtualData)) + ''' and ');
          //SE ESTA RECALCULANDO NAO PROCURAR PELO USUARIO
          //TENHO DE ESTUDAR MELHOR MAS ACHO QUE NÃO DEVE PESQUISAR PELO USUÁRIO NUNCA
          //POIS SE ABRIR COM UM USUÁRIO E LANÇAR COM OUTRO NÃO VAI MOVIMENTAR O TOTALIZADOR
          {if Tipo = '' then
            DM.SQLTemplate.SQL.Add('USUAICOD = '  + WUSUAICOD + ' and ') ;}
      DM.SQLTemplate.SQL.Add('TOTAICOD = ' + SQLTotalizar.FieldByName('TOTAICOD').AsString);
      try
        DM.SQLTemplate.ExecSQL;
      except
        on E: Exception do
        begin
          Informa('Problemas ao totalizar em ' + SQLTotalizadorCaixa.FieldByName('TOTAA60DESCR').Value + #13 +
            'Anote a mensagem abaixo e tecle ENTER para continuar:' + #13 +
            E.Message);
        end;
      end;

      SQLTotalizar.Next;
    end;
  end;

  if (Tipo <> '') and (WOPCXICOD <> '') and (AnsiUpperCase(WOPCXICOD) <> 'NULL') then
  begin
      //GRAVA NOS TOTALIZADORES APARTIR DA OPERACAO DE CAIXA
    if not SQLTotalizadorCaixa.Active then
      SQLTotalizadorCaixa.Open;

    SQLTotalizar.Close;
    SQLTotalizar.SQL.Clear;
    SQLTotalizar.SQL.Add('select OPCXICOD, TOTAICOD, OPTOCSOMASUBTRAI');
    SQLTotalizar.SQL.Add('from OPERACAOCAIXATOTALIZADOR');
    SQLTotalizar.SQL.Add('where OPCXICOD = ' + WOPCXICOD);
    SQLTotalizar.Open;
    SQLTotalizar.First;
    while not SQLTotalizar.EOF do
    begin
      SQLTotalizadorCaixa.Locate('TOTAICOD', SQLTotalizar.FieldByName('TOTAICOD').AsString, []);
      if (SQLTotalizadorCaixa.FieldByName('TOTACDEBITOCREDITO').AsVariant = Null) then
      begin
              // Informa('Você deve informar se o totalizador ' + SQLTotalizadorCaixa.FieldByName('TOTAA60DESCR').Value + ' é do tipo Débito ou Crédito. Esta operação não irá totalizar no caixa!') ;
        Exit;
      end;

      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('Update TOTALIZADORDIARIOCAIXA');
      if SQLTotalizadorCaixa.FieldByName('TOTACDEBITOCREDITO').Value = 'D' then
      begin
        if SQLTotalizar.FieldByName('OPTOCSOMASUBTRAI').AsString = '+' then
          case MOVNORMREV[1] of
            'N': DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO + ' + ConvFloatToStr(WMVCXN2VLR));
            'R': DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO - ' + ConvFloatToStr(WMVCXN2VLR));
          end;
        if SQLTotalizar.FieldByName('OPTOCSOMASUBTRAI').AsString = '-' then
          case MOVNORMREV[1] of
            'N': DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO - ' + ConvFloatToStr(WMVCXN2VLR));
            'R': DM.SQLTemplate.SQL.Add('set TODIN2VLRDEBITO = TODIN2VLRDEBITO + ' + ConvFloatToStr(WMVCXN2VLR));
          end;
      end;

      if SQLTotalizadorCaixa.FieldByName('TOTACDEBITOCREDITO').Value = 'C' then
      begin
        if SQLTotalizar.FieldByName('OPTOCSOMASUBTRAI').AsString = '+' then
          case MOVNORMREV[1] of
            'N': DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO + ' + ConvFloatToStr(WMVCXN2VLR));
            'R': DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO - ' + ConvFloatToStr(WMVCXN2VLR));
          end;
        if SQLTotalizar.FieldByName('OPTOCSOMASUBTRAI').AsString = '-' then
          case MOVNORMREV[1] of
            'N': DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO - ' + ConvFloatToStr(WMVCXN2VLR));
            'R': DM.SQLTemplate.SQL.Add('set TODIN2VLRCREDITO = TODIN2VLRCREDITO + ' + ConvFloatToStr(WMVCXN2VLR));
          end;
      end;
      DM.SQLTemplate.SQL.Add('where');
      DM.SQLTemplate.SQL.Add('EMPRICOD = ' + EmpresaPadrao + ' and ');
      DM.SQLTemplate.SQL.Add('TERMICOD = ' + IntToStr(TerminalAtual) + ' and ');
      DM.SQLTemplate.SQL.Add('TODIDMOV = ''' + FormatDateTime('mm/dd/yyyy', StrToDateTime(TerminalAtualData)) + ''' and ');
          //SE ESTA RECALCULANDO NAO PROCURAR PELO USUARIO
          //TENHO DE ESTUDAR MELHOR MAS ACHO QUE NÃO DEVE PESQUISAR PELO USUÁRIO NUNCA
          //POIS SE ABRIR COM UM USUÁRIO E LANÇAR COM OUTRO NÃO VAI MOVIMENTAR O TOTALIZADOR
          {if Tipo = '' then
            DM.SQLTemplate.SQL.Add('USUAICOD = '  + WUSUAICOD + ' and ') ;}

      DM.SQLTemplate.SQL.Add('TOTAICOD = ' + SQLTotalizar.FieldByName('TOTAICOD').AsString);
      DM.SQLTemplate.ExecSQL;

      SQLTotalizar.Next;
    end;
  end;
end;


function RetornaTotalizadorIcmsECF(EcfID, CodICMS: string): string;
var
  MyQuery: TQuery;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB';
  MyQuery.Close;
  MyQuery.SQL.Clear;
  MyQuery.SQL.Add('select * from ECFALIQUOTAICMS');
  MyQuery.SQL.Add('where ECFA13ID = ''' + EcfID + '''');
  MyQuery.SQL.Add('and   ICMSICOD = ' + CodICMS);
  MyQuery.Open;
  if MyQuery.Fieldbyname('ECALA5TOTALIECF').AsString <> '' then
    RetornaTotalizadorIcmsECF := MyQuery.Fieldbyname('ECALA5TOTALIECF').AsString
  else
    RetornaTotalizadorIcmsECF := '';
  MyQuery.Destroy;
end;


function VerificaLimiteCredito(Cliente: string; ValorCompra: Double; SQLParcelas, SQLCliente: TQuery): Boolean;
var
  Documento: string;
  Limite, LimiteOrigem, Debito, JurosMultaDescPendentes, SaldoParc, JuroParc, MultaParc, DescParc, JuroParcTot, MultaParcTot, DescParcTot: Double;
  Vencimento: TDate;
  hMutex: THandle;
  Aplicativo: THandle;
begin
  if not dm.SQLConfigGeral.Active then
    dm.SQLConfigGeral.Open;

  {Testa pra ver se esta rodando nessa maquina. Se achou é pq usa PDV Off e tem que procurar o limite no banco Servidor}
  Aplicativo := FindWindow(nil, pchar('IntegradorPDVs'));
  if Aplicativo = 0 then {Consulta no Banco do PDV}
  begin
    SQLCliente.Close;
    SQLCliente.SQL.Clear;
    SQLCliente.SQL.Add('Select CLIEA60RAZAOSOC, CLIEN2RENDA, CLIEN2CONJUGERENDA, CLIEN2LIMITECRED from CLIENTE where CLIEA13ID = ' + '''' + Cliente + '''');
    SQLCliente.Open;
    if not SQLCliente.IsEmpty then
    begin
      if (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value > 0) then
      begin
        if DM.SQLConfigVenda.FieldByName('CFVECRENDCONJNOLIM').AsString = 'S' then
          LimiteOrigem := (SQLCliente.FieldByName('CLIEN2RENDA').AsFloat +
            SQLCliente.FieldByName('CLIEN2CONJUGERENDA').AsFloat) *
            (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').AsFloat / 100)
        else
          LimiteOrigem := (SQLCliente.FieldByName('CLIEN2RENDA').AsFloat) *
            (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').AsFloat / 100);
      end
      else
      begin
              // Application.MessageBox('O sistema está configurado para testar o limite de crédito, mas a operação não foi realizada porque não existe nenhum percentual configurado para o cálculo do limite ! ','Chekout Informa', MB_OK + MB_ICONWARNING + MB_SYSTEMMODAL);
        Result := True;
        Exit;
      end;

          // Achar os Totais de Juros, Multas, Descontos Pendentes nas parcelas em Atrasadas
      SQLParcelas.Close;
      SQLParcelas.sql.Clear;
      SQLParcelas.SQL.Add('Select CONTASRECEBER.CUPOA13ID, CONTASRECEBER.NOFIA13ID as NOFIA13ID, CONTASRECEBER.CTRCA30NRODUPLICBANCO as CTRCA30NRODUPLICBANCO,');
      SQLParcelas.SQL.Add('CONTASRECEBER.CLIEA13ID, CONTASRECEBER.CTRCA13ID, CONTASRECEBER.CTRCDULTREC, CONTASRECEBER.CTRCDVENC, CONTASRECEBER.CTRCDEMIS,');
      SQLParcelas.SQL.Add('CONTASRECEBER.CTRCINROPARC, CONTASRECEBER.CTRCN2TOTDESCREC, CONTASRECEBER.CTRCN2TOTJUROREC, CONTASRECEBER.CTRCN2TOTMULTAREC,');
      SQLParcelas.SQL.Add('CONTASRECEBER.CTRCN2TOTREC + CONTASRECEBER.CTRCN2TOTJUROREC + CONTASRECEBER.CTRCN2TOTMULTAREC + CONTASRECEBER.CTRCN2TOTMULTACOBR - CONTASRECEBER.CTRCN2TOTDESCREC as CTRCN2TOTREC,');
      SQLParcelas.SQL.Add('CONTASRECEBER.CTRCN2TXJURO, CONTASRECEBER.CTRCN2TXMULTA, CONTASRECEBER.CTRCN2VLR, CONTASRECEBER.CTRCCSTATUS, CONTASRECEBER.EMPRICODULTREC,');
      SQLParcelas.SQL.Add('CONTASRECEBER.NUMEICOD, CONTASRECEBER.EMPRICOD, CONTASRECEBER.AVALA13ID, CONTASRECEBER.PORTICOD, CONTASRECEBER.PDVDA13ID, CONTASRECEBER.BANCA5CODCHQ,');
      SQLParcelas.SQL.Add('CONTASRECEBER.CTRCA15NROCHQ, CONTASRECEBER.ALINICOD from CONTASRECEBER where (CONTASRECEBER.CTRCCSTATUS = ''A'' or CONTASRECEBER.CTRCCSTATUS = ''N'') and ');
      SQLParcelas.SQL.Add('(CONTASRECEBER.CTRCCTIPOREGISTRO = ''N'' or CONTASRECEBER.CTRCCTIPOREGISTRO = '''' or CONTASRECEBER.CTRCCTIPOREGISTRO IS NULL) and ');
      SQLParcelas.SQL.Add('(CONTASRECEBER.PDVDA13ID = '''' or CONTASRECEBER.PDVDA13ID IS NULL) and CONTASRECEBER.CLIEA13ID = ''' + Cliente + '''');
      SQLParcelas.Open;

      JuroParcTot := 0;
      MultaParcTot := 0;
      DescParcTot := 0;
      JuroParc := 0;
      MultaParc := 0;
      DescParc := 0;
      while not SQLParcelas.EOF do
      begin
        try
          SaldoParc := SQLParcelas.FieldByName('CTRCN2VLR').Value;
          if SQLParcelas.FieldByName('CTRCDULTREC').AsVariant <> null then
            Vencimento := SQLParcelas.FieldByName('CTRCDULTREC').AsDateTime
          else
            Vencimento := SQLParcelas.FieldByName('CTRCDVENC').AsDateTime;

          if (SQLParcelas.FieldByName('CTRCA13ID').AsString <> '') and (Length(SQLParcelas.FieldByName('CTRCA13ID').AsString) = 13) then
            Documento := SQLParcelas.FieldByName('CTRCA13ID').AsString;
          if (SQLParcelas.FieldByName('CUPOA13ID').AsString <> '') and (Length(SQLParcelas.FieldByName('CUPOA13ID').AsString) = 13) then
            Documento := dm.SQLTemplate.FieldByName('CUPOA13ID').AsString;
          if (SQLParcelas.FieldByName('NOFIA13ID').AsString <> '') and (Length(SQLParcelas.FieldByName('NOFIA13ID').AsString) = 13) then
            Documento := SQLParcelas.FieldByName('NOFIA13ID').AsString;

          if SQLParcelas.FieldByName('CTRCN2TOTREC').AsVariant <> null then
            SaldoParc := SQLParcelas.FieldByName('CTRCN2VLR').Value -
              (SQLParcelas.FieldByName('CTRCN2TOTREC').AsVariant -
              SQLParcelas.FieldByName('CTRCN2TOTJUROREC').AsVariant -
              SQLParcelas.FieldByName('CTRCN2TOTMULTAREC').AsVariant +
              SQLParcelas.FieldByName('CTRCN2TOTDESCREC').AsVariant);


          if (SQLParcelas.FieldByName('CTRCN2TXJURO').asFloat > 0) and (SaldoParc > 0) and
            (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value >= 0) then
            JuroParc := CalculaJuroMultaDesc(SaldoParc,
              SQLParcelas.FieldByName('CTRCN2TXJURO').asFloat,
              SQLParcelas.FieldByName('CTRCDVENC').AsDateTime, // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
              Date,
              0,
              DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
              'Juro',
              Documento,
              SQLParcelas.FieldByName('CTRCINROPARC').AsString);

          JuroParcTot := JuroParcTot + JuroParc;

          if (SQLParcelas.FieldByName('CTRCN2TXMULTA').asFloat > 0) and (SaldoParc > 0) and
            (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value >= 0) and
            (Documento <> '') then
            MultaParc := CalculaJuroMultaDesc(SaldoParc,
              SQLParcelas.Fieldbyname('CTRCN2TXMULTA').AsFloat,
              SQLParcelas.FieldByName('CTRCDVENC').AsDateTime, // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
              Date,
              0,
              DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
              'Multa',
              Documento,
              SQLParcelas.FieldByName('CTRCINROPARC').AsString);

          MultaParcTot := MultaParcTot + MultaParc;

          if (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').asFloat > 0) and
            (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value >= 0) and
            (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value >= 0) and
            (Documento <> '') and (SaldoParc > 0) then
            DescParc := CalculaJuroMultaDesc(SaldoParc,
              DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
              SQLParcelas.FieldByName('CTRCDVENC').AsDateTime, // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
              Date,
              0,
              DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
              'Desconto',
              Documento,
              SQLParcelas.FieldByName('CTRCINROPARC').AsString);

          DescParcTot := DescParcTot + DescParc;
        except
          Application.ProcessMessages;
        end;

        SQLParcelas.Next;
      end;

      JurosMultaDescPendentes := JuroParcTot + MultaParcTot - DescParcTot;

      SQLParcelas.Close;
          // Final da rotina para achar os Totais de Juros, Multas, Descontos Pendentes nas parcelas em Atrasadas

          // Igual a SIM, subtrai do limite o valor das parcelas abertas s/juro p/atraso...
      if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString = 'S' then
      begin
        SQLParcelas.Close;
        SQLParcelas.SQL.Clear;
        SQLParcelas.SQL.Add('Select sum(CTRCN2VLR) from CONTASRECEBER where CLIEA13ID = ' + '''' + Cliente + '''' + ' AND CTRCN2VLR > CTRCN2TOTREC');
        SQLParcelas.SQL.Add('AND (CTRCA5TIPOPADRAO NOT IN (''CRT'',''CONV'') or CTRCA5TIPOPADRAO is null) ');
        SQLParcelas.SQL.Add('AND (CTRCCSTATUS = ''A'' or CTRCCSTATUS = ''N'')');
        SQLParcelas.Open;
        if not SQLParcelas.IsEmpty then
          Debito := SQLParcelas.FieldByName('SUM').AsFloat;

        Limite := LimiteOrigem;
              // Se Subtrai as Parcelas Abertas do Limite
        if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString = 'S' then
          Limite := Limite - (Debito + JurosMultaDescPendentes)

      end;

      if Limite < ValorCompra then
      begin
        if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString <> 'S' then
        begin // Nao Subtrai Parcelas Abertas do Limite
          if FileExists('MostraLimiteMaior.txt') then
          begin
            FormTelaAvisoDebito := TFormTelaAvisoDebito.create(Application);
            FormTelaAvisodebito.Label8.Caption := 'Saldo do Limite Ultrapassado:';
            FormTelaAvisoDebito.lblSaldoFinal.font.Color := clRed;
            FormTelaAvisoDebito.lblCliente.Caption := SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant;
            FormTelaAvisoDebito.lblLimiteInicial.Caption := FormatFloat('###0.00', LimiteOrigem);
            FormTelaAvisoDebito.lblParcelas.Caption := FormatFloat('###0.00', Debito);
            FormTelaAvisoDebito.lbljuros.Caption := FormatFloat('###0.00', JurosMultaDescPendentes);
            FormTelaAvisoDebito.lblSaldoAtual.Caption := FormatFloat('###0.00', LimiteOrigem - (Debito + JurosMultaDescPendentes));
            if LimiteOrigem - (Debito + JurosMultaDescPendentes) > 0 then
              FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clGreen
            else
              FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clRed;
            FormTelaAvisoDebito.lblCompra.Caption := FormatFloat('###0.00', ValorCompra);
            FormTelaAvisoDebito.lblSaldoFinal.Caption := FormatFloat('###0.00', Limite - ValorCompra);
            FormTelaAvisoDebito.ShowModal;
          end else
          begin
            if not FileExists('MostraLimiteComprasReduzido.txt') then
              ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant + #13 + #13 +
                'Valor do Limite Inicial    =>  R$ ' + FormatFloat('###0.00', LimiteOrigem) + #13 +
                'Valor da Compra Atual      =>  R$ ' + FormatFloat('###0.00', ValorCompra) + #13 +
                'Limite Ultrapassado em     =>  R$ ' + FormatFloat('###0.00', (Limite - ValorCompra)))
            else
              ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant + #13 + #13 +
                'Valor da Compra Atual      =>  R$ ' + FormatFloat('###0.00', ValorCompra) + #13 +
                'Limite Ultrapassado em     =>  R$ ' + FormatFloat('###0.00', (Limite - ValorCompra)));
          end;
          Result := False;
        end
        else
        begin
          if FileExists('MostraLimiteMaior.txt') then
          begin
            FormTelaAvisoDebito := TFormTelaAvisoDebito.create(Application);
            FormTelaAvisodebito.Label8.Caption := 'Saldo do Limite Ultrapassado:';
            FormTelaAvisoDebito.lblSaldoFinal.font.Color := clRed;
            FormTelaAvisoDebito.lblCliente.Caption := SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant;
            FormTelaAvisoDebito.lblLimiteInicial.Caption := FormatFloat('###0.00', LimiteOrigem);
            FormTelaAvisoDebito.lblParcelas.Caption := FormatFloat('###0.00', Debito);
            FormTelaAvisoDebito.lbljuros.Caption := FormatFloat('###0.00', JurosMultaDescPendentes);
            FormTelaAvisoDebito.lblSaldoAtual.Caption := FormatFloat('###0.00', LimiteOrigem - (Debito + JurosMultaDescPendentes));
            if LimiteOrigem - (Debito + JurosMultaDescPendentes) > 0 then
              FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clGreen
            else
              FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clRed;
            FormTelaAvisoDebito.lblCompra.Caption := FormatFloat('###0.00', ValorCompra);
            FormTelaAvisoDebito.lblSaldoFinal.Caption := FormatFloat('###0.00', Limite - ValorCompra);
            FormTelaAvisoDebito.ShowModal;
          end else
          begin
            if not FileExists('MostraLimiteComprasReduzido.txt') then
              ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant + #13 + #13 +
                'Valor do Limite Inicial.            =>  R$ ' + FormatFloat('###0.00', LimiteOrigem) + #13 +
                'Parcelas Abertas S/Encargos =>  R$ ' + FormatFloat('###0.00', Debito) + #13 +
                'Juros, Multas, Descontos       =>  R$ ' + FormatFloat('###0.00', JurosMultaDescPendentes) + #13 +
                '----------------------------------------------------------' + #13 +
                'Valor do Limite Atual              =>  R$ ' + FormatFloat('###0.00', Limite) + #13 +
                'Valor da Compra Atual           =>  R$ ' + FormatFloat('###0.00', ValorCompra) + #13 +
                '----------------------------------------------------------' + #13 +
                'Limite Ultrapassado em          =>  R$ ' + FormatFloat('###0.00', Limite - ValorCompra) + #13 +
                '----------------------------------------------------------')
            else
              ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant + #13 + #13 +
                '----------------------------------------------------------' + #13 +
                'Valor da Compra Atual           =>  R$ ' + FormatFloat('###0.00', ValorCompra) + #13 +
                '----------------------------------------------------------' + #13 +
                'Limite Ultrapassado em          =>  R$ ' + FormatFloat('###0.00', Limite - ValorCompra) + #13 +
                '----------------------------------------------------------');
          end;
          Result := False;
        end;
      end
      else // Se o Limite for maior que o valor da Compra
      begin
        if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString <> 'S' then
        begin // Nao Subtrai Parcelas Abertas do Limite
          if FileExists('MostraLimiteMaior.txt') then
          begin
            FormTelaAvisoDebito := TFormTelaAvisoDebito.create(Application);
            FormTelaAvisodebito.Label8.Caption := 'Saldo do Limite de Crédito.....:';
            FormTelaAvisoDebito.lblSaldoFinal.Font.Color := clGreen;
            FormTelaAvisoDebito.lblCliente.Caption := SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant;
            FormTelaAvisoDebito.lblLimiteInicial.Caption := FormatFloat('###0.00', LimiteOrigem);
            FormTelaAvisoDebito.lblParcelas.Caption := FormatFloat('###0.00', Debito);
            FormTelaAvisoDebito.lbljuros.Caption := FormatFloat('###0.00', JurosMultaDescPendentes);
            FormTelaAvisoDebito.lblSaldoAtual.Caption := FormatFloat('###0.00', LimiteOrigem - (Debito + JurosMultaDescPendentes));
            if LimiteOrigem - (Debito + JurosMultaDescPendentes) > 0 then
              FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clGreen
            else
              FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clRed;
            FormTelaAvisoDebito.lblCompra.Caption := FormatFloat('###0.00', ValorCompra);
            FormTelaAvisoDebito.lblSaldoFinal.Caption := FormatFloat('###0.00', Limite - ValorCompra);
            FormTelaAvisoDebito.ShowModal;
          end else
          begin
            if not FileExists('MostraLimiteComprasReduzido.txt') then
              ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant + #13 + #13 +
                'Valor do Limite Inicial    =>  R$ ' + FormatFloat('###0.00', LimiteOrigem) + #13 +
                'Valor da Compra Atual      =>  R$ ' + FormatFloat('###0.00', ValorCompra) + #13 +
                'Limite para Novas Compras  =>  R$ ' + FormatFloat('###0.00', (Limite - ValorCompra)));
          end;
          Result := True;
        end
        else
        begin // Subtrai do valor da Compra e das parcelas abertas
          if FileExists('MostraLimiteMaior.txt') then
          begin
            FormTelaAvisoDebito := TFormTelaAvisoDebito.create(Application);
            FormTelaAvisodebito.Label8.Caption := 'Saldo do Limite de Crédito.....:';
            FormTelaAvisoDebito.lblSaldoFinal.font.Color := clGreen;
            FormTelaAvisoDebito.lblCliente.Caption := SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant;
            FormTelaAvisoDebito.lblLimiteInicial.Caption := FormatFloat('###0.00', LimiteOrigem);
            FormTelaAvisoDebito.lblParcelas.Caption := FormatFloat('###0.00', Debito);
            FormTelaAvisoDebito.lbljuros.Caption := FormatFloat('###0.00', JurosMultaDescPendentes);
            FormTelaAvisoDebito.lblSaldoAtual.Caption := FormatFloat('###0.00', LimiteOrigem - (Debito + JurosMultaDescPendentes));
            if LimiteOrigem - (Debito + JurosMultaDescPendentes) > 0 then
              FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clGreen
            else
              FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clRed;
            FormTelaAvisoDebito.lblCompra.Caption := FormatFloat('###0.00', ValorCompra);
            FormTelaAvisoDebito.lblSaldoFinal.Caption := FormatFloat('###0.00', Limite - ValorCompra);
            FormTelaAvisoDebito.ShowModal;
          end else
          begin
            if not FileExists('MostraLimiteComprasReduzido.txt') then
              ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant + #13 + #13 +
                'Valor do Limite Inicial.            =>  R$ ' + FormatFloat('###0.00', LimiteOrigem) + #13 +
                'Parcelas Abertas S/Encargos =>  R$ ' + FormatFloat('###0.00', Debito) + #13 +
                'Juros, Multas, Descontos       =>  R$ ' + FormatFloat('###0.00', JurosMultaDescPendentes) + #13 +
                '----------------------------------------------------------' + #13 +
                'Valor do Limite Atual              =>  R$ ' + FormatFloat('###0.00', Limite) + #13 +
                'Valor da Compra Atual           =>  R$ ' + FormatFloat('###0.00', ValorCompra) + #13 +
                '----------------------------------------------------------' + #13 +
                'Limite para Novas Compras    =>  R$ ' + FormatFloat('###0.00', (Limite - ValorCompra)) + #13 +
                '----------------------------------------------------------');
          end;
          Result := True;
        end;
      end;
    end;
  end
  else
  begin {Consulta no Banco Servidor}
     { dm.zdbServidor.Connected := False;
      dm.zdbServidor.HostName  := Servidor_HostName;
      dm.zdbServidor.Database  := Servidor_Database;
      dm.zdbServidor.Connected := True;
      if dm.zdbServidor.Connected then
        begin
          SQLCliente.Close;
          SQLCliente.SQL.Clear;
          SQLCliente.SQL.Add('Select CLIEA60RAZAOSOC, CLIEN2RENDA, CLIEN2CONJUGERENDA, CLIEN2LIMITECRED from CLIENTE where CLIEA13ID = ''' + Cliente + '''');
          SQLCliente.Open;
          if not SQLCliente.IsEmpty then
            begin
              if (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value > 0) then
                begin
                  if DM.SQLConfigVenda.FieldByName('CFVECRENDCONJNOLIM').AsString = 'S' then
                    LimiteOrigem := (SQLCliente.FieldByName('CLIEN2RENDA').AsFloat +
                               SQLCliente.FieldByName('CLIEN2CONJUGERENDA').AsFloat) *
                              (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').AsFloat/100)
                  else
                    LimiteOrigem := (SQLCliente.FieldByName('CLIEN2RENDA').AsFloat) *
                              (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').AsFloat/100) ;
                end
              else
                begin
                  // Application.MessageBox('O sistema está configurado para testar o limite de crédito, mas a operação não foi realizada porque não existe nenhum percentual configurado para o cálculo do limite ! ','Chekout Informa', MB_OK + MB_ICONWARNING + MB_SYSTEMMODAL);
                  Result := True;
                  Exit;
                end;

              // Achar os Totais de Juros, Multas, Descontos Pendentes nas parcelas em Atrasadas
              dm.zServidor_Consulta.Close ;
              dm.zServidor_Consulta.sql.Clear;
              dm.zServidor_Consulta.SQL.Add('Select CONTASRECEBER.CUPOA13ID, CONTASRECEBER.NOFIA13ID as NOFIA13ID, CONTASRECEBER.CTRCA30NRODUPLICBANCO as CTRCA30NRODUPLICBANCO,');
              dm.zServidor_Consulta.SQL.Add('CONTASRECEBER.CLIEA13ID, CONTASRECEBER.CTRCA13ID, CONTASRECEBER.CTRCDULTREC, CONTASRECEBER.CTRCDVENC, CONTASRECEBER.CTRCDEMIS,');
              dm.zServidor_Consulta.SQL.Add('CONTASRECEBER.CTRCINROPARC, CONTASRECEBER.CTRCN2TOTDESCREC, CONTASRECEBER.CTRCN2TOTJUROREC, CONTASRECEBER.CTRCN2TOTMULTAREC,');
              dm.zServidor_Consulta.SQL.Add('CONTASRECEBER.CTRCN2TOTREC + CONTASRECEBER.CTRCN2TOTJUROREC + CONTASRECEBER.CTRCN2TOTMULTAREC + CONTASRECEBER.CTRCN2TOTMULTACOBR - CONTASRECEBER.CTRCN2TOTDESCREC as CTRCN2TOTREC,');
              dm.zServidor_Consulta.SQL.Add('CONTASRECEBER.CTRCN2TXJURO, CONTASRECEBER.CTRCN2TXMULTA, CONTASRECEBER.CTRCN2VLR, CONTASRECEBER.CTRCCSTATUS, CONTASRECEBER.EMPRICODULTREC,');
              dm.zServidor_Consulta.SQL.Add('CONTASRECEBER.NUMEICOD, CONTASRECEBER.EMPRICOD, CONTASRECEBER.AVALA13ID, CONTASRECEBER.PORTICOD, CONTASRECEBER.PDVDA13ID, CONTASRECEBER.BANCA5CODCHQ,');
              dm.zServidor_Consulta.SQL.Add('CONTASRECEBER.CTRCA15NROCHQ, CONTASRECEBER.ALINICOD from CONTASRECEBER where (CONTASRECEBER.CTRCCSTATUS = ''A'' or CONTASRECEBER.CTRCCSTATUS = ''N'') and ');
              dm.zServidor_Consulta.SQL.Add('(CONTASRECEBER.CTRCCTIPOREGISTRO = ''N'' or CONTASRECEBER.CTRCCTIPOREGISTRO = '''' or CONTASRECEBER.CTRCCTIPOREGISTRO IS NULL) and ');
              dm.zServidor_Consulta.SQL.Add('(CONTASRECEBER.PDVDA13ID = '''' or CONTASRECEBER.PDVDA13ID IS NULL) and CONTASRECEBER.CLIEA13ID = '''+ Cliente + '''');
              dm.zServidor_Consulta.Open ;

              JuroParcTot  := 0 ;
              MultaParcTot := 0 ;
              DescParcTot  := 0 ;
              JuroParc     := 0 ;
              MultaParc    := 0 ;
              DescParc     := 0 ;
              while not dm.zServidor_Consulta.EOF do
                begin
                  try
                    SaldoParc := dm.zServidor_Consulta.FieldByName('CTRCN2VLR').Value;
                    if dm.zServidor_Consulta.FieldByName('CTRCDULTREC').AsVariant <> null then
                      Vencimento := dm.zServidor_Consulta.FieldByName('CTRCDULTREC').AsDateTime
                    else
                      Vencimento := dm.zServidor_Consulta.FieldByName('CTRCDVENC').AsDateTime;

                    If (dm.zServidor_Consulta.FieldByName('CTRCA13ID').AsString <> '') and (Length(dm.zServidor_Consulta.FieldByName('CTRCA13ID').AsString) = 13) Then
                      Documento := dm.zServidor_Consulta.FieldByName('CTRCA13ID').AsString ;
                    If (dm.zServidor_Consulta.FieldByName('CUPOA13ID').AsString <> '') and (Length(dm.zServidor_Consulta.FieldByName('CUPOA13ID').AsString) = 13) Then
                      Documento := dm.SQLTemplate.FieldByName('CUPOA13ID').AsString ;
                    If (dm.zServidor_Consulta.FieldByName('NOFIA13ID').AsString <> '') and (Length(dm.zServidor_Consulta.FieldByName('NOFIA13ID').AsString) = 13) Then
                      Documento := dm.zServidor_Consulta.FieldByName('NOFIA13ID').AsString ;

                    if dm.zServidor_Consulta.FieldByName('CTRCN2TOTREC').AsVariant <> null then
                      SaldoParc := dm.zServidor_Consulta.FieldByName('CTRCN2VLR').Value -
                               (dm.zServidor_Consulta.FieldByName('CTRCN2TOTREC').AsVariant -
                                dm.zServidor_Consulta.FieldByName('CTRCN2TOTJUROREC').AsVariant -
                                dm.zServidor_Consulta.FieldByName('CTRCN2TOTMULTAREC').AsVariant +
                                dm.zServidor_Consulta.FieldByName('CTRCN2TOTDESCREC').AsVariant);

                    if (dm.zServidor_Consulta.FieldByName('CTRCN2TXJURO').asFloat > 0) and (SaldoParc > 0) and
                       (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value >= 0) then
                      JuroParc := CalculaJuroMultaDesc(SaldoParc,
                                                       dm.zServidor_Consulta.FieldByName('CTRCN2TXJURO').asFloat,
                                                       dm.zServidor_Consulta.FieldByName('CTRCDVENC').AsDateTime,  // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
                                                       Date,
                                                       0,
                                                       DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
                                                       'Juro',
                                                       Documento,
                                                       dm.zServidor_Consulta.FieldByName('CTRCINROPARC').AsString) ;

                    JuroParcTot := JuroParcTot + JuroParc;

                    if (dm.zServidor_Consulta.FieldByName('CTRCN2TXMULTA').asFloat > 0) and (SaldoParc > 0) and
                       (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value >= 0) and
                       (Documento <> '') then
                      MultaParc := CalculaJuroMultaDesc(SaldoParc,
                                                        dm.zServidor_Consulta.Fieldbyname('CTRCN2TXMULTA').AsFloat,
                                                        dm.zServidor_Consulta.FieldByName('CTRCDVENC').AsDateTime,  // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
                                                        Date,
                                                        0,
                                                        DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                                        'Multa',
                                                        Documento,
                                                        dm.zServidor_Consulta.FieldByName('CTRCINROPARC').AsString) ;

                    MultaParcTot := MultaParcTot + MultaParc;

                    if (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').asFloat > 0) and
                       (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value >= 0) and
                       (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value >= 0)  and
                       (Documento <> '') and (SaldoParc > 0)  then
                      DescParc := CalculaJuroMultaDesc(SaldoParc,
                                                       DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
                                                       dm.zServidor_Consulta.FieldByName('CTRCDVENC').AsDateTime,  // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
                                                       Date,
                                                       0,
                                                       DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
                                                       'Desconto',
                                                       Documento,
                                                       dm.zServidor_Consulta.FieldByName('CTRCINROPARC').AsString) ;

                    DescParcTot := DescParcTot + DescParc;
                  except
                    Application.ProcessMessages;
                  end;

                  dm.zServidor_Consulta.Next ;
                end ;

               JurosMultaDescPendentes := JuroParcTot + MultaParcTot - DescParcTot;

              SQLParcelas.Close ;
              // Final da rotina para achar os Totais de Juros, Multas, Descontos Pendentes nas parcelas em Atrasadas

              // Igual a SIM, subtrai do limite o valor das parcelas abertas s/juro p/atraso...
              if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString = 'S' then
                begin
                  dm.zServidor_Consulta.Close;
                  dm.zServidor_Consulta.SQL.Clear;
                  dm.zServidor_Consulta.SQL.Add('Select sum(CTRCN2VLR) from CONTASRECEBER where CLIEA13ID = ''' + Cliente + ''' AND CTRCN2VLR > CTRCN2TOTREC');
                  dm.zServidor_Consulta.SQL.Add('AND (CTRCA5TIPOPADRAO NOT IN (''CRT'',''CONV'') or CTRCA5TIPOPADRAO is null) ');
                  dm.zServidor_Consulta.SQL.Add('AND (CTRCCSTATUS = ''A'' or CTRCCSTATUS = ''N'')') ;
                  dm.zServidor_Consulta.Open;
                  if not dm.zServidor_Consulta.IsEmpty then
                    Debito := dm.zServidor_Consulta.FieldByName('SUM').AsFloat;

                  Limite := LimiteOrigem;
                  // Se Subtrai as Parcelas Abertas do Limite
                  if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString = 'S' then
                    Limite := Limite - (Debito + JurosMultaDescPendentes)
                end;

              if Limite < ValorCompra then
                begin
                  if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString <> 'S' then
                    begin  // Nao Subtrai Parcelas Abertas do Limite
                      if FileExists('MostraLimiteMaior.txt') then
                      begin
                        FormTelaAvisoDebito := TFormTelaAvisoDebito.create(Application);
                        FormTelaAvisodebito.Label8.Caption           :=  'Saldo do Limite Ultrapassado:';
                        FormTelaAvisoDebito.lblSaldoFinal.font.Color := clRed;
                        FormTelaAvisoDebito.lblCliente.Caption       :=  SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant;
                        FormTelaAvisoDebito.lblLimiteInicial.Caption :=  FormatFloat('###0.00',LimiteOrigem) ;
                        FormTelaAvisoDebito.lblParcelas.Caption      :=  FormatFloat('###0.00',Debito);
                        FormTelaAvisoDebito.lbljuros.Caption         :=  FormatFloat('###0.00',JurosMultaDescPendentes);
                        FormTelaAvisoDebito.lblSaldoAtual.Caption    :=  FormatFloat('###0.00',LimiteOrigem - (Debito+JurosMultaDescPendentes));
                        if LimiteOrigem - (Debito+JurosMultaDescPendentes) > 0 then
                          FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clGreen
                        Else
                          FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clRed;
                        FormTelaAvisoDebito.lblCompra.Caption        :=  FormatFloat('###0.00',ValorCompra);
                        FormTelaAvisoDebito.lblSaldoFinal.Caption    :=  FormatFloat('###0.00',Limite - ValorCompra);
                        FormTelaAvisoDebito.ShowModal;
                      end else
                      begin
                        if not FileExists('MostraLimiteComprasReduzido.txt') then
                          ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant               + #13 + #13 +
                                      'Valor do Limite Inicial    =>  R$ ' + FormatFloat('###0.00',LimiteOrigem)              + #13 +
                                      'Valor da Compra Atual      =>  R$ ' + FormatFloat('###0.00',ValorCompra)               + #13 +
                                      'Limite Ultrapassado em     =>  R$ ' + FormatFloat('###0.00',(Limite - ValorCompra)))
                        else
                          ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant               + #13 + #13 +
                                      'Valor da Compra Atual      =>  R$ ' + FormatFloat('###0.00',ValorCompra)               + #13 +
                                      'Limite Ultrapassado em     =>  R$ ' + FormatFloat('###0.00',(Limite - ValorCompra)));
                      End;
                      Result := False;
                    end
                  else
                    begin
                      if FileExists('MostraLimiteMaior.txt') then
                      begin
                        FormTelaAvisoDebito := TFormTelaAvisoDebito.create(Application);
                        FormTelaAvisodebito.Label8.Caption           :=  'Saldo do Limite Ultrapassado:';
                        FormTelaAvisoDebito.lblSaldoFinal.font.Color := clRed;
                        FormTelaAvisoDebito.lblCliente.Caption       :=  SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant;
                        FormTelaAvisoDebito.lblLimiteInicial.Caption :=  FormatFloat('###0.00',LimiteOrigem) ;
                        FormTelaAvisoDebito.lblParcelas.Caption      :=  FormatFloat('###0.00',Debito);
                        FormTelaAvisoDebito.lbljuros.Caption         :=  FormatFloat('###0.00',JurosMultaDescPendentes);
                        FormTelaAvisoDebito.lblSaldoAtual.Caption    :=  FormatFloat('###0.00',LimiteOrigem - (Debito+JurosMultaDescPendentes));
                        if LimiteOrigem - (Debito+JurosMultaDescPendentes) > 0 then
                          FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clGreen
                        Else
                          FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clRed;
                        FormTelaAvisoDebito.lblCompra.Caption        :=  FormatFloat('###0.00',ValorCompra);
                        FormTelaAvisoDebito.lblSaldoFinal.Caption    :=  FormatFloat('###0.00',Limite - ValorCompra);
                        FormTelaAvisoDebito.ShowModal;
                      end else
                      begin
                        if not FileExists('MostraLimiteComprasReduzido.txt') then
                          ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant                   + #13 + #13 +
                                      'Valor do Limite Inicial.            =>  R$ ' + FormatFloat('###0.00',LimiteOrigem)         + #13 +
                                      'Parcelas Abertas S/Encargos =>  R$ ' + FormatFloat('###0.00',Debito)                       + #13 +
                                      'Juros, Multas, Descontos       =>  R$ ' + FormatFloat('###0.00',JurosMultaDescPendentes)   + #13 +
                                      '----------------------------------------------------------'                                + #13 +
                                      'Valor do Limite Atual              =>  R$ ' + FormatFloat('###0.00',Limite)                + #13 +
                                      'Valor da Compra Atual           =>  R$ ' + FormatFloat('###0.00',ValorCompra)              + #13 +
                                      '----------------------------------------------------------'                                + #13 +
                                      'Limite Ultrapassado em          =>  R$ ' + FormatFloat('###0.00',Limite - ValorCompra)     + #13 +
                                      '----------------------------------------------------------')
                        else
                          ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant                   + #13 + #13 +
                                      '----------------------------------------------------------'                                + #13 +
                                      'Valor da Compra Atual           =>  R$ ' + FormatFloat('###0.00',ValorCompra)              + #13 +
                                      '----------------------------------------------------------'                                + #13 +
                                      'Limite Ultrapassado em          =>  R$ ' + FormatFloat('###0.00',Limite - ValorCompra)     + #13 +
                                      '----------------------------------------------------------');
                      End;
                      Result := False;
                    end;
                end
              else  // Se o Limite for maior que o valor da Compra
                begin
                  if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString <> 'S' then
                    begin  // Nao Subtrai Parcelas Abertas do Limite
                      if FileExists('MostraLimiteMaior.txt') then
                      begin
                        FormTelaAvisoDebito := TFormTelaAvisoDebito.create(Application);
                        FormTelaAvisodebito.Label8.Caption           :=  'Saldo do Limite de Crédito.....:';
                        FormTelaAvisoDebito.lblSaldoFinal.Font.Color := clGreen;
                        FormTelaAvisoDebito.lblCliente.Caption       :=  SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant;
                        FormTelaAvisoDebito.lblLimiteInicial.Caption :=  FormatFloat('###0.00',LimiteOrigem) ;
                        FormTelaAvisoDebito.lblParcelas.Caption      :=  FormatFloat('###0.00',Debito);
                        FormTelaAvisoDebito.lbljuros.Caption         :=  FormatFloat('###0.00',JurosMultaDescPendentes);
                        FormTelaAvisoDebito.lblSaldoAtual.Caption    :=  FormatFloat('###0.00',LimiteOrigem - (Debito+JurosMultaDescPendentes));
                        if LimiteOrigem - (Debito+JurosMultaDescPendentes) > 0 then
                          FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clGreen
                        Else
                          FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clRed;
                        FormTelaAvisoDebito.lblCompra.Caption        :=  FormatFloat('###0.00',ValorCompra);
                        FormTelaAvisoDebito.lblSaldoFinal.Caption    :=  FormatFloat('###0.00',Limite - ValorCompra);
                        FormTelaAvisoDebito.ShowModal;
                      end else
                      begin
                        if not FileExists('MostraLimiteComprasReduzido.txt') then
                          ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant               + #13 + #13 +
                                      'Valor do Limite Inicial    =>  R$ ' + FormatFloat('###0.00',LimiteOrigem)              + #13 +
                                      'Valor da Compra Atual      =>  R$ ' + FormatFloat('###0.00',ValorCompra)               + #13 +
                                      'Limite para Novas Compras  =>  R$ ' + FormatFloat('###0.00',(Limite - ValorCompra)));
                      End;
                      Result := True;
                    end
                  else
                    begin  // Subtrai do valor da Compra e das parcelas abertas
                     if FileExists('MostraLimiteMaior.txt') then
                      begin
                        FormTelaAvisoDebito := TFormTelaAvisoDebito.create(Application);
                        FormTelaAvisodebito.Label8.Caption           := 'Saldo do Limite de Crédito.....:';
                        FormTelaAvisoDebito.lblSaldoFinal.font.Color := clGreen;
                        FormTelaAvisoDebito.lblCliente.Caption       :=  SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant;
                        FormTelaAvisoDebito.lblLimiteInicial.Caption :=  FormatFloat('###0.00',LimiteOrigem) ;
                        FormTelaAvisoDebito.lblParcelas.Caption      :=  FormatFloat('###0.00',Debito);
                        FormTelaAvisoDebito.lbljuros.Caption         :=  FormatFloat('###0.00',JurosMultaDescPendentes);
                        FormTelaAvisoDebito.lblSaldoAtual.Caption    :=  FormatFloat('###0.00',LimiteOrigem - (Debito+JurosMultaDescPendentes));
                        if LimiteOrigem - (Debito+JurosMultaDescPendentes) > 0 then
                          FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clGreen
                        Else
                          FormTelaAvisoDebito.lblSaldoAtual.Font.Color := clRed;
                        FormTelaAvisoDebito.lblCompra.Caption        :=  FormatFloat('###0.00',ValorCompra);
                        FormTelaAvisoDebito.lblSaldoFinal.Caption    :=  FormatFloat('###0.00',Limite - ValorCompra);
                        FormTelaAvisoDebito.ShowModal;
                      end else
                        begin
                        if not FileExists('MostraLimiteComprasReduzido.txt') then
                          ShowMessage('Cliente => ' + SQLCliente.FieldByName('CLIEA60RAZAOSOC').AsVariant                   + #13 + #13 +
                                      'Valor do Limite Inicial.            =>  R$ ' + FormatFloat('###0.00',LimiteOrigem)         + #13 +
                                      'Parcelas Abertas S/Encargos =>  R$ ' + FormatFloat('###0.00',Debito)                       + #13 +
                                      'Juros, Multas, Descontos       =>  R$ ' + FormatFloat('###0.00',JurosMultaDescPendentes)   + #13 +
                                      '----------------------------------------------------------'                                + #13 +
                                      'Valor do Limite Atual              =>  R$ ' + FormatFloat('###0.00',Limite)                + #13 +
                                      'Valor da Compra Atual           =>  R$ ' + FormatFloat('###0.00',ValorCompra)              + #13 +
                                      '----------------------------------------------------------'                                + #13 +
                                      'Limite para Novas Compras    =>  R$ ' + FormatFloat('###0.00',(Limite - ValorCompra))      + #13 +
                                      '----------------------------------------------------------');
                      End;
                      Result := True;
                    end;
                end;
            end;
        end
      else
        begin
          ShowMessage('Sem Conexao ao Servidor não será possivel calcular limite de compra!');
          Result := False;
        end;  }

  end;
end;

function AutenticaVendedor(UserNameDefault, CAMPO: string; var InfoRetorno: TInfoRetornoUser): string;
var
  SQLVendedor: TQuery;
  UserName: string;
  Password: string;
  Contador: Integer;
  VendedorOK, SenhaOK: Boolean;
begin
  SQLVendedor := TQuery.Create(DM);
  SQLVendedor.DatabaseName := 'DB';
  UserName := '';
  Password := '';
  Contador := 0;
  // While (ContUser < 3) and (MResult <> MrCancel) do
  while (Contador < 3) do
  begin
      // PassWord := InputBoxMask('Autenticação de Usuário','Digite a sua senha de usuário :','');
    Application.CreateForm(TFormTelaAutenticaUsuario, FormTelaAutenticaUsuario);
    FormTelaAutenticaUsuario.RxLabel1.Caption := 'Informe a Senha do Vendedor!';
    FormTelaAutenticaUsuario.ShowModal;
    if (FormTelaAutenticaUsuario.ModalResult = MrOK) and (FormTelaAutenticaUsuario.EditSenha.Text <> '') then
      Password := FormTelaAutenticaUsuario.EditSenha.Text;
    if (FormTelaAutenticaUsuario.ModalResult = MrCancel) then
    begin
      Contador := 3; // Sai da Rotina
      Exit;
    end;

    FormTelaAutenticaUsuario.Close;
    FormTelaAutenticaUsuario.Free;
    SQLVendedor.Close;
    SQLVendedor.SQL.Clear;
    SQLVendedor.SQL.Add('SELECT VENDICOD,VENDA60NOME,VENDA30SENHA FROM VENDEDOR WHERE VENDA30SENHA = ' + '''' + UpperCase(Password) + '''');
    SQLVendedor.Open;
    if SQLVendedor.IsEmpty then
    begin
      ShowMessage('Senha Inválida!');
      Inc(Contador);
    end
    else
    begin
      if SQLVendedor.RecordCount > 1 then
      begin
        ShowMessage('Existe mais de um Vendedor com a mesma senha!');
        Inc(Contador);
      end
      else
      begin
        UserName := SQLVendedor.fieldbyname('VENDA60NOME').Value;
        SenhaOK := True;
        Contador := 3;
      end;
    end;
  end;
  if not SQLVendedor.IsEmpty then
  begin
    AutenticaVendedor := SQLVendedor.FieldByName(CAMPO).AsString;
    InfoRetorno.CampoRetorno := SQLVendedor.FieldByName(CAMPO).FieldName;
    InfoRetorno.CodUsuarioAutenticado := SQLVendedor.FieldByName('VENDICOD').AsInteger;
    InfoRetorno.NomeUsuarioAutenticado := SQLVendedor.FieldByName('VENDA60NOME').AsString;
    InfoRetorno.ModalResult := MrOk;
  end;
  SQLVendedor.Destroy;
  Password := '';
  Contador := 0;
end;

function TrataCodigoLidoPelaSerial(Data: string): string;
var
  StrAux: string;
  I: Integer;
begin
  if Data <> '' then
  begin
    for I := 0 to Length(Data) do
    begin
      try
        StrToInt(Data[I]);
        StrAux := StrAux + Data[I];
      except
      end
    end;
    TrataCodigoLidoPelaSerial := StrAux;
  end;
end;

function CriaParcelas(SQLParcelasPrazo,
  SQLPlnRec,
  SQLPlnRecParc: TQuery;
  Entrada,
  Desconto,
  Valor: Double;
  Plano: integer;
  Data: TDateTime;
  TpRecVistaTel,
  TpRecPrazoTel,
  TpRecVistaPDV,
  TpRecPrazoPDV,
  Documento: string;
  DiminuiAcresc: double;
  var ValorJuro, Acrescimo, EntradaCalc, TaxaCred: Double): Variant;
var
  OffSet,
    NumeroParcelas,
    I: Integer;
  TotParc,
    Acumulado,
    ValorDevido,
    Arredondamento: Double;
  DiasAnterior: TDateTime;
  VarAno,
    VarMes,
    VarDia,
    VarDiaOficial: Word;
  Erro: Boolean;
begin
  // se for plano variavel sair da rotina
  if SQLPlnRec.FieldByName('PLRCCDFIX').Value = 'V' then
    exit;

  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP');
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
  DM.SQLTemplate.ExecSQL;

  SQLParcelasPrazo.Close;
  SQLParcelasPrazo.Open;
  SQLParcelasPrazo.DisableControls;

  if SQLPlnRec.FieldByName('PLRCCDFIX').Value <> 'S' then
  begin
    SQLPlnRecParc.First;
    if SQLPlnRecParc.FieldByName('PLRPINRODIAS').Value = 0 then
      OffSet := 1
    else
      OffSet := 0;

    while not SQLPlnRecParc.EOF do
    begin
      SQLParcelasPrazo.Append;
      SQLParcelasPrazo.FieldByName('TERMICOD').Value := TerminalAtual;
      SQLParcelasPrazo.FieldByName('NROPARCELA').Value := SQLPlnRecParc.FieldByName('PLRPINROPARC').Value; //- OffSet;
      if (SQLPlnRecParc.FieldByName('PLRPINRODIAS').Value mod 30 = 0) and
        (SQLPlnRecParc.FieldByName('PLRPINRODIAS').Value > 0) and
        (ConvenioVenda > 0) then
      begin
        SQLParcelasPrazo.FieldByName('DATAVENCTO').Value := IncMonth(Data,
          SQLPlnRecParc.FieldByName('PLRPINRODIAS').Value
          / 30)
      end
      else
        SQLParcelasPrazo.FieldByName('DATAVENCTO').Value := Data +
          SQLPlnRecParc.FieldByName('PLRPINRODIAS').Value;

      SQLParcelasPrazo.Post;
      SQLPlnRecParc.Next;
    end;
  end
  else
  begin
    DecodeDate(Date, VarAno, VarMes, VarDiaOficial);

    if SQLPlnRec.FieldByName('PLRCCDFIXENTR').Value = 'S' then
      OffSet := 1
    else
      OffSet := 0;


    for I := 1 - OffSet to SQLPlnRec.FieldByName('PLRCIDFIXNROPARC').Value - OffSet do
    begin
      SQLParcelasPrazo.Append;
      SQLParcelasPrazo.FieldByName('TERMICOD').Value := TerminalAtual;
      SQLParcelasPrazo.FieldByName('NROPARCELA').Value := I + 1;
      SQLParcelasPrazo.FieldByName('NUMEICOD').Value := TpRecPrazoTel;

      if (SQLPlnRec.FieldByName('PLRCCDFIXENTR').Value = 'S') and (I = 1 - OffSet) then
        SQLParcelasPrazo.FieldByName('DATAVENCTO').Value := Data
      else
      begin
        VarDia := VarDiaOficial;
        Inc(VarMes);
        if VarMes > 12 then
        begin
          VarMes := 1;
          Inc(VarAno);
        end;
        Erro := true;

        while Erro do
        try
          if SQLPlnRec.FieldByName('PLRCDFIXDVENC').AsString = '' then
            SQLParcelasPrazo.FieldByName('DATAVENCTO').asString := Format('%.2d', [VarDia]) + '/' +
              Format('%.2d', [VarMes]) + '/' +
              Format('%.4d', [VarAno])
          else
          begin
            if SQLPlnRec.FieldByName('PLRCDFIXDVENC').AsInteger > 31 then // indica dia da semana 32=segunda,37 terca ... 38 domingo
            begin

              Vardia := (SQLPlnRec.FieldByName('PLRCDFIXDVENC').AsInteger - 31) - ((DayOfWeek(Date) - 1) - 7);
              Vardia := VarDiaOficial + Vardia;
            end else
              VarDia := SQLPlnRec.FieldByName('PLRCDFIXDVENC').AsInteger;
                      // se existir o arquivo, coloca o mes de vencimento para o atual caso o dia atual seja menor que o dia do vencimento
            if FileExists('Coonsumo.txt') then
              if Vardia > VarDiaOficial then
                Dec(VarMes);

            SQLParcelasPrazo.FieldByName('DATAVENCTO').asString := Format('%.2d', [VarDia]) + '/' +
              Format('%.2d', [VarMes]) + '/' +
              Format('%.4d', [VarAno]);
          end;
          Erro := False;
        except
          Dec(VarDia);
          Erro := true;
        end;
      end;
      SQLParcelasPrazo.Post;
    end;

  end;

  SQLParcelasPrazo.Close;
  SQLParcelasPrazo.Open;
  SQLParcelasPrazo.First;

  if SQLPlnRec.FieldByName('PLRCCDFIX').Value <> 'S' then
  begin
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('select Count(*) from PLANORECEBIMENTOPARCELA');
    DM.SQLTemplate.SQL.Add('where PLRCICOD = ' + SQLPlnRec.FieldByName('PLRCICOD').asString);
    DM.SQLTemplate.Open;

    NumeroParcelas := DM.SQLTemplate.Fieldbyname('Count').Value
  end
  else
    NumeroParcelas := SQLPlnRec.FieldByName('PLRCIDFIXNROPARC').AsInteger;

  ValorDevido := Valor + SQLPlnRec.FieldByName('PLRCN2TXCRED').Value - Desconto;

  if SQLPlnRec.FieldByName('PLRCN2TXCRED').Value > 0 then
    TaxaCred := SQLPlnRec.FieldByName('PLRCN2TXCRED').Value;

  if SQLPlnRec.FieldByName('PLRCN2PERCACRESC').Value > 0 then
    Acrescimo := (ValorDevido * SQLPlnRec.FieldByName('PLRCN2PERCACRESC').Value) / 100;

  if Entrada > 0 then
  begin
    ValorDevido := ValorDevido - Entrada;
    SQLParcelasPrazo.Edit;
    SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := Entrada;
    SQLParcelasPrazo.Post;
    SQLParcelasPrazo.Next;
    Dec(NumeroParcelas);
  end;
  if Acrescimo > 0 then
    ValorDevido := ValorDevido + Acrescimo;

//  SQLParcelasPrazo.Close;
//  SQLParcelasPrazo.Open;

  if NumeroParcelas > 0 then
  begin
    Acumulado := 0;
    DiasAnterior := Data;
    Valor := ValorDevido / NumeroParcelas;
    for I := 1 to NumeroParcelas do
    begin
      ValorJuro := (ValorDevido * (SQLParcelasPrazo.FieldByName('DATAVENCTO').Value - DiasAnterior) *
        SQLPlnRec.FieldByName('PLRCN2TXJURO').Value / 30 / 100);
      DiasAnterior := SQLParcelasPrazo.FieldByName('DATAVENCTO').Value;
      Acrescimo := Acrescimo + ValorJuro;
      Acumulado := Acumulado + Valor + ValorJuro;
      ValorDevido := ValorDevido - Valor;

      if NumeroParcelas <> 1 then
        SQLParcelasPrazo.Next;
    end;

    Acrescimo := Acrescimo - DiminuiAcresc;
    Acumulado := Acumulado - DiminuiAcresc;

    for I := 1 to NumeroParcelas - 1 do
      SQLParcelasPrazo.Prior;

    Valor := Acumulado / NumeroParcelas;
    while not SQLParcelasPrazo.EOF do
    begin
      SQLParcelasPrazo.Edit;
      if (Entrada > 0) and (SQLParcelasPrazo.FieldByName('NROPARCELA').Value = 0) then
        SQLParcelasPrazo.FieldByName('VALORVENCTO').AsString := FormatFloat('###0.00', Entrada)
      else
        SQLParcelasPrazo.FieldByName('VALORVENCTO').AsString := FormatFloat('###0.00', Valor);
      SQLParcelasPrazo.Post;

      SQLParcelasPrazo.Next;
    end;
    if not DM.SQLConfigVenda.Active then DM.SQLConfigVenda.Open;
    if (TipoPadrao <> 'CRT') then
    begin
      Arredondamento := 0;
      if DM.SQLConfigVenda.Fieldbyname('CFVECARREDPARCELA').AsString = '' then
      begin
        Informa('Você deve configurar o tipo de arredondamento, nas configurações de venda do sistema ! Operação Cancelada !');
        Abort;
      end;

      case DM.SQLConfigVenda.Fieldbyname('CFVECARREDPARCELA').AsString[1] of
        'P': //Arrendondamentos para a Primeira Parcela
          begin
            SQLParcelasPrazo.First;
            Arredondamento := 0;
            while not SQLParcelasPrazo.EOF do
            begin
                {  Arredondamento := Arredondamento +
                                     Frac(SQLParcelasPrazo.FieldByName('VALORVENCTO').Value);
                }

              SQLParcelasPrazo.Edit;
              if (Entrada > 0) and (SQLParcelasPrazo.FieldByName('NROPARCELA').Value = 0) then
                SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := Entrada
              else
                SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value -
                  Frac(SQLParcelasPrazo.FieldByName('VALORVENCTO').Value);
              SQLParcelasPrazo.Post;
              Arredondamento := Arredondamento + SQLParcelasPrazo.FieldByName('VALORVENCTO').Value;
              SQLParcelasPrazo.Next;
            end;

            SQLParcelasPrazo.close;
            SQLParcelasPrazo.open;
            SQLParcelasPrazo.First;
            SQLParcelasPrazo.Edit;
              {SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
                                                                   Arredondamento;}
            SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := (Acumulado + SQLParcelasPrazo.FieldByName('VALORVENCTO').Value) - Arredondamento;
            SQLParcelasPrazo.Post;

              //CALCULAR TOTAL DAS PARCELAS
            TotParc := 0;
              {SQLParcelasPrazo.Close;
              SQLParcelasPrazo.Open;
              SQLParcelasPrazo.First;
              while not SQLParcelasPrazo.EOF do
              begin
                TotParc := TotParc + SQLParcelasPrazo.FieldByName('VALORVENCTO').Value;
                SQLParcelasPrazo.Next;
              end ;
              TotParc := StrToFloat(FloatToStr(Acumulado+Entrada)) -
                         StrToFloat(FloatToStr(TotParc));

              SQLParcelasPrazo.First;
              //ESTA LINHA FOI COLOCADA PARA GRAVAR O RESTANTE NA PRIMEIRA PARACELA A PRAZO
              //SE TIVER ENTRADA
              if (Entrada > 0) then
                begin
                  SQLParcelasPrazo.Next;

                  SQLParcelasPrazo.Edit;
                  if TotParc > 0 then
                    SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := (SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
                                                                          Arredondamento) +
                                                                          ABS(TotParc)
                  else
                    SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := (SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
                                                                          Arredondamento) -
                                                                          ABS(TotParc);

                  SQLParcelasPrazo.Post;
                end; }
          end;
        'U': //Arrendondamentos para a Última Parcela
          begin
            SQLParcelasPrazo.Last;
            SQLParcelasPrazo.Prior;
            while not SQLParcelasPrazo.Bof do
            begin
              Arredondamento := Arredondamento +
                Frac(SQLParcelasPrazo.FieldByName('VALORVENCTO').Value);
              SQLParcelasPrazo.Edit;
              if (Entrada > 0) and (SQLParcelasPrazo.FieldByName('NROPARCELA').Value = 0) then
                SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := Entrada
              else
                SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value -
                  Frac(SQLParcelasPrazo.FieldByName('VALORVENCTO').Value);
              SQLParcelasPrazo.Post;
              SQLParcelasPrazo.Prior;
            end;
            SQLParcelasPrazo.Last;
            SQLParcelasPrazo.Edit;
            SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
              Arredondamento;
            SQLParcelasPrazo.Post;

              //CALCULAR TOTAL DAS PARCELAS
            TotParc := 0;
            SQLParcelasPrazo.First;
            while not SQLParcelasPrazo.EOF do
            begin
              TotParc := TotParc + SQLParcelasPrazo.FieldByName('VALORVENCTO').Value;

              SQLParcelasPrazo.Next;
            end;
            TotParc := StrToFloat(FloatToStr(Acumulado + Entrada)) -
              StrToFloat(FloatToStr(TotParc));
            SQLParcelasPrazo.Last;
            SQLParcelasPrazo.Edit;
            SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
              TotParc;
            SQLParcelasPrazo.Post;
          end;
        'N': //Sem Arrendondamentos
          begin
              //CALCULAR TOTAL DAS PARCELAS
              {if OffSet = 0 then
                begin}
            TotParc := 0;
            SQLParcelasPrazo.First;
            while not SQLParcelasPrazo.EOF do
            begin
              TotParc := TotParc + SQLParcelasPrazo.FieldByName('VALORVENCTO').AsFloat;

              SQLParcelasPrazo.Next;
            end;
            TotParc := StrToFloat(FloatToStr(Acumulado + Entrada)) -
              StrToFloat(FloatToStr(TotParc));

            SQLParcelasPrazo.Last;
            SQLParcelasPrazo.Edit;
            SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
              TotParc;
            SQLParcelasPrazo.Post;
                //end ;
          end;
      end;
    end;
  end;
  //VER SE O PLANO É COM ENTRADA, SE FOR DEVE JOGAR O VALOR DA ENTRADA PARA O CAMPO ENTRADA
  //E DELETAR DAS PARCELAS POIS SERÁ GRAVADO NUMA TABELA DIFERENTE
  SQLParcelasPrazo.First;
  if (SQLParcelasPrazo.FieldByName('DATAVENCTO').Value = Date) and (Application.FindComponent('FormTelaFechamentoVenda') <> nil) and (not ConsultandoPlano) then
  begin
    EntradaCalc := SQLParcelasPrazo.FieldByName('VALORVENCTO').AsFloat;
    SQLParcelasPrazo.Delete;
  end
  else EntradaCalc := 0;

  SQLParcelasPrazo.Close;
  SQLParcelasPrazo.Open;
  SQLParcelasPrazo.EnableControls;
end;

procedure CalculaImpostosNotaFiscalItem(DataSet: TRXQuery; DataSource: TDataSource; FatorConversaoUnidade: Double);
var
  TOTALITEM, REDUCAO, VALORCOMPRA: Double;
begin
  try
    if ((DataSet <> nil) and
      (DataSource <> nil)) then
    begin

      try
        VALORCOMPRA := StrToFloat(SQLLocate('PRODUTO', 'PRODICOD', 'PRODN3VLRCOMPRA', DataSet.FieldByName('PRODICOD').AsString));
      except
        VALORCOMPRA := 0;
      end;

      DataSet.FieldByName('NFITN2VLRLUCRO').AsFloat := (DataSet.FieldByName('NFITN2VLRUNIT').AsFloat - VALORCOMPRA) * (DataSet.FieldByName('NFITN3QUANT').AsFloat * FatorConversaoUnidade);
      if DataSet.FieldByName('NFITN2PERCDESC').AsFloat > 0 then
        DataSet.FieldByName('NFITN2VLRDESC').AsFloat := (DataSet.FieldByName('NFITN2VLRUNIT').AsFloat * (DataSet.FieldByName('NFITN3QUANT').AsFloat * FatorConversaoUnidade)) * (DataSet.FieldByName('NFITN2PERCDESC').AsFloat / 100);
      TOTALITEM := (DataSet.FieldByName('NFITN2VLRUNIT').AsFloat * DataSet.FieldByName('NFITN3QUANT').AsFloat) - DataSet.FieldByName('NFITN2VLRDESC').AsFloat;
      if (SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCCALCIPI', DataSource.DataSet.FieldByName('OPESICOD').AsString) = 'S') then
        DataSet.FieldByName('NFITN2VLRIPI').AsFloat := TOTALITEM * (DataSet.FieldByName('NFITN2PERCIPI').AsFloat / 100)
      else
        DataSet.FieldByName('NFITN2VLRIPI').AsFloat := 0;
      if SQLLocate('PRODUTO', 'PRODICOD', 'PRODCSERVICO', DataSet.FieldByName('PRODICOD').AsString) = 'S' then
        DataSet.FieldByName('NFITN2VLRISSQN').AsFloat := TOTALITEM * (DataSet.FieldByName('NFITN2PERCISSQN').AsFloat / 100)
      else
        DataSet.FieldByName('NFITN2VLRISSQN').AsFloat := 0;
      if (SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCCALCICMS', DataSource.DataSet.FieldByName('OPESICOD').AsString) = 'S') and
        (DataSet.FieldByName('NFITN2PERCICMS').AsFloat > 0) then
      begin
        DataSet.FieldByName('NFITN2BASEICMS').AsFloat := TOTALITEM;

          // CALCULAR NOVA BASE DE ICMS BASEADO EM OUTRO CAMPO NO ICMS
        try
          REDUCAO := StrToFloat(SQLLocate('ICMS', 'ICMSICOD', 'ICMSN2REDBASEICMS', SQLLocate('PRODUTO', 'PRODICOD', 'ICMSICOD', DataSet.FieldByName('PRODICOD').AsString)));
        except
          REDUCAO := 0;
        end;
        if REDUCAO > 0 then
        begin
          DataSet.FieldByName('NFITN2BASEICMS').AsFloat := TOTALITEM * (REDUCAO / 100);
        end;

        DataSet.FieldByName('NFITN2VLRICMS').AsFloat := DataSet.FieldByName('NFITN2BASEICMS').AsFloat * (DataSet.FieldByName('NFITN2PERCICMS').AsFloat / 100);
        if DataSet.FieldByName('NFITN2PERCSUBS').AsFloat > 0 then
        begin
          DataSet.FieldByName('NFITN2BASESUBS').AsFloat := TOTALITEM * (DataSet.FieldByName('NFITN2PERCREDUCAO').AsFloat / 100) * (1 + (DataSet.FieldByName('NFITN2PERCSUBS').AsFloat / 100));
          DataSet.FieldByName('NFITN2VLRSUBS').AsFloat := (DataSet.FieldByName('NFITN2BASESUBS').AsFloat * (DataSet.FieldByName('NFITN2PERCICMS').AsFloat / 100)) - DataSet.FieldByName('NFITN2VLRICMS').AsFloat;
        end
        else
        begin
          DataSet.FieldByName('NFITN2BASESUBS').AsFloat := 0;
          DataSet.FieldByName('NFITN2VLRSUBS').AsFloat := 0;
        end;
      end;
    end;
  except
  end;
end;

procedure RefazTabelaTemp(Tabela: TTable; Abrir: Boolean);
begin
  try
    Tabela.Close;
    if Tabela.Exists then
      Tabela.DeleteTable;
    Tabela.Createtable;
  except
    Tabela.CreateTable;
  end;
  Tabela.Active := Abrir;
end;

procedure BaixaChequeRecebido(IDChequeRecebido:String;DataBaixa : TDateTime);
var
  SQLCheque : TrxQuery;
begin
  if (IDChequeRecebido <> '') and (DataBaixa > 0) then
    begin
      try
        Dm.DB.StartTransaction;
        SQLCheque := TRxQuery.Create(DM);
        SQLCheque.DatabaseName := 'DB';
        SQLCheque.Close;
        SQLCheque.SQL.Clear;
        SQLCheque.SQL.Add('UPDATE CONTASRECEBER SET CTRCDDEPOSCHQ = ' + '"' + FormatDateTime('mm/dd/yyyy',DataBaixa) + '", Pendente="S"  WHERE CTRCA13ID = "' + IDChequeRecebido + '"');
        SQLCheque.ExecSQL;
        Dm.DB.Commit;
      except
        SQLCheque.Free;
        Dm.DB.Rollback;
      end;
    end
  else
    begin
      Informa('Dados incompletos, impossível continuar !');
      Exit;
    end;
end;

procedure MudaAlineaCheque(IDCheque,NovaAlinea,NovoPortador : String);
var
  Cheque : TRxQuery;
begin
  // troca situacao do cheques
  if NovaAlinea <> '' then
    begin
      Dm.DB.StartTransaction;
      Cheque := TRxQuery.Create(DM);
      Cheque.DatabaseName := 'DB';
      Cheque.Close;
      Cheque.SQL.Clear;
      Cheque.SQL.Add('UPDATE CONTASRECEBER SET ALINICOD = ' + NovaAlinea + ', Pendente="S" WHERE CTRCA13ID = "' + IDCheque + '"');
      try
        Cheque.ExecSQL;
        Dm.DB.Commit;
      except
        on E:Exception do
          begin
            Informa('Problemas na alteração do status do cheque, anote o ERRO: ' + E.Message);
            Dm.DB.Rollback;
            Application.ProcessMessages;
          end;
      end;
    end;

  // troca portador do cheques
  if NovoPortador <> '' then
    begin
      Dm.DB.StartTransaction;
      Cheque := TRxQuery.Create(DM);
      Cheque.DatabaseName := 'DB';
      Cheque.Close;
      Cheque.SQL.Clear;
      Cheque.SQL.Add('UPDATE CONTASRECEBER SET PORTICOD = ' + NovoPortador + ', Pendente="S" WHERE CTRCA13ID = "' + IDCheque + '"');
      try
        Cheque.ExecSQL;
        Dm.DB.Commit;
      except
        on E:Exception do
          begin
            Informa('Problemas na alteração do status do cheque, anote o ERRO: ' + E.Message);
            Dm.DB.Rollback;
            Application.ProcessMessages;
          end;
      end;
    end;
end;

procedure BaixaChequeEmitido(NroCheque:String;DataBaixa : TDateTime);
var
  SQLCheque : TrxQuery;
begin
  if (NroCheque <> '') and (DataBaixa > 0) then
    begin
      try
        Dm.DB.StartTransaction;
        SQLCheque := TRxQuery.Create(DM);
        SQLCheque.DatabaseName := 'DB';
        SQLCheque.Close;
        SQLCheque.SQL.Clear;
        SQLCheque.SQL.Add('UPDATE CHEQUEEMITIDO SET CQEMDCOMP = ' + '"' + FormatDateTime('mm/dd/yyyy',DataBaixa) + '", Pendente="S"  WHERE CQEMINROCHEQUE = ' + NroCheque);
        SQLCheque.ExecSQL;
        Dm.DB.Commit;
      except
        SQLCheque.Free;
        Dm.DB.Rollback;
      end;
    end
  else
    begin
      Informa('Dados incompletos, impossível continuar !');
      Exit;
    end;
end;
function GetBuildInfo(Prog: string): string;
var
  VerInfoSize : DWORD;
  VerInfo : Pointer;
  VerValueSize : DWORD;
  VerValue : PVSFixedFileInfo;
  Dummy : DWORD;
  V1, V2, V3, V4 : Word;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(PChar(Prog),Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(Prog), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
    with (VerValue^) do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;
    FreeMem(VerInfo, VerInfoSize);
    Result := Format('%d.%d.%d.%d',[V1,V2,V3,V4]);
  except
    Result := '1.0.0';
  end;
end;

procedure GravaSaldoConsignacao(Empresa, CodProdutoCons, SomaSubtrai : string; Qtde : Real);
var
  Query : TrxQuery;
begin
  Query := TRxQuery.Create(DM);
  Query.DatabaseName := 'DB';
  DM.DB.StartTransaction;
  Query.SQL.Clear;
  Query.SQL.Add('UPDATE PRODUTOSALDO SET QTDE_CONSIGNADO = COALESCE(QTDE_CONSIGNADO,0) ' + SomaSubtrai + ConvFloatToStr(Qtde));
  Query.SQL.Add('WHERE PRODICOD = ''' + CodProdutoCons + '''' + 'and EMPRICOD = ''' + Empresa + '''');
  try
    Query.ExecSQL;
    DM.DB.Commit;
  except
    on E: Exception do
    begin
      DM.DB.Rollback;
      Informa('Problemas qtde de consignado, ANOTE O ERRO: ' + E.Message);
      Application.ProcessMessages;
    end;
  end;
end;
function MontaString(x: string; Tamanho: integer; tipo: Integer = 0; CompletarCom: string = ' '): string;
var
  t: integer;
  s: string;
begin
  //Tipo = Lado que será completado.
  //Tipo 0 = Left(Esquerda)
  //Tipo 1 = Right(Direita)
  s := CompletarCom;
  t := tamanho - length(x);
  s := DupeString(s, t);

  if Tamanho < Length(x) then
    if tipo = 0 then
      x := Copy(x, Length(x) - (Tamanho - 1), Tamanho)
    else
      x := Copy(x, 1, Tamanho);

  if tipo = 0 then
    Result := s + x
  else
    Result := x + s;
end;

function RemoverZeros(S: string): string;
var
  I, J : Integer;
begin
  I := Length(S);
  while (I > 0) and (S[I] <= ' ') do
  begin
    Dec(I);
  end;
  J := 1;
  while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do
  begin
    Inc(J);
  end;
  Result := Copy(S, J, (I-J)+1);
end;

procedure GravaMovimentoNumeroSerie(Empresa, NumeroSerie, EntSai, DocOrigem, NomeCliFor : string; CodigoProdutoMovSer : Integer; DataMovimento : TDateTime);
var
  Query : TrxQuery;
begin
  Query := TRxQuery.Create(DM);
  Query.DatabaseName := 'DB';
  DM.DB.StartTransaction;
  Query.SQL.Clear;
  Query.SQL.Add('INSERT INTO MOVIMENTO_NUMERO_SERIE (PRODICOD,PRSEA60NROSERIE,ENTRADA_SAIDA,DOCUMENTOORIGEM,CLIENTE_FORNECEDOR,DATA_MOVIMENTO,EMPRICOD) VALUES ( ' );
  Query.SQL.Add(IntToStr(CodigoProdutoMovSer) +', ');
  Query.SQL.Add(QuotedStr(NumeroSerie) +', ');
  Query.SQL.Add(QuotedStr(EntSai) +', ');
  Query.SQL.Add(QuotedStr(DocOrigem) +', ');
  Query.SQL.Add(QuotedStr(NomeCliFor) +', ');
  Query.SQL.Add('''' + FormatDateTime('mm/dd/yyyy', DataMovimento) + '''' +', ');
  Query.SQL.Add(QuotedStr(Empresa) +')');

  try
    Query.ExecSQL;
    DM.DB.Commit;
  except
    on E: Exception do
    begin
      DM.DB.Rollback;
      Informa('Problemas ao gravar o movimento número de série, ANOTE O ERRO: ' + E.Message);
      Application.ProcessMessages;
    end;
  end;
end;

procedure InsereNovoNumeroSerie(Empresa, CodigoProdutoNovo, NumeroSerie, Status : String);
var
  Query : TrxQuery;
begin
  Query := TRxQuery.Create(DM);
  Query.DatabaseName := 'DB';
  DM.DB.StartTransaction;
  Query.SQL.Clear;
  Query.SQL.Add('INSERT INTO PRODUTOSERIE (PRODICOD,PRSEA60NROSERIE,EMPRICOD,PRSECSTATUS) VALUES ( ' );
  Query.SQL.Add((CodigoProdutoNovo) +', ');
  Query.SQL.Add(QuotedStr(NumeroSerie) +', ');
  Query.SQL.Add(QuotedStr(Empresa) +', ');
  Query.SQL.Add(QuotedStr(Status) +')');
  try
    Query.ExecSQL;
    DM.DB.Commit;
  except
    on E: Exception do
    begin
      DM.DB.Rollback;
      Informa('Problemas ao gravar o movimento número de série, ANOTE O ERRO: ' + E.Message);
      Application.ProcessMessages;
    end;
  end;
end;

function VerificaDesconto(ValorRecebido, ValorDesconto, PercentualPermitido, PercentualDesconto  : Real): Boolean;
var
  vValor : Real;
begin
  Result := True;
  if ValorDesconto > 0 then
  begin
    vValor := (ValorDesconto / ValorRecebido * 100);
    Result := PercentualPermitido > vValor;
  end
  else
  if PercentualDesconto > 0 then
  begin
    Result := PercentualPermitido > vValor;
  end;
end;

function RetornaMesExtenso(Mes:Integer):String;
begin
  case Mes of
    1  : Result := 'JANEIRO';
    2  : Result := 'FEVEREIRO';
    3  : Result := 'MARCO';
    4  : Result := 'ABRIL';
    5  : Result := 'MAIO';
    6  : Result := 'JUNHO';
    7  : Result := 'JULHO';
    8  : Result := 'AGOSTO';
    9  : Result := 'SETEMBRO';
    10 : Result := 'OUTUBRO';
    11 : Result := 'NOVEMBRO';
    12 : Result := 'DEZEMBRO';
  end;
end;
end.

