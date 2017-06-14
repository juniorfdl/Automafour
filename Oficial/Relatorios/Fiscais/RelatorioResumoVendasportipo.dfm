inherited FormRelatorioResumoVendasportipo: TFormRelatorioResumoVendasportipo
  Left = 142
  Top = 123
  Caption = 'Relatório Resumo de Vendas por Tipo de Venda'
  ClientWidth = 788
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 788
  end
  inherited ScrollBox: TScrollBox
    Width = 788
    inherited PanelCentro: TPanel
      Height = 259
      inherited BtnVisualizar: TSpeedButton
        Left = 143
        Top = 183
      end
      inherited EmpresaGroup: TGroupBox
        Top = 34
        Height = 46
        Caption = ' &Empresa '
        inherited Label1: TLabel
          Left = 12
          Top = 22
          Visible = False
        end
        inherited IncluirEmpresa: TSpeedButton
          Top = 72
          Visible = False
        end
        inherited ExcluirEmpresa: TSpeedButton
          Top = 98
          Visible = False
        end
        inherited Label2: TLabel
          Top = 57
          Visible = False
        end
        inherited ComboEmpresa: TRxDBLookupCombo
          Left = 7
          Top = 17
          Width = 392
          OnExit = ComboEmpresaExit
        end
        inherited ListaEmpresas: TListBox
          Top = 72
          Height = 61
          Visible = False
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 83
        Caption = ' Perío&do '
        inherited Label3: TLabel
          Left = 13
        end
        inherited Label4: TLabel
          Left = 147
        end
        inherited De: TDateEdit
          Left = 44
        end
        inherited Ate: TDateEdit
          Left = 185
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 125
        Width = 407
        Height = 42
        Caption = ' Terminal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboTerminal: TRxDBLookupCombo
          Left = 6
          Top = 16
          Width = 395
          Height = 21
          DropDownCount = 8
          LookupField = 'TERMICOD'
          LookupDisplay = 'TERMA60DESCR'
          LookupSource = DSSQLTerminal
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 784
      inherited PanelCabecalho: TPanel
        Width = 784
        inherited PanelNavigator: TPanel
          Width = 784
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 784
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'VendasResumoPorTipo.db'
    object TblTemporariaCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object TblTemporariaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
    end
    object TblTemporariaTotalVista: TCurrencyField
      FieldName = 'TotalVista'
    end
    object TblTemporariaTotalPrazo: TCurrencyField
      FieldName = 'TotalPrazo'
    end
    object TblTemporariaTotalCartaoCredito: TCurrencyField
      FieldName = 'TotalCartaoCredito'
    end
    object TblTemporariaNroInicialCupom: TStringField
      FieldName = 'NroInicialCupom'
      Size = 10
    end
    object TblTemporariaNroFinalCupom: TStringField
      FieldName = 'NroFinalCupom'
      Size = 10
    end
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '   EMPRICOD,'
      '   TERMICOD,'
      '   CUPOINRO,'
      '   CUPODEMIS,'
      '   CUPON2TOTITENS+'
      '   CUPON3CREDTAXA+'
      '   CUPON2ACRESC-'
      '   CUPON2DESC-'
      '   CUPON3BONUSTROCA-'
      '   CUPON2TOTITENSRET as TOTAL,'
      '   CUPOCSTATUS,'
      '   CUPOCTIPOPADRAO'
      'FROM'
      '   CUPOM'
      'WHERE'
      '   (CUPOINRO > 0) and'
      '   (CUPOCSTATUS = "A") and'
      '   (%Empresa) and'
      '   (%Terminal) and'
      '   (%Data)'
      'ORDER BY'
      '   CUPODEMIS, CUPOINRO')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Terminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
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
    object SQLCupomTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CUPOM.TERMICOD'
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
    Left = 480
    Top = 5
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  TERMICOD,'
      '  EMPRICOD,'
      '  TERMA60DESCR'
      'from'
      '  TERMINAL'
      'where'
      '  (%MEmpresa)'
      'order by'
      '  TERMA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 538
    Top = 5
    object SQLTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TERMINAL.EMPRICOD'
    end
    object SQLTerminalTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 510
    Top = 5
  end
  object SQLNOTAFISCAL: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '   EMPRICOD,'
      '   NOFIINUMERO,'
      '   NOFIDEMIS,'
      '   NOFIN2VLRNOTA,'
      '   NOFICSTATUS,'
      '   CUPOCTIPOPADRAO'
      'FROM'
      '   NOTAFISCAL'
      'WHERE'
      '   (NOFIINUMERO > 0) and'
      '   (NOFICSTATUS = "E") and'
      '   (%Empresa) and'
      '   (%Data)'
      'ORDER BY'
      '   NOFIDEMIS, NOFIINUMERO')
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
    Left = 446
    Top = 5
    object SQLNOTAFISCALEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTAFISCAL.EMPRICOD'
    end
    object SQLNOTAFISCALNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
      Origin = 'DB.NOTAFISCAL.NOFIINUMERO'
    end
    object SQLNOTAFISCALNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
      Origin = 'DB.NOTAFISCAL.NOFIDEMIS'
    end
    object SQLNOTAFISCALNOFIN2VLRNOTA: TFloatField
      FieldName = 'NOFIN2VLRNOTA'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRNOTA'
    end
    object SQLNOTAFISCALNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      Origin = 'DB.NOTAFISCAL.NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNOTAFISCALCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.NOTAFISCAL.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
  end
end
