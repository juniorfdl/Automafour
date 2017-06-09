unit TelaPrecoAlterado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RXCtrls, ComCtrls, Grids, DBGrids, RXDBCtrl,
  Mask, ToolEdit, CurrEdit;

type
  TFormTelaPrecoAlterado = class(TForm)
    PanelPrincipal: TPanel;
    lbVlrUnitario: TRxLabel;
    RxLabel2: TRxLabel;
    EditValorTotal: TCurrencyEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaPrecoAlterado: TFormTelaPrecoAlterado;

implementation

uses DataModulo;

{$R *.DFM}


procedure TFormTelaPrecoAlterado.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Close;
end;

procedure TFormTelaPrecoAlterado.RxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    ModalResult := MrOK;
  if Key = 27 then
    ModalResult := MrCancel;
end;

procedure TFormTelaPrecoAlterado.FormCreate(Sender: TObject);
begin
  case Dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').AsInteger of
    2 : begin
          EditValorTotal.DisplayFormat := 'R$ ,0.00;-R$ ,0.00';
          EditValorTotal.DecimalPlaces := 2;
        end;
    3 : begin
          EditValorTotal.DisplayFormat := 'R$ ,0.000;-R$ ,0.000';
          EditValorTotal.DecimalPlaces := 3;
        end;
  end;
end;

end.
