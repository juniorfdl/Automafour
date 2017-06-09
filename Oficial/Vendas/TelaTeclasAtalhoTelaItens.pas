unit TelaTeclasAtalhoTelaItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, RXCtrls, EWall;

type
  TFormTelaTeclasAtalhoTelaItens = class(TForm)
    LblNomeSistema: TRxLabel;
    RxLabel7: TRxLabel;
    Panel1: TPanel;
    dxfLabel1: TRxLabel;
    dxfLabel2: TRxLabel;
    dxfLabel3: TRxLabel;
    dxfLabel4: TRxLabel;
    dxfLabel5: TRxLabel;
    dxfLabel6: TRxLabel;
    dxfLabel7: TRxLabel;
    dxfLabel8: TRxLabel;
    dxfLabel9: TRxLabel;
    dxfLabel10: TRxLabel;
    dxfLabel11: TRxLabel;
    dxfLabel12: TRxLabel;
    dxfLabel13: TRxLabel;
    dxfLabel14: TRxLabel;
    dxfLabel15: TRxLabel;
    dxfLabel16: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    Ctrl_X: TRxLabel;
    RxLabel11: TRxLabel;
    RxLabel12: TRxLabel;
    LabelAlteraQtde: TRxLabel;
    RxLabel14: TRxLabel;
    RxLabel15: TRxLabel;
    RxLabel16: TRxLabel;
    RxLabel17: TRxLabel;
    RxLabel18: TRxLabel;
    RxLabel19: TRxLabel;
    RxLabel20: TRxLabel;
    RxLabel21: TRxLabel;
    RxLabel22: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTeclasAtalhoTelaItens: TFormTelaTeclasAtalhoTelaItens;

implementation

uses TelaItens, UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormTelaTeclasAtalhoTelaItens.FormCreate(Sender: TObject);
begin
  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;
end;

procedure TFormTelaTeclasAtalhoTelaItens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) or (Key = VK_Return) then
    Close ;
end;

procedure TFormTelaTeclasAtalhoTelaItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

procedure TFormTelaTeclasAtalhoTelaItens.FormActivate(Sender: TObject);
begin
  LabelAlteraQtde.Enabled := (DM.SQLterminalativo.FieldByName('TERMIQTDEPADRAO').Value > 0) ;
end;

end.
