inherited FormRelatorioResumoOperacaoDiaria: TFormRelatorioResumoOperacaoDiaria
  Left = 115
  Top = 155
  Caption = 'Resumo de Opera'#231#245'es Di'#225'rias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      inherited BtnVisualizar: TSpeedButton
        Top = 208
        Height = 23
      end
      inherited GroupBox1: TGroupBox
        Top = 118
        Visible = False
      end
      object Dia: TDateTimePicker
        Left = 13
        Top = 163
        Width = 406
        Height = 21
        Date = 37865.544603923600000000
        Time = 37865.544603923600000000
        DateFormat = dfLong
        TabOrder = 2
      end
    end
  end
  inherited TblTemporaria: TTable
    DatabaseName = 'DBTemp'
    TableName = 'ResumoOperacao.db'
    object TblTemporariaTipoOperacao: TStringField
      FieldName = 'TipoOperacao'
      Size = 5
    end
    object TblTemporariaStatusOperacao: TStringField
      FieldName = 'StatusOperacao'
      Size = 1
    end
    object TblTemporariaOperacao: TStringField
      FieldName = 'Operacao'
      Size = 60
    end
    object TblTemporariaQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object TblTemporariaValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object SQLResumo: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 418
    Top = 5
  end
  object SQLNotaFiscal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'NF'#39'                           as TipoOperacao,'
      'NOTAFISCAL.NOFICSTATUS         as StatusOperacao,'
      'NOTAFISCAL.NOFIA13ID           as ID,'
      'NOTAFISCAL.NOFIINUMERO         as Numero,'
      'NOTAFISCAL.NOFIN2VLRICMS       as VlrIcms,'
      'NOTAFISCAL.NOFIN2VLRIPI        as VlrIPI,'
      'NOTAFISCAL.NOFIN2VLRDESC       as VlrDesc,'
      'NOTAFISCAL.NOFIN2VLRFRETE      as VlrFrete,'
      'NOTAFISCAL.NOFIN2VLRSERVICO    as VlrServico,'
      'NOTAFISCAL.NOFIN2VLRISSQN      as VlrISSQN,'
      'NOTAFISCAL.NOFIN2VLRPRODUTO    as VlrProduto,'
      'NOTAFISCAL.NOFIN2VLRNOTA       as VlrNota,'
      'CLIENTE.CLIEA60RAZAOSOC        as Cliente,'
      'FORNECEDOR.FORNA60RAZAOSOC     as Fornecedor,'
      'EMPRESA.EMPRA60NOMEFANT        as EmpresaDestino,'
      'NOTAFISCAL.USUAA60LOGIN        as Usuario,'
      'OPERACAOESTOQUE.OPESA60DESCR   as OperacaoEstoque,'
      'PLANORECEBIMENTO.PLRCA60DESCR  as Plano'
      'FROM'
      'NOTAFISCAL'
      
        'LEFT OUTER JOIN CLIENTE          ON (NOTAFISCAL.CLIEA13ID    = C' +
        'LIENTE.CLIEA13ID)'
      
        'LEFT OUTER JOIN FORNECEDOR       ON (NOTAFISCAL.FORNICOD     = F' +
        'ORNECEDOR.FORNICOD)'
      
        'LEFT OUTER JOIN EMPRESA          ON (NOTAFISCAL.EMPRICODDEST = E' +
        'MPRESA.EMPRICOD)'
      
        'LEFT OUTER JOIN OPERACAOESTOQUE  ON NOTAFISCAL.OPESICOD     = OP' +
        'ERACAOESTOQUE.OPESICOD'
      
        'LEFT OUTER JOIN PLANORECEBIMENTO ON NOTAFISCAL.PLRCICOD     = PL' +
        'ANORECEBIMENTO.PLRCICOD'
      'WHERE'
      '%DataEmissao')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 446
    Top = 5
    object SQLNotaFiscalTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLNotaFiscalSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SQLNotaFiscalVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalVLRISSQN: TBCDField
      FieldName = 'VLRISSQN'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalVLRNOTA: TBCDField
      FieldName = 'VLRNOTA'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalEMPRESADESTINO: TStringField
      FieldName = 'EMPRESADESTINO'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalOPERACAOESTOQUE: TStringField
      FieldName = 'OPERACAOESTOQUE'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalPLANO: TStringField
      FieldName = 'PLANO'
      FixedChar = True
      Size = 60
    end
  end
  object SQLPedidoVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'PV'#39'                            as TipoOperacao,'
      'PEDIDOVENDA.PDVDCSTATUS         as StatusOperacao,'
      'PEDIDOVENDA.PDVDA13ID           as ID,'
      'PEDIDOVENDA.PDVDA13ID           as Numero,'
      '0.00                            as VlrIcms,'
      '0.00                            as VlrIPI,'
      'PEDIDOVENDA.PDVDN2VLRDESC       as VlrDesc,'
      'PEDIDOVENDA.PDVDN2VLRFRETE      as VlrFrete,'
      '0.00                            as VlrServico,'
      '0.00                            as VlrISSQN,'
      'PEDIDOVENDA.PDVDN2TOTPROD       as VlrProduto,'
      'PEDIDOVENDA.PDVDN2TOTPED        as VlrNota,'
      'CLIENTE.CLIEA60RAZAOSOC         as Cliente,'
      #39' '#39'                             as Fornecedor,'
      #39' '#39'                             as EmpresaDestino,'
      'VENDEDOR.VENDA60NOME            as Usuario,'
      #39'Pedido/Or'#231'amento'#39'              as OperacaoEstoque,'
      'PLANORECEBIMENTO.PLRCA60DESCR   as Plano'
      'FROM'
      'PEDIDOVENDA'
      
        'LEFT OUTER JOIN CLIENTE          ON PEDIDOVENDA.CLIEA13ID    = C' +
        'LIENTE.CLIEA13ID'
      
        'LEFT OUTER JOIN PLANORECEBIMENTO ON PEDIDOVENDA.PLRCICOD     = P' +
        'LANORECEBIMENTO.PLRCICOD'
      
        'LEFT OUTER JOIN VENDEDOR         ON PEDIDOVENDA.VENDICOD     = V' +
        'ENDEDOR.VENDICOD'
      'WHERE'
      '%DataEmissao')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 502
    Top = 5
    object SQLPedidoVendaTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLPedidoVendaSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object SQLPedidoVendaVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object SQLPedidoVendaVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaVLRSERVICO: TFloatField
      FieldName = 'VLRSERVICO'
    end
    object SQLPedidoVendaVLRISSQN: TFloatField
      FieldName = 'VLRISSQN'
    end
    object SQLPedidoVendaVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaVLRNOTA: TBCDField
      FieldName = 'VLRNOTA'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoVendaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaEMPRESADESTINO: TStringField
      FieldName = 'EMPRESADESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoVendaOPERACAOESTOQUE: TStringField
      FieldName = 'OPERACAOESTOQUE'
      FixedChar = True
      Size = 16
    end
    object SQLPedidoVendaPLANO: TStringField
      FieldName = 'PLANO'
      FixedChar = True
      Size = 60
    end
  end
  object TblPedidosNotas: TTable
    Tag = 1
    DatabaseName = 'DBTemp'
    TableName = 'ResumoPedidoNota.db'
    Left = 474
    Top = 5
    object TblPedidosNotasTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object TblPedidosNotasSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object TblPedidosNotasID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object TblPedidosNotasNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 13
    end
    object TblPedidosNotasVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object TblPedidosNotasVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object TblPedidosNotasVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object TblPedidosNotasVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 15
      Size = 3
    end
    object TblPedidosNotasVLRSERVICO: TFloatField
      FieldName = 'VLRSERVICO'
    end
    object TblPedidosNotasVLRISSQN: TFloatField
      FieldName = 'VLRISSQN'
    end
    object TblPedidosNotasVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Precision = 15
      Size = 3
    end
    object TblPedidosNotasVLRNOTA: TBCDField
      FieldName = 'VLRNOTA'
      Precision = 15
      Size = 3
    end
    object TblPedidosNotasCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 60
    end
    object TblPedidosNotasFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object TblPedidosNotasEMPRESADESTINO: TStringField
      FieldName = 'EMPRESADESTINO'
      FixedChar = True
      Size = 1
    end
    object TblPedidosNotasUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 60
    end
    object TblPedidosNotasOPERACAOESTOQUE: TStringField
      FieldName = 'OPERACAOESTOQUE'
      FixedChar = True
      Size = 16
    end
    object TblPedidosNotasPLANO: TStringField
      FieldName = 'PLANO'
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
    WindowButtonBar.AllowDrillDown = True
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.GroupTree = True
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
    ReportOptions.SaveDataWithReport = cFalse
    ReportOptions.SaveSummariesWithReport = cFalse
    ReportOptions.UseIndexForSpeed = cTrue
    ReportOptions.TranslateDOSStrings = cTrue
    ReportOptions.TranslateDOSMemos = cTrue
    ReportOptions.ConvertNullFieldToDefault = cFalse
    ReportOptions.PrintEngineErrorMessages = cTrue
    ReportOptions.CaseInsensitiveSQLData = cTrue
    ReportOptions.VerifyOnEveryPrint = cFalse
    ReportOptions.CreateGroupTree = cTrue
    ReportOptions.NoDataForHiddenObjects = cFalse
    ReportOptions.PerformGroupingOnServer = cFalse
    ReportOptions.ConvertDateTimeType = dtKeepAsDateTime
    ReportOptions.ZoomMode = pwNormal
    ReportOptions.AsyncQuery = cFalse
    Left = 250
    Top = 5
  end
  object SQLNotaFiscalitens: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'NF'#39' as TipoOperacao,'
      'NOTAFISCAL.NOFICSTATUS       as StatusOperacao,'
      'NOTAFISCALITEM.NOFIA13ID     as ID,'
      'NOTAFISCAL.EMPRICOD          as Empresa,'
      'NOTAFISCALITEM.PRODICOD      as CodProduto,'
      'NOTAFISCALITEM.NFITN3QUANT   as Qtde,'
      'NOTAFISCALITEM.NFITN2VLRUNIT as VlrUnitario,'
      'NOTAFISCALITEM.NFITN2VLRDESC as VlrDesc,'
      'NOTAFISCALITEM.NFITN2VLRICMS as VlrICMS,'
      'NOTAFISCALITEM.NFITN2VLRIPI  as VlrIPI,'
      'NOTAFISCALITEM.LOTEA30NRO    as Lote,'
      'PRODUTO.PRODA60DESCR         as DescrProduto,'
      'PRODUTO.PRODN3VLRCOMPRA      as VlrCompra,'
      'PRODUTO.PRODN3VLRCOMPRAMED   as VlrCompraMedio,'
      'PRODUTO.PRODN3VLRCUSTO       as VlrCusto,'
      'PRODUTO.PRODN3VLRCUSTOMED    as VlrCustoMedio,'
      'PRODUTO.PRODA60REFER         as RefProduto,'
      'GRADETAMANHO.GRTMA5DESCR     as TamProduto,'
      'COR.CORA30DESCR              as CorProduto,'
      'MVE.MVESICOD                 as CodMov,'
      'MVE.MVESDMOV                 as DataMov,'
      '(SELECT PRODUTOSALDO.PSLDN3QTDE FROM PRODUTOSALDO WHERE'
      'PRODUTOSALDO.EMPRICOD = NOTAFISCAL.EMPRICOD AND'
      'PRODUTOSALDO.PRODICOD = NOTAFISCALITEM.PRODICOD) as SALDOATUAL,'
      
        '(SELECT SUM(MV.MVESN3QTDENTRADA - MV.MVESN3QTDSAIDA) FROM MOVIME' +
        'NTOESTOQUE MV WHERE'
      ' MV.PRODICOD  = NOTAFISCALITEM.PRODICOD AND'
      ' MV.EMPRICOD  = NOTAFISCAL.EMPRICOD AND'
      ' MV.MVESDMOV <= NOTAFISCAL.NOFIDEMIS AND'
      ' MV.MVESICOD <> MVE.MVESICOD ) AS SALDOANTERIOR'
      'FROM'
      'NOTAFISCALITEM'
      
        'LEFT OUTER JOIN PRODUTO          ON NOTAFISCALITEM.PRODICOD  = P' +
        'RODUTO.PRODICOD'
      
        'LEFT OUTER JOIN NOTAFISCAL       ON NOTAFISCALITEM.NOFIA13ID = N' +
        'OTAFISCAL.NOFIA13ID'
      
        'LEFT OUTER JOIN GRADETAMANHO     ON PRODUTO.GRTMICOD         = G' +
        'RADETAMANHO.GRTMICOD'
      
        'LEFT OUTER JOIN COR              ON PRODUTO.CORICOD          = C' +
        'OR.CORICOD'
      
        'LEFT OUTER JOIN MOVIMENTOESTOQUE MVE ON (NOTAFISCALITEM.PRODICOD' +
        ' = MVE.PRODICOD AND'
      
        '                                     NOTAFISCAL.NOFIDEMIS       ' +
        ' = MVE.MVESDMOV AND'
      
        '                                     NOTAFISCAL.EMPRICOD        ' +
        ' = MVE.EMPRICOD AND'
      
        '                                     NOTAFISCAL.NOFIA13ID       ' +
        ' = MVE.NOFIA13ID)'
      'WHERE'
      '(%DataEmissao)')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 530
    Top = 5
    object SQLNotaFiscalitensTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLNotaFiscalitensSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalitensID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalitensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object SQLNotaFiscalitensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object SQLNotaFiscalitensQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalitensVLRUNITARIO: TBCDField
      FieldName = 'VLRUNITARIO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalitensVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalitensVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalitensVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalitensLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalitensDESCRPRODUTO: TStringField
      FieldName = 'DESCRPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalitensVLRCOMPRA: TBCDField
      FieldName = 'VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalitensVLRCOMPRAMEDIO: TBCDField
      FieldName = 'VLRCOMPRAMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalitensVLRCUSTO: TBCDField
      FieldName = 'VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalitensVLRCUSTOMEDIO: TBCDField
      FieldName = 'VLRCUSTOMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalitensREFPRODUTO: TStringField
      FieldName = 'REFPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalitensTAMPRODUTO: TStringField
      FieldName = 'TAMPRODUTO'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalitensCORPRODUTO: TStringField
      FieldName = 'CORPRODUTO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalitensCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object SQLNotaFiscalitensDATAMOV: TDateTimeField
      FieldName = 'DATAMOV'
    end
    object SQLNotaFiscalitensSALDOATUAL: TBCDField
      FieldName = 'SALDOATUAL'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalitensSALDOANTERIOR: TFloatField
      FieldName = 'SALDOANTERIOR'
    end
  end
  object TblResumoItens: TTable
    Tag = 1
    DatabaseName = 'DBTemp'
    TableName = 'ResumoItens.db'
    Left = 558
    Top = 5
    object TblResumoItensTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object TblResumoItensSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object TblResumoItensID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object TblResumoItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object TblResumoItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object TblResumoItensQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object TblResumoItensVLRUNITARIO: TBCDField
      FieldName = 'VLRUNITARIO'
      Precision = 15
      Size = 3
    end
    object TblResumoItensVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object TblResumoItensVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 15
      Size = 3
    end
    object TblResumoItensVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 3
    end
    object TblResumoItensLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 30
    end
    object TblResumoItensDESCRPRODUTO: TStringField
      FieldName = 'DESCRPRODUTO'
      FixedChar = True
      Size = 60
    end
    object TblResumoItensVLRCOMPRA: TBCDField
      FieldName = 'VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object TblResumoItensVLRCOMPRAMEDIO: TBCDField
      FieldName = 'VLRCOMPRAMEDIO'
      Precision = 15
      Size = 3
    end
    object TblResumoItensVLRCUSTO: TBCDField
      FieldName = 'VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object TblResumoItensVLRCUSTOMEDIO: TBCDField
      FieldName = 'VLRCUSTOMEDIO'
      Precision = 15
      Size = 3
    end
    object TblResumoItensREFPRODUTO: TStringField
      FieldName = 'REFPRODUTO'
      FixedChar = True
      Size = 60
    end
    object TblResumoItensTAMPRODUTO: TStringField
      FieldName = 'TAMPRODUTO'
      FixedChar = True
      Size = 5
    end
    object TblResumoItensCORPRODUTO: TStringField
      FieldName = 'CORPRODUTO'
      FixedChar = True
      Size = 30
    end
    object TblResumoItensCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object TblResumoItensDATAMOV: TDateTimeField
      FieldName = 'DATAMOV'
    end
    object TblResumoItensSALDOATUAL: TBCDField
      FieldName = 'SALDOATUAL'
      Precision = 15
      Size = 3
    end
    object TblResumoItensSALDOANTERIOR: TFloatField
      FieldName = 'SALDOANTERIOR'
    end
    object TblResumoItensULTVLRVENDA: TFloatField
      FieldName = 'ULTVLRVENDA'
    end
    object TblResumoItensULTVLRCOMPRA: TFloatField
      FieldName = 'ULTVLRCOMPRA'
    end
    object TblResumoItensULTVLRCOMPRAMED: TFloatField
      FieldName = 'ULTVLRCOMPRAMED'
    end
    object TblResumoItensULTVLRCUSTO: TFloatField
      FieldName = 'ULTVLRCUSTO'
    end
    object TblResumoItensULTVLRCUSTOMED: TFloatField
      FieldName = 'ULTVLRCUSTOMED'
    end
    object TblResumoItensULTMARGEM: TFloatField
      FieldName = 'ULTMARGEM'
    end
  end
  object SQLPedidoVendaItens: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'PV'#39' as TipoOperacao,'
      'PEDIDOVENDA.PDVDCSTATUS        as StatusOperacao,'
      'PEDIDOVENDAITEM.PDVDA13ID      as ID,'
      'PEDIDOVENDA.EMPRICOD            as Empresa,'
      'PEDIDOVENDAITEM.PRODICOD       as CodProduto,'
      'PEDIDOVENDAITEM.PVITN3QUANT    as Qtde,'
      'PEDIDOVENDAITEM.PVITN2VLRUNIT  as VlrUnitario,'
      'PEDIDOVENDAITEM.PVITN2VLRDESC  as VlrDesc,'
      '0.00                           as VlrICMS,'
      '0.00                           as VlrIPI,'
      'PEDIDOVENDAITEM.LOTEA30NRO     as Lote,'
      'PRODUTO.PRODA60DESCR         as DescrProduto,'
      'PRODUTO.PRODN3VLRCOMPRA      as VlrCompra,'
      'PRODUTO.PRODN3VLRCOMPRAMED   as VlrCompraMedio,'
      'PRODUTO.PRODN3VLRCUSTO       as VlrCusto,'
      'PRODUTO.PRODN3VLRCUSTOMED    as VlrCustoMedio,'
      'PRODUTO.PRODA60REFER         as RefProduto,'
      'GRADETAMANHO.GRTMA5DESCR     as TamProduto,'
      'COR.CORA30DESCR              as CorProduto,'
      'MVE.MVESICOD    as CodMov,'
      'MVE.MVESDMOV                 as DataMov,'
      '(SELECT PRODUTOSALDO.PSLDN3QTDE FROM PRODUTOSALDO WHERE'
      'PRODUTOSALDO.EMPRICOD = PEDIDOVENDA.EMPRICOD AND'
      'PRODUTOSALDO.PRODICOD = PEDIDOVENDAITEM.PRODICOD) as SALDOATUAL,'
      
        '(SELECT SUM(MV.MVESN3QTDENTRADA - MV.MVESN3QTDSAIDA) FROM MOVIME' +
        'NTOESTOQUE MV WHERE'
      ' MV.PRODICOD  =  PEDIDOVENDAITEM.PRODICOD AND'
      ' MV.EMPRICOD  =  PEDIDOVENDA.EMPRICOD AND'
      ' MV.MVESDMOV <=  PEDIDOVENDA.PDVDDEMISSAO AND'
      ' MV.MVESICOD <>  MVE.MVESICOD ) AS SALDOANTERIOR'
      'FROM'
      'PEDIDOVENDAITEM'
      
        'LEFT OUTER JOIN PRODUTO      ON PEDIDOVENDAITEM.PRODICOD  = PROD' +
        'UTO.PRODICOD'
      
        'LEFT OUTER JOIN PEDIDOVENDA  ON PEDIDOVENDAITEM.PDVDA13ID = PEDI' +
        'DOVENDA.PDVDA13ID'
      
        'LEFT OUTER JOIN GRADETAMANHO ON PRODUTO.GRTMICOD         = GRADE' +
        'TAMANHO.GRTMICOD'
      
        'LEFT OUTER JOIN COR          ON PRODUTO.CORICOD          = COR.C' +
        'ORICOD'
      
        'LEFT OUTER JOIN MOVIMENTOESTOQUE MVE ON (PEDIDOVENDAITEM.PRODICO' +
        'D = MVE.PRODICOD AND'
      
        '                                     PEDIDOVENDA.PDVDDEMISSAO   ' +
        '  = MVE.MVESDMOV AND'
      
        '                                     PEDIDOVENDA.EMPRICOD       ' +
        '  = MVE.EMPRICOD AND'
      
        '                                     PEDIDOVENDA.PDVDA13ID      ' +
        '  = MVE.PDVDA13ID)'
      'WHERE'
      '(%DataEmissao)')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 586
    Top = 5
    object SQLPedidoVendaItensTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLPedidoVendaItensSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaItensID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object SQLPedidoVendaItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object SQLPedidoVendaItensQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItensVLRUNITARIO: TBCDField
      FieldName = 'VLRUNITARIO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItensVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItensVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object SQLPedidoVendaItensVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object SQLPedidoVendaItensLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoVendaItensDESCRPRODUTO: TStringField
      FieldName = 'DESCRPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoVendaItensVLRCOMPRA: TBCDField
      FieldName = 'VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItensVLRCOMPRAMEDIO: TBCDField
      FieldName = 'VLRCOMPRAMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItensVLRCUSTO: TBCDField
      FieldName = 'VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItensVLRCUSTOMEDIO: TBCDField
      FieldName = 'VLRCUSTOMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItensREFPRODUTO: TStringField
      FieldName = 'REFPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoVendaItensTAMPRODUTO: TStringField
      FieldName = 'TAMPRODUTO'
      FixedChar = True
      Size = 5
    end
    object SQLPedidoVendaItensCORPRODUTO: TStringField
      FieldName = 'CORPRODUTO'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoVendaItensCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object SQLPedidoVendaItensDATAMOV: TDateTimeField
      FieldName = 'DATAMOV'
    end
    object SQLPedidoVendaItensSALDOATUAL: TBCDField
      FieldName = 'SALDOATUAL'
      Precision = 15
      Size = 3
    end
    object SQLPedidoVendaItensSALDOANTERIOR: TFloatField
      FieldName = 'SALDOANTERIOR'
    end
  end
  object SQLProdutoReajuste: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM PRODUTOREAJUSTE WHERE PRODICOD = :PRODUTO'
      'ORDER BY PRRJDREAJUSTE DESC')
    Macros = <>
    Left = 614
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
  end
  object SQLNotaCompra: TRxQuery
    ObjectView = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'NC'#39'                           as TipoOperacao,'
      'NOTACOMPRA.NOCPCSTATUS         as StatusOperacao,'
      'NOTACOMPRA.NOCPA13ID           as ID,'
      'NOTACOMPRA.NOCPA30NRO          as Numero,'
      'NOTACOMPRA.NOCPN3VLRICMS       as VlrIcms,'
      'NOTACOMPRA.NOCPN3VLRIPI        as VlrIPI,'
      'NOTACOMPRA.NOCPN3VLRDESC       as VlrDesc,'
      'NOTACOMPRA.NOCPN3VLRFRETE      as VlrFrete,'
      '0.00                           as VlrServico,'
      '0.00                           as VlrISSQN,'
      'NOTACOMPRA.NOCPN3TOTITENS      as VlrProduto,'
      'NOTACOMPRA.NOCPN3VLRTOTNOTA    as VlrNota,'
      'CLIENTE.CLIEA60RAZAOSOC        as Cliente,'
      'FORNECEDOR.FORNA60RAZAOSOC     as Fornecedor,'
      'EMPRESA.EMPRA60NOMEFANT        as EmpresaDestino,'
      'NOTACOMPRA.USUAA60LOGIN        as Usuario,'
      'OPERACAOESTOQUE.OPESA60DESCR   as OperacaoEstoque,'
      'PLANOPAGAMENTO.PLPGA60DESCR    as Plano'
      'FROM'
      'NOTACOMPRA'
      
        'LEFT OUTER JOIN CLIENTE          ON (NOTACOMPRA.CLIEA13ID    = C' +
        'LIENTE.CLIEA13ID)'
      
        'LEFT OUTER JOIN FORNECEDOR       ON (NOTACOMPRA.FORNICOD     = F' +
        'ORNECEDOR.FORNICOD)'
      
        'LEFT OUTER JOIN EMPRESA          ON (NOTACOMPRA.EMPRICODDEST = E' +
        'MPRESA.EMPRICOD)'
      
        'LEFT OUTER JOIN OPERACAOESTOQUE  ON NOTACOMPRA.OPESICOD      = O' +
        'PERACAOESTOQUE.OPESICOD'
      
        'LEFT OUTER JOIN PLANOPAGAMENTO   ON NOTACOMPRA.PLPGICOD      = P' +
        'LANOPAGAMENTO.PLPGICOD'
      'WHERE'
      '%DataEmissao')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 446
    Top = 33
    object SQLNotaCompraTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLNotaCompraSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLNotaCompraID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaCompraVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraVLRSERVICO: TFloatField
      FieldName = 'VLRSERVICO'
    end
    object SQLNotaCompraVLRISSQN: TFloatField
      FieldName = 'VLRISSQN'
    end
    object SQLNotaCompraVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraVLRNOTA: TBCDField
      FieldName = 'VLRNOTA'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraEMPRESADESTINO: TStringField
      FieldName = 'EMPRESADESTINO'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraOPERACAOESTOQUE: TStringField
      FieldName = 'OPERACAOESTOQUE'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraPLANO: TStringField
      FieldName = 'PLANO'
      FixedChar = True
      Size = 60
    end
  end
  object SQLResumoItens: TRxQuery
    DatabaseName = 'UnitGestao_Temp'
    SQL.Strings = (
      'SELECT CODPRODUTO'
      'FROM RESUMOITENS.DB'
      'GROUP BY'
      'CODPRODUTO')
    Macros = <>
    Left = 642
    Top = 5
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DBTemp'
    SQL.Strings = (
      'UPDATE RESUMOITENS SET'
      'ULTVLRVENDA  = %VLRVENDA,'
      'ULTVLRCOMPRA = %VLRCOMPRA,'
      'ULTVLRCOMPRAMED = %VLRCOMPRAMED,'
      'ULTVLRCUSTO     = %VLRCUSTO,'
      'ULTVLRCUSTOMED  = %VLRCUSTOMED,'
      'ULTMARGEM       = %MARGEM'
      'WHERE'
      'CODPRODUTO = %PRODUTO')
    Macros = <
      item
        DataType = ftString
        Name = 'VLRVENDA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'VLRCOMPRA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'VLRCOMPRAMED'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'VLRCUSTO'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'VLRCUSTOMED'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MARGEM'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 670
    Top = 5
  end
  object SQLPedidoCompra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'PC'#39'                            as TipoOperacao,'
      'PEDIDOCOMPRA.PDCPCSTATUS         as StatusOperacao,'
      'PEDIDOCOMPRA.PDCPA13ID          as ID,'
      'PEDIDOCOMPRA.PDCPA10NROFORN     as Numero,'
      '0.00                            as VlrIcms,'
      'PEDIDOCOMPRA.PDCPN2VLRIPI       as VlrIPI,'
      'PEDIDOCOMPRA.PDCPN3TOTDESC      as VlrDesc,'
      'PEDIDOCOMPRA.PDCPN2VLRFRETE     as VlrFrete,'
      '0.00                            as VlrServico,'
      '0.00                            as VlrISSQN,'
      'PEDIDOCOMPRA.PDCPN2TOTITENS     as VlrProduto,'
      '(PEDIDOCOMPRA.PDCPN2TOTITENS -'
      'PEDIDOCOMPRA.PDCPN3TOTDESC +'
      'PEDIDOCOMPRA.PDCPN2VLRFRETE +'
      'PEDIDOCOMPRA.PDCPN2VLRENCARGO)  as VlrNota,'
      #39' '#39'                             as Cliente,'
      'FORNECEDOR.FORNA60RAZAOSOC      as Fornecedor,'
      #39' '#39'                             as EmpresaDestino,'
      'PEDIDOCOMPRA.PDCPNOMEVENDEDOR   as Usuario,'
      #39'Pedido De Compra'#39'              as OperacaoEstoque,'
      'PLANOPAGAMENTO.PLPGA60DESCR     as Plano'
      'FROM'
      'PEDIDOCOMPRA'
      
        'LEFT OUTER JOIN PLANOPAGAMENTO   ON PEDIDOCOMPRA.PLPGICOD     = ' +
        'PLANOPAGAMENTO.PLPGICOD'
      
        'LEFT OUTER JOIN FORNECEDOR       ON PEDIDOCOMPRA.FORNICOD     = ' +
        'FORNECEDOR.FORNICOD'
      'WHERE'
      '%DataEmissao')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 474
    Top = 33
    object SQLPedidoCompraTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLPedidoCompraSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoCompraID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoCompraNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 10
    end
    object SQLPedidoCompraVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object SQLPedidoCompraVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraVLRSERVICO: TFloatField
      FieldName = 'VLRSERVICO'
    end
    object SQLPedidoCompraVLRISSQN: TFloatField
      FieldName = 'VLRISSQN'
    end
    object SQLPedidoCompraVLRPRODUTO: TBCDField
      FieldName = 'VLRPRODUTO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraVLRNOTA: TFloatField
      FieldName = 'VLRNOTA'
    end
    object SQLPedidoCompraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoCompraFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraEMPRESADESTINO: TStringField
      FieldName = 'EMPRESADESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoCompraUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraOPERACAOESTOQUE: TStringField
      FieldName = 'OPERACAOESTOQUE'
      FixedChar = True
      Size = 16
    end
    object SQLPedidoCompraPLANO: TStringField
      FieldName = 'PLANO'
      FixedChar = True
      Size = 60
    end
  end
  object SQLNotaCompraItens: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'NC'#39' as TipoOperacao,'
      'NOTACOMPRA.NOCPCSTATUS       as StatusOperacao,'
      'NOTACOMPRAITEM.NOCPA13ID     as ID,'
      'NOTACOMPRA.EMPRICOD          as Empresa,'
      'NOTACOMPRAITEM.PRODICOD      as CodProduto,'
      'NOTACOMPRAITEM.NOCIN3QTDEMBAL as Qtde,'
      'NOTACOMPRAITEM.NOCIN3VLRUNIT as VlrUnitario,'
      'NOTACOMPRAITEM.NOCIN3VLRDESC as VlrDesc,'
      'NOTACOMPRAITEM.NOCIN3VLRICMS as VlrICMS,'
      'NOTACOMPRAITEM.NOCIN3VLRIPI  as VlrIPI,'
      'NOTACOMPRAITEM.LOTEA30NRO    as Lote,'
      'PRODUTO.PRODA60DESCR         as DescrProduto,'
      'PRODUTO.PRODN3VLRCOMPRA      as VlrCompra,'
      'PRODUTO.PRODN3VLRCOMPRAMED   as VlrCompraMedio,'
      'PRODUTO.PRODN3VLRCUSTO       as VlrCusto,'
      'PRODUTO.PRODN3VLRCUSTOMED    as VlrCustoMedio,'
      'PRODUTO.PRODA60REFER         as RefProduto,'
      'GRADETAMANHO.GRTMA5DESCR     as TamProduto,'
      'COR.CORA30DESCR              as CorProduto,'
      'MVE.MVESICOD                 as CodMov,'
      'MVE.MVESDMOV                 as DataMov,'
      '(SELECT PRODUTOSALDO.PSLDN3QTDE FROM PRODUTOSALDO WHERE'
      'PRODUTOSALDO.EMPRICOD = NOTACOMPRA.EMPRICOD AND'
      'PRODUTOSALDO.PRODICOD = NOTACOMPRAITEM.PRODICOD) as SALDOATUAL,'
      
        '(SELECT SUM(MV.MVESN3QTDENTRADA - MV.MVESN3QTDSAIDA) FROM MOVIME' +
        'NTOESTOQUE MV WHERE'
      ' MV.PRODICOD  = NOTACOMPRAITEM.PRODICOD AND'
      ' MV.EMPRICOD  = NOTACOMPRA.EMPRICOD AND'
      ' MV.MVESDMOV <= NOTACOMPRA.NOCPDRECEBIMENTO AND'
      ' MV.MVESICOD <> MVE.MVESICOD ) AS SALDOANTERIOR'
      'FROM'
      'NOTACOMPRAITEM'
      
        'LEFT OUTER JOIN PRODUTO          ON NOTACOMPRAITEM.PRODICOD  = P' +
        'RODUTO.PRODICOD'
      
        'LEFT OUTER JOIN NOTACOMPRA       ON NOTACOMPRAITEM.NOCPA13ID = N' +
        'OTACOMPRA.NOCPA13ID'
      
        'LEFT OUTER JOIN GRADETAMANHO     ON PRODUTO.GRTMICOD         = G' +
        'RADETAMANHO.GRTMICOD'
      
        'LEFT OUTER JOIN COR              ON PRODUTO.CORICOD          = C' +
        'OR.CORICOD'
      
        'LEFT OUTER JOIN MOVIMENTOESTOQUE MVE ON (NOTACOMPRAITEM.PRODICOD' +
        ' = MVE.PRODICOD AND'
      
        '                                     NOTACOMPRA.NOCPDRECEBIMENTO' +
        ' = MVE.MVESDMOV AND'
      
        '                                     NOTACOMPRA.EMPRICOD        ' +
        ' = MVE.EMPRICOD AND'
      
        '                                     NOTACOMPRA.NOCPA13ID       ' +
        ' = MVE.NOCPA13ID)'
      'WHERE'
      '(%DataEmissao)')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 502
    Top = 33
    object SQLNotaCompraItensTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLNotaCompraItensSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLNotaCompraItensID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object SQLNotaCompraItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object SQLNotaCompraItensQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensVLRUNITARIO: TBCDField
      FieldName = 'VLRUNITARIO'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 30
    end
    object SQLNotaCompraItensDESCRPRODUTO: TStringField
      FieldName = 'DESCRPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraItensVLRCOMPRA: TBCDField
      FieldName = 'VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensVLRCOMPRAMEDIO: TBCDField
      FieldName = 'VLRCOMPRAMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensVLRCUSTO: TBCDField
      FieldName = 'VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensVLRCUSTOMEDIO: TBCDField
      FieldName = 'VLRCUSTOMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensREFPRODUTO: TStringField
      FieldName = 'REFPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraItensTAMPRODUTO: TStringField
      FieldName = 'TAMPRODUTO'
      FixedChar = True
      Size = 5
    end
    object SQLNotaCompraItensCORPRODUTO: TStringField
      FieldName = 'CORPRODUTO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaCompraItensCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object SQLNotaCompraItensDATAMOV: TDateTimeField
      FieldName = 'DATAMOV'
    end
    object SQLNotaCompraItensSALDOATUAL: TBCDField
      FieldName = 'SALDOATUAL'
      Precision = 15
      Size = 3
    end
    object SQLNotaCompraItensSALDOANTERIOR: TFloatField
      FieldName = 'SALDOANTERIOR'
    end
  end
  object SQLPedidoCompraItens: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'PC'#39' as TipoOperacao,'
      'PEDIDOCOMPRA.PDCPCSTATUS        as StatusOperacao,'
      'PEDIDOCOMPRAITEM.PDCPA13ID      as ID,'
      'PEDIDOCOMPRA.EMPRICOD           as Empresa,'
      'PEDIDOCOMPRAITEM.PRODICOD       as CodProduto,'
      'PEDIDOCOMPRAITEM.PCITN3QTDEMBAL as Qtde,'
      'PEDIDOCOMPRAITEM.PCITN3VLRUNIT  as VlrUnitario,'
      'PEDIDOCOMPRAITEM.PCITN3VLRDESC  as VlrDesc,'
      'PEDIDOCOMPRAITEM.PCITN3VLRICM   as VlrICMS,'
      'PEDIDOCOMPRAITEM.PCITN3VLRIPI   as VlrIPI,'
      #39' '#39'                             as Lote,'
      'PRODUTO.PRODA60DESCR         as DescrProduto,'
      'PRODUTO.PRODN3VLRCOMPRA      as VlrCompra,'
      'PRODUTO.PRODN3VLRCOMPRAMED   as VlrCompraMedio,'
      'PRODUTO.PRODN3VLRCUSTO       as VlrCusto,'
      'PRODUTO.PRODN3VLRCUSTOMED    as VlrCustoMedio,'
      'PRODUTO.PRODA60REFER         as RefProduto,'
      'GRADETAMANHO.GRTMA5DESCR     as TamProduto,'
      'COR.CORA30DESCR              as CorProduto,'
      '0                            as CodMov,'
      '0                            as DataMov,'
      '(SELECT PRODUTOSALDO.PSLDN3QTDE FROM PRODUTOSALDO WHERE'
      'PRODUTOSALDO.EMPRICOD = PEDIDOCOMPRA.EMPRICOD AND'
      
        'PRODUTOSALDO.PRODICOD = PEDIDOCOMPRAITEM.PRODICOD) as SALDOATUAL' +
        ','
      '(SELECT PRODUTOSALDO.PSLDN3QTDE FROM PRODUTOSALDO WHERE'
      'PRODUTOSALDO.EMPRICOD = PEDIDOCOMPRA.EMPRICOD AND'
      
        'PRODUTOSALDO.PRODICOD = PEDIDOCOMPRAITEM.PRODICOD) as SALDOANTER' +
        'IOR'
      'FROM'
      'PEDIDOCOMPRAITEM'
      
        'LEFT OUTER JOIN PRODUTO          ON PEDIDOCOMPRAITEM.PRODICOD  =' +
        ' PRODUTO.PRODICOD'
      
        'LEFT OUTER JOIN PEDIDOCOMPRA     ON PEDIDOCOMPRAITEM.PDCPA13ID =' +
        ' PEDIDOCOMPRA.PDCPA13ID'
      
        'LEFT OUTER JOIN GRADETAMANHO     ON PRODUTO.GRTMICOD         = G' +
        'RADETAMANHO.GRTMICOD'
      
        'LEFT OUTER JOIN COR              ON PRODUTO.CORICOD          = C' +
        'OR.CORICOD'
      'WHERE'
      '(%DataEmissao)')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 530
    Top = 33
    object SQLPedidoCompraItensTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLPedidoCompraItensSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoCompraItensID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoCompraItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object SQLPedidoCompraItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object SQLPedidoCompraItensQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensVLRUNITARIO: TBCDField
      FieldName = 'VLRUNITARIO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensVLRDESC: TBCDField
      FieldName = 'VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoCompraItensDESCRPRODUTO: TStringField
      FieldName = 'DESCRPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItensVLRCOMPRA: TBCDField
      FieldName = 'VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensVLRCOMPRAMEDIO: TBCDField
      FieldName = 'VLRCOMPRAMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensVLRCUSTO: TBCDField
      FieldName = 'VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensVLRCUSTOMEDIO: TBCDField
      FieldName = 'VLRCUSTOMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensREFPRODUTO: TStringField
      FieldName = 'REFPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItensTAMPRODUTO: TStringField
      FieldName = 'TAMPRODUTO'
      FixedChar = True
      Size = 5
    end
    object SQLPedidoCompraItensCORPRODUTO: TStringField
      FieldName = 'CORPRODUTO'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoCompraItensCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object SQLPedidoCompraItensDATAMOV: TIntegerField
      FieldName = 'DATAMOV'
    end
    object SQLPedidoCompraItensSALDOATUAL: TBCDField
      FieldName = 'SALDOATUAL'
      Precision = 15
      Size = 3
    end
    object SQLPedidoCompraItensSALDOANTERIOR: TBCDField
      FieldName = 'SALDOANTERIOR'
      Precision = 15
      Size = 3
    end
  end
  object SQLSaldoDiario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'Cast(SUM(PRODUTOSALDODIA.PSDIN3QTDE) as NUMERIC(15,2)) as QTDE,'
      
        'Cast(SUM(PRODUTOSALDODIA.PSDIN3QTDE * PRODUTO.PRODN3VLRCOMPRA) a' +
        's NUMERIC(15,2)) as Compra,'
      
        'Cast(SUM(PRODUTOSALDODIA.PSDIN3QTDE * PRODUTO.PRODN3VLRCOMPRAMED' +
        ') as NUMERIC(15,2)) as CompraMedio,'
      
        'Cast(SUM(PRODUTOSALDODIA.PSDIN3QTDE * PRODUTO.PRODN3VLRCUSTO) as' +
        ' NUMERIC(15,2)) as Custo,'
      
        'Cast(SUM(PRODUTOSALDODIA.PSDIN3QTDE * PRODUTO.PRODN3VLRCUSTOMED)' +
        ' as NUMERIC(15,2)) as CustoMedio,'
      
        'Cast(SUM(PRODUTOSALDODIA.PSDIN3QTDE * PRODUTO.PRODN3VLRVENDA) as' +
        ' NUMERIC(15,2)) as Venda'
      'FROM'
      'PRODUTOSALDODIA'
      
        'LEFT OUTER JOIN PRODUTO ON PRODUTOSALDODIA.PRODICOD = PRODUTO.PR' +
        'ODICOD'
      'WHERE'
      '(%Data) and'
      '(%Empresa) and'
      'PRODUTOSALDODIA.PSDIN3QTDE > 0'
      'Group By'
      'PRODUTOSALDODIA.EMPRICOD,'
      'PRODUTOSALDODIA.PSDIDDATA')
    Macros = <
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 558
    Top = 33
    object SQLSaldoDiarioQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 2
    end
    object SQLSaldoDiarioCOMPRA: TBCDField
      FieldName = 'COMPRA'
      Precision = 15
      Size = 2
    end
    object SQLSaldoDiarioCOMPRAMEDIO: TBCDField
      FieldName = 'COMPRAMEDIO'
      Precision = 15
      Size = 2
    end
    object SQLSaldoDiarioCUSTO: TBCDField
      FieldName = 'CUSTO'
      Precision = 15
      Size = 2
    end
    object SQLSaldoDiarioCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 15
      Size = 2
    end
    object SQLSaldoDiarioVENDA: TBCDField
      FieldName = 'VENDA'
      Precision = 15
      Size = 2
    end
  end
  object TblResumoInicioDia: TTable
    Tag = 1
    DatabaseName = 'DBTemp'
    TableName = 'ResumoInicioDia.db'
    Left = 586
    Top = 33
    object TblResumoInicioDiaQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 2
    end
    object TblResumoInicioDiaCOMPRA: TBCDField
      FieldName = 'COMPRA'
      Precision = 15
      Size = 2
    end
    object TblResumoInicioDiaCOMPRAMEDIO: TBCDField
      FieldName = 'COMPRAMEDIO'
      Precision = 15
      Size = 2
    end
    object TblResumoInicioDiaCUSTO: TBCDField
      FieldName = 'CUSTO'
      Precision = 15
      Size = 2
    end
    object TblResumoInicioDiaCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 15
      Size = 2
    end
    object TblResumoInicioDiaVENDA: TBCDField
      FieldName = 'VENDA'
      Precision = 15
      Size = 2
    end
  end
  object SQLSaldoAtual: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'SUM(PRODUTOSALDO.PSLDN3QTDE) as QTDEAtual,'
      
        'SUM(PRODUTOSALDO.PSLDN3QTDE * PRODUTO.PRODN3VLRCOMPRA)    as Com' +
        'praAtual,'
      
        'SUM(PRODUTOSALDO.PSLDN3QTDE * PRODUTO.PRODN3VLRCOMPRAMED) as Com' +
        'praMedioAtual,'
      
        'SUM(PRODUTOSALDO.PSLDN3QTDE * PRODUTO.PRODN3VLRCUSTO)     as Cus' +
        'toAtual,'
      
        'SUM(PRODUTOSALDO.PSLDN3QTDE * PRODUTO.PRODN3VLRCUSTOMED)  as Cus' +
        'toMedioAtual,'
      
        'SUM(PRODUTOSALDO.PSLDN3QTDE * PRODUTO.PRODN3VLRVENDA)     as Ven' +
        'daAtual'
      'FROM'
      'PRODUTOSALDO'
      
        'LEFT OUTER JOIN PRODUTO ON PRODUTOSALDO.PRODICOD = PRODUTO.PRODI' +
        'COD'
      'WHERE'
      '(%Empresa) and'
      'PRODUTOSALDO.PSLDN3QTDE > 0'
      'Group By'
      'PRODUTOSALDO.EMPRICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 558
    Top = 61
    object SQLSaldoAtualQTDEATUAL: TBCDField
      FieldName = 'QTDEATUAL'
      Precision = 15
      Size = 3
    end
    object SQLSaldoAtualCOMPRAATUAL: TFloatField
      FieldName = 'COMPRAATUAL'
    end
    object SQLSaldoAtualCOMPRAMEDIOATUAL: TFloatField
      FieldName = 'COMPRAMEDIOATUAL'
    end
    object SQLSaldoAtualCUSTOATUAL: TFloatField
      FieldName = 'CUSTOATUAL'
    end
    object SQLSaldoAtualCUSTOMEDIOATUAL: TFloatField
      FieldName = 'CUSTOMEDIOATUAL'
    end
    object SQLSaldoAtualVENDAATUAL: TFloatField
      FieldName = 'VENDAATUAL'
    end
  end
  object TblResumoSaldoAtual: TTable
    Tag = 1
    DatabaseName = 'DBTemp'
    TableName = 'ResumoSaldoAtual.db'
    Left = 586
    Top = 61
    object TblResumoSaldoAtualQTDEATUAL: TBCDField
      FieldName = 'QTDEATUAL'
      Precision = 15
      Size = 3
    end
    object TblResumoSaldoAtualCOMPRAATUAL: TFloatField
      FieldName = 'COMPRAATUAL'
    end
    object TblResumoSaldoAtualCOMPRAMEDIOATUAL: TFloatField
      FieldName = 'COMPRAMEDIOATUAL'
    end
    object TblResumoSaldoAtualCUSTOATUAL: TFloatField
      FieldName = 'CUSTOATUAL'
    end
    object TblResumoSaldoAtualCUSTOMEDIOATUAL: TFloatField
      FieldName = 'CUSTOMEDIOATUAL'
    end
    object TblResumoSaldoAtualVENDAATUAL: TFloatField
      FieldName = 'VENDAATUAL'
    end
  end
  object SQLMovDiverso: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'MD'#39'                           as TipoOperacao,'
      'MOVIMENTODIVERSO.MOVDCCONLUIDO as StatusOperacao,'
      'MOVIMENTODIVERSO.MOVDA13ID     as ID,'
      'MOVIMENTODIVERSO.MOVDICOD      as Numero,'
      '0.00                           as VlrIcms,'
      '0.00                           as VlrIPI,'
      '0.00                           as VlrDesc,'
      '0.00                           as VlrFrete,'
      '0.00                           as VlrServico,'
      '0.00                           as VlrISSQN,'
      '0.00                           as VlrProduto,'
      '0.00                           as VlrNota,'
      #39#39'                             as Cliente,'
      #39#39'                             as Fornecedor,'
      'EMPRESA.EMPRA60NOMEFANT        as EmpresaDestino,'
      'MOVIMENTODIVERSO.USUAA60LOGIN  as Usuario,'
      'OPERACAOESTOQUE.OPESA60DESCR   as OperacaoEstoque,'
      #39#39'                             as Plano'
      'FROM'
      'MOVIMENTODIVERSO'
      
        'LEFT OUTER JOIN EMPRESA          ON MOVIMENTODIVERSO.EMPRICOD = ' +
        'EMPRESA.EMPRICOD'
      
        'LEFT OUTER JOIN OPERACAOESTOQUE  ON MOVIMENTODIVERSO.OPESICOD = ' +
        'OPERACAOESTOQUE.OPESICOD'
      'WHERE'
      '%DataEmissao')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 474
    Top = 61
    object SQLMovDiversoTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLMovDiversoSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLMovDiversoID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLMovDiversoNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object SQLMovDiversoVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object SQLMovDiversoVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object SQLMovDiversoVLRDESC: TFloatField
      FieldName = 'VLRDESC'
    end
    object SQLMovDiversoVLRFRETE: TFloatField
      FieldName = 'VLRFRETE'
    end
    object SQLMovDiversoVLRSERVICO: TFloatField
      FieldName = 'VLRSERVICO'
    end
    object SQLMovDiversoVLRISSQN: TFloatField
      FieldName = 'VLRISSQN'
    end
    object SQLMovDiversoVLRPRODUTO: TFloatField
      FieldName = 'VLRPRODUTO'
    end
    object SQLMovDiversoVLRNOTA: TFloatField
      FieldName = 'VLRNOTA'
    end
    object SQLMovDiversoEMPRESADESTINO: TStringField
      FieldName = 'EMPRESADESTINO'
      FixedChar = True
      Size = 60
    end
    object SQLMovDiversoUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 60
    end
    object SQLMovDiversoOPERACAOESTOQUE: TStringField
      FieldName = 'OPERACAOESTOQUE'
      FixedChar = True
      Size = 60
    end
  end
  object SQLMovDiversoItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      #39'MD'#39'                                 as TipoOperacao,'
      'MOVIMENTODIVERSO.MOVDCCONLUIDO       as StatusOperacao,'
      'MOVIMENTODIVERSOITEM.MOVDA13ID       as ID,'
      'MOVIMENTODIVERSO.EMPRICOD            as Empresa,'
      'MOVIMENTODIVERSOITEM.PRODICOD        as CodProduto,'
      'MOVIMENTODIVERSOITEM.MVDIN3QTD       as Qtde,'
      'PRODUTO.PRODN3VLRCUSTO               as VlrUnitario,'
      '0.00                                 as VlrDesc,'
      '0.00                                 as VlrICMS,'
      '0.00                                 as VlrIPI,'
      'MOVIMENTODIVERSOITEM.LOTEA30NRO      as Lote,'
      'PRODUTO.PRODA60DESCR                 as DescrProduto,'
      'PRODUTO.PRODN3VLRCOMPRA              as VlrCompra,'
      'PRODUTO.PRODN3VLRCOMPRAMED           as VlrCompraMedio,'
      'PRODUTO.PRODN3VLRCUSTO               as VlrCusto,'
      'PRODUTO.PRODN3VLRCUSTOMED            as VlrCustoMedio,'
      'PRODUTO.PRODA60REFER                 as RefProduto,'
      'GRADETAMANHO.GRTMA5DESCR             as TamProduto,'
      'COR.CORA30DESCR                      as CorProduto,'
      'MVE.MVESICOD                         as CodMov,'
      'MVE.MVESDMOV                         as DataMov,'
      '(SELECT PRODUTOSALDO.PSLDN3QTDE FROM PRODUTOSALDO WHERE'
      'PRODUTOSALDO.EMPRICOD = MOVIMENTODIVERSO.EMPRICOD AND'
      
        'PRODUTOSALDO.PRODICOD = MOVIMENTODIVERSOITEM.PRODICOD) as SALDOA' +
        'TUAL,'
      
        '(SELECT SUM(MV.MVESN3QTDENTRADA - MV.MVESN3QTDSAIDA) FROM MOVIME' +
        'NTOESTOQUE MV WHERE'
      ' MV.PRODICOD  = MOVIMENTODIVERSOITEM.PRODICOD AND'
      ' MV.EMPRICOD  = MOVIMENTODIVERSO.EMPRICOD AND'
      ' MV.MVESDMOV <= MOVIMENTODIVERSO.MOVDDMOVIMENTO AND'
      ' MV.MVESICOD <> MVE.MVESICOD ) AS SALDOANTERIOR'
      'FROM'
      'MOVIMENTODIVERSOITEM'
      
        'LEFT OUTER JOIN PRODUTO          ON MOVIMENTODIVERSOITEM.PRODICO' +
        'D  = PRODUTO.PRODICOD'
      
        'LEFT OUTER JOIN MOVIMENTODIVERSO ON MOVIMENTODIVERSOITEM.MOVDA13' +
        'ID = MOVIMENTODIVERSO.MOVDA13ID'
      
        'LEFT OUTER JOIN GRADETAMANHO     ON PRODUTO.GRTMICOD         = G' +
        'RADETAMANHO.GRTMICOD'
      
        'LEFT OUTER JOIN COR              ON PRODUTO.CORICOD          = C' +
        'OR.CORICOD'
      
        'LEFT OUTER JOIN MOVIMENTOESTOQUE MVE ON (MOVIMENTODIVERSOITEM.PR' +
        'ODICOD = MVE.PRODICOD AND'
      
        '                                     MOVIMENTODIVERSO.MOVDDMOVIM' +
        'ENTO = MVE.MVESDMOV AND'
      
        '                                     MOVIMENTODIVERSO.EMPRICOD  ' +
        '       = MVE.EMPRICOD AND'
      
        '                                     MOVIMENTODIVERSO.MOVDA13ID ' +
        '       = MVE.MOVDA13ID)'
      'WHERE'
      '(%DataEmissao)')
    Macros = <
      item
        DataType = ftString
        Name = 'DataEmissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 502
    Top = 61
    object SQLMovDiversoItemTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      FixedChar = True
      Size = 2
    end
    object SQLMovDiversoItemSTATUSOPERACAO: TStringField
      FieldName = 'STATUSOPERACAO'
      FixedChar = True
      Size = 1
    end
    object SQLMovDiversoItemID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLMovDiversoItemEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object SQLMovDiversoItemCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object SQLMovDiversoItemQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 15
      Size = 3
    end
    object SQLMovDiversoItemVLRUNITARIO: TBCDField
      FieldName = 'VLRUNITARIO'
      Precision = 15
      Size = 3
    end
    object SQLMovDiversoItemVLRDESC: TFloatField
      FieldName = 'VLRDESC'
    end
    object SQLMovDiversoItemVLRICMS: TFloatField
      FieldName = 'VLRICMS'
    end
    object SQLMovDiversoItemVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
    object SQLMovDiversoItemLOTE: TStringField
      FieldName = 'LOTE'
      FixedChar = True
      Size = 30
    end
    object SQLMovDiversoItemDESCRPRODUTO: TStringField
      FieldName = 'DESCRPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLMovDiversoItemVLRCOMPRA: TBCDField
      FieldName = 'VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLMovDiversoItemVLRCOMPRAMEDIO: TBCDField
      FieldName = 'VLRCOMPRAMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLMovDiversoItemVLRCUSTO: TBCDField
      FieldName = 'VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLMovDiversoItemVLRCUSTOMEDIO: TBCDField
      FieldName = 'VLRCUSTOMEDIO'
      Precision = 15
      Size = 3
    end
    object SQLMovDiversoItemREFPRODUTO: TStringField
      FieldName = 'REFPRODUTO'
      FixedChar = True
      Size = 60
    end
    object SQLMovDiversoItemTAMPRODUTO: TStringField
      FieldName = 'TAMPRODUTO'
      FixedChar = True
      Size = 5
    end
    object SQLMovDiversoItemCORPRODUTO: TStringField
      FieldName = 'CORPRODUTO'
      FixedChar = True
      Size = 30
    end
    object SQLMovDiversoItemCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object SQLMovDiversoItemDATAMOV: TDateTimeField
      FieldName = 'DATAMOV'
    end
    object SQLMovDiversoItemSALDOATUAL: TBCDField
      FieldName = 'SALDOATUAL'
      Precision = 15
      Size = 3
    end
    object SQLMovDiversoItemSALDOANTERIOR: TFloatField
      FieldName = 'SALDOANTERIOR'
    end
  end
end
