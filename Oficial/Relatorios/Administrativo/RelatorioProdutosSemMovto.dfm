inherited FormRelatorioProdutosSemMovto: TFormRelatorioProdutosSemMovto
  Left = 244
  Top = 136
  Caption = 'Produtos sem Movimenta'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Top = 78
      Height = 346
      inherited BtnVisualizar: TSpeedButton
        Left = 143
        Top = 302
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 205
        Width = 407
        Height = 88
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object LabelSubGrupo: TLabel
          Left = 210
          Top = 10
          Width = 54
          Height = 13
          Caption = 'Subgrupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelVariacao: TLabel
          Left = 6
          Top = 47
          Width = 49
          Height = 13
          Caption = 'Varia'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 6
          Top = 10
          Width = 34
          Height = 13
          Caption = 'Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 210
          Top = 47
          Width = 35
          Height = 13
          Caption = 'Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboSubGrupo: TRxDBLookupCombo
          Left = 210
          Top = 24
          Width = 195
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGICOD'
          Enabled = False
          LookupField = 'SUBGICOD'
          LookupDisplay = 'SUBGA60DESCR'
          LookupSource = DSSQLSubgrupo
          TabOrder = 1
          OnKeyDown = ComboSubGrupoKeyDown
        end
        object ComboVariacao: TRxDBLookupCombo
          Left = 6
          Top = 62
          Width = 195
          Height = 21
          DropDownCount = 8
          DataField = 'VARIICOD'
          Enabled = False
          LookupField = 'VARIICOD'
          LookupDisplay = 'VARIA60DESCR'
          LookupSource = DSSQLVariacao
          TabOrder = 2
        end
        object ComboGrupo: TRxDBLookupCombo
          Left = 6
          Top = 24
          Width = 195
          Height = 21
          DropDownCount = 8
          DataField = 'GRUPICOD'
          LookupField = 'GRUPICOD'
          LookupDisplay = 'GRUPA60DESCR'
          LookupSource = DSSQLGrupo
          TabOrder = 0
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboMarca: TRxDBLookupCombo
          Left = 210
          Top = 63
          Width = 195
          Height = 21
          DropDownCount = 8
          DataField = 'VARIICOD'
          LookupField = 'MARCICOD'
          LookupDisplay = 'MARCA60DESCR'
          LookupSource = DSSQLMarca
          TabOrder = 3
          OnKeyDown = ComboGrupoKeyDown
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ProdSemMovto'
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaBARRAS: TStringField
      FieldName = 'BARRAS'
      Size = 30
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTemporariaVALORCUSTOUNIT: TFloatField
      FieldName = 'VALORCUSTOUNIT'
    end
    object TblTemporariaVALORVENDAUNIT: TFloatField
      FieldName = 'VALORVENDAUNIT'
    end
  end
  object SQLPRODUTO: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  produto.PRODICOD,'
      '  produto.PRODA60DESCR,'
      '  produto.PRODA60CODBAR,'
      '  produto.PRODN3VLRCUSTO,'
      '  produtosaldo.PSLDN3QTDE'
      'from'
      '  produto'
      
        '  left join produtosaldo on produtosaldo.prodicod = produto.prod' +
        'icod  %MEmpresaSaldo'
      'where'
      '  (%MGrupo) and'
      '  (%MSubGrupo) and'
      '  (%MVariacao) and'
      '  (%MMarca) and'
      '  (PRODUTO.PRODCSERVICO = '#39'N'#39') and'
      '  (PRODUTO.PRODCATIVO = '#39'S'#39') and'
      '  (PRODUTOSALDO.PSLDN3QTDE > 0) and'
      
        '  (prodicod not in (select prodicod from movimentoestoque where ' +
        '%Mdata and %MEmpresa))'
      'order by '
      '  PRODUTO.PRODA60DESCR asc')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresaSaldo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSubGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVariacao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMarca'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Mdata'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 421
    Top = 5
    object SQLPRODUTOPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLPRODUTOPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPRODUTOPRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLPRODUTOPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLPRODUTOPSLDN3QTDE: TBCDField
      FieldName = 'PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Grupo')
    Macros = <>
    Left = 452
    Top = 5
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 480
    Top = 5
  end
  object SQLSubgrupo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'Select * from Subgrupo where'
      'GRUPICOD = :GRUPICOD')
    Macros = <>
    Left = 508
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPICOD'
        ParamType = ptUnknown
      end>
  end
  object DSSQLSubgrupo: TDataSource
    DataSet = SQLSubgrupo
    Left = 536
    Top = 5
  end
  object SQLVariacao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubgrupo
    SQL.Strings = (
      'Select * from Variacao where'
      'GRUPICOD = :GRUPICOD and'
      'SUBGICOD = :SUBGICOD')
    Macros = <>
    Left = 564
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
  end
  object DSSQLVariacao: TDataSource
    DataSet = SQLVariacao
    Left = 592
    Top = 5
  end
  object SQLMarca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Marca')
    Macros = <>
    Left = 620
    Top = 5
  end
  object DSSQLMarca: TDataSource
    DataSet = SQLMarca
    Left = 648
    Top = 5
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = Pipe
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
    Left = 71
    Top = 88
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'Pipe'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Produtos sem Movimenta'#231#227'o no Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6477
        mmLeft = 5292
        mmTop = 1588
        mmWidth = 102193
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 5292
        mmTop = 20638
        mmWidth = 11091
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Codigo de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 17992
        mmTop = 20638
        mmWidth = 27305
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 51329
        mmTop = 20638
        mmWidth = 33782
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 118004
        mmTop = 20638
        mmWidth = 18076
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 144463
        mmTop = 20638
        mmWidth = 12869
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 5292
        mmTop = 25400
        mmWidth = 177536
        BandType = 0
      end
      object lbEmpresa: TppLabel
        UserName = 'lbEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 5556
        mmTop = 10054
        mmWidth = 14139
        BandType = 0
      end
      object lbPeriodo: TppLabel
        UserName = 'lbEmpresa1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 5556
        mmTop = 14552
        mmWidth = 12065
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Custo Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 164571
        mmTop = 20638
        mmWidth = 17568
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODICOD'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3598
        mmLeft = 5292
        mmTop = 794
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODA60CODBAR'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 794
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODA60DESCR'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3704
        mmLeft = 50800
        mmTop = 794
        mmWidth = 65617
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODN3VLRCUSTO'
        DataPipeline = Pipe
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 794
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSLDN3QTDE'
        DataPipeline = Pipe
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 3704
        mmLeft = 140229
        mmTop = 794
        mmWidth = 16933
        BandType = 4
      end
      object ppCustoTotal: TppLabel
        UserName = 'CustoTotal'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CustoTotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 794
        mmWidth = 21696
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 6350
        mmTop = 0
        mmWidth = 176477
        BandType = 7
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CustoTotal ==>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 529
        mmWidth = 21431
        BandType = 7
      end
      object ppCustoTotalGeral: TppLabel
        UserName = 'CustoTotal1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 175948
        mmTop = 529
        mmWidth = 6350
        BandType = 7
      end
    end
  end
  object dsSQLPRODUTO: TDataSource
    DataSet = SQLPRODUTO
    Left = 424
    Top = 37
  end
  object Pipe: TppDBPipeline
    DataSource = dsSQLPRODUTO
    UserName = 'Pipe'
    Left = 40
    Top = 88
    object PipeppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PipeppField2: TppField
      FieldAlias = 'PRODA60DESCR'
      FieldName = 'PRODA60DESCR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object PipeppField3: TppField
      FieldAlias = 'PRODA60CODBAR'
      FieldName = 'PRODA60CODBAR'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object PipeppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODN3VLRCUSTO'
      FieldName = 'PRODN3VLRCUSTO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 3
    end
    object PSLDN3QTDE: TppField
      FieldAlias = 'PSLDN3QTDE'
      FieldName = 'PSLDN3QTDE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 56
    Top = 5
  end
end
