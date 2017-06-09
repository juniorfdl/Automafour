unit TelaCadastroObs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ConerBtn, ExtCtrls;

type
  TFormTelaCadastroObs = class(TForm)
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    MemoObs: TMemo;
    Label13: TLabel;
    procedure BtnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaCadastroObs: TFormTelaCadastroObs;

implementation

uses TelaFechamentoVenda, UnitLibrary;

{$R *.dfm}

procedure TFormTelaCadastroObs.BtnOKClick(Sender: TObject);
begin
  if MemoObs.Lines.Count > 0 then
    begin
      ObsCupom := MemoObs.Lines.Text;
      Close;
    end;
end;

procedure TFormTelaCadastroObs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
