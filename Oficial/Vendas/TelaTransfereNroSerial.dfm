inherited FormTelaTransfereNroSerial: TFormTelaTransfereNroSerial
  Left = 218
  Top = 114
  Caption = 'Transfere Nro Serial para outro Produto'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      object Label1: TLabel [0]
        Left = 29
        Top = 27
        Width = 284
        Height = 13
        Caption = 'Informe o Nro Serial para que o sistema localize...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 29
        Top = 157
        Width = 338
        Height = 13
        Caption = 'Informe o produto em que ser'#225' inserido o Nro Serial Atual...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelBarra: TPanel
        Width = 0
      end
      object EditCodSerial: TEdit
        Left = 27
        Top = 41
        Width = 291
        Height = 21
        TabOrder = 1
      end
      object ComboProduto: TRxDBLookupCombo
        Left = 26
        Top = 171
        Width = 679
        Height = 21
        DropDownCount = 8
        DropDownWidth = 500
        DisplayAllFields = True
        FieldsDelimiter = '/'
        ListStyle = lsDelimited
        LookupField = 'PRODICOD'
        LookupDisplay = 'PRODICOD;PRODA60DESCR'
        LookupSource = DSSQLProdutoAux
        TabOrder = 2
      end
      object EditDescProduto: TEdit
        Left = 27
        Top = 67
        Width = 678
        Height = 25
        TabStop = False
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object BTProcurar: TBitBtn
        Left = 322
        Top = 38
        Width = 75
        Height = 25
        Caption = '&Procurar'
        TabOrder = 4
        OnClick = BTProcurarClick
        Kind = bkOK
      end
      object BTTrocar: TBitBtn
        Left = 239
        Top = 198
        Width = 239
        Height = 25
        Caption = '&Trocar Serial'
        TabOrder = 5
        OnClick = BTTrocarClick
        Kind = bkOK
      end
    end
  end
  object SQLProdutoSerie: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from ProdutoSerie'
      'Where (%Filtro) and PRSECSTATUS = "D"')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 511
    Top = 15
    object SQLProdutoSeriePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSERIE.PRODICOD'
    end
    object SQLProdutoSeriePRSEA60NROSERIE: TStringField
      FieldName = 'PRSEA60NROSERIE'
      Origin = 'DB.PRODUTOSERIE.PRSEA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoSerieEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSERIE.EMPRICOD'
    end
    object SQLProdutoSerieEMPRICODDEST: TIntegerField
      FieldName = 'EMPRICODDEST'
      Origin = 'DB.PRODUTOSERIE.EMPRICODDEST'
    end
    object SQLProdutoSerieFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.PRODUTOSERIE.FORNICOD'
    end
    object SQLProdutoSerieCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PRODUTOSERIE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.PRODUTOSERIE.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.PRODUTOSERIE.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.PRODUTOSERIE.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSeriePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PRODUTOSERIE.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieOSA13ID: TStringField
      FieldName = 'OSA13ID'
      Origin = 'DB.PRODUTOSERIE.OSA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      Origin = 'DB.PRODUTOSERIE.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSeriePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoSerieREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSERIE.REGISTRO'
    end
    object SQLProdutoSeriePRSECSTATUS: TStringField
      FieldName = 'PRSECSTATUS'
      Origin = 'DB.PRODUTOSERIE.PRSECSTATUS'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLProdutoAux: TDataSource
    DataSet = SQLProdutoAux
    Left = 636
    Top = 14
  end
  object SQLProdutoAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'PRODICOD,'
      'PRODA60DESCR,'
      'PRODCTEMNROSERIE'
      'from '
      'PRODUTO'
      'where'
      'PRODCTEMNROSERIE = "S"'
      'order by'
      'PRODICOD')
    Macros = <>
    Left = 664
    Top = 14
    object SQLProdutoAuxPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoAuxPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoAuxPRODCTEMNROSERIE: TStringField
      FieldName = 'PRODCTEMNROSERIE'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
