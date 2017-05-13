object FormTelaFotoExpandida: TFormTelaFotoExpandida
  Left = 458
  Top = 118
  Width = 607
  Height = 539
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel1: TRxLabel
    Left = 0
    Top = 0
    Width = 599
    Height = 55
    Align = alTop
    Caption = ' Foto do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -48
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    ShadowColor = clBlack
  end
  object RxLabel3: TRxLabel
    Left = 0
    Top = 478
    Width = 599
    Height = 34
    Align = alBottom
    Alignment = taCenter
    Caption = 'Pressione qualquer tecla para voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    ShadowColor = clBlack
  end
  object Foto: TImage
    Left = 0
    Top = 55
    Width = 599
    Height = 423
    Align = alClient
    Center = True
    IncrementalDisplay = True
    Stretch = True
    Transparent = True
  end
end
