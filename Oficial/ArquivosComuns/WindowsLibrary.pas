unit WindowsLibrary;

interface

uses Windows, Messages, SysUtils, CommDlg, Classes, Graphics, Controls,
     Forms, StdCtrls, Printers, Buttons;

type
  TMsgDlgType = (mtWarning, mtError, mtInformation, mtConfirmation, mtCustom);
  TMsgDlgBtn = (mbYes, mbNo, mbOK, mbCancel, mbAbort, mbRetry, mbIgnore,
    mbAll, mbNoToAll, mbYesToAll, mbHelp);
  TMsgDlgButtons = set of TMsgDlgBtn;
  function InputBoxMask(const ACaption, APrompt, ADefault: string): string;
  function InputQueryPSW(const ACaption, APrompt: string;
  var Value: string): Boolean;
  function InputBoxUSER(const ACaption, APrompt, ADefault: string): string;
  function InputQueryUSER(const ACaption, APrompt: string;
  var Value: string): Boolean;
  function  GetAveCharSize(Canvas: TCanvas): TPoint;
  function  GetVersion(Path : string) : double;
  procedure FileCopy(const RemotePath, LocalPath: string);
//  function  Blockinput(): boolean;stdcall; far; export; 'user32.dll'; 
var
  MResult : TModalResult;
resourcestring
  SMsgDlgWarning = 'Warning';
  SMsgDlgError = 'Error';
  SMsgDlgInformation = 'Information';
  SMsgDlgConfirm = 'Confirm';
  SMsgDlgYes = '&Yes';
  SMsgDlgNo = '&No';
  SMsgDlgOK = 'OK';
  SMsgDlgCancel = 'Cancel';
  SMsgDlgHelp = '&Help';
  SMsgDlgHelpNone = 'No help available';
  SMsgDlgHelpHelp = 'Help';
  SMsgDlgAbort = '&Abort';
  SMsgDlgRetry = '&Retry';
  SMsgDlgIgnore = '&Ignore';
  SMsgDlgAll = '&All';
  SMsgDlgNoToAll = 'N&o to All';
  SMsgDlgYesToAll = 'Yes to &All';

  implementation
uses
  ExtCtrls, Consts, Dlgs, Math;
var
  Captions: array[TMsgDlgType] of Pointer = (@SMsgDlgWarning, @SMsgDlgError,
    @SMsgDlgInformation, @SMsgDlgConfirm, nil);
  IconIDs: array[TMsgDlgType] of PChar = (IDI_EXCLAMATION, IDI_HAND,
    IDI_ASTERISK, IDI_QUESTION, nil);
  ButtonNames: array[TMsgDlgBtn] of string = (
    'Yes', 'No', 'OK', 'Cancel', 'Abort', 'Retry', 'Ignore', 'All', 'NoToAll',
    'YesToAll', 'Help');
  ButtonCaptions: array[TMsgDlgBtn] of Pointer = (
    @SMsgDlgYes, @SMsgDlgNo, @SMsgDlgOK, @SMsgDlgCancel, @SMsgDlgAbort,
    @SMsgDlgRetry, @SMsgDlgIgnore, @SMsgDlgAll, @SMsgDlgNoToAll, @SMsgDlgYesToAll,
    @SMsgDlgHelp);
  ModalResults: array[TMsgDlgBtn] of Integer = (
    mrYes, mrNo, mrOk, mrCancel, mrAbort, mrRetry, mrIgnore, mrAll, mrNoToAll,
    mrYesToAll, 0);
function GetAveCharSize(Canvas: TCanvas): TPoint;
var
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.X := Result.X div 52;
end;

function InputBoxMask(const ACaption, APrompt, ADefault: string): string;
begin
  Result := ADefault;
  InputQueryPSW(ACaption, APrompt, Result);
end;

