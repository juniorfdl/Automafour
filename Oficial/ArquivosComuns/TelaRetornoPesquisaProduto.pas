unit TelaRetornoPesquisaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXCtrls, Grids, Buttons, ExtCtrls;

type
  TFormTelaRetornoPesquisaProduto = class(TForm)
    Grid: TStringGrid;
    Panel1: TPanel;
    BtnOk: TSpeedButton;
    BtnCancel: TSpeedButton;
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaRetornoPesquisaProduto: TFormTelaRetornoPesquisaProduto;

implementation

{$R *.dfm}

procedure TFormTelaRetornoPesquisaProduto.GridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    begin
      if Grid.Row = 0 then
        begin
          Application.MessageBox('Por Favor Selecione Um Produto!','Atenção',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
          Abort;
          Exit;
        end;
      ModalResult := MrOK;
    end;
end;

procedure TFormTelaRetornoPesquisaProduto.BtnOkClick(Sender: TObject);
begin
  if Grid.Row = 0 then
    begin
      Application.MessageBox('Por Favor Selecione Um Produto!','Atenção',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
      Exit;
    end;
  ModalResult := MrOK;
end;

procedure TFormTelaRetornoPesquisaProduto.BtnCancelClick(
  Sender: TObject);
begin
  FormTelaRetornoPesquisaProduto.ModalResult := MrCancel;
end;

end.
