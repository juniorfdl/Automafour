unit TelaMotivoNaoAtend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RxLookup;

type
  TFormTelaMotivoNaoAtend = class(TForm)
    Label33: TLabel;
    ComboMotivoNaoAtendimento: TRxDBLookupCombo;
    Label1: TLabel;
    procedure ComboMotivoNaoAtendimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaMotivoNaoAtend: TFormTelaMotivoNaoAtend;

implementation

uses DataModulo, TelaMarcacaoConsulta;
{$R *.dfm}

procedure TFormTelaMotivoNaoAtend.ComboMotivoNaoAtendimentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = Vk_Return then
    begin
      DM.AceitaMotivoNaoAtend := True;
      if ComboMotivoNaoAtendimento.KeyValue <> null then
        Close;
    end;
  if key = Vk_Escape then Close;
end;

procedure TFormTelaMotivoNaoAtend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
