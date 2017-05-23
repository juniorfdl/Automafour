unit UnitLibrary;

interface

uses Variants, MemTable, Menus, Stdctrls, Classes, Windows, Forms, WinINet,
     RxQuery, DBTables, Controls, Dialogs, DB, JPeg, Sysutils, DBCtrls,
     Registry, CommDlg, Messages, Graphics,IniFiles, FileCtrl, Math, DateUtils;
type
  TInfoRetornoUser = record
  CampoRetorno : string;
  CodUsuarioAutenticado  : integer;
  NomeUsuarioAutenticado : string;
  ModalResult            : TModalResult;
end;
type
  TinfoRetornoUltCompra = record
  UltimaCompra          : String;
  OrigemCompra          : String;
  Documento             : String;
end;
const
  ScreenWidth : Longint  = 800 ;
  ScreenHeight : Longint = 600 ;
var
  Enter,Esc,F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12 : Word;
  WBookmark         : TBookmark ;
  VarCriaNovaNota,
  DelContrLista,
  MoviCaixConcluido,
  RetornoConsulta,
  ConsultandoPlano,
  AtualizarPedidos,
  EnviouNumerariosECF, ProcuraProdutoPelaRef08Char, Gravou, ImpValeTroco, CpfOK, CodRapido, ImpCupomAutomatico, PDV_OffLine : boolean;
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
  NroViasTEF, vCLIEINDIACHQSJURO, CodMesa, CodConta, ProdutoAgrupGrade_MovDiv, VelocECFAtual : Integer  ;
  CodiProduto,
  CodiCli,
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
  TipoPadraoNumerarioAtual,TipoPadrao,
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
  TipoPlanoContas, TxtReciboECF, CodMotoboy, UsaTablet, ImpressoraCaixaPath, Enter_Vazio, TeleQuitado, TabInicial, F2_AUTOMATICO, DetalhesVenda, ParceiroNome, ParceiroPath, MostraCodigoBarras,
  NotaGaucha,GravarDisplaySequencial,GravarCupomCancelado,TipoHistoricoPadrao, ImprimeDadosClienteCupom, DataAniversario, Porta, TabelaMaisTerminal, IDReimprimir, ProdutoComplemento, SolicitaDataEntrega,
  OrdemGrupo, OrdemProduto, FiltraTerminal, Servidor_HostName, Servidor_Database, NroViasImpVenda : String;
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
  VarValorRecebido, PerJuroPlanoAoMes, Vlr_Total_Pis, Vlr_Total_Cofins, AliqOlhoImpostoSimples :  Double ;
  LogTotaliz        : TextFile ;
  //VARIAVEIS DE RETORNO DO CODIGO PRIMARIO DAS TELAS
  ProdutoCodigoRet,
  CupomOrigemTroca,
  ClienteEspecifico, ClienteCodigoRet  : string ;
  DataEntregaVenda,
  HoraEntrega1,
  HoraEntrega2,
  NomeSolicitante, NotaCompraNumero, NotaCompraProduto  : string ;
  //VARIAVEIS
  VersaoSistema,
  NomeClienteRec,
  EnderecoClienteRec,
  BairroCLienteRec,
  CidadeClienteRec,
  EstadoClienteRec,
  FoneClienteRec   : string ;
  NroUltItem : Integer;
  DataAtualizacaoEstoque, DataNotaCompra : TDateTime;

procedure Informa(Texto:string) ;
function RetornarNomeComputador : String ;
function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind : string) : string ;
function AutenticaUsuario(UserNameDefault, CAMPO : String; var InfoRetorno:TInfoRetornoUser) : String;
function ExecSql(xsql: string; Tipo: Integer = 0): TQuery;
function Pergunta(BotaoDefault, Texto:string) : boolean ;
procedure InformaErro(Texto:string; Abortar: Boolean; SetarFoco: TWinControl) ;
procedure AtualizaTotaisCabecalhoContasPagar(NroDocumento : string) ;
function TiraPontoMilhar(Numero : Double) : Double ;
function ConvFloatToStr(Numero : Double) : string ;
procedure LancaMovimentacaoBanco(Empresa,ContaCorrente,Operacao,NroCheque : integer;ValorMov:Double; BomPara, DtBaixa, DtMovimento:TDateTime; Historico,Favorecido, IDContasReceber, IDContasPagar, IDChqEmitido, IDPlanoContas : String);
Function DigitVerifEAN(Cod:string) : string ;
procedure AtualizaSaldoContaCorrente(ContaCorrente : Integer; ValorDebito,ValorCredito : Double);
procedure LancaMovimentacaoTesouraria(Empresa,Terminal,Numerario,OperacaoTes : Integer;Valor : Double;Historico, IDContaPagar, IDContaReceber, IDCheque, IDFechaCaixa : String; DataMovimento : TDateTime; DocOrigem: String ; PlanoContas : String);
function ValidaCPF(CPF: string): boolean;
function ValidaCGC(CGC: string): boolean;
function GeraCodigoBarras(CodigoBase:String):String;
function IsNumeric(Valor, Tipo : String) : boolean ;
function TrocaVirgulaPorPonto(Numero : String) : string ;
function TrocaPontoPorVirgula(Numero : String) : string ;
function  RetornaUltimaCotacaoMoeda(Dia : TDateTime; Moeda : String): Double;
function ArredondaValor1(Valor : Double;NroCasasDec:Integer) : Double;
procedure LancaReajustePreco(ValorVenda,ValorCompra,ValorCompraMedio,ValorCusto,ValorCustoMedio,Margem:Double; Produto:Integer);
function CalculaMargemLucro(Produto:Integer;ValorBase,ValorVenda:Double):Double;
function CalculaPrecoVenda(Produto:Integer;ValorBase,MargemLucro:Double):Double;
function ArredondaValor(Valor : Double;NroCasasDec:Integer) : Double;
function EncontrouProduto(Codigo:string;Tabela:TObject):Boolean;
Function PosicaoGrade(Grade,Tamanho:Integer):Integer;
procedure GravaMovimentoEstoque(SqlProd,
                                SQLProdFilho,
                                SQLProdSald : TQuery;
                                EmprCod,
                                ProdCod,
                                Operacao:integer;
                                Quant:double;
                                EntrSai,
                                DataHora,
                                Valor,
                                TipoMov,
                                NumDocOrig,
                                Lote : String) ;

Function CalculaJuroMultaDesc(VlrVenc, TxJuroMultaDescCobr : double; DVenc, DPag, DVencOrig : TDateTime; Toler : integer; Tipo, Cupom, Parc : string) : Double;
function SQLRecCount(Tabela, ClausulaWhere : string) : integer ;
Function CalculaLimiteCredito(Cliente : String;ValorCompra : Double;SQLParcelas, SQLCliente : TQuery) : Double;
function  RetornaTamanhoProduto(Grade, Tamanho : String ) : String;
function RetornaCorProduto(Cor : String) : String;
function RetornaPreco(QueryProduto : TQuery; TabelaPrecoEmpresa:String; TabelaPrecoCliente:String) : double ;
function TestaNotaCompraMovimentoEstoque(IDNotaCompra, IDMovDiv, IDNotaVenda, Produto: string; quantidade: double) : boolean;

implementation

uses DataModulo, TelaAutenticaUsuario;

