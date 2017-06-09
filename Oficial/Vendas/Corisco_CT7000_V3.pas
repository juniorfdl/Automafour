unit Corisco_CT7000_V3;

interface

uses ComObj,
     RXCtrls,
     RxQuery,
     Forms,
     DBTables,
     SysUtils,
     Dialogs,
     Windows,
     Messages ;

const WM_ETX = WM_USER + 1003;

  function  AbrirPortaECF_Corisco_CT3000_V3(Porta : string) : boolean ;
  function  FecharPortaECF_Corisco_CT3000_V3 : boolean ;
  function  BuscaRetorno_Corisco_CT3000_V3 : string ;
  procedure LeituraX_Corisco_CT3000_V3 ;
  procedure AbreECF_Corisco_CT3000_V3 ;
  procedure Reducao_Z_Corisco_CT3000_V3 ;
  procedure AbrirGaveta_Corisco_CT3000_V3 ;
  function  AbrirCupomFiscal_Corisco_CT3000_V3(Var NroCupom : String) : boolean ;
  function  ImprimeItem_Corisco_CT3000_V3(Codigo, Descricao, Tributo : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
  function  CancelaItem_Corisco_CT3000_V3(Codigo,Tipo,Indice:String;Qtde,Desconto,VlrItem: Double) : boolean ;
  function  EfetuaFPCupom_Corisco_CT3000_V3(FPNum:String;Valor : Double) : boolean ;
  function  IniciaFechamentoCupom_Corisco_CT3000_V3(AcrescDesc : Double; Tipo : Char) : boolean ;
  function  FecharCupomFiscal_Corisco_CT3000_V3(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery ; NomeCli,EnderecoCli,CidadeCli, DocumentoCli,IDCupom, Vendedor, Plano:string) : boolean ;
  function  CancelarCupomFiscal_Corisco_CT3000_V3(Tipo : String) : boolean ;
  function  EmiteCNFV_Corisco_CT3000_V3(Titulo,Texto:string) : boolean ;
  function  LinhaTextoLivre_Corisco_CT3000_V3(Texto:String) : boolean ;
  function  AbreCNFNV__Corisco_CT3000_V3():Boolean;
  function  FechaCNFNV__Corisco_CT3000_V3():Boolean;
  function  EmiteCNFNV_Corisco_CT3000_V3(Identificador, Texto, Texto1:string; Valor:Double) : boolean ;
  function  Autenticacao_Corisco_CT3000_V3(Valor : Double; Texto : String) : boolean ;
  function  RetornaNroCupom():Integer;
  procedure Retorno(Codigo : integer) ;
  function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;

// Funcoes de acesso a DLL ecfcom32.
function eAbrePorta(NumP,BRate: Longint;Wnd:Hwnd):integer;stdcall;external'Ecfcom32.dll';
function eEnviaString(var s: string): integer;stdcall;external'Ecfcom32.dll';
function eFechaPorta:integer;stdcall;external'Ecfcom32.dll';
function eHouveEtx:boolean;stdcall;external'Ecfcom32.dll';
function eLimpafEtx:integer;stdcall;external'Ecfcom32.dll';
function eRecebeString(pB: pchar; var t: word): integer; stdcall; external 'Ecfcom32.dll';
//function eRecebeString(pB:pchar;var t:word):integer;stdcall;external'Ecfcom32.dll';
function efQtdRxBuf: word; stdcall; external'Ecfcom32.dll';
function fRecebedadosRX(pB: pchar; timein: word): integer;stdcall;external 'Ecfcom32.dll';
function fHouveEtx: integer; stdcall; external 'Ecfcom32.dll';

Var
  Ctv3     : variant ;
  Comando  : AnsiString ;
  Mensagem : AnsiString ;
  Dado     : AnsiString ;
  //-------------------\\
  i,r,PortaECF: Integer ;
  s        : String ;
  c        : String ;
  v,rxdados : PChar ;
  t        : Word;     

implementation

uses UnitLibrary, DataModulo, UnitCheckoutLibrary;

function BuscaRetorno_Corisco_CT3000_V3 : string ;
Var
  Arquivo : TextFile;
  Retorno,
  Linha   : String;
  I       : Integer;
begin
end ;
function  AbreCNFNV__Corisco_CT3000_V3():Boolean;
begin
  //ABRE CUPOM NAO VINCULADO
  S := Chr(27) + '7N';
  I := eEnviaString(S);
  if i = 0 then
    AbreCNFNV__Corisco_CT3000_V3 := True
  else
    AbreCNFNV__Corisco_CT3000_V3 := False;

end;
function  FechaCNFNV__Corisco_CT3000_V3():Boolean;
begin
  //FECHA CUPOM NAO VINCULADO
  S := Chr(27) + '7F';
  I := eEnviaString(S);
  if i = 0 then
    FechaCNFNV__Corisco_CT3000_V3 := True
  else
    FechaCNFNV__Corisco_CT3000_V3 := False;

end;
function AbrirPortaECF_Corisco_CT3000_V3(Porta : string) : boolean ;
begin
  if PortaECFAtual = 'COM1' then
    PortaECF := 0;
  if PortaECFAtual = 'COM2' then
    PortaECF := 1;
  if PortaECFAtual = 'COM3' then
    PortaECF := 2;
  if PortaECFAtual = 'COM4' then
    PortaECF := 3;
  I := eAbrePorta(PortaECF,3,0);
  if I = 0 then
    begin
      AbrirPortaECF_Corisco_CT3000_V3 := True;
    end
  else
    begin
      InformaG('Erro na abertura da Porta Serial.' + #13 + 'Erro: ' + Mensagem) ;
      AbrirPortaECF_Corisco_CT3000_V3 := False;
    end;

end ;

function FecharPortaECF_Corisco_CT3000_V3 : boolean ;
begin
  I := eFechaPorta;
  if i = 0 then
    begin
      FecharPortaECF_Corisco_CT3000_V3 := True;
    end
  else
    begin
      InformaG('Erro no Fechamento Porta Serial.' + #13 + 'Erro: ' + Mensagem);
      FecharPortaECF_Corisco_CT3000_V3 := False;
    end;
end ;

procedure LeituraX_Corisco_CT3000_V3 ;
begin
  S := Chr(27) + '1X}';
  I := eEnviaString(S);
end ;

procedure AbreECF_Corisco_CT3000_V3 ;
begin
  if PortaECFAtual = 'COM1' then
    PortaECF := 0;
  if PortaECFAtual = 'COM2' then
    PortaECF := 1;
  if PortaECFAtual = 'COM3' then
    PortaECF := 2;
  if PortaECFAtual = 'COM4' then
    PortaECF := 3;
  AbrirPortaECF_Corisco_CT3000_V3(IntToStr(PortaECF));
  S := Chr(27) + '1A';
  I := eEnviaString(S);
  FecharPortaECF_Corisco_CT3000_V3;
end ;

procedure Reducao_Z_Corisco_CT3000_V3 ;
begin
  S := Chr(27) + '1F}';
  I := eEnviaString(S);
end ;

function  AbrirCupomFiscal_Corisco_CT3000_V3(Var NroCupom : String) : boolean ;
var i   : integer ;
    Arq : TextFile ;
    NumCup : string ;
begin
   NroCupom := IntToStr(RetornaNroCupom);
   s := chr(27) + '0V';
   i := eEnviaString(S);

   if i = 0 then
     AbrirCupomFiscal_Corisco_CT3000_V3 := True
    else
      AbrirCupomFiscal_Corisco_CT3000_V3 := False;
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
end;
function Zeros(Str:String; Tam:Integer; Orient:String) : String ;
Var Dif, i : integer ;
begin
  Dif := Tam - Length(Str) ;
  for i := 1 to Dif do
  begin
    if Orient = 'Esq' then
      Str := Str + '0' ;
    if Orient = 'Dir' then
      Str := '0' + Str ;
  End ;

  Zeros := Str ;
end ;
function  ImprimeItem_Corisco_CT3000_V3(Codigo, Descricao, Tributo : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
begin
  S := chr(27) + '0I' + FormatFloat('00000000',StrToFloat(Codigo)) + Copy(Descricao, 1, 30) + chr(13) + chr(13) + chr(13) + 'T' +
       Tributo + ConvFloatToStrECF(Qtde,6) + ConvFloatToStrECF(Vlrdesco,9) + ConvFloatToStrECF(Valor,9);

  i := eEnviaString(s);
  if i = 0 then
    ImprimeItem_Corisco_CT3000_V3 := True
  else
    ImprimeItem_Corisco_CT3000_V3 := False;
end ;

function  FecharCupomFiscal_Corisco_CT3000_V3(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery ; NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : boolean ;
var
  WSQL         : TQuery ;
  MsgFimCupom,
  FP, FV,
  AcrescDesc   : string ;
  TotalVista,
  TotalPrazo   : double ;
  ImprConfDiv  : boolean ;
begin
  Result := false ;

  if Application.FindComponent('DM') <> nil then
    WSQL := (Application.FindComponent('DM').FindComponent('SQLTemplate')  as TQuery) ;

  IniciaFechamentoCupom_Corisco_CT3000_V3(VlrAcrescDesc, TipoAcrescDesc[1]) ;

  //CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo  := 0 ;
  ImprConfDiv := false ;
  while not SQLFPPrazo.EOF do
    begin
      TotalPrazo :=  TotalPrazo + SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat ;
      FP:='';
      WSQL.Close ;
      WSQL.SQL.Clear ;
      WSQL.SQL.Add('select * from NUMERARIO Where NUMEICOD='+SQLFPPrazo.Fieldbyname('NUMEICOD').AsString);
      WSQL.SQL.Add('order by NUMEICOD') ;
      WSQL.Open ;
      WSQL.First ;
      while not WSQL.EOF do
        begin
          FP := WSQL.Fieldbyname('NUMEA30DESCR').AsString;
          if SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA5TIPO', WSQL.Fieldbyname('NUMEICOD').AsString) = 'CRD' then
            ImprConfDiv := true ;

          WSQL.Next ;
        end ;
      SQLFPPrazo.Next
    end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First ; TotalVista := 0;
  while not SQLFPVista.EOF do
    begin
      TotalVista := TotalVista + SQLFPVista.Fieldbyname('VALORPARC').AsFloat ;
      FV:='';
      WSQL.Close ;
      WSQL.SQL.Clear ;
      WSQL.SQL.Add('select * from NUMERARIO Where NUMEICOD= ' + SQLFPVista.Fieldbyname('NUMEICOD').AsString);
      WSQL.SQL.Add('order by NUMEICOD') ;
      WSQL.Open ;
      WSQL.First ;
      while not WSQL.EOF do
        begin
          FV := WSQL.Fieldbyname('NUMEA30DESCR').AsString;
          WSQL.Next ;
        end ;
      SQLFPVista.Next ;
    end ;
  TotalPrazo := 0;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  // TOTALIZAR CUPOM
  s := chr(27) + '0T';
  i := eEnviaString(S);

  if TotalPrazo > 0 then
    begin
      EfetuaFPCupom_Corisco_CT3000_V3(FP, TotalPrazo) ;
    end ;
  if TotalVista > 0 then
    Begin
      EfetuaFPCupom_Corisco_CT3000_V3(RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPVista.Fieldbyname('NUMEICOD').AsString), TotalVista);
    End ;

  if (Application.FindComponent('FormTelaFechamentoVenda') <> nil) and
     (ImprimeDadosClienteCupom = 'S') and (NomeCli <> SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').AsString+'"')) then
    begin
      // TOTALIZAR CUPOM
      s := chr(27) + '0L'+ 'CUPOM(ID).: ' + IDCupom + Chr(13) +
                           'VENDEDOR.: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption) + Chr(13) +
                           'PLANO...: ' + ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption)  + Chr(13) +
                           'CLIENTE..: ' + Copy(NomeCli,     01, 36) + Chr(13) +
                           'ENDERECO.: ' + Copy(EnderecoCli, 01, 36) + Chr(13) +
                           '            ' + Copy(EnderecoCli, 37, 30) + Chr(13) +
                           'CIDADE..: ' + Copy(CidadeCli,   01, 36) + Chr(13) +
                           'DOCUMENTO.: ' + Copy(DocumentoCli,01, 36) +
                           '}';


      i := eEnviaString(S);
    end;
  // FECHAR CUPOM
  s := chr(27) + '0F';
  i := eEnviaString(S);
  if i = 0 then
    FecharCupomFiscal_Corisco_CT3000_V3 := True
  else
    FecharCupomFiscal_Corisco_CT3000_V3 := False;
  Result := True;
end ;

function IniciaFechamentoCupom_Corisco_CT3000_V3(AcrescDesc : Double; Tipo : Char) : boolean ;
begin
  if (AcrescDesc > 0) and (Tipo = 'A') then
    begin
      S := Chr(27) + '0AV' + ConvFloatToStrECF(AcrescDesc,9);
      I := eEnviaString(S);
      if I = 0 then
        IniciaFechamentoCupom_Corisco_CT3000_V3 := True
      else
        IniciaFechamentoCupom_Corisco_CT3000_V3 := False;
    end;
  if (AcrescDesc > 0) and (Tipo = 'D') then
    begin
      S := Chr(27) + '0AD'+ 'V'+ ConvFloatToStrECF(AcrescDesc,9);
      I := eEnviaString(S);
      if I = 0 then
        IniciaFechamentoCupom_Corisco_CT3000_V3 := True
      else
        IniciaFechamentoCupom_Corisco_CT3000_V3 := False;
    end ;
end ;

function CancelarCupomFiscal_Corisco_CT3000_V3(Tipo : String) : boolean ;
begin
  s := chr(27) + '0CC}';
  i := eEnviaString(s);
  if i = 0 then
    CancelarCupomFiscal_Corisco_CT3000_V3 := True
  else
    CancelarCupomFiscal_Corisco_CT3000_V3 := False;
end ;

function EfetuaFPCupom_Corisco_CT3000_V3(FPNum:String;Valor : Double) : boolean ;
var
  Mens : String;
begin
  S := Chr(27) + '0P' + FPNum + '' + Chr(13) + '' + Chr(13) + ConvFloatToStrECF(Valor,12);
  I := eEnviaString(S);
  if I = 0 then
    EfetuaFPCupom_Corisco_CT3000_V3 := True
  else
    EfetuaFPCupom_Corisco_CT3000_V3 := False;
end;

function  EmiteCNFV_Corisco_CT3000_V3(Titulo,Texto:string) : boolean ;
begin
  S := Chr(27) + '7V' + Titulo + Texto + '}';
  I := eEnviaString(S);
  if I = 0 then
    EmiteCNFV_Corisco_CT3000_V3 := True
  else
    EmiteCNFV_Corisco_CT3000_V3 := False;
end ;

function LinhaTextoLivre_Corisco_CT3000_V3(Texto:String) : boolean ;
begin
  //FormataTX(#27'|67|' + Copy(Texto, 1, 620) + '|'#27);
end ;

function EmiteCNFNV_Corisco_CT3000_V3(Identificador, Texto, Texto1:string; Valor:Double) : boolean ;
var
  Bruto : String ;
begin
  //IMPRIME ITEM
  S := Chr(27) + '7I' + Identificador + Texto + Chr(13) + Texto1 + Chr(13) + ConvFloatToStrECF(Valor,12);
  I := eEnviaString(S);
  if I = 0 then
    EmiteCNFNV_Corisco_CT3000_V3 := True
  else
    EmiteCNFNV_Corisco_CT3000_V3 := False;

end ;

function Autenticacao_Corisco_CT3000_V3(Valor : Double; Texto : String) : boolean ;
var
  Autent : String;
begin
  S := Chr(27) + '7A' + '1' + ConvFloatToStrECF(Valor,12) + '' + Chr(13) + Texto + Chr(13);
  I := eEnviaString(S);
  if I = 0 then
    Autenticacao_Corisco_CT3000_V3 := True
  else
    Autenticacao_Corisco_CT3000_V3 := False;
end ;

procedure AbrirGaveta_Corisco_CT3000_V3 ;
begin
  S := Chr(27) + 'K';
  I := eEnviaString(S);
end ;

function CancelaItem_Corisco_CT3000_V3(Codigo,Tipo,Indice:String;Qtde,Desconto,VlrItem: Double) : boolean ;
begin
  S := Chr(27) + '0CI' + FormatFloat('00000000',StrToFloat(Codigo)) + 'T' + Indice + ConvFloatToStrECF(Qtde,6) +ConvFloatToStrECF(Desconto,9) + ConvFloatToStrECF(VlrItem,9);
  I := eEnviaString(S);
  if I = 0 then
    CancelaItem_Corisco_CT3000_V3 := True
  else
    CancelaItem_Corisco_CT3000_V3 := False;
end ;

procedure Retorno(Codigo : integer) ;
begin
  case Codigo of
    00: begin
        end ;
    01: begin
        end ;
    02: begin
        end ;
    03: begin
        end ;
    04: begin
        end ;
    05: begin
        end ;
    06: begin
        end ;
    07: begin
        end ;
    08: begin
        end ;
    09: begin
        end ;
    10: begin
        end ;
    11: begin
        end ;
    12: begin
        end ;
    13: begin
        end ;
    14: begin
        end ;
    15: begin
         end ;
  end ;
end ;
function  RetornaNroCupom():Integer;
var
S2,R,Cupom : String;
S1,P : PChar;
DataSize : Word;
begin
  eLimpafEtx;
  S := Chr(27) + '4t003';
  I := eEnviaString(S);
  Sleep(500);
  R := '';
  Application.ProcessMessages;
  getmem(s1,512);
  eRecebeString(s1,datasize);
  Application.ProcessMessages;  
  setlength(S2,512);
  S2 := s1;
  freemem(s1);
  P := pchar(S2);
  while DataSize > 0 do
    begin
      case p^ of
        #03: begin
               R := R + '<ETX>';
             end;
      else
        R := R + p^;
      end;
        dec( DataSize );
        inc( p );
    end;
  Cupom := Copy(R,1,Pos('<',R)-1);  
  RetornaNroCupom := StrToInt(Cupom);
end;
end.

