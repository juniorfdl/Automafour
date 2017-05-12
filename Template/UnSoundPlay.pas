unit UnSoundPlay;

interface

Uses Classes, MPlayer, Controls, SYSUtils, MAPI, WINDOWS;

Procedure SoundPlay(xFile:String; Sender:TObject);

implementation

procedure SoundPlay(xfile:String ; Sender:TObject);
   var MediaPlayer1: TMediaPlayer;
begin
  MediaPlayer1:= TMediaPlayer.Create(Sender as TComponent);
  MediaPlayer1.DeviceType:=  dtAutoSelect;
  MediaPlayer1.Visible:= False;
  MediaPlayer1.Parent := (Sender as TWinControl);
  with MediaPlayer1 do
  begin
    try
      try
         FileName := xFile;
         Open;          { Open Media Player }         Wait := True;  { Waits until sounds is done playing to return }
         Play;          { Play sound }
      except
//         Beep;
      end;
    finally
      Close;         { Close media player }
      Destroy;       { Destroy o mediaplayer1 criado }
    end;
  end;
end;

end.
