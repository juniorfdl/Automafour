inherited FormRelatorioVendasPeriodoApuracaoMargem: TFormRelatorioVendasPeriodoApuracaoMargem
  Left = 194
  Top = 122
  Caption = 'Relat'#243'rio de Vendas por Vendedor com Apura'#231#227'o de Margem'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Height = 323
      inherited BtnVisualizar: TSpeedButton
        Top = 249
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 203
        Width = 407
        Height = 40
        Caption = ' Vendedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboVendedor: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 390
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSQLVendedor
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'VendasApurMargem.DB'
    object TblTemporariaNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object TblTemporariaNOFIN2VLRPRODUTO: TFloatField
      FieldName = 'NOFIN2VLRPRODUTO'
    end
    object TblTemporariaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TblTemporariaNOFIN2VLRDESC: TFloatField
      FieldName = 'NOFIN2VLRDESC'
    end
    object TblTemporariaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object TblTemporariaNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaVLRLUCRO: TFloatField
      FieldName = 'VLRLUCRO'
    end
    object TblTemporariaDOC: TIntegerField
      FieldName = 'DOC'
    end
    object TblTemporariaCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
  end
  object SQLNotasFiscais: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      'NOTAFISCAL.NOFIA13ID,'
      'NOTAFISCAL.EMPRICOD,'
      'NOTAFISCAL.CLIEA13ID,'
      'NOTAFISCAL.SERIA5COD as SERIE,'
      'NOTAFISCAL.NOFIDEMIS,'
      'NOTAFISCAL.NOFIN2VLRPRODUTO,'
      'NOTAFISCAL.NOFIN2VLRNOTA as TOTAL,'
      'NOTAFISCAL.NOFIN2VLRDESC,'
      'NOTAFISCAL.VENDICOD,'
      'NOTAFISCAL.NOFICSTATUS,'
      'CLIENTE.CLIEA60RAZAOSOC,'
      'VENDEDOR.VENDA60NOME,'
      '(select sum(NFITN2VLRLUCRO)'
      ' from'
      ' NOTAFISCALITEM'
      ' where'
      ' NOTAFISCALITEM.NOFIA13ID = NOTAFISCAL.NOFIA13ID'
      ' Group By'
      ' NOTAFISCALITEM.NOFIA13ID) as VlrLucro,'
      ' NOTAFISCAL.NOFIINUMERO as DOC,'
      ' VENDEDOR.VENDN2COMISV as COMISSAO'
      'from'
      'NOTAFISCAL'
      
        'left outer join CLIENTE CLIENTE on NOTAFISCAL.CLIEA13ID = CLIENT' +
        'E.CLIEA13ID'
      
        'left outer join VENDEDOR VENDEDOR on NOTAFISCAL.VENDICOD = VENDE' +
        'DOR.VENDICOD'
      
        'left outer join OPERACAOESTOQUE OPERACAOESTOQUE on NOTAFISCAL.OP' +
        'ESICOD = OPERACAOESTOQUE.OPESICOD'
      'where'
      'NOTAFISCAL.NOFICSTATUS='#39'E'#39' and'
      'NOTAFISCAL.CUPOA13ID is null'
      'and'
      '(%MCampoData between %MDataInicial and %MDataFinal)'
      'and'
      '(%MEmpresa)'
      'and'
      '(%MVendedor)'
      'and'
      'OPERACAOESTOQUE.OPESCGERAFINANCEIRO = '#39'S'#39
      'Order By'
      '  NOTAFISCAL.NOFIDEMIS asc,'
      '  NOTAFISCAL.VENDICOD'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MCampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataFinal'
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
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLNotasFiscaisNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotasFiscaisEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLNotasFiscaisCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotasFiscaisSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 5
    end
    object SQLNotasFiscaisNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object SQLNotasFiscaisNOFIN2VLRPRODUTO: TFloatField
      FieldName = 'NOFIN2VLRPRODUTO'
    end
    object SQLNotasFiscaisTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object SQLNotasFiscaisNOFIN2VLRDESC: TFloatField
      FieldName = 'NOFIN2VLRDESC'
    end
    object SQLNotasFiscaisVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLNotasFiscaisNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotasFiscaisCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLNotasFiscaisVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLNotasFiscaisVLRLUCRO: TFloatField
      FieldName = 'VLRLUCRO'
    end
    object SQLNotasFiscaisDOC: TIntegerField
      FieldName = 'DOC'
    end
    object SQLNotasFiscaisCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select VENDICOD, VENDA60NOME from VENDEDOR')
    Macros = <>
    Left = 486
    Top = 5
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 458
    Top = 5
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 
      'D:\DESENV\UnitGestao\Relatorios\Vendas Por Periodo + Consignadas' +
      ' + Cheques.rpt'
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
    Left = 192
    Top = 4
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOM.CUPOA13ID as NOFIA13ID,'
      '  CUPOM.EMPRICOD as EMPRICOD,'
      '  CUPOM.CLIEA13ID as CLIEA13ID,'
      '  CUPOM.CUPOCTIPOPADRAO as SERIE,'
      '  CUPOM.CUPODEMIS as NOFIDEMIS,'
      '  CUPOM.CUPON2TOTITENS as NOFIN2VLRPRODUTO,'
      
        '  (CUPOM.CUPON2TOTITENS + CUPOM.CUPON3CREDTAXA + CUPOM.CUPON2ACR' +
        'ESC - CUPOM.CUPON2DESC - CUPOM.CUPON3BONUSTROCA) AS TOTAL,'
      '  CUPOM.CUPON2DESC as NOFIN2VLRDESC,'
      '  CUPOM.VENDICOD as VENDICOD,'
      '  CUPOM.CUPOCSTATUS as NOFICSTATUS,'
      '  CLIENTE.CLIEA60RAZAOSOC as CLIEA60RAZAOSOC,'
      '  VENDEDOR.VENDA60NOME as VENDA60NOME,'
      ' (select sum(CPITN3VLRUNITLUCR)'
      '  from'
      '  CUPOMITEM'
      '  where'
      '  CUPOM.CUPOA13ID = CUPOMITEM.CUPOA13ID and'
      '  CUPOMITEM.CPITN3QTD > 0'
      '  Group By'
      '  CUPOMITEM.CUPOA13ID) as VlrLucro,'
      '  CUPOM.CUPOINRO as DOC,'
      '  VENDEDOR.VENDN2COMISV as COMISSAO'
      'from'
      
        ' (CUPOM CUPOM inner join CLIENTE CLIENTE on CUPOM.CLIEA13ID = CL' +
        'IENTE.CLIEA13ID)'
      
        ' left outer join VENDEDOR VENDEDOR on CUPOM.VENDICOD = VENDEDOR.' +
        'VENDICOD'
      'where'
      '  CUPOM.CUPOCSTATUS = "A" and'
      '  (%MEmpresa) and'
      '  (%MCampoData between %MDataInicial and %MDataFinal) and'
      '  (%MVendedor)'
      'order by'
      '  CUPOM.CUPODEMIS asc ,'
      '  CUPOM.VENDICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataFinal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 37
    object SQLVendasNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLVendasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasSERIE: TStringField
      FieldName = 'SERIE'
      FixedChar = True
      Size = 5
    end
    object SQLVendasNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object SQLVendasNOFIN2VLRPRODUTO: TFloatField
      FieldName = 'NOFIN2VLRPRODUTO'
    end
    object SQLVendasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object SQLVendasNOFIN2VLRDESC: TFloatField
      FieldName = 'NOFIN2VLRDESC'
    end
    object SQLVendasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLVendasNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLVendasCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLVendasVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLVendasVLRLUCRO: TFloatField
      FieldName = 'VLRLUCRO'
    end
    object SQLVendasDOC: TIntegerField
      FieldName = 'DOC'
    end
    object SQLVendasCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
  end
end
