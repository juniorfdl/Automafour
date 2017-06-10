inherited FormTelaExportacaoBalanca: TFormTelaExportacaoBalanca
  Left = 326
  Top = 69
  Height = 572
  Caption = 'Exporta'#231#227'o de Produtos para Balan'#231'a'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 534
    inherited PanelCentral: TPanel
      Height = 450
      object Label3: TLabel [0]
        Left = 13
        Top = 17
        Width = 99
        Height = 13
        Caption = 'Escolha a Balan'#231'a'
        FocusControl = ComboBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LBCaminhoArquivo: TLabel [1]
        Left = 13
        Top = 58
        Width = 186
        Height = 13
        Caption = 'Caminho do arquivo a ser gerado'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel [2]
        Left = 17
        Top = 372
        Width = 66
        Height = 13
        Caption = 'Progresso...'
        FocusControl = ComboBalanca
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelBarra: TPanel
        Width = 0
        Height = 450
      end
      object ComboBalanca: TRxDBLookupCombo
        Left = 11
        Top = 32
        Width = 512
        Height = 21
        DropDownCount = 8
        LookupField = 'CFBLICOD'
        LookupDisplay = 'CFBLA60DESCR'
        LookupSource = DSSQLConfigBalanca
        TabOrder = 1
        OnChange = ComboBalancaChange
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 161
        Width = 513
        Height = 201
        Caption = ' Configura'#231#227'o Atual da Balan'#231'a Selecionada '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object GridConfig: TDBGrid
          Left = 2
          Top = 15
          Width = 509
          Height = 184
          Align = alClient
          DataSource = DSTeste
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'CBLAIORDEM'
              Title.Caption = 'Ordem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CBLAA25CAMPO'
              Title.Caption = 'Campo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CBLAIPOSICAO'
              Title.Caption = 'Posi'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CBLAITAMANHO'
              Title.Caption = 'Tamanho'
              Visible = True
            end>
        end
      end
      object DBEditCaminhoArquivo: TDBEdit
        Left = 12
        Top = 72
        Width = 510
        Height = 21
        TabStop = False
        Color = 16249066
        DataField = 'CFBLA254NOMEARQTXT'
        DataSource = DSSQLConfigBalanca
        ReadOnly = True
        TabOrder = 3
      end
      object CKToledoGrupoGeral: TCheckBox
        Left = 13
        Top = 104
        Width = 372
        Height = 17
        Caption = 'Colocar 01 na primeira coluna do TXT, para Grupo Geral Toledo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object ckTestaPesoUnidade: TCheckBox
        Left = 14
        Top = 122
        Width = 372
        Height = 17
        Caption = 'Testar Peso ou Unidade pelo cadastro do Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object ProgressBar: TProgressBar
        Left = 14
        Top = 387
        Width = 510
        Height = 15
        TabOrder = 6
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            object BtGerar: TSpeedButton
              Tag = 3
              Left = 19
              Top = 3
              Width = 141
              Height = 27
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Gerar Arquivo'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C0000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF0000000000
                00CF3000CF3000CF3000CF3000CF3000CF3000CF3000000000000000FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CF0000000097CF0097FF006790000000006700006700003000FF30
                2FFF302FFF302FFF302FFF302FFF302FCF3000FF302FCF300000300000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0000000097FF00679000000000670000972F00972F00972F0030
                00FF302FFF302FFF672FFF672FFF302FFF302FFF302F00300000672F003000CF
                3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0000000067900000000067002FC82F00972F2FC82F00972F0097
                2F003000FF302FFF672FFF302FFF672FFF302FFF302F00300060C82F003000CF
                3000CF3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0097CF00000000670060FF2F2FC82F2FC82F2FC82F00972F2FC8
                2F00972F003000FF672FFF672FFF672FFF672FFF672FFF672FFF302FFF302F00
                300000672F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0097FF0097CF0000002FC82F60FF2F2FC82F2FC82F2FC82F0097
                2F00972F003000FF672FFF672FFF672FFF672FFF672FFF302FFF302F00300000
                7F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CF00C8FF0097FF0097CF0000002FC82F2FC82F60FF2F2FC82F2FC8
                2F00972F00972F003000FF672FFF672FFF672FFF672FFF302F00300000972F00
                7F00007F00007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CFCFFFFF00C8FF0097FF0097CF00000060FF2F2FC82F2FC82F2FC8
                2F00972F00972F003000FF672F00000000000000000000000000000000000000
                0000000000007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0097CF90FFFF00C8FF0097FF0097CF0000002FC82F00972F7F7F
                00000000FF9700FF672FFF672F0097CF00C8FF00C8FF0097FF0097FF0097FF00
                000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000067000000
                00000000FF9700FF9700FF97000097CF90FFFF00C8FF00C8FF0097FF00000000
                7F00007F0000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF2FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000097
                FF000000FF9700FF9700FF97000097CF90FFFF90FFFF00C8FF0097FF0097CF00
                000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A02FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097FF0097
                FF000000FF9700FFC82FFF97000097CF90FFFF90FFFF90FFFF00C8FF0097FF00
                97CF00000000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFCF2FC82F0097CFCFFFFF90FFFF00C8FF00C8FF0097
                FF000000FF9700FFC82FFFC82F0097CF90FFFF0097CFCFFFFF90FFFF00C8FF00
                97FF0097CF00000000972F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFFCF2F676090FFFF90FFFF00C8FF00C8
                FF000000FFC82FFF9700FF97000097CF0097CF00672F0097CFCFFFFF90FFFF00
                C8FF0097FF0097CF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFCFFFFFCF2F676090FFFF90FFFF90FFFF90FFFF00C8
                FF000000FFC82FFFC82FFFC82F0097CFFF9700FF9700FF672F0097CFCFFFFF90
                FFFF00C8FF0097FF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFC8A00097CF0097CF0097CF0097CF0097CF0097CF0097
                CF000000FFC82FFFC82FFFFF2F007F00FFC82F007F0000672F0030000097CFCF
                FFFF90FFFF00C8FF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFF2F00672F2FC82F00972F0067
                2FFFC82FFFC82FFFC82FFF9700FFC82FFF9700FFC82F2FC82F00672F00300000
                97CFCFFFFF90FFFF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFEFC8A0FFFFFF00672F2FC82F2FC82F00972F0097
                2FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFF9700007F002FC82F007F00FF
                672F0097CFCFFFFF90FFFF0097CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00672F60FF2F60FF2F2FC82F00972F0097
                2F00672FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFFC82F007F00FF672FFF
                672FFF672F0097CFCFFFFF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FCFFFCFCFFFCF60FF2F2FC82F2FC8
                2F00972F00972F00672FFFC82F00672F00672FFF672FFF9700FF9700FF9700FF
                672F2F67600067900097CF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FFFFFFFCFFFCF60FF2F60FF
                2F2FC82F00972F00972F00672F00972F00972F00672FFF672FFF9700FF9700FF
                672F00C8FF0097FF00679000C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC82FCFFFCF60FF
                2F60FF2F2FC82F2FC82F2FC82F00972F00972F00972F00672FFF672FFF672F00
                C8FF0097FF0097FF006790006790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC8
                2FCFFFCFFFFFFFCFFFCF60FF2F60FF2F2FC82F2FC82F00972F00672FFFFFFF00
                97CF0097CF0097CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF2FC82F2FC82F2FC82F2FC82F2FC82F2FC82F2FC82FFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = BtGerarClick
            end
          end
        end
      end
    end
  end
  inherited AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Left = 375
  end
  object TblCampos: TTableItems
    DatabaseName = 'DB'
    TableName = 'Produto'
    Left = 669
    Top = 6
    object TblCamposNAME: TStringField
      FieldName = 'NAME'
      Size = 31
    end
  end
  object DSTblCampos: TDataSource
    DataSet = TblCampos
    Left = 697
    Top = 6
  end
  object SQLConfigBalanca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From ConfigBalanca')
    Macros = <>
    Left = 479
    Top = 5
    object SQLConfigBalancaCFBLICOD: TIntegerField
      FieldName = 'CFBLICOD'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLICOD'
    end
    object SQLConfigBalancaCFBLA60DESCR: TStringField
      FieldName = 'CFBLA60DESCR'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLConfigBalancaCFBLIDECIMAIS: TIntegerField
      FieldName = 'CFBLIDECIMAIS'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLIDECIMAIS'
    end
    object SQLConfigBalancaCFBLCUSASEPAR: TStringField
      FieldName = 'CFBLCUSASEPAR'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLCUSASEPAR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigBalancaCFBLA1TIPOSEPAR: TStringField
      FieldName = 'CFBLA1TIPOSEPAR'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLA1TIPOSEPAR'
      FixedChar = True
      Size = 1
    end
    object SQLConfigBalancaCFBLA254NOMEARQTXT: TStringField
      FieldName = 'CFBLA254NOMEARQTXT'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLA254NOMEARQTXT'
      FixedChar = True
      Size = 254
    end
    object SQLConfigBalancaCFBLA10BALID: TStringField
      FieldName = 'CFBLA10BALID'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLA10BALID'
      FixedChar = True
      Size = 10
    end
    object SQLConfigBalancaCFBLIBALIDPOS: TIntegerField
      FieldName = 'CFBLIBALIDPOS'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLIBALIDPOS'
    end
    object SQLConfigBalancaCFBLIBALIDTAM: TIntegerField
      FieldName = 'CFBLIBALIDTAM'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLIBALIDTAM'
    end
    object SQLConfigBalancaCFBLIBALCODPOS: TIntegerField
      FieldName = 'CFBLIBALCODPOS'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLIBALCODPOS'
    end
    object SQLConfigBalancaCFBLIBALCODTAM: TIntegerField
      FieldName = 'CFBLIBALCODTAM'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLIBALCODTAM'
    end
    object SQLConfigBalancaCFBLIVLRPOS: TIntegerField
      FieldName = 'CFBLIVLRPOS'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLIVLRPOS'
    end
    object SQLConfigBalancaCFBLIVLRTAM: TIntegerField
      FieldName = 'CFBLIVLRTAM'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLIVLRTAM'
    end
    object SQLConfigBalancaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'UNITGESTAO.CONFIGBALANCA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigBalancaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'UNITGESTAO.CONFIGBALANCA.REGISTRO'
    end
    object SQLConfigBalancaCFBLCTIPOPRECO: TStringField
      FieldName = 'CFBLCTIPOPRECO'
      Origin = 'UNITGESTAO.CONFIGBALANCA.CFBLCTIPOPRECO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLConfigBalancaLayoutArq: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CONFIGBALANCALAYOUTARQ'
      'Where (%MFiltro)'
      'Order By CBLAIPOSICAO')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 511
    Top = 5
    object SQLConfigBalancaLayoutArqCFBLICOD: TIntegerField
      FieldName = 'CFBLICOD'
      Origin = 'UNITGESTAO.CONFIGBALANCALAYOUTARQ.CFBLICOD'
    end
    object SQLConfigBalancaLayoutArqCBLAIORDEM: TIntegerField
      FieldName = 'CBLAIORDEM'
      Origin = 'UNITGESTAO.CONFIGBALANCALAYOUTARQ.CBLAIORDEM'
    end
    object SQLConfigBalancaLayoutArqCBLAA25CAMPO: TStringField
      FieldName = 'CBLAA25CAMPO'
      Origin = 'UNITGESTAO.CONFIGBALANCALAYOUTARQ.CBLAA25CAMPO'
      FixedChar = True
      Size = 25
    end
    object SQLConfigBalancaLayoutArqCBLAIPOSICAO: TIntegerField
      FieldName = 'CBLAIPOSICAO'
      Origin = 'UNITGESTAO.CONFIGBALANCALAYOUTARQ.CBLAIPOSICAO'
    end
    object SQLConfigBalancaLayoutArqCBLAITAMANHO: TIntegerField
      FieldName = 'CBLAITAMANHO'
      Origin = 'UNITGESTAO.CONFIGBALANCALAYOUTARQ.CBLAITAMANHO'
    end
    object SQLConfigBalancaLayoutArqPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'UNITGESTAO.CONFIGBALANCALAYOUTARQ.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigBalancaLayoutArqREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'UNITGESTAO.CONFIGBALANCALAYOUTARQ.REGISTRO'
    end
  end
  object DSSQLConfigBalanca: TDataSource
    DataSet = SQLConfigBalanca
    Left = 447
    Top = 5
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Produto Where PRODICODBALANCA is not null')
    Macros = <>
    Left = 581
    Top = 5
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
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.PRODUTO.PRODICODBALANCA'
    end
    object SQLProdutoPRODA15APAVIM: TStringField
      FieldName = 'PRODA15APAVIM'
      Origin = 'DB.PRODUTO.PRODA15APAVIM'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA15RUA: TStringField
      FieldName = 'PRODA15RUA'
      Origin = 'DB.PRODUTO.PRODA15RUA'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA15PRATEL: TStringField
      FieldName = 'PRODA15PRATEL'
      Origin = 'DB.PRODUTO.PRODA15PRATEL'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoCLFSICOD: TIntegerField
      FieldName = 'CLFSICOD'
      Origin = 'DB.PRODUTO.CLFSICOD'
    end
    object SQLProdutoMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLProdutoUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
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
    object SQLProdutoICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
    object SQLProdutoPRODN3PESOBRUTO: TBCDField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.PRODUTO.PRODN3PESOBRUTO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3PESOLIQ: TBCDField
      FieldName = 'PRODN3PESOLIQ'
      Origin = 'DB.PRODUTO.PRODN3PESOLIQ'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3CAPACEMBAL: TBCDField
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.PRODUTO.PRODN3CAPACEMBAL'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODDCAD: TDateTimeField
      FieldName = 'PRODDCAD'
      Origin = 'DB.PRODUTO.PRODDCAD'
    end
    object SQLProdutoPRODDULTALTER: TDateTimeField
      FieldName = 'PRODDULTALTER'
      Origin = 'DB.PRODUTO.PRODDULTALTER'
    end
    object SQLProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDAPROM: TBCDField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutoPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
    object SQLProdutoPRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRCUSTOMED: TBCDField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3PERCIPI: TBCDField
      FieldName = 'PRODN3PERCIPI'
      Origin = 'DB.PRODUTO.PRODN3PERCIPI'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3PERCMARGLUCR: TBCDField
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUCR'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODCATIVO: TStringField
      FieldName = 'PRODCATIVO'
      Origin = 'DB.PRODUTO.PRODCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCSERVICO: TStringField
      FieldName = 'PRODCSERVICO'
      Origin = 'DB.PRODUTO.PRODCSERVICO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCGERACOMIS: TStringField
      FieldName = 'PRODCGERACOMIS'
      Origin = 'DB.PRODUTO.PRODCGERACOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODN2COMISVISTA: TBCDField
      FieldName = 'PRODN2COMISVISTA'
      Origin = 'DB.PRODUTO.PRODN2COMISVISTA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN2COMISPRAZO: TBCDField
      FieldName = 'PRODN2COMISPRAZO'
      Origin = 'DB.PRODUTO.PRODN2COMISPRAZO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODDIMOBOLIZ: TDateTimeField
      FieldName = 'PRODDIMOBOLIZ'
      Origin = 'DB.PRODUTO.PRODDIMOBOLIZ'
    end
    object SQLProdutoPRODICODPAI: TIntegerField
      FieldName = 'PRODICODPAI'
      Origin = 'DB.PRODUTO.PRODICODPAI'
    end
    object SQLProdutoPRODCTIPOBAIXA: TStringField
      FieldName = 'PRODCTIPOBAIXA'
      Origin = 'DB.PRODUTO.PRODCTIPOBAIXA'
      FixedChar = True
      Size = 5
    end
    object SQLProdutoPRODN3QTDEBAIXA: TBCDField
      FieldName = 'PRODN3QTDEBAIXA'
      Origin = 'DB.PRODUTO.PRODN3QTDEBAIXA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutoPRODIORIGEM: TIntegerField
      FieldName = 'PRODIORIGEM'
      Origin = 'DB.PRODUTO.PRODIORIGEM'
    end
    object SQLProdutoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTO.REGISTRO'
    end
    object SQLProdutoPRODDULTATUALIZ: TDateTimeField
      FieldName = 'PRODDULTATUALIZ'
      Origin = 'DB.PRODUTO.PRODDULTATUALIZ'
    end
    object SQLProdutoPRODA60DIMENSAO: TStringField
      FieldName = 'PRODA60DIMENSAO'
      Origin = 'DB.PRODUTO.PRODA60DIMENSAO'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODISITTRIB: TIntegerField
      FieldName = 'PRODISITTRIB'
      Origin = 'DB.PRODUTO.PRODISITTRIB'
    end
    object SQLProdutoPRODICODETIQBAL: TIntegerField
      FieldName = 'PRODICODETIQBAL'
      Origin = 'DB.PRODUTO.PRODICODETIQBAL'
    end
    object SQLProdutoPRODIDIASVALIDADE: TIntegerField
      FieldName = 'PRODIDIASVALIDADE'
      Origin = 'DB.PRODUTO.PRODIDIASVALIDADE'
    end
    object SQLProdutoPRODITIPOPRODBALAN: TStringField
      FieldName = 'PRODITIPOPRODBALAN'
      Origin = 'DB.PRODUTO.PRODITIPOPRODBALAN'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODA255DESCRTEC: TMemoField
      FieldName = 'PRODA255DESCRTEC'
      Origin = 'DB.PRODUTO.PRODA255DESCRTEC'
      BlobType = ftMemo
      Size = 2000
    end
    object SQLProdutoPRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
  end
  object DSTeste: TDataSource
    DataSet = SQLConfigBalancaLayoutArq
    Left = 552
    Top = 5
  end
  object FormStorage: TFormStorage
    StoredProps.Strings = (
      'CKToledoGrupoGeral.Checked'
      'ckTestaPesoUnidade.Checked')
    StoredValues = <>
    Left = 298
    Top = 5
  end
end
