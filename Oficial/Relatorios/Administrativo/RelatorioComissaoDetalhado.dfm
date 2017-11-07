inherited FormRelatorioComissaoDetalhado: TFormRelatorioComissaoDetalhado
  Left = 224
  Top = 107
  Caption = 'Relat'#243'rio de Comiss'#245'es Detalhado'
  ClientHeight = 470
  ClientWidth = 797
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 454
    Width = 797
  end
  inherited ScrollBox: TScrollBox
    Width = 797
    Height = 454
    inherited PanelCentro: TPanel
      Height = 301
      inherited BtnVisualizar: TSpeedButton
        Top = 255
      end
      inherited GroupBox1: TGroupBox
        Width = 244
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 203
        Width = 407
        Height = 41
        Caption = 'Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboVendedor: TRxDBLookupCombo
          Left = 6
          Top = 16
          Width = 395
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSQLVendedor
          TabOrder = 0
          OnKeyDown = ComboVendedorKeyDown
        end
      end
      object CKNroPedido: TCheckBox
        Left = 262
        Top = 177
        Width = 157
        Height = 17
        Caption = 'Imprimir Nro Pedido Tal'#227'o'
        TabOrder = 3
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 793
      inherited PanelCabecalho: TPanel
        Width = 793
        inherited PanelNavigator: TPanel
          Width = 793
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 793
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelComissaoDetalhada.db'
    object TblTemporariaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaVDCOICOD: TIntegerField
      FieldName = 'VDCOICOD'
    end
    object TblTemporariaVDCON2TOTVENDVISTA: TBCDField
      FieldName = 'VDCON2TOTVENDVISTA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaVDCON2TOTVENDPRAZO: TBCDField
      FieldName = 'VDCON2TOTVENDPRAZO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaVDCOINROVEND: TIntegerField
      FieldName = 'VDCOINROVEND'
    end
    object TblTemporariaVDCON2VENDMEDIA: TBCDField
      FieldName = 'VDCON2VENDMEDIA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaVDCON3QTDVEND: TBCDField
      FieldName = 'VDCON3QTDVEND'
      Precision = 15
      Size = 3
    end
    object TblTemporariaVDCON2VLRCOMISS: TBCDField
      FieldName = 'VDCON2VLRCOMISS'
      Precision = 15
      Size = 3
    end
    object TblTemporariaVDCODEMIS: TDateTimeField
      FieldName = 'VDCODEMIS'
    end
    object TblTemporariaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object TblTemporariaVDCODESTORNO: TDateTimeField
      FieldName = 'VDCODESTORNO'
    end
    object TblTemporariaVDCON3VLRESTORNO: TBCDField
      FieldName = 'VDCON3VLRESTORNO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaVDCOA5TIPODOC: TStringField
      FieldName = 'VDCOA5TIPODOC'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaVDCOCDEBCRED: TStringField
      FieldName = 'VDCOCDEBCRED'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaVDCON2PERCOMISSAO: TBCDField
      FieldName = 'VDCON2PERCOMISSAO'
      Precision = 15
      Size = 2
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaDocumento: TStringField
      FieldName = 'Documento'
      Size = 30
    end
    object TblTemporariaVENDN2PERCIRRF: TBCDField
      FieldName = 'VENDN2PERCIRRF'
      Precision = 15
      Size = 2
    end
  end
  object SQLComissao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'VENDEDORCOMISSAO.*,'
      'CLIENTE.CLIEA60RAZAOSOC,'
      'VENDEDOR.VENDA60NOME,'
      'VENDEDOR.VENDN2PERCIRRF'
      'FROM'
      'VENDEDORCOMISSAO'
      
        'left outer join CLIENTE  on VENDEDORCOMISSAO.CLIEA13ID = CLIENTE' +
        '.CLIEA13ID'
      
        'left outer join VENDEDOR on VENDEDORCOMISSAO.VENDICOD  = VENDEDO' +
        'R.VENDICOD'
      'WHERE'
      '(%MData) and'
      '(%MVendedor)')
    Macros = <
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
      end>
    Left = 418
    Top = 5
    object SQLComissaoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLComissaoCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLComissaoVDCOICOD: TIntegerField
      FieldName = 'VDCOICOD'
    end
    object SQLComissaoVDCON2TOTVENDVISTA: TFloatField
      FieldName = 'VDCON2TOTVENDVISTA'
    end
    object SQLComissaoVDCON2TOTVENDPRAZO: TFloatField
      FieldName = 'VDCON2TOTVENDPRAZO'
    end
    object SQLComissaoVDCOINROVEND: TIntegerField
      FieldName = 'VDCOINROVEND'
    end
    object SQLComissaoVDCON2VENDMEDIA: TFloatField
      FieldName = 'VDCON2VENDMEDIA'
    end
    object SQLComissaoVDCON3QTDVEND: TFloatField
      FieldName = 'VDCON3QTDVEND'
    end
    object SQLComissaoVDCON2VLRCOMISS: TFloatField
      FieldName = 'VDCON2VLRCOMISS'
    end
    object SQLComissaoVDCODEMIS: TDateTimeField
      FieldName = 'VDCODEMIS'
    end
    object SQLComissaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLComissaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLComissaoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLComissaoVDCOA5TIPODOC: TStringField
      FieldName = 'VDCOA5TIPODOC'
      FixedChar = True
      Size = 5
    end
    object SQLComissaoVDCOCDEBCRED: TStringField
      FieldName = 'VDCOCDEBCRED'
      FixedChar = True
      Size = 1
    end
    object SQLComissaoVDCODESTORNO: TDateTimeField
      FieldName = 'VDCODESTORNO'
    end
    object SQLComissaoVDCON2PERCOMISSAO: TFloatField
      FieldName = 'VDCON2PERCOMISSAO'
    end
    object SQLComissaoVDCON3VLRESTORNO: TFloatField
      FieldName = 'VDCON3VLRESTORNO'
    end
    object SQLComissaoCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLComissaoVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLComissaoVENDN2PERCIRRF: TFloatField
      FieldName = 'VENDN2PERCIRRF'
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
    Top = 4
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'VENDICOD,'
      'VENDA60NOME'
      'FROM'
      'VENDEDOR'
      'ORDER BY'
      'VENDA60NOME')
    Macros = <>
    Left = 208
    Top = 4
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 180
    Top = 4
  end
end
