object FormTelaTotaisCaixa: TFormTelaTotaisCaixa
  Left = 139
  Top = 41
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 634
  ClientWidth = 599
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxfLabel13: TRxLabel
    Left = 159
    Top = 437
    Width = 410
    Height = 29
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dxfLabel14: TRxLabel
    Left = 159
    Top = 467
    Width = 481
    Height = 29
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dxfLabel15: TRxLabel
    Left = 159
    Top = 498
    Width = 314
    Height = 29
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object ptopo: TAdvOfficeStatusBar
    Left = 0
    Top = 0
    Width = 599
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
    object LblNomeSistema: TRxLabel
      Left = 0
      Top = 0
      Width = 269
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Totais de Caixa Ativo'
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
    Left = 35
    Top = 59
    Width = 538
    Height = 566
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
    TabOrder = 2
    object dxfLabel2: TRxLabel
      Left = 0
      Top = 0
      Width = 538
      Height = 23
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Total Numer'#225'rios'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object Panel1: TPanel
      Left = 13
      Top = 32
      Width = 502
      Height = 510
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object dxfLabel1: TRxLabel
        Left = 0
        Top = 159
        Width = 502
        Height = 23
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Total Opera'#231#245'es de Caixa'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShadowSize = 2
        ShadowPos = spRightBottom
        Transparent = True
      end
      object Panel3: TPanel
        Left = 0
        Top = 182
        Width = 502
        Height = 328
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 498
          Height = 328
          TabStop = False
          Align = alLeft
          BorderStyle = bsNone
          Color = clWhite
          Ctl3D = False
          DataSource = DSSQLTotalOperacao
          FixedColor = 16380658
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clRed
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'OPCXA60DESCR'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 284
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CREDITOS'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEBITOS'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end>
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 502
        Height = 159
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 518
          Height = 159
          TabStop = False
          Align = alLeft
          BorderStyle = bsNone
          Color = clWhite
          DataSource = DSSQLTotaNumrario
          FixedColor = 16380658
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgTitles, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clRed
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMEA30DESCR'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 291
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Title.Alignment = taRightJustify
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'Verdana'
              Title.Font.Style = [fsBold]
              Width = 187
              Visible = True
            end>
        end
      end
    end
  end
  object SQLTotaNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.NUMEICOD,'
      '  NUMERARIO.NUMEA30DESCR,'
      
        '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED-MOVIMENTOCAIXA.MVCXN2VLRDEB) ' +
        'as TOTAL'
      'from'
      '  MOVIMENTOCAIXA, NUMERARIO'
      'where'
      '  MOVIMENTOCAIXA.NUMEICOD = NUMERARIO.NUMEICOD and'
      '  %MFiltro and'
      '  %MOperador'
      'group by'
      '  MOVIMENTOCAIXA.NUMEICOD, NUMERARIO.NUMEA30DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 24
    Top = 256
    object SQLTotaNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.MOVIMENTOCAIXA.NUMEICOD'
    end
    object SQLTotaNumerarioNUMEA30DESCR: TStringField
      DisplayLabel = 'NUMER'#193'RIO'
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTotaNumerarioTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object SQLTotalOperacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.OPCXICOD,'
      '  OPERACAOCAIXA.OPCXA60DESCR,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRCRED) as CREDITOS,'
      '  sum(MOVIMENTOCAIXA.MVCXN2VLRDEB) as DEBITOS'
      'from'
      '  MOVIMENTOCAIXA, OPERACAOCAIXA'
      'where'
      '  MOVIMENTOCAIXA.OPCXICOD = OPERACAOCAIXA.OPCXICOD and'
      '  %MFiltro and'
      '  %MOperador'
      'group by'
      '  MOVIMENTOCAIXA.OPCXICOD, OPERACAOCAIXA.OPCXA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 24
    Top = 288
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
    object SQLTotalOperacaoCREDITOS: TBCDField
      FieldName = 'CREDITOS'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRCRED'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTotalOperacaoDEBITOS: TBCDField
      FieldName = 'DEBITOS'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRDEB'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLTotaNumrario: TDataSource
    DataSet = SQLTotaNumerario
    Left = 52
    Top = 256
  end
  object DSSQLTotalOperacao: TDataSource
    DataSet = SQLTotalOperacao
    Left = 52
    Top = 288
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
    Left = 560
    Top = 13
  end
end
