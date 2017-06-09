unit TelaProdutoDimensao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ConerBtn, RXCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Mask, ToolEdit, CurrEdit;

type
  TFormTelaProdutoDimensao = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    RxLabel4: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    EditM3_ESP: TCurrencyEdit;
    EditM3_LARG: TCurrencyEdit;
    EditM3_COMPRI: TCurrencyEdit;
    EditM3_QTDE: TCurrencyEdit;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaProdutoDimensao: TFormTelaProdutoDimensao;

implementation

{$R *.dfm}

procedure TFormTelaProdutoDimensao.BtnOKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFormTelaProdutoDimensao.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFormTelaProdutoDimensao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl,0,0);
  if Key = VK_Escape then
    ModalResult := mrCancel;
end;

procedure TFormTelaProdutoDimensao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
