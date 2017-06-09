unit Schalter_SCF_ECF;

interface
  uses Dialogs, SysUtils, RxQuery , ShellApi, Windows,Forms,RXCtrls;

  function Erros_Schalter(NumErro : integer) : string ;
  function AbrirPorta_SCHALTER_SCR_ECF(Porta : String) : Boolean;
  function AbreCupom_SCHALTER_SCR_ECF : Boolean;
  function ImprimeItem_SCHALTER_SCF_ECF(NUMITEM,CODIGO,DESCRICAO,TRIBUTO,UNIDADE:String;QTDE,VALOR,PERCDESC,VLRDESCO,NumDecQuant:Double) : Boolean;
  function CancelarItem_SCHALTER_SCF_ECF(Item: Integer;Descricao : String) : Boolean;
  function CancelarCupom_SCHALTER_SCF_ECF(Tipo:String):Boolean;
  function FecharCupom_SCHALTER_SCF_ECF(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom:string) : boolean ;
  function AbreCupomNFV_SCHALTER_SCR_ECF(CupomVinculado,Ecf_CNFV:String;Valor:Double): Boolean;
  function LinhaTexto_SCHALTER_SCF_ECF(Texto : String) : Boolean;
  function FechaCupomNFV_SCHALTER_SCF_ECF(NroCupom : String) : Boolean;
  function LeituraX_Schalter : Boolean;
  function Reducao_Z_SCHALTER_SCF_ECF : Boolean;
  function RetornoNumeroCupom_SCHALTER_SCF_ECF : String;
  function Autencticacao_SCHALTER_SCF_ECF(Texto : String) : Boolean;
  function PreencheDir(Descricao,Str:String;Tamanho,Posicao:Integer):String ;
  function Preenche( STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
  function ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
//  function ReducaoZ_Schalter : Boolean;
var
StrAux : String;
implementation

uses UnitCheckoutLibrary, UnitLibrary, DataModulo, TelaFechamentoVenda,
  ECFCheckout, DB;

  //FUNCOES DE DLL DA SCHALTER
  function ecfDescItem ( byTipo:integer; szDescr:LPSTR; szValor:LPSTR ): integer;stdcall; external 'dll32phi.dll';
  function ecfAutentica (szLinha: String): integer;stdcall; external 'dll32phi.dll';
  function ecfAbreGaveta : integer;stdcall;external 'dll32phi.dll';
  function ecfImpCab (byEst: integer): integer;stdcall;external 'dll32phi.dll';
  function ecfVenda_Item (szCodigo: LPSTR; szDescricao:LPSTR; szQInteira:LPSTR; szQFracionada:LPSTR; szValor:LPSTR; byTaxa:integer): integer;stdcall; external 'dll32phi.dll';
  function ecfVendaItem78(szDescr: LPSTR; szValor:LPSTR; byTaxa: integer): integer;stdcall; external 'dll32phi.dll';
  function ecfVendaItem3d(szCodigo: LPSTR; szDescricao: LPSTR; szQuantidade: LPSTR; szValor:LPSTR; byTaxa: integer; Unidade:LPSTR; Digitos:LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfLeitMemFisc (byTipo:integer; szDi:LPSTR; szDf:LPSTR; wRi:integer; wRf:integer; archive:LPSTR ): integer;stdcall;external 'dll32phi.dll';
  function ecfPagCancPag (byTipo: integer; szDescr:LPSTR; szValor:LPSTR; byMens:integer;byLmens:integer): integer;stdcall;external 'dll32phi.dll';
  function ecfPagamento (byTipo: integer; szPos:LPSTR; szValor:LPSTR; byLmens:integer): integer;stdcall; external 'dll32phi.dll';
  function ChangePort(chose:integer): integer;stdcall;external 'dll32phi.dll';
  function ecfStatusImp : PChar; stdcall;external 'dll32phi.dll';
  function ecfImpLinha(szLinha: LPSTR): integer;stdcall;external 'dll32phi.dll';
  function ecfInicCupomNFiscal(szTipo: integer): integer;stdcall;external 'dll32phi.dll';
  function ecfStatusCupom(var general_flag: integer): PChar;stdcall;external 'dll32phi.dll';
  function ecfFimTrans(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfCancDoc(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfLeituraX(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfReducaoZ(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfCancAcresDescSubTotal ( byAcres:integer; byTipo:integer; szDescr:LPSTR; szValor:LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfCancItemDef ( szItem : LPSTR; szDescr:LPSTR ): integer;stdcall; external 'dll32phi.dll';
  function ecfRZGerencial(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfLXGerencial(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfCancVenda(operador: LPSTR): integer;stdcall; external 'dll32phi.dll';
  function ecfLineFeed (byEst: integer; wLin:integer): integer;stdcall; external 'dll32phi.dll';
  function ecfInicCNFVinculado(szCOO,szPosTab,szValorOpera : string): integer;stdcall; external 'dll32phi.dll';
  function ecfFimTransVinc(szOperTerm,szVinculados : string): integer;stdcall; external 'dll32phi.dll';
var ErroStr : string ;
Retorno       : integer;
function  Erros_Schalter(NumErro : integer) : string ;
begin
  case NumErro of
    00: ErroStr := 'Comando OK' ;
    01: ErroStr := 'Erro de checksum' ;
    02: ErroStr := 'Timeout RX' ;
    03: ErroStr := 'Memória insuficiente' ;
    04: ErroStr := 'Impressora fora de linha ou desligada' ;
    10: ErroStr := 'Erro de sobreposição' ;
    11: ErroStr := 'Erro de paridade' ;
    12: ErroStr := 'Erro de sobreposição e paridade' ;
    13: ErroStr := 'Erro de formato' ;
    14: ErroStr := 'Erro de sobreposição e formato' ;
    15: ErroStr := 'Erro de paridade e sobreposição' ;
    16: ErroStr := 'Erro de sobreposição, paridade e formato' ;
    20: ErroStr := 'Erro no cadastro de bancos' ;
    21: ErroStr := 'Banco não cadastrado' ;
    22: ErroStr := 'Moeda não cadastrada' ;
    23: ErroStr := 'Extenso excedido' ;
    65: ErroStr := 'Em venda' ;
    66: ErroStr := 'Limite de cabeçalho alcançado' ;
    68: ErroStr := 'Cabeçalho impresso' ;
    69: ErroStr := 'Não começou venda' ;
    70: ErroStr := 'Valor inválido' ;
    73: ErroStr := 'Valor a menor' ;
    74: ErroStr := 'Valor a maior' ;
    78: ErroStr := 'Número máximo de Reduções Z alcançado' ;
    79: ErroStr := 'Erro de comunicação' ;
    80: ErroStr := 'Palavra reservada' ;
    81: ErroStr := 'Papel próximo do fim' ;
    82: ErroStr := 'Data não localizada' ;
    84: ErroStr := 'Erro de memória fiscal' ;
    85: ErroStr := 'Perda da RAM' ;
    86: ErroStr := 'Não houve pagamento' ;
    87: ErroStr := 'Cupom já totalizado' ;
    88: ErroStr := 'Não pode cancelar venda' ;
    89: ErroStr := 'Comando não completo' ;
    90: ErroStr := 'Cupom aberto' ;
    91: ErroStr := 'Não há cupom a cancelar' ;
    92: ErroStr := 'Tabela de taxa não inicializada' ;
    94: ErroStr := 'Seleção de taxa inválida' ;
    95: ErroStr := 'Cancelamento inválido' ;
    96: ErroStr := 'Nada a retificar' ;
    97: ErroStr := 'Redução não localizada' ;
    98: ErroStr := 'Cabeçalho não carregado' ;
    99: ErroStr := 'Impressora em intervenção técnica' ;
    100: ErroStr := 'Impressora em período de venda' ;
    101: ErroStr := 'Somente com intervenção técnica' ;
    102: ErroStr := 'Desconto inválido' ;
    103: ErroStr := 'Limite de linhas alcançado' ;
    104: ErroStr := 'Somente após o total' ;
    105: ErroStr := 'Dados inválidos' ;
    106: ErroStr := 'Alteração de taxa não disponível' ;
    107: ErroStr := 'Comando inválido' ;
    108: ErroStr := 'Não houve o fechamento do dia' ;
    109: ErroStr := 'Erro irrecuperável' ;
    110: ErroStr := 'Alteração inválida' ;
    111: ErroStr := 'Data já alterada' ;
    112: ErroStr := 'Alíquota não carregada' ;
    113: ErroStr := 'Fechamento diário não realizado' ;
    114: ErroStr := 'Abertura do dia inválida' ;
    115: ErroStr := 'Fechamento já realizado' ;
    116: ErroStr := 'Ajuste somente de +/- 1 hora' ;
    117: ErroStr := 'Acréscimo inválido' ;
    118: ErroStr := 'Pagamento incompleto' ;
    121: ErroStr := 'Erro de gravação na memória fiscal' ;
    126: ErroStr := 'Comando fora de seqüência' ;
    127: ErroStr := 'Autenticação sem papel' ;
    132: ErroStr := 'Queda de energia' ;
    133: ErroStr := 'Data inválida' ;
    134: ErroStr := 'Item fora da faixa' ;
    135: ErroStr := 'Item não vendido' ;
    136: ErroStr := 'Parâmetro errado' ;
    137: ErroStr := 'Limite de valor ultrapassado' ;
    138: ErroStr := 'Relógio fora de operação' ;
    139: ErroStr := 'Pagamento não definido' ;
    140: ErroStr := 'Limite de autenticação excedido' ;
    141: ErroStr := 'Comando inválido' ;
    142: ErroStr := 'Posição já programada' ;
    143: ErroStr := 'Posição inexistente' ;
    144: ErroStr := 'Cupom vinculado pendente' ;
    145: ErroStr := 'Excesso de documentos vinculados' ;
    147: ErroStr := 'Em horário já solicitado' ;
    148: ErroStr := 'Oscilador do relógio desativado' ;
    149: ErroStr := 'Formas de pagamento não inicializadas' ;
    150: ErroStr := 'Inscrição Estadual inválida' ;
    151: ErroStr := 'Extenso excedido' ;
    152: ErroStr := 'Cupom está com subtotal zerado' ;
    153: ErroStr := 'Codificação do GT já programada' ;
    154: ErroStr := 'Não há vinculados a cupom' ;
    155: ErroStr := 'Redução não permitida' ;
    156: ErroStr := 'Caracter repetido na codificação do GT' ;
    157: ErroStr := 'Caracter proibido na codificação do GT' ;
    606: ErroStr := 'Não foi possível setar os parâmetros configuráveis da porta serial' ;
    707: ErroStr := 'Não foi possível programar os parâmetros setados referentes à porta serial' ;
    808: ErroStr := 'Não foi possível limpar a fila de transmissão' ;
    809: ErroStr := 'Não foi possível limpar a fila de recepção' ;
    909: ErroStr := 'Ocorreu um erro na programação interna dos timeouts da porta serial' ;
    1010: ErroStr := 'A porta serial requisitada está bloqueada por outro aplicativo.' ;
    1020: ErroStr := 'A porta serial já encontra-se aberta e não pode ser aberta pelo aplicativo corrente.' ;
    1030: ErroStr := 'Ocorreu um problema desconhecido na recepção de retorno simples da impressora.' ;
  end ;

  if ErroStr = '' then
    //Erros_Schalter := 'Erro não especificado: ' + IntToStr(NumErro)
    Application.MessageBox(PChar('Erro não especificado: ' + IntToStr(NumErro)),'Schalter Informa',MB_SYSTEMMODAL+MB_IconExclamation+MB_Ok)
  else
    //Erros_Schalter := ErroStr ;
    Application.MessageBox(PChar(ErroStr),'Schalter Informa',MB_SYSTEMMODAL+MB_IconExclamation+MB_Ok);
end ;

function AbrirPorta_SCHALTER_SCR_ECF(Porta : String) : Boolean;
begin
  try
    if PORTA = 'COM1' then
    begin
      ChangePort(0);
    end ;

    if PORTA = 'COM2' then
    begin
      ChangePort(1);
    end ;

    if PORTA = 'COM3' then
    begin
      ChangePort(2);
    end ;

    if PORTA = 'COM4' then
    begin
      ChangePort(3);
    end ;

    AbrirPorta_SCHALTER_SCR_ECF := True;
  except
    AbrirPorta_SCHALTER_SCR_ECF := False;
  end;
end;
function LeituraX_Schalter : Boolean;
begin
  try
    Retorno := ecfLeituraX('') ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
    LeituraX_Schalter := True;
  except
    LeituraX_Schalter := False;
  end;
end;
function AbreCupom_SCHALTER_SCR_ECF : Boolean;
begin
  try
    Retorno := ecfImpCab(2) ;
    if Retorno <> 0 then
    begin
      Erros_Schalter(Retorno) ;
    end ;
    AbreCupom_SCHALTER_SCR_ECF := True;
    NroCupomFiscal := RetornoNumeroCupom_SCHALTER_SCF_ECF;
  except
    AbreCupom_SCHALTER_SCR_ECF := False;
  end;
end;
function ImprimeItem_SCHALTER_SCF_ECF(NUMITEM,CODIGO,DESCRICAO,TRIBUTO,UNIDADE:String;QTDE,VALOR,PERCDESC,VLRDESCO,NumDecQuant:Double) : Boolean;
var
  Desco,
  Preco,
  VlUnit,
  Quant,
  QuantFrac,
  Unid : String;
begin
{  // ROTINA DA SCHALTER ANTERIOR A 3.00
   Desco := FormatFloat('#,##0.00', PERCDESC);
  if Pos(',',Desco) > 0 then
    Delete(Desco, Pos(',',Desco), 1);
  if Pos('.',Desco) > 0 then
    Delete(Desco, Pos('.',Desco), 1);
  Desco       := PreencheDir( Desco,    '0', 04,0) ;

  Preco  := FormatFloat('#,##0.00', VALOR * QTDE);
  if Pos(',',Preco) > 0 then
    Delete(Preco, Pos(',',Preco), 1);
  if Pos('.',Preco) > 0 then
    Delete(Preco, Pos('.',Preco), 1);
  VlUnit := FormatFloat('#,##0.00', VALOR);

  Preco  := PreencheDir( Preco,  '0', 09, 0) ;
  VlUnit := PreencheDir( VlUnit, ' ', 12, 0) ;

  if NumDecQuant = 2 then
     Quant  := FormatFloat('0000.00', QTDE) ;
  if NumDecQuant = 3 then
     Quant  := FormatFloat('000.000', QTDE) ;
  if NumDecQuant = 0 then
    Quant  := FormatFloat('0000000', QTDE) ;

  StrAux := Copy(PreencheDir(NUMITEM   ,'0' , 04, 0), 1, 13) + ' '      + {05}
//            Copy(PreencheDir(CODIGO   ,'0' , 13, 0), 1, 13)  + ' '      + {14}
//            Copy(PreencheDir(DESCRICAO, ' ', 33, 1), 1, 33)  + ' '      + {34}
//            Quant                                            + ' X  R$' + {13}
//            VlUnit                                                        {12} ;
{  ShowMessage(IntToStr(Length(StrAux)));
  ShowMessage(IntToStr(Length(Preco)));
  ShowMessage(IntToStr(Length(TRIBUTO)));
  Retorno := ecfVendaItem78(PChar(StrAux), PChar(Preco), StrToInt(TRIBUTO)) ;
  if Retorno <> 0 then
    Erros_Schalter(Retorno) ;}


  // ROTINA PARA SCHALTER 3.00 OU POSTERIOR
  Desco := FormatFloat('#,##0.00', PERCDESC);
  if Pos(',',Desco) > 0 then
    Delete(Desco, Pos(',',Desco), 1);
  if Pos('.',Desco) > 0 then
    Delete(Desco, Pos('.',Desco), 1);
  Desco       := PreencheDir( Desco,    '0', 04,0) ;

  VlUnit := FormatFloat('#,##0.00', VALOR);
  if Pos(',',VlUnit) > 0 then
    Delete(VlUnit, Pos(',',VlUnit), 1);
  if Pos('.',Preco) > 0 then
    Delete(VlUnit, Pos('.',VlUnit), 1);

  Quant     := Copy(FormatFloat('000.000', QTDE), 1, 3) ;

  QuantFrac := FormatFloat('000.000', QTDE) ;
  if Tributo = 'I' then
    Tributo := '17';
  Retorno := ecfVendaItem3d(PChar(Preenche(Codigo,'0',9,0)),
                            PChar(Descricao),
                            PChar(QuantFrac),
                            PChar(VlUnit),
                            StrToInt(Tributo),
                            PChar(Unidade),
                            '2') ;
  if Retorno <> 0 then
    Erros_Schalter(Retorno) ;

  if VLRDESCO > 0 then
  begin
    Desco := FormatFloat('#,##0.00', VLRDESCO);
    if Pos(',',Desco) > 0 then
      Delete(Desco, Pos(',',Desco), 1);
    if Pos('.',Desco) > 0 then
      Delete(Desco, Pos('.',Desco), 1);
    Desco := PreencheDir( Desco,    '0', 05,0) ;

    Retorno := ecfDescItem(0, '', PChar(Desco)) ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
  end ;
end;
Function PreencheDir(Descricao,Str:String;Tamanho,Posicao:Integer):String ;
var
 i,Dif:integer;
begin
  Dif:=Tamanho - length(Descricao);
  For i:= 1 to Dif do
  //posicacao a esquerda/direita
  If Posicao = 0 then
     Descricao  := Str  + Descricao
     else
      Descricao := Descricao + str;
  ////===========================
  PreencheDir := Descricao;
end;
Function Preenche( STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
VAR Conta   : Integer ;
    Aux_Str : String ;
begin
  Aux_Str := '' ;
  FOR Conta := 1 TO (Tam-Length(STRI)) DO
     if FloodStr = '' then
       AUX_STR := AUX_STR + ' '
     else
        AUX_STR := AUX_STR + FloodStr ;
  IF JUST = 0 THEN //Esquerda
    AUX_STR := AUX_STR + STRI ;
  IF JUST = 2 THEN //Direita
    AUX_STR := STRI + AUX_STR ;
  Preenche := AUX_STR ;
End ;

function CancelarItem_SCHALTER_SCF_ECF(Item: Integer;Descricao : String) : Boolean;
begin
  try
    Retorno := ecfCancItemDef(PChar(Preenche(IntToStr(ITEM),'0',04,0)), '') ;
    if Retorno <> 0 then
      Erros_Schalter(Retorno) ;
    CancelarItem_SCHALTER_SCF_ECF := True;
  Except
    CancelarItem_SCHALTER_SCF_ECF := False;
  end;
end;
function CancelarCupom_SCHALTER_SCF_ECF(Tipo:String):Boolean;
begin
  if Tipo = 'A' then
    Retorno := ecfCancVenda('');
  if Tipo = 'F' then
    Retorno := ecfCancDoc('');
  if Retorno <> 0 then
    Erros_Schalter(Retorno) ;
end;
function FecharCupom_SCHALTER_SCF_ECF(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli,IDCupom:string) : boolean ;
var
  AcrescDesc,
  MsgFimCupom,
  StrAux,
  NumerarioECF,
  DescAcres : string ;
  TotalVista,
  TotalPrazo : double ;
  I : Integer;
begin
   AcrescDesc := FormatFloat('#,##0.00',VlrAcrescDesc);
  if Pos(',',AcrescDesc) > 0 then
    Delete(AcrescDesc, Pos(',',AcrescDesc), 1);
  if Pos('.',AcrescDesc) > 0 then
    Delete(AcrescDesc, Pos('.',AcrescDesc), 1);
  AcrescDesc := Preenche(AcrescDesc, '0', 10, 0) ;

  if TipoAcrescDesc = 'D' then
     ecfCancAcresDescSubTotal(0, 0, PChar('Desconto'), PChar(AcrescDesc)) ;
  if TipoAcrescDesc = 'A' then
     ecfCancAcresDescSubTotal(1, 0, PChar('Acrescimo'), PChar(AcrescDesc)) ;

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
  I := SQLFPVista.RecordCount;
  while not SQLFPVista.EOF do
  begin
    if I = 1 then
      StrAux := FormatFloat('#,##0.00', SQLFPVista.Fieldbyname('VALORPARC').AsFloat + VlrTroco)
    else
      StrAux := FormatFloat('#,##0.00', SQLFPVista.Fieldbyname('VALORPARC').AsFloat);

    if Pos(',',StrAux) > 0 then
       Delete(StrAux, Pos(',',StrAux), 1);
    if Pos('.',StrAux) > 0 then
       Delete(StrAux, Pos('.',StrAux), 1);

    StrAux := Preenche(StrAux,  '0', 12, 0) ;
    NumerarioECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPVista.Fieldbyname('NUMEICOD').AsString);
    ecfPagamento (0, PChar(NumerarioECF),PChar(StrAux),0);

    //ENVIAR AUTENTICACAO PARA O ECF -> A ROTINA NAO FUNCIONA DIRETITO NO ECF, VERIFICAR COM O SUPORTE ANTES DE UTILIZAR

{    if (DM.SQLTerminalAtivoTERMCAUTENTRFIMCUP.Value = 'S') and (TipoPadrao = 'CRD') and(FormTelaFechamentoVenda.ValorEntrada.Value > 0) then
    if (ECFAtual <> '') and (PortaECFAtual <> '') and (ECFAtual = 'SCHALTER SCF_ECF')then
        Autenticacao( ECFAtual,       //Impressora
                      PortaECFAtual,  //Porta,
                      Ecf_CNFNV,      //Identificador
                      Ecf_ID,         //Ecf_ID
                      DM.CodNextCupom,//Documento
                      '0',            //Parcela
                      'Entrada',
                      FormTelaFechamentoVenda.ValorEntradaAut,//Valor
                      SQLFPVista.Fieldbyname('NUMEICOD').Value);//NumerarioCod}

    TotalVista := TotalVista + SQLFPVista.Fieldbyname('VALORPARC').AsFloat ;
    SQLFPVista.Next ;
    Dec(I);
  end ;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
  begin
    StrAux := FormatFloat('#,##0.00', TotalPrazo) ;
    if Pos(',',StrAux) > 0 then
       Delete(StrAux, Pos(',',StrAux), 1);
    if Pos('.',StrAux) > 0 then
       Delete(StrAux, Pos('.',StrAux), 1);
    StrAux := Preenche(StrAux,  '0', 12, 0) ;
    NumerarioECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
    ecfPagamento (0, PChar(NumerarioECF),PChar(StrAux),0);
  end ;

  //IMPRIMIR DADOS DO CLIENTE
  if (Application.FindComponent('FormTelaFechamentoVenda') <> nil) and
     (DM.SQLTerminalAtivo.FieldByName('TERMCIMPRDADINTCUP').Value <> 'N') then
  MsgFimCupom := Preenche('CUPOM(ID).: ' + IDCupom,'',48,2);
  ecfImpLinha(Pchar(MsgFimCupom));
  MsgFimCupom := Preenche('VENDEDOR..: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption),'',48,2);
  ecfImpLinha(Pchar(MsgFimCupom));
  MsgFimCupom := Preenche('PLANO.....: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption),'',48,2);
  ecfImpLinha(Pchar(MsgFimCupom));
  MsgFimCupom := Preenche('CLIENTE...: ' + ConverteAcentos(NomeCli),'',48,2);
  ecfImpLinha(Pchar(MsgFimCupom));
  MsgFimCupom := Preenche('DOCUMENTO.: ' + ConverteAcentos(DocumentoCli),'',48,2);
  ecfImpLinha(Pchar(MsgFimCupom));
  MsgFimCupom := Preenche('END.:' + ConverteAcentos(Copy(EnderecoCli, 01, 35)),'',48,2);
  ecfImpLinha(Pchar(MsgFimCupom));
  MsgFimCupom := Preenche('CIDADE....: ' + ConverteAcentos(Copy(CidadeCli,   01, 28)),'',48,2);
  ecfImpLinha(Pchar(MsgFimCupom));
  MsgFimCupom := Preenche(ConverteAcentos(Copy(OBSImpressaoCupom,01, 28)),'',48,2);
  ecfImpLinha(Pchar(MsgFimCupom));

  // ROTINA PARA AUTENTICACAO NA SCHALTER POIS TEM QUE SER FEITA ANTES DO FECHAMENTO DO CUPOM;
  //AUTENTICAR ENTRADA DE VENDA A PRAZO
  if Retorno <> 0 then
     Erros_Schalter(Retorno) ;
  Retorno := ecfFimTrans('') ;
  if Retorno <> 0 then
     Erros_Schalter(Retorno) ;
end;
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
function AbreCupomNFV_SCHALTER_SCR_ECF(CupomVinculado,Ecf_CNFV:String;Valor:Double): Boolean;
var
  ValorStr : String;
begin
    ValorStr := FormatFloat('#,##0.00', Valor) ;
    if Pos(',',ValorStr) > 0 then
       Delete(ValorStr, Pos(',',ValorStr), 1);
    if Pos('.',ValorStr) > 0 then
       Delete(ValorStr, Pos('.',ValorStr), 1);
    ValorStr := Preenche(ValorStr,  '0', 9, 0) ;
   CupomVinculado := Preenche(CupomVinculado,'0',6,0);
  Retorno := ecfInicCNFVinculado(CupomVinculado,UnitLibrary.Ecf_CNFV,ValorStr);
  if Retorno <> 0 then
     Erros_Schalter(Retorno) ;
end;
function LinhaTexto_SCHALTER_SCF_ECF(Texto : String) : Boolean;
begin
  ecfImpLinha(Pchar(Texto));
end;
function FechaCupomNFV_SCHALTER_SCF_ECF(NroCupom : String) : Boolean;
begin
  ecfFimTransVinc('',NroCupom);
end;
function RetornoNumeroCupom_SCHALTER_SCF_ECF : String;
var
  NumCupRet : PChar;
  Aux_Pchar : PChar;
  IntAux    : integer;
  NumCup    : string ;
begin
  NumCupRet := ecfStatusCupom(IntAux);
  Aux_Pchar := StrPos(NumCupRet, 'Erro');
  IntAux    := 0 ;
  if Aux_Pchar = nil then
    RetornoNumeroCupom_SCHALTER_SCF_ECF := Format('%6s',[Copy(NumCupRet, 6, 6)]);
end;
function Autencticacao_SCHALTER_SCF_ECF(Texto : String) : Boolean;
var
  TextoStr : String;
begin
  TextoStr := Preenche(Texto,'',48,2);
  Retorno := ecfAutentica(TextoStr);
  if Retorno <> 0 then
     Erros_Schalter(Retorno) ;
end;
function Reducao_Z_SCHALTER_SCF_ECF : Boolean;
begin
  Retorno := ecfReducaoZ('') ;
  if Retorno <> 0 then
    Erros_Schalter(Retorno) ;
end;
end.
