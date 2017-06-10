inherited FormTelaPedidoCompraHistoricoComprasVendasProduto: TFormTelaPedidoCompraHistoricoComprasVendasProduto
  Left = 145
  Top = 200
  Caption = 'Hist'#243'rico de Compras e Vendas do Produto Selecionado'
  ClientHeight = 443
  ClientWidth = 1008
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Top = 63
    Width = 1008
    Height = 380
    object Panel1: TPanel
      Left = 0
      Top = 197
      Width = 1008
      Height = 26
      Align = alTop
      Caption = 'Historico de Vendas - Ultimos 90 Dias'
      Color = 16249066
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 0
      Top = 26
      Width = 1008
      Height = 171
      Align = alTop
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 1006
        Height = 169
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSSQLNotasCompra
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'FORNA60RAZAOSOC'
            Width = 221
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCPA30NRO'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCPDRECEBIMENTO'
            Title.Caption = 'Dt. Recbto'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCIN3CAPEMBAL'
            Title.Caption = 'Cap.Embal'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCIN3QTDEMBAL'
            Title.Caption = 'Qtde.Embal'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCIN3VLRUNIT'
            Title.Caption = 'Vlr.Unit'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCIN3VLREMBAL'
            Title.Caption = 'Vlr.Embal'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCIN3VLRICMS'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCIN3VLRSUBST'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCIN3VLRIPI'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCIN3VLRDESC'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOCIN3VLRFRETE'
            Width = 70
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1008
      Height = 26
      Align = alTop
      Caption = 'Hist'#243'rico de Compras'
      Color = 16249066
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 0
      Top = 223
      Width = 1008
      Height = 157
      Align = alClient
      TabOrder = 3
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 1006
        Height = 155
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = dsSQLVendas
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CUPODEMIS'
            Title.Caption = 'Data'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUPOA13ID'
            Title.Caption = 'Documento'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODN3VLRVENDA'
            Title.Caption = 'Vlr.Venda'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPITN3QTD'
            Title.Caption = 'Quantidade'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALITEM'
            Title.Caption = 'Vlr.Total Item'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDICOD'
            Title.Caption = 'Vendedor'
            Visible = True
          end>
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 1008
    Height = 63
    inherited PanelCabecalho: TPanel
      Width = 1008
      Height = 63
      inherited PanelNavigator: TPanel
        Top = 31
        Width = 1008
        object LBProduto: TLabel [0]
          Left = 7
          Top = 9
          Width = 71
          Height = 14
          Caption = 'Produto=>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 1008
          inherited BtnFecharTela: TSpeedButton
            Left = 705
          end
        end
      end
    end
  end
  object SQLNotasCompra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from NotaCompra, NotaCompraItem, Fornecedor'
      'where (%MEmpresa) and (%MProduto) and'
      'NotaCompraItem.NOCPA13ID = NotaCompra.NOCPA13ID and'
      'NotaCompra.FORNICOD = Fornecedor.FORNICOD and'
      'NotaCompra.NOCPCSTATUS = '#39'E'#39
      'order by'
      'NotaCompra.NOCPDRECEBIMENTO DESC')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MProduto'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 680
    Top = 2
    object SQLNotasCompraNOCPA13ID: TStringField
      DisplayLabel = 'ID NF'
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotasCompraEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTACOMPRA.EMPRICOD'
    end
    object SQLNotasCompraFORNICOD: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTACOMPRA.FORNICOD'
    end
    object SQLNotasCompraNOCPA30NRO: TStringField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotasCompraNOCPCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'NOCPCSTATUS'
      Origin = 'DB.NOTACOMPRA.NOCPCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotasCompraOPESICOD: TIntegerField
      DisplayLabel = 'Opera'#231#227'o Estoque'
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTACOMPRA.OPESICOD'
    end
    object SQLNotasCompraNOCPDEMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'NOCPDEMISSAO'
      Origin = 'DB.NOTACOMPRA.NOCPDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLNotasCompraNOCPDRECEBIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Recebimento'
      FieldName = 'NOCPDRECEBIMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDRECEBIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLNotasCompraPRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
    end
    object SQLNotasCompraNOCIN3PERCDESC: TFloatField
      DisplayLabel = '% Desc.'
      FieldName = 'NOCIN3PERCDESC'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '##0,00'
    end
    object SQLNotasCompraNOCIN3VLRDESC: TFloatField
      DisplayLabel = 'Vlr. Desc.'
      FieldName = 'NOCIN3VLRDESC'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
    end
    object SQLNotasCompraNOCIN3VLRICMS: TFloatField
      DisplayLabel = 'Vlr. ICMS'
      FieldName = 'NOCIN3VLRICMS'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
    end
    object SQLNotasCompraNOCIN3PERCICMS: TFloatField
      DisplayLabel = '% ICMS'
      FieldName = 'NOCIN3PERCICMS'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '##0,00'
    end
    object SQLNotasCompraNOCIN3VLRSUBST: TFloatField
      DisplayLabel = 'Vlr. Subst.'
      FieldName = 'NOCIN3VLRSUBST'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
    end
    object SQLNotasCompraNOCIN3VLRIPI: TFloatField
      DisplayLabel = 'Vlr. IPI'
      FieldName = 'NOCIN3VLRIPI'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
    end
    object SQLNotasCompraNOCIN3PERCIPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'NOCIN3PERCIPI'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '##0,00'
    end
    object SQLNotasCompraNOCIN3VLRCUSTOMED: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'NOCIN3VLRCUSTOMED'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,000'
    end
    object SQLNotasCompraNOCIN3VLRFRETE: TFloatField
      DisplayLabel = 'Vlr. Frete'
      FieldName = 'NOCIN3VLRFRETE'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
    end
    object SQLNotasCompraNOCIN3QTDBONIF: TFloatField
      DisplayLabel = 'Bonifica'#231#227'o'
      FieldName = 'NOCIN3QTDBONIF'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
      DisplayFormat = '###0,00'
    end
    object SQLNotasCompraFORNA60RAZAOSOC: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLNotasCompraLOTEA30NRO: TStringField
      DisplayLabel = 'Nro. Lote'
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLNotasCompraNOCIN3CAPEMBAL: TFloatField
      FieldName = 'NOCIN3CAPEMBAL'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      DisplayFormat = '###0.000'
    end
    object SQLNotasCompraNOCIN3QTDEMBAL: TFloatField
      FieldName = 'NOCIN3QTDEMBAL'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      DisplayFormat = '###0.000'
    end
    object SQLNotasCompraNOCIN3VLREMBAL: TFloatField
      FieldName = 'NOCIN3VLREMBAL'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
    end
    object SQLNotasCompraNOCIN3VLRUNIT: TFloatField
      FieldName = 'NOCIN3VLRUNIT'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
    end
  end
  object DSSQLNotasCompra: TDataSource
    DataSet = SQLNotasCompra
    Left = 708
    Top = 2
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOM.EMPRICOD,'
      '  CUPOM.CUPODEMIS,'
      '  CUPOM.REGISTRO,'
      '  CUPOMITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      
        '  ((CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD ) - CUPOMITEM.' +
        'CPITN2DESC) as VLRTOTALITEM,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.GRUPICOD,'
      '  PRODUTO.SUBGICOD,'
      '  PRODUTO.VARIICOD,'
      '  PRODUTO.MARCICOD,'
      '  PRODUTO.COLEICOD,'
      '  0.0 AS MARGEMPERC,'
      
        '  (CUPOMITEM.CPITN3VLRUNIT-PRODUTO.PRODN3VLRCUSTO) * CUPOMITEM.C' +
        'PITN3QTD AS MARGEMVLR,'
      '  CUPOMITEM.CPITN3QTD,'
      '  CUPOMITEM.VENDICOD AS VENDICOD,'
      '  CUPOM.CUPOA13ID,'
      '  CUPOM.CLIEA13ID,'
      '  CUPOMITEM.CPITN2VLRQDEVERIAVENDER'
      'from'
      
        '  ((CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.C' +
        'UPOA13ID)'
      
        ' left outer join PRODUTO on CUPOMITEM.PRODICOD = PRODUTO.PRODICO' +
        'D)'
      'where'
      '  CUPOM.CUPOCSTATUS <> ''C'' and'
      '  CUPOMITEM.CPITN3QTD > 0 and'
      '  (%MFiltro)  and'
      '  (%MProduto) and'
      '  (%MEmpresa)'
      'union all'
      'select'
      '  NOTAFISCAL.EMPRICOD,'
      '  NOTAFISCAL.NOFIDEMIS,'
      '  NOTAFISCAL.REGISTRO,'
      '  NOTAFISCALITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      
        '  (NOTAFISCALITEM.NFITN2VLRUNIT * NOTAFISCALITEM.NFITN3QUANT) as' +
        ' VLRTOTALITEM,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.GRUPICOD,'
      '  PRODUTO.SUBGICOD,'
      '  PRODUTO.VARIICOD,'
      '  PRODUTO.MARCICOD,'
      '  PRODUTO.COLEICOD,'
      '  0.0 AS MARGEMPERC,'
      
        '  (NOTAFISCALITEM.NFITN2VLRUNIT-PRODUTO.PRODN3VLRCUSTO) * NOTAFI' +
        'SCALITEM.NFITN3QUANT AS MARGEMVLR,'
      '  NOTAFISCALITEM.NFITN3QUANT,'
      '  NOTAFISCAL.VENDICOD AS VENDICOD,'
      '  Cast(NOTAFISCAL.NOFIINUMERO as CHAR(13)),'
      '  NOTAFISCAL.CLIEA13ID,'
      '  0.0 AS CPITN2VLRQDEVERIAVENDER'
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
      '  (%MFiltro1)  and'
      '  (%MProduto1) and'
      '  (%MEmpresa1) and'
      '  OPERACAOESTOQUE.OPESCGERAFINANCEIRO = '#39'S'#39
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
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
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MProduto1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa1'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 507
    Top = 2
    object SQLVendasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLVendasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLVendasPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVendasVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
    object SQLVendasPRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
    end
    object SQLVendasPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
    end
    object SQLVendasGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLVendasSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object SQLVendasVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object SQLVendasMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
    end
    object SQLVendasMARGEMPERC: TFloatField
      FieldName = 'MARGEMPERC'
    end
    object SQLVendasMARGEMVLR: TFloatField
      FieldName = 'MARGEMVLR'
    end
    object SQLVendasCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
    end
    object SQLVendasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLVendasCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasCPITN2VLRQDEVERIAVENDER: TFloatField
      FieldName = 'CPITN2VLRQDEVERIAVENDER'
    end
    object SQLVendasCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
    end
    object SQLVendasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLVendasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
  end
  object dsSQLVendas: TDataSource
    DataSet = SQLVendas
    Left = 535
    Top = 2
  end
end
