inherited FormTelaConsultaSaldoPorEmpresa: TFormTelaConsultaSaldoPorEmpresa
  Left = 351
  Top = 88
  Caption = 'Consulta de Saldo por Empresa'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      Top = 68
      Height = 279
      inherited PanelBarra: TPanel
        Top = 66
        Width = 0
        Height = 128
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 799
        Height = 66
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object Label1: TLabel
          Left = 5
          Top = 3
          Width = 163
          Height = 13
          Caption = '&C'#243'd. Reduzido ou C'#243'd. Barras'
          FocusControl = Codigo
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelLeitor: TLabel
          Left = 189
          Top = 20
          Width = 182
          Height = 13
          Caption = 'Leitor Habilitado na Porta Serial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Codigo: TEdit
          Left = 3
          Top = 16
          Width = 180
          Height = 21
          TabOrder = 0
          OnKeyDown = CodigoKeyDown
        end
        object ComboProduto: TRxDBLookupCombo
          Left = 2
          Top = 40
          Width = 751
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Digite aqui a Referencia do produto...'
          LookupField = 'PRODICOD'
          LookupDisplay = 'PRODICOD;PRODA60DESCR;PRODA60REFER'
          LookupDisplayIndex = 2
          LookupSource = DSSQLProdutoAux
          TabOrder = 1
          OnChange = ComboProdutoChange
        end
      end
      object DBGridGrade: TDBGrid
        Left = 0
        Top = 66
        Width = 799
        Height = 128
        TabStop = False
        Align = alClient
        DataSource = DSTblSaldoEmpresa
        FixedColor = 16767449
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'Empresa'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cor'
            Width = 199
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd1'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd2'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd3'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd4'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd5'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd6'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd7'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd8'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd9'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd10'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd11'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd12'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd13'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd14'
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtd15'
            Width = 22
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 194
        Width = 799
        Height = 85
        Align = alBottom
        Color = 16249066
        TabOrder = 3
        object LbVenda: TRxLabel
          Left = 542
          Top = 39
          Width = 207
          Height = 34
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -32
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ParentFont = False
          ShadowColor = clBlack
          Transparent = True
        end
        object RxLabel1: TRxLabel
          Left = 600
          Top = 6
          Width = 144
          Height = 34
          Caption = 'Valor Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ParentFont = False
          ShadowColor = clBlack
          Transparent = True
        end
        object RxLabel2: TRxLabel
          Left = 7
          Top = 6
          Width = 79
          Height = 34
          Caption = 'Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ParentFont = False
          ShadowColor = clBlack
          Transparent = True
        end
        object LBMarca: TRxLabel
          Left = 8
          Top = 39
          Width = 457
          Height = 34
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -29
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ParentFont = False
          ShadowColor = clBlack
          Transparent = True
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Height = 68
      inherited PanelCabecalho: TPanel
        Height = 68
        inherited LabelTitulo: TLabel
          Left = 3
        end
        inherited PanelNavigator: TPanel
          Top = 36
        end
      end
    end
  end
  object TblSaldoEmpresa: TMemoryTable
    TableName = 'TblSaldoEmpresa'
    Left = 292
    Top = 160
    object TblSaldoEmpresaEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 60
    end
    object TblSaldoEmpresaCor: TStringField
      FieldName = 'Cor'
      Size = 60
    end
    object TblSaldoEmpresaTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd1: TFloatField
      FieldName = 'Qtd1'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd2: TFloatField
      FieldName = 'Qtd2'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd3: TFloatField
      FieldName = 'Qtd3'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd4: TFloatField
      FieldName = 'Qtd4'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd5: TFloatField
      FieldName = 'Qtd5'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd6: TFloatField
      FieldName = 'Qtd6'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd7: TFloatField
      FieldName = 'Qtd7'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd8: TFloatField
      FieldName = 'Qtd8'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd9: TFloatField
      FieldName = 'Qtd9'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd10: TFloatField
      FieldName = 'Qtd10'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd11: TFloatField
      FieldName = 'Qtd11'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd12: TFloatField
      FieldName = 'Qtd12'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd13: TFloatField
      FieldName = 'Qtd13'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd14: TFloatField
      FieldName = 'Qtd14'
      DisplayFormat = '#'
    end
    object TblSaldoEmpresaQtd15: TFloatField
      FieldName = 'Qtd15'
      DisplayFormat = '#'
    end
  end
  object DSTblSaldoEmpresa: TDataSource
    AutoEdit = False
    DataSet = TblSaldoEmpresa
    Left = 292
    Top = 188
  end
  object SQLProdutoGrade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PRODUTO')
    Macros = <>
    Left = 154
    Top = 174
    object SQLProdutoGradePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoGradePRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoGradePRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGradePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGradePRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
    end
    object SQLProdutoGradePRODN3VLRCOMPRA: TFloatField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
    end
    object SQLProdutoGradePRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
    end
    object SQLProdutoGradeGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGradeMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
  end
  object SQLProdutoOldView: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * FROM VIEW_GRADEPRODUTO'
      'Where PRODIAGRUPGRADE=:PRODIAGRUPGRADE'
      'order by EMPRICOD,CORA30DESCR,GRADICOD,GRTMICOD')
    Macros = <>
    Left = 206
    Top = 198
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODIAGRUPGRADE'
        ParamType = ptUnknown
      end>
    object SQLProdutoOldViewEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLProdutoOldViewCORICOD: TIntegerField
      FieldName = 'CORICOD'
    end
    object SQLProdutoOldViewEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoOldViewCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoOldViewPSLDN3QTDE: TFloatField
      FieldName = 'PSLDN3QTDE'
    end
    object SQLProdutoOldViewGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
    end
    object SQLProdutoOldViewGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
    end
  end
  object SQLGradeTamanho: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From GRADETAMANHO'
      'Where GRADICOD=:GRADICOD')
    Macros = <>
    Left = 98
    Top = 174
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
      end>
    object SQLGradeTamanhoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADETAMANHO.GRADICOD'
    end
    object SQLGradeTamanhoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.GRADETAMANHO.GRTMICOD'
    end
    object SQLGradeTamanhoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Origin = 'DB.GRADETAMANHO.GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLGradeTamanhoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.GRADETAMANHO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLGradeTamanhoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.GRADETAMANHO.REGISTRO'
    end
  end
  object DSSQLProdutoAux: TDataSource
    DataSet = SQLProdutoAux
    Left = 126
    Top = 202
  end
  object SQLProdutoAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'PRODICOD, '
      'PRODA60DESCR,'
      'PRODA60REFER'
      'FROM '
      'PRODUTO'
      'WHERE'
      'PRODICOD = PRODIAGRUPGRADE'
      'ORDER BY  PRODA60REFER')
    Macros = <>
    Left = 154
    Top = 202
    object SQLProdutoAuxPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoAuxPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoAuxPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
  end
  object TimerLeitorConsulta: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerLeitorConsultaTimer
    Left = 181
    Top = 5
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  PRODUTO.PRODICOD,'
      '  PRODUTO.PRODIAGRUPGRADE,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODN3VLRCUSTO,'
      '  PRODUTO.PRODN3VLRVENDA,'
      '  PRODUTO.CORICOD,'
      '  PRODUTO.GRADICOD,'
      '  PRODUTO.GRTMICOD,'
      '  COR.CORA30DESCR,'
      '  PRODUTOSALDO.PSLDN3QTDE,'
      '  PRODUTOSALDO.EMPRICOD'
      'From'
      
        '  PRODUTO inner join PRODUTOSALDO on PRODUTO.PRODICOD=PRODUTOSAL' +
        'DO.PRODICOD'
      
        '          left outer join COR     on PRODUTO.CORICOD  = COR.CORI' +
        'COD'
      'Where PRODUTO.PRODIAGRUPGRADE = :PRODIAGRUPGRADE'
      
        'Order by PRODUTOSALDO.EMPRICOD,COR.CORA30DESCR, PRODUTO.GRADICOD' +
        ', PRODUTO.GRTMICOD'
      'Asc')
    Macros = <>
    Left = 126
    Top = 174
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODIAGRUPGRADE'
        ParamType = ptUnknown
      end>
    object SQLProdutoPRODICOD2: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLProdutoPRODIAGRUPGRADE2: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA60DESCR2: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
    end
    object SQLProdutoPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
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
    object SQLProdutoCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPSLDN3QTDE: TFloatField
      FieldName = 'PSLDN3QTDE'
    end
    object SQLProdutoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
  end
end
