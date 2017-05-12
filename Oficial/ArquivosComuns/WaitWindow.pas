unit WaitWindow;

interface

uses
  StdCtrls, Forms, Classes, ComCtrls, ExtCtrls, Gauges, Windows, Messages,
  SysUtils, Variants, Graphics, Controls;

var
  { Public declarations }
  FormWait : TForm;
  Progress : TGauge;
  LabelWait : TLabel;
  Animation : TAnimate;
  Shape : TShape;

  procedure MakeWindowMessage(Text : string);
  procedure MakeWindow(MaxValue : integer; Text : string);
  procedure SetProgress(Value : integer);
  procedure DestroyWindow();
{  function  BloqueiaTecladoMouse : Boolean;
  function  LiberaTecladoMouse   : Boolean;

  // Funcoes da DLL USER32.DLL
  function Blockinput(fBlockIt : Boolean) : Boolean stdcall; external 'USER32.DLL';}

implementation
{function BloqueiaTecladoMouse : Boolean;
begin
  try
    Blockinput(True);
    BloqueiaTecladoMouse := True;
  except
    BloqueiaTecladoMouse := False;
  end;
end;
function  LiberaTecladoMouse   : Boolean;
begin
  try
    Blockinput(False);
    LiberaTecladoMouse   := True;
  except
    LiberaTecladoMouse   := False;
  end;
end;}

procedure SetSizeForm(Width, Height : integer);
begin
  FormWait.Width := Width;
  FormWait.Height := Height;
end;

procedure MakeShape(Parent : TWinControl);
begin
  Shape := TShape.Create(Application);
  Shape.Parent := Parent;
  Shape.Shape := stRectangle;
  Shape.Pen.Color := $00007FFF;
  Shape.Align := alClient;
end;

procedure MakeLabel(Caption : string; Parent : TWinControl; Color : TColor);
begin
  LabelWait := TLabel.Create(Application);
  LabelWait.Parent := Parent;
  LabelWait.AutoSize := True;
  LabelWait.Caption := Caption;
  LabelWait.Font.Name := 'Tahoma';
  LabelWait.Font.Color := Color;
  LabelWait.Font.Size := 22;
end;

procedure MakeForm();
begin
  FormWait := TForm.Create(Application);
  FormWait.BorderStyle := bsNone;
  FormWait.Name        := 'FormWait';
  FormWait.Position    := poScreenCenter;
  FormWait.FormStyle   := fsStayOnTop;
end;

procedure MakeWindowMessage(Text : string);
var
  NewLabel : array [0..1] of TLabel;
  I : integer;
  ApplicationExists : THandle;
begin
  MakeForm();
  FormWait.Color := $00E0C8B0;
//  MakeShape(FormWait);
  for I := 0 to length(NewLabel) -1 do
    begin
      NewLabel[I] := TLabel.Create(Application);
      NewLabel[I].Parent := FormWait;
      NewLabel[I].Color := $00E0C8B0;
      NewLabel[I].Left := 10;
      NewLabel[I].Font.Name := 'Tahoma';
      NewLabel[I].Font.Size := 22;
      case I of
        0 : begin
              NewLabel[I].Top := 5;
              NewLabel[I].Caption := 'Advanced Control Informa:';
              NewLabel[I].Font.Color := clWhite;
              MakeLabel(Text,FormWait,clNavy);
              LabelWait.Top := NewLabel[I].Height + NewLabel[I].Top + 10;
            end;
        1 : begin
              NewLabel[I].Caption := 'Aguarde! Processando...';
              NewLabel[I].Font.Color := clWhite;
              NewLabel[I].Top := LabelWait.Height + LabelWait.Top + 10;
            end;
      end;
      NewLabel[I].Name := 'TempLabel' + IntToStr(I);
    end;
  LabelWait.Color := $00E0C8B0;
  SetSizeForm(LabelWait.Width + abs(LabelWait.Width - NewLabel[1].Width) + 15,NewLabel[1].Top + NewLabel[1].Height + 15);
  LabelWait.Left := Trunc((FormWait.Width - LabelWait.Width) /2);
  NewLabel[0].Left := Trunc((FormWait.Width - NewLabel[0].Width) /2);
  NewLabel[1].Left := Trunc((FormWait.Width - NewLabel[1].Width) /2);
  FormWait.KeyPreview := False;
  FormWait.Name := 'FormWait';
  FormWait.Show;
  FormWait.BringToFront;
  SetForegroundWindow(FormWait.Handle);
  FormWait.Refresh;
  Application.ProcessMessages;
end;

procedure MakeWindow(MaxValue : integer; Text : string);
begin
  {CRIANDO O FORMULÁRIO}
  MakeForm();
  {CRIANDO O PROGRESS}
  Progress := TGauge.Create(Application);
  Progress.Parent := FormWait;
  Progress.Align := alBottom;
  Progress.MinValue := 0;
  Progress.MaxValue := MaxValue;
  Progress.Height := 25;
  {CRIANDO O ANIMATE}
  Animation := TAnimate.Create(Application);
  Animation.Parent := FormWait;
  Animation.CommonAVI := aviFindComputer;
  Animation.Active := True;
  Animation.Left := 5;
  Animation.Top := 5;
  {CRIANDO O LABEL}
  MakeLabel(Text,FormWait,clNavy);
  LabelWait.Top := Animation.Top + Animation.Height + 5;
  {AJUSTANDO O TAMANHO DO FORMULÁRIO}
  SetSizeForm(Animation.Width + LabelWait.Width + 10,LabelWait.Top + LabelWait.Height + Progress.Height + 10);
  LabelWait.Left := Trunc((FormWait.Width - LabelWait.Width) /2);
  FormWait.Name := 'FormWait';
  FormWait.Show;
  FormWait.BringToFront;
  SetForegroundWindow(FormWait.Handle);
  Application.ProcessMessages;
end;

procedure SetProgress(Value : integer);
begin
  {SETANDO O PROGRESS DO GAUGE}
  Progress.Progress := Value;
  Progress.Update;
  Application.ProcessMessages;
end;

procedure DestroyWindow();
begin
  {DESTRUINDO O FORMULÁRIO}
  Application.ProcessMessages;
  if Application.FindComponent('FormWait') <> nil then
    begin
      FormWait.Hide;
      FormWait.Free;
    end;
end;

end.
