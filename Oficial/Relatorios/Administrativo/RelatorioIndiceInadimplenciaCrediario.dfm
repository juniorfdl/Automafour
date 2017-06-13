inherited FormRelatorioIndiceInadimplenciaCrediario: TFormRelatorioIndiceInadimplenciaCrediario
  Left = 206
  Top = 122
  Caption = 'Indice de Inadimpl'#234'ncia do Credi'#225'rio e Cheques Vencidos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited TblTemporaria: TTable
    TableName = 'IndiceInadimplencia.db'
    object TblTemporariaEmpricod: TIntegerField
      FieldName = 'Empricod'
    end
    object TblTemporariaEmpresaRazaoSoc: TStringField
      FieldName = 'EmpresaRazaoSoc'
      Size = 60
    end
    object TblTemporariaValorTotalAReceber: TFloatField
      FieldName = 'ValorTotalAReceber'
    end
    object TblTemporariaValorTotalRecebido: TFloatField
      FieldName = 'ValorTotalRecebido'
    end
    object TblTemporariaIndice: TFloatField
      FieldName = 'Indice'
    end
    object TblTemporariaValorDiferenca: TFloatField
      FieldName = 'ValorDiferenca'
    end
  end
  object SQLContasAReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  cast(CONTASRECEBER.CTRCA13ID as char(30)) as CTRCA13ID,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.CTRCCSTATUS,'
      '  CONTASRECEBER.CTRCA5TIPOPADRAO,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.CTRCN2TXJURO,'
      '  CONTASRECEBER.CTRCN2TXMULTA,'
      '  CONTASRECEBER.CTRCN2TOTMULTACOBR,'
      '  CONTASRECEBER.CTRCN2TOTREC,'
      '  CONTASRECEBER.CTRCDEMIS,'
      '  CONTASRECEBER.CUPOA13ID'
      'from'
      '  CONTASRECEBER'
      'where'
      '  (%MEmpresa) and '
      '  (%Mdata) and'
      '  (CONTASRECEBER.CTRCCSTATUS = "A") and'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO = "CRD") or'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO = "CHQV") or'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO = "CHQP") or'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO = "CHQ")  ')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Mdata'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 423
    Top = 5
    object SQLContasAReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLContasAReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasAReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasAReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasAReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasAReceberCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLContasAReceberCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLContasAReceberCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLContasAReceberCTRCN2TOTMULTACOBR: TBCDField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Precision = 15
      Size = 3
    end
    object SQLContasAReceberCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLContasAReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasAReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLContasRecebidas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  cast(CONTASRECEBER.CTRCA13ID as char(30)) as CTRCA13ID,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.CTRCCSTATUS,'
      '  CONTASRECEBER.CTRCA5TIPOPADRAO,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.CTRCN2TXJURO,'
      '  CONTASRECEBER.CTRCN2TXMULTA,'
      '  CONTASRECEBER.CTRCN2TOTMULTACOBR,'
      '  CONTASRECEBER.CTRCN2TOTREC,'
      '  CONTASRECEBER.CTRCDEMIS,'
      '  CONTASRECEBER.CUPOA13ID'
      'from'
      '  CONTASRECEBER'
      'where'
      '  (%MEmpresa) and'
      '  (%Mdata) and'
      '  (CONTASRECEBER.CTRCCSTATUS = "A") and'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO = "CRD") or'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO = "CHQV") or'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO = "CHQP") or'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO = "CHQ")   and'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC)= 0 ')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Mdata'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 456
    Top = 5
    object SQLContasRecebidasCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLContasRecebidasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasRecebidasCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasRecebidasCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasRecebidasCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasRecebidasCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object SQLContasRecebidasCTRCN2TXJURO: TBCDField
      FieldName = 'CTRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLContasRecebidasCTRCN2TXMULTA: TBCDField
      FieldName = 'CTRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLContasRecebidasCTRCN2TOTMULTACOBR: TBCDField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Precision = 15
      Size = 3
    end
    object SQLContasRecebidasCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object SQLContasRecebidasCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasRecebidasCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
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
    Left = 216
    Top = 5
  end
end
