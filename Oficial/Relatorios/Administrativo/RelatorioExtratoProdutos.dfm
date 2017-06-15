inherited FormRelatorioExtratoProdutos: TFormRelatorioExtratoProdutos
  Left = 240
  Top = 109
  Caption = 'Relat'#243'rio de Movimenta'#231#227'o de Estoque'
  ClientHeight = 587
  ClientWidth = 821
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 571
    Width = 821
  end
  inherited ScrollBox: TScrollBox
    Width = 821
    Height = 571
    inherited PanelCentro: TPanel
      Left = 9
      Top = 115
      Width = 794
      Height = 410
      inherited BtnVisualizar: TSpeedButton
        Left = 297
        Top = 329
      end
      inherited EmpresaGroup: TGroupBox
        Width = 419
        Height = 130
        inherited Label1: TLabel
          Left = 48
          Top = 15
        end
        inherited Label2: TLabel
          Left = 48
          Top = 53
        end
        inherited ListaEmpresas: TListBox
          Height = 54
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 434
        Top = 187
        Width = 252
        Height = 40
        TabOrder = 6
      end
      object GroupFiltro: TGroupBox
        Left = 12
        Top = 134
        Width = 419
        Height = 182
        Caption = 'Filtrar Por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label5: TLabel
          Left = 9
          Top = 16
          Width = 34
          Height = 13
          Caption = 'Grupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 55
          Width = 55
          Height = 13
          Caption = 'SubGrupo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 7
          Top = 95
          Width = 49
          Height = 13
          Caption = 'Varia'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 214
          Top = 17
          Width = 35
          Height = 13
          Caption = 'Marca'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 214
          Top = 55
          Width = 34
          Height = 13
          Caption = 'Grade'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 214
          Top = 95
          Width = 46
          Height = 13
          Caption = 'Unidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 8
          Top = 133
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
        object ComboGrupo: TRxDBLookupCombo
          Left = 5
          Top = 30
          Width = 204
          Height = 21
          DropDownCount = 8
          LookupField = 'GRUPICOD'
          LookupDisplay = 'GRUPA60DESCR'
          LookupSource = DSSQLGrupo
          TabOrder = 0
          OnChange = ComboGrupoChange
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboSubGrupo: TRxDBLookupCombo
          Left = 5
          Top = 69
          Width = 204
          Height = 21
          DropDownCount = 8
          Enabled = False
          LookupField = 'SUBGICOD'
          LookupDisplay = 'SUBGA60DESCR'
          LookupSource = DSSQLSubGrupo
          TabOrder = 1
          OnChange = ComboSubGrupoChange
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboVariacao: TRxDBLookupCombo
          Left = 5
          Top = 109
          Width = 205
          Height = 21
          DropDownCount = 8
          Enabled = False
          LookupField = 'VARIICOD'
          LookupDisplay = 'VARIA60DESCR'
          LookupSource = DSSQLVariacao
          TabOrder = 2
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboMarca: TRxDBLookupCombo
          Left = 211
          Top = 30
          Width = 204
          Height = 21
          DropDownCount = 8
          LookupField = 'MARCICOD'
          LookupDisplay = 'MARCA60DESCR'
          LookupSource = DSSQLMarca
          TabOrder = 3
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboGrade: TRxDBLookupCombo
          Left = 211
          Top = 69
          Width = 204
          Height = 21
          DropDownCount = 8
          LookupField = 'GRADICOD'
          LookupDisplay = 'GRADA30DESCR'
          LookupSource = DSSQLGrade
          TabOrder = 4
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboUnidade: TRxDBLookupCombo
          Left = 211
          Top = 109
          Width = 205
          Height = 21
          DropDownCount = 8
          LookupField = 'UNIDICOD'
          LookupDisplay = 'UNIDA5DESCR'
          LookupSource = DSSQLUnidade
          TabOrder = 5
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboColecao: TRxDBLookupCombo
          Left = 6
          Top = 146
          Width = 408
          Height = 21
          DropDownCount = 8
          DataField = 'VARIICOD'
          LookupField = 'COLEICOD'
          LookupDisplay = 'COLEA60DESCR'
          LookupSource = DSSQLColecao
          TabOrder = 6
          OnKeyDown = ComboGrupoKeyDown
        end
      end
      object GroupOrdem: TGroupBox
        Left = 11
        Top = 318
        Width = 274
        Height = 40
        Caption = ' Ordem '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        object OrdemCodigo: TRadioButton
          Left = 5
          Top = 13
          Width = 61
          Height = 17
          Caption = 'C'#243'digo'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object OrdemDescricao: TRadioButton
          Left = 71
          Top = 13
          Width = 79
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
        object OrdemRef: TRadioButton
          Left = 168
          Top = 13
          Width = 91
          Height = 17
          Caption = 'Referencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupGrade: TGroupBox
        Left = 434
        Top = 4
        Width = 356
        Height = 42
        Caption = 'Codigo do Produto Principal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object EditGrade: TEdit
          Left = 8
          Top = 16
          Width = 82
          Height = 21
          TabOrder = 0
          OnExit = EditGradeExit
        end
        object EditDesc: TEdit
          Left = 95
          Top = 16
          Width = 254
          Height = 21
          Color = clSilver
          Enabled = False
          TabOrder = 1
        end
        object EditGradeCodigo: TEdit
          Left = 8
          Top = 27
          Width = 110
          Height = 21
          TabOrder = 2
          Visible = False
        end
      end
      object GroupOper: TGroupBox
        Left = 434
        Top = 51
        Width = 356
        Height = 43
        Caption = 'Opera'#231#227'o de Estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboOperacaoEstoque: TRxDBLookupCombo
          Left = 6
          Top = 15
          Width = 345
          Height = 21
          DropDownCount = 8
          LookupField = 'OPESICOD'
          LookupDisplay = 'OPESA60DESCR'
          LookupSource = DSSQLOperacaoEstoque
          TabOrder = 0
          OnKeyDown = ComboGrupoKeyDown
        end
      end
      object CheckPeriodo: TCheckBox
        Left = 439
        Top = 258
        Width = 148
        Height = 17
        Caption = 'Desconsiderar Per'#237'odo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object GroupCliente: TGroupBox
        Left = 434
        Top = 96
        Width = 356
        Height = 43
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ComboCliente: TRxDBLookupCombo
          Left = 5
          Top = 15
          Width = 346
          Height = 21
          DropDownCount = 8
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          TabOrder = 0
          OnKeyDown = ComboGrupoKeyDown
        end
      end
      object GroupProduto: TGroupBox
        Left = 434
        Top = 141
        Width = 356
        Height = 43
        Caption = 'Produto / C'#243'digo / Cor / Tamanho'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboProduto: TRxDBLookupCombo
          Left = 5
          Top = 15
          Width = 346
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          DisplayAllFields = True
          FieldsDelimiter = '/'
          ListStyle = lsDelimited
          LookupField = 'PRODICOD'
          LookupDisplay = 'PRODA60DESCR;CORA30DESCR;GRTMA5DESCR'
          LookupSource = DSSQLProdutoAux
          TabOrder = 0
          OnKeyDown = ComboGrupoKeyDown
        end
      end
      object ckTotOperacao: TCheckBox
        Left = 439
        Top = 277
        Width = 186
        Height = 17
        Caption = 'Mostrar Totais por Opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object ckMostraCusto: TCheckBox
        Left = 439
        Top = 295
        Width = 186
        Height = 17
        Caption = 'Mostrar Custo do Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 817
      inherited PanelCabecalho: TPanel
        Width = 817
        inherited PanelNavigator: TPanel
          Width = 817
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 817
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ExtratoDeProdutos.DB'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaMVESDMOV: TDateTimeField
      FieldName = 'MVESDMOV'
    end
    object TblTemporariaMVESICOD: TIntegerField
      FieldName = 'MVESICOD'
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object TblTemporariaMVESN3QTDENTRADA: TFloatField
      FieldName = 'MVESN3QTDENTRADA'
    end
    object TblTemporariaMVESN3QTDSAIDA: TFloatField
      FieldName = 'MVESN3QTDSAIDA'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Size = 60
    end
    object TblTemporariaValorCusto: TCurrencyField
      FieldName = 'ValorCusto'
    end
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 423
    Top = 5
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRUPO Where (%MFiltro)'
      'order by GRUPA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 451
    Top = 5
    object SQLGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'UNITGESTAO.GRUPO.GRUPICOD'
    end
    object SQLGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'UNITGESTAO.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLSubGrupo: TDataSource
    DataSet = SQLSubGrupo
    Left = 481
    Top = 5
  end
  object SQLSubGrupo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'select * from SUBGRUPO Where GRUPICOD = :GRUPICOD'
      'order by SUBGA60DESCR')
    Macros = <>
    Left = 509
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GRUPICOD'
        ParamType = ptUnknown
      end>
    object SQLSubGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'UNITGESTAO.SUBGRUPO.GRUPICOD'
    end
    object SQLSubGrupoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'UNITGESTAO.SUBGRUPO.SUBGICOD'
    end
    object SQLSubGrupoSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Origin = 'UNITGESTAO.SUBGRUPO.SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLVariacao: TDataSource
    DataSet = SQLVariacao
    Left = 539
    Top = 5
  end
  object SQLVariacao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubGrupo
    SQL.Strings = (
      'select * from VARIACAO where SUBGICOD = :SUBGICOD '
      'and GRUPICOD = :GRUPICOD'
      'order by VARIA60DESCR')
    Macros = <>
    Left = 567
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SUBGICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPICOD'
        ParamType = ptUnknown
      end>
    object SQLVariacaoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'UNITGESTAO.VARIACAO.GRUPICOD'
    end
    object SQLVariacaoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'UNITGESTAO.VARIACAO.SUBGICOD'
    end
    object SQLVariacaoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'UNITGESTAO.VARIACAO.VARIICOD'
    end
    object SQLVariacaoVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      Origin = 'UNITGESTAO.VARIACAO.VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLMarca: TDataSource
    DataSet = SQLMarca
    Left = 597
    Top = 5
  end
  object SQLMarca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MARCA'
      'order by MARCA60DESCR')
    Macros = <>
    Left = 625
    Top = 5
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'UNITGESTAO.MARCA.MARCICOD'
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'UNITGESTAO.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLGrade: TDataSource
    DataSet = SQLGrade
    Left = 655
    Top = 5
  end
  object SQLGrade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRADE'
      'order by GRADA30DESCR')
    Macros = <>
    Left = 683
    Top = 5
    object SQLGradeGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'UNITGESTAO.GRADE.GRADICOD'
    end
    object SQLGradeGRADA30DESCR: TStringField
      FieldName = 'GRADA30DESCR'
      Origin = 'UNITGESTAO.GRADE.GRADA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLUnidade: TDataSource
    DataSet = SQLUnidade
    Left = 713
    Top = 5
  end
  object SQLUnidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from UNIDADE'
      'order by UNIDA5DESCR')
    Macros = <>
    Left = 741
    Top = 5
    object SQLUnidadeUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'UNITGESTAO.UNIDADE.UNIDICOD'
    end
    object SQLUnidadeUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'UNITGESTAO.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOESTOQUE.EMPRICOD,'
      '  MOVIMENTOESTOQUE.MVESDMOV,'
      '  MOVIMENTOESTOQUE.MVESICOD,'
      '  PRODUTO.PRODICOD,'
      '  MOVIMENTOESTOQUE.MVESN3QTDENTRADA,'
      '  MOVIMENTOESTOQUE.MVESN3QTDSAIDA,'
      '  MOVIMENTOESTOQUE.CUPOA13ID,'
      '  MOVIMENTOESTOQUE.MOVDA13ID,'
      '  MOVIMENTOESTOQUE.NOCPA13ID,'
      '  MOVIMENTOESTOQUE.NOFIA13ID,'
      '  MOVIMENTOESTOQUE.OPESICOD,'
      '  OPERACAOESTOQUE.OPESA60DESCR,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODIAGRUPGRADE,'
      '  PRODUTO.PRODA60REFER,'
      '  COR.CORA30DESCR,'
      '  UNIDADE.UNIDA5DESCR,'
      '  GRADETAMANHO.GRTMA5DESCR'
      '  %CamposCliente'
      'from'
      
        '  MOVIMENTOESTOQUE inner join      PRODUTO      on MOVIMENTOESTO' +
        'QUE.PRODICOD = PRODUTO.PRODICOD'
      '  left outer join COR          on PRODUTO.CORICOD  = COR.CORICOD'
      
        '  left outer join UNIDADE on PRODUTO.UNIDICOD  = UNIDADE.UNIDICO' +
        'D'
      
        '  left outer join GRADETAMANHO on PRODUTO.GRADICOD = GRADETAMANH' +
        'O.GRADICOD AND PRODUTO.GRTMICOD = GRADETAMANHO.GRTMICOD'
      
        '  left outer join OPERACAOESTOQUE on MOVIMENTOESTOQUE.OPESICOD =' +
        ' OPERACAOESTOQUE.OPESICOD'
      '  %JoinCliente'
      'where'
      '  (%MEmpresa)'
      '  and (%MData)'
      '  and (%MGrupo)'
      '  and (%MSubGrupo)'
      '  and (%MVariacao)'
      '  and (%MMarca)'
      '  and (%MGrade)'
      '  and (%MUnidade)'
      '  and (%MGrade)'
      '  and (%MOperacaoEstoque)'
      '  and (%Produto)'
      '  and (%Cliente)'
      '  and (%MColecao)'
      'order by'
      '  %MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'CamposCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'JoinCliente'
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
        Name = 'MGrade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MUnidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperacaoEstoque'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Produto'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cliente'
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
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 390
    Top = 37
    object SQLProdutoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLProdutoMVESDMOV: TDateTimeField
      FieldName = 'MVESDMOV'
    end
    object SQLProdutoMVESICOD: TIntegerField
      FieldName = 'MVESICOD'
    end
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLProdutoMVESN3QTDENTRADA: TFloatField
      FieldName = 'MVESN3QTDENTRADA'
    end
    object SQLProdutoMVESN3QTDSAIDA: TFloatField
      FieldName = 'MVESN3QTDSAIDA'
    end
    object SQLProdutoCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLProdutoOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Size = 60
    end
    object SQLProdutoUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object SQLProdutoGrade: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From PRODUTO')
    Macros = <>
    Left = 434
    Top = 36
    object SQLProdutoGradePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoGradePRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoGradePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'D:\DESENV\UnitGestao\Relatorios\Listagem de Produtos.rpt'
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
      '"Periodo Emissao"')
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
    Left = 201
    Top = 5
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OPERACAOESTOQUE'
      'order by OPESA60DESCR')
    Macros = <>
    Left = 625
    Top = 36
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 597
    Top = 36
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 655
    Top = 37
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLIEA13ID,CLIEA60RAZAOSOC from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 683
    Top = 37
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProdutoAux: TDataSource
    DataSet = SQLProdutoAux
    Left = 540
    Top = 36
  end
  object SQLProdutoAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'PRODUTO.PRODICOD,'
      'PRODUTO.PRODA60DESCR,'
      'COR.CORA30DESCR,'
      'GRADETAMANHO.GRTMA5DESCR '
      'from '
      'PRODUTO'
      'left outer join COR          on PRODUTO.CORICOD  = COR.CORICOD'
      
        'left outer join GRADETAMANHO on PRODUTO.GRADICOD = GRADETAMANHO.' +
        'GRADICOD AND PRODUTO.GRTMICOD = GRADETAMANHO.GRTMICOD'
      'order by '
      'PRODUTO.PRODA60DESCR,'
      'COR.CORA30DESCR,'
      'GRADETAMANHO.GRTMA5DESCR ')
    Macros = <>
    Left = 568
    Top = 36
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
    object SQLProdutoAuxCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoAuxGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLColecao: TDataSource
    DataSet = SQLColecao
    Left = 509
    Top = 36
  end
  object SQLColecao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from COLECAO'
      'order by COLEA60DESCR')
    Macros = <>
    Left = 481
    Top = 36
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
end
