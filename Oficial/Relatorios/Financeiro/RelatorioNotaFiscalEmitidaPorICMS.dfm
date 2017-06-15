inherited FormRelatorioNotaEmitidaPorICMS: TFormRelatorioNotaEmitidaPorICMS
  Left = 272
  Top = 165
  Caption = 'Relatorio de Nota Fiscal Emitida Por Cliente e ICMS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Top = 85
      Height = 328
      inherited BtnVisualizar: TSpeedButton
        Top = 294
      end
      inherited GroupBox1: TGroupBox
        Width = 244
      end
      object GroupBox4: TGroupBox
        Left = 259
        Top = 161
        Width = 161
        Height = 41
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboStatus: TComboBox
          Left = 4
          Top = 16
          Width = 151
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'Aberta'
            'Encerrada'
            'Cancelada'
            'Faturado')
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 203
        Width = 407
        Height = 41
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboCliente: TRxDBLookupCombo
          Left = 9
          Top = 14
          Width = 392
          Height = 21
          DropDownCount = 8
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 248
        Width = 407
        Height = 41
        Caption = 'Opera'#231#227'o de Estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ComboOperacao: TRxDBLookupCombo
          Left = 9
          Top = 15
          Width = 392
          Height = 21
          DropDownCount = 8
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoque
          TabOrder = 0
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ItensNotaFiscal'
    object TblTemporariaNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object TblTemporariaNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaALIQDESCR: TStringField
      FieldName = 'ALIQDESCR'
      Size = 30
    end
    object TblTemporariaVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object TblTemporariaVALRBASE: TFloatField
      FieldName = 'VALRBASE'
    end
    object TblTemporariaVALORIMPOSTO: TFloatField
      FieldName = 'VALORIMPOSTO'
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 540
    Top = 5
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM OPERACAOESTOQUE')
    Macros = <>
    Left = 512
    Top = 5
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoEstoqueSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.OPERACAOESTOQUE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField
      FieldName = 'CFOPA5CODDENTROUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODDENTROUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField
      FieldName = 'CFOPA5CODFORAUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODFORAUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'DB.OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField
      FieldName = 'OPESCORIGEMDESTINO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCORIGEMDESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoquePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOESTOQUE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOESTOQUE.REGISTRO'
    end
    object SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField
      FieldName = 'OPESA18CAMPOIMP'
      Origin = 'DB.OPERACAOESTOQUE.OPESA18CAMPOIMP'
      FixedChar = True
      Size = 18
    end
    object SQLOperacaoEstoqueOPESCCALCIPI: TStringField
      FieldName = 'OPESCCALCIPI'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCCALCICMS: TStringField
      FieldName = 'OPESCCALCICMS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoquePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.OPERACAOESTOQUE.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 484
    Top = 5
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CLIEA13ID, CLIEA60RAZAOSOC FROM CLIENTE')
    Macros = <>
    Left = 456
    Top = 5
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
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
    Left = 569
    Top = 5
  end
  object SQLEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  NOTAFISCAL.NOFIINUMERO,'
      '  NOTAFISCAL.NOFIDEMIS,'
      '  NOTAFISCAL.NOFIN2VLRNOTA,'
      '  NOTAFISCALITEM.PRODICOD,'
      '  NOTAFISCALITEM.NFITN2BASEICMS,'
      '  NOTAFISCALITEM.NFITN2VLRICMS,'
      '  NOTAFISCALITEM.NFITN2BASESUBS,'
      '  NOTAFISCALITEM.NFITN2VLRSUBS,'
      '  PRODUTO.ICMSICOD,'
      '  CLIENTE.CLIEA60RAZAOSOC'
      'from'
      '  NOTAFISCAL'
      
        '  inner join NOTAFISCALITEM NOTAFISCALITEM on NOTAFISCAL.NOFIA13' +
        'ID = NOTAFISCALITEM.NOFIA13ID'
      
        '  left outer join CLIENTE CLIENTE on NOTAFISCAL.CLIEA13ID = CLIE' +
        'NTE.CLIEA13ID'
      
        '  left outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD  = OPER' +
        'ACAOESTOQUE.OPESICOD'
      
        '  left outer join PRODUTO on NOTAFISCALITEM.PRODICOD = PRODUTO.P' +
        'RODICOD'
      'where'
      '  (%Data)'
      'and'
      '  (%Operacao)'
      'and'
      '  (%Cliente)'
      'and'
      '  (%Status)'
      'Order By'
      '  NOTAFISCAL.NOFIDEMIS asc'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Operacao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLEstoqueNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
    object SQLEstoqueNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object SQLEstoquePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLEstoqueNFITN2BASEICMS: TFloatField
      FieldName = 'NFITN2BASEICMS'
    end
    object SQLEstoqueNFITN2VLRICMS: TFloatField
      FieldName = 'NFITN2VLRICMS'
    end
    object SQLEstoqueNFITN2BASESUBS: TFloatField
      FieldName = 'NFITN2BASESUBS'
    end
    object SQLEstoqueNFITN2VLRSUBS: TFloatField
      FieldName = 'NFITN2VLRSUBS'
    end
    object SQLEstoqueICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
    end
    object SQLEstoqueCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEstoqueNOFIN2VLRNOTA: TFloatField
      FieldName = 'NOFIN2VLRNOTA'
    end
  end
end
