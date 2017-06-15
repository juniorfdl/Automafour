unit SWEDA7000_AFRAC;

interface

uses RXCtrls, RxQuery, Forms, DBTables, SysUtils, Dialogs, Windows ;

Function  MandaCupomSweda(strBuffer : string) : Boolean;
Function  Preenche( STRI, FloodStr:String; TAM:Integer ; JUST : Integer):String ;
function  AbrirPortaSWEDAS7000_AFRAC(Porta:String) : Boolean;
function  FecharPortaSWEDAS7000_AFRAC() : Boolean;
function  AbrirCupomSWEDAS7000_AFRAC(var NroCupom : String) : boolean ;
function  ImprimeItemSWEDAS7000_AFRAC(CodigoOrigem, DescrOrigem, TributoOrigem, UnidadeOrigem : String; ValorOrigem, QtdeOrigem, VlrDescOrigem : Double) : Boolean;
function  CancelarItemSWEDAS7000_AFRAC(NumItem:String) : Boolean;
Function  FecharCupomSWEDAS7000_AFRAC(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : boolean ;
function  CancelarCupomSWEDAS7000_AFRAC: Boolean ;
function  Leitura_X_SWEDAS7000_AFRAC: Boolean;
function  Reducao_Z_SWEDAS7000_AFRAC: Boolean;
function  AbrirGavetaSWEDAS7000_AFRAC: Boolean;
function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
function  LancarAcrescimoSWEDAS7000_AFRAC(Valor : Double) : Boolean;
function  AutenticacaoSWEDAS7000_AFRAC(Texto,Mensagem : String) : Boolean;
function  RepeteAutenticacaoSWEDAS7000_AFRAC() : Boolean;
function  AbreCNFNV_SWEDAS7000_AFRAC: Boolean ;
function  RegistraItemCNFNV_SWEDAS7000_AFRAC(NumeTotEcf,Mensagem : String; Valor : Double) : Boolean;
function  PagaCNFNV_SWEDAS7000_AFRAC(DescrNumerario,NumeTotEcf,Mensagem : String; Valor : Double) : Boolean ;
function  FechaCNFNV_SWEDAS7000_AFRAC() : Boolean;
function  FecharCupomSemFP_SEWDAS7000: Boolean;
function  AbreCupomNaoFiscalVinculadoSWEDAS7000_AFRAC(FP:String;Valor:Double) : Boolean;
function  ImprimeTextoNaoFicalSWEDAS7000_AFRAC(Texto : String) : Boolean;
function  FechaCupomNaoFiscalVinculadoSWEDAS7000_AFRAC() : Boolean;
//DECLARAR AS DLL DA SWEDA
Function AbrePorta(Numero,Timeout:Integer):Boolean; far; Export;
external 'SERSWEDA.DLL' index 1;
Function EnviaComando(Texto1:PChar):ShortString; far; Export;
external 'SERSWEDA.DLL' index 2;
Function FechaPorta(Numero:Integer):Boolean; far; Export;
external 'SERSWEDA.DLL' index 3;
procedure TrataErro;
function  RetornaAliquotaIcms(Produto : String) : String;
var
  Str,Mensagem  : string ;
  liquido: array[0..20] of char;
implementation

uses UnitLibrary, DataModulo, ECF_AFRAC, DB;
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
function  AbrirPortaSWEDAS7000_AFRAC(Porta:String) : boolean;
begin
 if AFRAC_AbrirPorta(Pchar(Porta)) = 0 then
   AbrirPortaSWEDAS7000_AFRAC := True
 else
   begin
     AbrirPortaSWEDAS7000_AFRAC := False;
     TrataErro;
   end;
end;
function FecharPortaSWEDAS7000_AFRAC() : Boolean;
begin
  if AFRAC_FecharPorta = 0 then
    FecharPortaSWEDAS7000_AFRAC := True
  else
    begin
      FecharPortaSWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;
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
function Leitura_X_SWEDAS7000_AFRAC : Boolean;
begin
  if AFRAC_LeituraX = 0 then
    Leitura_X_SWEDAS7000_AFRAC := True
  else
    begin
      Leitura_X_SWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;
function Reducao_Z_SWEDAS7000_AFRAC : Boolean;
begin
  if AFRAC_ReducaoZ(PChar(FormatDateTime('ddmmyyyy',Now))) = 0 then
    Reducao_Z_SWEDAS7000_AFRAC := True
  else
    begin
      Reducao_Z_SWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;

function  AbrirCupomSWEDAS7000_AFRAC(var NroCupom : String) : boolean ;
var
COO   : array [0..4] of char;
begin
  try
    AFRAC_AbrirCupom;
    if AFRAC_RetornaErro <> '' then
      Informa(AFRAC_RetornaErro);
    //LER TOTALIZADORES PARA SABER O NRO.CUPOM
    Application.ProcessMessages;
    AFRAC_LerInformacaoImpressora('023',COO);
    NroCupom := COO;
    AbrirCupomSWEDAS7000_AFRAC := True;
  except
    AbrirCupomSWEDAS7000_AFRAC := False;
  end;
end;
function  ImprimeItemSWEDAS7000_AFRAC(CodigoOrigem, DescrOrigem, TributoOrigem, UnidadeOrigem : String; ValorOrigem, QtdeOrigem, VlrDescOrigem : Double) : Boolean;
var
  Codigo,
  Descricao,
  Desconto,
  VlrUnit,
  Quant,
  Preco,
  Unid,
  StrAux,
  Tributo : String;
begin
//   Afrac_VenderItem('1','Produto 01','0000000000001.00','0000000000002.00','0','0','00000000000',Liquido,'M1700','PC','0');
  Desconto := FormatFloat('#,##0.00', VlrDescOrigem);
  if Pos(',',Desconto) > 0 then
    Desconto[Pos(',',Desconto)] := '.';
{  if Pos('.',Desconto) > 0 then
    Delete(Desconto, Pos('.',Desconto), 1);}

  VlrUnit := FormatFloat('#,##0.00', ValorOrigem);
  if Pos(',',VlrUnit) > 0 then
    VlrUnit[Pos(',',VlrUnit)] := '.';
{  if Pos('.',VlrUnit) > 0 then
    Delete(VlrUnit, Pos('.',VlrUnit), 1);}

  Quant := FormatFloat('0,00', QtdeOrigem) ;
  if Pos(',',Quant) > 0 then
    Quant[Pos(',',Quant)] := '.';
{  if Pos('.',Quant) > 0 then
    Delete(Quant, Pos('.',Quant), 1);}

  Preco  := FormatFloat('0,00', ValorOrigem * QtdeOrigem);
  if Pos(',',Preco) > 0 then
    Preco[Pos(',',Preco)] := '.';
{  if Pos('.',Preco) > 0 then
    Delete(Preco,Pos('.',Preco), 1);}

  Codigo    := Preenche(CodigoOrigem,    '0', 13, 0) ;
  Quant     := Preenche(Quant,     '0', 16, 0) ;
  VlrUnit   := Preenche(VlrUnit,    '0', 16, 0) ;
  Preco     := Preenche(Preco,     '0', 16, 0) ;
  Descricao := Preenche('^' + DescrOrigem, '' , 24, 2) ;
  Desconto  := Preenche(Desconto,     '0', 16, 0) ;
  Unid      := Preenche(Unid,      '0', 02, 0) ;


  Tributo := 'M' + RetornaAliquotaIcms(CodigoOrigem) + '00' ;

  if Afrac_VenderItem(PChar(Codigo),Pchar(Descricao),Pchar(Quant),Pchar(VlrUnit),'0','0','0',Pchar(Preco),Pchar(Tributo),Pchar(UnidadeOrigem),'0') = 0 then
    ImprimeItemSWEDAS7000_AFRAC := True
  else
    begin
      ImprimeItemSWEDAS7000_AFRAC := False;
      TrataErro;
    end;

  if VlrDescOrigem > 0 then
    begin
      AFRAC_AcrescimoDescontoItem('1','0',Pchar(FormatFloat('#,##0.00',VlrDescOrigem)));
      AFRAC_FecharAcrescimoDesconto('SOBREITEM','SOBREITEM',liquido);
    end;
end;
function  CancelarItemSWEDAS7000_AFRAC(NumItem:String) : Boolean;
begin
  if   AFRAC_CancelarItem(Pchar(NumItem)) = 0 then
    CancelarItemSWEDAS7000_AFRAC := True
  else
    begin
      CancelarItemSWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;
function  FecharCupomSWEDAS7000_AFRAC(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : boolean ;
var
  MsgFimCupom,
  AcrescDesc,
  StrAux,
  NumerarioECF, DescrNumerarioECF  : String;
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
        AcrescDesc[Pos(',', AcrescDesc)] := '.';
      if Pos('.', AcrescDesc) > 0 then
        AcrescDesc[Pos('.',AcrescDesc)] := '.';
      AcrescDesc := Preenche(AcrescDesc, '0', 12, 0) ;
      if TipoAcrescDesc = 'D' then
        AFRAC_AcrescimoDescontoCupom('0','0',Pchar(AcrescDesc),'SOBRETOTAL');

      if TipoAcrescDesc = 'A' then
        AFRAC_AcrescimoDescontoCupom('1','0',Pchar(AcrescDesc),'SOBRETOTAL');

      TrataErro;
      AFRAC_FecharAcrescimoDesconto('SOBRETOTAL','SOBRETOTAL',liquido);
      TrataErro;
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
       StrAux[Pos(',',StrAux)] := '.';

    NumerarioECF      := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPVista.Fieldbyname('NUMEICOD').AsString);
    DescrNumerarioECF := RetornaNumerario(SQLFPVista.Fieldbyname('NUMEICOD').AsString);
    AFRAC_FormaPagamento(Pchar(DescrNumerarioECF),Pchar(NumerarioECF),Pchar(StrAux),'');
    TrataErro;
    TotalVista := TotalVista + SQLFPVista.Fieldbyname('VALORPARC').AsFloat;
    SQLFPVista.Next;
  end;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
  begin
    StrAux := FormatFloat('#,##0.00', TotalPrazo) ;
    if Pos(',',StrAux) > 0 then
       StrAux[Pos(',',StrAux)] := '.';

    NumerarioECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
    DescrNumerarioECF := RetornaNumerario(SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
    if AFRAC_FormaPagamento(Pchar(DescrNumerarioECF),Pchar(NumerarioECF),Pchar(StrAux),'') <> 0 then
      TrataErro;
  end ;
  Sleep(1000);
  //IMPRIMIR DADOS DO CLIENTE
  if (Application.FindComponent('FormTelaFechamentoVenda') <> nil) and
     (ImprimeDadosClienteCupom = 'S') and (NomeCli <> SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC',''''+DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').AsString+'''')) then
    begin
      AFRAC_InformarMensagemCupom(PChar(Preenche('CUPOM(ID).: ' + IDCupom,'',40,2)));
      AFRAC_InformarMensagemCupom(PChar(Preenche('VENDEDOR..: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption),'',40,2)));
      AFRAC_InformarMensagemCupom(PChar(Preenche('PLANO.....: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption),'',40,2)));
      AFRAC_InformarMensagemCupom(PChar(Preenche('CLIENTE...: ' + ConverteAcentos(NomeCli),'',40,2)));
      AFRAC_InformarMensagemCupom(PChar(Preenche('DOCUMENTO.: ' + ConverteAcentos(DocumentoCli),'',40,2)));
      AFRAC_InformarMensagemCupom(PChar(Preenche('END.:' + ConverteAcentos(Copy(EnderecoCli, 01,35)),'',40,2)));
      AFRAC_InformarMensagemCupom(PChar(Preenche('CIDADE....: ' + ConverteAcentos(Copy(CidadeCli,   01, 28)),'',40,2)));
      TrataErro;
    end;
  Sleep(1000);
  if DM.SQLTerminalAtivo.FieldByName('TERMCIMPCONFDIVIDA').Value = 'S' then
    if AFRAC_FecharCupom('1','0') = 0 then
      FecharCupomSWEDAS7000_AFRAC := True
    else
      begin
        FecharCupomSWEDAS7000_AFRAC := False;
        TrataErro;
      end
  else
    if AFRAC_FecharCupom('0','0') = 0 then
      FecharCupomSWEDAS7000_AFRAC := True
    else
      begin
        FecharCupomSWEDAS7000_AFRAC := True;
        TrataErro;
      end;
end;
function LancarAcrescimoSWEDAS7000_AFRAC(Valor : Double) : Boolean;
var
 StrAux : String;
begin
  StrAux := FormatFloat('#,##0.00', Valor) ;
  if Pos(',',StrAux) > 0 then
     Delete(StrAux, Pos(',',StrAux), 1);
  if Pos('.',StrAux) > 0 then
     Delete(StrAux, Pos('.',StrAux), 1);
  StrAux := Preenche(StrAux,  '0', 11, 0) ;
  LancarAcrescimoSWEDAS7000_AFRAC := MandaCupomSweda('.11' + '53' + '0000' + StrAux + 'I  ' + 'S');
end;

Function CancelarCupomSWEDAS7000_AFRAC : Boolean ;
begin
  if AFRAC_CancelarCupom('000000') = 0 then
    begin
      CancelarCupomSWEDAS7000_AFRAC := True;
      Application.ProcessMessages;
      Sleep(500);
    end
  else
    begin
      CancelarCupomSWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;

function  AbrirGavetaSWEDAS7000_AFRAC : Boolean;
begin
  if AFRAC_AbrirGaveta = 0 then
    AbrirGavetaSWEDAS7000_AFRAC := True
  else
    begin
      AbrirGavetaSWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;
function  AutenticacaoSWEDAS7000_AFRAC(Texto,Mensagem : String) : Boolean;
begin
  if AFRAC_Autenticar(Pchar(Texto),Pchar(Mensagem)) = 0 then
    AutenticacaoSWEDAS7000_AFRAC := True
  else
    begin
      AutenticacaoSWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;
function  RepeteAutenticacaoSWEDAS7000_AFRAC() : Boolean;
begin
   if AFRAC_RepetirAutenticacao = 0 then
     RepeteAutenticacaoSWEDAS7000_AFRAC := True
   else
     begin
       RepeteAutenticacaoSWEDAS7000_AFRAC := False;
       TrataErro;
     end;
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
procedure TrataErro;
var
 Erro : String;
begin
  Erro := AFRAC_RetornaErro;
  if Erro <> '' then
    Informa('Retorno da ECF : ' + Erro);
end;
function  RetornaAliquotaIcms(Produto : String) : String;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select ICMSN2ALIQUOTA from ICMS') ;
  DM.SQLTemplate.SQL.Add('where ICMSICOD = ' + SQLLocate('PRODUTO','PRODICOD','ICMSICOD',Produto));
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.Fieldbyname('ICMSN2ALIQUOTA').AsString <> '' then
    RetornaAliquotaIcms := DM.SQLTemplate.Fieldbyname('ICMSN2ALIQUOTA').AsString
  else
    RetornaAliquotaIcms := '' ;
end ;
function  AbreCupomNaoFiscalVinculadoSWEDAS7000_AFRAC(FP:String;Valor:Double) : Boolean;
var
COO   : array [0..4] of char;
Cupom, ValorAux : String;
begin
   AFRAC_LerInformacaoImpressora('023',COO);
   Cupom := COO;
   ValorAux := FormatFloat('#,##0.00',Valor);
   if Pos(',',ValorAux) > 0 then
     ValorAux[Pos(',',ValorAux)] := '.';
   ValorAux := Preenche(ValorAux,'0', 16, 0) ;
   if AFRAC_AbrirVinculado(Pchar(Cupom),PChar(FP),PChar(ValorAux)) = 0 then
     AbreCupomNaoFiscalVinculadoSWEDAS7000_AFRAC := True
   else
     begin
       AbreCupomNaoFiscalVinculadoSWEDAS7000_AFRAC := False;
       TrataErro;
     end;
end;
function  ImprimeTextoNaoFicalSWEDAS7000_AFRAC(Texto : String) : Boolean;
begin
  if AFRAC_ImprimirVinculado(Pchar(Copy(Texto,1,48)),Pchar(Copy(Texto,48,48))) = 0 then
    ImprimeTextoNaoFicalSWEDAS7000_AFRAC := True
  else
    begin
      ImprimeTextoNaoFicalSWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;
function  FechaCupomNaoFiscalVinculadoSWEDAS7000_AFRAC () : Boolean;
begin
  if AFRAC_FecharVinculado = 0 then
    FechaCupomNaoFiscalVinculadoSWEDAS7000_AFRAC := True
  else
    begin
      FechaCupomNaoFiscalVinculadoSWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;
function  AbreCNFNV_SWEDAS7000_AFRAC : Boolean ;
begin
  if AFRAC_AbrirNaoFiscalNaovinculado = 0 then
    AbreCNFNV_SWEDAS7000_AFRAC := True
  else
    begin
      AbreCNFNV_SWEDAS7000_AFRAC := False;
      TrataErro;
    end;
end;
function  RegistraItemCNFNV_SWEDAS7000_AFRAC(NumeTotEcf,Mensagem : String; Valor : Double) : Boolean;
var
  StrAux : String;
begin
  StrAux := FormatFloat('#,##0.00',Valor);
  if Pos(',',StrAux) > 0 then
    StrAux[Pos(',',StrAux)] := '.';
  if AFRAC_RegistrarNaoFiscal(Pchar(NumeTotEcf),Pchar(StrAux),Pchar(Mensagem)) = 0 then
    RegistraItemCNFNV_SWEDAS7000_AFRAC := True
  else
    begin
      RegistraItemCNFNV_SWEDAS7000_AFRAC := False;
      TrataErro;
    end;

end;
function  PagaCNFNV_SWEDAS7000_AFRAC(DescrNumerario,NumeTotEcf,Mensagem : String; Valor : Double) : Boolean ;
var
  StrAux : String;
begin
  StrAux := FormatFloat('#,##0.00',Valor);
  if Pos(',',StrAux) > 0 then
    StrAux[Pos(',',StrAux)] := '.';
  if AFRAC_FormaPagamento(Pchar(DescrNumerario),Pchar(NumeTotEcf),Pchar(StrAux),Pchar(Mensagem)) = 0 then
    PagaCNFNV_SWEDAS7000_AFRAC := True
  else
    begin
      PagaCNFNV_SWEDAS7000_AFRAC := False;
      TrataErro;
    end;

end;
function  FechaCNFNV_SWEDAS7000_AFRAC() : Boolean;
begin
   if AFRAC_FecharCupom('0','0') = 0 then
     FechaCNFNV_SWEDAS7000_AFRAC := True
   else
     begin
       FechaCNFNV_SWEDAS7000_AFRAC := False;
       TrataErro;
     end;
end;
end.
