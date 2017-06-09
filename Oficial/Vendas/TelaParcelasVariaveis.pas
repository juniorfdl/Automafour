unit TelaParcelasVariaveis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TTelaGraficaVariavel = class(TForm)
    PnlEntrega: TPanel;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    MaskEdit9: TMaskEdit;
    MaskEdit10: TMaskEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: String;
  end;

var
  TelaGraficaVariavel: TTelaGraficaVariavel;

implementation

{$R *.dfm}

procedure TTelaGraficaVariavel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    Perform(CM_DIALOGKEY,VK_TAB,0);
  end;
end;

procedure TTelaGraficaVariavel.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TTelaGraficaVariavel.BitBtn1Click(Sender: TObject);
var i, dias : Integer;

begin
  Retorno := '';
  Dias := -1;
  for i := 0 to ComponentCount-1 do
  begin
    Try
      if Components[i] is TMaskEdit then
        if Trim((Components[i] as TMaskEdit).Text) <> '' then
        Begin
          if Dias >= StrToInt(Trim((Components[i] as TMaskEdit).Text)) then
          begin
            Showmessage('Vencimentos Inválidos.... Verifique!');
            Exit;
          end;
          Retorno := Retorno +(Components[i] as TMaskEdit).Text + ' ';
          Dias := StrToInt(Trim((Components[i] as TMaskEdit).Text));
        end;
    except

    end;
  end;
  ModalResult := mrOk;
end;

end.
