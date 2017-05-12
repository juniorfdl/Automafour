object FormTelaAutenticaUsuario: TFormTelaAutenticaUsuario
  Left = 441
  Top = 349
  Width = 584
  Height = 167
  Caption = 'Advanced Control'
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel1: TRxLabel
    Left = 0
    Top = 0
    Width = 568
    Height = 43
    Align = alTop
    Alignment = taCenter
    Caption = 'Informe a Senha de Acesso!'
    Color = 10053171
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
  end
  object RxLabel2: TRxLabel
    Left = 0
    Top = 106
    Width = 568
    Height = 23
    Align = alBottom
    Alignment = taCenter
    Caption = 'Pressione Enter ou Esc para finalizar'
    Color = 10053171
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
  end
  object EditSenha: TMaskEdit
    Left = 112
    Top = 51
    Width = 350
    Height = 45
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '#'
    TabOrder = 0
    OnKeyDown = EditSenhaKeyDown
  end
end
