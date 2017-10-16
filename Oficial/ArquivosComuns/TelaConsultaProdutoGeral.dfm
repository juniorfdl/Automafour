inherited FormTelaConsultaProdutoGeral: TFormTelaConsultaProdutoGeral
  Left = 242
  Top = 133
  Caption = 'Consulta de Produtos'
  ClientHeight = 497
  ClientWidth = 972
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Width = 972
    Height = 417
    object PanelProcura: TPanel
      Left = 0
      Top = 0
      Width = 972
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Color = 16249066
      TabOrder = 0
      object LabelValorProcura: TLabel
        Left = 10
        Top = 4
        Width = 124
        Height = 13
        Caption = 'Procura por Descri'#231#227'o'
        FocusControl = EditDescr
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 319
        Top = 17
        Width = 13
        Height = 19
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 338
        Top = 4
        Width = 105
        Height = 13
        Caption = 'Refer'#234'ncia F'#225'brica'
        FocusControl = EditRef
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditDescr: TMaskEdit
        Left = 5
        Top = 17
        Width = 312
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object EditRef: TMaskEdit
        Left = 333
        Top = 17
        Width = 194
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnKeyDown = EditRefKeyDown
      end
    end
    object DBGridLista: TDBGrid
      Left = 0
      Top = 47
      Width = 972
      Height = 370
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataSource = DSTemplate
      FixedColor = 10053171
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnKeyDown = DBGridListaKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODICOD'
          Title.Caption = 'Cd.Interno'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODA60DESCR'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 363
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TAMANHOLOOKUP'
          Title.Caption = 'Tam'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CorLookup'
          Title.Caption = 'Cor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODA60REFER'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MarcaLookup'
          Title.Caption = 'Marca'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODN3VLRCOMPRA'
          Title.Caption = 'Vlr.Compra'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRODN3VLRVENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Venda'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end>
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 972
    inherited PanelCabecalho: TPanel
      Width = 972
      inherited PanelNavigator: TPanel
        Width = 972
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 972
          inherited BtnFecharTela: TSpeedButton
            Left = 731
          end
        end
      end
    end
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLProduto
    Left = 195
    Top = 6
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * '
      'from PRODUTO '
      'where PRODCATIVO = '#39'S'#39' and (PRODICOD=PRODIAGRUPGRADE)'
      'order by '
      '  PRODA60DESCR, PRODA60REFER')
    Macros = <>
    Left = 167
    Top = 6
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA30CODESTRUT: TStringField
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA15CODANT: TStringField
      FieldName = 'PRODA15CODANT'
      Origin = 'DB.PRODUTO.PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCRI'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA30ADESCRREDUZ: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODN3PESOBRUTO: TFloatField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.PRODUTO.PRODN3PESOBRUTO'
    end
    object SQLProdutoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoTAMANHOLOOKUP: TStringField
      FieldKind = fkLookup
      FieldName = 'TAMANHOLOOKUP'
      LookupDataSet = SQLGradeTamanho
      LookupKeyFields = 'GRADICOD;GRTMICOD'
      LookupResultField = 'GRTMA5DESCR'
      KeyFields = 'GRADICOD;GRTMICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutoPRODN3PESOLIQ: TFloatField
      FieldName = 'PRODN3PESOLIQ'
      Origin = 'DB.PRODUTO.PRODN3PESOLIQ'
    end
    object SQLProdutoPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00 '
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODN3CAPACEMBAL: TFloatField
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.PRODUTO.PRODN3CAPACEMBAL'
    end
    object SQLProdutoMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLProdutoPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutoPRODN3VLRVENDAPROM: TFloatField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
      DisplayFormat = '#,##0.00 '
    end
    object SQLProdutoPRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.PRODUTO.PRODICODBALANCA'
    end
    object SQLProdutoMarcaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'MarcaLookup'
      LookupDataSet = SQLMarca
      LookupKeyFields = 'MARCICOD'
      LookupResultField = 'MARCA60DESCR'
      KeyFields = 'MARCICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoCorLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CorLookup'
      LookupDataSet = SQLCOR
      LookupKeyFields = 'CORICOD'
      LookupResultField = 'CORA30DESCR'
      KeyFields = 'CORICOD'
      Size = 30
      Lookup = True
    end
    object SQLProdutoGrupoLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'GrupoLookup'
      LookupDataSet = TblGrupo
      LookupKeyFields = 'GRUPICOD'
      LookupResultField = 'GRUPA60DESCR'
      KeyFields = 'GRUPICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLProdutoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.PRODUTO.SUBGICOD'
    end
    object SQLProdutoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.PRODUTO.VARIICOD'
    end
    object SQLProdutoSubGrupoLookup: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'SubGrupoLookup'
      LookupDataSet = TblSubGrupo
      LookupKeyFields = 'GRUPICOD;SUBGICOD'
      LookupResultField = 'SUBGA60DESCR'
      KeyFields = 'GRUPICOD;SUBGICOD'
      Size = 60
      Lookup = True
    end
    object SQLProdutoUnidadeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadeLookup'
      LookupDataSet = TblUnidade
      LookupKeyFields = 'UNIDICOD'
      LookupResultField = 'UNIDA5DESCR'
      KeyFields = 'UNIDICOD'
      Size = 5
      Lookup = True
    end
    object SQLProdutoPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
    object SQLProdutoPRODCSUBSTRIB: TStringField
      FieldName = 'PRODCSUBSTRIB'
      Origin = 'DB.PRODUTO.PRODCSUBSTRIB'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA60DIMENSAO: TStringField
      FieldName = 'PRODA60DIMENSAO'
      Origin = 'DB.PRODUTO.PRODA60DIMENSAO'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODBIMAGEM: TBlobField
      FieldName = 'PRODBIMAGEM'
      Origin = 'DB.PRODUTO.PRODBIMAGEM'
      Size = 1
    end
    object SQLProdutoPRODN3VLRCOMPRA: TFloatField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
    end
    object SQLProdutoPRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
    end
    object SQLProdutoPRODA255DESCRTEC: TMemoField
      FieldName = 'PRODA255DESCRTEC'
      Origin = 'DB.PRODUTO.PRODA255DESCRTEC'
      BlobType = ftMemo
      Size = 2000
    end
  end
  object TblVariacao: TTable
    DatabaseName = 'DB'
    TableName = 'VARIACAO'
    Left = 315
    Top = 6
  end
  object TblSubGrupo: TTable
    DatabaseName = 'DB'
    TableName = 'SUBGRUPO'
    Left = 287
    Top = 6
  end
  object TblGrupo: TTable
    DatabaseName = 'DB'
    TableName = 'GRUPO'
    Left = 259
    Top = 6
  end
  object SQLGradeTamanho: TTable
    DatabaseName = 'DB'
    TableName = 'GRADETAMANHO'
    Left = 407
    Top = 6
  end
  object SQLMarca: TTable
    DatabaseName = 'DB'
    TableName = 'MARCA'
    Left = 379
    Top = 6
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Required = True
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLCOR: TTable
    DatabaseName = 'DB'
    TableName = 'COR'
    Left = 351
    Top = 6
    object SQLCORCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Required = True
    end
    object SQLCORCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object TblUnidade: TTable
    DatabaseName = 'DB'
    TableName = 'UNIDADE'
    Left = 447
    Top = 6
  end
  object dsSQLMarcaCombo: TDataSource
    AutoEdit = False
    DataSet = SQLMarcaCombo
    Left = 539
    Top = 3
  end
  object SQLMarcaCombo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select MARCICOD, MARCA60DESCR from MARCA'
      'Order by MARCA60DESCR')
    Macros = <>
    Left = 568
    Top = 3
  end
end
