inherited FormRelatorioContasRecebidasTipoLiquidacao: TFormRelatorioContasRecebidasTipoLiquidacao
  Left = 573
  Top = 187
  Caption = 'Relat'#243'rio de Contas Recebidas Por Tipo de Liquida'#231#227'o'
  ClientWidth = 799
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 799
  end
  inherited ScrollBox: TScrollBox
    Width = 799
    inherited PanelCentro: TPanel
      Left = 175
      Height = 317
      inherited BtnVisualizar: TSpeedButton
        Top = 280
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
          LookupField = 'TPLQICOD'
          LookupDisplay = 'TPLQA60DESCR'
          LookupSource = DSSQLTipoLiquidacao
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 795
      inherited PanelCabecalho: TPanel
        Width = 795
        inherited PanelNavigator: TPanel
          Width = 795
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 795
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ContasRecebidasTipoLiq.db'
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
    end
    object TblTemporariaTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
    end
    object TblTemporariaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object TblTemporariaRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
    end
    object TblTemporariaRECEN2DESC: TBCDField
      FieldName = 'RECEN2DESC'
      Precision = 15
      Size = 3
    end
    object TblTemporariaRECEN2VLRJURO: TBCDField
      FieldName = 'RECEN2VLRJURO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaRECEN2VLRMULTA: TBCDField
      FieldName = 'RECEN2VLRMULTA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object TblTemporariaCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object TblTemporariaEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TblTemporariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
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
    Left = 456
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
    Left = 484
    Top = 5
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  RECEBIMENTO.CTRCA13ID,'
      '  RECEBIMENTO.EMPRICODREC,'
      '  RECEBIMENTO.TERMICODREC,'
      '  RECEBIMENTO.USUAICOD,'
      '  RECEBIMENTO.RECEDRECTO,'
      '  RECEBIMENTO.RECEN2DESC,'
      '  RECEBIMENTO.RECEN2VLRJURO,'
      '  RECEBIMENTO.RECEN2VLRMULTA,'
      '  ((RECEBIMENTO.RECEN2VLRRECTO +'
      '    RECEBIMENTO.RECEN2VLRJURO +'
      '    RECEBIMENTO.RECEN2VLRMULTA) -'
      '    RECEBIMENTO.RECEN2DESC) as RECEN2VLRRECTO,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CONTASRECEBER.CUPOA13ID,'
      '  CONTASRECEBER.NOFIA13ID,'
      '  CONTASRECEBER.PDVDA13ID,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.EMPRICODULTREC,'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) AS SALDO,'
      '  CONTASRECEBER.NUMEICOD,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR,'
      '  TIPOLIQUIDACAO.TPLQA60DESCR'
      'from'
      
        ' RECEBIMENTO inner join CONTASRECEBER on RECEBIMENTO.CTRCA13ID =' +
        ' CONTASRECEBER.CTRCA13ID'
      
        ' left outer join CLIENTE         on CONTASRECEBER.CLIEA13ID = CL' +
        'IENTE.CLIEA13ID'
      
        ' left outer join TIPODOCUMENTO   on CONTASRECEBER.TPDCICOD  = TI' +
        'PODOCUMENTO.TPDCICOD'
      
        ' left outer join PORTADOR        on CONTASRECEBER.PORTICOD  = PO' +
        'RTADOR.PORTICOD'
      
        ' left outer join TIPOLIQUIDACAO  on RECEBIMENTO.TPLQICOD  = TIPO' +
        'LIQUIDACAO.TPLQICOD'
      'where'
      '  (CONTASRECEBER.CTRCCSTATUS = "A") and'
      
        '  (CONTASRECEBER.CTRCA5TIPOPADRAO not in('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) a' +
        'nd'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MTipoLiq)')
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
      end>
    Left = 419
    Top = 5
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
    end
    object SQLContasReceberTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
    end
    object SQLContasReceberUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object SQLContasReceberRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
    end
    object SQLContasReceberRECEN2DESC: TFloatField
      FieldName = 'RECEN2DESC'
    end
    object SQLContasReceberRECEN2VLRJURO: TFloatField
      FieldName = 'RECEN2VLRJURO'
    end
    object SQLContasReceberRECEN2VLRMULTA: TFloatField
      FieldName = 'RECEN2VLRMULTA'
    end
    object SQLContasReceberRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberTPLQA60DESCR: TStringField
      FieldName = 'TPLQA60DESCR'
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
    Top = 5
  end
  object SQLUpdate: TRxQuery
    DatabaseName = 'UnitGestao_Temp'
    SQL.Strings = (
      'update ContasRecebidasTipoLiq.db'
      'set'
      'tplqa60descr = "1 - TIPO N'#195'O INFORMADO..."  '
      'where '
      'tplqa60descr is null')
    Macros = <>
    Left = 544
    Top = 5
  end
end