function TestaNotaCompraMovimentoEstoque(IDNotaCompra, IDMovDiv, IDNotaVenda, Produto: string; quantidade: double) : boolean;
var
  MyQuery : TQuery ;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB' ;
  MyQuery.Close ;
  MyQuery.SQL.Clear ;
  if IDNotaCompra <> '' then
    MyQuery.SQL.Add('Select Count(NOCPA13ID) as Contador from MovimentoEstoque Where NOCPA13ID="'+IDNotaCompra+'" and PRODICOD='+Produto + ' and MVESN3QTDENTRADA='+ConvFloatToStr(quantidade)) ;
  if IDMovDiv <> '' then
    MyQuery.SQL.Add('Select Count(MOVDA13ID) as Contador from MovimentoEstoque Where MOVDA13ID = "'+IDMovDiv+'" and PRODICOD = '+Produto) ;
  if IDNotaVenda <> '' then
    MyQuery.SQL.Add('Select Count(NOFIA13ID) as Contador from MovimentoEstoque Where NOFIA13ID = "'+IDNotaVenda+'" and PRODICOD = '+Produto) ;
  MyQuery.Open ;
  if MyQuery.FieldByName('Contador').Value > 0 then
    Result := True
  else
    Result := False;

  MyQuery.Close;
end ;



function RetornaPreco(QueryProduto : TQuery; TabelaPrecoEmpresa:String; TabelaPrecoCliente:String) : double ;
Var
  DataIni,
  DataFim : TDateTime ;
  PrecoOk : Boolean;
  SQLPreco:TQuery;
