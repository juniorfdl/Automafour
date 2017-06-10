inherited FormRelatorioBoletimCaixa: TFormRelatorioBoletimCaixa
  Left = -16
  Top = 83
  Caption = 'Relat'#243'rio Boletim de Caixa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    object Label5: TLabel [0]
      Left = 17
      Top = 92
      Width = 208
      Height = 65
      Caption = 
        '* N'#227'o esqueca de efetuar o '#13#10'  o Recalculo dos Totalizadores'#13#10'  ' +
        'do Caixa, para que sejam '#13#10'  atualizados todos os lan'#231'amentos'#13#10' ' +
        ' realizados no per'#237'odo selecionado.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited PanelCentro: TPanel
      Left = 230
      Top = 85
      Height = 334
      inherited BtnVisualizar: TSpeedButton
        Left = 199
        Top = 291
      end
      inherited EmpresaGroup: TGroupBox
        Top = 2
      end
      inherited GroupBox1: TGroupBox
        Top = 159
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 204
        Width = 407
        Height = 40
        Caption = ' Terminal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboTerminal: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 393
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TERMICOD'
          LookupDisplay = 'TERMA60DESCR'
          LookupSource = DSSQLTerminal
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupTerminalAux: TGroupBox
        Left = 12
        Top = 244
        Width = 407
        Height = 40
        Caption = 'Consolidar com o Terminal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Visible = False
        object ComboTerminalAux: TRxDBLookupCombo
          Left = 9
          Top = 15
          Width = 393
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TERMICOD'
          LookupDisplay = 'TERMA60DESCR'
          LookupSource = DSSQLTerminalAux
          ParentFont = False
          TabOrder = 0
        end
      end
      object CkBobina: TCheckBox
        Left = 22
        Top = 296
        Width = 163
        Height = 17
        Caption = 'Imprime em bobina n'#227'o fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelBoletimCaixa.DB'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TblTemporariaTOTAICOD: TIntegerField
      FieldName = 'TOTAICOD'
    end
    object TblTemporariaTODIDMOV: TDateTimeField
      FieldName = 'TODIDMOV'
    end
    object TblTemporariaTODIN2VLRDEBITO: TBCDField
      FieldName = 'TODIN2VLRDEBITO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaTODIN2VLRCREDITO: TBCDField
      FieldName = 'TODIN2VLRCREDITO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object TblTemporariaTOTAA60DESCR: TStringField
      FieldName = 'TOTAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTOTAIORDLIST: TIntegerField
      FieldName = 'TOTAIORDLIST'
    end
    object TblTemporariaTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  inherited FormStorageTemplate: TFormStorage
    StoredProps.Strings = (
      'CkBobina.Checked')
  end
  object SQLOperador: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO'
      'order by USUAA60LOGIN')
    Left = 218
    Top = 5
  end
  object DSSQLOperador: TDataSource
    DataSet = SQLOperador
    Left = 246
    Top = 5
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    OnDataChange = DSSQLTerminalDataChange
    Left = 486
    Top = 4
  end
  object SQLBoletim: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  TOTALIZADORDIARIOCAIXA.EMPRICOD,'
      '  TOTALIZADORDIARIOCAIXA.TERMICOD,'
      '  TOTALIZADORDIARIOCAIXA.TOTAICOD,'
      '  TOTALIZADORDIARIOCAIXA.TODIDMOV,'
      '  TOTALIZADORDIARIOCAIXA.TODIN2VLRDEBITO,'
      '  TOTALIZADORDIARIOCAIXA.TODIN2VLRCREDITO,'
      '  TOTALIZADORDIARIOCAIXA.USUAICOD,'
      '  TOTALIZADORCAIXA.TOTAA60DESCR,'
      '  TOTALIZADORCAIXA.TOTAIORDLIST,'
      '  TERMINAL.TERMA60DESCR'
      'from'
      
        '  ((TOTALIZADORDIARIOCAIXA TOTALIZADORDIARIOCAIXA inner join TOT' +
        'ALIZADORCAIXA TOTALIZADORCAIXA on TOTALIZADORDIARIOCAIXA.TOTAICO' +
        'D = TOTALIZADORCAIXA.TOTAICOD)'
      
        '   inner join TERMINAL TERMINAL on TOTALIZADORDIARIOCAIXA.TERMIC' +
        'OD = TERMINAL.TERMICOD)'
      'where'
      '  (%MEmpresa) and'
      '  (%MTerminal) and'
      '  (%MData)'
      'order by'
      '  TOTALIZADORDIARIOCAIXA.EMPRICOD,'
      '  TOTALIZADORDIARIOCAIXA.TERMICOD,'
      '  TOTALIZADORDIARIOCAIXA.TODIDMOV,'
      '  TOTALIZADORCAIXA.TOTAIORDLIST')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 423
    Top = 4
    object SQLBoletimEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLBoletimTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLBoletimTOTAICOD: TIntegerField
      FieldName = 'TOTAICOD'
    end
    object SQLBoletimTODIDMOV: TDateTimeField
      FieldName = 'TODIDMOV'
    end
    object SQLBoletimTODIN2VLRDEBITO: TBCDField
      FieldName = 'TODIN2VLRDEBITO'
      Precision = 15
      Size = 3
    end
    object SQLBoletimTODIN2VLRCREDITO: TBCDField
      FieldName = 'TODIN2VLRCREDITO'
      Precision = 15
      Size = 3
    end
    object SQLBoletimUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object SQLBoletimTOTAA60DESCR: TStringField
      FieldName = 'TOTAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLBoletimTOTAIORDLIST: TIntegerField
      FieldName = 'TOTAIORDLIST'
    end
    object SQLBoletimTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
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
    Left = 186
    Top = 4
  end
  object SQLFechamentoCaixa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM FECHAMENTOCAIXA WHERE'
      '(%Mdata) and'
      '(%MTerminal) ')
    Macros = <
      item
        DataType = ftString
        Name = 'Mdata'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 520
    Top = 4
    object SQLFechamentoCaixaFECXDDATAMOV: TDateTimeField
      FieldName = 'FECXDDATAMOV'
      Origin = 'DB.FECHAMENTOCAIXA.FECXDDATAMOV'
    end
    object SQLFechamentoCaixaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.FECHAMENTOCAIXA.EMPRICOD'
    end
    object SQLFechamentoCaixaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.FECHAMENTOCAIXA.TERMICOD'
    end
    object SQLFechamentoCaixaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.FECHAMENTOCAIXA.NUMEICOD'
    end
    object SQLFechamentoCaixaFECXN2VALOR: TBCDField
      FieldName = 'FECXN2VALOR'
      Origin = 'DB.FECHAMENTOCAIXA.FECXN2VALOR'
      Precision = 15
      Size = 3
    end
    object SQLFechamentoCaixaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.FECHAMENTOCAIXA.USUAICOD'
    end
  end
  object TblFechamentoCaixa: TTable
    Tag = 1
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'FechamentoCaixa.db'
    Left = 548
    Top = 4
    object TblFechamentoCaixaFECXDDATAMOV: TDateTimeField
      FieldName = 'FECXDDATAMOV'
      Origin = 'DB.FECHAMENTOCAIXA.FECXDDATAMOV'
    end
    object TblFechamentoCaixaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.FECHAMENTOCAIXA.EMPRICOD'
    end
    object TblFechamentoCaixaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.FECHAMENTOCAIXA.TERMICOD'
    end
    object TblFechamentoCaixaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.FECHAMENTOCAIXA.NUMEICOD'
    end
    object TblFechamentoCaixaFECXN2VALOR: TBCDField
      FieldName = 'FECXN2VALOR'
      Origin = 'DB.FECHAMENTOCAIXA.FECXN2VALOR'
      Precision = 15
      Size = 3
    end
    object TblFechamentoCaixaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.FECHAMENTOCAIXA.USUAICOD'
    end
    object TblFechamentoCaixaNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Size = 30
    end
    object TblFechamentoCaixaUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Size = 60
    end
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'Where'
      '(%MFiltro)'
      'order by TERMA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 454
    Top = 4
  end
  object SQLTerminalAux: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLTerminal
    SQL.Strings = (
      'select * from TERMINAL'
      'Where'
      'TERMICOD <> :TERMICOD'
      'and'
      '(%MFiltro)'
      ''
      'order by TERMA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 454
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TERMICOD'
        ParamType = ptUnknown
      end>
  end
  object DSSQLTerminalAux: TDataSource
    DataSet = SQLTerminalAux
    Left = 486
    Top = 32
  end
  object SQLBoletimAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  TOTALIZADORDIARIOCAIXA.EMPRICOD,'
      '  TOTALIZADORDIARIOCAIXA.TERMICOD,'
      '  TOTALIZADORDIARIOCAIXA.TOTAICOD,'
      '  TOTALIZADORDIARIOCAIXA.TODIDMOV,'
      '  TOTALIZADORDIARIOCAIXA.TODIN2VLRDEBITO,'
      '  TOTALIZADORDIARIOCAIXA.TODIN2VLRCREDITO,'
      '  TOTALIZADORDIARIOCAIXA.USUAICOD,'
      '  TOTALIZADORCAIXA.TOTAA60DESCR,'
      '  TOTALIZADORCAIXA.TOTAIORDLIST,'
      '  TERMINAL.TERMA60DESCR'
      'from'
      
        '  ((TOTALIZADORDIARIOCAIXA TOTALIZADORDIARIOCAIXA inner join TOT' +
        'ALIZADORCAIXA TOTALIZADORCAIXA on TOTALIZADORDIARIOCAIXA.TOTAICO' +
        'D = TOTALIZADORCAIXA.TOTAICOD)'
      
        '   inner join TERMINAL TERMINAL on TOTALIZADORDIARIOCAIXA.TERMIC' +
        'OD = TERMINAL.TERMICOD)'
      'where'
      '  (%MEmpresaAux) and'
      '  (%MTerminalAux) and'
      '  (%MDataAux) '
      'order by'
      '  TOTALIZADORDIARIOCAIXA.EMPRICOD,'
      '  TOTALIZADORDIARIOCAIXA.TERMICOD,'
      '  TOTALIZADORDIARIOCAIXA.TODIDMOV,'
      '  TOTALIZADORCAIXA.TOTAIORDLIST'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresaAux'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminalAux'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataAux'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 423
    Top = 32
    object SQLBoletimAuxEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLBoletimAuxTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLBoletimAuxTOTAICOD: TIntegerField
      FieldName = 'TOTAICOD'
    end
    object SQLBoletimAuxTODIDMOV: TDateTimeField
      FieldName = 'TODIDMOV'
    end
    object SQLBoletimAuxTODIN2VLRDEBITO: TBCDField
      FieldName = 'TODIN2VLRDEBITO'
      Precision = 15
      Size = 3
    end
    object SQLBoletimAuxTODIN2VLRCREDITO: TBCDField
      FieldName = 'TODIN2VLRCREDITO'
      Precision = 15
      Size = 3
    end
    object SQLBoletimAuxUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object SQLBoletimAuxTOTAA60DESCR: TStringField
      FieldName = 'TOTAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLBoletimAuxTOTAIORDLIST: TIntegerField
      FieldName = 'TOTAIORDLIST'
    end
    object SQLBoletimAuxTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLFechamentoCaixaAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM FECHAMENTOCAIXA WHERE'
      '(%MdataAux) and'
      '(%MTerminalAux) ')
    Macros = <
      item
        DataType = ftString
        Name = 'MdataAux'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminalAux'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 520
    Top = 32
    object SQLFechamentoCaixaAuxFECXDDATAMOV: TDateTimeField
      FieldName = 'FECXDDATAMOV'
      Origin = 'DB.FECHAMENTOCAIXA.FECXDDATAMOV'
    end
    object SQLFechamentoCaixaAuxEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.FECHAMENTOCAIXA.EMPRICOD'
    end
    object SQLFechamentoCaixaAuxTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.FECHAMENTOCAIXA.TERMICOD'
    end
    object SQLFechamentoCaixaAuxNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.FECHAMENTOCAIXA.NUMEICOD'
    end
    object SQLFechamentoCaixaAuxFECXN2VALOR: TBCDField
      FieldName = 'FECXN2VALOR'
      Origin = 'DB.FECHAMENTOCAIXA.FECXN2VALOR'
      Precision = 15
      Size = 3
    end
    object SQLFechamentoCaixaAuxUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.FECHAMENTOCAIXA.USUAICOD'
    end
  end
  object ReportBobina: TppReport
    AutoStop = False
    DataPipeline = PipeCaixa
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 200000
    PrinterSetup.mmPaperWidth = 130000
    PrinterSetup.PaperSize = 177
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 151
    Top = 4
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeCaixa'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '---------------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6615
        mmTop = 25135
        mmWidth = 60325
        BandType = 1
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 6879
        mmTop = 12435
        mmWidth = 7507
        BandType = 1
      end
      object Fone: TppLabel
        UserName = 'LBEmpresa1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Boletim de Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 5027
        mmWidth = 69850
        BandType = 1
      end
      object ppDBText1: TppDBText
        UserName = 'DBText102'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TODIDMOV'
        DataPipeline = PipeCaixa
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCaixa'
        mmHeight = 4233
        mmLeft = 21960
        mmTop = 12435
        mmWidth = 20320
        BandType = 1
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Terminal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 6879
        mmTop = 16404
        mmWidth = 13138
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '---------------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6615
        mmTop = 37306
        mmWidth = 60325
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Totalizador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 6615
        mmTop = 29104
        mmWidth = 15390
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Credito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 22225
        mmTop = 33338
        mmWidth = 10135
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Debito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 48683
        mmTop = 33338
        mmWidth = 9134
        BandType = 1
      end
      object ppTerminais: TppLabel
        UserName = 'Terminais'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Terminal:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 6879
        mmTop = 20373
        mmWidth = 13138
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TOTAA60DESCR'
        DataPipeline = PipeCaixa
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCaixa'
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 0
        mmWidth = 30480
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TODIN2VLRCREDITO'
        DataPipeline = PipeCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCaixa'
        mmHeight = 4233
        mmLeft = 22225
        mmTop = 4233
        mmWidth = 40640
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TODIN2VLRDEBITO'
        DataPipeline = PipeCaixa
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeCaixa'
        mmHeight = 4233
        mmLeft = 48683
        mmTop = 4233
        mmWidth = 38100
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 42598
      mmPrintPosition = 0
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 7408
        mmTop = 36777
        mmWidth = 7673
        BandType = 7
      end
    end
  end
  object PipeCaixa: TppBDEPipeline
    DataSource = DSTblTemporaria
    UserName = 'PipeCaixa'
    Left = 151
    Top = 34
  end
end
