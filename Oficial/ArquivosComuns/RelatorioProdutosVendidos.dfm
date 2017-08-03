inherited FormRelatorioProdutosVendidos: TFormRelatorioProdutosVendidos
  Left = 366
  Top = 66
  Caption = 'Relat'#243'rio de Produtos Vendidos'
  ClientHeight = 614
  ClientWidth = 809
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 598
    Width = 809
  end
  inherited ScrollBox: TScrollBox
    Width = 809
    Height = 598
    inherited PanelCentro: TPanel
      Left = 44
      Top = 119
      Width = 680
      Height = 473
      inherited BtnVisualizar: TSpeedButton
        Left = 540
        Top = 425
        Width = 133
        Caption = '&Visualizar Impress'#227'o'
      end
      object Label7: TLabel [1]
        Left = 14
        Top = 431
        Width = 50
        Height = 13
        Caption = 'Hora:Min'
        FocusControl = Ate
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel [2]
        Left = 123
        Top = 431
        Width = 19
        Height = 13
        Caption = 'a&t'#233
        FocusControl = Ate
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited GroupBox1: TGroupBox
        object CheckPeriodo: TCheckBox
          Left = 244
          Top = 15
          Width = 149
          Height = 17
          Caption = 'Desconsiderar Per'#237'odo'
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 153
        Top = 334
        Width = 264
        Height = 40
        Caption = ' Ordernar por '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object OrdemDescricao: TRadioButton
          Left = 168
          Top = 17
          Width = 76
          Height = 17
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object OrdemCupom: TRadioButton
          Left = 8
          Top = 16
          Width = 61
          Height = 17
          Caption = 'Cupom'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object OrdemCodigo: TRadioButton
          Left = 82
          Top = 16
          Width = 60
          Height = 18
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 425
        Top = 4
        Width = 248
        Height = 199
        Caption = 'Filtros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object LabelSubGrupo: TLabel
          Left = 9
          Top = 47
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
          Left = 9
          Top = 82
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
          Left = 8
          Top = 13
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
          Left = 11
          Top = 117
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
        object Label6: TLabel
          Left = 13
          Top = 152
          Width = 44
          Height = 13
          Caption = 'Cole'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 130
          Top = 151
          Width = 41
          Height = 13
          Caption = 'Cultura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboSubGrupo: TRxDBLookupCombo
          Left = 6
          Top = 60
          Width = 236
          Height = 21
          DropDownCount = 8
          DataField = 'SUBGICOD'
          Enabled = False
          LookupField = 'SUBGICOD'
          LookupDisplay = 'SUBGA60DESCR'
          LookupSource = DSSQLSubGrupo
          TabOrder = 1
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboVariacao: TRxDBLookupCombo
          Left = 6
          Top = 95
          Width = 236
          Height = 21
          DropDownCount = 8
          DataField = 'VARIICOD'
          Enabled = False
          LookupField = 'VARIICOD'
          LookupDisplay = 'VARIA60DESCR'
          LookupSource = DSSQLVariacao
          TabOrder = 2
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboGrupo: TRxDBLookupCombo
          Left = 6
          Top = 26
          Width = 236
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
          Left = 6
          Top = 130
          Width = 236
          Height = 21
          DropDownCount = 8
          DataField = 'VARIICOD'
          LookupField = 'MARCICOD'
          LookupDisplay = 'MARCA60DESCR'
          LookupSource = DSSQLMarca
          TabOrder = 3
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboColecao: TRxDBLookupCombo
          Left = 6
          Top = 165
          Width = 115
          Height = 21
          DropDownCount = 8
          DataField = 'VARIICOD'
          LookupField = 'COLEICOD'
          LookupDisplay = 'COLEA60DESCR'
          LookupSource = DSSQLColecao
          TabOrder = 4
          OnKeyDown = ComboGrupoKeyDown
        end
        object edtCultura: TEdit
          Left = 126
          Top = 164
          Width = 113
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
        end
      end
      object GroupBox5: TGroupBox
        Left = 12
        Top = 205
        Width = 201
        Height = 40
        Caption = ' Vendedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboVendedor: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 191
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSQLNumerario
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboGrupoKeyDown
        end
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 248
        Width = 406
        Height = 40
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object ComboCliente: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 391
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboGrupoKeyDown
        end
      end
      object GroupBox6: TGroupBox
        Left = 424
        Top = 205
        Width = 250
        Height = 84
        Caption = 'Layout'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object RxLabel1: TRxLabel
          Left = 19
          Top = 15
          Width = 220
          Height = 17
          AutoSize = False
          Caption = 'Somente Contratos em aberto'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ShadowColor = 10930928
          ShadowSize = 0
          WordWrap = True
          OnClick = RxLabel1Click
        end
        object CheckFiltro: TCheckBox
          Left = 3
          Top = 15
          Width = 15
          Height = 17
          TabOrder = 0
        end
        object CKPlaca: TCheckBox
          Left = 3
          Top = 46
          Width = 150
          Height = 17
          Caption = 'Incluir Placa do Veiculo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object CheckBox1: TCheckBox
          Left = 3
          Top = 30
          Width = 233
          Height = 17
          Caption = 'Incluir NCM do Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object ckDescricaoExpandida: TCheckBox
          Left = 3
          Top = 63
          Width = 150
          Height = 17
          Caption = 'Descri'#231#227'o Expandida'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupProduto: TGroupBox
        Left = 12
        Top = 291
        Width = 405
        Height = 40
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        object ComboProduto: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 391
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PRODICOD'
          LookupDisplay = 'PRODICOD;PRODA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLProduto
          ParentFont = False
          TabOrder = 0
          OnExit = ComboProdutoExit
          OnKeyDown = ComboGrupoKeyDown
        end
      end
      object RadioTotal: TRadioGroup
        Left = 11
        Top = 382
        Width = 662
        Height = 40
        BiDiMode = bdLeftToRight
        Caption = 'Totalizar Por'
        Columns = 7
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Data         '
          'Produto   '
          'Mix          '
          'Vendedor '
          'Grupo'
          'Cliente'
          'Empresa')
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 10
      end
      object GroupBox7: TGroupBox
        Left = 12
        Top = 333
        Width = 135
        Height = 40
        Caption = ' Produto Cod.Interno '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        object CodInternoProd: TEdit
          Left = 6
          Top = 14
          Width = 121
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object EditHoraIni: TEdit
        Left = 69
        Top = 426
        Width = 50
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object EditHoraFim: TEdit
        Left = 145
        Top = 427
        Width = 50
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object CKCofins: TCheckBox
        Left = 205
        Top = 429
        Width = 143
        Height = 17
        Caption = 'Isento de Cofins e Pis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object GroupBox8: TGroupBox
        Left = 216
        Top = 205
        Width = 203
        Height = 40
        Caption = ' Terminal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboTerminal: TRxDBLookupCombo
          Left = 7
          Top = 14
          Width = 191
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TERMICOD'
          LookupDisplay = 'TERMA60DESCR'
          LookupSource = DSSQLTerminal
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboGrupoKeyDown
        end
      end
      object GroupBox9: TGroupBox
        Left = 423
        Top = 336
        Width = 250
        Height = 49
        Caption = '&S'#233'ries'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        object ListSeries: TRxCheckListBox
          Left = 2
          Top = 15
          Width = 246
          Height = 32
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 16249066
          Columns = 2
          GraySelection = True
          ItemHeight = 16
          MultiSelect = True
          Style = lbVirtual
          TabOrder = 0
          InternalVersion = 202
        end
      end
      object GroupBox10: TGroupBox
        Left = 423
        Top = 291
        Width = 251
        Height = 40
        Caption = ' Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        object ComboUsuario: TRxDBLookupCombo
          Left = 6
          Top = 14
          Width = 238
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'USUAICOD'
          LookupDisplay = 'USUAA60LOGIN'
          LookupSource = DSSQLUsuario
          ParentFont = False
          TabOrder = 0
        end
      end
      object ckECF: TCheckBox
        Left = 351
        Top = 429
        Width = 94
        Height = 17
        Caption = 'ECF Somente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 805
      inherited PanelCabecalho: TPanel
        Width = 805
        inherited PanelNavigator: TPanel
          Width = 805
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 805
            inherited BtnFecharTela: TSpeedButton
              Left = 638
            end
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelProdutosVendidos.DB'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object TblTemporariaVLRTOTALITEM: TFloatField
      FieldName = 'VLRTOTALITEM'
    end
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaGrupoDescricao: TStringField
      FieldName = 'GrupoDescricao'
      Size = 30
    end
    object TblTemporariaSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object TblTemporariaVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object TblTemporariaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
    end
    object TblTemporariaMARGEMPERC: TFloatField
      FieldName = 'MARGEMPERC'
    end
    object TblTemporariaMARGEMVLR: TFloatField
      FieldName = 'MARGEMVLR'
    end
    object TblTemporariaCPITN3QTDTROCA: TBCDField
      FieldName = 'CPITN3QTDTROCA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object TblTemporariaVendedorNome: TStringField
      FieldName = 'VendedorNome'
      Size = 15
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaClienteNome: TStringField
      FieldName = 'ClienteNome'
      Size = 60
    end
    object TblTemporariaCPITN2VLRQDEVERIAVENDER: TBCDField
      FieldName = 'CPITN2VLRQDEVERIAVENDER'
      Precision = 15
      Size = 2
    end
    object TblTemporariaCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
    end
    object TblTemporariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object TblTemporariaVLRTOTALITEMTROCA: TFloatField
      FieldName = 'VLRTOTALITEMTROCA'
    end
    object TblTemporariaMARGEMVLRTROCA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARGEMVLRTROCA'
      Calculated = True
    end
    object TblTemporariaGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
    end
    object TblTemporariaGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
    end
    object TblTemporariaCORICOD: TIntegerField
      FieldName = 'CORICOD'
    end
    object TblTemporariaNroVendas: TIntegerField
      FieldName = 'NroVendas'
    end
    object TblTemporariaCUPOA8PLACAVEIC: TStringField
      FieldName = 'CUPOA8PLACAVEIC'
      Size = 8
    end
    object TblTemporariaIDVENDA: TStringField
      FieldName = 'IDVENDA'
    end
  end
  inherited FormStorageTemplate: TFormStorage
    Top = 5
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
      
        '  ((CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD)- CUPOMITEM.CP' +
        'ITN2DESC)  as VLRTOTALITEM,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.GRUPICOD,'
      '  PRODUTO.SUBGICOD,'
      '  PRODUTO.VARIICOD,'
      '  PRODUTO.MARCICOD,'
      '  PRODUTO.COLEICOD,'
      '  PRODUTO.GRADICOD,'
      '  PRODUTO.GRTMICOD,'
      '  PRODUTO.CORICOD,'
      '  0.0 AS MARGEMPERC,'
      
        '  ((((CUPOMITEM.CPITN3VLRUNIT*CUPOMITEM.CPITN3QTD)-CUPOMITEM.CPI' +
        'TN2DESC)/CUPOMITEM.CPITN3QTD)-PRODUTO.PRODN3VLRCUSTO) * CUPOMITE' +
        'M.CPITN3QTD AS MARGEMVLR,'
      '  CUPOMITEM.CPITN3QTD,'
      '  CUPOMITEM.VENDICOD AS VENDICOD,'
      '  CUPOM.CUPOA13ID AS CUPOA13ID,'
      '  CUPOM.CLIEA13ID,'
      '  CUPOMITEM.CPITN2VLRQDEVERIAVENDER,'
      '  CUPOM.CUPOA8PLACAVEIC,'
      '  "CP"||"-"|| Cast(CUPOM.CUPOINRO as CHAR(13)) as IDVENDA'
      'from'
      
        '  ((CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.C' +
        'UPOA13ID)'
      
        ' left outer join PRODUTO on CUPOMITEM.PRODICOD = PRODUTO.PRODICO' +
        'D)'
      'where'
      '  CUPOM.CUPOCSTATUS = "A" and'
      '  CUPOMITEM.CPITN3QTD > 0 and'
      '  CUPOMITEM.CPITCSTATUS <> "C" and'
      '  (%MECF)  and'
      '  (%MFiltro)  and'
      '  (%MEmpresa) and'
      '  (%MVendedor)and'
      '  (%MTerminal)and'
      '  (%MCliente) and'
      '  (%MProduto) and'
      '  (%MData) and'
      '  (%MGrupo) and'
      '  (%MSubGrupo) and'
      '  (%MVariacao) and'
      '  (%MMarca) and'
      '  (%MColecao) and'
      '  (%MCofins) and'
      '  (%MUsuario)'
      ''
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
      '  PRODUTO.GRADICOD,'
      '  PRODUTO.GRTMICOD,'
      '  PRODUTO.CORICOD,'
      '  0.0 AS MARGEMPERC,'
      
        '  (NOTAFISCALITEM.NFITN2VLRUNIT-PRODUTO.PRODN3VLRCUSTO) * NOTAFI' +
        'SCALITEM.NFITN3QUANT AS MARGEMVLR,'
      '  NOTAFISCALITEM.NFITN3QUANT,'
      '  NOTAFISCAL.VENDICOD AS VENDICOD,'
      '  NOTAFISCAL.NOFIA13ID AS CUPOA13ID,'
      '  NOTAFISCAL.CLIEA13ID,'
      '  0.0 AS CPITN2VLRQDEVERIAVENDER,'
      '  Cast(" " AS CHAR(8)) AS CUPOA8PLACAVEIC,'
      '  "NF"||"-"||Cast(NOTAFISCAL.NOFIINUMERO as CHAR(13)) AS IDVENDA'
      'from'
      
        '  ((NOTAFISCALITEM inner join NOTAFISCAL on NOTAFISCALITEM.NOFIA' +
        '13ID = NOTAFISCAL.NOFIA13ID)'
      
        ' left outer join PRODUTO on NOTAFISCALITEM.PRODICOD = PRODUTO.PR' +
        'ODICOD)'
      
        ' left outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD = OPERAC' +
        'AOESTOQUE.OPESICOD'
      'where'
      '  NOTAFISCAL.NOFICSTATUS = "E"   and'
      '  NOTAFISCALITEM.NFITN3QUANT > 0 and'
      '  (%MFiltro1)   and'
      '  (%MEmpresa1) and'
      '  (%MVendedor1)and'
      '  (%MCliente1) and'
      '  (%MProduto1) and'
      '  (%MData1) and'
      '  (%MGrupo1) and'
      '  (%MSubGrupo1) and'
      '  (%MVariacao1) and'
      '  (%MMarca1) and'
      '  (%MColecao1) and'
      '  (%MCofins1) and'
      '  (%MCultura) and'
      '  (%MSerie) and'
      '  (%MUsuario1) and'
      '  OPERACAOESTOQUE.OPESCGERAFINANCEIRO = '#39'S'#39
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MECF'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
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
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
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
        Name = 'MData'
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
        Name = 'MColecao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCofins'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MUsuario'
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
        Name = 'MEmpresa1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVendedor1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente1'
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
        Name = 'MData1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MGrupo1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSubGrupo1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVariacao1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMarca1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MColecao1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCofins1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCultura'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSerie'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MUsuario1'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 426
    Top = 5
    object SQLVendasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLVendasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
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
    object SQLVendasPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLVendasPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
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
    object SQLVendasCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Precision = 15
      Size = 3
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
    object SQLVendasCPITN2VLRQDEVERIAVENDER: TBCDField
      FieldName = 'CPITN2VLRQDEVERIAVENDER'
      Precision = 15
      Size = 2
    end
    object SQLVendasCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
    end
    object SQLVendasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLVendasGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
    end
    object SQLVendasGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
    end
    object SQLVendasCORICOD: TIntegerField
      FieldName = 'CORICOD'
    end
    object SQLVendasCUPOA8PLACAVEIC: TStringField
      FieldName = 'CUPOA8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLVendasIDVENDA: TStringField
      FieldName = 'IDVENDA'
      FixedChar = True
      Size = 13
    end
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRUPO'
      'order by GRUPA60DESCR')
    Macros = <>
    Left = 463
    Top = 5
    object SQLGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.GRUPO.GRUPICOD'
    end
    object SQLGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'DB.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 491
    Top = 5
  end
  object DSSQLSubGrupo: TDataSource
    DataSet = SQLSubGrupo
    Left = 547
    Top = 5
  end
  object SQLSubGrupo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'select * from SUBGRUPO'
      'where'
      '  GRUPICOD = :GRUPICOD'
      'order by'
      '  SUBGA60DESCR')
    Macros = <>
    Left = 519
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLSubGrupoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.SUBGRUPO.SUBGICOD'
    end
    object SQLSubGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.SUBGRUPO.GRUPICOD'
    end
    object SQLSubGrupoSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Origin = 'DB.SUBGRUPO.SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLVariacao: TDataSource
    DataSet = SQLVariacao
    Left = 603
    Top = 5
  end
  object SQLVariacao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubGrupo
    SQL.Strings = (
      'select * from VARIACAO'
      'where '
      '   GRUPICOD = :GRUPICOD and'
      '   SUBGICOD = :SUBGICOD'
      'order by'
      '   VARIA60DESCR')
    Macros = <>
    Left = 575
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPICOD'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'SUBGICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLVariacaoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.VARIACAO.VARIICOD'
    end
    object SQLVariacaoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.VARIACAO.GRUPICOD'
    end
    object SQLVariacaoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.VARIACAO.SUBGICOD'
    end
    object SQLVariacaoVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      Origin = 'DB.VARIACAO.VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVariacaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VARIACAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVariacaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VARIACAO.REGISTRO'
    end
  end
  object SQLMarca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MARCA'
      'order by MARCA60DESCR')
    Macros = <>
    Left = 631
    Top = 5
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.MARCA.MARCICOD'
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'DB.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLMarca: TDataSource
    DataSet = SQLMarca
    Left = 659
    Top = 5
  end
  object SQLVendedor: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from VENDEDOR'
      'order by VENDA60NOME')
    Left = 222
    Top = 5
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLVendedor
    Left = 250
    Top = 5
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\GestaoOficial\Relatorios\Produtos Vendidos.rpt'
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
    Formulas.Formula.Strings = (
      '"Empresa"')
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
    Left = 192
    Top = 5
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 56
    Top = 5
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 687
    Top = 5
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 715
    Top = 5
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOA13ID,'
      '  NOFIA13ID,'
      '  PDVDA13ID'
      'from'
      '  CONTASRECEBER'
      'where'
      '   %MData   and'
      '  ((CTRCCSTATUS <> '#39'C'#39') or (CTRCCSTATUS is null)) and'
      '  (CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) and'
      
        '  ((Not CUPOA13ID IS NULL) or (Not NOFIA13ID IS NULL)or (CTRCA13' +
        'ID is not null))  and'
      '  ((CTRCN2TOTREC < CTRCN2VLR) or (CTRCN2TOTREC is null)) and'
      '  (%MCliente)'
      'Group By'
      '  CUPOA13ID,'
      '  NOFIA13ID,'
      '  PDVDA13ID'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 426
    Top = 33
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select PRODICOD, PRODA60REFER, PRODA60DESCR from PRODUTO'
      'Order by PRODA60DESCR')
    Macros = <>
    Left = 743
    Top = 5
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 771
    Top = 5
  end
  object SQLColecao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from COLECAO'
      'order by COLEA60DESCR')
    Macros = <>
    Left = 631
    Top = 33
    object SQLColecaoCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
      Origin = 'DB.COLECAO.COLEICOD'
    end
    object SQLColecaoCOLEA60DESCR: TStringField
      FieldName = 'COLEA60DESCR'
      Origin = 'DB.COLECAO.COLEA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLColecao: TDataSource
    DataSet = SQLColecao
    Left = 659
    Top = 33
  end
  object SQLTrocas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOM.EMPRICOD,'
      '  CUPOM.CUPODEMIS,'
      '  CUPOM.REGISTRO,'
      '  CUPOMITEM.PRODICOD,'
      '  PRODUTO.PRODA60DESCR,'
      
        '  (CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTDTROCA) as VLRTOT' +
        'ALITEMTROCA,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.GRUPICOD,'
      '  PRODUTO.SUBGICOD,'
      '  PRODUTO.VARIICOD,'
      '  PRODUTO.MARCICOD,'
      '  PRODUTO.COLEICOD,'
      '  PRODUTO.GRADICOD,'
      '  PRODUTO.GRTMICOD,'
      '  PRODUTO.CORICOD,'
      '  0.0 AS MARGEMPERC,'
      
        '  (CUPOMITEM.CPITN3VLRUNIT-PRODUTO.PRODN3VLRCUSTO) * CUPOMITEM.C' +
        'PITN3QTDTROCA AS MARGEMVLRTROCA,'
      '  CUPOMITEM.CPITN3QTD,'
      '  CUPOMITEM.CPITN3QTDTROCA,'
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
      '  CUPOM.CUPOCSTATUS <> "C" and'
      '  CUPOMITEM.CPITN3QTDTROCA > 0 and'
      '  (%MFiltro)  and'
      '  (%MEmpresa) and'
      '  (%MVendedor)and'
      '  (%MTerminal)and'
      '  (%MCliente) and'
      '  (%MProduto) and'
      '  (%MData) and'
      '  (%MGrupo) and'
      '  (%MSubGrupo) and'
      '  (%MVariacao) and'
      '  (%MMarca) and'
      '  (%MColecao) and'
      '  (%MCofins) and'
      '  (%MUsuario)'
      ''
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
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
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
        Name = 'MData'
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
        Name = 'MColecao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCofins'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MUsuario'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 426
    Top = 61
    object SQLTrocasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLTrocasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLTrocasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLTrocasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLTrocasPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLTrocasPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLTrocasGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLTrocasSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object SQLTrocasVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object SQLTrocasMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
    end
    object SQLTrocasCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
    end
    object SQLTrocasMARGEMPERC: TFloatField
      FieldName = 'MARGEMPERC'
    end
    object SQLTrocasCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLTrocasCPITN3QTDTROCA: TBCDField
      FieldName = 'CPITN3QTDTROCA'
      Precision = 15
      Size = 3
    end
    object SQLTrocasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLTrocasCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTrocasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTrocasCPITN2VLRQDEVERIAVENDER: TBCDField
      FieldName = 'CPITN2VLRQDEVERIAVENDER'
      Precision = 15
      Size = 2
    end
    object SQLTrocasVLRTOTALITEMTROCA: TFloatField
      FieldName = 'VLRTOTALITEMTROCA'
    end
    object SQLTrocasMARGEMVLRTROCA: TFloatField
      FieldName = 'MARGEMVLRTROCA'
    end
    object SQLTrocasGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
    end
    object SQLTrocasGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
    end
    object SQLTrocasCORICOD: TIntegerField
      FieldName = 'CORICOD'
    end
  end
  object SQLTerminal: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from terminal')
    Left = 222
    Top = 37
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 250
    Top = 37
  end
  object DSSQLUsuario: TDataSource
    AutoEdit = False
    DataSet = SQLUsuario
    Left = 250
    Top = 77
  end
  object SQLUsuario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from USUARIO'
      'Order by USUAA60LOGIN')
    Left = 222
    Top = 77
    object SQLUsuarioUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object SQLUsuarioUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
end
