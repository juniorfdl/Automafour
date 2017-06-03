{
Este exemplo usa duas funções CGC e CPF, junto com estes
arquivos, existe um arquivo CGC.TXT e CPF.TXT os quais
estão o
Logaritimo destas funções


Exemplo Criado por :

Marcos Paulo
marcos_paulo@bigfoot.com
www.geocities.com/mpgo_2000/
}



unit fCGC_CPF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function cpf(num: string): boolean;
    function cgc(num: string): boolean;

  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

function TForm1.cpf(num: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[10]+num[11];
 if calculado=digitado then
   cpf:=true
  else
   cpf:=false;
end;

function TForm1.cgc(num: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);  // Retira cada numero do Edit, e joda p/ variavel
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 n10:=StrToInt(num[10]);
 n11:=StrToInt(num[11]);
 n12:=StrToInt(num[12]);
 d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[13]+num[14];
 if calculado=digitado then
   cgc:=true
  else
   cgc:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  If not cgc(Edit1.text) then  //Se a funçao CGC retornar Falso, Nao libera o Focus
  Begin
    ShowMessage('CGC Inválido !!');
    Edit1.SetFocus;
  End
  Else
    ShowMessage('CGC OK !!')
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  If not cpf(Edit2.text) then
  Begin
    ShowMessage('CPF Inválido !!');
    Edit2.SetFocus;
  End
  Else
    ShowMessage('CPF OK !!')

end;

end.