function InputQueryPSW(const ACaption, APrompt: string;
  var Value: string): Boolean;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := False;
  Form := TForm.Create(Application);
  Form.BringToFront;
  SetForegroundWindow(Form.Handle);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      Position := poScreenCenter;
      Form.Color := clSilver;
      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
        Parent := Form;
        Caption := APrompt;
        Left := MulDiv(8, DialogUnits.X, 4);
        Top := MulDiv(8, DialogUnits.Y, 8);
        Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);
        WordWrap := True;
      end;
      Edit := TEdit.Create(Form);
      with Edit do
      begin
        Parent := Form;
        CharCase := ecUpperCase;
        Left := Prompt.Left;
        Top := Prompt.Top + Prompt.Height + 5;
        Width := MulDiv(164, DialogUnits.X, 4);
        PasswordChar := '*';
        MaxLength := 255;
        Text := Value;
        SelectAll;
      end;
      ButtonTop := Edit.Top + Edit.Height + 15;
      ButtonWidth := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(16, DialogUnits.Y, 8);
      with TBitBtn.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgOK;
        Kind := bkOK;
        ModalResult := mrOk;
        Default := True;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TBitBtn.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgCancel;
        ModalResult := mrCancel;
        Kind := bkCancel;
        Cancel := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,
          ButtonWidth, ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      if ShowModal = mrOk then
      begin
        Value := Edit.Text;
        Result := True;
        MResult := MrOK;
      end
      else
        MResult := MrCancel;
    finally
      Form.Free;
    end;
end;

function GetVersion(Path : string) : double;
var
  ProgName : String;
  VerInfoSize, VerValueSize, Dummy : DWord;
  VerInfo : Pointer;
  V1,V2,V3,V4 : Word;
  VerValue: PVSFixedFileInfo;
begin
  ProgName := Path;
  VerInfoSize := GetFileVersionInfoSize(PChar(ProgName), Dummy);
  GetMem(VerInfo,VerInfoSize);
  GetFileVersionInfo(PChar(ProgName),0,VerInfoSize,VerInfo);
  VerQueryValue(VerInfo,'\',Pointer(VerValue),VerValueSize);
  with VerValue^ do
    begin
      V1 := DWFILEVERSIONMS shr 16;
      V2 := DWFILEVERSIONMS and $FFFF;
      V3 := DWFILEVERSIONLS shr 16;
      V4 := DWFILEVERSIONLS and $FFFF;
    end;
  FreeMem(VerInfo,VerInfoSize);
  Result := StrToFloat(Copy(IntToStr(100 + V1),3,2) +
                       Copy(IntToStr(100 + V2),3,2) +
                       Copy(IntToStr(100 + V3),3,2) +
                       Copy(IntToStr(100 + V4),3,2));
end;
function InputBoxUSER(const ACaption, APrompt, ADefault: string): string;
begin
  Result := ADefault;
  InputQueryUSER(ACaption, APrompt, Result);
end;

function InputQueryUSER(const ACaption, APrompt: string;
  var Value: string): Boolean;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := False;
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      DialogUnits := GetAveCharSize(Canvas);
      BorderStyle := bsDialog;
      Caption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      Position := poScreenCenter;
      Form.Color := clSilver;
      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
        Parent := Form;
        Caption := APrompt;
        Left := MulDiv(8, DialogUnits.X, 4);
        Top := MulDiv(8, DialogUnits.Y, 8);
        Constraints.MaxWidth := MulDiv(164, DialogUnits.X, 4);
        WordWrap := True;
      end;
      Edit := TEdit.Create(Form);
      with Edit do
      begin
        Parent := Form;
        CharCase := ecUpperCase;
        Left := Prompt.Left;
        Top := Prompt.Top + Prompt.Height + 5;
        Width := MulDiv(164, DialogUnits.X, 4);
        MaxLength := 255;
        Text := Value;
        SelectAll;
      end;
      ButtonTop := Edit.Top + Edit.Height + 15;
      ButtonWidth := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(16, DialogUnits.Y, 8);
      with TBitBtn.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgOK;
        ModalResult := mrOk;
        Kind := bkOK;
        Default := True;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TBitBtn.Create(Form) do
      begin
        Parent := Form;
        Caption := SMsgDlgCancel;
        ModalResult := MrCancel;
        Kind := bkCancel;
        Cancel := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), Edit.Top + Edit.Height + 15,
          ButtonWidth, ButtonHeight);
        Form.ClientHeight := Top + Height + 13;
      end;
      if ShowModal = mrOk then
      begin
        Value := Edit.Text;
        Result := True;
        MResult := MrOk;
      end
      else
        MResult := MrCancel;
    finally
      Form.Free;
    end;
end;

procedure FileCopy(const RemotePath, LocalPath: string);
var
  LocalFile, RemoteFile : TFileStream;
begin
   LocalFile := TFileStream.Create(LocalPath, fmOpenRead or fmShareDenyWrite);
  try
    RemoteFile := TFileStream.Create(RemotePath, fmOpenWrite or fmCreate);
    try
      RemoteFile.CopyFrom(LocalFile,LocalFile.Size);
    finally
      RemoteFile.Free;
    end;
  finally
    LocalFile.Free;
  end;
end;

end.
