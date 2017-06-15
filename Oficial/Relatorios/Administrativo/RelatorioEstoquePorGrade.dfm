inherited FormRelatorioEstoquePorGrade: TFormRelatorioEstoquePorGrade
  Left = 522
  Top = 83
  Caption = 'Estoque por Grade'
  ClientHeight = 518
  ClientWidth = 792
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 502
    Width = 792
  end
  inherited ScrollBox: TScrollBox
    Width = 792
    Height = 502
    inherited PanelCentro: TPanel
      Left = 1
      Top = 94
      Width = 774
      Height = 396
      inherited BtnVisualizar: TSpeedButton
        Left = 319
        Top = 335
      end
      inherited EmpresaGroup: TGroupBox
        Top = -1
        Width = 418
      end
      inherited GroupBox1: TGroupBox
        Top = 111
        Visible = False
      end
      object GroupFiltro: TGroupBox
        Left = 433
        Top = -1
        Width = 329
        Height = 271
        Caption = 'Filtrar Por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object Label5: TLabel
          Left = 11
          Top = 22
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
          Left = 11
          Top = 61
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
          Left = 11
          Top = 101
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
          Left = 11
          Top = 139
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
          Left = 11
          Top = 178
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
          Left = 243
          Top = 218
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
          Left = 245
          Top = 178
          Width = 53
          Height = 13
          Caption = 'Tamanho'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 11
          Top = 218
          Width = 44
          Height = 13
          Caption = 'Cole'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboGrupo: TRxDBLookupCombo
          Left = 11
          Top = 37
          Width = 305
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
          Left = 11
          Top = 76
          Width = 305
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
          Left = 11
          Top = 116
          Width = 305
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
          Left = 11
          Top = 154
          Width = 305
          Height = 21
          DropDownCount = 8
          LookupField = 'MARCICOD'
          LookupDisplay = 'MARCA60DESCR'
          LookupSource = DSSQLMarca
          TabOrder = 3
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboGrade: TRxDBLookupCombo
          Left = 11
          Top = 193
          Width = 229
          Height = 21
          DropDownCount = 8
          LookupField = 'GRADICOD'
          LookupDisplay = 'GRADA30DESCR'
          LookupSource = DSSQLGrade
          TabOrder = 4
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboUnidade: TRxDBLookupCombo
          Left = 243
          Top = 233
          Width = 73
          Height = 21
          DropDownCount = 8
          LookupField = 'UNIDICOD'
          LookupDisplay = 'UNIDA5DESCR'
          LookupSource = DSSQLUnidade
          TabOrder = 6
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboTamanho: TRxDBLookupCombo
          Left = 243
          Top = 193
          Width = 73
          Height = 21
          DropDownCount = 8
          LookupField = 'GRTMICOD'
          LookupDisplay = 'GRTMA5DESCR'
          LookupSource = DSSQLTamanho
          TabOrder = 5
          OnKeyDown = ComboGrupoKeyDown
        end
        object ComboColecao: TRxDBLookupCombo
          Left = 11
          Top = 233
          Width = 229
          Height = 21
          DropDownCount = 8
          LookupField = 'COLEICOD'
          LookupDisplay = 'COLEA60DESCR'
          LookupSource = dsColecao
          TabOrder = 7
          OnKeyDown = ComboGrupoKeyDown
        end
      end
      object GroupOrdem: TGroupBox
        Left = 272
        Top = 155
        Width = 156
        Height = 66
        Caption = ' Ordem '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object OrdemCodigo: TRadioButton
          Left = 5
          Top = 16
          Width = 59
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
          Left = 6
          Top = 41
          Width = 78
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
          Left = 70
          Top = 16
          Width = 81
          Height = 17
          Caption = 'Refer'#234'ncia'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupTipo: TGroupBox
        Left = 14
        Top = 155
        Width = 257
        Height = 66
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object SaldoMaiorZero: TRadioButton
          Left = 4
          Top = 24
          Width = 250
          Height = 19
          Caption = 'Listar produtos com saldo positivo'
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
        object SaldoMenorZero: TRadioButton
          Left = 4
          Top = 42
          Width = 250
          Height = 19
          Caption = 'Listar produtos com saldo negativo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TabStop = True
        end
        object TodosSaldos: TRadioButton
          Left = 4
          Top = 6
          Width = 250
          Height = 19
          Caption = 'Listar todos produtos'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupHide: TGroupBox
        Left = 14
        Top = 223
        Width = 195
        Height = 46
        Caption = ' Ocultar Pre'#231'o '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object HidePrcCompra: TCheckBox
          Left = 27
          Top = 19
          Width = 62
          Height = 17
          Caption = 'Compra'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object HidePrcVenda: TCheckBox
          Left = 119
          Top = 20
          Width = 53
          Height = 17
          Caption = 'Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object ChkSintetico: TCheckBox
        Left = 214
        Top = 239
        Width = 219
        Height = 17
        Caption = 'Exibir o relat'#243'rio de forma sint'#233'tica'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object GroupGrade: TGroupBox
        Left = 14
        Top = 270
        Width = 488
        Height = 46
        Caption = 'Grade do Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object EditGrade: TEdit
          Left = 8
          Top = 16
          Width = 129
          Height = 21
          TabOrder = 0
          OnExit = EditGradeExit
        end
        object EditDesc: TEdit
          Left = 141
          Top = 16
          Width = 336
          Height = 21
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object EditGradeCodigo: TEdit
          Left = 8
          Top = 40
          Width = 110
          Height = 21
          TabOrder = 2
          Visible = False
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 788
      inherited PanelCabecalho: TPanel
        Width = 788
        inherited PanelNavigator: TPanel
          Width = 788
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 788
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'EstoquePorGrade.DB'
    object TblTemporariaEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 60
    end
    object TblTemporariaCORA60DESCR: TStringField
      FieldName = 'CORA60DESCR'
      Size = 60
    end
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Size = 60
    end
    object TblTemporariaPRODA60MARCA: TStringField
      FieldName = 'PRODA60MARCA'
      Size = 60
    end
    object TblTemporariaPRODN2VLRCUSTO: TFloatField
      FieldName = 'PRODN2VLRCUSTO'
    end
    object TblTemporariaPRODN2VLRVENDA: TFloatField
      FieldName = 'PRODN2VLRVENDA'
    end
    object TblTemporariaPRODN2MARGEM: TFloatField
      FieldName = 'PRODN2MARGEM'
    end
    object TblTemporariaPRODDULTRECTO: TDateField
      FieldName = 'PRODDULTRECTO'
    end
    object TblTemporariaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object TblTemporariaQTD1: TFloatField
      FieldName = 'QTD1'
    end
    object TblTemporariaQTD2: TFloatField
      FieldName = 'QTD2'
    end
    object TblTemporariaQTD3: TFloatField
      FieldName = 'QTD3'
    end
    object TblTemporariaQTD4: TFloatField
      FieldName = 'QTD4'
    end
    object TblTemporariaQTD5: TFloatField
      FieldName = 'QTD5'
    end
    object TblTemporariaQTD6: TFloatField
      FieldName = 'QTD6'
    end
    object TblTemporariaQTD7: TFloatField
      FieldName = 'QTD7'
    end
    object TblTemporariaQTD8: TFloatField
      FieldName = 'QTD8'
    end
    object TblTemporariaQTD9: TFloatField
      FieldName = 'QTD9'
    end
    object TblTemporariaQTD10: TFloatField
      FieldName = 'QTD10'
    end
    object TblTemporariaQTD11: TFloatField
      FieldName = 'QTD11'
    end
    object TblTemporariaQTD12: TFloatField
      FieldName = 'QTD12'
    end
    object TblTemporariaQTD13: TFloatField
      FieldName = 'QTD13'
    end
    object TblTemporariaQTD14: TFloatField
      FieldName = 'QTD14'
    end
    object TblTemporariaQTD15: TFloatField
      FieldName = 'QTD15'
    end
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object TblTemporariaVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object TblTemporariaGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Size = 60
    end
    object TblTemporariaSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Size = 60
    end
    object TblTemporariaVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      Size = 60
    end
    object TblTemporariaTotVenda: TFloatField
      FieldName = 'TotVenda'
    end
    object TblTemporariaTotCusto: TFloatField
      FieldName = 'TotCusto'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTemporariaCOLEA60DESCR: TStringField
      FieldName = 'COLEA60DESCR'
      Size = 60
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
    Left = 600
    Top = 51
  end
  object SQLGrade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRADE'
      'order by GRADA30DESCR')
    Macros = <>
    Left = 628
    Top = 51
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
      '  PRODUTO.PRODICOD,'
      '  PRODUTO.PRODIAGRUPGRADE,'
      '  PRODUTO.PRODA60REFER,'
      '  COR.CORA30DESCR,'
      '  MARCA.MARCA60DESCR,'
      '  COLECAO.COLEA60DESCR,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTOSALDO.PSLDN3QTDE as SALDO,'
      '  PRODUTOSALDO.EMPRICOD,'
      '  PRODUTO.COLEICOD,'
      '  PRODUTO.GRUPICOD,'
      '  PRODUTO.SUBGICOD,'
      '  PRODUTO.VARIICOD,'
      '  GRUPO.GRUPA60DESCR,'
      '  SUBGRUPO.SUBGA60DESCR,'
      '  VARIACAO.VARIA60DESCR,'
      '  PRODUTO.CORICOD,'
      '  PRODUTO.GRADICOD,'
      '  PRODUTO.GRTMICOD,'
      '  PRODUTO.PRODA60DESCR'
      'from'
      
        '  PRODUTO inner join PRODUTOSALDO  on PRODUTO.PRODICOD=PRODUTOSA' +
        'LDO.PRODICOD'
      
        '          left outer join COR      on PRODUTO.CORICOD  = COR.COR' +
        'ICOD'
      
        '          left outer join MARCA    on PRODUTO.MARCICOD = MARCA.M' +
        'ARCICOD'
      
        '          left outer join COLECAO  on PRODUTO.COLEICOD = COLECAO' +
        '.COLEICOD'
      
        '          left outer join GRUPO    on PRODUTO.GRUPICOD = GRUPO.G' +
        'RUPICOD'
      
        '          left outer join SUBGRUPO on GRUPO.GRUPICOD=SUBGRUPO.GR' +
        'UPICOD and PRODUTO.SUBGICOD=SUBGRUPO.SUBGICOD'
      
        '          left outer join VARIACAO on (SUBGRUPO.GRUPICOD=VARIACA' +
        'O.GRUPICOD and SUBGRUPO.SUBGICOD=VARIACAO.SUBGICOD and PRODUTO.V' +
        'ARIICOD=VARIACAO.VARIICOD)'
      'where'
      '  (%MEmpresa) and'
      '  (%MSaldo) and'
      '  (%MGrupo) and'
      '  (%MSubGrupo) and'
      '  (%MVariacao) and'
      '  (%MMarca) and'
      '  (%MColecao) and'
      '  (%MGrade) and'
      '  (%MTamanho) and'
      '  (%MUnidade) and'
      '  (%Grade)'
      'order by'
      'PRODUTOSALDO.EMPRICOD,'
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
        Name = 'MSaldo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
        Name = 'MGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
        Name = 'MSubGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
        Name = 'MVariacao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
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
        DataType = ftInteger
        Name = 'MGrade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTamanho'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
        Name = 'MUnidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Grade'
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
    Top = 38
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
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
    object SQLProdutoMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
    end
    object SQLProdutoPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
    end
    object SQLProdutoSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLProdutoCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
    end
    object SQLProdutoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object SQLProdutoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object SQLProdutoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object SQLProdutoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
    end
    object SQLProdutoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
    end
    object SQLProdutoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoCOLEA60DESCR: TStringField
      FieldName = 'COLEA60DESCR'
      Size = 60
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\UnitGestao\Relatorios\Estoque por Grade.rpt'
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
  object TblLegenda: TTable
    Tag = 1
    AfterPost = TblTemporariaAfterPost
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'LegendaGradeEstoque.DB'
    Left = 360
    Top = 37
    object TblLegendaLEGENDA: TIntegerField
      FieldName = 'LEGENDA'
    end
    object TblLegendaTOTAL: TStringField
      FieldName = 'TOTAL'
      Size = 5
    end
    object TblLegendaQTD1: TStringField
      FieldName = 'QTD1'
      Size = 5
    end
    object TblLegendaQTD2: TStringField
      FieldName = 'QTD2'
      Size = 5
    end
    object TblLegendaQTD3: TStringField
      FieldName = 'QTD3'
      Size = 5
    end
    object TblLegendaQTD4: TStringField
      FieldName = 'QTD4'
      Size = 5
    end
    object TblLegendaQTD5: TStringField
      FieldName = 'QTD5'
      Size = 5
    end
    object TblLegendaQTD6: TStringField
      FieldName = 'QTD6'
      Size = 5
    end
    object TblLegendaQTD7: TStringField
      FieldName = 'QTD7'
      Size = 5
    end
    object TblLegendaQTD8: TStringField
      FieldName = 'QTD8'
      Size = 5
    end
    object TblLegendaQTD9: TStringField
      FieldName = 'QTD9'
      Size = 5
    end
    object TblLegendaQTD10: TStringField
      FieldName = 'QTD10'
      Size = 5
    end
    object TblLegendaQTD11: TStringField
      FieldName = 'QTD11'
      Size = 5
    end
    object TblLegendaQTD12: TStringField
      FieldName = 'QTD12'
      Size = 5
    end
    object TblLegendaQTD13: TStringField
      FieldName = 'QTD13'
      Size = 5
    end
    object TblLegendaQTD14: TStringField
      FieldName = 'QTD14'
      Size = 5
    end
    object TblLegendaQTD15: TStringField
      FieldName = 'QTD15'
      Size = 5
    end
  end
  object SQLProdutoGrade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PRODUTO')
    Macros = <>
    Left = 522
    Top = 372
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
  object SQLTamanho: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrade
    SQL.Strings = (
      'SELECT GRADICOD,GRTMICOD, GRTMA5DESCR'
      'FROM GRADETAMANHO'
      'WHERE '
      'GRADICOD = :GRADICOD')
    Macros = <>
    Left = 676
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLTamanhoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADETAMANHO.GRADICOD'
    end
    object SQLTamanhoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.GRADETAMANHO.GRTMICOD'
    end
    object SQLTamanhoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Origin = 'DB.GRADETAMANHO.GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLTamanho: TDataSource
    DataSet = SQLTamanho
    Left = 648
    Top = 80
  end
  object sqlColecao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from COLECAO'
      'order by COLEA60DESCR')
    Macros = <>
    Left = 704
    Top = 51
    object sqlColecaoCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
      Origin = 'DB.COLECAO.COLEICOD'
    end
    object sqlColecaoCOLEA60DESCR: TStringField
      FieldName = 'COLEA60DESCR'
      Origin = 'DB.COLECAO.COLEA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object dsColecao: TDataSource
    DataSet = sqlColecao
    Left = 676
    Top = 51
  end
end
