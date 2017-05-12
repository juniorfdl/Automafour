unit TelaAutenticaUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RXCtrls;

type
  TFormTelaAutenticaUsuario = class(TForm)
    RxLabel1: TRxLabel;
    EditSenha: TMaskEdit;
    RxLabel2: TRxLabel;
    procedure EditSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAutenticaUsuario: TFormTelaAutenticaUsuario;

implementation

{$R *.dfm}

procedure TFormTelaAutenticaUsuario.EditSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then ModalResult := MrOK;
  if Key = 27 then ModalResult := MrCancel;
  if Key = 115 then ModalResult := MrOK;
end;

end.
