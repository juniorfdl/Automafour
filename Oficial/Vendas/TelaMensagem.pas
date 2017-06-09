unit TelaMensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  Buttons, DB, DBTables, MemTable, RxQuery, RXCtrls, jpeg,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaMensagem = class(TForm)
    LblMsg: TRxLabel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ptopo: TAdvOfficeStatusBar;
    LblNomeSistema: TRxLabel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    RxLabel2: TRxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ImgDesligarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaMensagem: TFormTelaMensagem;

implementation

uses TelaFechamentoVenda, DataModulo, UnitLibrary, TelaDadosCheque;

{$R *.dfm}

procedure TFormTelaMensagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaMensagem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Escape : Close ;
    VK_Return : Close ;
  end ;
end;

procedure TFormTelaMensagem.FormCreate(Sender: TObject);
begin
  Caption := Application.Title;
end;

procedure TFormTelaMensagem.ImgDesligarClick(Sender: TObject);
begin
  Close;
end;

end.
