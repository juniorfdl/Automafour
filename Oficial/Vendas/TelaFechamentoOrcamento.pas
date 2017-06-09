unit TelaFechamentoOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, CurrEdit, StdCtrls, Buttons, ConerBtn, ExtCtrls;

type
  TFormTelaFechamentoOrcamento = class(TForm)
    BtnOK: TConerBtn;
    Label2: TLabel;
    Obs: TMemo;
    Label1: TLabel;
    Frete: TCurrencyEdit;
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaFechamentoOrcamento: TFormTelaFechamentoOrcamento;

implementation

{$R *.dfm}

procedure TFormTelaFechamentoOrcamento.BtnOKClick(Sender: TObject);
begin
  Close ;
end;

end.
