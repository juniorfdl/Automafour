unit BEMATECH_MP20_CI;

interface

uses Dialogs, SysUtils, RxQuery , ShellApi, Windows, Forms;

function AbrirPorta_NAOFISCAL_Bematech_MP20_CI(Porta : string) : boolean ;
function AbrirGaveta_NAOFISCAL_Bematech_MP20_CI(Porta : string) : boolean ;
function FecharPorta_NAOFISCAL_Bematech_MP20_CI : boolean ;
function ImprimeTextoSimples_NAOFISCAL_Bematech_MP20_CI(Texto:string) : boolean ;
function ImprimeTextoFormatado_NAOFISCAL_Bematech_MP20_CI(Texto:string; modo, Italico, Sublinhado, Expandido, Negrito : Integer) : boolean ;
function EnviaComando_NAOFISCAL_Bematech_MP20_CI(Texto:string; TamBuffer:integer) : boolean ;
function Status_Porta_NAOFISCAL_Bematech_MP20_CI : boolean ;
function AutenticaDoc_NAOFISCAL_Bematech_MP20_CI(Texto:string; Tempo:integer) : boolean ;
function Le_Status_NAOFISCAL_Bematech_MP20_CI : boolean ;
function Le_Status_Gaveta_NAOFISCAL_Bematech_MP20_CI : boolean ;
function InserirDocumento_NAOFISCAL_Bematech_MP20_CI : boolean ;
function ConfiguraTamanhoExtrato_NAOFISCAL_Bematech_MP20_CI(NumeroLinhas:integer) : boolean ;
function HabilitaExtratoLongo_NAOFISCAL_Bematech_MP20_CI(Flag:integer) : boolean ;
function HabilitaEsperaImpressao_NAOFISCAL_Bematech_MP20_CI(Flag:integer) : boolean ;
function EsperaImpressao_NAOFISCAL_Bematech_MP20_CI : boolean ;
function ConfiguraModeloImpressora_NAOFISCAL_Bematech_MP20_CI(ModeloImpressora:integer) : boolean ;
function AcionaGuilhotina_NAOFISCAL_Bematech_MP20_CI(Modo:integer) : boolean ;
function HabilitaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI(Flag:integer) : boolean ;
function ProgramaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI(Tempo:integer) : boolean ;
function CaracterGrafico_NAOFISCAL_Bematech_MP20_CI(Texto:string; TamBuffer:integer) : boolean ;
function VerificaPapel_NAOFISCAL_Bematech_MP20_CI : boolean ;

