inherited FormRelatorioVendasPorPlano: TFormRelatorioVendasPorPlano
  Left = 216
  Top = 140
  Caption = 'Relat'#243'rio de Vendas Por Plano'
  ClientHeight = 565
  ClientWidth = 879
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 549
    Width = 879
  end
  inherited ScrollBox: TScrollBox
    Width = 879
    Height = 549
    inherited PanelCentro: TPanel
      Left = 88
      Top = 94
      Width = 773
      Height = 359
      inherited BtnVisualizar: TSpeedButton
        Left = 259
        Top = 292
        Width = 162
        Height = 45
        Margin = 20
      end
      inherited EmpresaGroup: TGroupBox
        inherited ComboEmpresa: TRxDBLookupCombo
          OnChange = ComboEmpresaChange
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 157
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 239
        Width = 407
        Height = 40
        Caption = ' Vendedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
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
      object GroupBox3: TGroupBox
        Left = 12
        Top = 198
        Width = 407
        Height = 40
        Caption = 'Plano de Recebimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboPlano: TRxDBLookupCombo
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
          LookupField = 'PLRCICOD'
          LookupDisplay = 'PLRCICOD;PLRCA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLPlano
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 424
        Top = 4
        Width = 337
        Height = 155
        Caption = '&Terminais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ListTerminal: TRxCheckListBox
          Left = 2
          Top = 15
          Width = 333
          Height = 138
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 12572888
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
        Left = 424
        Top = 166
        Width = 163
        Height = 17
        Caption = '&Filtrar Por Terminal'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 875
      inherited PanelCabecalho: TPanel
        Width = 875
        inherited PanelNavigator: TPanel
          Width = 875
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 875
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelVendasPorPlanos.DB'
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaDOC: TStringField
      FieldName = 'DOC'
      Size = 13
    end
    object TblTemporariaCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object TblTemporariaCUPON2ACRESC: TFloatField
      FieldName = 'CUPON2ACRESC'
    end
    object TblTemporariaCUPON2DESC: TFloatField
      FieldName = 'CUPON2DESC'
    end
    object TblTemporariaCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
    end
    object TblTemporariaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TblTemporariaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  inherited BatchMove: TBatchMove
    Mode = batAppend
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOM.CLIEA13ID,'
      '  Cast(CUPOM.CUPOINRO as CHAR(13)) as DOC,'
      '  CUPOM.CUPOCSTATUS,'
      '  CUPOM.CUPODEMIS,'
      '  Cast(CUPOM.CUPON2ACRESC as float) as CUPON2ACRESC,'
      '  Cast(CUPOM.CUPON2DESC as float) as CUPON2DESC,'
      '  Cast(CUPOM.CUPON2TOTITENS as float) as CUPON2TOTITENS,'
      
        '  (CUPOM.CUPON2TOTITENS + CUPOM.CUPON3CREDTAXA + CUPOM.CUPON2ACR' +
        'ESC - CUPOM.CUPON2DESC - CUPOM.CUPON3BONUSTROCA) AS TOTAL,'
      '  CUPOM.EMPRICOD,'
      '  CUPOM.PLRCICOD,'
      '  CUPOM.TERMICOD,'
      '  CUPOM.VENDICOD,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  PLANORECEBIMENTO.PLRCA60DESCR'
      'from'
      
        ' (CUPOM CUPOM inner join CLIENTE CLIENTE on CUPOM.CLIEA13ID = CL' +
        'IENTE.CLIEA13ID)'
      
        ' left outer join PLANORECEBIMENTO PLANORECEBIMENTO on CUPOM.PLRC' +
        'ICOD = PLANORECEBIMENTO.PLRCICOD'
      'where'
      '  CUPOM.CUPOCSTATUS = ''A'' and'
      '  (%MEmpresa) and'
      '  (%MTerminal) and '
      '  (%MData) and'
      '  (%MVendedor) and'
      '  (%MPlano)'
      'order by'
      '  CUPOM.PLRCICOD asc ,'
      '  CUPOM.CUPODEMIS asc ,'
      '  CUPOM.CUPOA13ID asc')
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
      end
      item
        DataType = ftString
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPlano'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 426
    Top = 5
    object SQLVendasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasDOC: TStringField
      FieldName = 'DOC'
      FixedChar = True
      Size = 13
    end
    object SQLVendasCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLVendasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLVendasCUPON2ACRESC: TFloatField
      FieldName = 'CUPON2ACRESC'
    end
    object SQLVendasCUPON2DESC: TFloatField
      FieldName = 'CUPON2DESC'
    end
    object SQLVendasCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
    end
    object SQLVendasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object SQLVendasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLVendasPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object SQLVendasTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLVendasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLVendasCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLVendasPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
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
    Left = 246
    Top = 4
  end
  object SQLVendedor: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from VENDEDOR'
      'order by VENDA60NOME')
    Left = 462
    Top = 5
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 490
    Top = 5
  end
  object SQLNotas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  NOTAFISCAL.CLIEA13ID as CLIEA13ID,'
      '  CAST(NOTAFISCAL.NOFIINUMERO as CHAR(13)) as DOC,'
      '  NOTAFISCAL.NOFICSTATUS as CUPOCSTATUS,'
      '  NOTAFISCAL.NOFIDEMIS as CUPODEMIS,'
      
        '  Cast((NOTAFISCAL.NOFIN2VLROUTRASDESP + NOTAFISCAL.NOFIN2VLRFRE' +
        'TE) as Float) as CUPON2ACRESC,'
      '  Cast(NOTAFISCAL.NOFIN2VLRDESC as Float) as CUPON2DESC,'
      '  Cast(NOTAFISCAL.NOFIN2VLRPRODUTO as Float) as CUPON2TOTITENS,'
      '  Cast(NOTAFISCAL.NOFIN2VLRNOTA as Float) as TOTAL,'
      '  NOTAFISCAL.EMPRICOD as EMPRICOD,'
      '  NOTAFISCAL.PLRCICOD as PLRCICOD,'
      '  NOTAFISCAL.EMPRICODDEST as TERMICOD,'
      '  NOTAFISCAL.VENDICOD as VENDICOD,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  PLANORECEBIMENTO.PLRCA60DESCR,'
      '  VENDEDOR.VENDA60NOME,'
      '  OPERACAOESTOQUE.OPESCGERAFINANCEIRO'
      'from'
      
        '  ((NOTAFISCAL NOTAFISCAL inner join CLIENTE CLIENTE on NOTAFISC' +
        'AL.CLIEA13ID = CLIENTE.CLIEA13ID)'
      
        '  left outer join PLANORECEBIMENTO PLANORECEBIMENTO on NOTAFISCA' +
        'L.PLRCICOD = PLANORECEBIMENTO.PLRCICOD)'
      
        '  left outer join VENDEDOR VENDEDOR on NOTAFISCAL.VENDICOD = VEN' +
        'DEDOR.VENDICOD'
      
        '  left outer join OPERACAOESTOQUE OPERACAOESTOQUE on OPERACAOEST' +
        'OQUE.OPESICOD = NOTAFISCAL.OPESICOD'
      'where'
      '  NOTAFISCAL.NOFICSTATUS = '#39'E'#39' and'
      '  NOTAFISCAL.CUPOA13ID is null and'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MVendedor) and'
      '  (%MPlano) and'
      '  OPERACAOESTOQUE.OPESCGERAFINANCEIRO = '#39'S'#39
      'order by'
      '  NOTAFISCAL.PLRCICOD asc ,'
      '  NOTAFISCAL.NOFIDEMIS asc ,'
      '  NOTAFISCAL.NOFIINUMERO asc')
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
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPlano'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 521
    Top = 5
    object SQLNotasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotasDOC: TStringField
      FieldName = 'DOC'
      FixedChar = True
      Size = 13
    end
    object SQLNotasCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLNotasCUPON2ACRESC: TFloatField
      FieldName = 'CUPON2ACRESC'
    end
    object SQLNotasCUPON2DESC: TFloatField
      FieldName = 'CUPON2DESC'
    end
    object SQLNotasCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
    end
    object SQLNotasTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object SQLNotasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLNotasPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object SQLNotasTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLNotasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLNotasCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLNotasPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLPlano: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'PLRCICOD, '
      'PLRCA60DESCR'
      'FROM'
      'PLANORECEBIMENTO'
      'ORDER BY '
      'PLRCA60DESCR')
    Macros = <>
    Left = 561
    Top = 5
    object SQLPlanoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPlano: TDataSource
    DataSet = SQLPlano
    Left = 589
    Top = 5
  end
  object DataSource1: TDataSource
    DataSet = TblTemporaria
    Left = 364
    Top = 72
  end
end
