unit TelaDescricaoTecnicaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Buttons, ConerBtn, RXCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaDescricaoTecnicaProduto = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    Densidade: TEdit;
    LblSubTotal: TRxLabel;
    RxLabel1: TRxLabel;
    Medida: TEdit;
    RxLabel2: TRxLabel;
    Espessura: TEdit;
    Tecido: TEdit;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    Obs: TEdit;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDescricaoTecnicaProduto: TFormTelaDescricaoTecnicaProduto;

implementation

uses TelaItens;

{$R *.dfm}

procedure TFormTelaDescricaoTecnicaProduto.BtnOKClick(Sender: TObject);
begin
  FormTelaDescricaoTecnicaProduto.ModalResult := MrOk;
end;

procedure TFormTelaDescricaoTecnicaProduto.BtnCancelarClick(
  Sender: TObject);
begin
  FormTelaDescricaoTecnicaProduto.ModalResult := mrCancel;
end;

procedure TFormTelaDescricaoTecnicaProduto.Memo1KeyDown(Sender: TObject;
 var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    modalResult := MrOk;
end;

end.
