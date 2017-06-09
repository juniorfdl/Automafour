unit TelaItensIncluidosCupom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls, Grids, DBGrids, RXCtrls, EWall, DBCtrls;

type
  TFormTelaItensIncluidosCupom = class(TForm)
    LblNomeSistema: TRxLabel;
    DBGrid: TDBGrid;
    Label12: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    RxLabel3: TRxLabel;
    DBText3: TDBText;
    RxLabel8: TRxLabel;
    DBText8: TDBText;
    RxLabel1: TRxLabel;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaItensIncluidosCupom: TFormTelaItensIncluidosCupom;

implementation

uses TelaItens, UnitLibrary;

{$R *.DFM}

procedure TFormTelaItensIncluidosCupom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFRee ;
end;

procedure TFormTelaItensIncluidosCupom.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
     VK_Escape : Close;
  end;
end;

procedure TFormTelaItensIncluidosCupom.DBGridDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If formtelaitens.SQLItensVendaTempTROCA.Value = 'S' Then
    begin
       DBGrid.Canvas.Font.Color:=clRed;
       DBGrid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

end.
