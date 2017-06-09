unit IMPNAOFISCAL;

interface

uses Dialogs, SysUtils, RxQuery , ShellApi, Windows, Forms;

function AbrirPortaNAOFISCAL(Impressora, Porta : String) : Boolean ;
function AbrirGaveta_NAOFISCAL(Impressora,Porta : String) : Boolean;
function FecharPortaNAOFISCAL(Impressora : String) : Boolean ;
function ImprimeTextoSimples_NAOFISCAL(Impressora,Texto:string) : boolean ;
function ImprimeTextoFormatado_NAOFISCAL(Impressora,Texto:string; modo, Italico, Sublinhado, Expandido, Negrito : Integer) : boolean ;
function EnviaComando_NAOFISCAL(Impressora,Texto:string; TamBuffer:integer) : boolean ;
function Status_Porta_NAOFISCAL(Impressora:string) : boolean ;
function AutenticaDoc_NAOFISCAL(Impressora,Texto:string; Tempo:integer) : boolean ;
function Le_Status_NAOFISCAL(Impressora:string) : boolean ;
function Le_Status_Gaveta_NAOFISCAL(Impressora:string) : boolean ;
function InserirDocumento_NAOFISCAL(Impressora:string) : boolean ;
function ConfiguraTamanhoExtrato_NAOFISCAL(Impressora:string;NumeroLinhas:integer) : boolean ;
function HabilitaExtratoLongo_NAOFISCAL(Impressora:string;Flag:integer) : boolean ;
function HabilitaEsperaImpressao_NAOFISCAL(Impressora:string;Flag:integer) : boolean ;
function EsperaImpressao_NAOFISCAL(Impressora:string) : boolean ;
function ConfiguraModeloImpressora_NAOFISCAL(Impressora:string;ModeloImpressora:integer) : boolean ;
function AcionaGuilhotina_NAOFISCAL(Impressora:string;Modo:integer) : boolean ;
function HabilitaPresenterRetratil_NAOFISCAL(Impressora:string;Flag:integer) : boolean ;
function ProgramaPresenterRetratil_NAOFISCAL(Impressora:string;Tempo:integer) : boolean ;
function CaracterGrafico_NAOFISCAL(Impressora,Texto:string; TamBuffer:integer) : boolean ;
function VerificaPapel_NAOFISCAL(Impressora:string) : boolean ;

implementation

uses BEMATECH_MP20_CI;

function AbrirPortaNAOFISCAL(Impressora, Porta : String) : Boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      AbrirPortaNAOFISCAL := AbrirPorta_NAOFISCAL_Bematech_MP20_CI(Porta) ;
  Except
    AbrirPortaNAOFISCAL := False;
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel');
  End ;
end ;

function AbrirGaveta_NAOFISCAL(Impressora,Porta : String) : Boolean;
var IntRet : integer;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      AbrirGaveta_NAOFISCAL := AbrirGaveta_NAOFISCAL_Bematech_MP20_CI(Porta);

  {  if (Impressora = 'DARUMA DUAL') then
      begin
        IntRet := Daruma_DUAL_AcionaGaveta;
        IntRet := Daruma_DUAL_ImprimirTexto(Pchar('<l></l>'),0);
        AbrirGaveta_NAOFISCAL := True;
      end;  }
    if (Impressora = 'DARUMA DR700') then
      AbrirGaveta_NAOFISCAL := True;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function FecharPortaNAOFISCAL(Impressora: String) : Boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      FecharPortaNAOFISCAL := FecharPorta_NAOFISCAL_Bematech_MP20_CI ;
  Except
    FecharPortaNAOFISCAL := False ;
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end ;

