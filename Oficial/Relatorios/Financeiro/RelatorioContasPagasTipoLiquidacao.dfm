inherited FormRelatorioContasPagasTipoLiquidacao: TFormRelatorioContasPagasTipoLiquidacao
  Left = 567
  Top = 121
  Caption = 'Relat'#243'rio de Contas Pagas Por Tipo de Liquida'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Left = 194
      Top = 94
      Height = 339
      inherited BtnVisualizar: TSpeedButton
        Top = 307
      end
      inherited GroupBox1: TGroupBox
        object CheckNroDuplic: TCheckBox
          Left = 244
          Top = 16
          Width = 153
          Height = 17
          Caption = '&Imprime Nro. Duplicata'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 202
        Width = 408
        Height = 46
        Caption = '&Tipo de Liquida'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboTipoLiq: TRxDBLookupCombo
          Left = 7
          Top = 17
          Width = 395
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPLQICOD'
          LookupDisplay = 'TPLQA60DESCR'
          LookupSource = DSSQLTipoLiquidacao
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboTipoLiqKeyDown
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 249
        Width = 408
        Height = 46
        Caption = 'Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboFornecedor: TRxDBLookupCombo
          Left = 7
          Top = 17
          Width = 395
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'FORNICOD'
          LookupDisplay = 'FORNA60NOMEFANT'
          LookupSource = DSSQLFornecedor
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboTipoLiqKeyDown
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ContasPagasTipoLiq.db'
    object TblTemporariaCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPAGAN3VLRPAGTO: TBCDField
      FieldName = 'PAGAN3VLRPAGTO'
      Precision = 15
      Size = 2
    end
    object TblTemporariaSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object TblTemporariaPAGAN3VLRJURO: TBCDField
      FieldName = 'PAGAN3VLRJURO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPAGAN3VLRMULTA: TBCDField
      FieldName = 'PAGAN3VLRMULTA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPAGAN3VLRDESC: TBCDField
      FieldName = 'PAGAN3VLRDESC'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPAGADPAGTO: TDateTimeField
      FieldName = 'PAGADPAGTO'
    end
    object TblTemporariaNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
    end
    object TblTemporariaCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      FixedChar = True
    end
    object TblTemporariaCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
    end
    object TblTemporariaCTPGN3VLR: TBCDField
      FieldName = 'CTPGN3VLR'
      Precision = 15
      Size = 2
    end
    object TblTemporariaPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object TblTemporariaFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTPLQA60DESCR: TStringField
      FieldName = 'TPLQA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLContasPagar: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  Distinct'
      '  PAGAMENTO.CTPGA13ID,'
      '  cast((PAGAMENTO.PAGAN3VLRPAGTO +'
      '       PAGAMENTO.PAGAN3VLRJURO +'
      '       PAGAMENTO.PAGAN3VLRMULTA -'
      
        '       PAGAMENTO.PAGAN3VLRDESC) as numeric(15,2))as PAGAN3VLRPAG' +
        'TO,'
      '  CONTASPAGAR.CTPGN3VLR      as Saldo,'
      '  PAGAMENTO.PAGAN3VLRJURO,'
      '  PAGAMENTO.PAGAN3VLRMULTA,'
      '  PAGAMENTO.PAGAN3VLRDESC,'
      '  PAGAMENTO.PAGADPAGTO,'
      '  CONTASPAGAR.NOCPA13ID,'
      '  CONTASPAGAR.PDCPA13ID,'
      '  CONTASPAGAR.EMPRICOD,'
      '  CONTASPAGAR.CTPGDVENC,'
      '  CONTASPAGAR.CTPGA20DOCORIG,'
      '  CONTASPAGAR.CTPGINROPARC,'
      '  CONTASPAGAR.CTPGN3VLR,'
      '  CONTASPAGAR.PORTICOD,'
      '  FORNECEDOR.FORNA60NOMEFANT,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR,'
      '  TIPOLIQUIDACAO.TPLQA60DESCR'
      'from'
      
        ' PAGAMENTO inner join CONTASPAGAR on PAGAMENTO.CTPGA13ID = CONTA' +
        'SPAGAR.CTPGA13ID'
      
        ' left outer join FORNECEDOR FORNECEDOR on CONTASPAGAR.FORNICOD =' +
        ' FORNECEDOR.FORNICOD'
      
        ' left outer join TIPODOCUMENTO TIPODOCUMENTO ON CONTASPAGAR.TPDC' +
        'ICOD = TIPODOCUMENTO.TPDCICOD'
      
        ' left outer join PORTADOR PORTADOR on CONTASPAGAR.PORTICOD = POR' +
        'TADOR.PORTICOD'
      
        ' left outer join TIPOLIQUIDACAO on PAGAMENTO.TPLQICOD = TIPOLIQU' +
        'IDACAO.TPLQICOD'
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MTipoLiq) and'
      '  (%MFornecedor)'
      'Order By'
      '  PAGAMENTO.PAGADPAGTO asc,'
      '  FORNECEDOR.FORNA60NOMEFANT asc')
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
        Name = 'MTipoLiq'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFornecedor'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLContasPagarCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarPAGAN3VLRPAGTO: TFloatField
      FieldName = 'PAGAN3VLRPAGTO'
    end
    object SQLContasPagarSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasPagarPAGAN3VLRJURO: TFloatField
      FieldName = 'PAGAN3VLRJURO'
    end
    object SQLContasPagarPAGAN3VLRMULTA: TFloatField
      FieldName = 'PAGAN3VLRMULTA'
    end
    object SQLContasPagarPAGAN3VLRDESC: TFloatField
      FieldName = 'PAGAN3VLRDESC'
    end
    object SQLContasPagarPAGADPAGTO: TDateTimeField
      FieldName = 'PAGADPAGTO'
    end
    object SQLContasPagarNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasPagarCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
    end
    object SQLContasPagarCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLContasPagarCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
    end
    object SQLContasPagarCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
    end
    object SQLContasPagarPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLContasPagarFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasPagarPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarTPLQA60DESCR: TStringField
      FieldName = 'TPLQA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTipoLiquidacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'TPLQICOD, '
      'TPLQA60DESCR'
      'FROM'
      'TIPOLIQUIDACAO'
      'ORDER BY'
      'TPLQA60DESCR')
    Macros = <>
    Left = 474
    Top = 5
    object SQLTipoLiquidacaoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.TIPOLIQUIDACAO.TPLQICOD'
    end
    object SQLTipoLiquidacaoTPLQA60DESCR: TStringField
      FieldName = 'TPLQA60DESCR'
      Origin = 'DB.TIPOLIQUIDACAO.TPLQA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLTipoLiquidacao: TDataSource
    DataSet = SQLTipoLiquidacao
    Left = 502
    Top = 5
  end
  object SQLUpdate: TRxQuery
    DatabaseName = 'UnitGestao_Temp'
    SQL.Strings = (
      'update ContasPagasTipoLiq.db'
      'set'
      'tplqa60descr = "1 - TIPO N'#195'O INFORMADO..."'
      'where'
      'tplqa60descr is null')
    Macros = <>
    Left = 558
    Top = 5
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
    Left = 530
    Top = 5
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'FORNICOD, '
      'FORNA60NOMEFANT'
      'FROM'
      'FORNECEDOR'
      'ORDER BY'
      'FORNA60NOMEFANT'
      '')
    Macros = <>
    Left = 586
    Top = 5
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 614
    Top = 5
  end
  object SQLPagamento: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTblTemporaria
    SQL.Strings = (
      'SELECT '
      'SUM(PAGAN3VLRPAGTO) as Valor,'
      'SUM(PAGAN3VLRJURO)  as Juros,'
      'SUM(PAGAN3VLRMULTA) as Multa,'
      'SUM(PAGAN3VLRDESC)  as Desconto'
      'FROM'
      'PAGAMENTO'
      'WHERE'
      'CTPGA13ID = :CTPGA13ID'
      'and'
      '(%Mdata)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Mdata'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 642
    Top = 5
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTPGA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLPagamentoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRPAGTO'
    end
    object SQLPagamentoJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRJURO'
    end
    object SQLPagamentoMULTA: TFloatField
      FieldName = 'MULTA'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRMULTA'
    end
    object SQLPagamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRDESC'
    end
  end
  object DSSQLContasPagar: TDataSource
    DataSet = SQLContasPagar
    Left = 446
    Top = 5
  end
end
