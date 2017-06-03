object Form1: TForm1
  Left = 180
  Top = 107
  Width = 386
  Height = 350
  Caption = 'Exemplo de Validação de CPF e CGC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 48
    Top = 32
    Width = 169
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 48
    Top = 80
    Width = 169
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 232
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Checar C&GC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Checar C&PF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 48
    Top = 144
    Width = 297
    Height = 137
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Este exemplo usa duas funções CGC e CPF.'
      'Junto com estes arquivos zipados, existe um arquivo '
      'CGC.TXT e CPF.TXT os quais estão o Logaritimo destas '
      'funções'
      ''
      ''
      'Exemplo Criado por :'
      ''
      'Marcos Paulo'
      'www.geocities.com/mpgo_2000/')
    ParentFont = False
    TabOrder = 4
  end
end
