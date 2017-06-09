unit TelaDataEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ConerBtn, RXCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormDataEntrega = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    edtDataEntrega: TEdit;
    procedure edtDataEntregaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataEntrega: TFormDataEntrega;

implementation

{$R *.dfm}

procedure TFormDataEntrega.edtDataEntregaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    begin
      if edtDataEntrega.Text = '' then
        begin
          ShowMessage('Preenchimento Obrigatorio!');
          edtDataEntrega.SetFocus;
          Exit;
        end
      else
        ModalResult := MrOk;
    end;
end;

procedure TFormDataEntrega.BtnCancelarClick(Sender: TObject);
begin
  if edtDataEntrega.Text = '' then
    begin
      edtDataEntrega.SetFocus;
      Exit;
    end
  else
    ModalResult := mrCancel;
end;

procedure TFormDataEntrega.BtnOKClick(Sender: TObject);
begin
  if edtDataEntrega.Text = '' then
    begin
      edtDataEntrega.SetFocus;
      Exit;
    end
  else
    ModalResult := MrOk;
end;

end.
