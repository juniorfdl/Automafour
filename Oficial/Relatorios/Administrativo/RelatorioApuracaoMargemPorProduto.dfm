inherited FormRelatorioApuracaoMargemPorProduto: TFormRelatorioApuracaoMargemPorProduto
  Caption = 'Apura'#231#227'o de Margem por Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Left = 36
      Width = 733
      Height = 281
      inherited BtnVisualizar: TSpeedButton
        Left = 279
      end
      inherited GroupBox1: TGroupBox
        object CheckPeriodo: TCheckBox
          Left = 244
          Top = 15
          Width = 149
          Height = 17
          Caption = 'Desconsiderar Per'#237'odo'
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 425
        Top = 4
        Width = 248
        Height = 199
        Caption = 'Filtros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object LabelSubGrupo: TLabel
          Left = 9
          Top = 47
          Width = 54
          Height = 13
          Caption = 'Subgrupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelVariacao: TLabel
          Left = 9
          Top = 82
          Width = 49
          Height = 13
          Caption = 'Varia'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 8
          Top = 13
          Width = 34
          Height = 13
          Caption = 'Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 11
          Top = 117
          Width = 35
          Height = 13
          Caption = 'Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 13
          Top = 152
          Width = 44
          Height = 13
          Caption = 'Cole'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboSubGrupo: TRxDBLookupCombo
          Left = 6
          Top = 60
          Width = 236
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGICOD'
          Enabled = False
          LookupField = 'SUBGICOD'
          LookupDisplay = 'SUBGA60DESCR'
          LookupSource = DSSQLSubGrupo
          TabOrder = 1
        end
        object ComboVariacao: TRxDBLookupCombo
          Left = 6
          Top = 95
          Width = 236
          Height = 21
          DropDownCount = 8
          DataField = 'VARIICOD'
          Enabled = False
          LookupField = 'VARIICOD'
          LookupDisplay = 'VARIA60DESCR'
          LookupSource = DSSQLVariacao
          TabOrder = 2
        end
        object ComboGrupo: TRxDBLookupCombo
          Left = 6
          Top = 26
          Width = 236
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPICOD'
          LookupField = 'GRUPICOD'
          LookupDisplay = 'GRUPA60DESCR'
          LookupSource = DSSQLGrupo
          TabOrder = 0
        end
        object ComboMarca: TRxDBLookupCombo
          Left = 6
          Top = 130
          Width = 236
          Height = 21
          DropDownCount = 8
          DataField = 'VARIICOD'
          LookupField = 'MARCICOD'
          LookupDisplay = 'MARCA60DESCR'
          LookupSource = DSSQLMarca
          TabOrder = 3
        end
        object ComboColecao: TRxDBLookupCombo
          Left = 6
          Top = 165
          Width = 236
          Height = 21
          DropDownCount = 8
          DataField = 'VARIICOD'
          LookupField = 'COLEICOD'
          LookupDisplay = 'COLEA60DESCR'
          LookupSource = DSSQLColecao
          TabOrder = 4
        end
      end
      object ckMargem: TCheckBox
        Left = 456
        Top = 211
        Width = 154
        Height = 17
        Caption = 'Calcular Mg.Produto Venda'
        TabOrder = 3
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ApuracaoMgProduto'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
    object TblTemporariaPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object TblTemporariaVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object TblTemporariaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
    end
    object TblTemporariaMARGEMPERC: TFloatField
      FieldName = 'MARGEMPERC'
    end
    object TblTemporariaMARGEMVLR: TFloatField
      FieldName = 'MARGEMVLR'
    end
    object TblTemporariaCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
    end
    object TblTemporariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
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
    object TblTemporariaEstoqueAtual: TFloatField
      FieldName = 'EstoqueAtual'
    end
    object TblTemporariaVLRCUSTOTOTAL: TFloatField
      FieldName = 'VLRCUSTOTOTAL'
    end
    object TblTemporariaGRUPODESCRICAO: TStringField
      FieldName = 'GRUPODESCRICAO'
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
    Left = 250
    Top = 5
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOM.EMPRICOD,'
      '  CUPOM.CUPODEMIS,'
      '  CUPOM.REGISTRO,'
      '  CUPOMITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      
        '  ((CUPOMITEM.CPITN3VLRUNIT - CUPOMITEM.CPITN2DESC) * CUPOMITEM.' +
        'CPITN3QTD) as VLRTOTALITEM,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.GRUPICOD,'
      '  PRODUTO.SUBGICOD,'
      '  PRODUTO.VARIICOD,'
      '  PRODUTO.MARCICOD,'
      '  PRODUTO.COLEICOD,'
      '  PRODUTO.GRADICOD,'
      '  PRODUTO.GRTMICOD,'
      '  PRODUTO.CORICOD,'
      '  0.0 AS MARGEMPERC,'
      
        '  ((CUPOMITEM.CPITN3VLRUNIT- CUPOMITEM.CPITN2DESC) - PRODUTO.PRO' +
        'DN3VLRCUSTO) * CUPOMITEM.CPITN3QTD AS MARGEMVLR,'
      '  CUPOMITEM.CPITN3QTD,'
      '  CUPOM.CUPOA13ID'
      'from'
      
        '  ((CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.C' +
        'UPOA13ID)'
      
        ' left outer join PRODUTO on CUPOMITEM.PRODICOD = PRODUTO.PRODICO' +
        'D)'
      'where'
      '  CUPOM.CUPOCSTATUS <> "C" and'
      '  CUPOMITEM.CPITN3QTD > 0 and'
      '  (%MFiltro)  and'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MGrupo) and'
      '  (%MSubGrupo) and'
      '  (%MVariacao) and'
      '  (%MMarca) and'
      '  (%MColecao)'
      'union all'
      'select'
      '  NOTAFISCAL.EMPRICOD,'
      '  NOTAFISCAL.NOFIDEMIS,'
      '  NOTAFISCAL.REGISTRO,'
      '  NOTAFISCALITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      
        '  (NOTAFISCALITEM.NFITN2VLRUNIT * NOTAFISCALITEM.NFITN3QUANT) as' +
        ' VLRTOTALITEM,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.GRUPICOD,'
      '  PRODUTO.SUBGICOD,'
      '  PRODUTO.VARIICOD,'
      '  PRODUTO.MARCICOD,'
      '  PRODUTO.COLEICOD,'
      '  PRODUTO.GRADICOD,'
      '  PRODUTO.GRTMICOD,'
      '  PRODUTO.CORICOD,'
      '  0.0 AS MARGEMPERC,'
      
        '  (NOTAFISCALITEM.NFITN2VLRUNIT-PRODUTO.PRODN3VLRCUSTO) * NOTAFI' +
        'SCALITEM.NFITN3QUANT AS MARGEMVLR,'
      '  NOTAFISCALITEM.NFITN3QUANT,'
      '  Cast(NOTAFISCAL.NOFIINUMERO as CHAR(13))'
      'from'
      
        '  ((NOTAFISCALITEM inner join NOTAFISCAL on NOTAFISCALITEM.NOFIA' +
        '13ID = NOTAFISCAL.NOFIA13ID)'
      
        ' left outer join PRODUTO on NOTAFISCALITEM.PRODICOD = PRODUTO.PR' +
        'ODICOD)'
      
        ' left outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD = OPERAC' +
        'AOESTOQUE.OPESICOD'
      'where'
      '  NOTAFISCAL.NOFICSTATUS = "E"   and'
      '  NOTAFISCALITEM.NFITN3QUANT > 0 and'
      '  (%MFiltro1)   and'
      '  (%MEmpresa1) and'
      '  (%MData1) and'
      '  (%MGrupo1) and'
      '  (%MSubGrupo1) and'
      '  (%MVariacao1) and'
      '  (%MMarca1) and'
      '  (%MColecao1) and  OPERACAOESTOQUE.OPESCGERAFINANCEIRO = '#39'S'#39
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
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
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSubGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVariacao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMarca'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MColecao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MGrupo1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSubGrupo1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVariacao1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMarca1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MColecao1'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 426
    Top = 5
    object SQLVendasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLVendasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLVendasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLVendasPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVendasVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
    object SQLVendasPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLVendasPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLVendasGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLVendasSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object SQLVendasVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object SQLVendasMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
    end
    object SQLVendasMARGEMPERC: TFloatField
      FieldName = 'MARGEMPERC'
    end
    object SQLVendasMARGEMVLR: TFloatField
      FieldName = 'MARGEMVLR'
    end
    object SQLVendasCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLVendasCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
    end
    object SQLVendasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
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
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRUPO'
      'order by GRUPA60DESCR')
    Macros = <>
    Left = 463
    Top = 5
    object SQLGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.GRUPO.GRUPICOD'
    end
    object SQLGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'DB.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 491
    Top = 5
  end
  object SQLSubGrupo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'select * from SUBGRUPO'
      'where'
      '  GRUPICOD = :GRUPICOD'
      'order by'
      '  SUBGA60DESCR')
    Macros = <>
    Left = 519
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLSubGrupoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.SUBGRUPO.SUBGICOD'
    end
    object SQLSubGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.SUBGRUPO.GRUPICOD'
    end
    object SQLSubGrupoSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Origin = 'DB.SUBGRUPO.SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLSubGrupo: TDataSource
    DataSet = SQLSubGrupo
    Left = 547
    Top = 5
  end
  object SQLVariacao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubGrupo
    SQL.Strings = (
      'select * from VARIACAO'
      'where '
      '   GRUPICOD = :GRUPICOD and'
      '   SUBGICOD = :SUBGICOD'
      'order by'
      '   VARIA60DESCR')
    Macros = <>
    Left = 575
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPICOD'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SUBGICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLVariacaoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.VARIACAO.VARIICOD'
    end
    object SQLVariacaoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.VARIACAO.GRUPICOD'
    end
    object SQLVariacaoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.VARIACAO.SUBGICOD'
    end
    object SQLVariacaoVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      Origin = 'DB.VARIACAO.VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVariacaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VARIACAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVariacaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VARIACAO.REGISTRO'
    end
  end
  object DSSQLVariacao: TDataSource
    DataSet = SQLVariacao
    Left = 603
    Top = 5
  end
  object SQLMarca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MARCA'
      'order by MARCA60DESCR')
    Macros = <>
    Left = 631
    Top = 5
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.MARCA.MARCICOD'
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'DB.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLMarca: TDataSource
    DataSet = SQLMarca
    Left = 659
    Top = 5
  end
  object DSSQLColecao: TDataSource
    DataSet = SQLColecao
    Left = 659
    Top = 33
  end
  object SQLColecao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from COLECAO'
      'order by COLEA60DESCR')
    Macros = <>
    Left = 631
    Top = 33
    object SQLColecaoCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
      Origin = 'DB.COLECAO.COLEICOD'
    end
    object SQLColecaoCOLEA60DESCR: TStringField
      FieldName = 'COLEA60DESCR'
      Origin = 'DB.COLECAO.COLEA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
