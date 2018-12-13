inherited FormRelatorioComissaoDetalhadoRepresentante: TFormRelatorioComissaoDetalhadoRepresentante
  Left = 284
  Top = 103
  Caption = 'Relat'#243'rio de Comiss'#245'es Detalhado Representante'
  ClientHeight = 470
  ClientWidth = 797
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 454
    Width = 797
  end
  inherited ScrollBox: TScrollBox
    Width = 797
    Height = 454
    inherited PanelCentro: TPanel
      Height = 301
      inherited BtnVisualizar: TSpeedButton
        Top = 255
      end
      object Label5: TLabel [1]
        Left = 271
        Top = 184
        Width = 73
        Height = 13
        Caption = '% Comiss'#227'o:'
        FocusControl = De
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited GroupBox1: TGroupBox
        Width = 244
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 203
        Width = 407
        Height = 41
        Caption = 'Representante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboVendedor: TRxDBLookupCombo
          Left = 6
          Top = 16
          Width = 395
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          LookupField = 'REPRICOD'
          LookupDisplay = 'REPRA60RAZAOSOC'
          LookupSource = DSSQLRepresentante
          TabOrder = 0
          OnKeyDown = ComboVendedorKeyDown
        end
      end
      object edtComissao: TCurrencyEdit
        Left = 347
        Top = 176
        Width = 72
        Height = 21
        AutoSize = False
        DisplayFormat = '0.00;0.00'
        TabOrder = 3
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 793
      inherited PanelCabecalho: TPanel
        Width = 793
        inherited PanelNavigator: TPanel
          Width = 793
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 793
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelComissaoDetalhadaRep.db'
    object TblTemporariaNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
    object TblTemporariaNOFIN2VLRNOTA: TFloatField
      FieldName = 'NOFIN2VLRNOTA'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Size = 60
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTemporariaVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
    end
    object TblTemporariaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object TblTemporariaVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object TblTemporariaNOME_REPRESENTANTE: TStringField
      FieldName = 'NOME_REPRESENTANTE'
      Size = 60
    end
  end
  object SQLComissao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select NF.NOFIINUMERO, NF.NOFIN2VLRNOTA, CLI.CLIEA13ID, CLI.CLIE' +
        'A60RAZAOSOC, P.PRODICOD, P.PRODA60DESCR,'
      
        '       ((NFI.NFITN2VLRUNIT * NFI.NFITN3QUANT) * coalesce(REP.PER' +
        'C_COMISSAO, 0) / 100) VALOR_COMISSAO, REP.PERC_COMISSAO,'
      
        '       NFI.NFITN2VLRUNIT * NFI.NFITN3QUANT VALOR_TOTAL, COALESCE' +
        '(REP.REPRA60RAZAOSOC,'#39'Sem Representante'#39') NOME_REPRESENTANTE'
      'from NOTAFISCAL NF'
      'left join NOTAFISCALITEM NFI on NF.NOFIA13ID = NFI.NOFIA13ID'
      'left join REPRESENTANTE REP on REP.REPRICOD = NF.REPRICOD'
      'left join PRODUTO P on NFI.PRODICOD = P.PRODICOD'
      'inner join CLIENTE CLI on CLI.CLIEA13ID = NF.CLIEA13ID'
      'where 0 = 0 and'
      '      P.COMISSAO_REPRESENTANTE = '#39'S'#39' and'
      '      NF.NOFICSTATUS <> '#39'C'#39' and'
      '      NF.NOFIN2VLRNOTA > 0 and'
      '      REP.PERC_COMISSAO > 0 and'
      '      (%MDATA)   and'
      '      (%MRepresentante) and'
      '      (%MPercentual)')
    Macros = <
      item
        DataType = ftString
        Name = 'MDATA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MRepresentante'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPercentual'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLComissaoNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
    object SQLComissaoNOFIN2VLRNOTA: TFloatField
      FieldName = 'NOFIN2VLRNOTA'
    end
    object SQLComissaoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLComissaoCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLComissaoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLComissaoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLComissaoVALOR_COMISSAO: TFloatField
      FieldName = 'VALOR_COMISSAO'
    end
    object SQLComissaoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object SQLComissaoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object SQLComissaoNOME_REPRESENTANTE: TStringField
      FieldName = 'NOME_REPRESENTANTE'
      FixedChar = True
      Size = 60
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 514
    Top = 4
  end
  object SQLRepresentante: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select REPRICOD, REPRA60RAZAOSOC, REPRA60NOMEFANT, PERC_COMISSAO'
      'from REPRESENTANTE  ')
    Macros = <>
    Left = 208
    Top = 4
    object SQLRepresentanteREPRICOD: TIntegerField
      FieldName = 'REPRICOD'
      Origin = 'DB.REPRESENTANTE.REPRICOD'
    end
    object SQLRepresentanteREPRA60RAZAOSOC: TStringField
      FieldName = 'REPRA60RAZAOSOC'
      Origin = 'DB.REPRESENTANTE.REPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLRepresentanteREPRA60NOMEFANT: TStringField
      FieldName = 'REPRA60NOMEFANT'
      Origin = 'DB.REPRESENTANTE.REPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLRepresentantePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      Origin = 'DB.REPRESENTANTE.PERC_COMISSAO'
    end
  end
  object DSSQLRepresentante: TDataSource
    DataSet = SQLRepresentante
    Left = 180
    Top = 4
  end
end
