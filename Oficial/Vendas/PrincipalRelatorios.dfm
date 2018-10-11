object FormPrincipalRelatorios: TFormPrincipalRelatorios
  Left = 367
  Top = 192
  Width = 607
  Height = 383
  AutoSize = True
  Caption = 'Relat'#243'rio para Resumo de Caixa'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ptopo: TAdvOfficeStatusBar
    Left = 0
    Top = 0
    Width = 591
    Height = 49
    AnchorHint = False
    Align = alTop
    Panels = <
      item
        AppearanceStyle = psLight
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'hh:mm:ss'
        Width = 50
      end>
    SimplePanel = False
    SizeGrip = False
    URLColor = clBlue
    Styler = AdvOfficeStatusBarOfficeStyler1
    Version = '1.3.0.2'
    object RxLabel2: TRxLabel
      Left = 0
      Top = 0
      Width = 414
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Relat'#243'rio para Resumo de Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      ShadowColor = 15195349
      ShadowPos = spRightBottom
      Transparent = True
    end
  end
  object AdvSmoothPanel1: TAdvSmoothPanel
    Left = 29
    Top = 56
    Width = 538
    Height = 289
    Cursor = crDefault
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = 11563548
    Caption.ColorEnd = 10446362
    Caption.Line = False
    Fill.Color = 16445929
    Fill.ColorTo = 15587527
    Fill.ColorMirror = 15587527
    Fill.ColorMirrorTo = 16773863
    Fill.GradientMirrorType = gtVertical
    Fill.BorderColor = 14922381
    Fill.Rounding = 10
    Fill.ShadowColor = clBlack
    Fill.ShadowOffset = 10
    Version = '1.0.9.0'
    TabOrder = 1
    object BtnVisualizar: TSpeedButton
      Left = 317
      Top = 223
      Width = 143
      Height = 25
      Cursor = crHandPoint
      Hint = 'Visualizar Relat'#243'rio'
      Caption = '&Visualizar Relat'#243'rio'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000000000000606
        060026262600272727002D2D2D002E2E2E002F2F2F0031313100333333003434
        340035353500363636003737370038383800393939003A3A3A003B3B3B003C3C
        3C003E3E3E003F3F3F003F3F4000404040004141410042424200434444004545
        4500464646004747470048484800494949004A4A4A004B4B4B004D4D4D004E4E
        4E004F4F4F004C4F5000505050005454540055555500585858005B5B5B005C5E
        5F005E5E5E006060600061616100636363006062640060636400646464006666
        660067676700696969006E6E6E006F6F6F007070700071717100727272007B7B
        7B007B7D7D007F7F7F0081838400868686008D8D8D0090929200959595009999
        9900989A9A009E9E9E009EA2A500A0A0A000A1A1A100A2A2A200A3A3A300A5A5
        A500A6A6A600A7A7A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
        AD00AFAFAF00B1B1B100B2B2B200B3B3B300B0B3B500B2B3B500B4B4B400B6B6
        B600B7B7B700BBBBBB00BBBCBC00BEBEBE00C3C3C300C3C5C500C6C6C600C7C9
        CB00C6CBCD00C9C9C900CBCBCB00CECECE00D2D2D200D5D5D500DBDBDB00D9DC
        DD00D8DDDE00D9DEDF00DCE0E200DDE1E300DEE2E300DFE3E400E0E0E000E1E1
        E100E2E2E200E0E4E500E1E5E600E2E6E700E5E5E500E3E7E800E5E8E900E6E9
        EA00E7E9EA00E8E8E800E9E9E900E8EAEB00EAEAEA00EBEBEB00E9EBEC00EAEC
        ED00EBEDEE00EDEDED00ECEEEF00EEEEEE00EFEFEF00EDEFF000EEF0F100EFF1
        F100F0F0F000F0F2F200F1F3F300F2F2F200F3F3F300F2F4F400F3F4F500F4F4
        F400F4F5F600F5F6F700F6F6F600F6F7F700F6F7F800F9FAFA00FAFAFA00FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999900000000009999999999999999999999999999
        99990000001C36380F1200999999999999999999999999000000162826303735
        15070C000099999999999999990000202426221A19212C390E10040A09009999
        999999990028281F1A1E2B3D4745433B0C0F11080E1100009999999900311B2D
        48514F4D4B49403908020F11130F0A00999999990033465A58544E4745416670
        5E17060A1215100099999999005553524D4C4D6676868A7B8D681B0E110D1600
        9999999900504E4C5B718E838D867F7E7B7C6716030B0F0099999999003E5A7F
        9894918D8A85833F2E232F18321D050099999999990000647C837C725729293C
        566A62142A3400009999999999999900006559423A8079756F6C6B5C00009999
        99999999999999999900014A8B87817A77736D69279999999999999999999999
        99999904928C88827D78746E6100999999999999999999999999990060938F89
        848079756F440099999999999999999999999999009796908B885F1A00000099
        9999999999999999999999999900956325000099999999999999999999999999
        9999999999990000999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999}
      Margin = 1
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 3
      OnClick = BtnVisualizarClick
    end
    object GroupBox1: TGroupBox
      Left = 63
      Top = 17
      Width = 407
      Height = 41
      Caption = 'Per'#237'o&do '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 18
        Width = 15
        Height = 13
        Caption = '&De'
        FocusControl = De
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 193
        Top = 18
        Width = 19
        Height = 13
        Caption = 'a&t'#233
        FocusControl = Ate
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object De: TDateEdit
        Left = 39
        Top = 14
        Width = 87
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 0
      end
      object Ate: TDateEdit
        Left = 230
        Top = 14
        Width = 87
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 1
      end
      object HoraInicial: TEdit
        Left = 130
        Top = 14
        Width = 38
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object HoraFinal: TEdit
        Left = 322
        Top = 14
        Width = 38
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox3: TGroupBox
      Left = 63
      Top = 68
      Width = 407
      Height = 40
      Caption = ' Terminal '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object ComboTerminal: TRxDBLookupCombo
        Left = 8
        Top = 14
        Width = 393
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Todos...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'TERMICOD'
        LookupDisplay = 'TERMA60DESCR'
        LookupSource = DSSQLTerminal
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 63
      Top = 114
      Width = 407
      Height = 40
      Caption = ' Consolidar com o terminal '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object ComboTerminal2: TRxDBLookupCombo
        Left = 8
        Top = 14
        Width = 393
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'TERMICOD'
        LookupDisplay = 'TERMA60DESCR'
        LookupSource = DSSQLTerminal
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      Left = 63
      Top = 159
      Width = 408
      Height = 40
      Caption = ' Operador '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object ComboOperador: TRxDBLookupCombo
        Left = 8
        Top = 14
        Width = 390
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Todos...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'USUAICOD'
        LookupDisplay = 'USUAA60LOGIN'
        LookupSource = DSSQLOperador
        ParentFont = False
        TabOrder = 0
      end
    end
    object CKImpVendaCartoes: TCheckBox
      Left = 62
      Top = 210
      Width = 134
      Height = 17
      Caption = 'Imprimir Venda Cartoes'
      TabOrder = 4
    end
    object ckImpProdutosVendidos: TCheckBox
      Left = 62
      Top = 229
      Width = 151
      Height = 17
      Caption = 'Imprimir Produtos Vendidos'
      TabOrder = 5
    end
    object ckBobina: TCheckBox
      Left = 62
      Top = 247
      Width = 103
      Height = 17
      Caption = 'Layout Bobina'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  object Memo: TMemo
    Left = 5
    Top = 330
    Width = 504
    Height = 15
    Lines.Strings = (
      'T'
      'E'
      'X'
      'T'
      'O '
      'L'
      'I'
      'V'
      'R'
      'E'
      'A'
      't'
      #233' '
      '6'
      '0'
      '0 '
      'c'
      'a'
      'r'
      'a'
      'c'
      't'
      'e'
      'r'
      'e'
      's'
      #193
      #201
      #218
      #205
      #211
      #218
      #225
      #233
      #237
      #243
      #250
      #199
      #231
      #195
      #213
      #227
      #245
      ''
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      'd'
      'u'
      'p'
      'l'
      'a'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'I'
      'P'
      'O'
      'S '
      'D'
      'E '
      'F'
      'O'
      'N'
      'T'
      'E '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'F'
      'N'
      '>'
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O'
      '<'
      '/'
      'f'
      'n'
      '>'
      '<'
      'f'
      'p'
      '>'
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O '
      'T'
      'E'
      'X'
      'T'
      'O'
      '<'
      '/'
      'f'
      'p'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'A'
      'G'
      'S '
      'D'
      'E '
      'F'
      'O'
      'R'
      'M'
      'A'
      'T'
      'A'
      #199
      #195
      'O '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'e'
      '>'
      'E'
      'X'
      'P'
      'A'
      'N'
      'D'
      'I'
      'D'
      'O'
      '<'
      '/'
      'e'
      '>'
      '<'
      'N'
      '>'
      'N'
      'e'
      'g'
      'r'
      'i'
      't'
      'o'
      '<'
      '/'
      'n'
      '>'
      '<'
      'S'
      '>'
      'S'
      'u'
      'b'
      'l'
      'i'
      'n'
      'h'
      'a'
      'd'
      'o'
      '<'
      '/'
      's'
      '>'
      '<'
      'C'
      '>'
      'C'
      'O'
      'N'
      'D'
      'E'
      'N'
      'S'
      'A'
      'D'
      'O'
      '<'
      '/'
      'C'
      '>'
      '<'
      'i'
      '>'
      'I'
      'T'
      'A'
      'L'
      'I'
      'C'
      'O'
      '<'
      '/'
      'I'
      '>'
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      's'
      'i'
      'm'
      'p'
      'l'
      'e'
      's'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'A'
      'G'
      'S '
      'D'
      'E '
      'C'
      #211
      'D'
      'I'
      'G'
      'O '
      'D'
      'E '
      'B'
      'A'
      'R'
      'R'
      'A'
      'S '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'e'
      'a'
      'n'
      '8'
      '>'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '<'
      '/'
      'e'
      'a'
      'n'
      '8'
      '>'
      '<'
      'e'
      'a'
      'n'
      '1'
      '3'
      '>'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '0'
      '1'
      '2'
      '<'
      '/'
      'e'
      'a'
      'n'
      '1'
      '3'
      '>'
      '<'
      'c'
      'o'
      'd'
      'e'
      '3'
      '9'
      '>'
      'A'
      'B'
      'C'
      'D'
      'E'
      '1'
      '2'
      '3'
      '4'
      '5'
      '<'
      '/'
      'c'
      'o'
      'd'
      'e'
      '3'
      '9'
      '>'
      '<'
      'c'
      'o'
      'd'
      'a'
      'b'
      'a'
      'r'
      '>'
      '$'
      '1'
      '2'
      '3'
      '4'
      '5'
      '<'
      '/'
      'c'
      'o'
      'd'
      'a'
      'b'
      'a'
      'r'
      '>'
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      's'
      'i'
      'm'
      'p'
      'l'
      'e'
      's'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'A'
      'G'
      'S '
      'D'
      'E '
      'F'
      'O'
      'R'
      'M'
      'A'
      'T'
      'A'
      #199
      #195
      'O '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'a'
      'e'
      '>'
      'A'
      'l'
      'i'
      'n'
      'h'
      'a'
      'd'
      'o '
      'e'
      's'
      'q'
      'u'
      'e'
      'r'
      'd'
      'a'
      '<'
      '/'
      'A'
      'e'
      '>'
      '<'
      'c'
      'e'
      '>'
      'N'
      'O '
      'C'
      'E'
      'N'
      'T'
      'R'
      'O'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'A'
      'D'
      '>'
      'A '
      'D'
      'i'
      'r'
      'e'
      'i'
      'r'
      'a'
      '<'
      '/'
      'a'
      'd'
      '>'
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      's'
      'i'
      'm'
      'p'
      'l'
      'e'
      's'
      '>'
      ''
      '<'
      'C'
      'E'
      '>'
      '*'
      '*'
      '* '
      'T'
      'E'
      'S'
      'T'
      'E '
      'D'
      'E '
      'T'
      'A'
      'G'
      'S '
      'I'
      'N'
      'V'
      #193
      'L'
      'I'
      'D'
      'A'
      'S '
      '*'
      '*'
      '*'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'c'
      'e'
      '> '
      '<'
      '>'
      't'
      'a'
      'g'
      's '
      'i'
      'n'
      'v'
      #225
      'l'
      'i'
      'd'
      'a'
      's '
      'n'
      'o '
      't'
      'e'
      'x'
      't'
      'o'
      '"'
      '>'
      '"'
      '>'
      '>'
      '<'
      '<'
      '<'
      '/'
      'C'
      'E'
      '>'
      '<'
      'A'
      'D'
      '>'
      '<'
      'd'
      'a'
      '>'
      '<'
      'e'
      'c'
      '>'
      '<'
      '/'
      '<'
      '/'
      'A '
      'D'
      'i'
      'r'
      'e'
      'i'
      'r'
      'a'
      '<'
      '/'
      'a'
      'd'
      '>'
      ''
      '<'
      '/'
      'l'
      'i'
      'n'
      'h'
      'a'
      '_'
      'd'
      'u'
      'p'
      'l'
      'a'
      '>')
    ScrollBars = ssVertical
    TabOrder = 3
    Visible = False
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 61
    Top = 136
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'Where'
      '(%MFiltro)'
      'order by TERMA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 33
    Top = 136
  end
  object DSTblTemporaria: TDataSource
    DataSet = TblTemporaria
    Left = 102
    Top = 312
  end
  object TblTemporaria: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    Left = 74
    Top = 312
  end
  object BatchMove: TBatchMove
    Mode = batCopy
    Left = 46
    Top = 312
  end
  object SQLOperador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO'
      'order by USUAA60LOGIN')
    Macros = <>
    Left = 34
    Top = 225
  end
  object DSSQLOperador: TDataSource
    DataSet = SQLOperador
    Left = 62
    Top = 225
  end
  object DSSQLTotalOperacao: TDataSource
    DataSet = SQLTotalOperacao
    Left = 277
    Top = 257
  end
  object SQLTotalOperacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.OPCXICOD,'
      '  OPERACAOCAIXA.OPCXA60DESCR,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED) as CREDITOS,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRDEB) as DEBITOS,'
      
        '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED - MOVIMENTOCAIXA.MVCXN2VLRDEB' +
        ') as Saldo'
      'from'
      '  MOVIMENTOCAIXA, OPERACAOCAIXA'
      'where'
      '  MOVIMENTOCAIXA.OPCXICOD = OPERACAOCAIXA.OPCXICOD and'
      '  (%MData)     and'
      '  (%MEmpresa)  and'
      '  (%MTerminal) and'
      '  (%MOperador)'
      'group by'
      '  MOVIMENTOCAIXA.OPCXICOD, OPERACAOCAIXA.OPCXA60DESCR'
      'order by'
      '  OPERACAOCAIXA.OPCXA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 249
    Top = 257
    object SQLTotalOperacaoOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.MOVIMENTOCAIXA.OPCXICOD'
    end
    object SQLTotalOperacaoOPCXA60DESCR: TStringField
      DisplayLabel = 'OPERA'#199#195'O'
      FieldName = 'OPCXA60DESCR'
      Origin = 'DB.OPERACAOCAIXA.OPCXA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTotalOperacaoCREDITOS: TFloatField
      FieldName = 'CREDITOS'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRCRED'
      DisplayFormat = '#,##0.00'
    end
    object SQLTotalOperacaoDEBITOS: TFloatField
      FieldName = 'DEBITOS'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRDEB'
      DisplayFormat = '#,##0.00'
    end
    object SQLTotalOperacaoSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '#,##0.00'
    end
  end
  object DSSQLTotaNumrario: TDataSource
    DataSet = SQLTotaNumerario
    Left = 221
    Top = 257
  end
  object SQLTotaNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.NUMEICOD,'
      '  NUMERARIO.NUMEA30DESCR,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED) as VlrCredito,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRDEB)  as VlrDebito,'
      
        '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED - MOVIMENTOCAIXA.MVCXN2VLRDEB' +
        ') as Saldo'
      'from'
      '  MOVIMENTOCAIXA, NUMERARIO'
      'where'
      '  MOVIMENTOCAIXA.NUMEICOD = NUMERARIO.NUMEICOD and'
      '  (%MData)     and'
      '  (%MEmpresa)  and'
      '  (%MTerminal) and'
      '  (%MOperador)'
      'group by'
      '  MOVIMENTOCAIXA.NUMEICOD, NUMERARIO.NUMEA30DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 193
    Top = 257
    object SQLTotaNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLTotaNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTotaNumerarioVLRCREDITO: TFloatField
      FieldName = 'VLRCREDITO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTotaNumerarioVLRDEBITO: TFloatField
      FieldName = 'VLRDEBITO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTotaNumerarioSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '#,##0.00'
    end
  end
  object SQLVendaCartoesCheques: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.NUMEICOD,'
      '  NUMERARIO.NUMEA30DESCR,'
      '  NUMERARIO.PRCAA13ID as TEF,'
      '  CONTASRECEBER.BANCA5CODCHQ,'
      '  CONTASRECEBER.CTRCA10AGENCIACHQ,'
      '  CONTASRECEBER.CTRCA15NROCHQ'
      'from'
      
        '  ((CONTASRECEBER inner join CUPOM  on CONTASRECEBER.CUPOA13ID =' +
        ' CUPOM.CUPOA13ID)'
      
        ' left outer join NUMERARIO on CONTASRECEBER.NUMEICOD = NUMERARIO' +
        '.NUMEICOD)'
      'where'
      ' CUPOM.CUPOCSTATUS <> '#39'C'#39' and '
      '  (%MData)     and'
      '  (%MEmpresa)  and'
      '  (%MTerminal) and'
      '  (%MOperador)'
      'Order BY'
      '  CONTASRECEBER.NUMEICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 363
    Top = 257
    object SQLVendaCartoesChequesCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLVendaCartoesChequesCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLVendaCartoesChequesNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLVendaCartoesChequesNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLVendaCartoesChequesTEF: TStringField
      FieldName = 'TEF'
      FixedChar = True
      Size = 13
    end
    object SQLVendaCartoesChequesBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLVendaCartoesChequesCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLVendaCartoesChequesCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
  end
  object dsSQLVendaCartoesCheques: TDataSource
    DataSet = SQLVendaCartoesCheques
    Left = 391
    Top = 257
  end
  object SQLItensVendidos: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOMITEM.PRODICOD,'
      '  CUPOMITEM.CPITN3VLRUNIT,'
      '  sum(CUPOMITEM.CPITN3QTD-CUPOMITEM.CPITN3QTDTROCA) as QTDE,'
      
        '  sum((CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD) - CUPOMITE' +
        'M.CPITN2DESC) as VLRTOTALITEM'
      'from'
      
        '  CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.CUP' +
        'OA13ID'
      'where'
      ' CUPOM.CUPOCSTATUS <> '#39'C'#39' and'
      '  (%MData)     and'
      '  (%MEmpresa)  and'
      '  (%MTerminal) and'
      '  (%MOperador)'
      'group by'
      '  CUPOMITEM.PRODICOD,'
      '  CUPOMITEM.CPITN3VLRUNIT'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 306
    Top = 257
    object SQLItensVendidosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLItensVendidosCPITN3VLRUNIT: TFloatField
      FieldName = 'CPITN3VLRUNIT'
    end
    object SQLItensVendidosQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object SQLItensVendidosVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
  end
  object dsSQLItensVendidos: TDataSource
    DataSet = SQLItensVendidos
    Left = 334
    Top = 257
  end
  object ReportTotais: TppReport
    AutoStop = False
    DataPipeline = PipeOperacao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormClose = ReportTotaisPreviewFormClose
    OnPreviewFormCreate = ReportTotaisPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 387
    Top = 315
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeOperacao'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 35454
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Resumo de Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 5027
        mmLeft = 265
        mmTop = 7938
        mmWidth = 36777
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pe'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3754
        mmLeft = 998
        mmTop = 15346
        mmWidth = 11762
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Terminal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 265
        mmTop = 19579
        mmWidth = 15140
        BandType = 1
      end
      object LbPeriodo: TppLabel
        UserName = 'LbPeriodo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbPeriodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 15346
        mmTop = 15610
        mmWidth = 14389
        BandType = 1
      end
      object LbTerminal: TppLabel
        UserName = 'LbTerminal'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LbTerminal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 18521
        mmTop = 19579
        mmWidth = 15766
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3754
        mmLeft = 265
        mmTop = 23548
        mmWidth = 14014
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3754
        mmLeft = 16669
        mmTop = 23548
        mmWidth = 26776
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'www.conceitossistemas.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 159015
        mmTop = 9525
        mmWidth = 35454
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Responsaveis pelo Caixa Ass.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 265
        mmTop = 31485
        mmWidth = 46567
        BandType = 1
      end
      object ppOperador: TppLabel
        UserName = 'Operador'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Operador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 265
        mmTop = 27517
        mmWidth = 16129
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Por Opera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3503
        mmLeft = 0
        mmTop = 265
        mmWidth = 107950
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3503
        mmLeft = 128132
        mmTop = 265
        mmWidth = 10510
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'D'#233'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3503
        mmLeft = 157053
        mmTop = 265
        mmWidth = 9635
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3503
        mmLeft = 186462
        mmTop = 265
        mmWidth = 8008
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'OPCXA60DESCR'
        DataPipeline = PipeOperacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3503
        mmLeft = 0
        mmTop = 0
        mmWidth = 107686
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CREDITOS'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3503
        mmLeft = 114829
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEBITOS'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3503
        mmLeft = 149490
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SALDO'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3503
        mmLeft = 174096
        mmTop = 201
        mmWidth = 20638
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 18256
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'PipeNumerario'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12700
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipeNumerario
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 256
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeNumerario'
          object ppTitleBand5: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppLabel15: TppLabel
              UserName = 'Label6'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total Por Numer'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4318
              mmLeft = 0
              mmTop = 0
              mmWidth = 110861
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Cr'#233'dito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 126207
              mmTop = 0
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'D'#233'bito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 156369
              mmTop = 0
              mmWidth = 11906
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 185209
              mmTop = 0
              mmWidth = 9790
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText5: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NUMEA30DESCR'
              DataPipeline = PipeNumerario
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3754
              mmLeft = 0
              mmTop = 0
              mmWidth = 110861
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VLRCREDITO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3754
              mmLeft = 115888
              mmTop = 0
              mmWidth = 23019
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VLRDEBITO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3754
              mmLeft = 146844
              mmTop = 0
              mmWidth = 21431
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SALDO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3754
              mmLeft = 174361
              mmTop = 0
              mmWidth = 20638
              BandType = 4
            end
          end
          object SumarioNumerarios: TppSummaryBand
            BeforePrint = SumarioNumerariosBeforePrint
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 14288
            mmPrintPosition = 0
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc3'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'SALDO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 9
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3810
              mmLeft = 171387
              mmTop = 1058
              mmWidth = 24088
              BandType = 7
            end
            object ppLabel33: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Totais:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 265
              mmWidth = 12171
              BandType = 7
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 5292
              mmWidth = 197115
              BandType = 7
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 115094
              mmTop = 265
              mmWidth = 81492
              BandType = 7
            end
            object SubProdutosVendidos: TppSubReport
              UserName = 'SubProdutosVendidos'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'PipeItensVendidos'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 6085
              mmWidth = 197300
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport5: TppChildReport
                AutoStop = False
                DataPipeline = PipeItensVendidos
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.PaperName = 'A4'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.mmMarginBottom = 6350
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 6350
                PrinterSetup.mmPaperHeight = 297000
                PrinterSetup.mmPaperWidth = 210000
                PrinterSetup.PaperSize = 256
                Version = '10.06'
                mmColumnWidth = 0
                DataPipelineName = 'PipeItensVendidos'
                object TituloProdutosVendidos: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 8467
                  mmPrintPosition = 0
                  object ppLabel41: TppLabel
                    UserName = 'Label1'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Vlr.Total Item'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 10
                    Font.Style = [fsBold, fsUnderline]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 171450
                    mmTop = 3969
                    mmWidth = 24553
                    BandType = 1
                  end
                  object ppLabel42: TppLabel
                    UserName = 'Label2'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Quantidade'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 10
                    Font.Style = [fsBold, fsUnderline]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 150548
                    mmTop = 3969
                    mmWidth = 20405
                    BandType = 1
                  end
                  object ppLabel43: TppLabel
                    UserName = 'Label3'
                    AutoSize = False
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Produtos Vendidos'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 10
                    Font.Style = [fsBold, fsUnderline]
                    Transparent = True
                    mmHeight = 4318
                    mmLeft = 0
                    mmTop = 3969
                    mmWidth = 110861
                    BandType = 1
                  end
                  object ppLabel30: TppLabel
                    UserName = 'Label30'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Caption = 'Vlr.U.Venda'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 10
                    Font.Style = [fsBold, fsUnderline]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 4233
                    mmLeft = 129403
                    mmTop = 3969
                    mmWidth = 20743
                    BandType = 1
                  end
                end
                object DetalheProdutosVendidos: TppDetailBand
                  BeforePrint = DetalheProdutosVendidosBeforePrint
                  Visible = False
                  mmBottomOffset = 0
                  mmHeight = 1058
                  mmPrintPosition = 0
                  object ppDBText27: TppDBText
                    UserName = 'DBText10'
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'QTDE'
                    DataPipeline = PipeItensVendidos
                    DisplayFormat = '#0.000'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'PipeItensVendidos'
                    mmHeight = 1058
                    mmLeft = 161132
                    mmTop = 0
                    mmWidth = 7154
                    BandType = 4
                  end
                  object ppDBText28: TppDBText
                    UserName = 'DBText101'
                    AutoSize = True
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    DataField = 'VLRTOTALITEM'
                    DataPipeline = PipeItensVendidos
                    DisplayFormat = '#0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Name = 'Tahoma'
                    Font.Size = 8
                    Font.Style = []
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'PipeItensVendidos'
                    mmHeight = 1058
                    mmLeft = 175155
                    mmTop = 0
                    mmWidth = 19770
                    BandType = 4
                  end
                end
                object SumarioProdutosVendidos: TppSummaryBand
                  BeforePrint = SumarioProdutosVendidosBeforePrint
                  PrintHeight = phDynamic
                  mmBottomOffset = 0
                  mmHeight = 10054
                  mmPrintPosition = 0
                  object ppLine5: TppLine
                    UserName = 'Line1'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Pen.Style = psDot
                    Weight = 0.750000000000000000
                    mmHeight = 529
                    mmLeft = 529
                    mmTop = 794
                    mmWidth = 197115
                    BandType = 7
                  end
                  object SubVendasCartoesCheque: TppSubReport
                    UserName = 'SubVendasCartoesCheque'
                    ExpandAll = False
                    NewPrintJob = False
                    OutlineSettings.CreateNode = True
                    TraverseAllData = False
                    DataPipelineName = 'PipeVendasCartoesCheques'
                    mmHeight = 5027
                    mmLeft = 0
                    mmTop = 2117
                    mmWidth = 197300
                    BandType = 7
                    mmBottomOffset = 0
                    mmOverFlowOffset = 0
                    mmStopPosition = 0
                    object ppChildReport6: TppChildReport
                      AutoStop = False
                      DataPipeline = PipeVendasCartoesCheques
                      PrinterSetup.BinName = 'Default'
                      PrinterSetup.DocumentName = 'Report'
                      PrinterSetup.PaperName = 'A4'
                      PrinterSetup.PrinterName = 'Default'
                      PrinterSetup.mmMarginBottom = 6350
                      PrinterSetup.mmMarginLeft = 6350
                      PrinterSetup.mmMarginRight = 6350
                      PrinterSetup.mmMarginTop = 6350
                      PrinterSetup.mmPaperHeight = 297000
                      PrinterSetup.mmPaperWidth = 210000
                      PrinterSetup.PaperSize = 256
                      Version = '10.06'
                      mmColumnWidth = 0
                      DataPipelineName = 'PipeVendasCartoesCheques'
                      object TituloVendaCartoes: TppTitleBand
                        mmBottomOffset = 0
                        mmHeight = 16404
                        mmPrintPosition = 0
                        object ppLabel7: TppLabel
                          UserName = 'Label1'
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Numer'#225'rio'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 10
                          Font.Style = [fsBold, fsUnderline]
                          Transparent = True
                          mmHeight = 4233
                          mmLeft = 2117
                          mmTop = 11642
                          mmWidth = 56092
                          BandType = 1
                        end
                        object ppLabel8: TppLabel
                          UserName = 'Label2'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Valor Opera'#231#227'o'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 10
                          Font.Style = [fsBold, fsUnderline]
                          TextAlignment = taRightJustified
                          Transparent = True
                          mmHeight = 4254
                          mmLeft = 74838
                          mmTop = 11642
                          mmWidth = 27027
                          BandType = 1
                        end
                        object ppLabel46: TppLabel
                          UserName = 'Label46'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Vencimento'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 10
                          Font.Style = [fsBold, fsUnderline]
                          Transparent = True
                          mmHeight = 4254
                          mmLeft = 103452
                          mmTop = 11642
                          mmWidth = 21021
                          BandType = 1
                        end
                        object ppLabel48: TppLabel
                          UserName = 'Label48'
                          AutoSize = False
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Demonstrativo de Vendas de Cartoes, Cheques e Crediarios'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 10
                          Font.Style = [fsBold]
                          Transparent = True
                          mmHeight = 4254
                          mmLeft = 2646
                          mmTop = 2381
                          mmWidth = 110861
                          BandType = 1
                        end
                        object ppLabel47: TppLabel
                          UserName = 'Label47'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Banco'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 10
                          Font.Style = [fsBold, fsUnderline]
                          Transparent = True
                          mmHeight = 4254
                          mmLeft = 126471
                          mmTop = 11642
                          mmWidth = 10761
                          BandType = 1
                        end
                        object ppLabel49: TppLabel
                          UserName = 'Label49'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Agencia'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 10
                          Font.Style = [fsBold, fsUnderline]
                          Transparent = True
                          mmHeight = 4254
                          mmLeft = 138907
                          mmTop = 11642
                          mmWidth = 14014
                          BandType = 1
                        end
                        object ppLabel50: TppLabel
                          UserName = 'Label50'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'Nro. Cheque'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 10
                          Font.Style = [fsBold, fsUnderline]
                          Transparent = True
                          mmHeight = 4254
                          mmLeft = 162719
                          mmTop = 11642
                          mmWidth = 21897
                          BandType = 1
                        end
                      end
                      object DetalheVendaCartoes: TppDetailBand
                        mmBottomOffset = 0
                        mmHeight = 4233
                        mmPrintPosition = 0
                        object ppDBText29: TppDBText
                          UserName = 'DBText29'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'NUMEA30DESCR'
                          DataPipeline = PipeVendasCartoesCheques
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 9
                          Font.Style = []
                          Transparent = True
                          DataPipelineName = 'PipeVendasCartoesCheques'
                          mmHeight = 3704
                          mmLeft = 2117
                          mmTop = 529
                          mmWidth = 61913
                          BandType = 4
                        end
                        object ppDBText30: TppDBText
                          UserName = 'DBText30'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'CTRCN2VLR'
                          DataPipeline = PipeVendasCartoesCheques
                          DisplayFormat = '#,0.00;-#,0.00'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 9
                          Font.Style = []
                          TextAlignment = taRightJustified
                          Transparent = True
                          DataPipelineName = 'PipeVendasCartoesCheques'
                          mmHeight = 3754
                          mmLeft = 78846
                          mmTop = 529
                          mmWidth = 23019
                          BandType = 4
                        end
                        object ppDBText31: TppDBText
                          UserName = 'DBText301'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'CTRCDVENC'
                          DataPipeline = PipeVendasCartoesCheques
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 9
                          Font.Style = []
                          TextAlignment = taCentered
                          Transparent = True
                          DataPipelineName = 'PipeVendasCartoesCheques'
                          mmHeight = 3754
                          mmLeft = 103452
                          mmTop = 529
                          mmWidth = 20902
                          BandType = 4
                        end
                        object ppDBText32: TppDBText
                          UserName = 'DBText32'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'BANCA5CODCHQ'
                          DataPipeline = PipeVendasCartoesCheques
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 9
                          Font.Style = []
                          Transparent = True
                          DataPipelineName = 'PipeVendasCartoesCheques'
                          mmHeight = 3754
                          mmLeft = 126471
                          mmTop = 529
                          mmWidth = 10848
                          BandType = 4
                        end
                        object ppDBText33: TppDBText
                          UserName = 'DBText33'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'CTRCA10AGENCIACHQ'
                          DataPipeline = PipeVendasCartoesCheques
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 9
                          Font.Style = []
                          Transparent = True
                          DataPipelineName = 'PipeVendasCartoesCheques'
                          mmHeight = 3704
                          mmLeft = 138907
                          mmTop = 529
                          mmWidth = 21960
                          BandType = 4
                        end
                        object ppDBText34: TppDBText
                          UserName = 'DBText34'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          DataField = 'CTRCA15NROCHQ'
                          DataPipeline = PipeVendasCartoesCheques
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 9
                          Font.Style = []
                          Transparent = True
                          DataPipelineName = 'PipeVendasCartoesCheques'
                          mmHeight = 3704
                          mmLeft = 162719
                          mmTop = 529
                          mmWidth = 31750
                          BandType = 4
                        end
                        object TEF: TppLabel
                          UserName = 'TEF'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Caption = 'TEF'
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clBlack
                          Font.Name = 'Tahoma'
                          Font.Size = 9
                          Font.Style = []
                          TextAlignment = taCentered
                          Transparent = True
                          mmHeight = 3754
                          mmLeft = 66411
                          mmTop = 529
                          mmWidth = 5255
                          BandType = 4
                        end
                      end
                      object SumarioVendaCartoes: TppSummaryBand
                        PrintHeight = phDynamic
                        mmBottomOffset = 0
                        mmHeight = 9790
                        mmPrintPosition = 0
                        object ppLine2: TppLine
                          UserName = 'Line1'
                          Border.BorderPositions = []
                          Border.Color = clBlack
                          Border.Style = psSolid
                          Border.Visible = False
                          Pen.Style = psDot
                          Weight = 0.750000000000000000
                          mmHeight = 794
                          mmLeft = 529
                          mmTop = 794
                          mmWidth = 197115
                          BandType = 7
                        end
                      end
                    end
                  end
                end
                object ppGroup1: TppGroup
                  BreakName = 'PRODICOD'
                  DataPipeline = PipeItensVendidos
                  KeepTogether = True
                  OutlineSettings.CreateNode = True
                  UserName = 'Group1'
                  mmNewColumnThreshold = 0
                  mmNewPageThreshold = 0
                  DataPipelineName = 'PipeItensVendidos'
                  object ppGroupHeaderBand1: TppGroupHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 529
                    mmPrintPosition = 0
                  end
                  object TotalProdutosVendidos: TppGroupFooterBand
                    mmBottomOffset = 0
                    mmHeight = 3704
                    mmPrintPosition = 0
                    object ppDBCalc4: TppDBCalc
                      UserName = 'DBCalc4'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'QTDE'
                      DataPipeline = PipeItensVendidos
                      DisplayFormat = '##0.000'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      ResetGroup = ppGroup1
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'PipeItensVendidos'
                      mmHeight = 3440
                      mmLeft = 151871
                      mmTop = 265
                      mmWidth = 16669
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppDBCalc2: TppDBCalc
                      UserName = 'DBCalc2'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'VLRTOTALITEM'
                      DataPipeline = PipeItensVendidos
                      DisplayFormat = '##0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      ResetGroup = ppGroup1
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'PipeItensVendidos'
                      mmHeight = 3429
                      mmLeft = 173832
                      mmTop = 265
                      mmWidth = 21167
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppDBText26: TppDBText
                      UserName = 'DBText9'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'PRODICOD'
                      DataPipeline = PipeItensVendidos
                      DisplayFormat = '#####00000'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      DataPipelineName = 'PipeItensVendidos'
                      mmHeight = 3440
                      mmLeft = 529
                      mmTop = 265
                      mmWidth = 17198
                      BandType = 5
                      GroupNo = 0
                    end
                    object Produto: TppLabel
                      UserName = 'Produto'
                      AutoSize = False
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Caption = 'Produto'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 19050
                      mmTop = 265
                      mmWidth = 92604
                      BandType = 5
                      GroupNo = 0
                    end
                    object ppDBText20: TppDBText
                      UserName = 'DBText102'
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      DataField = 'CPITN3VLRUNIT'
                      DataPipeline = PipeItensVendidos
                      DisplayFormat = '#0.000'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'Tahoma'
                      Font.Size = 8
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'PipeItensVendidos'
                      mmHeight = 3440
                      mmLeft = 130704
                      mmTop = 265
                      mmWidth = 19579
                      BandType = 5
                      GroupNo = 0
                    end
                  end
                end
              end
            end
          end
        end
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'TotalCredito'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CREDITOS'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3503
        mmLeft = 114300
        mmTop = 1588
        mmWidth = 24342
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'TotalDebito'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DEBITOS'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3503
        mmLeft = 142346
        mmTop = 1588
        mmWidth = 24342
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 11377
        mmWidth = 197115
        BandType = 7
      end
      object ppLabel45: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Totais:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3503
        mmLeft = 1143
        mmTop = 794
        mmWidth = 9885
        BandType = 7
      end
      object ppLine12: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 114300
        mmTop = 529
        mmWidth = 81492
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SALDO'
        DataPipeline = PipeOperacao
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3429
        mmLeft = 173356
        mmTop = 1588
        mmWidth = 21378
        BandType = 7
      end
    end
  end
  object PipeOperacao: TppBDEPipeline
    DataSource = DSSQLTotalOperacao
    OpenDataSource = False
    UserName = 'PipeOperacao'
    Left = 243
    Top = 315
    object PipeOperacaoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'OPCXICOD'
      FieldName = 'OPCXICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PipeOperacaoppField2: TppField
      FieldAlias = 'OPCXA60DESCR'
      FieldName = 'OPCXA60DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object PipeOperacaoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDITOS'
      FieldName = 'CREDITOS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 2
    end
    object PipeOperacaoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBITOS'
      FieldName = 'DEBITOS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 3
    end
    object PipeOperacaoppField5: TppField
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
  end
  object PipeNumerario: TppBDEPipeline
    DataSource = DSSQLTotaNumrario
    OpenDataSource = False
    UserName = 'PipeNumerario'
    Left = 271
    Top = 315
    object PipeNumerarioppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMEICOD'
      FieldName = 'NUMEICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PipeNumerarioppField2: TppField
      FieldAlias = 'NUMEA30DESCR'
      FieldName = 'NUMEA30DESCR'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object PipeNumerarioppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLRCREDITO'
      FieldName = 'VLRCREDITO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 2
    end
    object PipeNumerarioppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLRDEBITO'
      FieldName = 'VLRDEBITO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 3
    end
    object PipeNumerarioppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
  object PipeItensVendidos: TppBDEPipeline
    DataSource = dsSQLItensVendidos
    OpenDataSource = False
    UserName = 'PipeItensVendidos'
    Left = 300
    Top = 315
    object PipeItensVendidosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object CPITN3VLRUNIT: TppField
      FieldAlias = 'CPITN3VLRUNIT'
      FieldName = 'CPITN3VLRUNIT'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object PipeItensVendidosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE'
      FieldName = 'QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object PipeItensVendidosppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLRTOTALITEM'
      FieldName = 'VLRTOTALITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
  end
  object PipeVendasCartoesCheques: TppBDEPipeline
    DataSource = dsSQLVendaCartoesCheques
    UserName = 'PipeVendasCartoesCheques'
    Left = 329
    Top = 315
    object PipeVendasCartoesChequesppField1: TppField
      FieldAlias = 'CTRCN2VLR'
      FieldName = 'CTRCN2VLR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeVendasCartoesChequesppField2: TppField
      FieldAlias = 'CTRCDVENC'
      FieldName = 'CTRCDVENC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeVendasCartoesChequesppField3: TppField
      FieldAlias = 'NUMEICOD'
      FieldName = 'NUMEICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeVendasCartoesChequesppField4: TppField
      FieldAlias = 'NUMEA30DESCR'
      FieldName = 'NUMEA30DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeVendasCartoesChequesppField5: TppField
      FieldAlias = 'TEF'
      FieldName = 'TEF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeVendasCartoesChequesppField6: TppField
      FieldAlias = 'BANCA5CODCHQ'
      FieldName = 'BANCA5CODCHQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeVendasCartoesChequesppField7: TppField
      FieldAlias = 'CTRCA10AGENCIACHQ'
      FieldName = 'CTRCA10AGENCIACHQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeVendasCartoesChequesppField8: TppField
      FieldAlias = 'CTRCA15NROCHQ'
      FieldName = 'CTRCA15NROCHQ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'ckImpProdutosVendidos.Checked'
      'CKImpVendaCartoes.Checked'
      'ckBobina.Checked')
    StoredValues = <>
    Left = 509
    Top = 74
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    BorderColor = 14986888
    PanelAppearanceLight.BorderColor = 14922381
    PanelAppearanceLight.BorderColorHot = clGray
    PanelAppearanceLight.BorderColorDown = 10240783
    PanelAppearanceLight.Color = 16440774
    PanelAppearanceLight.ColorTo = 14854530
    PanelAppearanceLight.ColorHot = 13958143
    PanelAppearanceLight.ColorHotTo = 6538487
    PanelAppearanceLight.ColorDown = 9232890
    PanelAppearanceLight.ColorDownTo = 1940207
    PanelAppearanceLight.ColorMirror = 14854530
    PanelAppearanceLight.ColorMirrorTo = 14854530
    PanelAppearanceLight.ColorMirrorHot = 6538487
    PanelAppearanceLight.ColorMirrorHotTo = 6538487
    PanelAppearanceLight.ColorMirrorDown = 1940207
    PanelAppearanceLight.ColorMirrorDownTo = 1940207
    PanelAppearanceLight.TextColor = clBlack
    PanelAppearanceLight.TextColorHot = clBlack
    PanelAppearanceLight.TextColorDown = clBlack
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = clGray
    PanelAppearanceDark.BorderColorDown = 10240783
    PanelAppearanceDark.Color = 14986888
    PanelAppearanceDark.ColorTo = 14986888
    PanelAppearanceDark.ColorHot = 13958143
    PanelAppearanceDark.ColorHotTo = 6538487
    PanelAppearanceDark.ColorDown = 9232890
    PanelAppearanceDark.ColorDownTo = 1940207
    PanelAppearanceDark.ColorMirror = 14986888
    PanelAppearanceDark.ColorMirrorTo = 14986888
    PanelAppearanceDark.ColorMirrorHot = 6538487
    PanelAppearanceDark.ColorMirrorHotTo = 6538487
    PanelAppearanceDark.ColorMirrorDown = 1940207
    PanelAppearanceDark.ColorMirrorDownTo = 1940207
    PanelAppearanceDark.TextColor = clWhite
    PanelAppearanceDark.TextColorHot = clWhite
    PanelAppearanceDark.TextColorDown = clWhite
    PanelAppearanceDark.TextStyle = []
    Left = 544
    Top = 8
  end
end
