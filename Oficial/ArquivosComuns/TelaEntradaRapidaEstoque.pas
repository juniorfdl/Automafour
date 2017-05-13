unit TelaEntradaRapidaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaEntradaRapidaEstoque = class(TForm)
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
    Label9: TLabel;
    EditQtdeComprada: TCurrencyEdit;
    Label10: TLabel;
    EditNovoValorCompra: TCurrencyEdit;
    Label11: TLabel;
    EditNovoIPI: TCurrencyEdit;
    Label12: TLabel;
    EditNovoFrete: TCurrencyEdit;
    Label13: TLabel;
    EditNovoCustoMedio: TCurrencyEdit;
    Label14: TLabel;
    EditNovaMargemVarejo: TCurrencyEdit;
    Label15: TLabel;
    EditNovaMargemAtacado: TCurrencyEdit;
    Label16: TLabel;
    EditNovoValorVendaVarejo: TCurrencyEdit;
    EditNovoValorVendaAtacado: TCurrencyEdit;
    Label17: TLabel;
    Label18: TLabel;
    EditDespesa: TCurrencyEdit;
    Label19: TLabel;
    EditNovoDespesa: TCurrencyEdit;
    Label20: TLabel;
    EditCustoMedioCalculado: TCurrencyEdit;
    Label21: TLabel;
    editCusto: TCurrencyEdit;
    editCST: TCurrencyEdit;
    Label22: TLabel;
    Label23: TLabel;
    editNovoCST: TCurrencyEdit;
    Label24: TLabel;
    editNovoDifIcms: TCurrencyEdit;
    Label25: TLabel;
    editDifIcms: TCurrencyEdit;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxTopo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    LabelGravar: TSpeedButton;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure LabelGravarClick(Sender: TObject);
    procedure EditNovoValorCompraExit(Sender: TObject);
    procedure EditNovoValorVendaVarejoExit(Sender: TObject);
    procedure EditNovoValorVendaAtacadoExit(Sender: TObject);
    procedure EditNovoValorVendaVarejoEnter(Sender: TObject);
    procedure EditNovoValorVendaAtacadoEnter(Sender: TObject);
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
  FormTelaEntradaRapidaEstoque: TFormTelaEntradaRapidaEstoque;

implementation

uses DataModulo, UnitLibrary, CadastroProdutos;

{$R *.dfm}

procedure TFormTelaEntradaRapidaEstoque.BtnFecharTelaClick(
  Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TFormTelaEntradaRapidaEstoque.LabelGravarClick(Sender: TObject);
begin
  if EditQtdeComprada.value <= 0 then
    if Not Pergunta('N�o','Quantidade Entrada <= Zero.  Confirma?') then
    begin
      ModalResult := mrNone;
      EditQtdeComprada.SetFocus;
      exit;
    end;
  ModalResult := mrOk;
end;

procedure TFormTelaEntradaRapidaEstoque.EditNovoValorCompraExit(
  Sender: TObject);
var DenominadorIPI, DenominadorFrete, DenominadorDesp, DenominadorCST, DenominadorDifIcms : Double;
begin
  DenominadorIPI   := 0;
  DenominadorFrete := 0;
  DenominadorDesp  := 0;
  DenominadorCST   := 0;
  DenominadorDifIcms := 0;
  if (EditNovoValorCompra.Value > 0) and (EditNovoIPI.Value > 0) then
    DenominadorIPI := EditNovoValorCompra.Value * (EditNovoIPI.Value/100);
  if (EditNovoValorCompra.Value > 0) and (EditNovoFrete.Value > 0) then
    DenominadorFrete := EditNovoValorCompra.Value * (EditNovoFrete.Value/100);
  if (EditNovoValorCompra.Value > 0) and (EditNovoDespesa.Value > 0) then
    DenominadorDesp := EditNovoValorCompra.Value * (EditNovoDespesa.Value/100);
  if (EditNovoValorCompra.Value > 0) and (EditNovoCST.Value > 0) then
    DenominadorCST := EditNovoValorCompra.Value * (EditNovoCST.Value/100);
  if (EditNovoValorCompra.Value > 0) and (editNovoDifIcms.Value > 0) then
    DenominadorDifIcms := EditNovoValorCompra.Value * (editNovoDifIcms.Value/100);

  EditNovoCustoMedio.Value := EditNovoValorCompra.Value + DenominadorIPI + DenominadorFrete + DenominadorDesp + DenominadorCST + DenominadorDifIcms;
  // proxima linha alterado pelo judi - incluir componente edit na tela.
  if EditSaldoEstoqueatual.value > 0 then
    EditCustoMedioCalculado.Value := ((EditCustoMedio.Value * EditSaldoEstoqueatual.Value) + (EditNovoCustoMedio.value * EditQtdeComprada.value)) / (EditSaldoEstoqueatual.value + EditQtdeComprada.value)
  else
  begin
    EditCustoMedioCalculado.Value := EditNovoCustoMedio.value;
    EditNovoCustoMedio.Value      := EditNovoCustoMedio.Value;
  end;
  if (EditNovaMargemVarejo.Value > 0) and (EditNovoCustoMedio.Value > 0) then
    EditNovoValorVendaVarejo.Value  := EditNovoCustoMedio.Value * (1+ (EditNovaMargemVarejo.Value/100));
  if (EditNovaMargemAtacado.Value > 0) and (EditNovoCustoMedio.Value > 0)then
    EditNovoValorVendaAtacado.Value  := EditNovoCustoMedio.Value * (1+ (EditNovaMargemAtacado.Value/100));
end;

procedure TFormTelaEntradaRapidaEstoque.EditNovoValorVendaVarejoExit(
  Sender: TObject);
begin
  if (VendaOldVarejo <> EditNovoValorVendaVarejo.Value) then
    begin
      if (EditNovaMargemVarejo.Value > 0) and (EditNovoCustoMedio.Value > 0) and (EditNovoValorVendaVarejo.Value > 0) then
        EditNovaMargemVarejo.Value := ((EditNovoValorVendaVarejo.Value / EditNovoCustoMedio.Value) - 1) * 100;
    end;
end;

procedure TFormTelaEntradaRapidaEstoque.EditNovoValorVendaAtacadoExit(
  Sender: TObject);
begin
  if (VendaOldAtacado <> EditNovoValorVendaAtacado.Value) then
    begin
      if (EditNovaMargemAtacado.Value > 0) and (EditNovoCustoMedio.Value > 0) and (EditNovoValorVendaAtacado.Value > 0) then
        EditNovaMargemAtacado.Value := ((EditNovoValorVendaAtacado.Value / EditNovoCustoMedio.Value) - 1) * 100;
    end;
end;

procedure TFormTelaEntradaRapidaEstoque.EditNovoValorVendaVarejoEnter(
  Sender: TObject);
begin
  VendaOldVarejo := EditNovoValorVendaVarejo.Value;
end;

procedure TFormTelaEntradaRapidaEstoque.EditNovoValorVendaAtacadoEnter(
  Sender: TObject);
begin
  VendaOldAtacado := EditNovoValorVendaAtacado.Value;
end;

procedure TFormTelaEntradaRapidaEstoque.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=char(13) Then
    Perform(Wm_NextDlgCtl,0,0)

end;

procedure TFormTelaEntradaRapidaEstoque.FormKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 120 then
  begin
    key := 0;
    labelGravar.Click;
  end;

end;

end.
