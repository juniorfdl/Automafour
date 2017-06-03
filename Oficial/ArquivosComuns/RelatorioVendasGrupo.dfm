inherited FormRelatorioVendasGrupo: TFormRelatorioVendasGrupo
  Left = 381
  Top = 190
  Caption = 'Relat'#243'rio de Vendas Por Grupo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited TblTemporaria: TTable
    TableName = 'RelVendasGrupo.DB'
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TblTemporariaQTDETOTAL: TFloatField
      FieldName = 'QTDETOTAL'
    end
  end
  object SQLVendaGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  PRODUTO.GRUPICOD,'
      '  GRUPO.GRUPA60DESCR,'
      '  sum(CUPOMITEM.CPITN3QTD) AS QTDETOTAL,'
      '  sum(CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD) AS TOTAL'
      'from'
      
        '  (CUPOMITEM inner join CUPOM CUPOM on CUPOM.CUPOA13ID = CUPOMIT' +
        'EM.CUPOA13ID)'
      
        '   inner join PRODUTO PRODUTO on PRODUTO.PRODICOD = CUPOMITEM.PR' +
        'ODICOD'
      '   inner join GRUPO GRUPO on GRUPO.GRUPICOD = PRODUTO.GRUPICOD'
      'where'
      
        '  CUPOM.CUPOCSTATUS = "A" and (CUPOMITEM.CPITCSTATUS <> "C" ) an' +
        'd'
      '  (%MEmpresa) and'
      '  (%MData)'
      'group by'
      '  PRODUTO.GRUPICOD,'
      '  GRUPO.GRUPA60DESCR'
      ''
      'union all'
      ''
      'select'
      '  PRODUTO.GRUPICOD,'
      '  GRUPO.GRUPA60DESCR,'
      '  sum(NOTAFISCALITEM.NFITN3QUANT) AS QTDETOTAL,'
      
        '  sum(NOTAFISCALITEM.NFITN2VLRUNIT * NOTAFISCALITEM.NFITN3QUANT)' +
        ' AS TOTAL'
      'from'
      
        '  (NOTAFISCALITEM inner join NOTAFISCAL NOTAFISCAL on NOTAFISCAL' +
        '.NOFIA13ID = NOTAFISCALITEM.NOFIA13ID)'
      
        '   left outer join PRODUTO PRODUTO on PRODUTO.PRODICOD = NOTAFIS' +
        'CALITEM.PRODICOD'
      
        '   left outer join GRUPO GRUPO on GRUPO.GRUPICOD = PRODUTO.GRUPI' +
        'COD'
      
        '   left outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD = OPER' +
        'ACAOESTOQUE.OPESICOD'
      'where'
      '  NOTAFISCAL.NOFICSTATUS = "E" and'
      '  OPERACAOESTOQUE.OPESCGERAFINANCEIRO = '#39'S'#39'  and'
      '  OPERACAOESTOQUE.OPESCENTRADASAIDA   = '#39'S'#39'  and'
      '  OPERACAOESTOQUE.OPESCORIGEMDESTINO  = '#39'C'#39'  and'
      '  (%MEmpresaNF) and'
      '  (%MDataNF)'
      'group by'
      '  PRODUTO.GRUPICOD,'
      '  GRUPO.GRUPA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaNF'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataNF'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 424
    Top = 5
    object SQLVendaGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLVendaGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVendaGrupoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object SQLVendaGrupoQTDETOTAL: TBCDField
      FieldName = 'QTDETOTAL'
      Precision = 15
      Size = 3
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
    ReportOptions.SaveDataWithReport = cFalse
    ReportOptions.SaveSummariesWithReport = cFalse
    ReportOptions.UseIndexForSpeed = cTrue
    ReportOptions.TranslateDOSStrings = cTrue
    ReportOptions.TranslateDOSMemos = cTrue
    ReportOptions.ConvertNullFieldToDefault = cFalse
    ReportOptions.PrintEngineErrorMessages = cTrue
    ReportOptions.CaseInsensitiveSQLData = cTrue
    ReportOptions.VerifyOnEveryPrint = cFalse
    ReportOptions.CreateGroupTree = cTrue
    ReportOptions.NoDataForHiddenObjects = cFalse
    ReportOptions.PerformGroupingOnServer = cFalse
    ReportOptions.ConvertDateTimeType = dtKeepAsDateTime
    ReportOptions.ZoomMode = pwNormal
    ReportOptions.AsyncQuery = cFalse
    Left = 454
    Top = 5
  end
end
