unit Urano_LoggerII;

interface

uses RXCtrls, RxQuery, Forms, DBTables, SysUtils, Dialogs, Windows, Variants, Classes ;

  function  AbrirPortaECF_Urano_LoggerII(Porta:String) : Boolean;
  function  FecharPortaECF_Urano_LoggerII() : boolean ;
  function  EmiteLeituraX_Urano_LoggerII: boolean ;
  function  EmiteReducaoZ_Urano_LoggerII: boolean;
  function  AbreGaveta_Urano_LoggerII(nPorta: integer; strTempo: string): integer;
  function  AbrirCupomFiscal_Urano_LoggerII(Var NroCupom : String) : boolean ;
  function  ImprimeItem_Urano_LoggerII(Codigo, Descricao, Tributo, Unidade : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
  function  EfetuaFPCupom_Urano_LoggerII(FPNum:String;Valor : Double; Acumula : Boolean) : boolean ;
  function  FecharCupomFiscal_Urano_LoggerII(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : boolean ;
  function  CancelaCupom_Urano_LoggerII(nPorta: integer; strOperador: string): boolean;
  function  CancelaItemFiscal_Urano_LoggerII(nPorta: integer; strNumItem: string; strQuantidade: string): boolean;
  function  LeInteiro(nPorta: integer; strNomeInteiro: string; var strRetorno: string): integer;
  function  Retorna(nPorta:integer; nInd: longint; var strNomeRetorno: string; var nTamNome: integer; var strValorRetorno: string; var nTamValor: integer): integer;
  function  ObtemCodErro(nPorta:integer): integer;
  Function  VerificaErro( lRetorno: Longint; var lCodErro: Longint): Boolean;


  // Funcoes da DLL Urano Logger II
  Function DLLG2_Retorno(Porta : Integer; Indice : Integer; NomeRetorno : String; TamNomeRetorno : Integer; ValorRetorno : String; TamValorRetorno : Integer) : Integer; stdcall; external 'dllg2.dll';
  function DLLG2_IniciaDriver(Canal: String): Integer; stdcall; external 'DllG2.dll';
  function DLLG2_EncerraDriver(Handle: Integer): Integer; stdcall; external 'DllG2.dll';
  Procedure DLLG2_LimpaParams(Porta : Integer) stdcall; external 'dllg2.dll';
  Procedure DLLG2_AdicionaParam(Porta : Integer; NomeParametro : String; ValorParametro : String; TipoParametro : Integer) stdcall; external 'dllg2.dll';
  Function DLLG2_ListaParams(Porta : Integer; ListaParametros : String; TamListaParametros : Integer) : pchar; stdcall; external 'dllg2.dll';
  Function DLLG2_LeRegistrador(Porta : Integer; NomeRegistrador : String; NomeComando : String; TamNomeComando : Integer) : Integer; stdcall; external 'dllg2.dll';
  Function DLLG2_ExecutaComando(Porta : Integer; Comando : String) : Integer; stdcall; external 'dllg2.dll';
  Function DLLG2_ObtemCodErro(Porta : Integer) : Integer; stdcall; external 'dllg2.dll';
  Function DLLG2_ObtemNomeErro(Porta : integer; NomeErro : String; TamNomeErro : Integer) : pchar; stdcall; external 'dllg2.dll';
  Function DLLG2_ConfiguraDriver(Porta : Integer; Velocidade : Integer) : Integer; stdcall; external 'DllG2.dll';

  // Outras Funcoes
  procedure MostraErro(Erro:Integer);
  function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
  function  TiraPontoVirgula(Numero : String) : string ;

  const
    MIT = 1; //Equipamento em Intervenção Técnica.
    SEM_MFD = 2; // MFD não encontrada.
    RAM_NOK = 4; // RAM não está consistente.
    RELOGIO_NOK = 8; // Relógio inconsistente.
    SEM_MF = 16; // Memória fiscal não encontrada.
    DIA_FECHADO = 32; // Dia fiscal já encerrado.
    DIA_ABERTO = 64; // Dia aberto.
    Z_PENDENTE = 128; // Redução Z pendente.
    SEM_PAPEL = 256; // Sem papel na estação de cupom fiscal.
    MECANISMO_NOK = 512; // Mecanismo impressor não configurado.
    DOCUMENTO_ABERTO = 1024; // Documento em emissão não foi encerrado.
    INSCRICOES_OK = 2048; // Inscrições carregadas.
    CLICHE_OK = 4096; // Clichê carregado.
    EM_LINHA = 8192; // Equipamento está em linha.
    MFD_ESGOTADA = 16384;// MFD esgotada

    tpIndicador = 0; //Bool
    tpData = 2;
    tpHora = 3;
    tpInteiro = 4;
    tpLong = 5;
    tpMonetario = 6; //Money
    tpString = 7;
    tpInteiroSemSinal = 9;
    tpLongSemSinal = 10;

  type
    tipo_parametro = Record
    Nome : string;
    Conteudo : string;
    Tipo : integer;
  end;

implementation

uses UnitLibrary, DataModulo, DB;
var
  Retorno : Integer;

function IsEmpty( str: string): boolean;
begin
  result := true;
  if( str <> '') then
    result := false;
end;

function Executa(nPorta: integer; strComando: string; aParametros: array of tipo_parametro): integer;
var
  nLin  : integer;
  lCodErro : Longint;
begin
  DLLG2_LimpaParams(nPorta);
  for nLin:= 0 to High(aParametros) do
  begin
    if(not IsEmpty(aParametros[nLin].Conteudo)) then
      DLLG2_AdicionaParam(nPorta, aParametros[nLin].Nome, aParametros[nLin].Conteudo, Integer(aParametros[nLin].Tipo));
  end;
  If strComando <> '' then
  begin
    VerificaErro(DLLG2_ExecutaComando(nPorta, strComando),lCodErro);
    result := lCodErro;
  end;
end;



function ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
var Valor : string ;
begin
  Valor := FormatFloat('#,##0.00', Numero);
  if Pos(',', Valor) > 0 then
    Delete(Valor, Pos(',', Valor), 1);
  if Pos('.',Valor) > 0 then
    Delete(Valor, Pos('.', Valor), 1);
  if tam > 0 then
    ConvFloatToStrECF := Zeros(Valor, Tam, 'Dir')
  else
    ConvFloatToStrECF := Valor;
end ;

function TiraPontoVirgula(Numero : String) : string ;
var Valor : string ;
begin
  Valor := Numero;
  if Pos(',', Valor) > 0 then
    Delete(Valor, Pos(',', Valor), 1);
  if Pos('.',Valor) > 0 then
    Delete(Valor, Pos('.', Valor), 1);

  TiraPontoVirgula := Valor;
end ;

procedure MostraErro(Erro:Integer);
var
  Msg : String;
begin
  Msg := '';
  case erro of
    1  : Msg := 'DLL já inicializada';
    2  : Msg := 'DLL não inicializada';
    3  : Msg := 'Falha no acesso a porta serial';
    4  : Msg := 'Falha na configuração da porta serial';
    5  : Msg := 'Porta serial não inicializada';
    6  : Msg := 'Falha na transmissão: outra transmissão em andamento.';
    7  : Msg := 'Tamanho do comando muito grande para a DLL';
    8  : Msg := 'Impressora fora de linha, desligada ou desconectada.';
    9  : Msg := 'Falha geral na transmissão do comando.';
    10 : Msg := 'Timeout na recepção da resposta da impressora.';
    11 : Msg := 'Falha geral na recepção da resposta.';
    12 : Msg := 'Falha no acesso aos buffers internos da porta serial';
    13 : Msg := 'Erro de Frame na comunicação';
    14 : Msg := 'Erro de OverRun na comunicação';
    15 : Msg := 'Break Detectado na comunicação';
    16 : Msg := 'Erro de acesso a porta serial durante a recepção';
    17 : Msg := 'Tamanho do buffer de recepção da porta serial insuficiente para recepção dos dados.';
    18 : Msg := 'Erro de paridade na comunicação';
    19 : Msg := 'Tamanho do buffer de transmissão da porta serial insuficiente para comunicação.';
    20 : Msg := 'Falha no acesso ao arquivo de leitura da memória fiscal';
    33 : Msg := 'Comando executado com sucesso.';
 else
   if Erro <> 0 then
     Msg := 'Erro Desconhecido: ' + IntToStr(Erro);
 end;
  if Msg <> '' then
    Application.MessageBox(Pchar(MSG),'Retorno da Impressora Fiscal URANO 1EFC',MB_OK + MB_ICONERROR + MB_SYSTEMMODAL + MB_SETFOREGROUND);

end;

function  AbrirPortaECF_Urano_LoggerII(Porta:String) : Boolean;
begin
  AbrirPortaECF_Urano_LoggerII := False;

  retorno := -1;
  Retorno :=  DLLG2_IniciaDriver(PortaECFAtual);

  if Retorno = 0 then
  begin
      Retorno := DLLG2_ConfiguraDriver(Retorno,115200);
      AbrirPortaECF_Urano_LoggerII := True;
  end
  else
    AbrirPortaECF_Urano_LoggerII := False;

end;

function  FecharPortaECF_Urano_LoggerII() : boolean ;
begin
  FecharPortaECF_Urano_LoggerII := False;
  Retorno := DLLG2_EncerraDriver(Retorno);
  if Retorno in [1,33] then
    FecharPortaECF_Urano_LoggerII := True;
end;

function  AbrirCupomFiscal_Urano_LoggerII(Var NroCupom : String) : boolean ;
Var nECF:String;
begin
  DLLG2_LimpaParams(0);
  DLLG2_AdicionaParam(0,  'NomeConsumidor', '', 7);
  Retorno := DLLG2_ExecutaComando(0, 'AbreCupomFiscal');
  // Le retorno e pega o nro do cupom
  if Retorno > 0 then
    begin
      AbrirCupomFiscal_Urano_LoggerII := True;
      IntToStr(LeInteiro(0,'COO', nECF));
      NroCupom := nECF;
    end
  else
    AbrirCupomFiscal_Urano_LoggerII := False;
end;

function  ImprimeItem_Urano_LoggerII(Codigo, Descricao, Tributo, Unidade : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
var lCodErro : Longint;
begin

  DLLG2_LimpaParams(0);
  DLLG2_AdicionaParam(0, 'CodAliquota', Tributo, 4);
  DLLG2_AdicionaParam(0, 'CodProduto', Codigo, 7);
  DLLG2_AdicionaParam(0, 'NomeProduto', Descricao, 7);
  DLLG2_AdicionaParam(0, 'PrecoUnitario', FormatFloat('#,##0.00',Valor), 6);//TiraPontoVirgula(FormatFloat('#,##0.00',Valor)), 6);
  DLLG2_AdicionaParam(0, 'Quantidade', FormatFloat('#,###0.000', Qtde), 6);
  DLLG2_AdicionaParam(0, 'Unidade', Unidade, 7);
  VerificaErro(DLLG2_ExecutaComando(0, 'VendeItem'),lCodErro);
  if lCodErro = 0 then
    ImprimeItem_Urano_LoggerII := True
  else
    ImprimeItem_Urano_LoggerII := False;

end;

Function VerificaErro( lRetorno: Longint; var lCodErro: Longint): Boolean;
begin
    VerificaErro := False;
    lCodErro := 0;
    If (lRetorno > 0) Then
    begin
      lCodErro := ObtemCodErro(0);
      if(lCodErro > 0) then
        VerificaErro := True;
    End;
end;



function EmiteLeituraX_Urano_LoggerII: boolean ;
begin
  Retorno := DLLG2_ExecutaComando(0, 'EmiteLeituraX');
  if(Retorno>0) then
    EmiteLeituraX_Urano_LoggerII := True
  else
    EmiteLeituraX_Urano_LoggerII := False;
end;

function EmiteReducaoZ_Urano_LoggerII: boolean;
begin
  Retorno := DLLG2_ExecutaComando(0, 'EmiteReducaoZ');
  if(Retorno>0) then
    EmiteReducaoZ_Urano_LoggerII := True
  else
    EmiteReducaoZ_Urano_LoggerII := False;
end;

function  AbreGaveta_Urano_LoggerII(nPorta: integer; strTempo: string): integer;
var
  aValorParam : array[0..0] of tipo_parametro;
begin
  aValorParam[0].Nome:= 'TempoAcionamentoGaveta'; aValorParam[0].Conteudo:= strTempo; aValorParam[0].Tipo:= tpInteiro;
  result := Executa(nPorta, 'AbreGaveta', aValorParam);
end;

function LeInteiro(nPorta: integer; strNomeInteiro: string; var strRetorno: string): integer;
var
  aValorParam : array[0..0] of tipo_parametro;
  nRet, nTamNome, nTamRet : integer;
  strNomeRetorno : string;
begin
  aValorParam[0].Nome:= 'NomeInteiro'; aValorParam[0].Conteudo:= strNomeInteiro; aValorParam[0].Tipo:= tpString;
  nTamRet := 20;
  strRetorno := StringofChar('0', nTamRet);
  strNomeRetorno := 'ValorInteiro';
  nRet := Executa(nPorta, 'LeInteiro', aValorParam);
  if(nRet=0) then
    nRet := Retorna(nPorta, 0, strNomeRetorno, nTamNome, strRetorno, nTamRet);
  Result := nRet
end;


// Cancela Cupom
function CancelaCupom_Urano_LoggerII(nPorta: integer; strOperador: string): boolean;
var
  aValorParam : array[0..0] of tipo_parametro;
begin
  aValorParam[0].Nome:= 'Operador';         aValorParam[0].Conteudo:= strOperador; aValorParam[0].Tipo:= tpString;
  retorno := Executa(0, 'CancelaCupom', aValorParam);
  if retorno = 0 then
    CancelaCupom_Urano_LoggerII := True
  else
    CancelaCupom_Urano_LoggerII := False;

end;

// Cancela Item Fiscal
function CancelaItemFiscal_Urano_LoggerII(nPorta: integer; strNumItem: string; strQuantidade: string): boolean;
var
  aValorParam : array[0..1] of tipo_parametro;
begin
  aValorParam[0].Nome:= 'NumItem';    aValorParam[0].Conteudo:= strNumItem;    aValorParam[0].Tipo:= tpInteiro;
  aValorParam[1].Nome:= 'Quantidade'; aValorParam[1].Conteudo:= strQuantidade; aValorParam[1].Tipo:= tpMonetario;
  retorno := Executa(0, 'CancelaItemFiscal', aValorParam);
  if retorno > 0 then
    CancelaItemFiscal_Urano_LoggerII := True
  else
    CancelaItemFiscal_Urano_LoggerII := False;
end;

function  EfetuaFPCupom_Urano_LoggerII(FPNum:String;Valor : Double; Acumula : Boolean) : boolean ;
var StrValor: String;
begin
  StrValor := FormatFloat(',0.00', Valor);
  DLLG2_LimpaParams(0);
  DLLG2_AdicionaParam(0, 'CodMeioPagamento', FPNum, 4);
  DLLG2_AdicionaParam(0, 'NomeMeioPagamento', RetornaNumerario(FPNum), 7);
//  DLLG2_AdicionaParam(0, 'Valor', ConvFloatToStrECF(Valor,0), 6);
  DLLG2_AdicionaParam(0, 'Valor', StrValor, 6);
  DLLG2_ExecutaComando(0, 'PagaCupom');
end;

function  FecharCupomFiscal_Urano_LoggerII(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : boolean ;
var
  MsgFimCupom,
  AcrescDesc : string ;
  TotalVista,
  TotalPrazo : double ;
  I : Integer;
begin
  //TOTALIZAR CUPOM
  //CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
  begin
    TotalPrazo :=  TotalPrazo + SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat ;
    SQLFPPrazo.Next
  end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First ;
  while not SQLFPVista.EOF do
  begin
    EfetuaFPCupom_Urano_LoggerII(RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPVista.Fieldbyname('NUMEICOD').AsString),
                                 SQLFPVista.Fieldbyname('VALORPARC').AsFloat, False);

    TotalVista := TotalVista + SQLFPVista.Fieldbyname('VALORPARC').AsFloat ;
    SQLFPVista.Next ;
  end ;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
  begin
    if (SQLFPPrazo.Fieldbyname('TIPOPADR').AsString = 'CRD') or (SQLFPPrazo.Fieldbyname('TIPOPADR').AsString = 'CRTF') or
    (SQLFPPrazo.Fieldbyname('TIPOPADR').AsString = 'CRT') then
      EfetuaFPCupom_Urano_LoggerII(RetornaTotalizadorNumerarioECF(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString),
                               TotalPrazo, True)
    else
      EfetuaFPCupom_Urano_LoggerII(RetornaTotalizadorNumerarioECF(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString),
                               TotalPrazo, False);
  end ;

  // Fecha Cupom na ECF
  DLLG2_LimpaParams(0);
  DLLG2_AdicionaParam(0, 'Operador', UsuarioAtualNome, 7);
  DLLG2_AdicionaParam(0, 'TextoPromocional', 'Obrigado! Volte Sempre!', 7);
  Retorno := DLLG2_ExecutaComando(0, 'EncerraDocumento');

  if Retorno > 0 then
    FecharCupomFiscal_Urano_LoggerII := True
  else
    FecharCupomFiscal_Urano_LoggerII := False;
end;

// Retorno
function Retorna(nPorta:integer; nInd: longint; var strNomeRetorno: string;
                                                var nTamNome: integer;
                                                var strValorRetorno: string;
                                                var nTamValor: integer): integer;
var nRet : integer;
begin
  VerificaErro(DLLG2_Retorno(nPorta, nInd, strNomeRetorno, nTamNome, strValorRetorno, nTamValor),nRet);
  if(nRet>0) then
    result := nRet
  else
    result := 0;
end;

// ObtemCodErro
function ObtemCodErro(nPorta:integer): integer;
begin
  result := DLLG2_ObtemCodErro(nPorta);
end;


end.
