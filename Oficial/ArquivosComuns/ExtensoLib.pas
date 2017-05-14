unit ExtensoLib;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Dialogs, StdCtrls;

type  Tnumeros = array[1..10] of string[15];
      Tmoeda   = array[1..4,1..2] of string[10];
var
  cTexto, cValor1,
  cPosicao1, cPosicao2,
  cPosicao3, cPosicao4 : string;
  cTipoMoeda           : Byte;
  ValorPorExtenso      : string ;
  VExt                 : array[0..1] of string ;

const
aUnidade : Tnumeros = ('UM ','DOIS ',' TRES ',' QUATRO ',' CINCO ',' SEIS ',' SETE ',' OITO ',' NOVE ','');
aDezena  : Tnumeros = ('DEZ ','VINTE ','TRINTA ','QUARENTA ','CINQUENTA ','SESSENTA ','SETENTA ','OITENTA ','NOVENTA ','');
aDezena2 : Tnumeros = ('DEZ ','ONZE ',' DOZE ','TREZE ','QUATORZE ','QUINZE ','DEZESSEIS ',
           'DEZESSETE ','DEZOITO ','DEZENOVE ');
aCentena : Tnumeros = ('CENTO ','DUZENTOS ','TREZENTOS ','QUATROCENTOS ','QUINHENTOS ','SEISCENTOS ',
           'SETECENTOS ','OITOCENTOS ','NOVECENTOS ','');
aMilhar  : Tnumeros = ('MIL ','MILHAO ','MILHOES ','','','','','','','');
aMoeda   : Tmoeda   = (('CRUZEIRO ','CRUZEIROS '),('DOLAR ','DOLARES '),('REAL ','REAIS '),('','') );
aCentavo : Tnumeros = ('CENTAVO','CENTAVOS','','','','','','','','');

procedure ValorExtenso(var VExt: array of string; nValor:Real ; cTextoIni,cTextoFim: string;
          nLinhas,nLargura: integer; cResto: Char; nMoeda: Integer);

procedure ValorExtenso2(var VExt: array of string; nValor:Real ; cTextoIni,cTextoFim: string;
          nLinhas,nLargura: integer; nMoeda: Integer);

implementation

function Alltrim(Text : string) : string;
begin
while Pos(' ',Text) > 0 do
      Delete(Text,Pos(' ',Text),1);
Result := Text;
end;

function Rtrim(Text : string) : string;
var
  n : integer;
begin
  for n := length(Text) downto 1 do
    begin
       if Copy(Text,n,1) <> ' ' then break;
       Delete(Text,n,1);
    end;
  Result := Text;
end;

function BuscaDireita(Busca,Text : string) : integer;
var n,retorno : integer;
begin
retorno := 0;
for n := length(Text) downto 1 do
   begin
      if Copy(Text,n,1) = Busca then
         begin
            retorno := n;
            break;
         end;
   end;
Result := retorno;
end;

function BuscaTroca(Text,Busca,Troca : string) : string;
var n : integer;
begin
for n := 1 to length(Text) do
   begin
      if Copy(Text,n,1) = Busca then
         begin
            Delete(Text,n,1);
            Insert(Troca,Text,n);
         end;
   end;
Result := Text;
end;

function Repete(Caractere : char; nCaracteres : integer) : string;
var n : integer; CadeiaCar : string;
begin
CadeiaCar := '';
for n := 1 to nCaracteres do
    CadeiaCar := CadeiaCar + ' ' + Caractere;
Result := CadeiaCar;
end;

function Repete2(nCaracteres : integer) : string;
var n : integer; CadeiaCar : string;
begin
CadeiaCar := '';
for n := 1 to nCaracteres do
    CadeiaCar := CadeiaCar;
Result := CadeiaCar;
end;

function StrZero(Num : Real ; Zeros,Deci: integer): string;
var tam,z : integer;
    res,zer : string;
begin
Str(Num:Zeros:Deci, res);
res := Alltrim(res);
tam := length(res);
zer := '';
for z := 1 to (Zeros-tam) do
    zer := zer + '0';
Result := zer+res;
end;

