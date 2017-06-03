inherited FormCadastroTabelaPrecoProduto: TFormCadastroTabelaPrecoProduto
  Left = 5
  Top = 2
  Caption = 'Produtos'
  ClientHeight = 542
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 542
    inherited PanelCentral: TPanel
      Height = 468
      inherited PanelBarra: TPanel
        Height = 468
      end
      inherited PanelFundoDados: TPanel
        Height = 468
        inherited Panel5: TPanel
          Height = 468
          inherited PagePrincipal: TPageControl
            Height = 386
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 313
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Width = 51
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60REFER'
                    Width = 77
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookUp'
                    Width = 225
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPN3VLRVENDA'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPN3MARGLUCR'
                    Width = 87
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPN3VLRVENDAPROM'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPDINIPROMO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCPDFIMPROMO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PENDENTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
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
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label1: TLabel
                Left = 6
                Top = 8
                Width = 67
                Height = 13
                Caption = 'Valor Venda'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 129
                Top = 8
                Width = 81
                Height = 13
                Caption = 'Margem Lucro'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 253
                Top = 8
                Width = 103
                Height = 13
                Caption = 'Valor Venda Prom.'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 376
                Top = 8
                Width = 108
                Height = 13
                Caption = 'In'#237'cio da Promo'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 497
                Top = 8
                Width = 97
                Height = 13
                Caption = 'Fim da Promo'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 4
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPN3VLRVENDA'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 127
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPN3MARGLUCR'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 251
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPN3VLRVENDAPROM'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit4: TDBDateEdit
                Left = 374
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPDINIPROMO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 3
              end
              object DBEdit5: TDBDateEdit
                Left = 495
                Top = 24
                Width = 120
                Height = 21
                DataField = 'TPCPDFIMPROMO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 4
              end
            end
          end
          inherited PanelMaster: TPanel
            object Label7: TLabel
              Left = 4
              Top = 1
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 103
              Top = 1
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit7: TDBEdit
              Left = 4
              Top = 17
              Width = 95
              Height = 21
              DataField = 'TPRCICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 103
              Top = 17
              Width = 549
              Height = 21
              DataField = 'TPRCA60DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label6: TLabel
              Left = 4
              Top = -1
              Width = 45
              Height = 13
              Caption = 'Produto'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 68
              Top = 14
              Width = 24
              Height = 24
              Hint = 'Acessa Tipo Cliente'
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
              OnClick = SpeedButton1Click
            end
            object Label9: TLabel
              Left = 509
              Top = 0
              Width = 61
              Height = 13
              Caption = 'Refer'#234'ncia'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit6: TDBEdit
              Left = 4
              Top = 15
              Width = 64
              Height = 21
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit11: TDBEdit
              Left = 94
              Top = 16
              Width = 411
              Height = 21
              TabStop = False
              BorderStyle = bsNone
              DataField = 'ProdutoLookUp'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 509
              Top = 15
              Width = 142
              Height = 21
              TabStop = False
              BorderStyle = bsNone
              DataField = 'PRODA60REFER'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnAssistente: TMenuItem
      Caption = '&Assistente p/ Manuten'#231#227'o da Tabela de Pre'#231'o'
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From TABELAPRECOPRODUTO Where '
      'TPRCICOD=:TPRCICOD AND'
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TPRCICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.TABELAPRECOPRODUTO.TPRCICOD'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.TABELAPRECOPRODUTO.PRODICOD'
      OnChange = SQLTemplatePRODICODChange
    end
    object SQLTemplatePRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRODA60REFER'
      Origin = 'DB.TABELAPRECOPRODUTO.PRODA60REFER'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object SQLTemplateProdutoLookUp: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateTPCPN3VLRVENDA: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'TPCPN3VLRVENDA'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDA'
      OnChange = SQLTemplateTPCPN3VLRVENDAChange
    end
    object SQLTemplateTPCPN3MARGLUCR: TFloatField
      DisplayLabel = 'Margem Lucro'
      FieldName = 'TPCPN3MARGLUCR'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3MARGLUCR'
      OnChange = SQLTemplateTPCPN3MARGLUCRChange
    end
    object SQLTemplateTPCPN3VLRVENDAPROM: TFloatField
      DisplayLabel = 'Valor Venda Prom.'
      FieldName = 'TPCPN3VLRVENDAPROM'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDAPROM'
    end
    object SQLTemplateTPCPDINIPROMO: TDateTimeField
      DisplayLabel = 'In'#237'cio da Promo'#231#227'o'
      FieldName = 'TPCPDINIPROMO'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPDINIPROMO'
    end
    object SQLTemplateTPCPDFIMPROMO: TDateTimeField
      DisplayLabel = 'Fim da Promo'#231#227'o'
      FieldName = 'TPCPDFIMPROMO'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPDFIMPROMO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TABELAPRECOPRODUTO.REGISTRO'
    end
  end
end
