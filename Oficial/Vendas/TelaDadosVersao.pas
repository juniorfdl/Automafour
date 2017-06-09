unit TelaDadosVersao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, RXCtrls, EWall, ComCtrls, RxRichEd;

type
  TFormTelaDadosVersao = class(TForm)
    LblNomeSistema: TRxLabel;
    dxfLabel13: TRxLabel;
    dxfLabel14: TRxLabel;
    dxfLabel15: TRxLabel;
    Timer: TTimer;
    WallPaper: TEvWallPaper;
    DadosTerminal: TRxLabel;
    Panel4: TPanel;
    Memo1: TRxRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosVersao: TFormTelaDadosVersao;

implementation

uses TelaItens, UnitLibrary;

{$R *.DFM}

procedure TFormTelaDadosVersao.FormCreate(Sender: TObject);
begin
  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;
end;

procedure TFormTelaDadosVersao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_Escape) or (Key = VK_Return) then
    Close ;
end;

procedure TFormTelaDadosVersao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree ;
end;

procedure TFormTelaDadosVersao.TimerTimer(
  Sender: TObject);
begin
  Timer.Interval := 60000 ;
  Caption               := 'Advanced Control PDV    Terminal: ' + TerminalAtualNome ;
  DadosTerminal.Caption := FormatDateTime('ddddddddddddd hh:mm', Now) +
                           '    Operador: ' + UsuarioAtualNome +
                           '    Terminal: ' + TerminalAtualNome ;
end;

end.
