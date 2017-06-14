inherited FormRelatorioCupomEmitido: TFormRelatorioCupomEmitido
  Left = 436
  Top = 116
  Caption = 'Relat'#243'rio de Cupons Emitidos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Top = 102
      Height = 275
      inherited BtnVisualizar: TSpeedButton
        Left = 103
        Top = 212
        Height = 27
      end
      object CKApenasCanceladas: TCheckBox
        Left = 248
        Top = 218
        Width = 125
        Height = 17
        Caption = 'Apenas Canceladas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'CuponsEmitidos.db'
    object TblTemporariaCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
      Origin = 'DB.CUPOM.CUPOINRO'
    end
    object TblTemporariaCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CUPOM.TERMICOD'
    end
    object TblTemporariaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CUPOM.PLRCICOD'
    end
    object TblTemporariaCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      Origin = 'DB.CUPOM.CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
    end
    object TblTemporariaCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCHAVEACESSO: TStringField
      FieldName = 'CHAVEACESSO'
      Origin = 'DB.CUPOM.CHAVEACESSO'
      Size = 44
    end
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  CUPOM.CUPOINRO,'
      '  CUPOM.CUPODEMIS,'
      '  CUPOM.TERMICOD,'
      '  CUPOM.PLRCICOD,'
      '  CUPOM.CUPOCSTATUS,'
      '  CUPOM.CUPON2TOTITENS+'
      '        CUPOM.CUPON3CREDTAXA+'
      '        CUPOM.CUPON2ACRESC-'
      '        CUPOM.CUPON2DESC-'
      '        CUPOM.CUPON3BONUSTROCA-'
      '        CUPOM.CUPON2TOTITENSRET as TOTAL,'
      '  CUPOM.CUPOCTIPOPADRAO,'
      '  CUPOM.CHAVEACESSO,'
      '  PLANORECEBIMENTO.PLRCA60DESCR'
      'FROM'
      '  CUPOM'
      
        '  LEFT OUTER JOIN PLANORECEBIMENTO ON CUPOM.PLRCICOD = PLANORECE' +
        'BIMENTO.PLRCICOD'
      'WHERE'
      ' CUPOM.CUPOINRO > 0'
      'and'
      ' (%Empresa)'
      'and'
      ' (%Data)'
      'and'
      ' (%Tipo)'
      'ORDER BY'
      '  CUPOM.CUPODEMIS,'
      '  CUPOM.CUPOINRO,'
      '  PLANORECEBIMENTO.PLRCA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLCupomCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
      Origin = 'DB.CUPOM.CUPOINRO'
    end
    object SQLCupomCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object SQLCupomTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CUPOM.TERMICOD'
    end
    object SQLCupomPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CUPOM.PLRCICOD'
    end
    object SQLCupomCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      Origin = 'DB.CUPOM.CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
    end
    object SQLCupomCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLCupomPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCupomCHAVEACESSO: TStringField
      FieldName = 'CHAVEACESSO'
      Origin = 'DB.CUPOM.CHAVEACESSO'
      Size = 44
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\UnitGestao Oficial\Relatorios\Vendas Por Periodo.rpt'
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
    ConnectMethod = useLogOnInfo
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
    Left = 446
    Top = 5
  end
  object SQLCupomItem: TRxQuery
    OnCalcFields = SQLCupomItemCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      'cupomitem.PRODICOD,'
      'cupomitem.CPITN3QTD,'
      'cupomitem.CPITN3VLRUNIT,'
      'cupomitem.CPITN2DESC'
      'from'
      'cupomitem'
      'inner join      cupom   on cupomitem.cupoa13id = cupom.cupoa13id'
      'WHERE'
      'CUPOM.CUPOINRO > 0'
      'and'
      '(%Empresa)'
      'and'
      '(%Data)'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 474
    Top = 5
    object SQLCupomItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLCupomItemCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
    end
    object SQLCupomItemCPITN3VLRUNIT: TFloatField
      FieldName = 'CPITN3VLRUNIT'
    end
    object SQLCupomItemCPITN2DESC: TFloatField
      FieldName = 'CPITN2DESC'
    end
    object SQLCupomItemProdutoLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 100
      Calculated = True
    end
  end
  object TblCupomItem: TTable
    Tag = 1
    TableName = 'CuponsEmitidosItens.db'
    Left = 502
    Top = 5
    object TblCupomItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblCupomItemCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
    end
    object TblCupomItemCPITN3VLRUNIT: TFloatField
      FieldName = 'CPITN3VLRUNIT'
    end
    object TblCupomItemCPITN2DESC: TFloatField
      FieldName = 'CPITN2DESC'
    end
    object TblCupomItemProdutoLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 100
      Calculated = True
    end
  end
end