/// Funçoes da DLL MP2032.dll
function IniciaPorta(Porta:string):integer; stdcall; far; external 'Mp2032.dll';
function FechaPorta: integer	;  stdcall; far; external 'Mp2032.dll';
function BematechTX(BufTrans:string):integer; stdcall; far; external 'Mp2032.dll';
function FormataTX(BufTras:string; TpoLtra:integer; Italic:integer; Sublin:integer; expand:integer; enfat:integer):integer; stdcall; far; external 'Mp2032.dll';
function ComandoTX (BufTrans:string;TamBufTrans:integer):integer; stdcall; far; external 'Mp2032.dll';
function Status_Porta:integer; stdcall; far; external 'Mp2032.dll';
function AutenticaDoc(BufTras:string;Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
function Le_Status:integer; stdcall; far; external 'Mp2032.dll';
function Le_Status_Gaveta:integer; stdcall; far; external 'Mp2032.dll';
function DocumentInserted:integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraTamanhoExtrato(NumeroLinhas:Integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaExtratoLongo(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaEsperaImpressao(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function EsperaImpressao:integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraModeloImpressora(ModeloImpressora:integer):integer; stdcall; far; external 'Mp2032.dll';
function AcionaGuilhotina(Modo:integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaPresenterRetratil(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function ProgramaPresenterRetratil(Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
function CaracterGrafico(Buffer: string; TamBuffer: integer):integer; stdcall; far; external 'Mp2032.dll';
function VerificaPapelPresenter():integer; stdcall; far; external 'Mp2032.dll';

{FUNÇÃO PARA CODIGO DE BARRAS}

//funções para impressão dos códigos de barras
Function ImprimeCodigoBarrasUPCA(Codigo : String) :Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasUPCE(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasEAN13(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasEAN8(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE39(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE93(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE128(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasITF(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODABAR(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasISBN(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasMSI(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasPLESSEY(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros , Altura , Largura , Colunas : Integer; Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ConfiguraCodigoBarras(Altura, Largura, PosicaoCaracteres, Fonte, Margem : Integer) : Integer; stdcall; far; external 'Mp2032.dll';

//Função para bitmaps
function ImprimeBmpEspecial(Nome: string; xScale : integer; yScale : integer; angle : integer) : Integer; stdcall; far; external 'Mp2032.dll';
function ImprimeBitmap(Nome: string; mode : integer) : Integer; stdcall; far; external 'Mp2032.dll';
function AjustaLarguraPapel(PaperWidth :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
function SelectDithering (DitherType :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
function ImprimePrn (nome : string; sleep :  integer) : Integer; stdcall; far; external 'Mp2032.dll';

implementation

function AbrirPorta_NAOFISCAL_Bematech_MP20_CI(Porta : string) : boolean ;
begin
  if IniciaPorta(PChar(Porta)) <= 0 then
    AbrirPorta_NAOFISCAL_Bematech_MP20_CI := False
  else
    AbrirPorta_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function AbrirGaveta_NAOFISCAL_Bematech_MP20_CI(Porta : string) : boolean ;
var
Comando : String;
begin
  try
    AbrirPorta_NAOFISCAL_Bematech_MP20_CI(Porta);
    Comando := #27 + #118 + #140;
    if ComandoTX( Comando , Length(Comando) ) <= 0 then
      AbrirGaveta_NAOFISCAL_Bematech_MP20_CI := False
    else
      AbrirGaveta_NAOFISCAL_Bematech_MP20_CI := True;
    FechaPorta;
  except
    AbrirGaveta_NAOFISCAL_Bematech_MP20_CI := False;
  end;
end;

function FecharPorta_NAOFISCAL_Bematech_MP20_CI : boolean ;
begin
  if FechaPorta <= 0 then
    FecharPorta_NAOFISCAL_Bematech_MP20_CI := False
  else
    FecharPorta_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function ImprimeTextoSimples_NAOFISCAL_Bematech_MP20_CI(Texto:string) : boolean ;
begin
  if BematechTX(Texto)<=0 then
    ImprimeTextoSimples_NAOFISCAL_Bematech_MP20_CI := False
  else
    ImprimeTextoSimples_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function ImprimeTextoFormatado_NAOFISCAL_Bematech_MP20_CI(Texto:string; modo, Italico, Sublinhado, Expandido, Negrito : Integer) : boolean ;
begin
  // Legenda modo NORMAL, ELITE ou CONDENSADO.
  // modo       := 1; // condensado
  // modo       := 2  // normal
  // modo       := 3  // elite
  // Legenda Negrito, Itálico, Sublinhado e Expandido
  // Negrito    := 1;
  // Italico    := 1;
  // Sublinhado := 1;
  // Expandido  := 1;
  if FormataTX(Texto, Modo, Italico, Sublinhado, Expandido, Negrito)<=0 then
    ImprimeTextoFormatado_NAOFISCAL_Bematech_MP20_CI := False
  else
    ImprimeTextoFormatado_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function EnviaComando_NAOFISCAL_Bematech_MP20_CI(Texto:string; TamBuffer:integer) : boolean ;
begin
  if ComandoTX(Texto, TamBuffer) <= 0 then
    EnviaComando_NAOFISCAL_Bematech_MP20_CI := False
  else
    EnviaComando_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function Status_Porta_NAOFISCAL_Bematech_MP20_CI : boolean ;
begin
  if Status_Porta <= 0 then
    Status_Porta_NAOFISCAL_Bematech_MP20_CI := False
  else
    Status_Porta_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function AutenticaDoc_NAOFISCAL_Bematech_MP20_CI(Texto:string; Tempo:integer) : boolean ;
begin
  if AutenticaDoc(Texto, Tempo) <= 0 then
    AutenticaDoc_NAOFISCAL_Bematech_MP20_CI := False
  else
    AutenticaDoc_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function Le_Status_NAOFISCAL_Bematech_MP20_CI : boolean ;
begin
  if Le_Status <= 0 then
    Le_Status_NAOFISCAL_Bematech_MP20_CI := False
  else
    Le_Status_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function Le_Status_Gaveta_NAOFISCAL_Bematech_MP20_CI : boolean ;
begin
  if Le_Status_Gaveta <= 0 then
    Le_Status_Gaveta_NAOFISCAL_Bematech_MP20_CI := False
  else
    Le_Status_Gaveta_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function InserirDocumento_NAOFISCAL_Bematech_MP20_CI : boolean ;
begin
  if DocumentInserted <= 0 then
    InserirDocumento_NAOFISCAL_Bematech_MP20_CI := False
  else
    InserirDocumento_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function ConfiguraTamanhoExtrato_NAOFISCAL_Bematech_MP20_CI(NumeroLinhas:integer) : boolean ;
begin
  if ConfiguraTamanhoExtrato(NumeroLinhas) <= 0 then
    ConfiguraTamanhoExtrato_NAOFISCAL_Bematech_MP20_CI := False
  else
    ConfiguraTamanhoExtrato_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function HabilitaExtratoLongo_NAOFISCAL_Bematech_MP20_CI(Flag:integer) : boolean ;
begin
  if HabilitaExtratoLongo(Flag) <= 0 then
    HabilitaExtratoLongo_NAOFISCAL_Bematech_MP20_CI := False
  else
    HabilitaExtratoLongo_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function HabilitaEsperaImpressao_NAOFISCAL_Bematech_MP20_CI(Flag:integer) : boolean ;
begin
  if HabilitaEsperaImpressao(Flag) <= 0 then
    HabilitaEsperaImpressao_NAOFISCAL_Bematech_MP20_CI := False
  else
    HabilitaEsperaImpressao_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function EsperaImpressao_NAOFISCAL_Bematech_MP20_CI : boolean ;
begin
  if EsperaImpressao <= 0 then
    EsperaImpressao_NAOFISCAL_Bematech_MP20_CI := False
  else
    EsperaImpressao_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function ConfiguraModeloImpressora_NAOFISCAL_Bematech_MP20_CI(ModeloImpressora:integer) : boolean ;
begin
  if ConfiguraModeloImpressora(ModeloImpressora) <= 0 then
    ConfiguraModeloImpressora_NAOFISCAL_Bematech_MP20_CI := False
  else
    ConfiguraModeloImpressora_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function AcionaGuilhotina_NAOFISCAL_Bematech_MP20_CI(Modo:integer) : boolean ;
begin
  if AcionaGuilhotina(Modo) <= 0 then
    AcionaGuilhotina_NAOFISCAL_Bematech_MP20_CI := False
  else
    AcionaGuilhotina_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function HabilitaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI(Flag:integer) : boolean ;
begin
  if HabilitaPresenterRetratil(Flag) <= 0 then
    HabilitaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI := False
  else
    HabilitaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function ProgramaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI(Tempo:integer) : boolean ;
begin
  if ProgramaPresenterRetratil(Tempo) <= 0 then
    ProgramaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI := False
  else
    ProgramaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function CaracterGrafico_NAOFISCAL_Bematech_MP20_CI(Texto:string; TamBuffer:integer) : boolean ;
begin
  if CaracterGrafico(Texto, TamBuffer) <= 0 then
    CaracterGrafico_NAOFISCAL_Bematech_MP20_CI := False
  else
    CaracterGrafico_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

function VerificaPapel_NAOFISCAL_Bematech_MP20_CI : boolean ;
begin
  if VerificaPapelPresenter <= 0 then
    VerificaPapel_NAOFISCAL_Bematech_MP20_CI := False
  else
    VerificaPapel_NAOFISCAL_Bematech_MP20_CI := True ;
end ;

end.
