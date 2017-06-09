object FormTelaTipoDescontoItem: TFormTelaTipoDescontoItem
  Left = 297
  Top = 233
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Tipo de desconto'
  ClientHeight = 129
  ClientWidth = 278
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxfLabel1: TRxLabel
    Left = 181
    Top = 43
    Width = 35
    Height = 35
    AutoSize = False
    Caption = '%'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LblNomeSistema: TRxLabel
    Left = 86
    Top = 41
    Width = 42
    Height = 35
    AutoSize = False
    Caption = 'R$'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel1: TRxLabel
    Left = 0
    Top = 0
    Width = 278
    Height = 37
    Align = alTop
    Alignment = taCenter
    Caption = 'Desconto Unit'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    ShadowColor = clBlack
  end
  object DescValor: TRadioButton
    Left = 66
    Top = 41
    Width = 19
    Height = 35
    Checked = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = True
    OnClick = DescValorClick
  end
  object DescPerc: TRadioButton
    Left = 160
    Top = 46
    Width = 15
    Height = 32
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = DescPercClick
  end
  object EditDesconto: TCurrencyEdit
    Left = 64
    Top = 84
    Width = 147
    Height = 33
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyDown = EditDescontoKeyDown
  end
end
