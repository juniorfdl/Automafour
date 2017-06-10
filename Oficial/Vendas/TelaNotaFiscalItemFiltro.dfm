inherited FormTelaNotaFiscalitemFiltro: TFormTelaNotaFiscalitemFiltro
  Left = 348
  Top = 94
  ClientHeight = 581
  ClientWidth = 795
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Width = 795
    Height = 501
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 795
      Height = 59
      Align = alTop
      Color = 15199218
      TabOrder = 0
      object GroupFiltro: TGroupBox
        Left = 1
        Top = 1
        Width = 793
        Height = 57
        Align = alClient
        Caption = ' Filtrar Por '
        Color = 12572888
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label9: TLabel
          Left = 124
          Top = 15
          Width = 107
          Height = 13
          Caption = 'Nota Fiscal N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 20
          Top = 15
          Width = 29
          Height = 13
          Caption = 'S'#233'rie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbFornecedor: TLabel
          Left = 247
          Top = 15
          Width = 58
          Height = 13
          Caption = 'Chave NFe'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label1: TLabel
          Left = 622
          Top = 15
          Width = 102
          Height = 13
          Caption = '% Perc.Desc.Item'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditNota: TEdit
          Left = 121
          Top = 28
          Width = 113
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 1
        end
        object ComboSerie: TRxDBLookupCombo
          Left = 16
          Top = 28
          Width = 95
          Height = 20
          DropDownCount = 8
          Ctl3D = True
          LookupField = 'SERIA5COD'
          LookupDisplay = 'SERIA5COD'
          LookupSource = DSSQLSerie
          ParentCtl3D = False
          TabOrder = 0
        end
        object EditChave: TEdit
          Left = 244
          Top = 28
          Width = 320
          Height = 21
          CharCase = ecUpperCase
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
        end
        object EditDesconto: TCurrencyEdit
          Left = 619
          Top = 28
          Width = 122
          Height = 21
          Hint = 'Aplicar Desconto Percentual em cada item a ser importado!'
          AutoSize = False
          DisplayFormat = '0.00'
          TabOrder = 3
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 59
      Width = 795
      Height = 442
      Align = alClient
      Color = 12572888
      TabOrder = 1
      object GroupBox3: TGroupBox
        Left = 1
        Top = 1
        Width = 793
        Height = 411
        Align = alTop
        Caption = ' Produtos Relacionados na Nota Fiscal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 789
          Height = 394
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          DataSource = DSTblTemporaria
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnEnter = GridProdutosFiltradosEnter
          OnExit = GridProdutosFiltradosExit
          Columns = <
            item
              Expanded = False
              FieldName = 'PRODICOD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODA60DESCR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 369
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDENFOrigem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 92
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clYellow
              Expanded = False
              FieldName = 'PRODN3VLRVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Vlr Venda Origem'
              Visible = True
            end
            item
              Color = clYellow
              Expanded = False
              FieldName = 'QTDENFDest'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Qtde Prox NF'
              Width = 89
              Visible = True
            end>
        end
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 795
    inherited PanelCabecalho: TPanel
      Width = 795
      inherited PanelNavigator: TPanel
        Width = 795
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 795
          inherited BtnFecharTela: TSpeedButton
            Left = 678
          end
        end
        object BTFiltrar: TBitBtn
          Left = 24
          Top = 3
          Width = 105
          Height = 28
          Caption = '&Filtrar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BTFiltrarClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object BTGravar: TBitBtn
          Left = 144
          Top = 3
          Width = 105
          Height = 28
          Caption = '&Gravar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ModalResult = 1
          ParentFont = False
          TabOrder = 1
          Glyph.Data = {
            96010000424D9601000000000000760000002800000018000000180000000100
            0400000000002001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFF
            FFF0676F700FFFFFFFFFFFFFFF06778F88700FFFFFFFFFFFFF0876F078F8700F
            FFFFFFFFF07778F68FF877000FFFFFFFF087768FFFF867600FFFFFFF077FF776
            8FF776700FFFFFFF08FF7FF776067670FFFFFFF077FF700FF7766700FFFFFFF0
            8FF7F8300FF7770FFFFFFF078FF7FF0870FF700FFFFFFF0888FF7FF0870F70FF
            FFFFFFF00788FFFF087000FFFFFFFFFFF00888FFF0870FFFFFFFFFFFFFF00888
            FF0870FFFFFFFFFFFFFFF0088F70870FFFFFFFFFFFFFFFF007000870FFFFFFFF
            FFFFFFFFF00FF0870FFFFFFFFFFFFFFFFFFFFF080FFFFFFFFFFFFFFFFFFFFFF0
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
    end
  end
  object DSTblTemporaria: TDataSource
    DataSet = TblTemporaria
    Left = 342
    Top = 5
  end
  object TblTemporaria: TTable
    AutoCalcFields = False
    OnNewRecord = TblTemporariaNewRecord
    DatabaseName = 'Easy_Temp'
    TableName = 'NotaFiscalProdutosFiltrados.DB'
    Left = 314
    Top = 5
    object TblTemporariaPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTemporariaPRODN3VLRVENDA: TFloatField
      DisplayLabel = 'Vlr.Venda'
      FieldName = 'PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00'
    end
    object TblTemporariaQTDENFOrigem: TFloatField
      DisplayLabel = 'Qtde.NF Origem'
      FieldName = 'QTDENFOrigem'
    end
    object TblTemporariaQTDENFDest: TFloatField
      DisplayLabel = 'Q.Venda'
      FieldName = 'QTDENFDest'
    end
  end
  object SQLProdutos: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO'
      'where '
      '  (%MProduto)'
      'and'
      '  (%MGrupo) '
      'and '
      '  (%MSubGrupo) '
      'and '
      '  (%MVariacao) '
      'and'
      '  (%MMarca)'
      'order by PRODA60DESCR, PRODA60REFER')
    Macros = <
      item
        DataType = ftString
        Name = 'MProduto'
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
      end>
    Left = 266
    Top = 5
    object SQLProdutosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutosPRODA30CODESTRUT: TStringField
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLProdutosPRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutosPRODA15CODANT: TStringField
      FieldName = 'PRODA15CODANT'
      Origin = 'DB.PRODUTO.PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object SQLProdutosPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutosPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutosPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutosPRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object SQLProdutosPRODA255DESCRTEC: TStringField
      FieldName = 'PRODA255DESCRTEC'
      Origin = 'DB.PRODUTO.PRODA255DESCRTEC'
      FixedChar = True
      Size = 255
    end
    object SQLProdutosPRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.PRODUTO.PRODICODBALANCA'
    end
    object SQLProdutosPRODA15APAVIM: TStringField
      FieldName = 'PRODA15APAVIM'
      Origin = 'DB.PRODUTO.PRODA15APAVIM'
      FixedChar = True
      Size = 15
    end
    object SQLProdutosPRODA15RUA: TStringField
      FieldName = 'PRODA15RUA'
      Origin = 'DB.PRODUTO.PRODA15RUA'
      FixedChar = True
      Size = 15
    end
    object SQLProdutosPRODA15PRATEL: TStringField
      FieldName = 'PRODA15PRATEL'
      Origin = 'DB.PRODUTO.PRODA15PRATEL'
      FixedChar = True
      Size = 15
    end
    object SQLProdutosCLFSICOD: TIntegerField
      FieldName = 'CLFSICOD'
      Origin = 'DB.PRODUTO.CLFSICOD'
    end
    object SQLProdutosMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLProdutosUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutosGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutosGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutosGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLProdutosSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.PRODUTO.SUBGICOD'
    end
    object SQLProdutosVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.PRODUTO.VARIICOD'
    end
    object SQLProdutosICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
    object SQLProdutosPRODN3PESOBRUTO: TFloatField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.PRODUTO.PRODN3PESOBRUTO'
    end
    object SQLProdutosPRODN3PESOLIQ: TFloatField
      FieldName = 'PRODN3PESOLIQ'
      Origin = 'DB.PRODUTO.PRODN3PESOLIQ'
    end
    object SQLProdutosPRODN3CAPACEMBAL: TFloatField
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.PRODUTO.PRODN3CAPACEMBAL'
    end
    object SQLProdutosPRODDCAD: TDateTimeField
      FieldName = 'PRODDCAD'
      Origin = 'DB.PRODUTO.PRODDCAD'
    end
    object SQLProdutosPRODDULTALTER: TDateTimeField
      FieldName = 'PRODDULTALTER'
      Origin = 'DB.PRODUTO.PRODDULTALTER'
    end
    object SQLProdutosPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
    end
    object SQLProdutosPRODN3VLRVENDAPROM: TFloatField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
    end
    object SQLProdutosPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutosPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
    object SQLProdutosPRODN3VLRCOMPRA: TFloatField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
    end
    object SQLProdutosPRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
    end
    object SQLProdutosPRODN3VLRCUSTOMED: TFloatField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
    end
    object SQLProdutosPRODN3PERCIPI: TFloatField
      FieldName = 'PRODN3PERCIPI'
      Origin = 'DB.PRODUTO.PRODN3PERCIPI'
    end
    object SQLProdutosPRODN3PERCMARGLUCR: TFloatField
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUCR'
    end
    object SQLProdutosPRODCATIVO: TStringField
      FieldName = 'PRODCATIVO'
      Origin = 'DB.PRODUTO.PRODCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutosPRODCSERVICO: TStringField
      FieldName = 'PRODCSERVICO'
      Origin = 'DB.PRODUTO.PRODCSERVICO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutosPRODCGERACOMIS: TStringField
      FieldName = 'PRODCGERACOMIS'
      Origin = 'DB.PRODUTO.PRODCGERACOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLProdutosPRODN2COMISVISTA: TFloatField
      FieldName = 'PRODN2COMISVISTA'
      Origin = 'DB.PRODUTO.PRODN2COMISVISTA'
    end
    object SQLProdutosPRODN2COMISPRAZO: TFloatField
      FieldName = 'PRODN2COMISPRAZO'
      Origin = 'DB.PRODUTO.PRODN2COMISPRAZO'
    end
    object SQLProdutosPRODDIMOBOLIZ: TDateTimeField
      FieldName = 'PRODDIMOBOLIZ'
      Origin = 'DB.PRODUTO.PRODDIMOBOLIZ'
    end
    object SQLProdutosPRODICODPAI: TIntegerField
      FieldName = 'PRODICODPAI'
      Origin = 'DB.PRODUTO.PRODICODPAI'
    end
    object SQLProdutosPRODCTIPOBAIXA: TStringField
      FieldName = 'PRODCTIPOBAIXA'
      Origin = 'DB.PRODUTO.PRODCTIPOBAIXA'
      FixedChar = True
      Size = 5
    end
    object SQLProdutosPRODN3QTDEBAIXA: TFloatField
      FieldName = 'PRODN3QTDEBAIXA'
      Origin = 'DB.PRODUTO.PRODN3QTDEBAIXA'
    end
    object SQLProdutosCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutosPRODIORIGEM: TIntegerField
      FieldName = 'PRODIORIGEM'
      Origin = 'DB.PRODUTO.PRODIORIGEM'
    end
    object SQLProdutosPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutosREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTO.REGISTRO'
    end
    object SQLProdutosPRODDULTATUALIZ: TDateTimeField
      FieldName = 'PRODDULTATUALIZ'
      Origin = 'DB.PRODUTO.PRODDULTATUALIZ'
    end
    object SQLProdutosPRODA60DIMENSAO: TStringField
      FieldName = 'PRODA60DIMENSAO'
      Origin = 'DB.PRODUTO.PRODA60DIMENSAO'
      FixedChar = True
      Size = 60
    end
    object SQLProdutosPRODISITTRIB: TIntegerField
      FieldName = 'PRODISITTRIB'
      Origin = 'DB.PRODUTO.PRODISITTRIB'
    end
    object SQLProdutosPRODITIPOPRODBALAN: TStringField
      FieldName = 'PRODITIPOPRODBALAN'
      Origin = 'DB.PRODUTO.PRODITIPOPRODBALAN'
      FixedChar = True
      Size = 15
    end
    object SQLProdutosPRODICODETIQBAL: TIntegerField
      FieldName = 'PRODICODETIQBAL'
      Origin = 'DB.PRODUTO.PRODICODETIQBAL'
    end
    object SQLProdutosPRODIDIASVALIDADE: TIntegerField
      FieldName = 'PRODIDIASVALIDADE'
      Origin = 'DB.PRODUTO.PRODIDIASVALIDADE'
    end
    object SQLProdutosPRODN3VLRCOMPRAMED: TFloatField
      FieldName = 'PRODN3VLRCOMPRAMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRAMED'
    end
    object SQLProdutosPRODN3DOLARCUSTO: TFloatField
      FieldName = 'PRODN3DOLARCUSTO'
      Origin = 'DB.PRODUTO.PRODN3DOLARCUSTO'
    end
    object SQLProdutosPRODN3DOLARCOMPRA: TFloatField
      FieldName = 'PRODN3DOLARCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3DOLARCOMPRA'
    end
    object SQLProdutosPRODN3DOLARVENDA: TFloatField
      FieldName = 'PRODN3DOLARVENDA'
      Origin = 'DB.PRODUTO.PRODN3DOLARVENDA'
    end
    object SQLProdutosPRODBIMAGEM: TBlobField
      FieldName = 'PRODBIMAGEM'
      Origin = 'DB.PRODUTO.PRODBIMAGEM'
      Size = 1
    end
    object SQLProdutosPRODCSUBSTRIB: TStringField
      FieldName = 'PRODCSUBSTRIB'
      Origin = 'DB.PRODUTO.PRODCSUBSTRIB'
      FixedChar = True
      Size = 1
    end
    object SQLProdutosPRODCTEMNROSERIE: TStringField
      FieldName = 'PRODCTEMNROSERIE'
      Origin = 'DB.PRODUTO.PRODCTEMNROSERIE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutosPRODA03GARANTIA: TStringField
      FieldName = 'PRODA03GARANTIA'
      Origin = 'DB.PRODUTO.PRODA03GARANTIA'
      FixedChar = True
      Size = 3
    end
    object SQLProdutosPRODA254COMPQUIMICA: TStringField
      FieldName = 'PRODA254COMPQUIMICA'
      Origin = 'DB.PRODUTO.PRODA254COMPQUIMICA'
      FixedChar = True
      Size = 254
    end
    object SQLProdutosPRODCTIPO: TStringField
      FieldName = 'PRODCTIPO'
      Origin = 'DB.PRODUTO.PRODCTIPO'
      FixedChar = True
      Size = 5
    end
    object SQLProdutosPRODN2PERCFRETE: TFloatField
      FieldName = 'PRODN2PERCFRETE'
      Origin = 'DB.PRODUTO.PRODN2PERCFRETE'
    end
    object SQLProdutosPRODN2PERDA: TFloatField
      FieldName = 'PRODN2PERDA'
      Origin = 'DB.PRODUTO.PRODN2PERDA'
    end
    object SQLProdutosPRODN2PIS: TFloatField
      FieldName = 'PRODN2PIS'
      Origin = 'DB.PRODUTO.PRODN2PIS'
    end
    object SQLProdutosPRODN3ALTURA: TFloatField
      FieldName = 'PRODN3ALTURA'
      Origin = 'DB.PRODUTO.PRODN3ALTURA'
    end
    object SQLProdutosPRODN3COMPRIMENTO: TFloatField
      FieldName = 'PRODN3COMPRIMENTO'
      Origin = 'DB.PRODUTO.PRODN3COMPRIMENTO'
    end
    object SQLProdutosPRODN3DIMENTOTAL: TFloatField
      FieldName = 'PRODN3DIMENTOTAL'
      Origin = 'DB.PRODUTO.PRODN3DIMENTOTAL'
    end
    object SQLProdutosPRODN3LARGURA: TFloatField
      FieldName = 'PRODN3LARGURA'
      Origin = 'DB.PRODUTO.PRODN3LARGURA'
    end
    object SQLProdutosPRODA30INF01ETQBARRAS: TStringField
      FieldName = 'PRODA30INF01ETQBARRAS'
      Origin = 'DB.PRODUTO.PRODA30INF01ETQBARRAS'
      FixedChar = True
      Size = 30
    end
    object SQLProdutosPRODA30INF02ETQBARRAS: TStringField
      FieldName = 'PRODA30INF02ETQBARRAS'
      Origin = 'DB.PRODUTO.PRODA30INF02ETQBARRAS'
      FixedChar = True
      Size = 30
    end
    object SQLProdutosCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
      Origin = 'DB.PRODUTO.COLEICOD'
    end
    object SQLProdutosPRODN2PERCDESP: TFloatField
      FieldName = 'PRODN2PERCDESP'
      Origin = 'DB.PRODUTO.PRODN2PERCDESP'
    end
    object SQLProdutosPRODN2PERCSUBST: TFloatField
      FieldName = 'PRODN2PERCSUBST'
      Origin = 'DB.PRODUTO.PRODN2PERCSUBST'
    end
    object SQLProdutosPRODN2PERCDESC1: TFloatField
      FieldName = 'PRODN2PERCDESC1'
      Origin = 'DB.PRODUTO.PRODN2PERCDESC1'
    end
    object SQLProdutosPRODN2PERCDESC2: TFloatField
      FieldName = 'PRODN2PERCDESC2'
      Origin = 'DB.PRODUTO.PRODN2PERCDESC2'
    end
    object SQLProdutosPRODN2PERCDESC3: TFloatField
      FieldName = 'PRODN2PERCDESC3'
      Origin = 'DB.PRODUTO.PRODN2PERCDESC3'
    end
    object SQLProdutosPRODN2PERCDESC4: TFloatField
      FieldName = 'PRODN2PERCDESC4'
      Origin = 'DB.PRODUTO.PRODN2PERCDESC4'
    end
    object SQLProdutosPRODN2PERCDESC5: TFloatField
      FieldName = 'PRODN2PERCDESC5'
      Origin = 'DB.PRODUTO.PRODN2PERCDESC5'
    end
    object SQLProdutosPRODN2PERCAUME1: TFloatField
      FieldName = 'PRODN2PERCAUME1'
      Origin = 'DB.PRODUTO.PRODN2PERCAUME1'
    end
    object SQLProdutosPRODN2PERCAUME2: TFloatField
      FieldName = 'PRODN2PERCAUME2'
      Origin = 'DB.PRODUTO.PRODN2PERCAUME2'
    end
    object SQLProdutosPRODN2PERCAUME3: TFloatField
      FieldName = 'PRODN2PERCAUME3'
      Origin = 'DB.PRODUTO.PRODN2PERCAUME3'
    end
    object SQLProdutosPRODN2PERCAUME4: TFloatField
      FieldName = 'PRODN2PERCAUME4'
      Origin = 'DB.PRODUTO.PRODN2PERCAUME4'
    end
    object SQLProdutosPRODN2PERCAUME5: TFloatField
      FieldName = 'PRODN2PERCAUME5'
      Origin = 'DB.PRODUTO.PRODN2PERCAUME5'
    end
    object SQLProdutosDECRICOD: TIntegerField
      FieldName = 'DECRICOD'
      Origin = 'DB.PRODUTO.DECRICOD'
    end
    object SQLProdutosPRODN2VLRVENDA2: TFloatField
      FieldName = 'PRODN2VLRVENDA2'
      Origin = 'DB.PRODUTO.PRODN2VLRVENDA2'
    end
    object SQLProdutosPRODN3PERCMARGLUC2: TFloatField
      FieldName = 'PRODN3PERCMARGLUC2'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUC2'
    end
    object SQLProdutosPRODN3PERCMGLVFIXA: TFloatField
      FieldName = 'PRODN3PERCMGLVFIXA'
      Origin = 'DB.PRODUTO.PRODN3PERCMGLVFIXA'
    end
    object SQLProdutosPRODN3PERCMGLAFIXA: TFloatField
      FieldName = 'PRODN3PERCMGLAFIXA'
      Origin = 'DB.PRODUTO.PRODN3PERCMGLAFIXA'
    end
    object SQLProdutosPRODDULTCOMPRA: TDateTimeField
      FieldName = 'PRODDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODDULTCOMPRA'
    end
    object SQLProdutosPRODDULTVENDA: TDateTimeField
      FieldName = 'PRODDULTVENDA'
      Origin = 'DB.PRODUTO.PRODDULTVENDA'
    end
    object SQLProdutosPRODN3QTDULTCOMPRA: TFloatField
      FieldName = 'PRODN3QTDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3QTDULTCOMPRA'
    end
  end
  object SQLSerie: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'SERIA5COD, EMPRICOD'
      'From'
      'Serie')
    Macros = <>
    Left = 184
    Top = 5
    object SQLSerieSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLSerieEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.SERIE.EMPRICOD'
    end
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 156
    Top = 5
  end
end
