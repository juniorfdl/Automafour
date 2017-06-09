unit TelaLucro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RXCtrls, ComCtrls;

type
  TFormTelaLucro = class(TForm)
    RxLabel1: TRxLabel;
    LbVlrTotalVenda: TRxLabel;
    RxLabel2: TRxLabel;
    LBVlrTotalCusto: TRxLabel;
    RxLabel3: TRxLabel;
    LBVlrLucro: TRxLabel;
    RxLabel4: TRxLabel;
    LBMargem: TRxLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaLucro: TFormTelaLucro;

implementation

{$R *.DFM}


procedure TFormTelaLucro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Close;
end;

end.
