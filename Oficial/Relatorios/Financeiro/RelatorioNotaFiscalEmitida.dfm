inherited FormRelatorioNotaFiscalEmitida: TFormRelatorioNotaFiscalEmitida
  Left = 323
  Top = 123
  Caption = 'Relat'#243'rio de Notas Fiscais Emitidas'
  ClientHeight = 513
  ClientWidth = 824
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 497
    Width = 824
  end
  inherited ScrollBox: TScrollBox
    Width = 824
    Height = 497
    inherited PanelCentro: TPanel
      Left = 161
      Top = 81
      Width = 472
      Height = 391
      inherited BtnVisualizar: TSpeedButton
        Left = 174
        Top = 357
      end
      inherited EmpresaGroup: TGroupBox
        Top = 1
        Width = 456
        Height = 128
        Caption = ' &Empresa '
        inherited Label1: TLabel
          Left = 64
        end
        inherited IncluirEmpresa: TSpeedButton
          Left = 26
        end
        inherited ExcluirEmpresa: TSpeedButton
          Left = 26
        end
        inherited Label2: TLabel
          Left = 62
        end
        inherited ComboEmpresa: TRxDBLookupCombo
          Left = 62
        end
        inherited ListaEmpresas: TListBox
          Left = 62
          Height = 54
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 11
        Top = 129
        Width = 245
        Caption = ' Per'#237'o&do '
        inherited Label4: TLabel
          Left = 128
        end
        inherited De: TDateEdit
          Left = 34
          CheckOnExit = True
        end
        inherited Ate: TDateEdit
          Left = 151
          CheckOnExit = True
        end
      end
      object GroupFiltro: TGroupBox
        Left = 12
        Top = 169
        Width = 456
        Height = 183
        Caption = ' Filtros '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label5: TLabel
          Left = 9
          Top = 16
          Width = 37
          Height = 13
          Caption = 'Status'
        end
        object Label6: TLabel
          Left = 209
          Top = 16
          Width = 29
          Height = 13
          Caption = 'S'#233'rie'
        end
        object Label7: TLabel
          Left = 9
          Top = 54
          Width = 119
          Height = 13
          Caption = 'Opera'#231#227'o de Estoque'
        end
        object Label8: TLabel
          Left = 9
          Top = 94
          Width = 39
          Height = 13
          Caption = 'Cliente'
        end
        object Label9: TLabel
          Left = 8
          Top = 133
          Width = 54
          Height = 13
          Caption = 'Vendedor'
        end
        object ComboSerie: TRxDBLookupCombo
          Left = 209
          Top = 30
          Width = 233
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          LookupField = 'SERIA5COD'
          LookupDisplay = 'SERIA5COD;EMPRICOD'
          LookupSource = DSSQLSerie
          TabOrder = 1
        end
        object ComboOperEstoque: TRxDBLookupCombo
          Left = 9
          Top = 71
          Width = 432
          Height = 21
          DropDownCount = 8
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperEstoque
          TabOrder = 2
          OnKeyDown = ComboOperEstoqueKeyDown
        end
        object ComboCliente: TRxDBLookupCombo
          Left = 9
          Top = 109
          Width = 432
          Height = 21
          DropDownCount = 8
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          TabOrder = 3
          OnKeyDown = ComboOperEstoqueKeyDown
        end
        object ComboStatus: TComboBox
          Left = 9
          Top = 30
          Width = 193
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'Aberta'
            'Encerrada'
            'Cancelada')
        end
        object ComboVendedor: TRxDBLookupCombo
          Left = 9
          Top = 149
          Width = 182
          Height = 21
          DropDownCount = 8
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSQLVendedor
          TabOrder = 4
          OnKeyDown = ComboOperEstoqueKeyDown
        end
        object GroupBox5: TGroupBox
          Left = 196
          Top = 135
          Width = 253
          Height = 40
          Caption = ' Intervalo de Notas Fiscais '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object Label10: TLabel
            Left = 126
            Top = 18
            Width = 19
            Height = 13
            Caption = 'at'#233
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 8
            Top = 18
            Width = 15
            Height = 13
            Caption = '&De'
            FocusControl = De
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditNroInicial: TEdit
            Left = 29
            Top = 14
            Width = 90
            Height = 21
            TabOrder = 0
          end
          object EditNroFinal: TEdit
            Left = 154
            Top = 14
            Width = 90
            Height = 21
            TabOrder = 1
          end
        end
      end
      object RadioOrder: TRadioGroup
        Left = 260
        Top = 129
        Width = 208
        Height = 41
        Caption = ' Ordenar Por '
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Cliente'
          'Emiss'#227'o'
          'Nro NF')
        ParentFont = False
        TabOrder = 3
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 820
      inherited PanelCabecalho: TPanel
        Width = 820
        inherited PanelNavigator: TPanel
          Width = 820
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 820
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'NotaFiscal.Db'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTAFISCAL.EMPRICOD'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.NOTAFISCAL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Size = 60
    end
    object TblTemporariaSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.NOTAFISCAL.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTAFISCAL.OPESICOD'
    end
    object TblTemporariaOperacaoLookup: TStringField
      FieldName = 'OperacaoLookup'
      Size = 60
    end
    object TblTemporariaNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
      Origin = 'DB.NOTAFISCAL.NOFIINUMERO'
    end
    object TblTemporariaNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      Origin = 'DB.NOTAFISCAL.NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
      Origin = 'DB.NOTAFISCAL.NOFIDEMIS'
    end
    object TblTemporariaNOFIN2VLRICMS: TFloatField
      FieldName = 'NOFIN2VLRICMS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRICMS'
    end
    object TblTemporariaNOFIN2VLRNOTA: TFloatField
      FieldName = 'NOFIN2VLRNOTA'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRNOTA'
    end
    object TblTemporariaNOFIN2VLRSUBS: TFloatField
      FieldName = 'NOFIN2VLRSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSUBS'
    end
    object TblTemporariaNOFIN3VLRCOFINS: TFloatField
      FieldName = 'NOFIN3VLRCOFINS'
    end
    object TblTemporariaNOFIN3VLRPIS: TFloatField
      FieldName = 'NOFIN3VLRPIS'
    end
  end
  object SQLNotaFiscal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'NotaFiscal.EMPRICOD,'
      'NotaFiscal.CLIEA13ID,'
      'Cliente.CLIEA60RAZAOSOC,'
      'NotaFiscal.SERIA5COD,'
      'NotaFiscal.OPESICOD,'
      'NotaFiscal.NOFIINUMERO,'
      'NotaFiscal.NOFICSTATUS,'
      'NotaFiscal.NOFIDEMIS,'
      'NotaFiscal.NOFIN2VLRICMS,'
      'NotaFiscal.NOFIN2VLRNOTA,'
      'NotaFiscal.NOFIN2VLRSUBS,'
      'NotaFiscal.NOFIN3VLRPIS,'
      'NotaFiscal.NOFIN3VLRCOFINS,'
      'Fornecedor.FORNA60RAZAOSOC'
      'From'
      'NotaFiscal'
      
        'left outer join Cliente on NotaFiscal.CLIEA13ID = Cliente.CLIEA1' +
        '3ID'
      
        'left outer join Fornecedor on NotaFiscal.FORNICOD = Fornecedor.F' +
        'ORNICOD'
      'Where'
      '%Empresa'
      'and'
      '(%CampoData Between %DataInicial and %DataFinal)'
      'and'
      '(%Status)'
      'and'
      '(%OperEstoque)'
      'and'
      '(%Serie)'
      'and'
      '(%Cliente)'
      'and'
      '(%Vendedor)'
      'and'
      '(%NROInicial)'
      'and'
      '(%NROFinal)'
      ''
      'ORDER BY'
      ''
      '%MOrdem'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'OperEstoque'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Serie'
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
        Name = 'Vendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'NROInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'NROFinal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 421
    Top = 5
    object SQLNotaFiscalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTAFISCAL.EMPRICOD'
    end
    object SQLNotaFiscalCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.NOTAFISCAL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Size = 60
    end
    object SQLNotaFiscalSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.NOTAFISCAL.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTAFISCAL.OPESICOD'
    end
    object SQLNotaFiscalOperacaoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'OperacaoLookup'
      LookupDataSet = SQLOperEstoque
      LookupKeyFields = 'OPESICOD'
      LookupResultField = 'OPESA60DESCR'
      KeyFields = 'OPESICOD'
      Size = 60
      Lookup = True
    end
    object SQLNotaFiscalNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
      Origin = 'DB.NOTAFISCAL.NOFIINUMERO'
    end
    object SQLNotaFiscalNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      Origin = 'DB.NOTAFISCAL.NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
      Origin = 'DB.NOTAFISCAL.NOFIDEMIS'
    end
    object SQLNotaFiscalNOFIN2VLRNOTA: TFloatField
      FieldName = 'NOFIN2VLRNOTA'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRNOTA'
    end
    object SQLNotaFiscalNOFIN2VLRICMS: TFloatField
      FieldName = 'NOFIN2VLRICMS'
    end
    object SQLNotaFiscalNOFIN2VLRSUBS: TFloatField
      FieldName = 'NOFIN2VLRSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSUBS'
    end
    object SQLNotaFiscalNOFIN3VLRPIS: TFloatField
      FieldName = 'NOFIN3VLRPIS'
    end
    object SQLNotaFiscalNOFIN3VLRCOFINS: TFloatField
      FieldName = 'NOFIN3VLRCOFINS'
    end
  end
  object SQLOperEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      'OPESICOD,OPESA60DESCR '
      'From '
      'OperacaoEstoque'
      ''
      'Order By'
      'OPESA60DESCR')
    Macros = <>
    Left = 480
    Top = 5
  end
  object SQLSerie: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'SERIA5COD, EMPRICOD'
      'From'
      'Serie')
    Macros = <>
    Left = 536
    Top = 5
    object SQLSerieSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLSerieEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.SERIE.EMPRICOD'
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      'CLIEA13ID, CLIEA60RAZAOSOC'
      'From'
      'Cliente'
      ''
      'Order By'
      'CLIEA60RAZAOSOC')
    Macros = <>
    Left = 592
    Top = 5
  end
  object DSSQLOperEstoque: TDataSource
    DataSet = SQLOperEstoque
    Left = 452
    Top = 5
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 508
    Top = 5
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 564
    Top = 5
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 
      'C:\Desenv\UnitGestao Oficial\Relatorios\Listagem Itens Pedidos d' +
      'e Venda.rpt'
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
    Left = 242
    Top = 5
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select VENDICOD,VENDA60NOME from VENDEDOR'
      'Order By'
      'VENDA60NOME')
    Macros = <>
    Left = 480
    Top = 33
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 452
    Top = 33
  end
end
