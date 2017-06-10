unit RelatorioOrdensListadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFormListagemOrdemMecanica = class(TForm)
    QuickListagemOrdens: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    procedure QRExpr3Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListagemOrdemMecanica: TFormListagemOrdemMecanica;

implementation

uses CadastroMecOrdem;

{$R *.dfm}

procedure TFormListagemOrdemMecanica.QRExpr3Print(sender: TObject;
  var Value: String);
begin
  if Value <> '' then
    Value := FormatFloat(',0.00',StrToFloat(value));
end;

end.
