inherited FormRelatorioProdutosAbaixoMinimo: TFormRelatorioProdutosAbaixoMinimo
  Left = 510
  Top = 108
  Caption = 'Produtos Abaixo do Estoque Minimo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Height = 256
      inherited BtnVisualizar: TSpeedButton
        Top = 216
      end
      inherited GroupBox1: TGroupBox
        Width = 245
        Visible = False
      end
      object GroupCodDesc: TGroupBox
        Left = 137
        Top = 161
        Width = 156
        Height = 41
        Caption = ' Ordem '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object OrdemCodigo: TRadioButton
          Left = 11
          Top = 15
          Width = 69
          Height = 17
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object OrdemDescricao: TRadioButton
          Left = 75
          Top = 15
          Width = 75
          Height = 17
          Caption = 'Descri'#231#227'o'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          TabStop = True
        end
      end
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  PRODUTO.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.PRODN3VLRCOMPRA,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  UNIDADE.UNIDA5DESCR,'
      '  PRODUTOSALDO.PSLDN3QTDE as SaldoAtual,'
      '  PRODUTOSALDO.PSLDN3QTDMIN as Minimo,'
      '  PRODUTOSALDO.PSLDN3QTDMAX as Maximo'
      'from'
      '  PRODUTOSALDO'
      
        '  inner join PRODUTO on (PRODUTO.PRODICOD  = PRODUTOSALDO.PRODIC' +
        'OD)'
      '  left join UNIDADE on (PRODUTO.UNIDICOD = UNIDADE.UNIDICOD)'
      'where'
      '  %MEmpresa and'
      '  PRODUTO.PRODA2TIPOITEM = '#39'00'#39' and'
      '  PRODUTO.PRODCSERVICO = '#39'N'#39' and'
      '  PRODUTO.PRODCATIVO = '#39'S'#39' and'
      '  (PRODUTOSALDO.PSLDN3QTDE<PRODUTOSALDO.PSLDN3QTDMIN)'
      'order by'
      '  %MOrdem  '
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
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 421
    Top = 5
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLProdutoSALDOATUAL: TBCDField
      FieldName = 'SALDOATUAL'
      Precision = 15
      Size = 3
    end
    object SQLProdutoMINIMO: TBCDField
      FieldName = 'MINIMO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoMAXIMO: TBCDField
      FieldName = 'MAXIMO'
      Precision = 15
      Size = 3
    end
  end
  object Report: TppReport
    AutoStop = False
    DataPipeline = Pipe
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ReportPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 505
    Top = 5
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'Pipe'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 21431
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 30163
        mmTop = 21431
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 21431
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Est.M'#237'nimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 145521
        mmTop = 21431
        mmWidth = 14224
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 25400
        mmWidth = 172509
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Un.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 21431
        mmWidth = 5556
        BandType = 0
      end
      object NomeEmpresa: TppLabel
        UserName = 'NomeEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 12171
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Produtos Abaixo do Estoque M'#237'nimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 12965
        mmTop = 5292
        mmWidth = 68665
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Est.M'#225'ximo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 170392
        mmTop = 21431
        mmWidth = 14817
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODA60DESCR'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 0
        mmWidth = 82815
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SALDOATUAL'
        DataPipeline = Pipe
        DisplayFormat = '##0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MINIMO'
        DataPipeline = Pipe
        DisplayFormat = '##0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4233
        mmLeft = 142875
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'UNIDA5DESCR'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4233
        mmLeft = 111654
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MAXIMO'
        DataPipeline = Pipe
        DisplayFormat = '##0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 0
        mmWidth = 17305
        BandType = 4
      end
      object ppCODPROD: TppDBText
        UserName = 'CODPROD'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODICOD'
        DataPipeline = Pipe
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4233
        mmLeft = 12435
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
    end
  end
  object dsProduto: TDataSource
    DataSet = SQLProduto
    Left = 449
    Top = 5
  end
  object Pipe: TppBDEPipeline
    DataSource = dsProduto
    UserName = 'Pipe'
    Left = 477
    Top = 5
    object PipeppField1: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeppField2: TppField
      FieldAlias = 'PRODA60DESCR'
      FieldName = 'PRODA60DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeppField3: TppField
      FieldAlias = 'PRODN3VLRVENDA'
      FieldName = 'PRODN3VLRVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeppField4: TppField
      FieldAlias = 'PRODN3VLRCOMPRA'
      FieldName = 'PRODN3VLRCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeppField5: TppField
      FieldAlias = 'PRODN3VLRCUSTO'
      FieldName = 'PRODN3VLRCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeppField6: TppField
      FieldAlias = 'UNIDA5DESCR'
      FieldName = 'UNIDA5DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeppField7: TppField
      FieldAlias = 'SALDOATUAL'
      FieldName = 'SALDOATUAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeppField8: TppField
      FieldAlias = 'MINIMO'
      FieldName = 'MINIMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeppField9: TppField
      FieldAlias = 'MAXIMO'
      FieldName = 'MAXIMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
end
