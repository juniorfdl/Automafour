unit TelaDadosCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ConerBtn, RXCtrls, Mask, DB,
  DBTables, RxQuery, Grids, ToolEdit, CurrEdit, jpeg, AdvSmoothPanel;

type
  TFormTelaDadosCliente = class(TForm)
    ScrollBoxFundo: TScrollBox;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Nome: TEdit;
    CPFCGC: TEdit;
    Endereco: TEdit;
    Cidade: TEdit;
    FONE: TEdit;
    Obs: TEdit;
    LblSubTotal: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    LblTituloTela: TRxLabel;
    RxLabel6: TRxLabel;
    email: TEdit;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosCliente: TFormTelaDadosCliente;

implementation

uses TelaFechamentoVenda, UnitLibrary;

{$R *.dfm}

procedure TFormTelaDadosCliente.BtnOKClick(Sender: TObject);
begin
  NomeClienteVenda      := Nome.Text;
  DocumentoClienteVenda := CPFCGC.Text;
  EnderecoClienteVenda  := Endereco.Text;
  CidadeClienteVenda    := Cidade.Text;
  FoneClienteVenda      := FONE.Text;
  OBSImpressaoCupom     := Obs.Text;
  EmailCliente          := email.Text;
  ModalResult := mrOk;
end;

procedure TFormTelaDadosCliente.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormTelaDadosCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormTelaDadosCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl,0,0);
  if Key = VK_Escape then
    ModalResult := mrCancel;
end;

procedure TFormTelaDadosCliente.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
  Nome.Text             := NomeClienteVenda;
  CPFCGC.Text           := DocumentoClienteVenda;
  Endereco.Text         := EnderecoClienteVenda;
  Cidade.Text           := CidadeClienteVenda;
  Fone.Text             := FoneClienteVenda;
  Obs.Text              := OBSImpressaoCupom ;
end;

end.
