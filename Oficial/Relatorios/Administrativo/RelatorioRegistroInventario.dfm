inherited FormRelatorioRegistroInventario: TFormRelatorioRegistroInventario
  Left = 320
  Top = 123
  Caption = 'Registro de Invent'#225'rio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    object BtTermoEncerramento: TSpeedButton [0]
      Left = 91
      Top = 37
      Width = 134
      Height = 25
      Cursor = crHandPoint
      Hint = 'Sair da tela'
      Caption = '&Termo Encerramento'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 3
      OnClick = BtTermoEncerramentoClick
    end
    inherited PanelCentro: TPanel
      Left = 224
      Top = 70
      Height = 359
      inherited BtnVisualizar: TSpeedButton
        Left = 289
        Top = 293
      end
      object Label17: TLabel [1]
        Left = 268
        Top = 243
        Width = 28
        Height = 13
        Caption = 'Icms'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PathRel: TPanel [2]
        Left = 12
        Top = 226
        Width = 407
        Height = 14
        BevelOuter = bvLowered
        ParentColor = True
        TabOrder = 4
      end
      object SaveReport: TRadioGroup [3]
        Left = 13
        Top = 280
        Width = 192
        Height = 55
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Somente imprimir'
          'Salvar relat'#243'rio em arquivo'
          'Ler relat'#243'rio salvo')
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnClick = SaveReportClick
      end
      inherited EmpresaGroup: TGroupBox
        Top = 19
        Height = 48
        Caption = ''
        inherited Label1: TLabel
          Left = 6
          Top = 7
        end
        inherited IncluirEmpresa: TSpeedButton
          Visible = False
        end
        inherited ExcluirEmpresa: TSpeedButton
          Visible = False
        end
        inherited Label2: TLabel
          Visible = False
        end
        inherited ComboEmpresa: TRxDBLookupCombo
          Left = 4
          Top = 22
          Width = 395
        end
        inherited ListaEmpresas: TListBox
          Visible = False
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 113
        TabOrder = 2
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 70
        Width = 407
        Height = 145
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label5: TLabel
          Left = 8
          Top = 14
          Width = 115
          Height = 13
          Caption = 'Nro.Total de P'#225'ginas'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 9
          Top = 37
          Width = 77
          Height = 13
          Caption = 'Nro de Ordem'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelGravar: TSpeedButton
          Tag = 3
          Left = 237
          Top = 10
          Width = 48
          Height = 44
          Cursor = crHandPoint
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            C2040000424DC204000000000000420000002800000018000000180000000100
            1000030000008004000000000000000000000000000000000000007C0000E003
            00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7F00000911742E4B199B6F524200000000FF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00006C19742E742E7B6BBD77D652
            7B6B313EA4100000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7F0000D746742E4B19DD77A50C95367B6F9C73D65A6B2100000000FF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000112EB63A742E185FDE7B2A197B6B
            9C739B6F7B6F313E742EA50C00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            0000D746742E742E4B193967DD77DD77BC739C73D6520911742E081185080000
            FF7FFF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ABD73BD73742E742E0811B552
            BD779C730821742E4B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
            184FBD73DE7B304ADE77BD73742E742E0811E7146C19742E4B19742E0000FF7F
            FF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ADD77DE7B304A00000000DE77BD73
            742E742E4B194B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00001853
            BD73DE7B304ADE7BCD626339000000009B6FBD73742E742E742E0000FF7FFF7F
            FF7FFF7FFF7FFF7FFF7F0000EF31D746DD77DE7B304ADE7BDE7B0000EC6AE845
            0000DE7BBD73742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000D7463957
            7C6BDE7BDE7B304ADE7BDE7B0000EC6AE8450000BD73742E0000FF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7F00000000B63A39575B63DE7BDE7BDE7BDE7B0000
            EC6AE8450000A50C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            000000005B6318535B63DE7BDE7BDE7B0000EC6AE8450000FF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000005B6318535B63DE7B
            DD770000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7F000000005B631853BD73742E0000EC6AE8450000FF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000
            742EE71400000000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7FFF7F0000EC6AE8450000
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7F0000EC6A0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
            FF7FFF7FFF7F}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Spacing = 1
        end
        object Label14: TLabel
          Left = 13
          Top = 65
          Width = 259
          Height = 13
          Caption = 'Data que ser'#225' impressa no termo de abertura'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 13
          Top = 103
          Width = 123
          Height = 13
          Caption = 'Per'#237'odo do Inventario'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 114
          Top = 120
          Width = 19
          Height = 13
          Caption = 'at'#233
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object TotalPaginas: TCurrencyEdit
          Left = 139
          Top = 10
          Width = 93
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Value = 1.000000000000000000
        end
        object EditNroOrdem: TCurrencyEdit
          Left = 139
          Top = 33
          Width = 93
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '#'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MinValue = 1.000000000000000000
          ParentFont = False
          TabOrder = 1
          Value = 1.000000000000000000
        end
        object TipoRel: TRadioGroup
          Left = 291
          Top = 7
          Width = 108
          Height = 48
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Confer'#234'ncia'
            'Oficial')
          ParentFont = False
          TabOrder = 2
        end
        object EditDataInventario: TDateEdit
          Left = 12
          Top = 79
          Width = 96
          Height = 21
          DefaultToday = True
          NumGlyphs = 2
          TabOrder = 3
        end
        object EditDataInicialEncerramento: TDateEdit
          Left = 12
          Top = 116
          Width = 97
          Height = 21
          DefaultToday = True
          NumGlyphs = 2
          TabOrder = 4
        end
        object EditDataFimEncerramento: TDateEdit
          Left = 139
          Top = 116
          Width = 101
          Height = 21
          DefaultToday = True
          NumGlyphs = 2
          TabOrder = 5
        end
        object GroupCodDesc: TGroupBox
          Left = 292
          Top = 70
          Width = 107
          Height = 64
          Caption = ' Ordem '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
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
            Left = 11
            Top = 30
            Width = 80
            Height = 17
            Caption = 'Descri'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object OrdemQtde: TRadioButton
            Left = 12
            Top = 45
            Width = 87
            Height = 17
            Caption = 'Quantidade'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            TabStop = True
          end
        end
      end
      object CKSubtraiICMS: TCheckBox
        Left = 20
        Top = 249
        Width = 211
        Height = 17
        Caption = 'Subtrair o Icms do Valor do Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object ComboIcms: TRxDBLookupCombo
        Left = 264
        Top = 256
        Width = 157
        Height = 21
        DropDownCount = 8
        LookupField = 'ICMSICOD'
        LookupDisplay = 'ICMSA60DESCR'
        LookupSource = dsSQLIcms
        TabOrder = 6
      end
      object CkGruposResumo: TCheckBox
        Left = 20
        Top = 264
        Width = 211
        Height = 17
        Caption = 'Totaliza por Grupos Sintetico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  inherited TblTemporaria: TTable
    Tag = 1
    TableName = 'RelRegistroInventario.DB'
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object TblTemporariaPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
    end
    object TblTemporariaPRODA15CODANT: TStringField
      FieldName = 'PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPRODN3VLRCUSTOMED: TBCDField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPSLDN3QTDE: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object TblTemporariaQTDXCMEDIO: TFloatField
      FieldName = 'QTDXCMEDIO'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
    end
    object TblTemporariaQTDXVENDA: TFloatField
      FieldName = 'QTDXVENDA'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
    end
    object TblTemporariaUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object ICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
    end
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaGRUPODESCRICAO: TStringField
      FieldName = 'GRUPODESCRICAO'
      Size = 30
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaDATA: TDateField
      FieldName = 'DATA'
    end
    object TblTemporariaTERMINAL: TIntegerField
      FieldName = 'TERMINAL'
    end
  end
  object SQLInventario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  PRODUTO.PRODICOD,'
      '  PRODUTO.PRODIAGRUPGRADE,'
      '  PRODUTO.PRODA15CODANT,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.PRODN3VLRCOMPRA,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRCUSTOMED,'
      '  PRODUTO.ICMSICOD,'
      '  ICMS.ICMSN2ALIQUOTA,'
      '  UNIDADE.UNIDA5DESCR,'
      '  PRODUTO.GRUPICOD,'
      '  PRODUTOSALDO.PSLDN3QTDE as SaldoAtual,'
      
        '  (select sum(MVESN3QTDSAIDA) from MovimentoEstoque where (%MEmp' +
        'resa1) and (%MDataFim1) and (MovimentoEstoque.prodicod=PRODUTO.P' +
        'RODICOD)) as Saidas,'
      
        '  (select sum(MVESN3QTDENTRADA) from MovimentoEstoque where (%ME' +
        'mpresa2) and (%MDataFim2) and (MovimentoEstoque.prodicod=PRODUTO' +
        '.PRODICOD)) as Entradas'
      'from'
      '  PRODUTOSALDO'
      
        '  inner join PRODUTO on (PRODUTO.PRODICOD  = PRODUTOSALDO.PRODIC' +
        'OD)'
      '  left join UNIDADE on (PRODUTO.UNIDICOD = UNIDADE.UNIDICOD)'
      '  left join ICMS on (PRODUTO.ICMSICOD = ICMS.ICMSICOD)'
      'where'
      '  %MEmpresa and'
      '  %MIcms and'
      '  PRODUTO.PRODN3VLRCOMPRA > 0 and'
      '  PRODUTO.PRODA2TIPOITEM = '#39'00'#39' and'
      '  PRODUTO.PRODCSERVICO = '#39'N'#39' and'
      '  PRODUTO.PRODCATIVO = '#39'S'#39
      'Order by'
      '  %MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataFim1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa2'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataFim2'
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
        Name = 'MIcms'
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
  end
  object PipeInventario: TppBDEPipeline
    DataSource = DSTblTemporaria
    CloseDataSource = True
    UserName = 'PipeInventario'
    Left = 477
    Top = 5
    object PipeInventarioppField1: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField2: TppField
      FieldAlias = 'PRODIAGRUPGRADE'
      FieldName = 'PRODIAGRUPGRADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField3: TppField
      FieldAlias = 'PRODA15CODANT'
      FieldName = 'PRODA15CODANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField4: TppField
      FieldAlias = 'PRODA60DESCR'
      FieldName = 'PRODA60DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField5: TppField
      FieldAlias = 'PRODN3VLRVENDA'
      FieldName = 'PRODN3VLRVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField6: TppField
      FieldAlias = 'PRODN3VLRCOMPRA'
      FieldName = 'PRODN3VLRCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField7: TppField
      FieldAlias = 'PRODN3VLRCUSTO'
      FieldName = 'PRODN3VLRCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField8: TppField
      FieldAlias = 'PRODN3VLRCUSTOMED'
      FieldName = 'PRODN3VLRCUSTOMED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField9: TppField
      FieldAlias = 'PSLDN3QTDE'
      FieldName = 'PSLDN3QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField10: TppField
      FieldAlias = 'QTDXCMEDIO'
      FieldName = 'QTDXCMEDIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField11: TppField
      FieldAlias = 'QTDXVENDA'
      FieldName = 'QTDXVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField12: TppField
      FieldAlias = 'UNIDA5DESCR'
      FieldName = 'UNIDA5DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField13: TppField
      FieldAlias = 'ICMSICOD'
      FieldName = 'ICMSICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField14: TppField
      FieldAlias = 'GRUPICOD'
      FieldName = 'GRUPICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeInventarioppField15: TppField
      FieldAlias = 'GRUPODESCRICAO'
      FieldName = 'GRUPODESCRICAO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
  end
  object reportOficial: TppReport
    AutoStop = False
    DataPipeline = PipeInventario
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
    OnPreviewFormCreate = reportOficialPreviewFormCreate
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
    DataPipelineName = 'PipeInventario'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 244211
      mmPrintPosition = 0
      object ppContadorNome: TppLabel
        UserName = 'ContadorNome'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contador Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 120121
        mmTop = 223309
        mmWidth = 62706
        BandType = 1
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '----------------------------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 118004
        mmTop = 219605
        mmWidth = 75936
        BandType = 1
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'REGISTRO DE INVENT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 70908
        mmTop = 27517
        mmWidth = 46831
        BandType = 1
      end
      object LBNroOrdem: TppLabel
        UserName = 'LBNroOrdem'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. de Ordem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 70908
        mmTop = 56092
        mmWidth = 46831
        BandType = 1
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TERMO DE ABERTURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 74877
        mmTop = 83344
        mmWidth = 38629
        BandType = 1
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contem este livro '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51858
        mmTop = 112184
        mmWidth = 28310
        BandType = 1
      end
      object LBTotalPaginas: TppLabel
        UserName = 'LBTotalPaginas'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'xxx'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 81227
        mmTop = 112184
        mmWidth = 5292
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'folhas numeradas eletronicamente do Nro. 001 ao Nro.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51858
        mmTop = 116417
        mmWidth = 85725
        BandType = 1
      end
      object LBPagFinal: TppLabel
        UserName = 'LBPagFinal'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'xxx'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 138642
        mmTop = 116417
        mmWidth = 5292
        BandType = 1
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'das opera'#231#245'es apropriadas do contribuinte abaixo identificado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51858
        mmTop = 120650
        mmWidth = 97631
        BandType = 1
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'e serviu para o lan'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 148961
        mmTop = 116417
        mmWidth = 42333
        BandType = 1
      end
      object LBRazaoSocial: TppLabel
        UserName = 'LBRazaoSocial'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Raz'#227'o Social........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 52123
        mmTop = 142875
        mmWidth = 30649
        BandType = 1
      end
      object LBEndereco: TppLabel
        UserName = 'LBEndereco'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Endere'#231'o..............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 52123
        mmTop = 148696
        mmWidth = 29633
        BandType = 1
      end
      object LBCidade: TppLabel
        UserName = 'LBCidade'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade....................:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 52123
        mmTop = 152929
        mmWidth = 31538
        BandType = 1
      end
      object LBCNPJ: TppLabel
        UserName = 'LBCNPJ'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CNPJ.......................:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 52123
        mmTop = 157163
        mmWidth = 32935
        BandType = 1
      end
      object LBIE: TppLabel
        UserName = 'LBIE'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insc.Estadual........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 52123
        mmTop = 161396
        mmWidth = 30427
        BandType = 1
      end
      object LBData: TppLabel
        UserName = 'LBData'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 103188
        mmTop = 190500
        mmWidth = 8467
        BandType = 1
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Folha: 001'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3246
        mmLeft = 189353
        mmTop = 10054
        mmWidth = 13053
        BandType = 1
      end
      object LBRegJunta: TppLabel
        UserName = 'LBEndereco2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reg.Junta Comercial.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 52123
        mmTop = 169863
        mmWidth = 34798
        BandType = 1
      end
      object ppContadorCargo: TppLabel
        UserName = 'ContadorNome1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contador Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 120121
        mmTop = 227542
        mmWidth = 62706
        BandType = 1
      end
      object ppContadorDoc: TppLabel
        UserName = 'ContadorDoc'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contador Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 120121
        mmTop = 231775
        mmWidth = 62706
        BandType = 1
      end
      object ppRepresentanteNome: TppLabel
        UserName = 'ContadorNome2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Representante Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 42863
        mmTop = 223309
        mmWidth = 62706
        BandType = 1
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '----------------------------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 40746
        mmTop = 219605
        mmWidth = 75936
        BandType = 1
      end
      object ppRepresentanteCargo: TppLabel
        UserName = 'RepresentanteCargo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Representante Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 42863
        mmTop = 227542
        mmWidth = 62706
        BandType = 1
      end
      object ppRepresentanteDoc: TppLabel
        UserName = 'ContadorDoc1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Representante Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 42863
        mmTop = 231775
        mmWidth = 62706
        BandType = 1
      end
      object LBDataRegJunta: TppLabel
        UserName = 'LBDataRegJunta'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data Reg.Junta.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 52123
        mmTop = 174096
        mmWidth = 26331
        BandType = 1
      end
      object LBIMunicipal: TppLabel
        UserName = 'LBIE2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insc.Municipal......:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 52123
        mmTop = 165629
        mmWidth = 29041
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
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
        mmLeft = 43392
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
        mmLeft = 60590
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
        mmLeft = 151607
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
        Caption = 'Custo s/imposto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 165629
        mmTop = 21431
        mmWidth = 20447
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
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
        mmLeft = 43127
        mmTop = 17463
        mmWidth = 159279
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
        mmLeft = 43127
        mmTop = 25400
        mmWidth = 159279
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
        mmLeft = 142611
        mmTop = 21431
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Folha:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 187389
        mmTop = 9525
        mmWidth = 7874
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
        mmLeft = 43392
        mmTop = 9525
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Registro de Invent'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 43392
        mmTop = 13494
        mmWidth = 32597
        BandType = 0
      end
      object LBDataPag: TppLabel
        UserName = 'LBDataPag'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 194998
        mmTop = 13494
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 188648
        mmTop = 21431
        mmWidth = 13758
        BandType = 0
      end
      object PgAtual: TppSystemVariable
        UserName = 'PgAtual'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '###000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 195792
        mmTop = 9525
        mmWidth = 6615
        BandType = 0
      end
    end
    object ppDetailBandProduto: TppDetailBand
      Visible = False
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSLDN3QTDE'
        DataPipeline = PipeInventario
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 149754
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTDXCMEDIO'
        DataPipeline = PipeInventario
        DisplayFormat = '##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 187061
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSLDN3QTDE'
        DataPipeline = PipeInventario
        DisplayFormat = '##0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 4233
        mmWidth = 20373
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODN3VLRCUSTO'
        DataPipeline = PipeInventario
        DisplayFormat = '##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 166952
        mmTop = 4233
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTDXCMEDIO'
        DataPipeline = PipeInventario
        DisplayFormat = '##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 185473
        mmTop = 4233
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label102'
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
        mmLeft = 43392
        mmTop = 265
        mmWidth = 159279
        BandType = 7
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'PRODIAGRUPGRADE'
      DataPipeline = PipeInventario
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'PipeInventario'
      object ppGroupHeaderProdudo: TppGroupHeaderBand
        Visible = False
        mmBottomOffset = 0
        mmHeight = 529
        mmPrintPosition = 0
      end
      object ppGroupFooterProduto: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PRODN3VLRCUSTO'
          DataPipeline = PipeInventario
          DisplayFormat = '##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'PipeInventario'
          mmHeight = 4233
          mmLeft = 166952
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 1
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'UNIDA5DESCR'
          DataPipeline = PipeInventario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'PipeInventario'
          mmHeight = 4233
          mmLeft = 142875
          mmTop = 0
          mmWidth = 5556
          BandType = 5
          GroupNo = 1
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PRODA60DESCR'
          DataPipeline = PipeInventario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'PipeInventario'
          mmHeight = 4233
          mmLeft = 59267
          mmTop = 0
          mmWidth = 83344
          BandType = 5
          GroupNo = 1
        end
        object ppCODPROD: TppDBText
          UserName = 'CODPROD'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PRODIAGRUPGRADE'
          DataPipeline = PipeInventario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'PipeInventario'
          mmHeight = 4233
          mmLeft = 43656
          mmTop = 0
          mmWidth = 15081
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PSLDN3QTDE'
          DataPipeline = PipeInventario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'PipeInventario'
          mmHeight = 4233
          mmLeft = 149754
          mmTop = 0
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTDXCMEDIO'
          DataPipeline = PipeInventario
          DisplayFormat = '##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'PipeInventario'
          mmHeight = 4233
          mmLeft = 187061
          mmTop = 0
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = '*.db|*.db'
    InitialDir = 'Temp'
    Left = 192
    Top = 320
  end
  object RptTermoEncerramento: TppReport
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
    OnPreviewFormCreate = RptTermoEncerramentoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 592
    Top = 5
    Version = '10.06'
    mmColumnWidth = 0
    object ppTitleBand2: TppTitleBand
      BeforePrint = ppTitleBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 256382
      mmPrintPosition = 0
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'das opera'#231#245'es apropriadas do contribuinte abaixo identificado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51858
        mmTop = 127794
        mmWidth = 97631
        BandType = 1
      end
      object LBDataFim: TppLabel
        UserName = 'LBData1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 96309
        mmTop = 210080
        mmWidth = 8467
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Conteve neste livro '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51858
        mmTop = 119327
        mmWidth = 31221
        BandType = 1
      end
      object LBTotalPaginasFIM: TppLabel
        UserName = 'LBTotalPaginas2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'xxx'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 84402
        mmTop = 119327
        mmWidth = 5292
        BandType = 1
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'folhas numeradas eletronicamente do Nro. 001 ao Nro.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51858
        mmTop = 123561
        mmWidth = 85725
        BandType = 1
      end
      object LBPagFinalFIM: TppLabel
        UserName = 'LBPagFinal1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'xxx'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 138907
        mmTop = 123561
        mmWidth = 5292
        BandType = 1
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'e serviu para o lan'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 149225
        mmTop = 123561
        mmWidth = 42333
        BandType = 1
      end
      object ppLabel13: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TERMO DE ENCERRAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 69850
        mmTop = 96044
        mmWidth = 49530
        BandType = 1
      end
      object LBNroOrdemFim: TppLabel
        UserName = 'LBNroOrdem2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. de Ordem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 71438
        mmTop = 68792
        mmWidth = 46831
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'REGISTRO DE INVENT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 71438
        mmTop = 40217
        mmWidth = 46831
        BandType = 1
      end
      object LBPagFinalEncerramento: TppLabel
        UserName = 'LBPagFinalEncerramento'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Folha: 001'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 182944
        mmTop = 10054
        mmWidth = 13377
        BandType = 1
      end
      object LbPeriodoEncerramento: TppLabel
        UserName = 'LbPeriodoEncerramento'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Periodo Encerramento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 51858
        mmTop = 192617
        mmWidth = 35419
        BandType = 1
      end
      object ppContNome: TppLabel
        UserName = 'ContadorNome3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contador Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 120121
        mmTop = 223309
        mmWidth = 62706
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '----------------------------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 118004
        mmTop = 219605
        mmWidth = 75936
        BandType = 1
      end
      object ppContCargo: TppLabel
        UserName = 'ContCargo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contador Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 120121
        mmTop = 227542
        mmWidth = 62706
        BandType = 1
      end
      object ppContDoc: TppLabel
        UserName = 'ContadorDoc2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Contador Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 120121
        mmTop = 231775
        mmWidth = 62706
        BandType = 1
      end
      object ppRepNome: TppLabel
        UserName = 'RepNome'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Representante Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 42863
        mmTop = 223309
        mmWidth = 62706
        BandType = 1
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '----------------------------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 40746
        mmTop = 219605
        mmWidth = 75936
        BandType = 1
      end
      object ppRepCargo: TppLabel
        UserName = 'RepresentanteCargo1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Representante Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 42863
        mmTop = 227542
        mmWidth = 62706
        BandType = 1
      end
      object ppRepDoc: TppLabel
        UserName = 'RepDoc'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Representante Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 42863
        mmTop = 231775
        mmWidth = 62706
        BandType = 1
      end
      object LBRazaoFim: TppLabel
        UserName = 'LBRazaoSocial2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Raz'#227'o Social........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 51594
        mmTop = 142875
        mmWidth = 30649
        BandType = 1
      end
      object LBEnderecoFim: TppLabel
        UserName = 'LBEndereco3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Endere'#231'o..............:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51594
        mmTop = 148696
        mmWidth = 29633
        BandType = 1
      end
      object LBCidadeFim: TppLabel
        UserName = 'LBCidade2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade....................:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 51594
        mmTop = 152929
        mmWidth = 31538
        BandType = 1
      end
      object LBCNPJFim: TppLabel
        UserName = 'LBCNPJ2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CNPJ.......................:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 51594
        mmTop = 157163
        mmWidth = 32935
        BandType = 1
      end
      object LBIEFim: TppLabel
        UserName = 'LBIE3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insc.Estadual........:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51594
        mmTop = 161396
        mmWidth = 30427
        BandType = 1
      end
      object LbRegJuntaFim: TppLabel
        UserName = 'LbRegJuntaFim'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reg.Junta Comercial.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 51594
        mmTop = 169863
        mmWidth = 34798
        BandType = 1
      end
      object LBDataRegJuntaFim: TppLabel
        UserName = 'LBDataRegJunta1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data Reg.Junta.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 51594
        mmTop = 174096
        mmWidth = 26331
        BandType = 1
      end
      object LBIMunicipalFim: TppLabel
        UserName = 'LBIMunicipalFim'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insc.Municipal......:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 51594
        mmTop = 165629
        mmWidth = 29041
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object SQLIcms: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select ICMSICOD, ICMSA60DESCR'
      'From ICMS'
      'Order by ICMSA60DESCR')
    Macros = <>
    Left = 757
    Top = 75
    object SQLIcmsICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.ICMS.ICMSICOD'
    end
    object SQLIcmsICMSA60DESCR: TStringField
      FieldName = 'ICMSA60DESCR'
      Origin = 'DB.ICMS.ICMSA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLIcms: TDataSource
    DataSet = SQLIcms
    Left = 729
    Top = 75
  end
  object SQLInventarioOld: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  PRODUTO.PRODICOD,'
      '  PRODUTO.PRODIAGRUPGRADE,'
      '  PRODUTO.PRODA15CODANT,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.PRODN3VLRCOMPRA,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRCUSTOMED,'
      '  PRODUTO.ICMSICOD,'
      '  PRODUTOSALDO.PSLDN3QTDE,'
      '  PRODUTOSALDO.PSLDN3QTDE * PRODUTO.PRODN3VLRCUSTO QtdXCMedio,'
      '  PRODUTOSALDO.PSLDN3QTDE * PRODUTO.PRODN3VLRVENDA QtdXVenda,'
      '  UNIDADE.UNIDA5DESCR'
      'from'
      '  PRODUTO'
      
        '  inner join PRODUTOSALDO on (PRODUTO.PRODICOD  = PRODUTOSALDO.P' +
        'RODICOD)'
      '  left join UNIDADE on (PRODUTO.UNIDICOD = UNIDADE.UNIDICOD)'
      'where'
      '  PRODUTOSALDO.PSLDN3QTDE > 0 and'
      '  %MEmpresa and'
      '  %MIcms and'
      '  PRODUTO.PRODA2TIPOITEM = '#39'00'#39' and'
      '  PRODUTO.PRODCSERVICO = '#39'N'#39' and'
      '  PRODUTO.PRODCATIVO = '#39'S'#39
      'Order by'
      '  %MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MIcms'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 669
    Top = 5
    object IntegerField1: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object IntegerField2: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
    end
    object StringField1: TStringField
      FieldName = 'PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object BCDField1: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object BCDField2: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
      Precision = 15
      Size = 3
    end
    object BCDField3: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object BCDField4: TBCDField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
      Precision = 15
      Size = 3
    end
    object BCDField5: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object FloatField1: TFloatField
      FieldName = 'QTDXCMEDIO'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
    end
    object FloatField2: TFloatField
      FieldName = 'QTDXVENDA'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
    end
    object StringField3: TStringField
      FieldName = 'UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object IntegerField3: TIntegerField
      FieldName = 'ICMSICOD'
    end
  end
  object ReportResumo: TppReport
    AutoStop = False
    DataPipeline = PipeInventario
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
    OnPreviewFormCreate = ReportResumoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 542
    Top = 5
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeInventario'
    object ppHeaderBand3: TppHeaderBand
      BeforePrint = ppHeaderBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel57: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 60590
        mmTop = 21431
        mmWidth = 7832
        BandType = 0
      end
      object ppLabel58: TppLabel
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
        mmLeft = 151607
        mmTop = 21431
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label27'
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
        mmLeft = 43127
        mmTop = 17463
        mmWidth = 159279
        BandType = 0
      end
      object ppLabel61: TppLabel
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
        mmLeft = 43127
        mmTop = 25400
        mmWidth = 159279
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Folha:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 187389
        mmTop = 9525
        mmWidth = 7874
        BandType = 0
      end
      object ppEmpresaResumo: TppLabel
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
        mmLeft = 43392
        mmTop = 9525
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Registro de Invent'#225'rio - Totais por Grupos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 43392
        mmTop = 13494
        mmWidth = 52578
        BandType = 0
      end
      object ppDataResumo: TppLabel
        UserName = 'LBDataPag'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 194998
        mmTop = 13494
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 188648
        mmTop = 21431
        mmWidth = 13758
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'PgAtual'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '###000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 195792
        mmTop = 9525
        mmWidth = 6615
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Visible = False
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSLDN3QTDE'
        DataPipeline = PipeInventario
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 149754
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTDXCMEDIO'
        DataPipeline = PipeInventario
        DisplayFormat = '##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 187061
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PSLDN3QTDE'
        DataPipeline = PipeInventario
        DisplayFormat = '##0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 4233
        mmWidth = 20373
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODN3VLRCUSTO'
        DataPipeline = PipeInventario
        DisplayFormat = '##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 166952
        mmTop = 4233
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTDXCMEDIO'
        DataPipeline = PipeInventario
        DisplayFormat = '##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeInventario'
        mmHeight = 4233
        mmLeft = 185473
        mmTop = 4233
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel68: TppLabel
        UserName = 'Label102'
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
        mmLeft = 43392
        mmTop = 265
        mmWidth = 159279
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'GRUPICOD'
      DataPipeline = PipeInventario
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'PipeInventario'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Visible = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText5: TppDBText
          UserName = 'DBText2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'GRUPODESCRICAO'
          DataPipeline = PipeInventario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'PipeInventario'
          mmHeight = 4233
          mmLeft = 59267
          mmTop = 0
          mmWidth = 83344
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'PSLDN3QTDE'
          DataPipeline = PipeInventario
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'PipeInventario'
          mmHeight = 4233
          mmLeft = 149754
          mmTop = 0
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'QTDXCMEDIO'
          DataPipeline = PipeInventario
          DisplayFormat = '##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'PipeInventario'
          mmHeight = 4233
          mmLeft = 187061
          mmTop = 0
          mmWidth = 14817
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
