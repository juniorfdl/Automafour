object FormProcessandoNFE: TFormProcessandoNFE
  Left = 192
  Top = 114
  Width = 331
  Height = 92
  Caption = 'NF-e'
  Color = 16776176
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 20
    Width = 294
    Height = 24
    Caption = 'AGUARDANDO PROCESSO.....'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 260
    Top = 8
  end
end
