inherited FormCadastroClienteVeiculos: TFormCadastroClienteVeiculos
  Left = 221
  Caption = 'Veículos do Cliente'
  ClientWidth = 795
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 795
    inherited PanelCabecalho: TPanel
      Width = 793
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 793
        inherited Panel1: TPanel
          Width = 791
          inherited PanelNavigator: TPanel
            Width = 791
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 791
            end
          end
          inherited PanelLeft: TPanel
            Left = 334
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 793
      inherited PanelFundoDados: TPanel
        Width = 663
        inherited Panel5: TPanel
          Width = 663
          inherited PagePrincipal: TPageControl
            Width = 663
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 655
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'VICLA15PLACA'
                    Width = 99
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MODODEVENDA'
                    Title.Caption = 'Modo Venda'
                    Width = 129
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VICLA40MODELO'
                    Title.Caption = 'Identificação Veículo'
                    Width = 245
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COMBUSTIVEL'
                    Title.Caption = 'Combustível'
                    Width = 104
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VOCLA20ESPECIE'
                    Title.Caption = 'Espécie/Tipo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VICLA15COR'
                    Title.Caption = 'Cor'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VICLA1ATIVO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VICLA25MARCA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VICLA9ANOMODELO'
                    Title.Caption = 'Ano/Modelo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VICLN2KMATUAL'
                    Title.Caption = 'Km Atual'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VICLDDATAINC'
                    Title.Caption = 'Dt Inclusão'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 655
                inherited PanelBetween: TPanel
                  Width = 261
                  inherited AdvPanel1: TAdvPanel
                    Width = 261
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 261
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 261
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
              object Label4: TLabel
                Left = 5
                Top = 42
                Width = 42
                Height = 13
                Caption = 'Espécie'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 257
                Top = 3
                Width = 30
                Height = 13
                Caption = 'Ativo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 209
                Top = 42
                Width = 78
                Height = 13
                Caption = 'Data Inclusão'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 5
                Top = 80
                Width = 35
                Height = 13
                Caption = 'Marca'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 5
                Top = 120
                Width = 19
                Height = 13
                Caption = 'Cor'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 232
                Top = 120
                Width = 75
                Height = 13
                Caption = 'Ano / Modelo'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 5
                Top = 161
                Width = 50
                Height = 13
                Caption = 'KM Atual'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 181
                Top = 161
                Width = 70
                Height = 13
                Caption = 'Combustível'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 1
                Top = 3
                Width = 180
                Height = 13
                Caption = 'Plano Recebimento Preferencial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBComboBox1: TDBComboBox
                Left = 5
                Top = 57
                Width = 196
                Height = 21
                CharCase = ecUpperCase
                DataField = 'VOCLA20ESPECIE'
                DataSource = DSTemplate
                ItemHeight = 13
                TabOrder = 2
                OnEnter = DBComboBox1Enter
              end
              object DBEdit4: TDBEdit
                Left = 205
                Top = 57
                Width = 107
                Height = 21
                DataField = 'VICLDDATAINC'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 4
                Top = 96
                Width = 308
                Height = 21
                DataField = 'VICLA25MARCA'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit6: TDBEdit
                Left = 5
                Top = 136
                Width = 222
                Height = 21
                DataField = 'VICLA15COR'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit7: TDBEdit
                Left = 231
                Top = 136
                Width = 81
                Height = 21
                DataField = 'VICLA9ANOMODELO'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit8: TDBEdit
                Left = 5
                Top = 177
                Width = 170
                Height = 21
                DataField = 'VICLN2KMATUAL'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object RxDBComboBox2: TRxDBComboBox
                Left = 256
                Top = 18
                Width = 57
                Height = 21
                Style = csDropDownList
                DataField = 'VICLA1ATIVO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'Não')
                TabOrder = 1
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBComboBox3: TRxDBComboBox
                Left = 184
                Top = 176
                Width = 129
                Height = 21
                Style = csDropDownList
                DataField = 'VICLA1COMBUSTIVEL'
                DataSource = DSTemplate
                EnableValues = False
                ItemHeight = 13
                Items.Strings = (
                  '1 - Alcool'
                  '2 - Diesel'
                  '3 - Flex'
                  '4 - Gasolina'
                  '5 - GNV')
                Sorted = True
                TabOrder = 8
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 5
                Top = 18
                Width = 245
                Height = 21
                DataField = 'PLANOPREFERENCIAL'
                DataSource = DSTemplate
                TabOrder = 0
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 663
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 663
            object Label2: TLabel
              Left = 12
              Top = 4
              Width = 38
              Height = 13
              Caption = 'Código'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 82
              Top = 4
              Width = 30
              Height = 13
              Caption = 'Placa'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 209
              Top = 1
              Width = 117
              Height = 13
              Caption = 'Identificação Veículo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 9
              Top = 17
              Width = 64
              Height = 21
              Color = 16249066
              DataField = 'VICLICODVEICULO'
              DataSource = DSTemplate
              Enabled = False
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 77
              Top = 17
              Width = 128
              Height = 21
              DataField = 'VICLA15PLACA'
              DataSource = DSTemplate
              TabOrder = 1
              OnExit = DBEdit3Exit
            end
            object DBEdit1: TDBEdit
              Left = 209
              Top = 17
              Width = 400
              Height = 21
              DataField = 'VICLA40MODELO'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      '  VEICULOSCLIENTE '
      'Where'
      'CLIEA13ID = :CLIEA13ID and %MFiltro'
      '')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateVICLICODVEICULO: TIntegerField
      Tag = 1
      FieldName = 'VICLICODVEICULO'
      Origin = 'DB.VEICULOSCLIENTE.VICLICODVEICULO'
    end
    object SQLTemplateVICLA15PLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'VICLA15PLACA'
      Origin = 'DB.VEICULOSCLIENTE.VICLA15PLACA'
      Size = 15
    end
    object SQLTemplateCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.VEICULOSCLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateVICLA40MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'VICLA40MODELO'
      Origin = 'DB.VEICULOSCLIENTE.VICLA40MODELO'
      Size = 40
    end
    object SQLTemplateVOCLA20ESPECIE: TStringField
      DisplayLabel = 'Especie'
      FieldName = 'VOCLA20ESPECIE'
      Origin = 'DB.VEICULOSCLIENTE.VOCLA20ESPECIE'
    end
    object SQLTemplateVICLA1ATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'VICLA1ATIVO'
      Origin = 'DB.VEICULOSCLIENTE.VICLA1ATIVO'
      Size = 1
    end
    object SQLTemplateVICLDDATAINC: TDateTimeField
      DisplayLabel = 'Dt.Inclusão'
      FieldName = 'VICLDDATAINC'
      Origin = 'DB.VEICULOSCLIENTE.VICLDDATAINC'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object SQLTemplateVICLA10FROTA: TStringField
      FieldName = 'VICLA10FROTA'
      Origin = 'DB.VEICULOSCLIENTE.VICLA10FROTA'
      Size = 10
    end
    object SQLTemplateVICLA15COR: TStringField
      FieldName = 'VICLA15COR'
      Origin = 'DB.VEICULOSCLIENTE.VICLA15COR'
      Size = 15
    end
    object SQLTemplateVICLA1COMBUSTIVEL: TStringField
      FieldName = 'VICLA1COMBUSTIVEL'
      Origin = 'DB.VEICULOSCLIENTE.VICLA1COMBUSTIVEL'
      Size = 1
    end
    object SQLTemplateVICLA25MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'VICLA25MARCA'
      Origin = 'DB.VEICULOSCLIENTE.VICLA25MARCA'
      Size = 25
    end
    object SQLTemplateVICLIPLRCPREFERENCIAL: TIntegerField
      FieldName = 'VICLIPLRCPREFERENCIAL'
      Origin = 'DB.VEICULOSCLIENTE.VICLIPLRCPREFERENCIAL'
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VEICULOSCLIENTE.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VEICULOSCLIENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVICLN2KMATUAL: TFloatField
      FieldName = 'VICLN2KMATUAL'
      Origin = 'DB.VEICULOSCLIENTE.VICLN2KMATUAL'
      Precision = 15
      Size = 2
    end
    object SQLTemplateVICLA9ANOMODELO: TStringField
      FieldName = 'VICLA9ANOMODELO'
      Origin = 'DB.VEICULOSCLIENTE.VICLA9ANOMODELO'
      Size = 9
    end
    object SQLTemplatePLANOPREFERENCIAL: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANOPREFERENCIAL'
      LookupDataSet = SQLPlanosRecebimento
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'VICLIPLRCPREFERENCIAL'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCOMBUSTIVEL: TStringField
      FieldKind = fkCalculated
      FieldName = 'COMBUSTIVEL'
      Size = 40
      Calculated = True
    end
    object SQLTemplateVEICA60PLRCOPCIONAIS: TStringField
      FieldName = 'VEICA60PLRCOPCIONAIS'
      Origin = 'DB.VEICULOSCLIENTE.VEICA60PLRCOPCIONAIS'
      Size = 60
    end
  end
  object SQLEspecie: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Distinct VOCLA20ESPECIE '
      'from VEICULOSCLIENTE'
      'order by'
      'VOCLA20ESPECIE')
    Macros = <>
    Left = 437
    Top = 1
  end
  object SQLPlanosRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * '
      'from PLANORECEBIMENTO'
      'order by'
      'PLRCICOD')
    Macros = <>
    Left = 465
    Top = 1
    object SQLPlanosRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanosRecebimentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanosRecebimentoPLRCN2TXJURO: TFloatField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLPlanosRecebimentoPLRCN2TXMULTA: TFloatField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLPlanosRecebimentoPLRCN2TXCRED: TFloatField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
      Precision = 15
      Size = 3
    end
    object SQLPlanosRecebimentoPLRCN2PERCDESC: TFloatField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLPlanosRecebimentoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanosRecebimentoPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLPlanosRecebimentoPLRCDFIXDVENC: TIntegerField
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLPlanosRecebimentoPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLPlanosRecebimentoPLRCN2PERCENTR: TFloatField
      FieldName = 'PLRCN2PERCENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCENTR'
      Precision = 15
      Size = 3
    end
    object SQLPlanosRecebimentoPLRCN2DESC: TFloatField
      FieldName = 'PLRCN2DESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLPlanosRecebimentoPLRCCATIVO: TStringField
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanosRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanosRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLPlanosRecebimentoPLRCN2PERCACRESC: TFloatField
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
      Precision = 15
      Size = 3
    end
    object SQLPlanosRecebimentoPLRCCIMPDESCRNF: TStringField
      FieldName = 'PLRCCIMPDESCRNF'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCIMPDESCRNF'
      FixedChar = True
      Size = 1
    end
    object SQLPlanosRecebimentoPLRCN5FATOR: TFloatField
      FieldName = 'PLRCN5FATOR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATOR'
      Precision = 15
      Size = 5
    end
    object SQLPlanosRecebimentoPLRCN5FATORPARC: TFloatField
      FieldName = 'PLRCN5FATORPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATORPARC'
      Precision = 15
      Size = 3
    end
    object SQLPlanosRecebimentoPLRCFATCASH: TStringField
      FieldName = 'PLRCFATCASH'
      Origin = 'DB.PLANORECEBIMENTO.PLRCFATCASH'
      FixedChar = True
      Size = 1
    end
    object SQLPlanosRecebimentoPLRCN2PERCJURDIA: TFloatField
      FieldName = 'PLRCN2PERCJURDIA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCJURDIA'
      Precision = 15
      Size = 2
    end
  end
  object SQLVerificaPlaca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select v.*, c.cliea60razaosoc from  VEICULOSCLIENTE v '
      'left join cliente c on c.cliea13id = v.cliea13id '
      'where VICLA15PLACA = :xPlaca')
    Macros = <>
    Left = 522
    Top = 1
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xPlaca'
        ParamType = ptUnknown
      end>
  end
  object dtsPlanosRecbto: TDataSource
    DataSet = SQLPlanosRecebimento
    Left = 493
    Top = 1
  end
end
