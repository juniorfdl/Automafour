inherited FormCadastroOperacoesEstoque: TFormCadastroOperacoesEstoque
  Left = 223
  Top = 105
  Caption = 'Opera'#231#245'es de Estoque'
  ClientHeight = 564
  ClientWidth = 752
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 752
    Height = 564
    inherited PanelCabecalho: TPanel
      Width = 750
      inherited Panel2: TPanel
        Width = 750
        inherited Panel3: TPanel
          Left = 421
        end
        inherited Panel1: TPanel
          Width = 750
        end
      end
      inherited PanelNavigator: TPanel
        Width = 750
        inherited Image1: TImage
          Width = 750
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 750
      Height = 482
      inherited PanelBarra: TPanel
        Height = 482
      end
      inherited PanelFundoDados: TPanel
        Width = 620
        Height = 482
        inherited Panel5: TPanel
          Width = 620
          Height = 482
          inherited PagePrincipal: TPageControl
            Top = 78
            Width = 620
            Height = 404
            OnChange = nil
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 612
                Height = 331
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'OPESICOD'
                    Width = 49
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESA60DESCR'
                    Width = 209
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERIA5COD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFOPA5CODDENTROUF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFOPA5CODFORAUF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESCENTRADASAIDA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESCORIGEMDESTINO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESCGERAFINANCEIRO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 612
                inherited PanelBetween: TPanel
                  Width = 218
                end
                inherited PanelEditProcura: TPanel
                  Width = 218
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 1
                Top = 0
                Width = 29
                Height = 13
                Caption = 'S'#233'rie'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 1
                Top = 40
                Width = 111
                Height = 13
                Caption = 'CFOP Dentro Estado'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 1
                Top = 79
                Width = 97
                Height = 13
                Caption = 'CFOP Fora Estado'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object AcessaSeries: TSpeedButton
                Left = 34
                Top = 16
                Width = 21
                Height = 21
                Hint = 'Acessa Cadastro de Series'
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
                OnClick = AcessaSeriesClick
              end
              object SpeedButton2: TSpeedButton
                Left = 34
                Top = 56
                Width = 21
                Height = 21
                Hint = 'Acessa Tipo Cliente'
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
                OnClick = SpeedButton2Click
              end
              object SpeedButton3: TSpeedButton
                Left = 34
                Top = 95
                Width = 21
                Height = 21
                Hint = 'Acessa Tipo Cliente'
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
                OnClick = SpeedButton3Click
              end
              object DBEdit3: TDBEdit
                Left = 1
                Top = 16
                Width = 34
                Height = 21
                DataField = 'SERIA5COD'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit4: TDBEdit
                Left = 1
                Top = 56
                Width = 34
                Height = 21
                DataField = 'CFOPA5CODDENTROUF'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit5: TDBEdit
                Left = 1
                Top = 95
                Width = 34
                Height = 21
                DataField = 'CFOPA5CODFORAUF'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit12: TDBEdit
                Left = 57
                Top = 16
                Width = 364
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'SERIELookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit6: TDBEdit
                Left = 57
                Top = 56
                Width = 364
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'CFOPDENTROLookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 5
              end
              object DBEdit8: TDBEdit
                Left = 57
                Top = 95
                Width = 364
                Height = 21
                TabStop = False
                AutoSize = False
                BorderStyle = bsNone
                DataField = 'CFOPFORALookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 4
              end
              object GroupEstoque: TGroupBox
                Left = 0
                Top = 120
                Width = 185
                Height = 144
                Caption = 'Estoque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
                object Label7: TLabel
                  Left = 6
                  Top = 17
                  Width = 90
                  Height = 13
                  Caption = 'Origem/Destino'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 5
                  Top = 56
                  Width = 149
                  Height = 13
                  Caption = 'Movimenta'#231#227'o de Estoque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 5
                  Top = 97
                  Width = 125
                  Height = 13
                  Caption = 'Movimenta Financeiro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit7: TRxDBComboBox
                  Left = 6
                  Top = 33
                  Width = 171
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCORIGEMDESTINO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Cliente'
                    'Fornecedor'
                    'Empresa')
                  TabOrder = 0
                  Values.Strings = (
                    'C'
                    'F'
                    'E')
                end
                object RxDBComboBox1: TRxDBComboBox
                  Left = 5
                  Top = 72
                  Width = 172
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCENTRADASAIDA'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Entrada'
                    'Sa'#237'da'
                    'N'#227'o Movimenta'
                    'Entrada-devolu'#231#227'o')
                  TabOrder = 1
                  Values.Strings = (
                    'E'
                    'S'
                    'N'
                    'D')
                end
                object RxDBComboBox5: TRxDBComboBox
                  Left = 5
                  Top = 113
                  Width = 172
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCGERAFINANCEIRO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  TabOrder = 2
                  Values.Strings = (
                    'S'
                    'N')
                end
              end
              object GroupBox1: TGroupBox
                Left = 190
                Top = 120
                Width = 189
                Height = 144
                Caption = 'Impostos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                object Label8: TLabel
                  Left = 9
                  Top = 17
                  Width = 135
                  Height = 13
                  Caption = 'Campo p/ Calc. Imposto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 9
                  Top = 96
                  Width = 60
                  Height = 13
                  Caption = 'Calcula IPI'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 9
                  Top = 56
                  Width = 72
                  Height = 13
                  Caption = 'Calcula ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBComboBox2: TRxDBComboBox
                  Left = 8
                  Top = 32
                  Width = 171
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESA18CAMPOIMP'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Valor de Compra'
                    'Valor de Venda')
                  TabOrder = 0
                  Values.Strings = (
                    'PRODN3VLRCOMPRA'
                    'PRODN3VLRVENDA')
                end
                object RxDBComboBox3: TRxDBComboBox
                  Left = 8
                  Top = 72
                  Width = 171
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCCALCICMS'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular'
                    'Diferido')
                  TabOrder = 1
                  Values.Strings = (
                    'S'
                    'N'
                    'D')
                end
                object RxDBComboBox4: TRxDBComboBox
                  Left = 8
                  Top = 113
                  Width = 171
                  Height = 21
                  Style = csDropDownList
                  DataField = 'OPESCCALCIPI'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'Calcular'
                    'n'#227'o Calcular')
                  TabOrder = 2
                  Values.Strings = (
                    'S'
                    'N')
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
            Width = 620
            Height = 32
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 32
            Width = 620
            Height = 46
            object Label1: TLabel
              Left = 4
              Top = 4
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
              Left = 72
              Top = 4
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
              Top = 20
              Width = 64
              Height = 21
              DataField = 'OPESICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 72
              Top = 20
              Width = 364
              Height = 21
              DataField = 'OPESA60DESCR'
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
      'Select * From OPERACAOESTOQUE Where (%MFiltro)')
    object SQLTemplateOPESICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
      Visible = False
    end
    object SQLTemplateOPESA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateSERIA5COD: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIA5COD'
      Origin = 'DB.OPERACAOESTOQUE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateSERIELookup: TStringField
      FieldKind = fkLookup
      FieldName = 'SERIELookup'
      LookupDataSet = SQLSerie
      LookupKeyFields = 'SERIA5COD'
      LookupResultField = 'SERIA5COD'
      KeyFields = 'SERIA5COD'
      Visible = False
      Size = 5
      Lookup = True
    end
    object SQLTemplateCFOPA5CODDENTROUF: TStringField
      DisplayLabel = 'CFOP Dentro Estado'
      FieldName = 'CFOPA5CODDENTROUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODDENTROUF'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCFOPDENTROLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CFOPDENTROLookup'
      LookupDataSet = SQLCFOP
      LookupKeyFields = 'CFOPA5COD'
      LookupResultField = 'CFOPA60DESCR'
      KeyFields = 'CFOPA5CODDENTROUF'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCFOPA5CODFORAUF: TStringField
      DisplayLabel = 'CFOP Fora Estado'
      FieldName = 'CFOPA5CODFORAUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODFORAUF'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCFOPFORALookup: TStringField
      FieldKind = fkLookup
      FieldName = 'CFOPFORALookup'
      LookupDataSet = SQLCFOP
      LookupKeyFields = 'CFOPA5COD'
      LookupResultField = 'CFOPA60DESCR'
      KeyFields = 'CFOPA5CODFORAUF'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateOPESCENTRADASAIDA: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Entrada/Sa'#237'da'
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'DB.OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCORIGEMDESTINO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Origem/Destino'
      FieldName = 'OPESCORIGEMDESTINO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCORIGEMDESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOESTOQUE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOESTOQUE.REGISTRO'
    end
    object SQLTemplateOPESA18CAMPOIMP: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Campo p/ Calc. Imposto'
      FieldName = 'OPESA18CAMPOIMP'
      Origin = 'DB.OPERACAOESTOQUE.OPESA18CAMPOIMP'
      FixedChar = True
      Size = 18
    end
    object SQLTemplateOPESCCALCIPI: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Calculo IPI'
      FieldName = 'OPESCCALCIPI'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCCALCICMS: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Calcula ICMS'
      FieldName = 'OPESCCALCICMS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPESCGERAFINANCEIRO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Mov. Financeiro'
      FieldName = 'OPESCGERAFINANCEIRO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCGERAFINANCEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLSerie: TTable
    DatabaseName = 'DB'
    TableName = 'SERIE'
    Left = 14
    Top = 170
  end
  object SQLCFOP: TTable
    DatabaseName = 'DB'
    TableName = 'CFOP'
    Left = 42
    Top = 170
  end
end
