inherited FormRelatorioNotasCompra: TFormRelatorioNotasCompra
  Left = 119
  Top = 87
  Caption = 'Relat'#243'rio de Notas de Compra'
  ClientHeight = 521
  ClientWidth = 799
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 505
    Width = 799
  end
  inherited ScrollBox: TScrollBox
    Width = 799
    Height = 505
    inherited PanelCentro: TPanel
      Top = 83
      Width = 426
      Height = 411
      inherited BtnVisualizar: TSpeedButton
        Left = 290
        Top = 379
      end
      object Label5: TLabel [1]
        Left = 15
        Top = 343
        Width = 74
        Height = 13
        Caption = 'Apenas S'#233'rie'
        FocusControl = De
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited EmpresaGroup: TGroupBox
        Height = 128
        inherited ListaEmpresas: TListBox
          Height = 52
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 133
        object EmissaoChk: TRadioButton
          Left = 243
          Top = 14
          Width = 66
          Height = 17
          Caption = '&Emiss'#227'o'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TabStop = True
        end
        object DigitacaoChk: TRadioButton
          Left = 310
          Top = 14
          Width = 94
          Height = 17
          Caption = '&Recebimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 174
        Width = 407
        Height = 41
        Caption = ' Fornecedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboFornecedor: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 397
          Height = 21
          DropDownCount = 8
          LookupField = 'FORNICOD'
          LookupDisplay = 'FORNA60RAZAOSOC'
          LookupSource = DSSQLFornecedor
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 216
        Width = 407
        Height = 41
        Caption = ' Opera'#231#227'o Estoque '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboOperEstoque: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 396
          Height = 21
          DropDownCount = 8
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperEstoque
          TabOrder = 0
        end
      end
      object RadioStatus: TRadioGroup
        Left = 13
        Top = 298
        Width = 406
        Height = 37
        Caption = 'Status'
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Aberta'
          'Encerrada'
          'Cancelada'
          'Todas')
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 257
        Width = 407
        Height = 41
        Caption = 'CFOP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboCFOP: TRxDBLookupCombo
          Left = 5
          Top = 15
          Width = 396
          Height = 21
          DropDownCount = 8
          LookupField = 'CFOPA5COD'
          LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
          LookupSource = DSSQLCFOP
          TabOrder = 0
        end
      end
      object ComboSerie: TRxDBLookupCombo
        Left = 93
        Top = 340
        Width = 48
        Height = 21
        DropDownCount = 8
        LookupField = 'SERIA5COD'
        LookupDisplay = 'SERIA5COD'
        LookupSource = DSSQLSerie
        TabOrder = 6
      end
      object CKMostrarNFComFinanceiro: TCheckBox
        Left = 183
        Top = 335
        Width = 232
        Height = 17
        Caption = 'Mostrar apenas Notas Com Financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = CKMostrarNFComFinanceiroClick
      end
      object GroupBox5: TGroupBox
        Left = 13
        Top = 361
        Width = 211
        Height = 40
        Caption = ' Ordernar por '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        object OrdemData: TRadioButton
          Left = 8
          Top = 16
          Width = 61
          Height = 17
          Caption = 'Data'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object OrdemFornecedor: TRadioButton
          Left = 70
          Top = 16
          Width = 86
          Height = 18
          Caption = 'Fornecedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object ckTotAliq: TCheckBox
        Left = 269
        Top = 364
        Width = 147
        Height = 17
        Caption = 'Totalizar por Aliquotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object CKMostrarNFSemFinanceiro: TCheckBox
        Left = 183
        Top = 350
        Width = 232
        Height = 17
        Caption = 'Mostrar apenas Notas Sem Financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = CKMostrarNFSemFinanceiroClick
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
    TableName = 'RelNotaCompras.db'
    object TblTemporariaNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaNOCPA30NRO: TStringField
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaNOCPA5SERIE: TStringField
      FieldName = 'NOCPA5SERIE'
      Origin = 'DB.NOTACOMPRA.NOCPA5SERIE'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTACOMPRA.EMPRICOD'
    end
    object TblTemporariaNOCPDEMISSAO: TDateTimeField
      FieldName = 'NOCPDEMISSAO'
      Origin = 'DB.NOTACOMPRA.NOCPDEMISSAO'
    end
    object TblTemporariaNOCPDRECEBIMENTO: TDateTimeField
      FieldName = 'NOCPDRECEBIMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDRECEBIMENTO'
    end
    object TblTemporariaFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTACOMPRA.FORNICOD'
    end
    object TblTemporariaNOCPN3VLRICMS: TFloatField
      FieldName = 'NOCPN3VLRICMS'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMS'
    end
    object TblTemporariaNOCPN3VLRIPI: TFloatField
      FieldName = 'NOCPN3VLRIPI'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRIPI'
    end
    object TblTemporariaNOCPN3VLRTOTNOTA: TFloatField
      FieldName = 'NOCPN3VLRTOTNOTA'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRTOTNOTA'
    end
    object TblTemporariaFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaNOCPN3VLRBASCALICM: TFloatField
      FieldName = 'NOCPN3VLRBASCALICM'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBASCALICM'
    end
  end
  object SQLNotaCompras: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ' select'
      '  NOTACOMPRA.NOCPA13ID,'
      '  NOTACOMPRA.NOCPA30NRO,'
      '  NOTACOMPRA.NOCPA5SERIE,'
      '  NOTACOMPRA.EMPRICOD,'
      '  NOTACOMPRA.EMPRICODDESTCOMPRA,'
      '  NOTACOMPRA.NOCPDEMISSAO,'
      '  NOTACOMPRA.NOCPDRECEBIMENTO,'
      '  NOTACOMPRA.FORNICOD,'
      '  NOTACOMPRA.NOCPN3VLRICMS,'
      '  NOTACOMPRA.NOCPN3VLRIPI,'
      '  NOTACOMPRA.NOCPN3VLRTOTNOTA,'
      '  FORNECEDOR.FORNA60RAZAOSOC,'
      '  NOTACOMPRA.NOCPN3VLRBASCALICM'
      'from'
      
        ' NOTACOMPRA NOTACOMPRA left outer join FORNECEDOR FORNECEDOR on ' +
        'NOTACOMPRA.FORNICOD = FORNECEDOR.FORNICOD'
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MFornecedor) and'
      '  (%OperEstoque) and'
      '  (%Status) and'
      '  (%Serie) and'
      '  (%MostraFin) and'
      '  (%CFOP)')
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
        Name = 'MFornecedor'
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
        Name = 'Status'
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
        Name = 'MostraFin'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CFOP'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLNotaComprasNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaComprasNOCPA30NRO: TStringField
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaComprasNOCPA5SERIE: TStringField
      FieldName = 'NOCPA5SERIE'
      Origin = 'DB.NOTACOMPRA.NOCPA5SERIE'
      FixedChar = True
      Size = 5
    end
    object SQLNotaComprasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTACOMPRA.EMPRICOD'
    end
    object SQLNotaComprasEMPRICODDESTCOMPRA: TIntegerField
      FieldName = 'EMPRICODDESTCOMPRA'
      Origin = 'DB.NOTACOMPRA.EMPRICODDESTCOMPRA'
    end
    object SQLNotaComprasNOCPDEMISSAO: TDateTimeField
      FieldName = 'NOCPDEMISSAO'
      Origin = 'DB.NOTACOMPRA.NOCPDEMISSAO'
    end
    object SQLNotaComprasNOCPDRECEBIMENTO: TDateTimeField
      FieldName = 'NOCPDRECEBIMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDRECEBIMENTO'
    end
    object SQLNotaComprasFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTACOMPRA.FORNICOD'
    end
    object SQLNotaComprasNOCPN3VLRICMS: TFloatField
      FieldName = 'NOCPN3VLRICMS'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMS'
    end
    object SQLNotaComprasNOCPN3VLRIPI: TFloatField
      FieldName = 'NOCPN3VLRIPI'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRIPI'
    end
    object SQLNotaComprasNOCPN3VLRTOTNOTA: TFloatField
      FieldName = 'NOCPN3VLRTOTNOTA'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRTOTNOTA'
    end
    object SQLNotaComprasFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLNotaComprasNOCPN3VLRBASCALICM: TFloatField
      FieldName = 'NOCPN3VLRBASCALICM'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBASCALICM'
    end
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from FORNECEDOR'
      'order by FORNA60RAZAOSOC')
    Macros = <>
    Left = 548
    Top = 5
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 576
    Top = 5
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
    Left = 242
    Top = 4
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
  object DSSQLOperEstoque: TDataSource
    DataSet = SQLOperEstoque
    Left = 452
    Top = 5
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'CFOPA5COD,'
      'CFOPA60DESCR'
      'From'
      'NOTACOMPRA'
      'LEFT OUTER JOIN CFOP on NOTACOMPRA.CFOPA5COD = CFOP.CFOPA5COD'
      'GROUP BY'
      'CFOPA5COD,'
      'CFOPA60DESCR')
    Macros = <>
    Left = 604
    Top = 5
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.NOTAFISCAL.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 632
    Top = 5
  end
  object SQLSerie: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From'
      'Serie')
    Macros = <>
    Left = 665
    Top = 5
    object SQLSerieSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 693
    Top = 5
  end
  object TblTempIcms: TTable
    AfterPost = TblTemporariaAfterPost
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'ComprasTotAliq.db'
    Left = 362
    Top = 38
    object TblTempIcmsDATA: TDateField
      FieldName = 'DATA'
    end
    object TblTempIcmsLEGENDA: TStringField
      FieldName = 'LEGENDA'
    end
    object TblTempIcmsALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object TblTempIcmsVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object SQLComprasItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  NOTACOMPRA.NOCPA13ID,'
      '  NOTACOMPRA.NOCPDEMISSAO,'
      '  NOTACOMPRA.NOCPDRECEBIMENTO,'
      '  NOTACOMPRAITEM.PRODICOD,'
      '  NOTACOMPRAITEM.NOCIN3VLRICMS,'
      '  NOTACOMPRAITEM.NOCIN3PERCICMS,'
      '  NOTACOMPRAITEM.NOCIN3VLRSUBST,'
      '  NOTACOMPRAITEM.NOCIN2PERCSUBST,'
      
        '  (NOTACOMPRAITEM.NOCIN3CAPEMBAL*NOTACOMPRAITEM.NOCIN3QTDEMBAL) ' +
        'as Qtde,'
      '  NOTACOMPRAITEM.NOCIN3VLREMBAL'
      'from'
      
        '  NOTACOMPRAITEM inner join NOTACOMPRA  on NOTACOMPRAITEM.NOCPA1' +
        '3ID = NOTACOMPRA.NOCPA13ID'
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MFornecedor) and'
      '  (%OperEstoque) and'
      '  (%Status) and'
      '  (%Serie) and'
      '  (%CFOP)'
      'order by'
      '  NOTACOMPRA.NOCPDEMISSAO')
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
        Name = 'MFornecedor'
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
        Name = 'Status'
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
        Name = 'CFOP'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 394
    Top = 37
    object SQLComprasItemNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLComprasItemNOCPDEMISSAO: TDateTimeField
      FieldName = 'NOCPDEMISSAO'
      Origin = 'DB.NOTACOMPRA.NOCPDEMISSAO'
    end
    object SQLComprasItemNOCPDRECEBIMENTO: TDateTimeField
      FieldName = 'NOCPDRECEBIMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDRECEBIMENTO'
    end
    object SQLComprasItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTACOMPRAITEM.PRODICOD'
    end
    object SQLComprasItemNOCIN3VLREMBAL: TFloatField
      FieldName = 'NOCIN3VLREMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLREMBAL'
    end
    object SQLComprasItemQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3CAPEMBAL'
    end
    object SQLComprasItemNOCIN3VLRICMS: TFloatField
      FieldName = 'NOCIN3VLRICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRICMS'
    end
    object SQLComprasItemNOCIN3PERCICMS: TFloatField
      FieldName = 'NOCIN3PERCICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCICMS'
    end
    object SQLComprasItemNOCIN3VLRSUBST: TFloatField
      FieldName = 'NOCIN3VLRSUBST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRSUBST'
    end
    object SQLComprasItemNOCIN2PERCSUBST: TFloatField
      FieldName = 'NOCIN2PERCSUBST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCSUBST'
    end
  end
end
