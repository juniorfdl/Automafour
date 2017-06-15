inherited FormRelatorioItensPedidoVenda: TFormRelatorioItensPedidoVenda
  Top = 33
  Caption = 'Relat'#243'rio de Produtos dos Pedidos de Venda'
  ClientHeight = 548
  ClientWidth = 804
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 532
    Width = 804
  end
  inherited ScrollBox: TScrollBox
    Width = 804
    Height = 532
    inherited PanelCentro: TPanel
      Left = 28
      Top = 135
      Width = 774
      Height = 304
      Caption = #39
      inherited BtnVisualizar: TSpeedButton
        Left = 457
        Top = 268
        Width = 133
      end
      object Label9: TLabel [1]
        Left = 323
        Top = 227
        Width = 39
        Height = 13
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited GroupBox1: TGroupBox
        Left = 172
        Width = 247
        inherited De: TDateEdit
          CheckOnExit = True
        end
        inherited Ate: TDateEdit
          CheckOnExit = True
        end
      end
      object GroupBox2: TGroupBox
        Left = 422
        Top = 4
        Width = 327
        Height = 198
        Caption = ' Grupo/SubGrupo/Varia'#231#227'o/Produto '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label5: TLabel
          Left = 10
          Top = 26
          Width = 34
          Height = 13
          Caption = 'Grupo'
        end
        object Label6: TLabel
          Left = 10
          Top = 64
          Width = 55
          Height = 13
          Caption = 'SubGrupo'
        end
        object Label7: TLabel
          Left = 10
          Top = 104
          Width = 49
          Height = 13
          Caption = 'Varia'#231#227'o'
        end
        object Label8: TLabel
          Left = 12
          Top = 147
          Width = 45
          Height = 13
          Caption = 'Produto'
        end
        object ComboSubGrupo: TRxDBLookupCombo
          Left = 8
          Top = 77
          Width = 313
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'SUBGICOD'
          LookupDisplay = 'SUBGA60DESCR'
          LookupSource = DSSQLSubGrupo
          ParentFont = False
          TabOrder = 1
        end
        object ComboVariacao: TRxDBLookupCombo
          Left = 8
          Top = 118
          Width = 313
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todas...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'VARIICOD'
          LookupDisplay = 'VARIA60DESCR'
          LookupSource = DSSQLVariacao
          ParentFont = False
          TabOrder = 2
        end
        object ComboGrupo: TRxDBLookupCombo
          Left = 8
          Top = 40
          Width = 313
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'GRUPICOD'
          LookupDisplay = 'GRUPA60DESCR'
          LookupSource = DSSQLGrupo
          ParentFont = False
          TabOrder = 0
        end
        object ComboProduto: TRxDBLookupCombo
          Left = 8
          Top = 161
          Width = 313
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PRODICOD'
          LookupDisplay = 'PRODICOD;PRODA60DESCR'
          LookupSource = DSSQLProduto
          ParentFont = False
          TabOrder = 3
        end
      end
      object RadioData: TRadioGroup
        Left = 12
        Top = 161
        Width = 158
        Height = 41
        Caption = 'Data'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Emiss'#227'o'
          'Entrega')
        ParentFont = False
        TabOrder = 2
      end
      object RadioOrder: TRadioGroup
        Left = 209
        Top = 202
        Width = 102
        Height = 91
        Caption = 'Ordenar Por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'C'#243'digo'
          'Descri'#231#227'o')
        ParentFont = False
        TabOrder = 3
      end
      object RadioStatus: TRadioGroup
        Left = 12
        Top = 202
        Width = 96
        Height = 91
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Aberto'
          'Encerrado'
          'Cancelado'
          'Faturado')
        ParentFont = False
        TabOrder = 5
      end
      object RadioTipo: TRadioGroup
        Left = 111
        Top = 202
        Width = 96
        Height = 91
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 1
        Items.Strings = (
          'Or'#231'amento'
          'Pedido')
        ParentFont = False
        TabOrder = 6
      end
      object CheckListagem: TCheckBox
        Left = 320
        Top = 208
        Width = 203
        Height = 17
        Caption = 'Listagem de produtos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object ComboCliente: TRxDBLookupCombo
        Left = 320
        Top = 241
        Width = 423
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Todos...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'CLIEA13ID'
        LookupDisplay = 'CLIEA60RAZAOSOC'
        LookupSource = DSSQLCliente
        ParentFont = False
        TabOrder = 8
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 802
      inherited PanelCabecalho: TPanel
        Width = 802
        inherited PanelNavigator: TPanel
          Width = 802
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 802
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'PedidoVendaProducao.DB'
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object TblTemporariaGrupoLookup: TStringField
      FieldName = 'GrupoLookup'
      Size = 60
    end
    object TblTemporariaSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.PRODUTO.SUBGICOD'
    end
    object TblTemporariaSubGrupoLookup: TStringField
      FieldName = 'SubGrupoLookup'
      Size = 60
    end
    object TblTemporariaVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.PRODUTO.VARIICOD'
    end
    object TblTemporariaVariacaoLookup: TStringField
      FieldName = 'VariacaoLookup'
      Size = 60
    end
    object TblTemporariaQtde: TFloatField
      FieldName = 'Qtde'
    end
    object TblTemporariaCorLookup: TStringField
      FieldName = 'CorLookup'
      Size = 60
    end
    object TblTemporariaAgrupGrade: TIntegerField
      FieldName = 'AgrupGrade'
    end
    object TblTemporariaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 60
    end
    object TblTemporariaPRODN3VLRCOMPRA: TFloatField
      FieldName = 'PRODN3VLRCOMPRA'
    end
    object TblTemporariaTamanhoLookup: TStringField
      FieldName = 'TamanhoLookup'
      Size = 15
    end
    object TblTemporariaVlrTotalitem: TFloatField
      FieldName = 'VlrTotalitem'
    end
  end
  object SQLPedidoVendaItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  PedidoVendaItem.PRODICOD ,'
      '  Produto.PRODA60DESCR ,'
      '  Produto.GRUPICOD,'
      '  Produto.SUBGICOD ,'
      '  Produto.VARIICOD ,'
      
        '  Sum(PedidoVendaItem.PVITN2VLRUNIT*PedidoVendaItem.PVITN3QUANT)' +
        ' As VlrTotalitem,'
      '  Sum(PedidoVendaItem.PVITN3QUANT) As Qtde'
      'From'
      '  PedidoVendaItem,'
      '  PedidoVenda,'
      '  Produto'
      'Where'
      '  PedidoVendaItem.PDVDA13ID = PedidoVenda.PDVDA13ID'
      'and'
      '  PedidoVendaItem.PRODICOD = Produto.PRODICOD'
      'and'
      '  (%Empresa)'
      'and'
      '  (%CampoData Between %DataInicial and %DataFinal)'
      'and'
      '  %Grupo'
      'and'
      '  %SubGrupo'
      'and'
      '  %Variacao'
      'and'
      '  %MProduto'
      'and'
      '  %MCliente'
      'and'
      '  (%Tipo)'
      'and'
      '  (%Status)'
      'Group By'
      '  PedidoVendaItem.PRODICOD ,'
      '  Produto.PRODA60DESCR ,'
      '  Produto.GRUPICOD,'
      '  Produto.SUBGICOD ,'
      '  Produto.VARIICOD'
      '%Ordem')
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
        Name = 'Grupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'SubGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Variacao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MProduto'
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
        Name = 'Tipo'
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
        Name = 'Ordem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 419
    Top = 5
    object SQLPedidoVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
    end
    object SQLPedidoVendaItemPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoVendaItemGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLPedidoVendaItemGrupoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'GrupoLookup'
      LookupDataSet = SQLGrupoLookup
      LookupKeyFields = 'GRUPICOD'
      LookupResultField = 'GRUPA60DESCR'
      KeyFields = 'GRUPICOD'
      Size = 60
      Lookup = True
    end
    object SQLPedidoVendaItemSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.PRODUTO.SUBGICOD'
    end
    object SQLPedidoVendaItemSubGrupoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'SubGrupoLookup'
      LookupDataSet = SQLSubGrupoLookup
      LookupKeyFields = 'GRUPICOD;SUBGICOD'
      LookupResultField = 'SUBGA60DESCR'
      KeyFields = 'GRUPICOD;SUBGICOD'
      Size = 60
      Lookup = True
    end
    object SQLPedidoVendaItemVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.PRODUTO.VARIICOD'
    end
    object SQLPedidoVendaItemVariacaoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VariacaoLookup'
      LookupDataSet = SQLVariacaoLookup
      LookupKeyFields = 'GRUPICOD;SUBGICOD;VARIICOD'
      LookupResultField = 'VARIA60DESCR'
      KeyFields = 'GRUPICOD;SUBGICOD;VARIICOD'
      Size = 60
      Lookup = True
    end
    object SQLPedidoVendaItemQtde: TFloatField
      FieldName = 'Qtde'
    end
    object SQLPedidoVendaItemVlrTotalitem: TFloatField
      FieldName = 'VlrTotalitem'
    end
  end
  object SQLVariacao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubGrupo
    SQL.Strings = (
      'Select GRUPICOD, SUBGICOD, VARIICOD, VARIA60DESCR '
      'from VARIACAO'
      'Where'
      'GRUPICOD = :GRUPICOD'
      'and'
      'SUBGICOD = :SUBGICOD')
    Macros = <>
    Left = 589
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SUBGICOD'
        ParamType = ptUnknown
      end>
    object SQLVariacaoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.VARIACAO.GRUPICOD'
    end
    object SQLVariacaoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.VARIACAO.SUBGICOD'
    end
    object SQLVariacaoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.VARIACAO.VARIICOD'
    end
    object SQLVariacaoVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      Origin = 'DB.VARIACAO.VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select GRUPICOD, GRUPA60DESCR from GRUPO'
      'Order By'
      'GRUPA60DESCR')
    Macros = <>
    Left = 477
    Top = 5
    object SQLGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.GRUPO.GRUPICOD'
    end
    object SQLGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'DB.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLSubGrupo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'Select GRUPICOD, SUBGICOD, SUBGA60DESCR from SUBGRUPO'
      'Where GRUPICOD = :GRUPICOD')
    Macros = <>
    Left = 533
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLSubGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.SUBGRUPO.GRUPICOD'
    end
    object SQLSubGrupoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.SUBGRUPO.SUBGICOD'
    end
    object SQLSubGrupoSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Origin = 'DB.SUBGRUPO.SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 449
    Top = 5
  end
  object DSSQLSubGrupo: TDataSource
    DataSet = SQLSubGrupo
    Left = 505
    Top = 5
  end
  object DSSQLVariacao: TDataSource
    DataSet = SQLVariacao
    Left = 561
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
  object SQLSubGrupoLookup: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from SubGrupo')
    Macros = <>
    Left = 647
    Top = 5
    object SQLSubGrupoLookupGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.SUBGRUPO.GRUPICOD'
    end
    object SQLSubGrupoLookupSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.SUBGRUPO.SUBGICOD'
    end
    object SQLSubGrupoLookupSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Origin = 'DB.SUBGRUPO.SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLSubGrupoLookupPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SUBGRUPO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSubGrupoLookupREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SUBGRUPO.REGISTRO'
    end
  end
  object SQLGrupoLookup: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Grupo')
    Macros = <>
    Left = 619
    Top = 5
    object SQLGrupoLookupGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.GRUPO.GRUPICOD'
    end
    object SQLGrupoLookupGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'DB.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLGrupoLookupPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.GRUPO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLGrupoLookupREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.GRUPO.REGISTRO'
    end
  end
  object SQLVariacaoLookup: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Variacao')
    Macros = <>
    Left = 675
    Top = 5
    object SQLVariacaoLookupGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.VARIACAO.GRUPICOD'
    end
    object SQLVariacaoLookupSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.VARIACAO.SUBGICOD'
    end
    object SQLVariacaoLookupVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.VARIACAO.VARIICOD'
    end
    object SQLVariacaoLookupVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      Origin = 'DB.VARIACAO.VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVariacaoLookupPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VARIACAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVariacaoLookupREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VARIACAO.REGISTRO'
    end
  end
  object TblProduto: TTable
    DatabaseName = 'DB'
    IndexFieldNames = 'PRODICOD'
    MasterFields = 'PRODICOD'
    MasterSource = DSTblTemporaria
    TableName = 'PRODUTO'
    Left = 711
    Top = 5
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 561
    Top = 37
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubGrupo
    SQL.Strings = (
      'Select PRODICOD,  PRODA60DESCR'
      'from PRODUTO')
    Macros = <>
    Left = 589
    Top = 37
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 499
    Top = 38
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubGrupo
    SQL.Strings = (
      'Select CLIEA13ID,  CLIEA60RAZAOSOC'
      'from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 527
    Top = 37
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
end
