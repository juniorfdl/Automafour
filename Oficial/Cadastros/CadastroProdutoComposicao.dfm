inherited FormCadastroProdutoComposicao: TFormCadastroProdutoComposicao
  Left = 232
  Top = 91
  Caption = 'Composi'#231#227'o do Produto'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 167
            Height = 282
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 209
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICODFILHO'
                    Width = 83
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookUp'
                    Title.Caption = ' '
                    Width = 316
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODN3QTDE'
                    Width = 61
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TotalItem'
                    Title.Caption = 'Total Item'
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
                Top = 103
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
            Height = 89
            object Label2: TLabel
              Left = 7
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 74
              Top = 4
              Width = 96
              Height = 13
              Caption = 'Produto Principal'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 411
              Top = 4
              Width = 110
              Height = 13
              Caption = 'Descri'#231#227'o Reduzida'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label61: TLabel
              Left = 229
              Top = 46
              Width = 19
              Height = 13
              Caption = 'Cor'
              FocusControl = DBEdit55
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label62: TLabel
              Left = 368
              Top = 46
              Width = 53
              Height = 13
              Caption = 'Tamanho'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 108
              Top = 46
              Width = 61
              Height = 13
              Caption = 'Refer'#234'ncia'
              FocusControl = DBEdit40
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label47: TLabel
              Left = 4
              Top = 46
              Width = 37
              Height = 13
              Caption = 'Barras'
              FocusControl = DBEdit38
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 426
              Top = 46
              Width = 107
              Height = 13
              Caption = 'Vlr. Venda Principal'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnCalcula: TSpeedButton
              Left = 544
              Top = 58
              Width = 113
              Height = 23
              Caption = '&Calcular Comp.'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                8A050000424D8A05000000000000360400002800000014000000110000000100
                08000000000054010000CE0E0000C40E00000001000000000000000000008080
                8000000080000080800000800000808000008000000080008000408080004040
                0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                80008000FF004080FF00C0DCC000F0CAA6003F5FFF003F7F3F003F7F5F003F7F
                7F003F7F9F003F7FBF003F7FDF003F7FFF003F9F3F003F9F5F003F9F7F003F9F
                9F003F9FBF003F9FDF003F9FFF003FBF3F003FBF5F003FBF7F003FBF9F003FBF
                BF003FBFDF003FBFFF003FDF3F003FDF5F003FDF7F003FDF9F003FDFBF003FDF
                DF003FDFFF003FFF3F003FFF5F003FFF7F003FFF9F003FFFBF003FFFDF003FFF
                FF005F3F3F005F3F5F005F3F7F005F3F9F005F3FBF005F3FDF005F3FFF005F5F
                3F005F5F5F005F5F7F005F5F9F005F5FBF005F5FDF005F5FFF005F7F3F005F7F
                5F005F7F7F005F7F9F005F7FBF005F7FDF005F7FFF005F9F3F005F9F5F005F9F
                7F005F9F9F005F9FBF005F9FDF005F9FFF005FBF3F005FBF5F005FBF7F005FBF
                9F005FBFBF005FBFDF005FBFFF005FDF3F005FDF5F005FDF7F005FDF9F005FDF
                BF005FDFDF005FDFFF005FFF3F005FFF5F005FFF7F005FFF9F005FFFBF005FFF
                DF005FFFFF007F3F3F007F3F5F007F3F7F007F3F9F007F3FBF007F3FDF007F3F
                FF007F5F3F007F5F5F007F5F7F007F5F9F007F5FBF007F5FDF007F5FFF007F7F
                3F007F7F5F007F7F7F007F7F9F007F7FBF007F7FDF007F7FFF007F9F3F007F9F
                5F007F9F7F007F9F9F007F9FBF007F9FDF007F9FFF007FBF3F007FBF5F007FBF
                7F007FBF9F007FBFBF007FBFDF007FBFFF007FDF3F007FDF5F007FDF7F007FDF
                9F007FDFBF007FDFDF007FDFFF007FFF3F007FFF5F007FFF7F007FFF9F007FFF
                BF007FFFDF007FFFFF009F3F3F009F3F5F009F3F7F009F3F9F009F3FBF009F3F
                DF009F3FFF009F5F3F009F5F5F009F5F7F009F5F9F009F5FBF009F5FDF009F5F
                FF009F7F3F009F7F5F009F7F7F009F7F9F009F7FBF009F7FDF009F7FFF009F9F
                3F009F9F5F009F9F7F009F9F9F009F9FBF009F9FDF009F9FFF009FBF3F009FBF
                5F009FBF7F009FBF9F009FBFBF009FBFDF009FBFFF009FDF3F009FDF5F009FDF
                7F009FDF9F009FDFBF009FDFDF009FDFFF009FFF3F009FFF5F009FFF7F009FFF
                9F009FFFBF009FFFDF009FFFFF00BF3F3F00BF3F5F00BF3F7F00BF3F9F00BF3F
                BF00BF3FDF00BF3FFF00BF5F3F00BF5F5F00BF5F7F00BF5F9F00BF5FBF00BF5F
                DF00BF5FFF00BF7F3F00BF7F5F00BF7F7F00BF7F9F00BF7FBF00BF7FDF00BF7F
                FF00BF9F3F00BF9F5F00BF9F7F00BF9F9F00BF9FBF00BF9FDF00BF9FFF00BFBF
                3F00BFBF5F00BFBF7F00BFBF9F00BFBFBF00BFBFDF00BFBFFF00BFDF3F00BFDF
                5F00BFDF7F00BFDF9F00BFDFBF00BFDFDF00F0FBFF00A4A0A0000F0F0F0F0F0F
                0F0F0F0F0F0F0F0F000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F01000F000F0F
                0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F000000000F0F0F0F0F0F0F0F0F00
                0000000F0F0F0F0F0F0F0F0F0F0F0F0F0F00000100000F0F0F0F0F0F0F0F0F0F
                0F0F0F0000010E0E0F000F0F0F0F0F0F0F0F0F0F0F0F0000010E0E0F000F0F0F
                0F0F0F0F0F0F0F0F0F000303000E0F0F000F0F0F0F0F0F0F0F0F0F0F00030311
                03000F000F0F0F0F0F0F0F0F0F0F0F0003031103111100000F0F0F0F0F0F0F0F
                0F0F0003031103111103000F0F0F0F0F0F0F0F0F0F0F03031103111103000F0F
                0F0F0F0F0F0F0F0F0F0F031103111103000F0F0F0F0F0F0F0F0F0F0F0F0F1103
                111103000F0F0F0F0F0F0F0F0F0F0F0F0F0F03111103000F0F0F0F0F0F0F0F0F
                0F0F0F0F0F0F111103000F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F1103000F0F0F
                0F0F0F0F0F0F0F0F0F0F0F0F0F0F}
              ParentFont = False
              OnClick = BtnCalculaClick
            end
            object DBEdit2: TDBEdit
              Left = 5
              Top = 17
              Width = 64
              Height = 21
              DataField = 'PRODICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 71
              Top = 17
              Width = 336
              Height = 21
              DataField = 'PRODA60DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 409
              Top = 17
              Width = 239
              Height = 21
              DataField = 'PRODA30ADESCRREDUZ'
              DataSource = DSMasterTemplate
              TabOrder = 2
            end
            object DBEdit55: TDBEdit
              Left = 227
              Top = 60
              Width = 138
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'CORA30DESCR'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit56: TDBEdit
              Left = 369
              Top = 60
              Width = 54
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 16249066
              Ctl3D = True
              DataField = 'GRTMA5DESCR'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit40: TDBEdit
              Left = 107
              Top = 60
              Width = 118
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODA60REFER'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit38: TDBEdit
              Left = 4
              Top = 60
              Width = 101
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODA60CODBAR'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit5: TDBEdit
              Left = 425
              Top = 60
              Width = 117
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODN3VLRVENDA'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 7
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 89
            Height = 78
            object Label9: TLabel
              Left = 7
              Top = 2
              Width = 143
              Height = 13
              Caption = 'C'#243'd. Produto Composi'#231#227'o'
              FocusControl = DBEditProduto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnProduto: TSpeedButton
              Left = 82
              Top = 16
              Width = 24
              Height = 23
              Hint = 'Acessa Produtos'
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
              OnClick = BtnProdutoClick
            end
            object Label1: TLabel
              Left = 558
              Top = 3
              Width = 65
              Height = 13
              Caption = 'Qtde Comp.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 88
              Top = 39
              Width = 61
              Height = 13
              Caption = 'Valor Total'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 6
              Top = 39
              Width = 56
              Height = 13
              Caption = 'Vlr. Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEditProduto: TDBEdit
              Left = 4
              Top = 16
              Width = 77
              Height = 21
              DataField = 'PRODICODFILHO'
              DataSource = DSTemplate
              TabOrder = 0
              OnKeyDown = DBEditProdutoKeyDown
            end
            object DBEdit11: TDBEdit
              Left = 109
              Top = 16
              Width = 441
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'ProdutoLookUp'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit6: TDBEdit
              Left = 86
              Top = 53
              Width = 100
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 16249066
              Ctl3D = True
              DataField = 'PRODN3VLRTOTAL'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit7: TDBEdit
              Left = 4
              Top = 53
              Width = 77
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 16249066
              Ctl3D = True
              DataField = 'ValorVenda'
              DataSource = DSTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
            end
            object EditQuant: TEvDBNumEdit
              Left = 555
              Top = 16
              Width = 93
              Height = 21
              AutoHideCalculator = False
              DataField = 'PRODN3QTDE'
              DataSource = DSTemplate
              Glyph.Data = {
                7E050000424D7E0500000000000036000000280000001A0000000D0000000100
                2000000000004805000000000000000000000000000000000000FFC0C000FFC0
                C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                C000FFC0C0008040400080404000804040008040400080404000804040008040
                4000804040008040400080404000FFC0C000FFC0C000FFC0C000FFFFFF008080
                8000808080008080800080808000808080008080800080808000808080008080
                8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF406000FFC0
                0000FFFFFF00FFC00000FFFFFF00FFC00000FFFFFF00FF40600080404000FFC0
                C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF0080808000FFFF
                FF0080808000FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                0000FF406000FF406000FF406000FF406000FF406000FF406000FF406000FF40
                600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C000FFC0C000FFC0
                C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C00080808000FFC0C000FFC0
                C000FFC0C000FFC00000FF406000FFC00000FFFFFF00FFC00000FFFFFF00FFC0
                0000FFFFFF00FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                C00080808000FFFFFF0080808000FFFFFF0080808000FFFFFF00FFC0C0008080
                8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FF4060004000
                0000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FF40600080404000FFC0
                C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC0
                0000FF40600040000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FF40
                600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0
                C000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0C00080808000FFC0C000FFC0
                C000FFC0C000FFC00000FF406000400000004000000040000000400000004000
                000040000000FF40600080404000FFC0C000FFC0C000FFC0C000FFFFFF00FFC0
                C000808080008080800080808000808080008080800080808000FFC0C0008080
                8000FFC0C000FFC0C000FFC0C000FFC00000FF406000FF406000FF406000FF40
                6000FF406000FF406000FF406000FF40600080404000FFC0C000FFC0C000FFC0
                C000FFFFFF00FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                C000FFC0C00080808000FFC0C000FFC0C000FFC0C000FFC00000FFC00000FFC0
                0000FFC00000FFC00000FFC00000FFC00000FFC00000FFC0000080404000FFC0
                C000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFC0C000FFC0C000FFC0
                C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0C000FFC0
                C000}
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnCopiarComposicao: TMenuItem
      Caption = 'Copiar Composi'#231#227'o de Outro Produto'
      OnClick = MnCopiarComposicaoClick
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From PRODUTOCOMPOSICAO'
      'Where PRODICOD=:PRODICOD and (%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplatePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOCOMPOSICAO.PRODICOD'
    end
    object SQLTemplatePRODICODFILHO: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Produto'
      FieldName = 'PRODICODFILHO'
      Origin = 'DB.PRODUTOCOMPOSICAO.PRODICODFILHO'
    end
    object SQLTemplatePRODN3QTDE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'PRODN3QTDE'
      Origin = 'DB.PRODUTOCOMPOSICAO.PRODN3QTDE'
      DisplayFormat = '#,##0.000'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOCOMPOSICAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOCOMPOSICAO.REGISTRO'
    end
    object SQLTemplateProdutoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookUp'
      Size = 60
      Calculated = True
    end
    object SQLTemplateValorVenda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorVenda'
      Calculated = True
    end
    object SQLTemplateTotalItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItem'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLTemplatePRODN3VLRTOTAL: TFloatField
      FieldName = 'PRODN3VLRTOTAL'
      Origin = 'DB.PRODUTOCOMPOSICAO.PRODN3VLRTOTAL'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTOCOMPOSICAO'
      'set'
      '  PRODICOD = :PRODICOD,'
      '  PRODICODFILHO = :PRODICODFILHO,'
      '  PRODN3QTDE = :PRODN3QTDE,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  PRODICOD = :OLD_PRODICOD and'
      '  PRODICODFILHO = :OLD_PRODICODFILHO')
    InsertSQL.Strings = (
      'insert into PRODUTOCOMPOSICAO'
      '  (PRODICOD, PRODICODFILHO, PRODN3QTDE, PENDENTE, REGISTRO)'
      'values'
      '  (:PRODICOD, :PRODICODFILHO, :PRODN3QTDE, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from PRODUTOCOMPOSICAO'
      'where'
      '  PRODICOD = :OLD_PRODICOD and'
      '  PRODICODFILHO = :OLD_PRODICODFILHO')
  end
  inherited AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Left = 468
  end
  object SQLSum: TRxQuery
    SQL.Strings = (
      'Select SUM() From PRODUTOCOMPOSICAO'
      'Where PRODICOD=:PRODICOD and (%MFiltro)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 437
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLComposicao: TRxQuery
    BeforeOpen = SQLCountBeforeOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from produtocomposicao where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 512
    Top = 1
  end
end
