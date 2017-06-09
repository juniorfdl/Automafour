unit ProcessandoNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TFormProcessandoNFE = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessandoNFE: TFormProcessandoNFE;
  lExitCode: dword;
  
implementation

uses  CadastroNotaFiscal;

{$R *.dfm}

procedure TFormProcessandoNFE.Timer1Timer(Sender: TObject);
begin
  if GetExitCodeProcess(lProcesso.hProcess, lExitCode) then
  if (lExitCode<>STILL_ACTIVE) then
  close;
end;

procedure TFormProcessandoNFE.FormShow(Sender: TObject);
var
  dir:string;
begin
getdir(0,dir);

end;

end.
