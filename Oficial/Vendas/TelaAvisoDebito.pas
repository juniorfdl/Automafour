unit TelaAvisoDebito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormTelaAvisoDebito = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblLimiteInicial: TLabel;
    lblParcelas: TLabel;
    lbljuros: TLabel;
    lblCompra: TLabel;
    lblSaldoFinal: TLabel;
    lblCliente: TLabel;
    Shape1: TShape;
    lblSaldoAtual: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAvisoDebito: TFormTelaAvisoDebito;

implementation

{$R *.dfm}

procedure TFormTelaAvisoDebito.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTelaAvisoDebito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