procedure Converte(cNumero: string ; nCasas: byte);
var cNumero1,cNumero2,cNumero3,cNumero4 : string;
begin
if cNumero = '000' then exit;
cNumero1 := Copy(cNumero,1,1);
cNumero2 := Copy(cNumero,2,1);
cNumero3 := Copy(cNumero,length(cNumero),1);
cNumero4 := Copy(cNumero,length(cNumero)-1,2);
if nCasas = 4 then
   begin
   if StrToInt(cPosicao1+cPosicao2+cPosicao3) <> 0 then
      cTexto := cTexto + ' E ';
   end;
if cNumero1 <> '0' then
   begin
   if (cNumero4 = '00') and (cNumero1 = '1') then
      cTexto := cTexto + 'CEM '
   else
      cTexto := cTexto + aCentena[StrToInt(cNumero1)];
   end;
if (cNumero4 >= '10') and (cNumero4 <= '19') then
   begin
   if (cNumero1 <> '0') then
      cTexto := cTexto + 'E '+aDezena2[StrToInt(cNumero4)-9]
   else
      cTexto := cTexto + aDezena2[StrToInt(cNumero4)-9];
   end;
if cNumero2 >= '2' then
   begin
   if cNumero1 <> '0' then
      cTexto := cTexto + 'E '+aDezena[StrToInt(cNumero2)]
   else
      cTexto := cTexto + aDezena[StrToInt(cNumero2)];
   end;
if (cNumero3 <> '0') and ((cNumero4 < '10') or (cNumero4 > '19')) then
   begin
   if (cNumero1 <> '0') or (cNumero2 <> '0') then
      cTexto := cTexto + 'E '+aUnidade[StrToInt(cNumero3)]
   else
      cTexto := cTexto + aUnidade[StrToInt(cNumero3)];
   end;
Case nCasas of
1: begin
   if StrToInt(cNumero) = 1 then
      cTexto := cTexto + aMilhar[2]
   else
      cTexto := cTexto + aMilhar[3];
   end;
2: begin
   if StrToInt(cNumero) > 0 then
      cTexto := cTexto + aMilhar[1];
   end;
3: begin
   if StrToInt(cPosicao1+cPosicao2+cPosicao3) = 1 then
      cTexto := cTexto + aMoeda[cTipoMoeda,1]
   else
      cTexto := cTexto + aMoeda[cTipoMoeda,2];
   end;
4: begin
   if StrToInt(cNumero) = 1 then
      cTexto := cTexto + aCentavo[1]
   else
      cTexto := cTexto + aCentavo[2];
   end;
end;

end;

function Formata(Text: string; nLinhas,nTamanho : integer; cResto : Char): string;
var nTotLin,n1,n2,nInicio,nFalta,nAcha : integer; cTextoAux,cLinha : string;
begin
nTotLin := nLinhas; {length(cTexto) div nTamanho;}
nInicio := 1;
if nTotLin > nLinhas then
   nTotLin := nLinhas;
cTextoAux := '';
for n1 := 1 to nTotLin do
begin
   cLinha := Rtrim(Copy(Text,nInicio,nTamanho));
   while True do
   begin
      nFalta := nTamanho - length(cLinha);
      if (nFalta > 20) or (Copy(cLinha,length(cLinha),1) = '.') then
         break;
      if length(cLinha) < nTamanho then
         begin
            cLinha := BuscaTroca(cLinha,' ','|');
            for n2 := 1 to nFalta do
            begin
               nAcha := BuscaDireita('|',cLinha);
               if nAcha = 0 then break;
               Delete(cLinha,nAcha,1);
               Insert('  ',cLinha,nAcha);
            end;
            cLinha := BuscaTroca(cLinha,'|',' ');
         end;
      if length(Rtrim(cLinha)) = nTamanho then break;
   end;
   cTextoAux := cTextoAux + cLinha;
   nInicio := nInicio + nTamanho;
end;
cTextoAux := Copy(Rtrim(cTextoAux){+Repete(cResto,(nTamanho * nLinhas) div 2)},1,nTamanho * nLInhas);
Result := cTextoAux
end;

procedure ValorExtenso(var VExt: array of string; nValor:Real ; cTextoIni,cTextoFim: string;
          nLinhas,nLargura: integer; cResto: Char; nMoeda: Integer);
var n1,nInicio : integer;
begin
cTexto := '';
if nMoeda = 0 then
   cTipoMoeda := 3
else
   cTipoMoeda := nMoeda;