begin
  PrecoOk := False;

  SQLPreco := ExecSql(' select * from TABELAPRECOPRODUTO Where PRODICOD= '
    +IntToStr(QueryProduto.FindField('PRODICOD').asInteger)+' AND TPRCICOD = '+ TabelaPrecoCliente);

  If (Not PrecoOk) AND (TabelaPrecoCliente <> '') Then
    if (TabelaPrecoCliente <> 'V') and (copy(TabelaPrecoCliente,1,1) <> 'A') then
      Begin
        SQLPreco.ParamByName('TPRCICOD').asString  := TabelaPrecoCliente;
        SQLPreco.ParamByName('PRODICOD').asInteger := QueryProduto.FindField('PRODICOD').asInteger;
        SQLPreco.Open;
        If Not SQLPreco.Eof Then
          Begin
            if (SQLPreco.FieldByName('TPCPDINIPROMO').Value <> null) and
               (SQLPreco.FieldByName('TPCPDFIMPROMO').Value <> null) and
               (Date >= SQLPreco.FieldByName('TPCPDINIPROMO').asDateTime) and
               (Date <= SQLPreco.FieldByName('TPCPDFIMPROMO').asDateTime) then
              RetornaPreco := SQLPreco.FieldByName('TPCPN3VLRVENDAPROM').Value
            else
              RetornaPreco := SQLPreco.FieldByName('TPCPN3VLRVENDA').Value;
            PrecoOk := True;
          End;
        SQLPreco.Close;
      End;

  If (Not PrecoOk) AND (TabelaPrecoEmpresa<>'') Then
    Begin
      SQLPreco.ParamByName('TPRCICOD').asString  := TabelaPrecoEmpresa;
      SQLPreco.ParamByName('PRODICOD').asInteger := QueryProduto.FindField('PRODICOD').asInteger;
      SQLPreco.Open;
      If Not SQLPreco.Eof Then
        Begin
          if (SQLPreco.FieldByName('TPCPDINIPROMO').Value <> null) and
             (SQLPreco.FieldByName('TPCPDFIMPROMO').Value <> null) and
             (Date >= SQLPreco.FieldByName('TPCPDINIPROMO').asDateTime) and
             (Date <= SQLPreco.FieldByName('TPCPDFIMPROMO').asDateTime) then
            RetornaPreco := SQLPreco.FieldByName('TPCPN3VLRVENDAPROM').Value
          else
            RetornaPreco := SQLPreco.FieldByName('TPCPN3VLRVENDA').Value;
          PrecoOk := True;
        End;
      SQLPreco.Close;
    End;

  If (Not PrecoOk) Then
      if ((QueryProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (QueryProduto.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (QueryProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) or
         ((QueryProduto.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (QueryProduto.FieldByName('PRODDFIMPROMO').AsString = '')     and (QueryProduto.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) then
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
end ;

function RetornaCorProduto(Cor : String) : String;
var
 SQLCor : TQuery;
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

function  RetornaTamanhoProduto(Grade, Tamanho : String ) : String;
var
 SQLTamanho : TQuery;
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

Function CalculaLimiteCredito(Cliente : String;ValorCompra : Double;SQLParcelas, SQLCliente : TQuery) : Double;
var
  Debito, Limite, LimiteOrigem : Double;
begin
  SQLCliente.Close;
  SQLCliente.SQL.Clear;
  SQLCliente.SQL.Add('Select CLIEN2RENDA, CLIEN2CONJUGERENDA, CLIEN2LIMITECRED from CLIENTE where CLIEA13ID = ' + '"' + Cliente + '"');
  SQLCliente.Open;
  if not SQLCliente.IsEmpty then
    begin
      if (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value > 0) then
        begin
          if DM.SQLConfigVenda.FieldByName('CFVECRENDCONJNOLIM').Value = 'S' then
            Limite := (SQLCliente.FieldByName('CLIEN2RENDA').Value +
                       SQLCliente.FieldByName('CLIEN2CONJUGERENDA').Value) *
                      (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value/100)
          else
            Limite := (SQLCliente.FieldByName('CLIEN2RENDA').Value) *
                      (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value/100) ;
        end
      else
        begin
          Application.MessageBox('O sistema está configurado para testar o limite de crédito, mas a operação não foi realizada porque não existe nenhum percentual configurado para o cálculo do limite ! ','Chekout Informa', MB_OK + MB_ICONWARNING + MB_SYSTEMMODAL);
          Exit;
        end;

      if DM.SQLConfigVenda.FieldByName('CFVECSUBDEBNOLIMITE').AsString = 'S' then
        begin
          SQLParcelas.Close;
          SQLParcelas.SQL.Clear;
          SQLParcelas.SQL.Add('Select sum(CTRCN2VLR-CTRCN2TOTREC) from CONTASRECEBER where CLIEA13ID = '+ '"' + Cliente + '"' +  ' AND CTRCN2VLR > CTRCN2TOTREC');
          SQLParcelas.SQL.Add('AND (CTRCA5TIPOPADRAO NOT IN ("CRT","CONV") or CTRCA5TIPOPADRAO is null) ');
          SQLParcelas.SQL.Add(' And (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
          SQLParcelas.SQL.Add(' And (CTRCCTIPOREGISTRO = "N" OR CTRCCTIPOREGISTRO is Null) And (PDVDA13ID = "" OR PDVDA13ID is Null)') ;
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
end;

function SQLRecCount(Tabela, ClausulaWhere : string) : integer ;
var
  MyQuery : TQuery ;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB' ;
  MyQuery.Close ;
  MyQuery.SQL.Clear ;
  MyQuery.SQL.Add('select Count(*) as Contador from ' + Tabela) ;
  if ClausulaWhere <> '' then
    MyQuery.SQL.Add(ClausulaWhere) ;
  MyQuery.Open ;
  SQLRecCount := MyQuery.FieldByName('Contador').Value ;
  MyQuery.Destroy ;
end ;


Function CalculaJuroMultaDesc(VlrVenc, TxJuroMultaDescCobr : double; DVenc, DPag, DVencOrig : TDateTime; Toler : integer; Tipo, Cupom, Parc : string) : Double;
var
  PerDia     : double ;
  DiasAdiant : integer ;
  SQLocal    : TQuery ;
begin
  CalculaJuroMultaDesc := 0 ;
  if UpperCase(Tipo) = UpperCase('Juro') then
    begin
      if ((DPag - DVenc) > Toler) and (DPag > DVencOrig) then
        begin
          PerDia               := (TxJuroMultaDescCobr/30)/100 ;
          PerDia               := PerDia * (DPag - DVenc) ;
          CalculaJuroMultaDesc := VlrVenc * PerDia ;
        end ;
    end ;
  if UpperCase(Tipo) = UpperCase('Multa') then
    begin
      if ((DPag - DVenc) > Toler) and (DPag > DVencOrig) then
        CalculaJuroMultaDesc := VlrVenc * (TxJuroMultaDescCobr/100) ;
    end ;
  if UpperCase(Tipo) = UpperCase('Desconto') then
    begin
      if (DPag - DVenc) >= 0 then
        exit ;

      DiasAdiant           := StrToInt(FormatFloat('#', DPag - DVenc)) ;
      DiasAdiant           := StrToInt(Copy(IntToStr(DiasAdiant), 2, 20)) ;
      PerDia               := (TxJuroMultaDescCobr/30)/100 ;
      PerDia               := PerDia * DiasAdiant ;
      if DiasAdiant >= Toler then
        begin
          CalculaJuroMultaDesc := VlrVenc * PerDia ;
        end ;
    end ;
  if UpperCase(Tipo) = UpperCase('TaxaCobranca') then
    begin
      SQLocal := TQuery.Create(nil);
      SQLocal.DatabaseName := 'DB';

      SQLocal.Close;
      SQLocal.SQL.Clear;
      SQLocal.SQL.Add('select AVCOCENVIADO from CARTAAVISOCOBRANCA');
      SQLocal.SQL.Add('where CUPOA13ID = "' + Cupom + '"');
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
        CalculaJuroMultaDesc := VlrVenc * (TxJuroMultaDescCobr/100);
      end;
      SQLocal.Close;
      SQLocal.Destroy;
    end;
end;

procedure GravaMovimentoEstoque(SqlProd,
                                SQLProdFilho,
                                SQLProdSald : TQuery;
                                EmprCod,
                                ProdCod,
                                Operacao:integer;
                                Quant:double;
                                EntrSai,
                                DataHora,
                                Valor,
                                TipoMov,
                                NumDocOrig,
                                Lote : String) ;
procedure GravaMovimento(Produto,ProdutoFilho : Integer);
var
  ProxCod : integer ;
  SairMov : Boolean;
  QueryProduto : TQuery;
  CodProduto : Integer;
  QuantOrigem : Double;
  TipoBaixa : String;
begin
  TipoBaixa := dm.SQLLocate('PRODUTO','PRODICOD','PRODCTIPOBAIXA', IntToStr(Produto));
  if (TipoBaixa = 'N') or (TipoBaixa = 'F') then
    exit;

  SairMov := False ;
  while not SairMov do
  begin
    //TENTA CRIAR REGISTRO INICIAL NA TABELA PRODUTOSALDO
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select PRODICOD from PRODUTOSALDO where EMPRICOD='+IntToStr(EmprCod)+' and PRODICOD='+IntToStr(Produto)) ;
    DM.SQLTemplate.open;
    if DM.SQLTemplate.IsEmpty then
      begin
        DM.SQLTemplate.Close ;
        DM.SQLTemplate.SQL.Clear ;
        DM.SQLTemplate.SQL.Add('Insert Into PRODUTOSALDO') ;
        DM.SQLTemplate.SQL.Add('(EMPRICOD,') ;
        DM.SQLTemplate.SQL.Add('PRODICOD,') ;
        DM.SQLTemplate.SQL.Add('PSLDN3QTDE,') ;
        DM.SQLTemplate.SQL.Add('PSLDN3QTDMIN,') ;
        DM.SQLTemplate.SQL.Add('PSLDN3QTDMAX)') ;
        DM.SQLTemplate.SQL.Add('values(') ;
        DM.SQLTemplate.SQL.Add(IntToStr(EmprCod) + ', ')  ; //EMPRICOD
        DM.SQLTemplate.SQL.Add(IntToStr(Produto) + ', ')  ; //PRODICOD
        DM.SQLTemplate.SQL.Add('0, ') ;//PSLDN3QTDE
        DM.SQLTemplate.SQL.Add('0, ') ;//PSLDN3QTDMIN
        DM.SQLTemplate.SQL.Add('0) ') ;//PSLDN3QTDMAX
        try
          DM.SQLTemplate.ExecSQL;
          Application.ProcessMessages;
        except
          Application.ProcessMessages;
        end;
      end;
    //PEGAR PROXIMO CODIGO MOVIMENTO DE ESTOQUE
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select Max(MVESICOD) as CONTADOR from MOVIMENTOESTOQUE') ;
    DM.SQLTemplate.SQL.Add('where EMPRICOD = ' + IntToStr(EmprCod)) ;
    DM.SQLTemplate.SQL.Add('and   MVESDMOV = "' + DataHora + '"') ;
    DM.SQLTemplate.Open ;
    if (DM.SQLTemplate.FieldByName('CONTADOR').AsFloat <= 0) or not(DM.SQLTemplate.FieldByName('CONTADOR').IsNull) then
      ProxCod := DM.SQLTemplate.FieldByName('CONTADOR').AsInteger + 1
    else
      ProxCod := 1 ;

    //ROTINA PARA GRAVAR MOVIMENTO DO ESTOQUE(EXTRATO DE ESTOQUE)
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('Insert Into MOVIMENTOESTOQUE') ;
    DM.SQLTemplate.SQL.Add('(EMPRICOD, ') ;
    DM.SQLTemplate.SQL.Add('MVESDMOV, ') ;
    DM.SQLTemplate.SQL.Add('MVESICOD, ') ;
    DM.SQLTemplate.SQL.Add('PRODICOD, ') ;
    DM.SQLTemplate.SQL.Add('OPESICOD, ') ;
    DM.SQLTemplate.SQL.Add('MVESN3QTDENTRADA, ') ;
    DM.SQLTemplate.SQL.Add('MVESN3QTDSAIDA, ') ;

    if AnsiUpperCase(TipoMov) = 'CUPOM' then
      DM.SQLTemplate.SQL.Add('CUPOA13ID, ') ;

    if AnsiUpperCase(TipoMov) = 'NOTACOMPRA' then
      DM.SQLTemplate.SQL.Add('NOCPA13ID, ') ;

    if AnsiUpperCase(TipoMov) = 'NOTAFISCAL' then
      DM.SQLTemplate.SQL.Add('NOFIA13ID, ') ;

    if AnsiUpperCase(TipoMov) = 'PEDIDOVENDA' then
      DM.SQLTemplate.SQL.Add('PDVDA13ID, ') ;

    if AnsiUpperCase(TipoMov) = 'MOVIMENTOSDIVERSOS' then
      DM.SQLTemplate.SQL.Add('MOVDA13ID, ') ;

    DM.SQLTemplate.SQL.Add('LOTEA30NRO, ') ;
    DM.SQLTemplate.SQL.Add('MVESCESTOQUEOK, ') ;
    DM.SQLTemplate.SQL.Add('PENDENTE, ') ;
    DM.SQLTemplate.SQL.Add('REGISTRO)') ;
    DM.SQLTemplate.SQL.Add('values(') ;
    DM.SQLTemplate.SQL.Add(IntToStr(EmprCod) + ', ')  ; //EMPRICOD
    DM.SQLTemplate.SQL.Add('"' + DataHora + '", ')    ; //MVESDMOV
    DM.SQLTemplate.SQL.Add(IntToStr(ProxCod) +', ')   ; //MVESICOD
    DM.SQLTemplate.SQL.Add(IntToStr(Produto) + ', ')  ; //PRODICOD
    DM.SQLTemplate.SQL.Add(IntToStr(Operacao) + ', ') ; //OPESICOD

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
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(Quant) + ', ') ;//MVESN3QTDENTRADA
        DM.SQLTemplate.SQL.Add('0, ') ;//MVESN3QTDSAIDA
      end ;
    if EntrSai = 'S' then
      begin
        DM.SQLTemplate.SQL.Add('0, ') ;//MVESN3QTDENTRADA
        DM.SQLTemplate.SQL.Add(ConvFloatToStr(Quant) + ', ') ;//MVESN3QTDSAIDA
      end ;

    DM.SQLTemplate.SQL.Add('"'+ NumDocOrig + '", ') ;

    if Lote <> '' then
      DM.SQLTemplate.SQL.Add('"'+ LOTE + '", ')
    else
      DM.SQLTemplate.SQL.Add('null, ') ; //LOTE

    DM.SQLTemplate.SQL.Add('"N", ') ; //STATUS DO MOVIMENTO PARA IMPORTACAO DE LOG
    DM.SQLTemplate.SQL.Add('"S", ') ; //PENDENTE
    DM.SQLTemplate.SQL.Add('"' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '")') ; //REGISTRO
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
  Sair    : boolean;
  ProdutoComp : TQuery;
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

  SQLProdSald.Close;
  SQLProdSald.Open;

  if not SqlProd.EOF then
    Begin
      // EFETUA A BAIXA DOS PRODUTOS QUE FAZEM PARTE DA COMPOSICAO
      if (SqlProd.FieldByName('PRODCTIPOBAIXA').Value = 'F') then
        begin
          SQLProdFilho.First;
          while not SQLProdFilho.EOF do
            begin
              Sair := False ;
              while not Sair do
                begin
                  try
                    GravaMovimento(SQLProdFilho.FindField('PRODICODFILHO').AsInteger,0);
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
          SQLProdFilho.Close;
          SQLProdFilho.SQL.Clear;
          SQLProdFilho.SQL.Add('SELECT * FROM PRODUTOCOMPOSICAO WHERE PRODICODFILHO = ' + IntToStr(ProdCod));
          SQLProdFilho.Open;
          SQLProdFilho.First;
          if (not SQLProdFilho.IsEmpty) then
            begin
              while not SQLProdFilho.Eof do
                begin
                  Sair := False ;
                  while not Sair do
                  begin
                    try
                      GravaMovimento(SQLProdFilho.FieldByName('PRODICOD').AsInteger,SQLProdFilho.FieldByName('PRODICODFILHO').AsInteger);
                      Sair := True ;
                      Application.ProcessMessages ;
                    except
                      Sair := False;
                      Application.ProcessMessages;
                      Sleep(1);
                    end;
                  end;
                  if (SqlProd.FieldByName('PRODCTIPOBAIXA').Value = 'A') and not (SQLProdFilho.IsEmpty) then
                    begin
                      Sair := False ;
                      while not Sair do
                      begin
                        try
                          GravaMovimento(SQLProdFilho.FieldByName('PRODICODFILHO').AsInteger,0);
                          Sair := True ;
                          Application.ProcessMessages ;
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
                Sair := False ;
                while not Sair do
                begin
                  try
                    GravaMovimento(ProdCod,0);
                    Sair := True ;
                    Application.ProcessMessages ;
                  except
                    Sair := False ;
                    Application.ProcessMessages ;
                  end;
                end;
              end;
        end;
    end;
end ;

Function PosicaoGrade(Grade,Tamanho:Integer):Integer;
Var
  Posicao:Integer;
Begin
  Result:=1;
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Text:= 'Select * From GRADETAMANHO Where GRADICOD='+IntToStr(Grade)+' Order By GRTMICOD';
  DM.SQLTemplate.Open;
  DM.SQLTemplate.First;Posicao:=0;
  While Not DM.SQLTemplate.Eof Do
    Begin
      Inc(Posicao);
      If DM.SQLTemplate.FindField('GRTMICOD').asInteger = Tamanho Then
        Begin
          Result := Posicao;
          Break;
        End;
      DM.SQLTemplate.Next;
    End;
  DM.SQLTemplate.Close;
End;

function EncontrouProduto(Codigo:string;Tabela:TObject):Boolean;
var Cod : double ;
var PrimeiroChar, SegundoChar : string;
begin
  EncontrouProduto := false ;
  PrimeiroChar := copy(Codigo,1,1);
  SegundoChar  := copy(Codigo,2,1);
  if (PrimeiroChar = 'F') and ((SegundoChar='0') or (SegundoChar='1') or (SegundoChar='2') or (SegundoChar='3') or (SegundoChar='4')
      or (SegundoChar='5') or (SegundoChar='6') or (SegundoChar='7') or (SegundoChar='8') or (SegundoChar='9')) then
      Codigo := Copy(Codigo,2,length(Codigo));

  try
    // PROCURAR NO CODIGO BARRAS PRINCIPAL
    (Tabela as TQuery).Close ;
    (Tabela as TQuery).SQL.Clear ;
    (Tabela as TQuery).SQL.Add('Select * from PRODUTO') ;
    if ProcuraProdutoPelaRef08Char then
      (Tabela as TQuery).SQL.Add('where PRODCATIVO = "S" and PRODA60CODBAR = "' + Copy(Codigo,1,8) + '"')
     else
      (Tabela as TQuery).SQL.Add('where PRODCATIVO = "S" and PRODA60CODBAR = "' + Codigo + '"') ;
    (Tabela as TQuery).Open ;
    (Tabela as TQuery).First ;
    if not (Tabela as TQuery).IsEmpty then
      begin
        EncontrouProduto    := True;
        CodigoBarrasProduto := (Tabela as TQuery).FieldbyName('PRODA60CODBAR').Value;
        Exit;
      end
    else
      begin
        // PROCURAR NA TAB.CD BARRAS AUX
        dm.SQLTemplate.Close ;
        dm.SQLTemplate.SQL.Clear ;
        dm.SQLTemplate.SQL.Add('select PRODICOD, PRBAA15BARRAS from PRODUTOBARRAS') ;
        dm.SQLTemplate.SQL.Add('where PRBAA15BARRAS = "' + Codigo + '"') ;
        dm.SQLTemplate.Open ;
        dm.SQLTemplate.First ;
        if not dm.SQLTemplate.IsEmpty then
          begin
            Codigo := dm.SQLTemplate.FieldbyName('PRODICOD').AsString;
            CodigoBarrasProduto := dm.SQLTemplate.FieldbyName('PRBAA15BARRAS').Value;
            // PROCURAR PELO CD.INTERNO DO PRODUTO
            (Tabela as TQuery).Close ;
            (Tabela as TQuery).SQL.Clear ;
            (Tabela as TQuery).SQL.Add('select * from PRODUTO') ;
            (Tabela as TQuery).SQL.Add('where PRODCATIVO = "S" and PRODICOD = ' + Codigo) ;
            (Tabela as TQuery).Open ;
            (Tabela as TQuery).First ;
            if not (Tabela as TQuery).IsEmpty then
              begin
                EncontrouProduto := True ;
                Exit;
              end;
          end;
        if not FileExists('ProcuraApenasCdBarras.txt') then
          begin
            // PROCURAR PELO CD.INTERNO DO PRODUTO
            (Tabela as TQuery).Close ;
            (Tabela as TQuery).SQL.Clear ;
            (Tabela as TQuery).SQL.Add('select * from PRODUTO') ;
            if pos('*',Codigo) > 0 then
              (Tabela as TQuery).SQL.Add('where PRODCATIVO = "S" and PRODICOD = 0')
            else
              begin
                if IsNumeric(Codigo, 'INTEGER') then
                  (Tabela as TQuery).SQL.Add('where PRODCATIVO = "S" and PRODICOD = ' + Codigo)
                 else
                  (Tabela as TQuery).SQL.Add('where PRODCATIVO = "S" and PRODICOD = 0');
              end;
            (Tabela as TQuery).Open ;
            (Tabela as TQuery).First ;
            if not (Tabela as TQuery).IsEmpty then
              begin
                EncontrouProduto := True ;
                Exit;
              end
            else
              begin
                // Testar PRODA60REFER
                (Tabela as TQuery).Close ;
                (Tabela as TQuery).SQL.Clear ;
                (Tabela as TQuery).SQL.Add('select * from PRODUTO') ;
                if ProcuraProdutoPelaRef08Char then
                  (Tabela as TQuery).SQL.Add('where PRODCATIVO = "S" and PRODA60REFER = "' + Copy(Codigo,1,8) + '"')
                 else
                  (Tabela as TQuery).SQL.Add('where PRODCATIVO = "S" and PRODA60REFER = "' + Codigo + '"') ;
                (Tabela as TQuery).Open ;
                (Tabela as TQuery).First ;
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
end ;


function ArredondaValor(Valor : Double;NroCasasDec:Integer) : Double;
var
  ValorFrac : Double;
begin
 ValorFrac := Frac(Valor);
 if ValorFrac <> 0.5 then
   case NroCasasDec of
     2 : Result    := RoundTo(Valor,0);
     3 : Result    := RoundTo(Valor,-1);
     4 : Result    := RoundTo(Valor,-2);
     5 : Result    := RoundTo(Valor,-3);
    end
 else
   Result := Valor;
end;


function CalculaPrecoVenda(Produto:Integer;ValorBase,MargemLucro:Double):Double;
var
  QueryProduto,QuerySql : TQuery;
  ICMS,Denominador : Double;
begin
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
            ICMS := StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',QueryProduto.FindField('ICMSICOD').AsString));

          if MargemLucro <=  0 then
            MargemLucro := QueryProduto.FindField('PRODN3PERCMARGLUCR').AsFloat;

          Denominador := MargemLucro     +
                         ICMS                                                       +
                         Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsFloat  +
                         Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsFloat     +
                         Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat;

          Result := ValorBase /
                    (1 - (MargemLucro +
                    ICMS +
                    Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsFloat  +
                    Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsFloat     +
                    Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat)/100);
        end
      else
        begin
          Result := ValorBase * (1+(MargemLucro/100));
        end;
    end;
  //arredonda valor de venda
  if Dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').AsInteger > 1 then
    if (Dm.SQLConfigVenda.FieldByName('CFVECFARREDVLRVEND').AsString = 'S') then
      Result := ArredondaValor(Result,Dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').AsInteger);
  QuerySql.Close;
  QuerySql.Free;
  QueryProduto.Close;
  QueryProduto.Free;
end;

function CalculaMargemLucro(Produto:Integer;ValorBase,ValorVenda:Double):Double;
var
  QueryProduto,QuerySql : TQuery;
  ICMS,LucroBruto : Double;
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
          if ValorBase > 0 then
            Result := ((ValorVenda / ValorBase)- 1) * 100
          else
            Result := 0;
          //-------------------------------------------------------------------------------------------
        end
      else
        begin
          if ValorBase > 0 then
            Result := ((ValorVenda / ValorBase)- 1) * 100
          else
            Result := 0;
        end;
    end;
  QuerySql.Close;
  QuerySql.Free;
  QueryProduto.Close;
  QueryProduto.Free;
end;

procedure LancaReajustePreco(ValorVenda,ValorCompra,ValorCompraMedio,ValorCusto,ValorCustoMedio,Margem:Double; Produto:Integer);
var
  QueryProduto,QueryProdutoReajuste, QueryMax : TQuery;
  Erro : Boolean;
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
          if((ValorVenda        <> QueryProduto.FieldByName('PRODN3VLRVENDA').AsFloat)     and (ValorVenda > 0))   or
            ((ValorCompra       <> QueryProduto.FieldByName('PRODN3VLRCOMPRA').AsFloat)    and (ValorCompra > 0))  or
            ((ValorCusto        <> QueryProduto.FieldByName('PRODN3VLRCUSTO').AsFloat)     and (ValorCusto > 0))   or
            ((Margem            <> QueryProduto.FieldByName('PRODN3PERCMARGLUCR').AsFloat) and (Margem > 0))       or
            ((ValorCustoMedio   <> QueryProduto.FieldByName('PRODN3VLRCUSTOMED').AsFloat)  and (ValorCustoMedio > 0))   or
            ((ValorCompraMedio  <> QueryProduto.FieldByName('PRODN3VLRCOMPRAMED').AsFloat) and (ValorCompraMedio > 0))  then
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
                    QueryMax.SQL.Add(' AND PRRJDREAJUSTE >= ' + '"' + FormatDateTime('mm/dd/yyyy hh:nn:ss',Now) + '"');
                    QueryMax.SQL.Add(' AND PRRJDREAJUSTE <= ' + '"' + FormatDateTime('mm/dd/yyyy hh:nn:ss',Now) + '"');
                    QueryMax.Open;
                    //CODIGO
                    if QueryMax.FieldByName('MAX').AsFloat > 0 then
                      QueryProdutoReajuste.SQL.Add(ConvFloatToStr(QueryMax.FieldByName('MAX').AsFloat + 1) + ',')
                    else
                      QueryProdutoReajuste.SQL.Add('1,');
                    //PRODUTO
                    QueryProdutoReajuste.SQL.Add(IntToStr(Produto) + ',');
                    //DATA DO REAJUSTE
                    QueryProdutoReajuste.SQL.Add('"' + FormatDateTime('mm/dd/yyyy hh:nn:ss', Now)+'"'+ ',');
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
                    QueryProdutoReajuste.SQL.Add('"S",');
                    QueryProdutoReajuste.SQL.Add('"' + FormatDateTime('mm/dd/yyyy hh:nn:ss',Now) + '"');
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

function ArredondaValor1(Valor : Double;NroCasasDec:Integer) : Double;
var
  ValorFrac : Double;
begin
 ValorFrac := Frac(Valor);
 if ValorFrac <> 0.5 then
   Result    := RoundTo(Valor, -NroCasasDec)
 else
   Result := Valor;
end;


function  RetornaUltimaCotacaoMoeda(Dia : TDateTime; Moeda : String): Double;
var
  Query : Tquery;
begin
  Query := Tquery.Create(DM);
  Query.DatabaseName := 'DB';
  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT * FROM COTACAOMOEDA WHERE CTMODDIA <= "' + FormatDateTime('mm/dd/yyyy',Dia) + '" AND ');
  Query.SQL.Add('CTMOA5MOEDA = "' + MOEDA + '"');
  Query.SQL.Add('ORDER BY REGISTRO DESC');
  Query.Open;
  if not Query.IsEmpty then
    RetornaUltimaCotacaoMoeda := Query.FieldByName('CTMON3VLRDIA').AsFloat
  else
    RetornaUltimaCotacaoMoeda := 0;

  Query.Close;
  Query.Free;
end;


function TrocaPontoPorVirgula(Numero : String) : string ;
var Wstr : string ;
begin
  if Numero <> '' then
  begin
    Wstr := Numero;
    if Pos('.', Wstr) > 0 then
      TrocaPontoPorVirgula := Copy(Wstr, 1, Pos('.', Wstr)-1) + ',' + Copy(Wstr, Pos('.', Wstr)+1, 3)
    else
      TrocaPontoPorVirgula := Numero ;
  end
  else TrocaPontoPorVirgula := '0,00' ;
end ;

function TrocaVirgulaPorPonto(Numero : String) : string ;
var Wstr : string ;
begin
  if Numero <> '' then
  begin
    Wstr := Numero;
    if Pos(',', Wstr) > 0 then
      TrocaVirgulaPorPonto := Copy(Wstr, 1, Pos(',', Wstr)-1) + '.' + Copy(Wstr, Pos(',', Wstr)+1, 3)
    else
      TrocaVirgulaPorPonto := Numero ;
  end
  else TrocaVirgulaPorPonto := '0.00' ;
end ;


function IsNumeric(Valor, Tipo : String) : boolean ;
var
  NumDbl : double ;
  NumInt : integer ;
begin
  Result := true ;
  if AnsiUpperCase(Tipo) = 'FLOAT' then
    begin
      try
        NumDbl := StrToFloat(Valor) ;
      except
        Result := false ;
      end ;
    end ;

  if AnsiUpperCase(Tipo) = 'INTEGER' then
    begin
      try
        NumDbl := StrToInt(Valor) ;
      except
        Result := false ;
      end ;
    end ;
end ;


function GeraCodigoBarras(CodigoBase:String):String;
var
  CodigoBarra : String;
begin
    if Length(CodigoBase) < 13 then
    begin
      case Length(CodigoBase) of
        01 : CodigoBarra := '99900000000' + CodigoBase;
        02 : CodigoBarra := '9990000000'  + CodigoBase;
        03 : CodigoBarra := '999000000'   + CodigoBase;
        04 : CodigoBarra := '99900000'    + CodigoBase;
        05 : CodigoBarra := '9990000'     + CodigoBase;
        06 : CodigoBarra := '999000'      + CodigoBase;
        07 : CodigoBarra := '99900'       + CodigoBase;
        08 : CodigoBarra := '9990'        + CodigoBase;
        09 : CodigoBarra := '999'         + CodigoBase;
        10 : CodigoBarra := '00'          + CodigoBase;
        11 : CodigoBarra := '0'           + CodigoBase;
        12 : CodigoBarra := CodigoBase;
      end;
    end;
    Result := CodigoBarra;
end;


function ValidaCGC(CGC: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(CGC[1]);
 n2:=StrToInt(CGC[2]);
 n3:=StrToInt(CGC[3]);
 n4:=StrToInt(CGC[4]);  // Retira cada numero do Edit, e joda p/ variavel
 n5:=StrToInt(CGC[5]);
 n6:=StrToInt(CGC[6]);
 n7:=StrToInt(CGC[7]);
 n8:=StrToInt(CGC[8]);
 n9:=StrToInt(CGC[9]);
 n10:=StrToInt(CGC[10]);
 n11:=StrToInt(CGC[11]);
 n12:=StrToInt(CGC[12]);
 d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=CGC[13]+CGC[14];
 if calculado=digitado then
   ValidaCGC:=true
  else
   ValidaCGC:=false;
end;

function ValidaCPF(CPF: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(CPF[1]);
 n2:=StrToInt(CPF[2]);
 n3:=StrToInt(CPF[3]);
 n4:=StrToInt(CPF[4]);
 n5:=StrToInt(CPF[5]);
 n6:=StrToInt(CPF[6]);
 n7:=StrToInt(CPF[7]);
 n8:=StrToInt(CPF[8]);
 n9:=StrToInt(CPF[9]);
 d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=InTtoStr(d1)+InTtoStr(d2);
 digitado:=CPF[10]+CPF[11];
 if calculado=digitado then
   ValidaCPF:=true
  else
   ValidaCPF:=false;
end;

procedure LancaMovimentacaoTesouraria(Empresa,Terminal,Numerario,OperacaoTes : Integer;Valor : Double;Historico, IDContaPagar, IDContaReceber, IDCheque, IDFechaCaixa : String; DataMovimento : TDateTime; DocOrigem: String ; PlanoContas : String);
var
  Tesouraria,Operacao,SQLGeral : TRxQuery;
  ProximoCodigo : Double;
  IDTesouraria : String;
begin
  Tesouraria := TRxQuery.Create(DM);
  Tesouraria.DatabaseName := 'DB';
  SQLGeral   := TRxQuery.Create(DM);
  SQLGeral.DatabaseName := 'DB';
  Operacao   := TRxQuery.Create(DM);
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
          IDTesouraria := FormatFloat('000',Empresa) + FormatFloat('000',Terminal) + FormatFloat('000000',ProximoCodigo);
          IDTesouraria := IDTesouraria + DigitVerifEAN(IDTesouraria);
          Tesouraria.SQL.Add('"' + IDTesouraria + '"' + ', '); //ID
          Tesouraria.SQL.Add(IntToStr(Empresa)+ ', ');//EMPRESA
          Tesouraria.SQL.Add(IntToStr(Terminal)+ ', ');//TERMINAL
          Tesouraria.SQL.Add(FloatToStr(ProximoCodigo) + ', ');//CODIGO
          Tesouraria.SQL.Add('"' + FormatDateTime('mm/dd/yyyy',DataMovimento)+ '"' + ' , ');//DATA MOV
          Case Operacao.FindField('OPTECDEBCRED').AsString[1] of
            'D' : begin
                    Tesouraria.SQL.Add(ConvFloatToStr(Valor) + ', '); //DEBITO
                    Tesouraria.SQL.Add('0, ');//CREDITO
                  end;
            'C' : begin
                    Tesouraria.SQL.Add('0, ');//DEBITO
                    Tesouraria.SQL.Add(ConvFloatToStr(Valor) + ', ');//CREDITO
                  end;
          end;
          Tesouraria.SQL.Add(IntToStr(Numerario)+ ', ');//NUMERARIO
          Tesouraria.SQL.Add(IntToStr(OperacaoTes)+ ', ');//OPERACAO
          Tesouraria.SQL.Add('"' + Historico + '"' + ', ');//HISTORICO

          if IDContaReceber <> '' then
            Tesouraria.SQL.Add('"' + IDContaReceber + '"' + ', ')
          else
            Tesouraria.SQL.Add('Null, ');

          if IDContaPagar <> '' then
            Tesouraria.SQL.Add('"' + IDContaPagar + '"' + ', ')
          else
            Tesouraria.SQL.Add('Null, ');

          if IDCheque <> '' then
            Tesouraria.SQL.Add('"' + IDCheque + '"' + ', ')
          else
            Tesouraria.SQL.Add('Null, ');

          if IDFechaCaixa <> '' then
            Tesouraria.SQL.Add('"' + IDFechaCaixa + '"' + ', ')
          else
            Tesouraria.SQL.Add('Null, ');

          Tesouraria.SQL.Add(IntToStr(DM.UsuarioAtual) +', ');

          Tesouraria.SQL.Add('"S" , '); // Pendente
          Tesouraria.SQL.Add('"' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '"  ,'); // Registro

          Tesouraria.SQL.Add('"' + DocOrigem + '"'); //DOCUMENTO ORIGEM
          if PlanoContas <> '' then
            Tesouraria.SQL.Add(', "'+ PlanoContas + '")') //PLANO DE CONTAS
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

procedure AtualizaSaldoContaCorrente(ContaCorrente : Integer; ValorDebito,ValorCredito : Double);
var
  SqlConta : TRxQuery;
  SaldoAtual, NovoSaldo : Double;
begin
  SaldoAtual := 0;
  NovoSaldo  := 0;
  SqlConta := TRxQuery.Create(DM);
  SqlConta.DatabaseName := 'DB';
  SqlConta.Close;
  SqlConta.SQL.Clear;
  SqlConta.SQL.Add('SELECT CTCRN2SALDOATUAL FROM CONTACORRENTE where CTCRICOD = '+ IntToStr(ContaCorrente));
  SqlConta.Open;
  if not SqlConta.IsEmpty then
    begin
      SaldoAtual := SqlConta.FindField('CTCRN2SALDOATUAL').AsFloat;
      if ValorDebito > 0 then
        begin
          NovoSaldo := SaldoAtual - ValorDebito;
          SqlConta.Close;
          SqlConta.SQL.Clear;
          SqlConta.SQL.Add('UPDATE CONTACORRENTE SET CTCRN2SALDOATUAL = ' + ConvFloatToStr(NovoSaldo) + ' , CTCRDULTALTSALDO = "' + FormatDateTime('mm/dd/yyyy',Now) + '" , Pendente="S"');
          SqlConta.SQL.Add('WHERE CTCRICOD = ' + IntToStr(ContaCorrente));
          SqlConta.ExecSQL;
        end
      else
        begin
          NovoSaldo := SaldoAtual + ValorCredito;
          SqlConta.Close;
          SqlConta.SQL.Clear;
          SqlConta.SQL.Add('UPDATE CONTACORRENTE SET CTCRN2SALDOATUAL = ' + ConvFloatToStr(NovoSaldo) + ' , CTCRDULTALTSALDO = "' + FormatDateTime('mm/dd/yyyy',Now) + '", Pendente="S"');
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

Function DigitVerifEAN(Cod:string) : string ;
Var Digito     : string[1] ;
    DAux       : Double ;
    Par,
    Impar : Integer ;
    Str_Aux : string ;
begin
  DigitVerifEAN := '' ;

  {***********  CODIGO REDUZIDO DE PRODUTOS ***********}
  if Length(Cod) = 3 Then
  begin
    Impar := StrtoInt(Copy(Cod,1,1)) +
             StrtoInt(Copy(Cod,3,1)) ;

    Par := StrtoInt(Copy(Cod,2,1)) ;

    DAux := (Par*3) + Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN8 ***********}
  if Length(Cod) = 7 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  EAN13 ***********}
  if Length(Cod) = 12 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Par*3)+Impar ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;

  {***********  DUN14 ***********}
  if Length(Cod) = 13 Then
  begin
    Impar := StrtoInt(Copy(Cod,01,1)) +
             StrtoInt(Copy(Cod,03,1)) +
             StrtoInt(Copy(Cod,05,1)) +
             StrtoInt(Copy(Cod,07,1)) +
             StrtoInt(Copy(Cod,09,1)) +
             StrtoInt(Copy(Cod,11,1)) +
             StrtoInt(Copy(Cod,13,1)) ;

    Par := StrtoInt(Copy(Cod,02,1)) +
           StrtoInt(Copy(Cod,04,1)) +
           StrtoInt(Copy(Cod,06,1)) +
           StrtoInt(Copy(Cod,08,1)) +
           StrtoInt(Copy(Cod,10,1))+
           StrtoInt(Copy(Cod,12,1)) ;

    DAux := (Impar*3)+Par ;
    DAux := DAux / 10 ;
    Str_Aux := FloatToStr(DAux) ;
    if Pos(',', Str_Aux) > 0 then
    begin
      Digito := Copy(Str_Aux, Pos(',', Str_Aux)+1,1) ;
      Digito := floattostr(10 - strtofloat(Digito)) ;
    end
    else
      Digito := '0' ;

    DigitVerifEAN := Digito ;
  end ;
end ;


procedure LancaMovimentacaoBanco(Empresa,ContaCorrente,Operacao,NroCheque : integer;ValorMov:Double; BomPara, DtBaixa, DtMovimento:TDateTime; Historico,Favorecido, IDContasReceber, IDContasPagar, IDChqEmitido, IDPlanoContas : String);
var
  SQLConta,SQLOperacao,SQLLancamento,SQLGeral : TRxQuery;
  ProximoCodigo : Double;
  IDMovBanco : String;
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
          IDMovBanco := FormatFloat('000',Empresa) ;
          IDMovBanco := IDMovBanco + FormatFloat('000000000',ProximoCodigo);
          IDMovBanco := IDMovBanco + DigitVerifEAN(IDMovBanco);
          SQLLancamento.SQL.Add('"' + IDMovBanco + '"'+',');
          SQLLancamento.SQL.Add(IntToStr(Empresa)+', ');
          SQLLancamento.SQL.Add(FloatToStr(ProximoCodigo)+', ');
          SQLLancamento.SQL.Add('"' + FormatDateTime('mm/dd/yyyy',DtMovimento)+'"'+ ', '); // Lancamento
          SQLLancamento.SQL.Add(SQLConta.FindField('BANCA5COD').AsString + ', ');
          SQLLancamento.SQL.Add(IntToStr(ContaCorrente) + ', ');
          if NroCheque > 0 then
            SQLLancamento.SQL.Add('"' + IntToStr(NroCheque)+'"'+', ')
          else
            SQLLancamento.SQL.Add('Null, ');
          Case SQLOperacao.FindField('OPBCCTIPO').AsString[1] of
            'D' : begin
                    SQLLancamento.SQL.Add(ConvFloatToStr(ValorMov) + ', ');//ValorDebito
                    SQLLancamento.SQL.Add('0, ');//ValorCredito
                  end;
            'C' : begin
                    SQLLancamento.SQL.Add('0, ');//ValorDebito
                    SQLLancamento.SQL.Add(ConvFloatToStr(ValorMov)+', ');//ValorCredito
                  end;
          end;

          if BomPara > 0 then
            SQLLancamento.SQL.Add('"' + FormatDateTime('mm/dd/yyyy',BomPara)+'"'+ ', ')
          else
            SQLLancamento.SQL.Add('Null, ');

          if DtBaixa > 0 then
            SQLLancamento.SQL.Add('"' + FormatDateTime('mm/dd/yyyy',DtBaixa)+'"'+ ', ')
          else
            SQLLancamento.SQL.Add('Null, ');

          if Historico <> '' then
            SQLLancamento.SQL.Add('"'+Historico +'"'+', ')
          else
            SQLLancamento.SQL.Add('Null, ');

          if Favorecido <> '' then
            SQLLancamento.SQL.Add('"'+Favorecido +'"'+', ')
          else
            SQLLancamento.SQL.Add('Null, ');

          SQLLancamento.SQL.Add(IntToStr(Operacao)+ ', ');

          if IDContasReceber <> '' then
            SQLLancamento.SQL.Add('"' + IDContasReceber + '" ,')
          else
            SQLLancamento.SQL.Add('Null ,');

          if IDContasPagar <> '' then
            SQLLancamento.SQL.Add('"' + IDContasPagar + '" ,')
          else
            SQLLancamento.SQL.Add('Null ,');

          if IDChqEmitido <> '' then
            SQLLancamento.SQL.Add('"' + IDChqEmitido + '" ,')
          else
            SQLLancamento.SQL.Add('Null ,');

          SQLLancamento.SQL.Add('"S", ');
          SQLLancamento.SQL.Add('"' + FormatDateTime('mm/dd/yyyy hh:nn:ss',Now)+'" ,');

          if IDPlanoContas <> '' then
            SQLLancamento.SQL.Add('"' + IDPlanoContas + '"' + ' )')
          else
            SQLLancamento.SQL.Add('NULL )');

          SQLLancamento.ExecSQL;
//          Dm.DB.Commit;
          Case SQLOperacao.FindField('OPBCCTIPO').AsString[1] of
            'D' : begin
                    AtualizaSaldoContaCorrente(ContaCorrente,ValorMov,0);
                  end;
            'C' : begin
                    AtualizaSaldoContaCorrente(ContaCorrente,0,ValorMov);
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

function ConvFloatToStr(Numero : Double) : string ;
var
  Wstr : string ;
begin
  ConvFloatToStr := '0.00' ;
  if Numero <> null then
  begin
    Wstr := FloatToStr(Numero) ;
    ConvFloatToStr := Wstr ;
    if Pos(',', Wstr) > 0 then
      ConvFloatToStr := Copy(Wstr, 1, Pos(',', Wstr)-1) + '.' + Copy(Wstr, Pos(',', Wstr)+1, 3)
  end
  else ConvFloatToStr := '0.00' ;
end ;

function TiraPontoMilhar(Numero : Double) : Double ;
var
  Wstr : string ;
  WNum : Double ;
begin
  TiraPontoMilhar := 0.00 ;
  if Numero <> null then
  begin
    {Wstr := FloatToStr(Numero) ;
    Delete(WStr, 1,Pos('.', Wstr)) ;}
    WNum := StrToFloat(FloatToStr(Numero)) ;
    TiraPontoMilhar := WNum ;
  end ;
end ;

procedure InformaErro(Texto:string; Abortar: Boolean; SetarFoco: TWinControl) ;
begin
  Application.MessageBox(PChar(Texto), PChar('Erro ' + Application.Title), MB_SYSTEMMODAL + MB_Ok + MB_ICONINFORMATION + MB_SETFOREGROUND);
  if SetarFoco <> nil then
    SetarFoco.SetFocus;
  if Abortar then
    Abort;
end ;

function Pergunta(BotaoDefault, Texto:string) : boolean ;
begin
  if AnsiUpperCase(BotaoDefault) = 'SIM' then
  begin
    if Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON1) = IdYes then
      Pergunta := true
    else
      Pergunta := false ;
  end
  else
    if Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_YesNo + MB_IconQuestion + MB_DEFBUTTON2) = IdYes then
      Pergunta := true
    else
      Pergunta := false ;
end ;

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

procedure AtualizaTotaisCabecalhoContasPagar(NroDocumento : string) ;
var
  PAGAN2VLRRECTO,
  PAGAN2VLRJURO,
  PAGAN2DESC,
  PAGAN2VLRMULTA : double ;
  DATAULTPAG     : TDateTime ;
begin
  PAGAN2VLRRECTO := 0 ;
  PAGAN2VLRJURO  := 0 ;
  PAGAN2DESC     := 0 ;
  PAGAN2VLRMULTA := 0 ;
  DATAULTPAG     := 0 ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select sum(PAGAN3VLRPAGTO) AS RECTO,') ;
  DM.SQLTemplate.SQL.Add('sum(PAGAN3VLRJURO) AS JURO,') ;
  DM.SQLTemplate.SQL.Add('sum(PAGAN3VLRDESC) AS DESCO,') ;
  DM.SQLTemplate.SQL.Add('sum(PAGAN3VLRMULTA) AS MULTA from PAGAMENTO') ;
  DM.SQLTemplate.SQL.Add('where CTPGA13ID = "' + NroDocumento + '"') ;
  DM.SQLTemplate.SQL.Add('group by CTPGA13ID') ;
  DM.SQLTemplate.Open ;
  if not DM.SQLTemplate.EOF then
  begin
    PAGAN2VLRRECTO := DM.SQLTemplate.FieldByName('RECTO').Value ;
    PAGAN2VLRJURO  := DM.SQLTemplate.FieldByName('JURO').Value ;
    PAGAN2DESC     := DM.SQLTemplate.FieldByName('DESCO').Value ;
    PAGAN2VLRMULTA := DM.SQLTemplate.FieldByName('MULTA').Value ;

    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select PAGADPAGTO from PAGAMENTO') ;
    DM.SQLTemplate.SQL.Add('where CTPGA13ID = "' + NroDocumento + '"') ;
    DM.SQLTemplate.SQL.Add('order by PAGADPAGTO') ;
    DM.SQLTemplate.Open ;
    DM.SQLTemplate.Last ;
    DATAULTPAG := DM.SQLTemplate.FieldByName('PAGADPAGTO').Value ;
  end ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('update CONTASPAGAR') ;
  DM.SQLTemplate.SQL.Add('set') ;
  if DATAULTPAG > 0 then
    DM.SQLTemplate.SQL.Add('CTPGDULTPAGTO = "'  + FormatDateTime('mm/dd/yyyy', DATAULTPAG) + '", ')
  else
    DM.SQLTemplate.SQL.Add('CTPGDULTPAGTO = Null, ') ;
  DM.SQLTemplate.SQL.Add('CTPGN2TOTPAG = ' + ConvFloatToStr(PAGAN2VLRRECTO) + ', ') ;
  DM.SQLTemplate.SQL.Add('CTPGN3JUROPAGTO = ' + ConvFloatToStr(PAGAN2VLRJURO)  + ', ') ;
  DM.SQLTemplate.SQL.Add('CTPGN3MULTAPAGTO = ' + ConvFloatToStr(PAGAN2VLRMULTA) + ', ') ;
  DM.SQLTemplate.SQL.Add('CTPGN3DESCPAGTO = ' + ConvFloatToStr(PAGAN2DESC) + ', ') ;
  DM.SQLTemplate.SQL.Add('REGISTRO = "' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '", ') ;
  DM.SQLTemplate.SQL.Add('PENDENTE = "S"') ;
  DM.SQLTemplate.SQL.Add('where CTPGA13ID = "' + NroDocumento + '"') ;
  DM.SQLTemplate.ExecSQL ;
end ;

function AutenticaUsuario(UserNameDefault, CAMPO : String; var InfoRetorno:TInfoRetornoUser) : String;
var
  SQLUsuario : TQuery;
  UserName :String;
  Password : String;
  ContUser : Integer;
  UsuarioOK, SenhaOK : Boolean;
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
      FormTelaAutenticaUsuario.ShowModal ;
      if (FormTelaAutenticaUsuario.ModalResult = MrOK) and (FormTelaAutenticaUsuario.EditSenha.Text<>'') then
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
      SQLUsuario.SQL.Add('SELECT * FROM USUARIO WHERE USUAA5SENHA = ' + '"' + UpperCase(Password) + '"');
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
              SenhaOK  := True;
              ContUser := 3;
            end;
        end;
    end;
    if not SQLUsuario.IsEmpty then
      begin
        AutenticaUsuario                   := SQLUsuario.FieldByName(CAMPO).AsString;
        InfoRetorno.CampoRetorno           := SQLUsuario.FieldByName(CAMPO).FieldName;
        InfoRetorno.CodUsuarioAutenticado  := SQLUsuario.FieldByName('USUAICOD').AsInteger;
        InfoRetorno.NomeUsuarioAutenticado := SQLUsuario.FieldByName('USUAA60LOGIN').AsString;
        InfoRetorno.ModalResult            := MrOk;
      end;
  SQLUsuario.Destroy;
  CodUsuarioAutorizouOperacao := InfoRetorno.CodUsuarioAutenticado;
  UsuarioAutorizouOperacao    := InfoRetorno.NomeUsuarioAutenticado;
  Password := '';
  ContUser := 0;
end;

procedure Informa(Texto:string) ;
begin
  Application.MessageBox(PChar(Texto), PChar(Application.Title), MB_SYSTEMMODAL + MB_Ok + MB_ICONINFORMATION + MB_SETFOREGROUND);
end ;

function SQLLocate(Tabela, CampoProcura, CampoRetorno, ValorFind : string) : string ;
var
  MyQuery : TQuery ;
begin
  if ValorFind <> '' then
  begin
    MyQuery := TQuery.Create(DM);
    if DM.DataBaseName = '' then
      MyQuery.DatabaseName := 'DB'
    else
      MyQuery.DatabaseName := DM.DataBaseName;
    MyQuery.Close ;
    MyQuery.SQL.Clear ;
    MyQuery.SQL.Add('select ' + CampoRetorno + ' from ' + Tabela) ;
    MyQuery.SQL.Add('where  ' + CampoProcura + ' = ' + ValorFind) ;
    MyQuery.Open ;
    if not MyQuery.EOF then
      SQLLocate := MyQuery.FieldByName(CampoRetorno).AsString
    else
      SQLLocate := '' ;
    MyQuery.Destroy ;
  end
  else
    ValorFind := '' ;
end ;

function RetornarNomeComputador : String ;
var
  Texto : TextFile;
  Registro : TRegistry ;
  IniFile  : TIniFile ;
  Str, Info : string ;
begin
  Registro := TRegistry.Create ;
  try
    Registro.RootKey := HKEY_LOCAL_MACHINE ;
    Registro.Openkey('System\CurrentControlSet\Services\VXD\VNETSUP', false) ;
    Result := Registro.Readstring('ComputerName') ;
    if Result = '' then
      begin
        Registro.RootKey := HKEY_LOCAL_MACHINE ;
        Registro.Openkey('SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName', false) ;
        Result := Registro.Readstring('ComputerName') ;
      end;
    if (Result = '') and FileExists('Terminal.txt') then
    begin
      AssignFile(Texto,'Terminal.txt');
      Reset(Texto);
      Readln(Texto,Info);
      CloseFile(Texto);
      Result := Info;
    end ;
  except
    ShowMessage('Não foi possível encontrar o nome do computador! Por favor entre em contato com o suporte!');
  end;
end;

end.
