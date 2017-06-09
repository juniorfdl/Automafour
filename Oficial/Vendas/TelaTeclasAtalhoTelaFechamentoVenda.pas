unit TelaTeclasAtalhoTelaFechamentoVenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, RXCtrls, EWall;

type
  TFormTelaTeclasAtalhoTelaFechamentoVenda = class(TForm)
    LblNomeSistema: TRxLabel;
    RxLabel6: TRxLabel;
    Panel1: TPanel;
    dxfLabel1: TRxLabel;
    dxfLabel13: TRxLabel;
    dxfLabel14: TRxLabel;
    dxfLabel15: TRxLabel;
    dxfLabel16: TRxLabel;
    dxfLabel17: TRxLabel;
    dxfLabel2: TRxLabel;
    dxfLabel5: TRxLabel;
    dxfLabel3: TRxLabel;
    dxfLabel4: TRxLabel;
    dxfLabel6: TRxLabel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    RxLabel10: TRxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTeclasAtalhoTelaFechamentoVenda: TFormTelaTeclasAtalhoTelaFechamentoVenda;

implementation

uses TelaItens, UnitLibrary;

{$R *.DFM}

procedure TFormTelaTeclasAtalhoTelaFechamentoVenda.FormCreate(Sender: TObject);
begin
  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;
end;

procedure TFormTelaTeclasAtalhoTelaFechamentoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) or (Key = VK_Return) then
    Close ;
end;

procedure TFormTelaTeclasAtalhoTelaFechamentoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

end.
