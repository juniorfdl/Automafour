inherited FormRelatorioResumoVendasporAliquota: TFormRelatorioResumoVendasporAliquota
  Left = 231
  Top = 98
  Caption = 'Relat'#243'rio Resumo de Vendas por Aliquotas'
  ClientWidth = 788
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 788
  end
  inherited ScrollBox: TScrollBox
    Width = 788
    inherited PanelCentro: TPanel
      Left = 186
      Height = 287
      inherited BtnVisualizar: TSpeedButton
        Left = 148
        Top = 215
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
        Caption = ' Per'#237'o&do '
        inherited Label3: TLabel
          Left = 13
        end
        inherited Label4: TLabel
          Left = 147
        end
        inherited De: TDateEdit
          Left = 44
          Top = 15
        end
        inherited Ate: TDateEdit
          Left = 185
          Top = 15
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 126
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
      object TipoRel: TRadioGroup
        Left = 13
        Top = 167
        Width = 408
        Height = 40
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Cupom'
          'Notas Fiscais'
          'Ambos')
        ParentFont = False
        TabOrder = 3
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
    TableName = 'VendasResumoPorAliquotas.db'
    object TblTemporariaData: TDateField
      FieldName = 'Data'
    end
    object TblTemporariaNro_Venda: TStringField
      FieldName = 'Nro_Venda'
    end
    object TblTemporariaImp_Cod: TIntegerField
      FieldName = 'Imp_Cod'
    end
    object TblTemporariaImp_Legenda: TStringField
      FieldName = 'Imp_Legenda'
    end
    object TblTemporariaImp_Valor: TFloatField
      FieldName = 'Imp_Valor'
    end
    object TblTemporariaProdIcod: TIntegerField
      FieldName = 'ProdIcod'
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
    Left = 552
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
      '  (%MEmpresa)')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 608
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
    Left = 580
    Top = 5
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOM.CUPOA13ID,'
      '  CUPOM.EMPRICOD,'
      '  CUPOM.CUPODEMIS,'
      '  CUPOMITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.ICMSICOD,'
      '  CUPOMITEM.CPITN3QTD,'
      
        '  (CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD) - CUPOMITEM.CP' +
        'ITN2DESC as VLRTOTALITEM'
      'from'
      
        '  ((CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.C' +
        'UPOA13ID)'
      
        '  left outer join PRODUTO on CUPOMITEM.PRODICOD = PRODUTO.PRODIC' +
        'OD)'
      'where'
      '  CUPOM.CUPOCSTATUS = ''A'' and'
      '  CUPOMITEM.CPITN3QTD > 0 and'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MTerminal)'
      'order by'
      '  CUPOM.CUPODEMIS asc,'
      '  PRODUTO.ICMSICOD')
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
      end>
    Left = 418
    Top = 5
    object SQLCupomCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLCupomCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLCupomPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLCupomPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCupomICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
    end
    object SQLCupomCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
    end
    object SQLCupomVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
  end
  object SQLNotas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  NOTAFISCAL.NOFIINUMERO,'
      '  NOTAFISCAL.EMPRICOD,'
      '  NOTAFISCAL.NOFIDEMIS,'
      '  NOTAFISCALITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.ICMSICOD,'
      '  NOTAFISCALITEM.NFITN3QUANT,'
      
        '  (NOTAFISCALITEM.NFITN2VLRUNIT * NOTAFISCALITEM.NFITN3QUANT) as' +
        ' VLRTOTALITEM'
      'from'
      
        '  ((NOTAFISCALITEM inner join NOTAFISCAL on NOTAFISCALITEM.NOFIA' +
        '13ID = NOTAFISCAL.NOFIA13ID)'
      
        ' left outer join PRODUTO on NOTAFISCALITEM.PRODICOD = PRODUTO.PR' +
        'ODICOD)'
      
        ' left outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD = OPERAC' +
        'AOESTOQUE.OPESICOD'
      'where'
      '  NOTAFISCAL.NOFICSTATUS = ''E''   and'
      '  NOTAFISCALITEM.NFITN3QUANT > 0 and'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  OPERACAOESTOQUE.OPESCGERAFINANCEIRO = '#39'S'#39
      'order by'
      '  NOTAFISCAL.NOFIDEMIS asc,'
      '  PRODUTO.ICMSICOD'
      '')
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
      end>
    Left = 446
    Top = 5
    object SQLNotasNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
    end
    object SQLNotasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLNotasNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
    end
    object SQLNotasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLNotasPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLNotasICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
    end
    object SQLNotasNFITN3QUANT: TFloatField
      FieldName = 'NFITN3QUANT'
    end
    object SQLNotasVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
  end
end
