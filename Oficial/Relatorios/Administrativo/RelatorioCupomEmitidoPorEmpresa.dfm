inherited FormRelatorioCupomEmitidoPorEmpresa: TFormRelatorioCupomEmitidoPorEmpresa
  Caption = 'Relatorio de Cupons Emitidos por Empresa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited TblTemporaria: TTable
    TableName = 'RelProdutosVendidos.DB'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaEmpresaNome: TStringField
      FieldName = 'EmpresaNome'
      Size = 60
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object TblTemporariaCUPODENTREGA: TDateField
      FieldName = 'CUPODENTREGA'
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCPITTOBS: TStringField
      FieldName = 'CPITTOBS'
      Size = 200
    end
    object TblTemporariaCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
    end
    object TblTemporariaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object TblTemporariaVendedorNome: TStringField
      FieldName = 'VendedorNome'
      Size = 15
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaClienteNome: TStringField
      FieldName = 'CLIENTENOME'
      Size = 60
    end
    object TblTemporariaGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
    end
    object TblTemporariaGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
    end
    object TblTemporariaCORICOD: TIntegerField
      FieldName = 'CORICOD'
    end
    object TblTemporariaTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 5
    end
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOM.EMPRICOD,'
      '  CUPOM.CUPOA13ID,'
      '  CUPOM.CUPODEMIS,'
      '  CUPOM.CUPODENTREGA,'
      '  CUPOMITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.GRADICOD,'
      '  PRODUTO.GRTMICOD,'
      '  PRODUTO.CORICOD,'
      '  CUPOMITEM.CPITN3QTD,'
      '  CUPOMITEM.VENDICOD AS VENDICOD,'
      '  CUPOM.CLIEA13ID,'
      '  CUPOM.CLIENTENOME,'
      '  CUPOMITEM.CPITTOBS'
      'from'
      
        '  ((CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.C' +
        'UPOA13ID)'
      
        ' left outer join PRODUTO on CUPOMITEM.PRODICOD = PRODUTO.PRODICO' +
        'D)'
      'where'
      '  CUPOM.CUPOCSTATUS = ''A'' and'
      '  CUPOMITEM.CPITN3QTD > 0 and'
      '  CUPOMITEM.CPITCSTATUS <> ''C'' and'
      '  (%MEmpresa) and'
      '  (%MData)'
      '')
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
      end>
    Left = 485
    Top = 5
    object SQLVendasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLVendasCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLVendasCUPODENTREGA: TDateTimeField
      FieldName = 'CUPODENTREGA'
    end
    object SQLVendasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLVendasPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVendasCPITTOBS: TStringField
      FieldName = 'CPITTOBS'
      Size = 200
    end
    object SQLVendasGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
    end
    object SQLVendasGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
    end
    object SQLVendasCORICOD: TIntegerField
      FieldName = 'CORICOD'
    end
    object SQLVendasCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
    end
    object SQLVendasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLVendasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      FixedChar = True
      Size = 60
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\GestaoOficial\Relatorios\Produtos Vendidos.rpt'
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
    Formulas.Formula.Strings = (
      '"Empresa"')
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
    Left = 192
    Top = 5
  end
end
