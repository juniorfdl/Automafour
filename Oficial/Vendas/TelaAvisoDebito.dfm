object FormTelaAvisoDebito: TFormTelaAvisoDebito
  Left = 315
  Top = 71
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Limite de Cr'#233'dito'
  ClientHeight = 468
  ClientWidth = 612
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 8
    Width = 72
    Height = 24
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 88
    Width = 351
    Height = 29
    Caption = 'Valor do Limite Inicial.............:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 141
    Width = 351
    Height = 29
    Caption = 'Parcelas Abertas Sem Juros..:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 193
    Width = 349
    Height = 29
    Caption = 'Juros, Multas e Descontos ....:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 289
    Width = 353
    Height = 29
    Caption = 'Valor da Compra Atual............:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
    Top = 342
    Width = 356
    Height = 29
    Caption = 'Saldo do Limite de Cr'#233'dito.....:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLimiteInicial: TLabel
    Left = 392
    Top = 88
    Width = 200
    Height = 29
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblParcelas: TLabel
    Left = 392
    Top = 141
    Width = 200
    Height = 29
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbljuros: TLabel
    Left = 392
    Top = 193
    Width = 200
    Height = 29
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblCompra: TLabel
    Left = 388
    Top = 289
    Width = 200
    Height = 29
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblSaldoFinal: TLabel
    Left = 392
    Top = 342
    Width = 200
    Height = 29
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCliente: TLabel
    Left = 12
    Top = 42
    Width = 577
    Height = 29
    AutoSize = False
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 372
    Top = 231
    Width = 221
    Height = 4
    Brush.Color = clBlack
  end
  object lblSaldoAtual: TLabel
    Left = 392
    Top = 247
    Width = 200
    Height = 29
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 402
    Width = 317
    Height = 49
    Caption = 'Continuar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
    Glyph.Data = {
      02030000424D0203000000000000360100002800000013000000170000000100
      080000000000CC010000C30E0000C30E000040000000000000001C3404002434
      1C00242424001C3C0400243C0C00244404002C5C04003C5C240044543C005C5C
      54005C5C5C00646464006C6C6C0054743C007474740044840400747C74007C7C
      7C0084848400449404006C8C540054AC0400000000008C8C8C008C948C009494
      94009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC040074F404007CFC
      040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC240094EC3C0094FC
      2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC5400ACFC6400B4FC
      6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCCAC00BCC4B400BCCC
      B400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0C0003F3F3F3F3F3F
      191717193F3F3F3F3F3F3F3F3F003F3F3F3F3F1712111112193F3F3F3F3F3F3F
      3F003F3F3F3F19120E0C0C0E123F3F3F3F3F3F3F3F003F3F3F3F120E0C0B0B0C
      11173F3F3F3F3F3F3F003F3F3F17110C0B0A0A0B0E123F3F3F3F3F3F3F003F3F
      3F12140702010B0B0C11173F3F3F3F3F3F003F3F3F181E1E0F03100C0C0E1219
      3F3F3F3F3F003F3F3F2422231F06080C0C0C11173F3F3F3F3F003F3F2B212223
      221305170C0C0E11173F3F3F3F003F3521222323231E06090E0C0C0E12193F3F
      3F003F2B2223272726221304180E0C0C0E123F3F3F003F2926252A2F2F261F06
      08110E0C0E11173F3F0038302D232C39332E23150311110E0C0E11173F003F39
      2E28383F37312A220F0117110E0E0E1219003F3F373F3F3F3F3A30261E060917
      110E0E1117003F3F3F3F3F3F3F3F322E2315030C1712111217003F3F3F3F3F3F
      3F3F37342D2313001819171719003F3F3F3F3F3F3F3F3F3B342E231300193F3F
      3F003F3F3F3F3F3F3F3F3F3F3C3330230F011D3F3F003F3F3F3F3F3F3F3F3F3F
      3F393E31250F0D3F3F003F3F3F3F3F3F3F3F3F3F3F3F383D312320353F003F3F
      3F3F3F3F3F3F3F3F3F3F3F3F3C2A23363F003F3F3F3F3F3F3F3F3F3F3F3F3F3F
      3F3F373F3F00}
  end
end