cValor1 := StrZero(nValor,13,2);
cPosicao1 := Copy(cValor1,2,3);
cPosicao2 := Copy(cValor1,5,3);
cPosicao3 := Copy(cValor1,8,3);
cPosicao4 := '0'+Copy(cValor1,(length(cValor1)-1),2);
Converte(cPosicao1,1);
cTexto := cTextoIni + ' ' + cTexto;
Converte(cPosicao2,2);
if (StrToInt(cPosicao2) <> 0) and (StrToInt(cPosicao3) <> 0) and (StrToInt(cPosicao4) = 0) then
   cTexto := cTexto + 'E ';
Converte(cPosicao3,3);
if (StrToInt(cPosicao3) = 0) and (StrToInt(cPosicao1+cPosicao2) <> 0) then
   cTexto := cTexto + aMoeda[cTipoMoeda,2];
Converte(cPosicao4,4);
cTexto := cTexto + ' '+cTextoFim;
cTexto := Formata(cTexto,nLinhas,nLargura,cResto);
nInicio := 1;
for n1 := 0 to nLinhas-1 do
    begin
       VExt[n1] := Copy(cTexto,nInicio,nLargura);
       nInicio := nInicio + nLargura;
    end;
end;

function Formata2(Text: string; nLinhas,nTamanho : integer ): string;
var nTotLin,n1,n2,nInicio,nFalta,nAcha : integer; cTextoAux,cLinha : string;
begin
nTotLin := nLinhas; {length(cTexto) div nTamanho;}
nInicio := 1;
if nTotLin > nLinhas then
   nTotLin := nLinhas;
cTextoAux := '';
for n1 := 1 to nTotLin do
begin
   cLinha := Rtrim(Copy(Text,nInicio,nTamanho));
   while True do
   begin
      nFalta := nTamanho - length(cLinha);
      if (nFalta > 20) or (Copy(cLinha,length(cLinha),1) = '.') then
         break;
      if length(cLinha) < nTamanho then
         begin
            cLinha := BuscaTroca(cLinha,' ','|');
            for n2 := 1 to nFalta do
            begin
               nAcha := BuscaDireita('|',cLinha);
               if nAcha = 0 then break;
               Delete(cLinha,nAcha,1);
               Insert('  ',cLinha,nAcha);
            end;
            cLinha := BuscaTroca(cLinha,'|',' ');
         end;
      if length(Rtrim(cLinha)) = nTamanho then break;
   end;
   cTextoAux := cTextoAux + cLinha;
   nInicio := nInicio + nTamanho;
end;
cTextoAux := Copy(Rtrim(cTextoAux)+Repete2(nTamanho * nLinhas),1,nTamanho * nLInhas);
Result := cTextoAux
end;


procedure ValorExtenso2(var VExt: array of string; nValor:Real ; cTextoIni,cTextoFim: string;
          nLinhas,nLargura: integer; nMoeda: Integer);
var n1,nInicio : integer;
    r  : char;
begin
cTexto := '';
if nMoeda = 0 then
   cTipoMoeda := 3
else
   cTipoMoeda := nMoeda;
cValor1 := StrZero(nValor,13,2);
cPosicao1 := Copy(cValor1,2,3);
cPosicao2 := Copy(cValor1,5,3);
cPosicao3 := Copy(cValor1,8,3);
cPosicao4 := '0'+Copy(cValor1,(length(cValor1)-1),2);
Converte(cPosicao1,1);
cTexto := cTextoIni + ' ' + cTexto;
Converte(cPosicao2,2);
if (StrToInt(cPosicao2) <> 0) and (StrToInt(cPosicao3) <> 0) and (StrToInt(cPosicao4) = 0) then
   cTexto := cTexto + 'E ';
Converte(cPosicao3,3);
if (StrToInt(cPosicao3) = 0) and (StrToInt(cPosicao1+cPosicao2) <> 0) then
   cTexto := cTexto + aMoeda[cTipoMoeda,2];
Converte(cPosicao4,4);
cTexto := cTexto + ' '+cTextoFim;
cTexto := Formata2(cTexto,nLinhas,nLargura);
nInicio := 1;
for n1 := 0 to nLinhas-1 do
    begin
       VExt[n1] := Copy(cTexto,nInicio,nLargura);
       nInicio := nInicio + nLargura;
    end;
end;

end.
