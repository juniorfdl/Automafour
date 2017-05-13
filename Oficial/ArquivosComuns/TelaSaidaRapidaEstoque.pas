unit TelaSaidaRapidaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, VarSys;

type
  TFormTelaSaidaRapidaEstoque = class(TForm)
    GroupValoresAtuais: TGroupBox;
    Label34: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EditUltCompra: TCurrencyEdit;
    EditCustoMedio: TCurrencyEdit;
    EditFrete: TCurrencyEdit;
    EditIPI: TCurrencyEdit;
    EditMargemVarejo: TCurrencyEdit;
    EditValorVendaVarejo: TCurrencyEdit;
    EditValorVendaAtacado: TCurrencyEdit;
    EditMargemAtacado: TCurrencyEdit;
    EditSaldoEstoqueatual: TCurrencyEdit;
    GroupNovosValores: TGroupBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    BtnFecharTela: TSpeedButton;
    Label9: TLabel;
    EditQtdeSaida: TCurrencyEdit;
    LabelGravar: TSpeedButton;
    Label18: TLabel;
    EditDespesa: TCurrencyEdit;
    Label21: TLabel;
    editCusto: TCurrencyEdit;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure LabelGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    VendaOldVarejo, VendaOldAtacado : Double;
  public
    { Public declarations }
  end;

var
  FormTelaSaidaRapidaEstoque: TFormTelaSaidaRapidaEstoque;

implementation

uses DataModulo, UnitLibrary, CadastroProdutos;

{$R *.dfm}

procedure TFormTelaSaidaRapidaEstoque.BtnFecharTelaClick(
  Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TFormTelaSaidaRapidaEstoque.LabelGravarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFormTelaSaidaRapidaEstoque.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=char(13) Then
    Perform(Wm_NextDlgCtl,0,0)

end;

procedure TFormTelaSaidaRapidaEstoque.FormKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 120 then
  begin
    key := 0;
    labelGravar.Click;
  end;

end;

end.