function ImprimeTextoSimples_NAOFISCAL(Impressora,Texto:string) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      ImprimeTextoSimples_NAOFISCAL := ImprimeTextoSimples_NAOFISCAL_Bematech_MP20_CI(Texto) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function ImprimeTextoFormatado_NAOFISCAL(Impressora,Texto:string; modo, Italico, Sublinhado, Expandido, Negrito : Integer) : boolean ;
var TestaRetorno  : Integer;
    TextoBematech : String;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      begin
        TextoBematech := Texto+chr(10);
        ImprimeTextoFormatado_NAOFISCAL := ImprimeTextoFormatado_NAOFISCAL_Bematech_MP20_CI(TextoBematech, Modo, Italico, Sublinhado, Expandido, Negrito) ;
      end;
  {  if (Impressora = 'DARUMA DUAL') then
      begin
        TestaRetorno := Daruma_DUAL_ImprimirTexto(Texto, 0) ;
        ImprimeTextoFormatado_NAOFISCAL := True ;
      end;
    if (Impressora = 'DARUMA DR700') then
      begin
        TestaRetorno := iImprimirTexto_DUAL_DarumaFramework(Texto, 0) ;
        ImprimeTextoFormatado_NAOFISCAL := True ;
      end; }
  Except
    ImprimeTextoFormatado_NAOFISCAL := False;
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function EnviaComando_NAOFISCAL(Impressora,Texto:string; TamBuffer:integer) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      EnviaComando_NAOFISCAL := EnviaComando_NAOFISCAL_Bematech_MP20_CI(Texto, TamBuffer) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function Status_Porta_NAOFISCAL(Impressora:string) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') then
      Status_Porta_NAOFISCAL := Status_Porta_NAOFISCAL_Bematech_MP20_CI;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function AutenticaDoc_NAOFISCAL(Impressora,Texto:string; Tempo:integer) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      AutenticaDoc_NAOFISCAL := AutenticaDoc_NAOFISCAL_Bematech_MP20_CI(Texto, Tempo) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function Le_Status_NAOFISCAL(Impressora:string) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      Le_Status_NAOFISCAL := Le_Status_NAOFISCAL_Bematech_MP20_CI ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function Le_Status_Gaveta_NAOFISCAL(Impressora:string) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      Le_Status_Gaveta_NAOFISCAL := Le_Status_Gaveta_NAOFISCAL_Bematech_MP20_CI ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function InserirDocumento_NAOFISCAL(Impressora:string) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      InserirDocumento_NAOFISCAL := InserirDocumento_NAOFISCAL_Bematech_MP20_CI ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function ConfiguraTamanhoExtrato_NAOFISCAL(Impressora:string; NumeroLinhas:integer) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      ConfiguraTamanhoExtrato_NAOFISCAL := ConfiguraTamanhoExtrato_NAOFISCAL_Bematech_MP20_CI(NumeroLinhas) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function HabilitaExtratoLongo_NAOFISCAL(Impressora:string; Flag:integer) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      HabilitaExtratoLongo_NAOFISCAL := HabilitaExtratoLongo_NAOFISCAL_Bematech_MP20_CI(Flag) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function HabilitaEsperaImpressao_NAOFISCAL(Impressora:string; Flag:integer) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      HabilitaEsperaImpressao_NAOFISCAL := HabilitaEsperaImpressao_NAOFISCAL_Bematech_MP20_CI(Flag) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function EsperaImpressao_NAOFISCAL(Impressora:string) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      EsperaImpressao_NAOFISCAL := EsperaImpressao_NAOFISCAL_Bematech_MP20_CI ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function ConfiguraModeloImpressora_NAOFISCAL(Impressora:string; ModeloImpressora:integer) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      ConfiguraModeloImpressora_NAOFISCAL := ConfiguraModeloImpressora_NAOFISCAL_Bematech_MP20_CI(ModeloImpressora) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function AcionaGuilhotina_NAOFISCAL(Impressora:string; Modo:integer) : boolean ;
begin
  Try
    if Impressora = 'BEMATECH MP-20 TH' then
      AcionaGuilhotina_NAOFISCAL := AcionaGuilhotina_NAOFISCAL_Bematech_MP20_CI(Modo) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function HabilitaPresenterRetratil_NAOFISCAL(Impressora:string; Flag:integer) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      HabilitaPresenterRetratil_NAOFISCAL := HabilitaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI(Flag) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function ProgramaPresenterRetratil_NAOFISCAL(Impressora:string; Tempo:integer) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      ProgramaPresenterRetratil_NAOFISCAL := ProgramaPresenterRetratil_NAOFISCAL_Bematech_MP20_CI(Tempo) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function CaracterGrafico_NAOFISCAL(Impressora,Texto:string; TamBuffer:integer) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      CaracterGrafico_NAOFISCAL := CaracterGrafico_NAOFISCAL_Bematech_MP20_CI(Texto, TamBuffer) ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

function VerificaPapel_NAOFISCAL(Impressora:string) : boolean ;
begin
  Try
    if (Impressora = 'BEMATECH MP-20 CI') or (Impressora = 'BEMATECH MP-20 TH') then
      VerificaPapel_NAOFISCAL := VerificaPapel_NAOFISCAL_Bematech_MP20_CI ;
  Except
    ShowMessage('Problemas ao tentar comunicar com a Impressora.'+chr(13)+'Possíveis causas: Impressora desligada, off-line ou sem papel') ;
  End ;
end;

end.
