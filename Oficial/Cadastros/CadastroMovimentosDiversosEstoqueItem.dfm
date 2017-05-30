inherited FormCadastroMovimentosDiversosEstoqueItem: TFormCadastroMovimentosDiversosEstoqueItem
  Left = 261
  Top = 164
  Caption = 'Itens Movimentos Diversos Estoque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 203
            Height = 246
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 173
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Width = 40
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
                    FieldName = 'ReferenciaLookup'
                    Title.Caption = 'Referencia'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVDIN3QTD'
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'LOTEA30NRO'
                    Width = 120
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
                Height = 197
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
                    Width = 41
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60CODBAR'
                    Width = 99
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60REFER'
                    Width = 83
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookup'
                    Width = 332
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVDIN3QTD'
                    Width = 71
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 162
            object Label9: TLabel
              Left = 8
              Top = 4
              Width = 119
              Height = 13
              Caption = 'Opera'#231#227'o de Estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 534
              Top = 4
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 409
              Top = 4
              Width = 74
              Height = 13
              Caption = 'Data do Mov.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit5: TDBEdit
              Left = 5
              Top = 17
              Width = 396
              Height = 21
              Color = 16249066
              DataField = 'OperacaoEstoqueCalcField'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit6: TDBEdit
              Left = 531
              Top = 17
              Width = 121
              Height = 21
              Color = 16249066
              DataField = 'USUAA60LOGIN'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
            object DBEdit7: TDBEdit
              Left = 406
              Top = 17
              Width = 121
              Height = 21
              Color = 16249066
              DataField = 'MOVDDMOVIMENTO'
              DataSource = DSMasterTemplate
              TabOrder = 2
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 162
            object GroupBox1: TGroupBox
              Left = 6
              Top = 0
              Width = 647
              Height = 110
              TabOrder = 0
              object AcessaProduto: TSpeedButton
                Left = 506
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
              object DBEdit11: TDBEdit
                Left = 6
                Top = 51
                Width = 458
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
                TabOrder = 2
              end
              object CheckGrade: TCheckBox
                Left = 6
                Top = 84
                Width = 318
                Height = 24
                TabStop = False
                Caption = 'N'#227'o abrir tela para lan'#231'amento de grade do produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit1: TDBEdit
                Left = 470
                Top = 51
                Width = 170
                Height = 21
                TabStop = False
                BorderStyle = bsNone
                DataField = 'ReferenciaLookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 3
              end
              object EditCdProduto: TEdit
                Left = 4
                Top = 23
                Width = 365
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 0
                OnEnter = EditCdProdutoEnter
                OnKeyDown = EditCdProdutoKeyDown
              end
              object EditReferencia: TEdit
                Left = 381
                Top = 24
                Width = 120
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 1
                OnEnter = EditReferenciaEnter
                OnKeyDown = EditReferenciaKeyDown
              end
            end
            object GroupBox2: TGroupBox
              Left = 6
              Top = 110
              Width = 648
              Height = 49
              TabOrder = 1
              object Label2: TLabel
                Left = 7
                Top = 10
                Width = 65
                Height = 13
                Caption = 'Quantidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelLote: TLabel
                Left = 282
                Top = 10
                Width = 50
                Height = 13
                Caption = 'Nro. Lote'
                FocusControl = DBEditLote
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
                Left = 95
                Top = 10
                Width = 62
                Height = 13
                Caption = 'Vlr Compra'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 168
                Top = 10
                Width = 53
                Height = 13
                Caption = 'Vlr Venda'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEditLote: TDBEdit
                Left = 279
                Top = 23
                Width = 223
                Height = 21
                DataField = 'LOTEA30NRO'
                DataSource = DSTemplate
                TabOrder = 3
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
                TabOrder = 4
              end
              object DBEditQtde: TEvDBNumEdit
                Left = 6
                Top = 23
                Width = 81
                Height = 21
                AutoHideCalculator = False
                DataField = 'MVDIN3QTD'
                DataSource = DSTemplate
                Decimals = 3
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                TabOrder = 0
                OnEnter = DBEditQtdeEnter
                OnExit = DBEditQtdeExit
              end
              object DBEditCompra: TEvDBNumEdit
                Left = 93
                Top = 23
                Width = 68
                Height = 21
                AutoHideCalculator = False
                DataField = 'PRODN3VLRCOMPRA'
                DataSource = DSTemplate
                Decimals = 3
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                TabOrder = 1
              end
              object EvDBNumVenda: TEvDBNumEdit
                Left = 166
                Top = 23
                Width = 68
                Height = 21
                AutoHideCalculator = False
                DataField = 'PRODN3VLRVENDA'
                DataSource = DSTemplate
                Decimals = 3
                Glyph.Data = {
                  E6020000424DE60200000000000042000000280000001A0000000D0000000100
                  100003000000A402000000000000000000000000000000000000007C0000E003
                  00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                  EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                  EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                  FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                  FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                  FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                  FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                  FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                  EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                  FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                  070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                  EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                  FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                  FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                  FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                  FF5EFF5EFF5EFF5EFF5E}
                TabOrder = 2
                OnExit = EvDBNumVendaExit
              end
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnImportaritensdocoletor: TMenuItem
      Caption = 'Importar produtos do coletor'
      OnClick = MnImportaritensdocoletorClick
    end
    object MnNumerosdeSerie: TMenuItem
      Caption = 'N'#250'mero(s) de S'#233'rie'
      OnClick = MnNumerosdeSerieClick
    end
    object Visualizargradedoproduto1: TMenuItem
      Caption = 'Visualizar grade do produto'
      OnClick = Visualizargradedoproduto1Click
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MnImprimirItens: TMenuItem
      Caption = 'Imprimir Itens'
      OnClick = MnImprimirItensClick
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
      ConstraintErrorMessage = '1'
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
      OnChange = SQLTemplateMVDIN3QTDChange
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
    object SQLTemplateLOTEA30NRO: TStringField
      DisplayLabel = 'Nro. Lote'
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.LOTEA30NRO'
      OnChange = SQLTemplateLOTEA30NROChange
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePRODIAGRUPGRADE: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PRODIAGRUPGRADE'
      Calculated = True
    end
    object SQLTemplateControlaSerieLookup: TStringField
      DisplayLabel = 'Controla S'#233'rie'
      FieldKind = fkCalculated
      FieldName = 'ControlaSerieLookup'
      Size = 1
      Calculated = True
    end
    object SQLTemplateReferenciaLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'ReferenciaLookup'
      Calculated = True
    end
    object SQLTemplatePRODN3VLRCOMPRA: TFloatField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PRODN3VLRCOMPRA'
    end
    object SQLTemplatePRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PRODN3VLRVENDA'
    end
  end
  object ReportItens: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 437
    Top = 1
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 4760393
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'ppLabel1'
        Caption = 'Listagem de Itens de Movimento Diverso de Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1353346
        mmLeft = 139965
        mmTop = 139965
        mmWidth = 29625984
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'ppLabel2'
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 139965
        mmTop = 3570295
        mmWidth = 3136112
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'ppLabel3'
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 5250402
        mmTop = 3570295
        mmWidth = 3710259
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'ppLabel4'
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 33462185
        mmTop = 3500180
        mmWidth = 2240232
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'ppLabel5'
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 39552641
        mmTop = 3500180
        mmWidth = 2072221
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'ppSystemVariable1'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 44803043
        mmTop = 139965
        mmWidth = 7210439
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'ppDBText5'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 1119983
        mmLeft = 6370386
        mmTop = 1680108
        mmWidth = 12670921
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'ppLabel6'
        Caption = 'Movimento :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 139965
        mmTop = 1680108
        mmWidth = 5880376
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'ppSystemVariable2'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 41792873
        mmTop = 1470028
        mmWidth = 10220610
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 1470028
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'ppDBText1'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 1119983
        mmLeft = 139965
        mmTop = 139965
        mmWidth = 4690278
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'ppDBText2'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 1119983
        mmLeft = 5180287
        mmTop = 139965
        mmWidth = 25341578
        BandType = 4
      end
      object Qtde: TppDBText
        UserName = 'Qtde'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 1119983
        mmLeft = 33462185
        mmTop = 139965
        mmWidth = 4550313
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'ppDBText4'
        DataPipeline = ppDBPipeline
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 1119983
        mmLeft = 39552641
        mmTop = 139965
        mmWidth = 11620788
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3500180
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'ppDBCalc1'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 1119983
        mmLeft = 33532300
        mmTop = 139965
        mmWidth = 4550313
        BandType = 8
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'ppDBCalc2'
        DataPipeline = ppDBPipeline
        DisplayFormat = '###0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline'
        mmHeight = 1119983
        mmLeft = 5180287
        mmTop = 70115
        mmWidth = 5530332
        BandType = 8
      end
      object ppLabel7: TppLabel
        UserName = 'ppLabel7'
        Caption = 'Produtos :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1119983
        mmLeft = 210080
        mmTop = 70115
        mmWidth = 4816220
        BandType = 8
      end
    end
  end
  object ppDBPipeline: TppDBPipeline
    DataSource = DSSQLItens
    UserName = 'DBPipeline'
    Left = 465
    Top = 1
  end
  object SQLCor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CORICOD, CORA30DESCR FROM COR'
      'ORDER BY CORA30DESCR')
    Macros = <>
    Left = 12
    Top = 230
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
    Left = 40
    Top = 230
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
      'PRODICOD Desc')
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
    end
    object SQLItensPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLItensREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.REGISTRO'
    end
    object SQLItensLOTEA30NRO: TStringField
      DisplayLabel = 'Nro. Lote'
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.LOTEA30NRO'
      OnChange = SQLTemplateLOTEA30NROChange
      FixedChar = True
      Size = 30
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
