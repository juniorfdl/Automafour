inherited FormCadastroTrocasItem: TFormCadastroTrocasItem
  Left = 265
  Top = 130
  Caption = 'Itens de Troca'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 136
            Height = 313
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 240
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookup'
                    Width = 359
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVDIN3QTD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVDIN3VLRCUSTO'
                    Title.Caption = 'Vlr.Custo Unit'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Top = 111
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label5: TLabel
                Left = 0
                Top = 0
                Width = 259
                Height = 23
                Align = alTop
                Alignment = taCenter
                Caption = 'Lista de produtos inclu'#237'dos'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -19
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBGrid1: TDBGrid
                Left = 0
                Top = 23
                Width = 749
                Height = 264
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSSQLItens
                FixedColor = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                OnDrawColumnCell = DBGridListaDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Width = 53
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookup'
                    Width = 324
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVDIN3QTD'
                    Width = 68
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 127
            Height = 9
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 127
            object GroupBox1: TGroupBox
              Left = 6
              Top = 0
              Width = 647
              Height = 72
              TabOrder = 0
              object AcessaProduto: TSpeedButton
                Left = 503
                Top = 23
                Width = 24
                Height = 22
                Hint = 'Acessa Cadastro de Produtos'
                Flat = True
                Glyph.Data = {
                  E6000000424DE60000000000000076000000280000000E0000000E0000000100
                  0400000000007000000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                  DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                  DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                  DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                  DD00DDDDDDDDDDDDDD00}
                OnClick = AcessaProdutoClick
              end
              object Label50: TLabel
                Left = 369
                Top = 24
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
              object Label49: TLabel
                Left = 385
                Top = 11
                Width = 63
                Height = 13
                Caption = 'Ref.F'#225'brica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 6
                Top = 10
                Width = 323
                Height = 13
                Caption = 'Procura por C'#243'digos ou pela Descri'#231#227'o ou  [F2 - Cadastro]'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit11: TDBEdit
                Left = 6
                Top = 48
                Width = 631
                Height = 21
                TabStop = False
                BorderStyle = bsNone
                DataField = 'ProdutoLookUp'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 0
              end
              object EditCdProduto: TEdit
                Left = 4
                Top = 23
                Width = 365
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 1
                OnEnter = EditCdProdutoEnter
              end
              object EditReferencia: TEdit
                Left = 381
                Top = 24
                Width = 120
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 2
                OnKeyDown = EditReferenciaKeyDown
              end
            end
            object GroupBox2: TGroupBox
              Left = 6
              Top = 72
              Width = 648
              Height = 49
              TabOrder = 1
              object Label2: TLabel
                Left = 7
                Top = 10
                Width = 65
                Height = 13
                Caption = 'Quantidade'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LSaldo: TLabel
                Left = 511
                Top = 8
                Width = 78
                Height = 13
                Caption = 'Estoque Atual'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 97
                Top = 10
                Width = 76
                Height = 13
                Caption = 'Vlr.Custo Unit'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit2: TDBEdit
                Left = 4
                Top = 23
                Width = 86
                Height = 21
                DataField = 'MVDIN3QTD'
                DataSource = DSTemplate
                TabOrder = 0
                OnExit = DBEdit2Exit
              end
              object SaldoAtual: TCurrencyEdit
                Left = 506
                Top = 23
                Width = 106
                Height = 21
                TabStop = False
                AutoSize = False
                Color = 16249066
                Ctl3D = True
                DecimalPlaces = 3
                DisplayFormat = '0.000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit1: TDBEdit
                Left = 94
                Top = 23
                Width = 86
                Height = 21
                TabStop = False
                Color = 16249066
                Ctl3D = True
                DataField = 'MVDIN3VLRCUSTO'
                DataSource = DSTemplate
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 2
              end
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnImportarProdutosColetor: TMenuItem
      Caption = 'Importar Produtos do Coletor'
      OnClick = MnImportarProdutosColetorClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MnImprimirItens: TMenuItem
      Caption = 'Imprimir Itens'
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      '  MOVIMENTODIVERSOITEM '
      'Where '
      '  MOVDA13ID = :MOVDA13ID and '
      '  (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'MOVDA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateMOVDA13ID: TStringField
      Tag = 1
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateMVDIIITEM: TIntegerField
      Tag = 1
      FieldName = 'MVDIIITEM'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIIITEM'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PRODICOD'
      OnChange = SQLTemplatePRODICODChange
    end
    object SQLTemplateProdutoLookup: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 60
      Calculated = True
    end
    object SQLTemplateMVDIN3QTD: TFloatField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Quantidade'
      FieldName = 'MVDIN3QTD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIN3QTD'
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.REGISTRO'
    end
    object SQLTemplateMVDIN3VLRCUSTO: TFloatField
      FieldName = 'MVDIN3VLRCUSTO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIN3VLRCUSTO'
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT '
      'PRODICOD,'
      'PRODIAGRUPGRADE,'
      'PRODA60REFER,'
      'PRODA60DESCR, '
      'GRADICOD, '
      'GRTMICOD, '
      'CORICOD,'
      'PRODA60CODBAR '
      'FROM'
      'PRODUTO '
      'WHERE '
      'PRODICOD = :PRODICOD')
    Macros = <>
    Left = 68
    Top = 174
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutoPRODA60CODBAR: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 96
    Top = 174
  end
  object SQLItens: TRxQuery
    OnCalcFields = SQLItensCalcFields
    DatabaseName = 'DB'
    DataSource = DSMasterTemplate
    SQL.Strings = (
      'select'
      '*'
      'from'
      'movimentodiversoitem'
      'where'
      'MOVDA13ID = :MOVDA13ID'
      'order by'
      'MOVDA13ID,'
      'MVDIIITEM,'
      'PRODICOD'
      '')
    Macros = <>
    Left = 68
    Top = 230
    ParamData = <
      item
        DataType = ftString
        Name = 'MOVDA13ID'
        ParamType = ptUnknown
      end>
    object SQLItensMOVDA13ID: TStringField
      Tag = 1
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLItensMVDIIITEM: TIntegerField
      Tag = 1
      FieldName = 'MVDIIITEM'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIIITEM'
    end
    object SQLItensPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PRODICOD'
      OnChange = SQLTemplatePRODICODChange
    end
    object SQLItensProdutoLookup: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 60
      Calculated = True
    end
    object SQLItensMVDIN3QTD: TFloatField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Quantidade'
      FieldName = 'MVDIN3QTD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIN3QTD'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object SQLItensPRODIAGRUPGRADE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PRODIAGRUPGRADE'
      Calculated = True
    end
    object SQLItensPRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldKind = fkCalculated
      FieldName = 'PRODA60REFER'
      Size = 60
      Calculated = True
    end
    object SQLItensPRODA60CODBAR: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldKind = fkCalculated
      FieldName = 'PRODA60CODBAR'
      Size = 60
      Calculated = True
    end
  end
  object DSSQLItens: TDataSource
    AutoEdit = False
    DataSet = SQLItens
    Left = 96
    Top = 230
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredValues = <>
    Left = 180
    Top = 1
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 12
    Top = 288
  end
end
