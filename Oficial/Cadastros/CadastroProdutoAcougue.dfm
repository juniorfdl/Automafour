inherited FormCadastroProdutoAcougue: TFormCadastroProdutoAcougue
  Left = 304
  Top = 73
  Caption = 'FormCadastroProdutoAcougue'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICODFILHO'
                    Title.Caption = 'C'#243'digo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookUp'
                    Title.Caption = 'Nome Produto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PERCENTUAL'
                    Title.Caption = 'Percentual'
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
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
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
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 41
            object Label9: TLabel
              Left = 7
              Top = 2
              Width = 106
              Height = 13
              Caption = 'C'#243'd. Produto Corte'
              FocusControl = DBEditProduto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 558
              Top = 3
              Width = 61
              Height = 13
              Caption = 'Percentual'
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
            object DBEditProduto: TDBEdit
              Left = 4
              Top = 16
              Width = 77
              Height = 21
              DataField = 'PRODICODFILHO'
              DataSource = DSTemplate
              TabOrder = 0
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
            object EditQuant: TEvDBNumEdit
              Left = 555
              Top = 16
              Width = 93
              Height = 21
              AutoHideCalculator = False
              DataField = 'PERCENTUAL'
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
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From PRODUTO_ACOUGUE'
      'Where PRODICOD=:PRODICOD and (%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptInput
      end>
    object SQLTemplatePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO_ACOUGUE.PRODICOD'
    end
    object SQLTemplatePRODICODFILHO: TIntegerField
      FieldName = 'PRODICODFILHO'
      Origin = 'DB.PRODUTO_ACOUGUE.PRODICODFILHO'
    end
    object SQLTemplatePERCENTUAL: TFloatField
      FieldName = 'PERCENTUAL'
      Origin = 'DB.PRODUTO_ACOUGUE.PERCENTUAL'
      DisplayFormat = '##0.00'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTO_ACOUGUE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTO_ACOUGUE.REGISTRO'
    end
    object SQLTemplateProdutoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookUp'
      Size = 60
      Calculated = True
    end
  end
end
