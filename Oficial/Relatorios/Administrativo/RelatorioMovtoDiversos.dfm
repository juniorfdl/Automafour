inherited FormRelatorioMotvoDiversos: TFormRelatorioMotvoDiversos
  Left = 267
  Top = 155
  Caption = 'Movimentos Diversos do Per'#237'odo'
  ClientWidth = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 791
  end
  inherited ScrollBox: TScrollBox
    Width = 791
    inherited PanelCentro: TPanel
      Left = 132
      Width = 542
      Height = 311
      inherited BtnVisualizar: TSpeedButton
        Left = 377
        Top = 270
      end
      object Label5: TLabel [1]
        Left = 25
        Top = 272
        Width = 101
        Height = 13
        Caption = 'ID Movimento =>'
        FocusControl = De
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited EmpresaGroup: TGroupBox
        Width = 524
        Height = 130
        inherited ComboEmpresa: TRxDBLookupCombo
          Width = 468
        end
        inherited ListaEmpresas: TListBox
          Width = 469
          Height = 54
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 136
        Width = 249
      end
      object GroupBox4: TGroupBox
        Left = 11
        Top = 179
        Width = 526
        Height = 40
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboCliente: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 511
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupOper: TGroupBox
        Left = 11
        Top = 220
        Width = 526
        Height = 43
        Caption = 'Opera'#231#227'o de Estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboOperacaoEstoque: TRxDBLookupCombo
          Left = 7
          Top = 15
          Width = 508
          Height = 21
          DropDownCount = 8
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoque
          TabOrder = 0
        end
      end
      object ckMostraVenda: TCheckBox
        Left = 297
        Top = 151
        Width = 215
        Height = 17
        Caption = 'Mostra o valor de venda'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 4
      end
      object CKConcluido: TCheckBox
        Left = 297
        Top = 164
        Width = 228
        Height = 17
        Caption = 'Mostra apenas Movtos Concluidos'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 5
      end
      object ckMostraCusto: TCheckBox
        Left = 297
        Top = 139
        Width = 215
        Height = 17
        Caption = 'Mostra o valor de custo'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 6
      end
      object ID: TEdit
        Left = 132
        Top = 269
        Width = 121
        Height = 21
        TabOrder = 7
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 787
      inherited PanelCabecalho: TPanel
        Width = 787
        inherited PanelNavigator: TPanel
          Width = 787
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 787
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'MovtoDiversos.DB'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaMOVDDMOVIMENTO: TDateTimeField
      FieldName = 'MOVDDMOVIMENTO'
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaMVDIN3QTD: TBCDField
      FieldName = 'MVDIN3QTD'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaVLRTOTALCOMPRA: TFloatField
      FieldName = 'VLRTOTALCOMPRA'
    end
    object TblTemporariaVLRTOTALVENDA: TFloatField
      FieldName = 'VLRTOTALVENDA'
    end
    object TblTemporariaPRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
    end
    object TblTemporariaVLRTOTALCUSTO: TFloatField
      FieldName = 'VLRTOTALCUSTO'
    end
  end
  inherited BatchMove: TBatchMove
    Destination = TblTemporaria
    Source = SQLMovimentos
  end
  object SQLMovimentos: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '  select'
      '  MOVIMENTODIVERSO.EMPRICOD,'
      '  MOVIMENTODIVERSO.CLIEA13ID,'
      '  MOVIMENTODIVERSO.MOVDDMOVIMENTO,'
      '  MOVIMENTODIVERSOITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      '  MOVIMENTODIVERSOITEM.MVDIN3QTD,'
      '  MOVIMENTODIVERSOITEM.PRODN3VLRCOMPRA,'
      '  MOVIMENTODIVERSOITEM.PRODN3VLRVENDA,'
      
        '  (MOVIMENTODIVERSOITEM.PRODN3VLRCOMPRA*MOVIMENTODIVERSOITEM.MVD' +
        'IN3QTD) as VLRTotalCompra,'
      
        '  (MOVIMENTODIVERSOITEM.PRODN3VLRVENDA*MOVIMENTODIVERSOITEM.MVDI' +
        'N3QTD) as VLRTotalVenda'
      'from'
      
        '  ((MOVIMENTODIVERSOITEM inner join MOVIMENTODIVERSO on MOVIMENT' +
        'ODIVERSOITEM.MOVDA13ID = MOVIMENTODIVERSO.MOVDA13ID)'
      
        '  left outer join PRODUTO on MOVIMENTODIVERSOITEM.PRODICOD = PRO' +
        'DUTO.PRODICOD)'
      'where'
      '  (%MEmpresa) and'
      '  (%MData)    and'
      '  (%MCliente) and'
      '  (%MOp)      and'
      '  (%Mid)      and'
      '  (%MStatus)')
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
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOp'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Mid'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MStatus'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 449
    Top = 5
    object SQLMovimentosEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLMovimentosCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLMovimentosMOVDDMOVIMENTO: TDateTimeField
      FieldName = 'MOVDDMOVIMENTO'
    end
    object SQLMovimentosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLMovimentosPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovimentosMVDIN3QTD: TBCDField
      FieldName = 'MVDIN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLMovimentosPRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLMovimentosPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLMovimentosVLRTOTALCOMPRA: TFloatField
      FieldName = 'VLRTOTALCOMPRA'
    end
    object SQLMovimentosVLRTOTALVENDA: TFloatField
      FieldName = 'VLRTOTALVENDA'
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 715
    Top = 5
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 687
    Top = 5
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'D:\DESENV\UnitGestao\Relatorios\Movimentacao Caixa.rpt'
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
      '"Periodo Emissao"')
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
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 597
    Top = 4
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OPERACAOESTOQUE'
      'order by OPESA60DESCR')
    Macros = <>
    Left = 625
    Top = 4
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
