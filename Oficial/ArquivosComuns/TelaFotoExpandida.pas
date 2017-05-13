unit TelaFotoExpandida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, RXCtrls;

type
  TFormTelaFotoExpandida = class(TForm)
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    Foto: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaFotoExpandida: TFormTelaFotoExpandida;

implementation

{$R *.dfm}

procedure TFormTelaFotoExpandida.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Close;
end;

procedure TFormTelaFotoExpandida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
