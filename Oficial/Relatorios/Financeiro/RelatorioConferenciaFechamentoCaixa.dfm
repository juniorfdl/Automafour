object FormConferenciaFechamentoCaixa: TFormConferenciaFechamentoCaixa
  Left = 334
  Top = 195
  Width = 685
  Height = 319
  Caption = 'Relat'#243'rio para Confer'#234'ncia do Fechamento de Caixa'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ptopo: TAdvOfficeStatusBar
    Left = 0
    Top = 0
    Width = 669
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
    DesignSize = (
      669
      49)
    object RxLabel2: TRxLabel
      Left = 0
      Top = 0
      Width = 675
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Relat'#243'rio para Confer'#234'ncia do Fechamento de Caixa'
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
    object BtnFecharTela: TSpeedButton
      Tag = 3
      Left = 593
      Top = 4
      Width = 76
      Height = 25
      Cursor = crHandPoint
      Hint = 'Fechar Tela'
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000130B0000130B0000000100000001000000000000DCE4
        E4007975BE00817DC6002D2D2D004F4D8A005B579E005F5EA7006866AF00716D
        B6008986CD0008080800FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000B
        0B0B0B0B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0001010000000000000C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0001010101000000000C0C0C0C0C0C0C0C0C0C0C
        0C0C00000001010101010100000C0C0C0C0C0C0C0C0C0C0C0C0C000200010101
        01010100000C0C0C0C0C0C0C0C000000000000020300010101010100000C0C0C
        0C0C0C0C0C00050607080902030A000101010100000C0C0C0C0C0C0C0C000506
        07080902030A000100040100000C0C0C0C0C0C0C0C0000000000000203000101
        04000100000C0C0C0C0C0C0C0C0C0C0C0C0C00020001010101010100000C0C0C
        0C0C0C0C0C0C0C0C0C0C00000001010101010100000C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0001010101010100000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00010101
        01010100000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C}
      ParentFont = False
      OnClick = BtnFecharTelaClick
    end
  end
  object AdvSmoothPanel1: TAdvSmoothPanel
    Left = 21
    Top = 56
    Width = 538
    Height = 225
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
      Top = 159
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
    object GroupBox4: TGroupBox
      Left = 63
      Top = 111
      Width = 408
      Height = 40
      Caption = ' Operador '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
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
    Left = 278
    Top = 216
  end
  object TblTemporaria: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    Left = 250
    Top = 216
  end
  object BatchMove: TBatchMove
    Mode = batCopy
    Left = 222
    Top = 216
  end
  object SQLOperador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO'
      'order by USUAA60LOGIN')
    Macros = <>
    Left = 34
    Top = 177
  end
  object DSSQLOperador: TDataSource
    DataSet = SQLOperador
    Left = 62
    Top = 177
  end
  object DSSQLTotaNumrario: TDataSource
    DataSet = SQLTotaNumerario
    Left = 205
    Top = 241
  end
  object SQLTotaNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT NUMEICOD, NUMEA30DESCR, VLRCREDITO, VLRDEBITO, (VLRCREDIT' +
        'O - VLRDEBITO) AS SALDO,'
      
        '       VALOR_DIGITADO, (COALESCE(VALOR_DIGITADO, 0) - COALESCE(I' +
        'IF((VLRCREDITO - VLRDEBITO) < 0,'
      
        '                                                                ' +
        '   (VLRCREDITO - VLRDEBITO) * -1,'
      
        '                                                                ' +
        '   (VLRCREDITO - VLRDEBITO)), 0)) AS DIFERENCA'
      'FROM(SELECT B.NUMEICOD,'
      '       B.NUMEA30DESCR,'
      '       CAI.VLRCREDITO,'
      '       CAI.VLRDEBITO,'
      '       CAI.SALDO,'
      '       FEC.VALOR_DIGITADO'
      'FROM NUMERARIO B'
      'LEFT JOIN (SELECT NUMEICOD,'
      '                  SUM(MVCXN2VLRCRED) AS VLRCREDITO,'
      '                  SUM(MVCXN2VLRDEB) AS VLRDEBITO,'
      '                  SUM(MVCXN2VLRCRED - MVCXN2VLRDEB) AS SALDO'
      '           FROM MOVIMENTOCAIXA'
      '           WHERE (%MData)'
      '           AND (%MEmpresa)'
      '           AND (%MTerminal)'
      '           AND (%MOperador)'
      '           GROUP BY NUMEICOD) CAI ON CAI.NUMEICOD = B.NUMEICOD'
      'LEFT JOIN (SELECT D.COD_CPRZ,'
      '                  SUM(D.VALOR) AS VALOR_DIGITADO'
      '           FROM CUPOM_FECHAMENTO C'
      
        '           LEFT JOIN CUPOM_FECHAMENTO_ITEM D ON D.COD_CUPOM_FECH' +
        'AMENTO = C.COD_CUPOM_FECHAMENTO'
      '           WHERE 0=0'
      '           AND (%OPERACAO_CAIXA) '
      '           AND (%FData)'
      '           GROUP BY D.COD_CPRZ) FEC ON FEC.COD_CPRZ = B.NUMEICOD'
      'WHERE ((CAI.VLRCREDITO <> 0) OR'
      '       (CAI.VLRDEBITO <> 0) OR'
      '       (CAI.SALDO <> 0) OR'
      '       (FEC.VALOR_DIGITADO <> 0)))')
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
      end
      item
        DataType = ftString
        Name = 'FData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 177
    Top = 241
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
    object SQLTotaNumerarioVALOR_DIGITADO: TFloatField
      FieldName = 'VALOR_DIGITADO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTotaNumerarioDIFERENCA: TFloatField
      FieldName = 'DIFERENCA'
      DisplayFormat = '#,##0.00'
    end
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
    PrinterSetup.PaperSize = 9
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
    Left = 563
    Top = 219
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeOperacao'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Confer'#234'ncia do Fechamento de Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 5122
        mmLeft = 265
        mmTop = 6085
        mmWidth = 78528
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 0
        mmTop = 13494
        mmWidth = 13377
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
        mmTop = 17727
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
        mmTop = 13758
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
        mmTop = 17727
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
        mmTop = 21696
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
        mmTop = 21696
        mmWidth = 26776
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
        mmTop = 29633
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
        mmTop = 25665
        mmWidth = 16129
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 5292
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
        mmTop = 1588
        mmWidth = 80169
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
        mmLeft = 90223
        mmTop = 1588
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
        mmLeft = 115094
        mmTop = 1588
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
        mmLeft = 139965
        mmTop = 1588
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
        mmWidth = 74348
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
        mmLeft = 76994
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
        mmLeft = 107421
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
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3503
        mmLeft = 127265
        mmTop = 201
        mmWidth = 20638
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
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
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3503
        mmLeft = 76465
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
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3503
        mmLeft = 100277
        mmTop = 1588
        mmWidth = 24342
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
        mmLeft = 76200
        mmTop = 529
        mmWidth = 120386
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
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeOperacao'
        mmHeight = 3429
        mmLeft = 129307
        mmTop = 1588
        mmWidth = 18542
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'PipeNumerario1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'PipeNumerario'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 7144
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
          PrinterSetup.PaperSize = 9
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeNumerario'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppLabel6: TppLabel
              UserName = 'Label1'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total Por Numer'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 3503
              mmLeft = 0
              mmTop = 265
              mmWidth = 80169
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label2'
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
              mmLeft = 90223
              mmTop = 265
              mmWidth = 10510
              BandType = 1
            end
            object ppLabel8: TppLabel
              UserName = 'Label3'
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
              mmLeft = 115094
              mmTop = 265
              mmWidth = 9635
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
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
              mmLeft = 139965
              mmTop = 265
              mmWidth = 8008
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Valor Contado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3429
              mmLeft = 153723
              mmTop = 265
              mmWidth = 20108
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Diferen'#231'a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3429
              mmLeft = 182827
              mmTop = 265
              mmWidth = 13716
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NUMEA30DESCR'
              DataPipeline = PipeNumerario
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3503
              mmLeft = 0
              mmTop = 0
              mmWidth = 74348
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText1'
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
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3503
              mmLeft = 76994
              mmTop = 0
              mmWidth = 23813
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
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
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3503
              mmLeft = 107421
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
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
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3503
              mmLeft = 127265
              mmTop = 265
              mmWidth = 20638
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VALOR_DIGITADO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3503
              mmLeft = 153194
              mmTop = 265
              mmWidth = 20638
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DIFERENCA'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3503
              mmLeft = 175948
              mmTop = 265
              mmWidth = 20638
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLabel17: TppLabel
              UserName = 'Label17'
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
              mmLeft = 1058
              mmTop = 794
              mmWidth = 9885
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'TotalCredito1'
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
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3503
              mmLeft = 76465
              mmTop = 1588
              mmWidth = 24342
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'TotalDebito1'
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
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3503
              mmLeft = 100277
              mmTop = 1588
              mmWidth = 24342
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
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
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3429
              mmLeft = 129382
              mmTop = 1588
              mmWidth = 18542
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VALOR_DIGITADO'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3429
              mmLeft = 138377
              mmTop = 1588
              mmWidth = 35433
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DIFERENCA'
              DataPipeline = PipeNumerario
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeNumerario'
              mmHeight = 3429
              mmLeft = 170921
              mmTop = 1588
              mmWidth = 25612
              BandType = 7
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 76200
              mmTop = 529
              mmWidth = 120386
              BandType = 7
            end
          end
        end
      end
    end
  end
  object PipeNumerario: TppBDEPipeline
    DataSource = DSSQLTotaNumrario
    OpenDataSource = False
    UserName = 'PipeNumerario'
    Left = 447
    Top = 219
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
    object VALOR_DIGITADO: TppField
      FieldAlias = 'VALOR_DIGITADO'
      FieldName = 'VALOR_DIGITADO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object DIFERENCA: TppField
      FieldAlias = 'DIFERENCA'
      FieldName = 'DIFERENCA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
  end
  object FormStorage1: TFormStorage
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
  object SQLTotalOperacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select A.OPCXICOD, B.OPCXA60DESCR, sum(A.MVCXN2VLRCRED) as CREDI' +
        'TOS, sum(A.MVCXN2VLRDEB) as DEBITOS,'
      '       sum(A.MVCXN2VLRCRED - A.MVCXN2VLRDEB) as SALDO'
      'from MOVIMENTOCAIXA A'
      'inner join OPERACAOCAIXA B on B.OPCXICOD = A.OPCXICOD'
      'where B.IMPRIMIR_RESUMO = '#39'S'#39' and'
      '      (%MData) and'
      '      (%MEmpresa) and'
      '      (%MTerminal) and'
      '      (%MOperador)'
      'group by A.OPCXICOD, B.OPCXA60DESCR'
      'order by B.OPCXA60DESCR  ')
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
    Left = 37
    Top = 232
    object SQLTotalOperacaoOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
    end
    object SQLTotalOperacaoOPCXA60DESCR: TStringField
      FieldName = 'OPCXA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTotalOperacaoCREDITOS: TFloatField
      FieldName = 'CREDITOS'
    end
    object SQLTotalOperacaoDEBITOS: TFloatField
      FieldName = 'DEBITOS'
    end
    object SQLTotalOperacaoSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object DSSQLTotalOperacao: TDataSource
    DataSet = SQLTotalOperacao
    Left = 69
    Top = 232
  end
  object PipeOperacao: TppBDEPipeline
    DataSource = DSSQLTotalOperacao
    OpenDataSource = False
    UserName = 'PipeOperacao'
    Left = 493
    Top = 216
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
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object PipeOperacaoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBITOS'
      FieldName = 'DEBITOS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object PipeOperacaoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
  end
end
