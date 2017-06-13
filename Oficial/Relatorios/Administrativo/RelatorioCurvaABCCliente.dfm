inherited FormRelatorioCurvaABCCliente: TFormRelatorioCurvaABCCliente
  Caption = 'Curva ABC de Clientes (Vendas)'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Top = 114
      Height = 287
      inherited BtnVisualizar: TSpeedButton
        Top = 242
        Width = 146
      end
      inherited EmpresaGroup: TGroupBox
        inherited ListaEmpresas: TListBox
          Width = 353
        end
      end
      object CkTopN25: TCheckBox
        Left = 16
        Top = 210
        Width = 85
        Height = 17
        Caption = 'Top N = 25'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object chkCNPJ: TCheckBox
        Left = 156
        Top = 212
        Width = 233
        Height = 17
        Caption = 'Exibir CNPJ / CPF do Cliente'
        TabOrder = 3
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'CurvaABCClientesVendas'
    object TblTemporariaTOTALCLIENTE: TFloatField
      FieldName = 'TOTALCLIENTE'
    end
    object TblTemporariaCLIEA13ID: TStringField
      DisplayWidth = 14
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 14
    end
    object TblTemporariaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      
        '  Sum(Cupom.CUPON2TOTITENS+Cupom.CUPON3CREDTAXA+Cupom.CUPON2ACRE' +
        'SC-Cupom.CUPON2DESC-Cupom.CUPON3BONUSTROCA) as TotalCliente,'
      '  Cupom.CLIEA13ID'
      'from'
      '  Cupom'
      
        '  inner join CLIENTE on Cupom.CLIEA13ID             = CLIENTE.CL' +
        'IEA13ID'
      
        '  left outer join OperacaoEstoque on Cupom.Opesicod = OperacaoEs' +
        'toque.Opesicod'
      'where'
      ' (%MEmpresa) and'
      ' (%MDataCupom)'
      'and'
      ' Cupom.CUPOCSTATUS <> '#39'C'#39
      'and'
      ' OperacaoEstoque.OPESCENTRADASAIDA  = '#39'S'#39
      'and'
      ' OperacaoEstoque.OPESCORIGEMDESTINO = '#39'C'#39
      'and'
      ' OperacaoEstoque.OPESCGERAFINANCEIRO = '#39'S'#39
      'Group By'
      ' Cupom.CLIEA13ID')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataCupom'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 420
    Top = 5
    object SQLVendasTOTALCLIENTE: TFloatField
      FieldName = 'TOTALCLIENTE'
    end
    object SQLVendasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLNotaFiscal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  Sum(NotaFiscaL.NOFIN2VLRNOTA) as TotalCliente,'
      '  NotaFiscaL.CLIEA13ID'
      'from'
      '  NotaFiscal'
      '  inner join CLIENTE on NotaFiscal.CLIEA13ID = CLIENTE.CLIEA13ID'
      
        '  left outer join Operacaoestoque on NotaFiscal.Opesicod = Opera' +
        'caoestoque.Opesicod'
      'where'
      ' (%MEmpresa) and'
      ' (%MDataNF)'
      'and'
      '  NotaFiscal.NOFICSTATUS = '#39'E'#39
      'and'
      '  Operacaoestoque.OPESCENTRADASAIDA  = '#39'S'#39
      'and'
      '  Operacaoestoque.OPESCORIGEMDESTINO = '#39'C'#39
      'and'
      '  Operacaoestoque.OPESCGERAFINANCEIRO = '#39'S'#39
      'and'
      '  NotaFiscal.CUPOA13ID is Null'
      'Group By'
      'NotaFiscaL.CLIEA13ID'
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
        Name = 'MDataNF'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 420
    Top = 33
    object SQLNotaFiscalTOTALCLIENTE: TBCDField
      FieldName = 'TOTALCLIENTE'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\GestaoOficial\Relatorios\Curva ABC de Vendas.rpt'
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
      #39'Variacao'#39)
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
    Left = 242
    Top = 5
  end
end
