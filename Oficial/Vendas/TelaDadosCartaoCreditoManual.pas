unit TelaDadosCartaoCreditoManual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, Buttons, ConerBtn, Mask, ToolEdit;

type
  TFormTelaDadosCartaoCreditoManual = class(TForm)
    Label4: TLabel;
    EditData: TDateEdit;
    Label1: TLabel;
    EditHora: TEdit;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    LblNomeSistema: TRxLabel;
    Label2: TLabel;
    EditProvedor: TEdit;
    Label3: TLabel;
    EditInstituicaoNSU: TEdit;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosCartaoCreditoManual: TFormTelaDadosCartaoCreditoManual;

implementation

uses TelaFechamentoVenda;

{$R *.dfm}

procedure TFormTelaDadosCartaoCreditoManual.BtnOKClick(Sender: TObject);
begin
  FormtelaFechamentoVenda.DataTransacaoCartao  := EditData.Text;
  FormtelaFechamentoVenda.HoraTransacaoCartao  := EditHora.Text;
  FormtelaFechamentoVenda.NSUProvedorCartao    := EditProvedor.Text;
  FormtelaFechamentoVenda.NSUInstituicaoCartao := EditInstituicaoNSU.Text;
  Close;
end;

procedure TFormTelaDadosCartaoCreditoManual.BtnCancelarClick(
  Sender: TObject);
begin
  FormtelaFechamentoVenda.DataTransacaoCartao  := '';
  FormtelaFechamentoVenda.HoraTransacaoCartao  := '';
  FormtelaFechamentoVenda.NSUProvedorCartao    := '';
  FormtelaFechamentoVenda.NSUInstituicaoCartao := '';
  Close;  
end;

procedure TFormTelaDadosCartaoCreditoManual.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl,0,0);
end;

end.
