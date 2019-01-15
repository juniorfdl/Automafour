inherited FormCadastroTipoFornecedor: TFormCadastroTipoFornecedor
  Left = 256
  Top = 58
  Caption = 'Tipos de Fornecedor'
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
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TPFRICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPFRA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCUICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TipoCustoLookUp'
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
              object Label3: TLabel
                Left = 19
                Top = 24
                Width = 76
                Height = 13
                Caption = 'Tipo de Custo'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object SpeedButton9: TSpeedButton
                Left = 94
                Top = 36
                Width = 21
                Height = 21
                Hint = 'Acessa Tipo de Custo'
                Flat = True
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                  0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                  48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                  0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                  FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                  7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                  B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                  00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                  EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                  FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                  B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  0000}
                Visible = False
                OnClick = SpeedButton9Click
              end
              object DBEdit3: TDBEdit
                Left = 15
                Top = 38
                Width = 78
                Height = 21
                DataField = 'TPCUICOD'
                DataSource = DSTemplate
                TabOrder = 1
                Visible = False
              end
              object DBEdit33: TDBEdit
                Left = 117
                Top = 36
                Width = 504
                Height = 21
                TabStop = False
                AutoSize = False
                Color = 16249066
                DataField = 'TipoCustoLookUp'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                Visible = False
              end
              object DBCheckBox1: TDBCheckBox
                Left = 16
                Top = 3
                Width = 241
                Height = 17
                Caption = 'Controla Consulta Contas a Pagar'
                DataField = 'CONTROLA_CONSULTA_CP'
                DataSource = DSTemplate
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 7
              Top = 5
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 87
              Top = 5
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 18
              Width = 73
              Height = 21
              DataField = 'TPFRICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 83
              Top = 18
              Width = 534
              Height = 21
              DataField = 'TPFRA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From TipoFornecedor Where (%MFiltro)')
    object SQLTemplateTPFRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPFRICOD'
      Origin = 'UNITGESTAO_ODBC.TipoFornecedor.TPFRICOD'
      Visible = False
    end
    object SQLTemplateTPFRA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPFRA60DESCR'
      Origin = 'UNITGESTAO_ODBC.TipoFornecedor.TPFRA60DESCR'
      FixedChar = True
      Size = 61
    end
    object SQLTemplateTPCUICOD: TIntegerField
      DisplayLabel = 'Tipo de Custo'
      FieldName = 'TPCUICOD'
      Origin = 'UNITGESTAO_ODBC.TipoFornecedor.TPCUICOD'
    end
    object SQLTemplateTipoCustoLookUp: TStringField
      DisplayLabel = ' '
      FieldKind = fkLookup
      FieldName = 'TipoCustoLookUp'
      LookupDataSet = SQLTipoCusto
      LookupKeyFields = 'TPCUICOD'
      LookupResultField = 'TPCUA60DESCR'
      KeyFields = 'TPCUICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'UNITGESTAO_ODBC.TipoFornecedor.PENDENTE'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'UNITGESTAO_ODBC.TipoFornecedor.REGISTRO'
    end
    object SQLTemplateCONTROLA_CONSULTA_CP: TStringField
      FieldName = 'CONTROLA_CONSULTA_CP'
      Origin = 'DB.TIPOFORNECEDOR.CONTROLA_CONSULTA_CP'
      FixedChar = True
      Size = 1
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update TipoFornecedor'
      'set'
      '  TPFRICOD = :TPFRICOD,'
      '  TPFRA60DESCR = :TPFRA60DESCR,'
      '  TPCUICOD = :TPCUICOD,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  TPFRICOD = :OLD_TPFRICOD')
    InsertSQL.Strings = (
      'insert into TipoFornecedor'
      '  (TPFRICOD, TPFRA60DESCR, TPCUICOD, PENDENTE, REGISTRO)'
      'values'
      '  (:TPFRICOD, :TPFRA60DESCR, :TPCUICOD, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from TipoFornecedor'
      'where'
      '  TPFRICOD = :OLD_TPFRICOD')
  end
  object SQLTipoCusto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TipoCusto')
    Macros = <>
    Left = 30
    Top = 194
  end
end
