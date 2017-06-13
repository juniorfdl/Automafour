inherited FormRelatorioListagemParaInventarioPorGradePorProduto: TFormRelatorioListagemParaInventarioPorGradePorProduto
  Tag = 2
  Caption = 'Listagem para invent'#225'rio por grade por produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Left = 16
      Top = 92
      Width = 761
      Height = 298
      inherited BtnVisualizar: TSpeedButton
        Left = 271
        Top = 265
      end
      inherited GroupBox1: TGroupBox
        Top = 118
        Visible = False
      end
      object GroupOrdem: TGroupBox
        Left = 421
        Top = 208
        Width = 242
        Height = 40
        Caption = ' Ordem '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
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
          Left = 158
          Top = 17
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
      object GroupFiltro: TGroupBox
        Left = 421
        Top = 4
        Width = 329
        Height = 203
        Caption = 'Filtrar Por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object Label5: TLabel
          Left = 11
          Top = 17
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
          Top = 53
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
          Top = 89
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
          Top = 124
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
          Top = 160
          Width = 19
          Height = 13
          Caption = 'Cor'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboGrupo: TRxDBLookupCombo
          Left = 11
          Top = 32
          Width = 305
          Height = 21
          DropDownCount = 8
          LookupField = 'GRUPICOD'
          LookupDisplay = 'GRUPA60DESCR'
          LookupSource = DSSQLGrupo
          TabOrder = 0
          OnChange = ComboGrupoChange
          OnKeyDown = ComboReferKeyDown
        end
        object ComboSubGrupo: TRxDBLookupCombo
          Left = 11
          Top = 68
          Width = 305
          Height = 21
          DropDownCount = 8
          Enabled = False
          LookupField = 'SUBGICOD'
          LookupDisplay = 'SUBGA60DESCR'
          LookupSource = DSSQLSubGrupo
          TabOrder = 1
          OnChange = ComboSubGrupoChange
          OnKeyDown = ComboReferKeyDown
        end
        object ComboVariacao: TRxDBLookupCombo
          Left = 11
          Top = 104
          Width = 305
          Height = 21
          DropDownCount = 8
          Enabled = False
          LookupField = 'VARIICOD'
          LookupDisplay = 'VARIA60DESCR'
          LookupSource = DSSQLVariacao
          TabOrder = 2
          OnKeyDown = ComboReferKeyDown
        end
        object ComboMarca: TRxDBLookupCombo
          Left = 11
          Top = 139
          Width = 305
          Height = 21
          DropDownCount = 8
          LookupField = 'MARCICOD'
          LookupDisplay = 'MARCA60DESCR'
          LookupSource = DSSQLMarca
          TabOrder = 3
          OnKeyDown = ComboReferKeyDown
        end
        object ComboCor: TRxDBLookupCombo
          Left = 11
          Top = 175
          Width = 305
          Height = 21
          DropDownCount = 8
          LookupField = 'CORICOD'
          LookupDisplay = 'CORA30DESCR'
          LookupSource = DSSQLCor
          TabOrder = 4
          OnKeyDown = ComboReferKeyDown
        end
      end
      object GroupGrade: TGroupBox
        Left = 11
        Top = 161
        Width = 408
        Height = 46
        Caption = 'Grade do Produto'
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
          Width = 84
          Height = 21
          TabOrder = 0
          OnExit = EditGradeExit
        end
        object EditDesc: TEdit
          Left = 95
          Top = 16
          Width = 308
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
      object GroupRef: TGroupBox
        Left = 11
        Top = 208
        Width = 408
        Height = 40
        Caption = 'Refer'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboRefer: TRxDBLookupCombo
          Left = 5
          Top = 15
          Width = 396
          Height = 21
          DropDownCount = 8
          LookupField = 'PRODA60REFER'
          LookupDisplay = 'PRODA60REFER'
          LookupSource = DSSQLReferencia
          TabOrder = 0
          OnKeyDown = ComboReferKeyDown
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
  end
  object DSSQLMarca: TDataSource
    DataSet = SQLMarca
    Left = 597
    Top = 5
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
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  PRODUTO.PRODICOD,'
      '  PRODUTO.PRODIAGRUPGRADE,'
      '  PRODUTO.PRODA60REFER,'
      '  COR.CORA30DESCR,'
      '  MARCA.MARCA60DESCR,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTOSALDO.PSLDN3QTDE as SALDO,'
      '  PRODUTOSALDO.EMPRICOD,'
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
      
        '  PRODUTO inner join PRODUTOSALDO on PRODUTO.PRODICOD=PRODUTOSAL' +
        'DO.PRODICOD'
      
        '          left outer join COR      on PRODUTO.CORICOD  = COR.COR' +
        'ICOD'
      
        '          left outer join MARCA    on PRODUTO.MARCICOD = MARCA.M' +
        'ARCICOD'
      
        '          left outer join GRUPO on PRODUTO.GRUPICOD=GRUPO.GRUPIC' +
        'OD'
      
        '          left outer join SUBGRUPO on GRUPO.GRUPICOD=SUBGRUPO.GR' +
        'UPICOD and PRODUTO.SUBGICOD=SUBGRUPO.SUBGICOD'
      
        '          left outer join VARIACAO on (SUBGRUPO.GRUPICOD=VARIACA' +
        'O.GRUPICOD and SUBGRUPO.SUBGICOD=VARIACAO.SUBGICOD and PRODUTO.V' +
        'ARIICOD=VARIACAO.VARIICOD)'
      'where'
      '  (PRODUTO.PRODA2TIPOITEM = '#39'00'#39') and'
      '  (%MEmpresa) and'
      '  (%MGrupo) and'
      '  (%MSubGrupo) and'
      '  (%MVariacao) and'
      '  (%MMarca) and'
      '  (%Grade) and'
      '  (%MCor)and'
      '  (%MRefer)and'
      
        '  (PRODUTO.GRADICOD is not Null and  PRODUTO.GRTMICOD is not Nul' +
        'l)'
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
        Name = 'Grade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MRefer'
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
    object SQLProdutoPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 3
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
  object SQLProdutoGrade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PRODUTO')
    Macros = <>
    Left = 674
    Top = 4
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
  object SQLCor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CORICOD,CORA30DESCR FROM COR'
      'ORDER BY CORA30DESCR')
    Macros = <>
    Left = 625
    Top = 33
    object SQLCorCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLCor: TDataSource
    DataSet = SQLCor
    Left = 597
    Top = 33
  end
  object SQLReferencia: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PRODA60REFER FROM PRODUTO'
      'GROUP BY PRODA60REFER'
      'ORDER BY'
      'PRODA60REFER')
    Macros = <>
    Left = 567
    Top = 33
    object SQLReferenciaPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLReferencia: TDataSource
    DataSet = SQLReferencia
    Left = 539
    Top = 33
  end
end
