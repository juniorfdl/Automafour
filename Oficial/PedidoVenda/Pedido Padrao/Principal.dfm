object FormPrincipal: TFormPrincipal
  Left = 366
  Top = 191
  Width = 705
  Height = 190
  Caption = 'Pedido de Venda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object TblPedido: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'PedidoCab.DB'
    Left = 8
    object TblPedidoPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoEmitente_Nome: TStringField
      FieldName = 'Emitente_Nome'
      Size = 60
    end
    object TblPedidoEmitente_Ender: TStringField
      FieldName = 'Emitente_Ender'
      Size = 60
    end
    object TblPedidoEmitente_Bairro: TStringField
      FieldName = 'Emitente_Bairro'
      Size = 60
    end
    object TblPedidoEmitente_Cidade: TStringField
      FieldName = 'Emitente_Cidade'
      Size = 60
    end
    object TblPedidoEmitente_UF: TStringField
      FieldName = 'Emitente_UF'
      Size = 2
    end
    object TblPedidoEmitente_CGC: TStringField
      FieldName = 'Emitente_CGC'
    end
    object TblPedidoEmitente_IE: TStringField
      FieldName = 'Emitente_IE'
    end
    object TblPedidoEmitente_Fone: TStringField
      FieldName = 'Emitente_Fone'
      Size = 15
    end
    object TblPedidoDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object TblPedidoDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Size = 60
    end
    object TblPedidoDestinatario_Fantasia: TStringField
      FieldName = 'Destinatario_Fantasia'
      Size = 60
    end
    object TblPedidoDestinatario_Endereco: TStringField
      FieldName = 'Destinatario_Endereco'
      Size = 60
    end
    object TblPedidoDestinatario_Bairro: TStringField
      FieldName = 'Destinatario_Bairro'
      Size = 60
    end
    object TblPedidoDestinatario_Cep: TStringField
      FieldName = 'Destinatario_Cep'
      Size = 15
    end
    object TblPedidoDestinatario_Cidade: TStringField
      FieldName = 'Destinatario_Cidade'
      Size = 60
    end
    object TblPedidoDestinatario_UF: TStringField
      FieldName = 'Destinatario_UF'
      Size = 2
    end
    object TblPedidoDestinatario_CpfCgc: TStringField
      FieldName = 'Destinatario_CpfCgc'
    end
    object TblPedidoDestinatario_IE: TStringField
      FieldName = 'Destinatario_IE'
    end
    object TblPedidoDestinatario_Fone: TStringField
      FieldName = 'Destinatario_Fone'
    end
    object TblPedidoDestinatario_Fax: TStringField
      FieldName = 'Destinatario_Fax'
    end
    object TblPedidoTransp: TStringField
      FieldName = 'Transp'
      Size = 60
    end
    object TblPedidoDtaEntrega: TDateField
      FieldName = 'DtaEntrega'
    end
    object TblPedidoEmitente_Fax: TStringField
      FieldName = 'Emitente_Fax'
    end
    object TblPedidoComprador: TStringField
      FieldName = 'Comprador'
      Size = 60
    end
    object TblPedidoOrdemCompra: TStringField
      FieldName = 'OrdemCompra'
      Size = 60
    end
    object TblPedidoPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblPedidoTipoFrete: TStringField
      FieldName = 'TipoFrete'
      Size = 15
    end
    object TblPedidoValorFrete: TFloatField
      FieldName = 'ValorFrete'
    end
    object TblPedidoTotalDesconto: TFloatField
      FieldName = 'TotalDesconto'
    end
    object TblPedidoTotal: TFloatField
      FieldName = 'Total'
    end
    object TblPedidoObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
      Size = 10
    end
    object TblPedidoVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblPedidoEmail: TStringField
      FieldName = 'Email'
      Size = 60
    end
    object TblPedidoPEDIDOORCAMENTO: TStringField
      FieldName = 'PEDIDOORCAMENTO'
    end
    object TblPedidoEmitente_Email: TStringField
      FieldName = 'Emitente_Email'
      Size = 60
    end
  end
  object TblPedidoItem: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'PedidoItens.DB'
    Left = 8
    Top = 28
    object TblPedidoItemPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblPedidoItemBarras: TStringField
      FieldName = 'Barras'
    end
    object TblPedidoItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object TblPedidoItemUn: TStringField
      FieldName = 'Un'
      Size = 2
    end
    object TblPedidoItemQtd1: TFloatField
      FieldName = 'Qtd1'
    end
    object TblPedidoItemVlrUnitario: TFloatField
      FieldName = 'VlrUnitario'
    end
    object TblPedidoItemVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object TblPedidoItemCor: TStringField
      FieldName = 'Cor'
      Size = 60
    end
    object TblPedidoItemTecido: TStringField
      FieldName = 'Tecido'
      Size = 60
    end
    object TblPedidoItemLegenda: TIntegerField
      FieldName = 'Legenda'
    end
    object TblPedidoItemQtd2: TFloatField
      FieldName = 'Qtd2'
    end
    object TblPedidoItemQtd3: TFloatField
      FieldName = 'Qtd3'
    end
    object TblPedidoItemQtd4: TFloatField
      FieldName = 'Qtd4'
    end
    object TblPedidoItemQtd5: TFloatField
      FieldName = 'Qtd5'
    end
    object TblPedidoItemQtd6: TFloatField
      FieldName = 'Qtd6'
    end
    object TblPedidoItemQtd7: TFloatField
      FieldName = 'Qtd7'
    end
    object TblPedidoItemQtd8: TFloatField
      FieldName = 'Qtd8'
    end
    object TblPedidoItemQtd9: TFloatField
      FieldName = 'Qtd9'
    end
    object TblPedidoItemQtd10: TFloatField
      FieldName = 'Qtd10'
    end
    object TblPedidoItemQtd11: TFloatField
      FieldName = 'Qtd11'
    end
    object TblPedidoItemQtd12: TFloatField
      FieldName = 'Qtd12'
    end
    object TblPedidoItemQtd13: TFloatField
      FieldName = 'Qtd13'
    end
    object TblPedidoItemQtd14: TFloatField
      FieldName = 'Qtd14'
    end
    object TblPedidoItemQtd15: TFloatField
      FieldName = 'Qtd15'
    end
  end
  object TblPedidoFinanceiro: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'PedidoFinan.DB'
    Left = 8
    Top = 56
    object TblPedidoFinanceiroPedICod: TStringField
      FieldName = 'PedICod'
      Size = 13
    end
    object TblPedidoFinanceiroVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object TblPedidoFinanceiroValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object ImpPedidoVenda: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 
      'C:\Desenv\GestaoOficial\PedidoVenda\ObraeCia\Pedido de Venda Obr' +
      'aeCia.rpt'
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    ProgressDialog = False
    OnWindowClose = ImpPedidoVendaWindowClose
    WindowEvents = True
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
    WindowZoom.Preview = pwPageWidth
    WindowZoom.Magnification = -1
    WindowStyle.BorderStyle = bsSingle
    WindowState = wsMaximized
    WindowButtonBar.CancelBtn = True
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
    Left = 36
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PlanoRecebimento'
      '')
    Macros = <>
    Left = 36
    Top = 84
    object SQLPlanoRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoRecebimentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Vendedor'
      '')
    Macros = <>
    Left = 36
    Top = 56
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
    object SQLVendedorVENDA60EMAIL: TStringField
      FieldName = 'VENDA60EMAIL'
      Origin = 'DB.VENDEDOR.VENDA60EMAIL'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTransportadora: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Transportadora')
    Macros = <>
    Left = 36
    Top = 28
    object SQLTransportadoraTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.TRANSPORTADORA.TRANICOD'
    end
    object SQLTransportadoraTRANA60RAZAOSOC: TStringField
      FieldName = 'TRANA60RAZAOSOC'
      Origin = 'DB.TRANSPORTADORA.TRANA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTemplate: TRxQuery
    Tag = 2
    OnCalcFields = SQLTemplateCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From PEDIDOVENDA Where PDVDA13ID=:PDVDA13ID')
    Macros = <>
    Left = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateEmitenteLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60NOMEFANT'
      KeyFields = 'EMPRICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateEmitenteEndLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteEndLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60END'
      KeyFields = 'EMPRICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateEmitenteBairroLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteBairroLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60BAI'
      KeyFields = 'EMPRICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateEmitenteCidadeLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteCidadeLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60CID'
      KeyFields = 'EMPRICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateEmitenteUFLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteUFLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA2UF'
      KeyFields = 'EMPRICOD'
      Size = 2
      Lookup = True
    end
    object SQLTemplateEmitenteCGCLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteCGCLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA14CGC'
      KeyFields = 'EMPRICOD'
      Size = 14
      Lookup = True
    end
    object SQLTemplateEmitenteIELookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteIELookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA20IE'
      KeyFields = 'EMPRICOD'
      Lookup = True
    end
    object SQLTemplateEmitenteFoneLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteFoneLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA20FONE'
      KeyFields = 'EMPRICOD'
      Lookup = True
    end
    object SQLTemplatePDVDA13ID: TStringField
      Tag = 2
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDA.PDVDA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PEDIDOVENDA.EMPRICOD'
    end
    object SQLTemplatePDVDICOD: TIntegerField
      Tag = 1
      FieldName = 'PDVDICOD'
      Origin = 'DB.PEDIDOVENDA.PDVDICOD'
    end
    object SQLTemplateVENDICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.PEDIDOVENDA.VENDICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PEDIDOVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTRANICOD: TIntegerField
      DisplayLabel = 'Transportadora'
      FieldName = 'TRANICOD'
      Origin = 'DB.PEDIDOVENDA.TRANICOD'
    end
    object SQLTemplatePLRCICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Plano'
      FieldName = 'PLRCICOD'
      Origin = 'DB.PEDIDOVENDA.PLRCICOD'
    end
    object SQLTemplatePDVDDEMISSAO: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'PDVDDEMISSAO'
      Origin = 'DB.PEDIDOVENDA.PDVDDEMISSAO'
    end
    object SQLTemplatePDVDN2VLRFRETE: TFloatField
      DisplayLabel = 'Vlr Frete'
      FieldName = 'PDVDN2VLRFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRFRETE'
    end
    object SQLTemplatePDVDA30NROPEDCOMP: TStringField
      DisplayLabel = 'Nro Pedido Compra'
      FieldName = 'PDVDA30NROPEDCOMP'
      Origin = 'DB.PEDIDOVENDA.PDVDA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePDVDA30COMPRADOR: TStringField
      DisplayLabel = 'Comprador'
      FieldName = 'PDVDA30COMPRADOR'
      Origin = 'DB.PEDIDOVENDA.PDVDA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePDVDCTIPO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo'
      FieldName = 'PDVDCTIPO'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDCSTATUS: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Status'
      FieldName = 'PDVDCSTATUS'
      Origin = 'DB.PEDIDOVENDA.PDVDCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDN2VLRDESC: TFloatField
      DisplayLabel = 'Vlr Desconto'
      FieldName = 'PDVDN2VLRDESC'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESC'
    end
    object SQLTemplatePDVDN2TOTPROD: TFloatField
      DisplayLabel = 'Tot Produtos'
      FieldName = 'PDVDN2TOTPROD'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPROD'
      Visible = False
    end
    object SQLTemplatePDVDN2TOTPED: TFloatField
      DisplayLabel = 'Tot. Pedido'
      FieldName = 'PDVDN2TOTPED'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPED'
      Visible = False
    end
    object SQLTemplatePDVDTOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PDVDTOBS'
      Origin = 'DB.PEDIDOVENDA.PDVDTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDA.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTransportadoraLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraLookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA60RAZAOSOC'
      KeyFields = 'TRANICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateVendedorLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'VendedorLookUp'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePlanoRecebimentoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoRecebimentoLookUp'
      LookupDataSet = SQLPlanoRecebimento
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'PLRCICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateClienteFantasia: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteFantasia'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60NOMEFANT'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteEnderecoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteEnderecoLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateClienteEstadoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteEstadoLookUp'
      Visible = False
      Size = 2
      Calculated = True
    end
    object SQLTemplateClienteBairroLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteBairroLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateClienteCEPLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteCEPLookUp'
      Visible = False
      EditMask = '00.000-000;0;_'
      Size = 8
      Calculated = True
    end
    object SQLTemplateClienteCGCCPFLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteCGCCPFLookUp'
      Visible = False
      Size = 14
      Calculated = True
    end
    object SQLTemplateClienteIERGLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteIERGLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateClienteCidadeLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteCidadeLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateClienteFoneLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteFoneLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplatePDVDN2VLRDESCPROM: TFloatField
      FieldName = 'PDVDN2VLRDESCPROM'
    end
    object SQLTemplatePDVDINROTALAO: TIntegerField
      FieldName = 'PDVDINROTALAO'
      Origin = 'DB.PEDIDOVENDA.PDVDINROTALAO'
    end
    object SQLTemplateClienteTabelaPrecoLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ClienteTabelaPrecoLookUp'
      Calculated = True
    end
    object SQLTemplateVendedorEmailLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'VendedorEmailLookUp'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60EMAIL'
      KeyFields = 'VENDICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePDVDCTIPOFRETE: TStringField
      FieldName = 'PDVDCTIPOFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateClienteFaxLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteFaxLookUp'
      Size = 15
      Calculated = True
    end
    object SQLTemplatePDVDDENTREGA: TDateTimeField
      FieldName = 'PDVDDENTREGA'
      Origin = 'DB.PEDIDOVENDA.PDVDDENTREGA'
    end
    object SQLTemplateEmitenteEmail: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteEmail'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60EMAIL'
      KeyFields = 'EMPRICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateEmitenteFaxLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'EmitenteFaxLookup'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA20FAX'
      KeyFields = 'EMPRICOD'
      Lookup = True
    end
    object SQLTemplateClienteEndereco_nro: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEndereco_nro'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA5NROENDRES'
      KeyFields = 'CLIEA13ID'
      Size = 5
      Lookup = True
    end
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Numerario')
    Macros = <>
    Left = 92
    Top = 28
    object SQLNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Portador')
    Macros = <>
    Left = 92
    Top = 56
    object SQLPortadorPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.PORTADOR.PORTICOD'
    end
    object SQLPortadorPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLPedidoFinanceiro: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLTemplate
    RequestLive = True
    SQL.Strings = (
      'Select * From CONTASRECEBER Where '
      'PDVDA13ID=:PDVDA13ID')
    Macros = <>
    Left = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
      end>
    object SQLPedidoFinanceiroCTRCA13ID: TStringField
      Tag = 2
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoFinanceiroEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLPedidoFinanceiroTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLPedidoFinanceiroCTRCICOD: TIntegerField
      Tag = 1
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLPedidoFinanceiroCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoFinanceiroCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoFinanceiroCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
      Visible = False
    end
    object SQLPedidoFinanceiroCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLPedidoFinanceiroCTRCN2VLR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLPedidoFinanceiroCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLPedidoFinanceiroNUMEICOD: TIntegerField
      DisplayLabel = 'Numer'#225'rio'
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLPedidoFinanceiroPORTICOD: TIntegerField
      DisplayLabel = 'Portador'
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLPedidoFinanceiroCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLPedidoFinanceiroCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
    end
    object SQLPedidoFinanceiroCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLPedidoFinanceiroCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLPedidoFinanceiroCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLPedidoFinanceiroCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
    end
    object SQLPedidoFinanceiroCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
    end
    object SQLPedidoFinanceiroCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
    end
    object SQLPedidoFinanceiroEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLPedidoFinanceiroCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoFinanceiroTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLPedidoFinanceiroPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPedidoFinanceiroCTRCA30NRODUPLICBANCO: TStringField
      DisplayLabel = 'Nro Banco'
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLPedidoFinanceiroNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoFinanceiroCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLPedidoFinanceiroPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoFinanceiroREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLPedidoFinanceiroCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLPedidoFinanceiroCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
    end
    object SQLPedidoFinanceiroBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLPedidoFinanceiroCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLPedidoFinanceiroCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLPedidoFinanceiroCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLPedidoFinanceiroCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoFinanceiroCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLPedidoFinanceiroCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLPedidoFinanceiroALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLPedidoFinanceiroNumerarioLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'NumerarioLookUp'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPedidoFinanceiroPortadorLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PortadorLookUp'
      LookupDataSet = SQLPortador
      LookupKeyFields = 'PORTICOD'
      LookupResultField = 'PORTA60DESCR'
      KeyFields = 'PORTICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPedidoFinanceiroPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Size = 13
    end
  end
  object DSSQLTemplate: TDataSource
    DataSet = SQLTemplate
    Left = 64
    Top = 28
  end
  object SQLPedidoItem: TRxQuery
    Tag = 1
    OnCalcFields = SQLPedidoItemCalcFields
    DatabaseName = 'DB'
    DataSource = DSSQLTemplate
    RequestLive = True
    SQL.Strings = (
      'Select '
      '   *'
      'From '
      '   PEDIDOVENDAITEM '
      'Where '
      '   PDVDA13ID=:PDVDA13ID AND'
      '   (%MFiltro)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 120
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLPedidoItemPDVDA13ID: TStringField
      Tag = 1
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoItemPVITIITEM: TIntegerField
      Tag = 1
      FieldName = 'PVITIITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITIITEM'
    end
    object SQLPedidoItemPRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
    end
    object SQLPedidoItemPVITN3QUANT: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'PVITN3QUANT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANT'
      DisplayFormat = '#,##0.000'
    end
    object SQLPedidoItemPVITN2VLRUNIT: TFloatField
      DisplayLabel = 'Vlr Unit'#225'rio'
      FieldName = 'PVITN2VLRUNIT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRUNIT'
      DisplayFormat = '#,##0.00'
    end
    object SQLPedidoItemPVITN2PERCDESC: TFloatField
      DisplayLabel = '% Desconto'
      FieldName = 'PVITN2PERCDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCDESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLPedidoItemPVITN2VLRDESC: TFloatField
      DisplayLabel = 'Vlr Desconto'
      FieldName = 'PVITN2VLRDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRDESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLPedidoItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDAITEM.REGISTRO'
    end
    object SQLPedidoItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoItemPVITN3QUANTVEND: TFloatField
      FieldName = 'PVITN3QUANTVEND'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANTVEND'
      DisplayFormat = '#,##0.000'
    end
    object SQLPedidoItemTotalItemCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItemCalc'
      Visible = False
      Calculated = True
    end
    object SQLPedidoItemAgrupGradeLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AgrupGradeLookUp'
      Visible = False
      Calculated = True
    end
    object SQLPedidoItemGradeCodLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradeCodLookUp'
      Visible = False
      Calculated = True
    end
    object SQLPedidoItemProdutoLookUp: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLPedidoItemReferenciaLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'ReferenciaLookup'
      Size = 30
      Calculated = True
    end
    object SQLPedidoItemUnidadeLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'UnidadeLookUp'
      Size = 5
      Calculated = True
    end
    object SQLPedidoItemBarrasLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'BarrasLookup'
      Calculated = True
    end
  end
  object SQLUnidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Unidade'
      'Where UNIDICOD=:UNIDICOD')
    Macros = <>
    Left = 120
    Top = 28
    ParamData = <
      item
        DataType = ftInteger
        Name = 'UNIDICOD'
        ParamType = ptUnknown
      end>
    object SQLUnidadeUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
    end
    object SQLUnidadeUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Empresa'
      '')
    Macros = <>
    Left = 36
    Top = 112
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRCMATRIZFILIAL: TStringField
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'DB.EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLEmpresaEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLEmpresaEMPRCFISJURID: TStringField
      FieldName = 'EMPRCFISJURID'
      Origin = 'DB.EMPRESA.EMPRCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA11CPF: TStringField
      FieldName = 'EMPRA11CPF'
      Origin = 'DB.EMPRESA.EMPRA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLEmpresaEMPRA10RG: TStringField
      FieldName = 'EMPRA10RG'
      Origin = 'DB.EMPRESA.EMPRA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLEmpresaEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60URL: TStringField
      FieldName = 'EMPRA60URL'
      Origin = 'DB.EMPRESA.EMPRA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EMPRESA.REGISTRO'
    end
  end
  object DB: TDatabase
    AliasName = 'Easy_Gestao'
    Connected = True
    DatabaseName = 'DB'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 197
    Top = 1
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Cliente'
      'Where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 120
    Top = 56
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Produto'
      'Where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 120
    Top = 86
  end
end
