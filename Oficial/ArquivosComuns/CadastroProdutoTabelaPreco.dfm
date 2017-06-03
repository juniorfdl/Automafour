inherited FormCadastroProdutoTabelaPreco: TFormCadastroProdutoTabelaPreco
  Caption = 'Pre'#231'os de Tabela'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
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
                Left = 7
                Top = 11
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
                Left = 130
                Top = 11
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
                Left = 254
                Top = 11
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
                Left = 377
                Top = 11
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
                Left = 498
                Top = 11
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
          inherited PanelCodigoDescricao: TPanel
            object Label6: TLabel
              Left = 7
              Top = 2
              Width = 90
              Height = 13
              Caption = 'Tabela de Pre'#231'o'
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
            object DBEdit6: TDBEdit
              Left = 4
              Top = 15
              Width = 64
              Height = 21
              DataField = 'TPRCICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit11: TDBEdit
              Left = 94
              Top = 16
              Width = 553
              Height = 21
              TabStop = False
              DataField = 'TabelaPrecoLookUp'
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
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    AfterDelete = SQLTemplateAfterDelete
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    TabelaPrecoProduto '
      'Where '
      '    PRODICOD=:PRODICOD AND'
      '    (%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
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
    end
    object SQLTemplateTPCPN3VLRVENDA: TBCDField
      DisplayLabel = 'Valor Venda'
      FieldName = 'TPCPN3VLRVENDA'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLTemplateTPCPN3MARGLUCR: TBCDField
      DisplayLabel = 'Margem Lucro'
      FieldName = 'TPCPN3MARGLUCR'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3MARGLUCR'
      Precision = 15
      Size = 3
    end
    object SQLTemplateTPCPN3VLRVENDAPROM: TBCDField
      DisplayLabel = 'Valor Venda Prom.'
      FieldName = 'TPCPN3VLRVENDAPROM'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDAPROM'
      Precision = 15
      Size = 3
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
    object SQLTemplateTabelaPrecoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TabelaPrecoLookUp'
      LookupDataSet = SQLTabelaPreco
      LookupKeyFields = 'TPRCICOD'
      LookupResultField = 'TPRCA60DESCR'
      KeyFields = 'TPRCICOD'
      Size = 60
      Lookup = True
    end
  end
  object SQLTabelaPreco: TRxQuery
    BeforeOpen = SQLCountBeforeOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from TABELAPRECO')
    Macros = <>
    Left = 69
    Top = 177
    object SQLTabelaPrecoTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.TABELAPRECO.TPRCICOD'
    end
    object SQLTabelaPrecoTPRCA60DESCR: TStringField
      FieldName = 'TPRCA60DESCR'
      Origin = 'DB.TABELAPRECO.TPRCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTabelaPrecoProdutoPdvs: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from TABELAPRECOPRODUTOPDVS'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 569
    Top = 1
  end
end
