inherited FormCadastroConfigRemessaBanco: TFormCadastroConfigRemessaBanco
  Left = 145
  Top = 21
  Caption = 'Configura'#231#227'o Para Remessa de Banco'
  ClientWidth = 800
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 800
    inherited PanelCabecalho: TPanel
      Width = 798
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 798
        inherited Panel1: TPanel
          Width = 796
          inherited PanelNavigator: TPanel
            Width = 796
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 796
            end
          end
          inherited PanelLeft: TPanel
            Left = 339
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 798
      inherited PanelFundoDados: TPanel
        Width = 668
        inherited Panel5: TPanel
          Width = 668
          inherited PagePrincipal: TPageControl
            Width = 668
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 660
              end
              inherited PanelProcura: TPanel
                Width = 660
                inherited PanelBetween: TPanel
                  Width = 266
                  inherited AdvPanel1: TAdvPanel
                    Width = 266
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 266
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 266
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
              object Label5: TLabel
                Left = 253
                Top = 0
                Width = 45
                Height = 13
                Caption = 'Ag'#234'ncia'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 345
                Top = 0
                Width = 86
                Height = 13
                Caption = 'Conta Corrente'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 448
                Top = 0
                Width = 15
                Height = 13
                Caption = 'DV'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 0
                Top = 77
                Width = 92
                Height = 13
                Caption = 'Caminho Padr'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 0
                Top = 37
                Width = 34
                Height = 13
                Caption = 'Banco'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ButtonCadastroBanco: TSpeedButton
                Left = 70
                Top = 53
                Width = 21
                Height = 21
                Hint = 'Acessa Cadastro de Bancos'
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
                OnClick = ButtonCadastroBancoClick
              end
              object Label4: TLabel
                Left = 150
                Top = 0
                Width = 87
                Height = 13
                Caption = 'C'#243'digo Carteira'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 0
                Top = 0
                Width = 107
                Height = 13
                Caption = 'C'#243'digo da Empresa'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 113
                Top = 0
                Width = 15
                Height = 13
                Caption = 'DV'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 312
                Top = 0
                Width = 15
                Height = 13
                Caption = 'DV'
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 0
                Top = 115
                Width = 79
                Height = 13
                Caption = 'C'#243'd. Conv'#234'nio'
                FocusControl = DBEdit13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit5: TDBEdit
                Left = 253
                Top = 16
                Width = 56
                Height = 21
                DataField = 'CFRBA4CODAGENCIA'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit6: TDBEdit
                Left = 345
                Top = 16
                Width = 100
                Height = 21
                DataField = 'CFRBA6CONTACORRE'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit7: TDBEdit
                Left = 448
                Top = 16
                Width = 30
                Height = 21
                DataField = 'CFRBA1DIGCONTA'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object AuxDirectory: TDirectoryEdit
                Left = 456
                Top = 93
                Width = 23
                Height = 21
                NumGlyphs = 1
                TabOrder = 11
                OnChange = AuxDirectoryChange
              end
              object DBMemo1: TDBMemo
                Left = 0
                Top = 93
                Width = 454
                Height = 21
                DataField = 'CFRBTPATH'
                DataSource = DSTemplate
                TabOrder = 10
              end
              object DBEdit8: TDBEdit
                Left = 0
                Top = 53
                Width = 69
                Height = 21
                DataField = 'BANCA5COD'
                DataSource = DSTemplate
                TabOrder = 7
                OnKeyDown = DBEdit8KeyDown
              end
              object DBEdit9: TDBEdit
                Left = 92
                Top = 53
                Width = 275
                Height = 21
                TabStop = False
                Color = 16249066
                DataField = 'BANCA60NOME'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit4: TDBEdit
                Left = 150
                Top = 16
                Width = 100
                Height = 21
                DataField = 'CFRBA2CODCARTEIRA'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit2: TDBEdit
                Left = 0
                Top = 16
                Width = 110
                Height = 21
                DataField = 'CFRBA20CODEMPRESA'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 371
                Top = 43
                Width = 107
                Height = 32
                Caption = 'Participa de Rateio'
                Columns = 2
                DataField = 'CFRBA1RATEIOCRED'
                DataSource = DSTemplate
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 9
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit11: TDBEdit
                Left = 113
                Top = 16
                Width = 34
                Height = 21
                DataField = 'CFRBA2DIGEMPRESA'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit12: TDBEdit
                Left = 312
                Top = 16
                Width = 30
                Height = 21
                DataField = 'CFRBA2DIGAGENCIA'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit13: TDBEdit
                Left = 0
                Top = 131
                Width = 199
                Height = 21
                DataField = 'CFRBA15CODCONVENIO'
                DataSource = DSTemplate
                TabOrder = 12
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 668
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 668
            object Label1: TLabel
              Left = 7
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 422
              Top = 4
              Width = 101
              Height = 13
              Caption = 'Nome da Empresa'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 86
              Top = 4
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 5
              Top = 17
              Width = 74
              Height = 21
              DataField = 'CFRBICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 420
              Top = 17
              Width = 245
              Height = 21
              DataField = 'CFRBA30NOMEMPRESA'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit10: TDBEdit
              Left = 83
              Top = 17
              Width = 332
              Height = 21
              DataField = 'CFRBA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From CONFIGREMESSABANCO Where (%MFiltro)')
    object SQLTemplateCFRBA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'CFRBA13ID'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONFIGREMESSABANCO.EMPRICOD'
    end
    object SQLTemplateCFRBICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CFRBICOD'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBICOD'
      Visible = False
    end
    object SQLTemplateCFRBA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CFRBA60DESCR'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCFRBA20CODEMPRESA: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'digo da Empresa'
      FieldName = 'CFRBA20CODEMPRESA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA20CODEMPRESA'
      FixedChar = True
    end
    object SQLTemplateCFRBA30NOMEMPRESA: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nome da Empresa'
      FieldName = 'CFRBA30NOMEMPRESA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA30NOMEMPRESA'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCFRBA2CODCARTEIRA: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'digo Carteira'
      FieldName = 'CFRBA2CODCARTEIRA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA2CODCARTEIRA'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCFRBA4CODAGENCIA: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CFRBA4CODAGENCIA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA4CODAGENCIA'
      FixedChar = True
      Size = 4
    end
    object SQLTemplateCFRBA6CONTACORRE: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Conta Corrente'
      FieldName = 'CFRBA6CONTACORRE'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA6CONTACORRE'
      FixedChar = True
      Size = 6
    end
    object SQLTemplateCFRBA1DIGCONTA: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'DV Conta'
      FieldName = 'CFRBA1DIGCONTA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA1DIGCONTA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCFRBA1RATEIOCRED: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Participa Rateio'
      FieldName = 'CFRBA1RATEIOCRED'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA1RATEIOCRED'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateBANCA5COD: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5COD'
      Origin = 'DB.CONFIGREMESSABANCO.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateBANCA60NOME: TStringField
      DisplayLabel = 'Banco'
      FieldKind = fkLookup
      FieldName = 'BANCA60NOME'
      LookupDataSet = TableBanco
      LookupKeyFields = 'BANCA5COD'
      LookupResultField = 'BANCA60NOME'
      KeyFields = 'BANCA5COD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCFRBTPATH: TMemoField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Caminho Padr'#227'o'
      FieldName = 'CFRBTPATH'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBTPATH'
      BlobType = ftMemo
      Size = 500
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.CONFIGREMESSABANCO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.CONFIGREMESSABANCO.REGISTRO'
    end
    object SQLTemplateCFRBA2DIGAGENCIA: TStringField
      DisplayLabel = 'Dig. C'#243'd. Ag'#234'ncia'
      FieldName = 'CFRBA2DIGAGENCIA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA2DIGAGENCIA'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCFRBA2DIGEMPRESA: TStringField
      DisplayLabel = 'Dig. C'#243'd. Empresa'
      FieldName = 'CFRBA2DIGEMPRESA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA2DIGEMPRESA'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCFRBA15CODCONVENIO: TStringField
      DisplayLabel = 'C'#243'd. Conv'#234'nio'
      FieldName = 'CFRBA15CODCONVENIO'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA15CODCONVENIO'
      FixedChar = True
      Size = 15
    end
  end
  object TableBanco: TTable
    DatabaseName = 'DB'
    TableName = 'BANCO'
    Left = 437
    Top = 1
  end
end
