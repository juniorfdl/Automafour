unit StatusNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Animate, GIFCtrl, jpeg;

type
  TfrmStatusNFe = class(TForm)
    Panel1: TPanel;
    Panel9: TPanel;
    Image1: TImage;
    lblStatus: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatusNFe: TfrmStatusNFe;

implementation

{$R *.dfm}

procedure TfrmStatusNFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
