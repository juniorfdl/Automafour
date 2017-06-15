inherited FormRelatorioMovimentacaoTesouraria: TFormRelatorioMovimentacaoTesouraria
  Left = 493
  Top = 111
  Caption = 'Relat'#243'rio de Movimenta'#231#227'o da Tesouraria'
  ClientHeight = 471
  ClientWidth = 787
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 455
    Width = 787
  end
  inherited ScrollBox: TScrollBox
    Width = 787
    Height = 455
    inherited PanelCentro: TPanel
      Left = 40
      Top = 96
      Width = 729
      Height = 329
      inherited BtnVisualizar: TSpeedButton
        Left = 478
        Top = 257
      end
      inherited EmpresaGroup: TGroupBox
        Left = 4
        Top = 15
        inherited ComboEmpresa: TRxDBLookupCombo
          Cursor = crHandPoint
        end
        inherited ListaEmpresas: TListBox
          Cursor = crHandPoint
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 6
        Top = 171
        Width = 402
        inherited De: TDateEdit
          Cursor = crHandPoint
        end
        inherited Ate: TDateEdit
          Cursor = crHandPoint
        end
      end
      object GroupBox4: TGroupBox
        Left = 416
        Top = 14
        Width = 313
        Height = 155
        Caption = 'Terminais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ListTerminal: TRxCheckListBox
          Left = 2
          Top = 15
          Width = 309
          Height = 138
          Cursor = crHandPoint
          CheckKind = ckCheckMarks
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 15461355
          Columns = 2
          GraySelection = True
          ItemHeight = 16
          MultiSelect = True
          Style = lbVirtual
          TabOrder = 0
          InternalVersion = 202
        end
      end
      object CheckTerminal: TCheckBox
        Left = 417
        Top = 175
        Width = 296
        Height = 17
        Cursor = crHandPoint
        Caption = 'Filtrar Terminais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object ChkMovTerminal: TCheckBox
        Left = 417
        Top = 192
        Width = 296
        Height = 17
        Cursor = crHandPoint
        Caption = '&Verificar Movimenta'#231#227'o dos Caixas/Terminal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 219
        Width = 396
        Height = 40
        Caption = ' Numer'#225'rio '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboNumerario: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 379
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'NUMEICOD'
          LookupDisplay = 'NUMEA30DESCR'
          LookupSource = DSSQLNumerario
          ParentFont = False
          TabOrder = 0
        end
      end
      object CKTotalizaPorNumerario: TCheckBox
        Left = 417
        Top = 210
        Width = 219
        Height = 17
        Cursor = crHandPoint
        Caption = 'Totalizar por Numerario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object GroupPlanoContas: TGroupBox
        Left = 11
        Top = 263
        Width = 398
        Height = 43
        Caption = ' Plano de Contas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object ComboPlanoConta: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 383
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PLCTA15COD'
          LookupDisplay = 'PLCTA15COD;PLCTA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLPlanoContas
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 783
      inherited PanelCabecalho: TPanel
        Width = 783
        inherited PanelNavigator: TPanel
          Width = 783
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 783
          end
        end
      end
    end
  end
  inherited DSTblTemporaria: TDataSource
    Top = 6
  end
  inherited TblTemporaria: TTable
    TableName = 'RelMovtoTesouraria.db'
    Top = 6
    object TblTemporariaTESOA13ID: TStringField
      FieldName = 'TESOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TblTemporariaTESOICOD: TIntegerField
      FieldName = 'TESOICOD'
    end
    object TblTemporariaTESODMOV: TDateTimeField
      FieldName = 'TESODMOV'
    end
    object TblTemporariaTESON2VLRDEBITO: TFloatField
      FieldName = 'TESON2VLRDEBITO'
    end
    object TblTemporariaTESON2VLRCREDITO: TFloatField
      FieldName = 'TESON2VLRCREDITO'
    end
    object TblTemporariaTESOA255HIST: TStringField
      FieldName = 'TESOA255HIST'
      Size = 255
    end
    object TblTemporariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object TblTemporariaTESOA20DOCORIGEM: TStringField
      FieldName = 'TESOA20DOCORIGEM'
      FixedChar = True
    end
    object TblTemporariaNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaOPTEA60DESCR: TStringField
      FieldName = 'OPTEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
  end
  inherited SQLEmpresa: TQuery
    Top = 6
  end
  inherited DSSQLEmpresa: TDataSource
    Top = 6
  end
  inherited BatchMove: TBatchMove
    Top = 6
  end
  object SQLMovtoTesouraria: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  TESOURARIA.TESOA13ID,'
      '  TESOURARIA.EMPRICOD,'
      '  TESOURARIA.TERMICOD,'
      '  TESOURARIA.TESOICOD,'
      '  TESOURARIA.TESODMOV,'
      '  TESOURARIA.TESON2VLRDEBITO,'
      '  TESOURARIA.TESON2VLRCREDITO,'
      '  TESOURARIA.TESOA255HIST,'
      '  TESOURARIA.NUMEICOD,'
      '  TESOURARIA.TESOA20DOCORIGEM,'
      '  TESOURARIA.PLCTA15COD,'
      '  NUMERARIO.NUMEA30DESCR,'
      '  OPERACAOTESOURARIA.OPTEA60DESCR,'
      '  TERMINAL.TERMA60DESCR'
      'from'
      '  TESOURARIA'
      
        '  left outer join NUMERARIO on TESOURARIA.NUMEICOD = NUMERARIO.N' +
        'UMEICOD'
      
        '  left outer join OPERACAOTESOURARIA on TESOURARIA.OPTEICOD = OP' +
        'ERACAOTESOURARIA.OPTEICOD'
      
        '  left outer join TERMINAL on TERMINAL.TERMICOD = TESOURARIA.TER' +
        'MICOD'
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MTerminal) and'
      '  (%MNumerario) and'
      '  (%MConta)'
      'order by'
      '  TESOURARIA.TESODMOV')
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
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNumerario'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MConta'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 482
    Top = 6
    object SQLMovtoTesourariaTESOA13ID: TStringField
      FieldName = 'TESOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLMovtoTesourariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLMovtoTesourariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLMovtoTesourariaTESOICOD: TIntegerField
      FieldName = 'TESOICOD'
    end
    object SQLMovtoTesourariaTESODMOV: TDateTimeField
      FieldName = 'TESODMOV'
    end
    object SQLMovtoTesourariaTESON2VLRDEBITO: TFloatField
      FieldName = 'TESON2VLRDEBITO'
    end
    object SQLMovtoTesourariaTESON2VLRCREDITO: TFloatField
      FieldName = 'TESON2VLRCREDITO'
    end
    object SQLMovtoTesourariaTESOA255HIST: TStringField
      FieldName = 'TESOA255HIST'
      Size = 255
    end
    object SQLMovtoTesourariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLMovtoTesourariaTESOA20DOCORIGEM: TStringField
      FieldName = 'TESOA20DOCORIGEM'
      FixedChar = True
    end
    object SQLMovtoTesourariaNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLMovtoTesourariaOPTEA60DESCR: TStringField
      FieldName = 'OPTEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovtoTesourariaTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovtoTesourariaPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
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
    WindowStyle.MaxButton = False
    WindowStyle.MinButton = False
    WindowStyle.BorderStyle = bsSingle
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
    Left = 242
    Top = 6
  end
  object SQLSaldos: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '   tesouraria.NUMEICOD,'
      '   numerario.numea30descr,'
      '   sum(tesouraria.TESON2VLRCREDITO) Creditos,'
      '   sum(tesouraria.TESON2VLRDEBITO)  Debitos,'
      
        '   sum(tesouraria.TESON2VLRCREDITO) - sum(tesouraria.TESON2VLRDE' +
        'BITO) Saldo'
      'from'
      '  tesouraria tesouraria'
      
        '  left outer join numerario numerario on (tesouraria.numeicod = ' +
        'numerario.numeicod)'
      'group by'
      '  tesouraria.NUMEICOD, numerario.numea30descr')
    Macros = <>
    Left = 592
    Top = 6
    object SQLSaldosNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLSaldosNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLSaldosCREDITOS: TFloatField
      FieldName = 'CREDITOS'
    end
    object SQLSaldosDEBITOS: TFloatField
      FieldName = 'DEBITOS'
    end
    object SQLSaldosSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object TblSaldoTesouraria: TTable
    Tag = 1
    DatabaseName = 'Easy_Temp'
    TableName = 'RelSaldoTesouraria.db'
    Left = 620
    Top = 6
    object TblSaldoTesourariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object TblSaldoTesourariaNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblSaldoTesourariaCREDITOS: TFloatField
      FieldName = 'CREDITOS'
    end
    object TblSaldoTesourariaDEBITOS: TFloatField
      FieldName = 'DEBITOS'
    end
    object TblSaldoTesourariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object SQLMovimentoCaixa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  cast('#39'0'#39' as char(13)) as TESOA13ID,'
      '  MOVIMENTOCAIXA.EMPRICOD as EMPRICOD,'
      '  MOVIMENTOCAIXA.TERMICOD as TERMICOD, '
      '  MOVIMENTOCAIXA.MVCXICOD as TESOICOD,'
      '  MOVIMENTOCAIXA.MVCXDMOV as TESODMOV,'
      '  MOVIMENTOCAIXA.MVCXN2VLRDEB as  TESON2VLRDEBITO,'
      '  MOVIMENTOCAIXA.MVCXN2VLRCRED as TESON2VLRCREDITO,'
      '  MOVIMENTOCAIXA.MVCXA255HIST  as TESOA255HIST,'
      '  MOVIMENTOCAIXA.NUMEICOD as NUMEICOD,'
      
        '  Cast(MOVIMENTOCAIXA.MVCXA15DOCORIG as Char(20)) as TESOA20DOCO' +
        'RIGEM,'
      '  NUMERARIO.NUMEA30DESCR as NUMEA30DESCR,'
      '  OPERACAOCAIXA.OPCXA60DESCR as OPTEA60DESCR, '
      '  TERMINAL.TERMA60DESCR TERMA60DESCR'
      'from'
      '  MOVIMENTOCAIXA'
      
        '  left join NUMERARIO on MOVIMENTOCAIXA.NUMEICOD = NUMERARIO.NUM' +
        'EICOD '
      
        '  left join OPERACAOCAIXA on MOVIMENTOCAIXA.OPCXICOD = OPERACAOC' +
        'AIXA.OPCXICOD'
      
        '  left outer join TERMINAL on MOVIMENTOCAIXA.TERMICOD = TERMINAL' +
        '.TERMICOD'
      ''
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MTerminal) and'
      '  (%MNumerario) and'
      '  MOVIMENTOCAIXA.OPCXICOD is not null'
      'order by'
      '  MOVIMENTOCAIXA.MVCXDMOV')
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
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNumerario'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 514
    Top = 6
    object SQLMovimentoCaixaTESOA13ID: TStringField
      FieldName = 'TESOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLMovimentoCaixaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLMovimentoCaixaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLMovimentoCaixaTESOICOD: TIntegerField
      FieldName = 'TESOICOD'
    end
    object SQLMovimentoCaixaTESODMOV: TDateTimeField
      FieldName = 'TESODMOV'
    end
    object SQLMovimentoCaixaTESON2VLRDEBITO: TFloatField
      FieldName = 'TESON2VLRDEBITO'
    end
    object SQLMovimentoCaixaTESON2VLRCREDITO: TFloatField
      FieldName = 'TESON2VLRCREDITO'
    end
    object SQLMovimentoCaixaTESOA255HIST: TStringField
      FieldName = 'TESOA255HIST'
      FixedChar = True
      Size = 255
    end
    object SQLMovimentoCaixaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLMovimentoCaixaTESOA20DOCORIGEM: TStringField
      FieldName = 'TESOA20DOCORIGEM'
      FixedChar = True
    end
    object SQLMovimentoCaixaNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLMovimentoCaixaOPTEA60DESCR: TStringField
      FieldName = 'OPTEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovimentoCaixaTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLNumerario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO'
      'order by NUMEA30DESCR')
    Left = 378
    Top = 327
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLNumerario
    Left = 406
    Top = 327
  end
  object SQLPlanoContas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PlanodeContas'
      'Where PLCTCANALSINT = '#39'A'#39
      'Order by PLCTA60DESCR')
    Macros = <>
    Left = 672
    Top = 5
    object SQLPlanoContasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPlanoContas: TDataSource
    DataSet = SQLPlanoContas
    Left = 700
    Top = 5
  end
end
