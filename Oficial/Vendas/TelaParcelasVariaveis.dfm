object TelaGraficaVariavel: TTelaGraficaVariavel
  Left = 321
  Top = 321
  Width = 360
  Height = 161
  BorderIcons = []
  Caption = 'TelaGraficaVariavel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnlEntrega: TPanel
    Left = 0
    Top = 0
    Width = 344
    Height = 123
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 14594104
    TabOrder = 0
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 340
      Height = 38
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Informe Prazos de Vencimentos '
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 283
      Top = 90
      Width = 54
      Height = 31
      TabOrder = 11
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
    object BitBtn2: TBitBtn
      Left = 283
      Top = 54
      Width = 54
      Height = 31
      TabOrder = 12
      OnClick = BitBtn2Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777778888887
        777770000000777885555558877770000000778555DDDD555877700000007D55
        DD7777555587700000007D5577777855558770000000D55877778555D5587000
        0000D5877778555D7D5870000000D587778555D77D5870000000D58778555D77
        7D5870000000D5878555D7777D5870000000D558555D7777D558700000007D55
        55D77777D587700000007D555877778555877000000077D55588885558777000
        0000777DD555555DD7777000000077777DDDDDD7777770000000777777777777
        777770000000}
    end
    object MaskEdit1: TMaskEdit
      Left = 12
      Top = 56
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
    end
    object MaskEdit2: TMaskEdit
      Left = 65
      Top = 56
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 2
    end
    object MaskEdit3: TMaskEdit
      Left = 118
      Top = 56
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 3
    end
    object MaskEdit4: TMaskEdit
      Left = 171
      Top = 56
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 4
    end
    object MaskEdit5: TMaskEdit
      Left = 224
      Top = 56
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 5
    end
    object MaskEdit6: TMaskEdit
      Left = 12
      Top = 92
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 6
    end
    object MaskEdit7: TMaskEdit
      Left = 65
      Top = 92
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 7
    end
    object MaskEdit8: TMaskEdit
      Left = 118
      Top = 92
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 8
    end
    object MaskEdit9: TMaskEdit
      Left = 171
      Top = 92
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 9
    end
    object MaskEdit10: TMaskEdit
      Left = 224
      Top = 92
      Width = 48
      Height = 24
      EditMask = '00;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 10
    end
  end
end
