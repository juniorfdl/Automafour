unit SWEDA7000;

interface

uses RXCtrls, RxQuery, Forms, DBTables, SysUtils, Dialogs, Windows ;

Function  MandaCupomSweda(strBuffer : string) : Boolean;
Function  Preenche( STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
Function  FecharCupomSWEDAS7000(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom:string) : boolean ;
function  AbrirCupomSWEDAS7000(var NroCupom : String) : boolean ;
function  ImprimeItemSWEDAS7000(CodigoOrigem, DescrOrigem, TributoOrigem, UnidadeOrigem : String; ValorOrigem, QtdeOrigem, VlrDescOrigem : Double) : Boolean;
function  CancelarItemSWEDAS7000 : Boolean;
function  CancelarCupomSWEDAS7000 : Boolean ;
function  Leitura_X_SWEDAS7000 : Boolean;
function  Reducao_Z_SWEDAS7000 : Boolean;
function  AbrirGavetaSWEDAS7000 : Boolean;
function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
function  LancarAcrescimoSWEDAS7000(Valor : Double) : Boolean;
function  AutenticacaoSWEDAS7000(Texto : String) : Boolean;
function  EmiteCupomNaoFiscalSWEDA : Boolean ;
function  ImprimeTextoNaoFical(Texto : String) : Boolean;
function  FecharCupomSemFP_SEWDAS7000 : Boolean;
//DECLARAR AS DLL DA SWEDA
Function AbrePorta(Numero,Timeout:Integer):Boolean; far; Export;
external 'SERSWEDA.DLL' index 1;
Function EnviaComando(Texto1:PChar):ShortString; far; Export;
external 'SERSWEDA.DLL' index 2;
Function FechaPorta(Numero:Integer):Boolean; far; Export;
external 'SERSWEDA.DLL' index 3;
var
  Str,Mensagem  : string ;
implementation

uses UnitLibrary, DataModulo, DB;
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

Function  MandaCupomSweda(strBuffer : string) : Boolean;
var
  Comando : array[0..512] of char ;
begin
  StrPCopy(Comando,#27+ strBuffer + '}');
  Str := EnviaComando(Comando);
//  MandaCupomSweda := Str;
  if Pos('}', Str) > 0 then
    Delete(Str, Pos('}', Str), 1) ;
  if Copy(Str, 7, 4) = 'ERRO' then
    begin
      Application.MessageBox(PChar(Copy(Str, 12, Length(Str))), 'Informa', MB_SYSTEMMODAL+MB_IconExclamation+MB_Ok);
      MandaCupomSweda := False;
    end
  else
      MandaCupomSweda := True;
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
function Leitura_X_SWEDAS7000 : Boolean;
begin
  Leitura_X_SWEDAS7000 := MandaCupomSweda('.13') ;
end;
function Reducao_Z_SWEDAS7000 : Boolean;
begin
  Reducao_Z_SWEDAS7000 := MandaCupomSweda('.14' + FormatDateTime('ddmmyy',Now)) ;
end;

function  AbrirCupomSWEDAS7000(var NroCupom : String) : boolean ;
var
  Comando : array[0..512] of char ;
begin
  try
    MandaCupomSweda('.17') ;
    //LER TOTALIZADORES PARA SABER O NRO.CUPOM
    Application.ProcessMessages;
    Mensagem := EnviaComando(StrPCopy(Comando,#27 + '.271}')) ;
    NroCupom := Copy(Mensagem, 14, 04) ;
    AbrirCupomSWEDAS7000 := True;
  except
    AbrirCupomSWEDAS7000 := False;
  end;
end;

function  ImprimeItemSWEDAS7000(CodigoOrigem, DescrOrigem, TributoOrigem, UnidadeOrigem : String; ValorOrigem, QtdeOrigem, VlrDescOrigem : Double) : Boolean;
var
  Codigo,
  Descricao,
  Desconto,
  VlrUnit,
  Quant,
  Preco,
  Unid,
  StrAux : String;
begin
  Desconto := FormatFloat('#,##0.00', VlrDescOrigem);
  if Pos(',',Desconto) > 0 then
    Delete(Desconto, Pos(',',Desconto), 1);
  if Pos('.',Desconto) > 0 then
    Delete(Desconto, Pos('.',Desconto), 1);

  VlrUnit := FormatFloat('#,##0.00', ValorOrigem);
  if Pos(',',VlrUnit) > 0 then
    Delete(VlrUnit, Pos(',',VlrUnit), 1);
  if Pos('.',VlrUnit) > 0 then
    Delete(VlrUnit, Pos('.',VlrUnit), 1);

  Quant := FormatFloat('000.000', QtdeOrigem) ;
  if Pos(',',Quant) > 0 then
    Delete(Quant, Pos(',',Quant), 1);
  if Pos('.',Quant) > 0 then
    Delete(Quant, Pos('.',Quant), 1);

  Preco  := FormatFloat('#,##0.00', ValorOrigem * QtdeOrigem);
  if Pos('.',Preco) > 0 then
    Delete(Preco,Pos('.',Preco), 1);
  if Pos(',',Preco) > 0 then
    Delete(Preco,Pos(',',Preco), 1);

  Codigo    := Preenche(CodigoOrigem,    '0', 13, 0) ;
  Quant     := Preenche(Quant,     '0', 07, 0) ;
  VlrUnit   := Preenche(VlrUnit,    '0', 09, 0) ;
  Preco     := Preenche(Preco,     '0', 12, 0) ;
  Descricao := Preenche('^' + DescrOrigem, '' , 24, 2) ;
  Desconto  := Preenche(Desconto,     '0', 12, 0) ;
  Unid      := Preenche(Unid,      '0', 02, 0) ;

  StrAux := Codigo +
            Quant  +
            VlrUnit +
            Preco  +
            Copy(Descricao,1,24) +
           'T' + TributoOrigem ;

  ImprimeItemSWEDAS7000 := MandaCupomSweda('.01' + StrAux) ;

  if VlrDescOrigem > 0 then
    MandaCupomSweda('.02          ' + Desconto) ;
end;

function  CancelarItemSWEDAS7000 : Boolean;
begin
  CancelarItemSWEDAS7000 := MandaCupomSweda('.04') ;
end;

function  FecharCupomSWEDAS7000(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom:string) : boolean ;
var
  MsgFimCupom,
  AcrescDesc,
  StrAux,
  NumerarioECF : string ;
  TotalVista,
  TotalPrazo : double ;
  I : Integer;
begin
   //TOTALIZAR CUPOM
    AcrescDesc := ConvFloatToStrECF(VlrAcrescDesc,12) ;
    if VlrAcrescDesc > 0 then
    begin
      AcrescDesc := FormatFloat('#,##0.00', VlrAcrescDesc) ;
      if Pos(',', AcrescDesc) > 0 then
        Delete(AcrescDesc, Pos(',', AcrescDesc), 1) ;
      if Pos('.', AcrescDesc) > 0 then
        Delete(AcrescDesc, Pos('.',AcrescDesc), 1) ;
      AcrescDesc := Preenche(AcrescDesc, '0', 12, 0) ;
      MandaCupomSweda('.03' + 'SOBRETOTAL' + AcrescDesc) ;
    end ;
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
    StrAux := FormatFloat('#,##0.00', SQLFPVista.Fieldbyname('VALORPARC').AsFloat);

    if Pos(',',StrAux) > 0 then
       Delete(StrAux, Pos(',',StrAux), 1);
    if Pos('.',StrAux) > 0 then
       Delete(StrAux, Pos('.',StrAux), 1);

    StrAux := Preenche(StrAux,  '0', 12, 0) ;
    NumerarioECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPVista.Fieldbyname('NUMEICOD').AsString);
    MandaCupomSweda('.10' + NumerarioECF + StrAux) ;
    TotalVista := TotalVista + SQLFPVista.Fieldbyname('VALORPARC').AsFloat ;
    SQLFPVista.Next ;
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
    MandaCupomSweda('.10' + NumerarioECF + StrAux);
  end ;

  //IMPRIMIR DADOS DO CLIENTE
  if (Application.FindComponent('FormTelaFechamentoVenda') <> nil) and
     (DM.SQLTerminalAtivo.FieldByName('TERMCIMPRDADINTCUP').Value <> 'N') then
    MsgFimCupom := '0' + Preenche('CUPOM(ID).: ' + IDCupom,'',40,2) +
                   '0' + Preenche('VENDEDOR..: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption),'',40,2) +
                   '0' + Preenche('PLANO.....: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption),'',40,2) +
                   '0' + Preenche('CLIENTE...: ' + ConverteAcentos(NomeCli),'',40,2) +
                   '0' + Preenche('DOCUMENTO.: ' + ConverteAcentos(DocumentoCli),'',40,2) +
                   '0' + Preenche('END.:' + ConverteAcentos(Copy(EnderecoCli, 01, 35)),'',40,2)+
                   '0' + Preenche('CIDADE....: ' + ConverteAcentos(Copy(CidadeCli,   01, 28)),'',40,2);

  FecharCupomSWEDAS7000 := MandaCupomSweda('.12' + MsgFimCupom);
  Sleep(5000);

end;

function LancarAcrescimoSWEDAS7000(Valor : Double) : Boolean;
var
 StrAux : String;
begin
  StrAux := FormatFloat('#,##0.00', Valor) ;
  if Pos(',',StrAux) > 0 then
     Delete(StrAux, Pos(',',StrAux), 1);
  if Pos('.',StrAux) > 0 then
     Delete(StrAux, Pos('.',StrAux), 1);
  StrAux := Preenche(StrAux,  '0', 11, 0) ;
  LancarAcrescimoSWEDAS7000 := MandaCupomSweda('.11' + '53' + '0000' + StrAux + 'I  ' + 'S');
end;

Function CancelarCupomSWEDAS7000 : Boolean ;
begin
  CancelarCupomSWEDAS7000 :=  MandaCupomSweda('.05') ;
end;

function  AbrirGavetaSWEDAS7000 : Boolean;
begin
  AbrirGavetaSWEDAS7000 := MandaCupomSweda('.21');
end;

function  AutenticacaoSWEDAS7000(Texto : String) : Boolean;
var
  StrAux : String;
begin
  EmiteCupomNaoFiscalSWEDA;
  AutenticacaoSWEDAS7000 := MandaCupomSweda('.26' + '0' + Preenche(Texto,'',15,0));
end;

function EmiteCupomNaoFiscalSWEDA : Boolean ;
begin
  EmiteCupomNaoFiscalSWEDA := MandaCupomSweda('.19');
end;

function  ImprimeTextoNaoFical(Texto : String) : Boolean;
begin
  ImprimeTextoNaoFical := MandaCupomSweda('.08' + '0' + 'D' + Texto);
end;

function FecharCupomSemFP_SEWDAS7000 : Boolean;
begin
  FecharCupomSemFP_SEWDAS7000 := MandaCupomSweda('.12');
end;

end.
