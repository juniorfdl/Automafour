inherited FormRelatorioApuracaoPisCofins: TFormRelatorioApuracaoPisCofins
  Left = 95
  Top = 116
  Caption = 'Apura'#231#227'o de Pis e Cofins'
  PixelsPerInch = 96
  TextHeight = 13
  inherited TblTemporaria: TTable
    object TblTemporariaTotalPIS: TFloatField
      FieldName = 'TotalPIS'
    end
    object TblTemporariaTotalCOFINS: TFloatField
      FieldName = 'TotalCOFINS'
    end
  end
  object SQLVendas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      
        '  ((CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD)- CUPOMITEM.CP' +
        'ITN2DESC)  as VLRTOTALITEM,'
      '  PRODUTO.PRODA2CSTPIS,'
      '  PRODUTO.PRODN2ALIQPIS,'
      '  PRODUTO.PRODA2CSTCOFINS,'
      '  PRODUTO.PRODN2ALIQCOFINS'
      'from'
      
        '  ((CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.C' +
        'UPOA13ID)'
      
        ' left outer join PRODUTO on CUPOMITEM.PRODICOD = PRODUTO.PRODICO' +
        'D)'
      'where'
      '  CUPOM.CUPOCSTATUS = ''A'' and'
      '  CUPOMITEM.CPITN3QTD > 0 and'
      '  CUPOMITEM.CPITCSTATUS <> ''C'' and'
      '  (%MEmpresa) and'
      '  (%MData)'
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
    Left = 426
    Top = 5
    object SQLVendasVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
    object SQLVendasPRODA2CSTPIS: TStringField
      FieldName = 'PRODA2CSTPIS'
      FixedChar = True
      Size = 2
    end
    object SQLVendasPRODN2ALIQPIS: TFloatField
      FieldName = 'PRODN2ALIQPIS'
    end
    object SQLVendasPRODA2CSTCOFINS: TStringField
      FieldName = 'PRODA2CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object SQLVendasPRODN2ALIQCOFINS: TFloatField
      FieldName = 'PRODN2ALIQCOFINS'
    end
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 525
    Top = 4
    Version = '10.06'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 42863
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Apura'#231#227'o de Pis e Cofins  - Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6773
        mmLeft = 8731
        mmTop = 2646
        mmWidth = 86784
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 9260
        mmTop = 15875
        mmWidth = 14690
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 9260
        mmTop = 20373
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Total de PIS          =>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 9260
        mmTop = 32808
        mmWidth = 44154
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Total de COFINS    =>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 9260
        mmTop = 37835
        mmWidth = 44365
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Total de Vendas    =>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 9260
        mmTop = 27781
        mmWidth = 43646
        BandType = 0
      end
      object ppValorVenda: TppLabel
        UserName = 'ValorVenda'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 75142
        mmTop = 27781
        mmWidth = 19579
        BandType = 0
      end
      object ppPis: TppLabel
        UserName = 'ValorVenda1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 75142
        mmTop = 32808
        mmWidth = 19600
        BandType = 0
      end
      object ppCofins: TppLabel
        UserName = 'Cofins'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 75142
        mmTop = 37835
        mmWidth = 19600
        BandType = 0
      end
      object ppEmpresa: TppLabel
        UserName = 'ValorVenda2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 26988
        mmTop = 15875
        mmWidth = 13462
        BandType = 0
      end
      object ppData: TppLabel
        UserName = 'Data'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 26988
        mmTop = 20638
        mmWidth = 7281
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
end
