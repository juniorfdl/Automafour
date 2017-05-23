inherited FormCadastroProfissional: TFormCadastroProfissional
  Left = 2
  Top = 39
  Caption = 'Vendedores/Profissionais'
  ClientHeight = 518
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 518
    inherited PanelCentral: TPanel
      Height = 444
      inherited PanelBarra: TPanel
        Height = 444
      end
      inherited PanelFundoDados: TPanel
        Height = 444
        inherited Panel5: TPanel
          Height = 444
          inherited PagePrincipal: TPageControl
            Top = 45
            Height = 399
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 326
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'VENDICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60NOME'
                    Width = 262
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA15FONE1'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA15FONE2'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60EMAIL'
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
                Left = 21
                Top = 223
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 0
                Top = 116
                Width = 101
                Height = 13
                Caption = '% Comissão Vista'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 106
                Top = 116
                Width = 105
                Height = 13
                Caption = '% Comissão Prazo'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 214
                Top = 116
                Width = 81
                Height = 13
                Caption = 'Tipo Comissão'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 359
                Top = 116
                Width = 152
                Height = 13
                Caption = 'Comissão Sobre Acréscimo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 430
                Top = 77
                Width = 34
                Height = 13
                Caption = 'E-Mail'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 2
                Top = 1
                Width = 52
                Height = 13
                Caption = 'Endereço'
                FocusControl = DBEdit19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label42: TLabel
                Left = 1
                Top = 38
                Width = 34
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label41: TLabel
                Left = 525
                Top = -1
                Width = 21
                Height = 13
                Caption = 'Cep'
                FocusControl = DBEdit20
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label43: TLabel
                Left = 268
                Top = 38
                Width = 38
                Height = 13
                Caption = 'Cidade'
                FocusControl = DBEdit22
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label44: TLabel
                Left = 604
                Top = 38
                Width = 14
                Height = 13
                Caption = 'UF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 1
                Top = 78
                Width = 37
                Height = 13
                Caption = 'Fone 1'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 127
                Top = 78
                Width = 37
                Height = 13
                Caption = 'Fone 2'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 266
                Top = 78
                Width = 20
                Height = 13
                Caption = 'Fax'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 6
                Top = 257
                Width = 73
                Height = 13
                Caption = 'Observações'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 515
                Top = 116
                Width = 43
                Height = 13
                Caption = '% IRRF'
                FocusControl = DBEditComissao
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 0
                Top = 129
                Width = 103
                Height = 21
                DataField = 'VENDN2COMISV'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit4: TDBEdit
                Left = 106
                Top = 129
                Width = 105
                Height = 21
                DataField = 'VENDN2COMISP'
                DataSource = DSTemplate
                TabOrder = 10
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 214
                Top = 129
                Width = 142
                Height = 21
                Style = csDropDownList
                DataField = 'VENDCTIPCOMIS'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sobre o Total da Venda'
                  'Sobre o Lucro da Venda')
                TabOrder = 11
                Values.Strings = (
                  'T'
                  'L')
              end
              object RxDBComboBox2: TRxDBComboBox
                Left = 359
                Top = 129
                Width = 152
                Height = 21
                Style = csDropDownList
                DataField = 'VENDCCOMISACRESC'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'Não')
                TabOrder = 12
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit5: TDBEdit
                Left = 428
                Top = 93
                Width = 215
                Height = 21
                DataField = 'VENDA60EMAIL'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit19: TDBEdit
                Left = 0
                Top = 15
                Width = 521
                Height = 21
                DataField = 'VENDA60END'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit21: TDBEdit
                Left = 1
                Top = 52
                Width = 262
                Height = 21
                DataField = 'VENDA60BAI'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit20: TDBEdit
                Left = 525
                Top = 15
                Width = 117
                Height = 21
                DataField = 'VENDA8CEP'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit22: TDBEdit
                Left = 268
                Top = 52
                Width = 330
                Height = 21
                DataField = 'VENDA60CID'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit6: TDBEdit
                Left = 1
                Top = 93
                Width = 124
                Height = 21
                DataField = 'VENDA15FONE1'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit8: TDBEdit
                Left = 127
                Top = 93
                Width = 134
                Height = 21
                DataField = 'VENDA15FONE2'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit9: TDBEdit
                Left = 266
                Top = 93
                Width = 159
                Height = 21
                DataField = 'VENDA15FAX'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object GroupBox7: TGroupBox
                Left = 0
                Top = 157
                Width = 641
                Height = 96
                Caption = ' Dados Bancários '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 14
                object Label56: TLabel
                  Left = 8
                  Top = 16
                  Width = 34
                  Height = 13
                  Caption = 'Banco'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object AcessaBanco: TSpeedButton
                  Left = 29
                  Top = 30
                  Width = 21
                  Height = 21
                  Hint = 'Acessa Profissão'
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
                  OnClick = AcessaBancoClick
                end
                object Label58: TLabel
                  Left = 404
                  Top = 16
                  Width = 45
                  Height = 13
                  Caption = 'Agência'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label57: TLabel
                  Left = 500
                  Top = 16
                  Width = 55
                  Height = 13
                  Caption = 'Nro.Conta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label59: TLabel
                  Left = 124
                  Top = 55
                  Width = 37
                  Height = 13
                  Caption = 'Titular'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label60: TLabel
                  Left = 6
                  Top = 55
                  Width = 67
                  Height = 13
                  Caption = 'Dt.Abertuta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit38: TDBEdit
                  Left = 5
                  Top = 30
                  Width = 24
                  Height = 21
                  AutoSize = False
                  DataField = 'BANCA5COD'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnKeyDown = DBEdit38KeyDown
                end
                object DBEdit39: TDBEdit
                  Left = 52
                  Top = 30
                  Width = 333
                  Height = 21
                  TabStop = False
                  AutoSize = False
                  BorderStyle = bsNone
                  DataField = 'BancoLookUp'
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
                object DBEdit40: TDBEdit
                  Left = 402
                  Top = 30
                  Width = 90
                  Height = 21
                  AutoSize = False
                  DataField = 'VENDA5AGENCIA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit41: TDBEdit
                  Left = 497
                  Top = 30
                  Width = 134
                  Height = 21
                  AutoSize = False
                  DataField = 'VENDA10CONTA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object DBEdit42: TDBEdit
                  Left = 122
                  Top = 69
                  Width = 507
                  Height = 21
                  AutoSize = False
                  DataField = 'VENDA60TITULAR'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object DBDateEdit5: TDBDateEdit
                  Left = 4
                  Top = 69
                  Width = 113
                  Height = 21
                  DataField = 'VENDDABERTCONTA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  NumGlyphs = 2
                  ParentFont = False
                  TabOrder = 4
                end
              end
              object DBMemo1: TDBMemo
                Left = 1
                Top = 271
                Width = 642
                Height = 56
                BevelWidth = 0
                DataField = 'VENDA254OBS'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 15
              end
              object DBEditComissao: TDBEdit
                Left = 515
                Top = 129
                Width = 129
                Height = 21
                DataField = 'VENDN2PERCIRRF'
                DataSource = DSTemplate
                TabOrder = 13
              end
              object ComboUF: TRxDBComboBox
                Left = 601
                Top = 51
                Width = 42
                Height = 21
                Style = csDropDownList
                DataField = 'VENDA2UF'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'MT'
                  'RJ'
                  'RN'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO')
                TabOrder = 4
                Values.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'MT'
                  'RJ'
                  'RN'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO')
              end
            end
          end
          inherited PanelMaster: TPanel
            Height = 4
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 9
              Top = 3
              Width = 38
              Height = 13
              Caption = 'Código'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 78
              Top = 3
              Width = 32
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 464
              Top = 2
              Width = 76
              Height = 13
              Caption = 'Especialidade'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 64
              Height = 21
              DataField = 'VENDICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 74
              Top = 16
              Width = 383
              Height = 21
              DataField = 'VENDA60NOME'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object ComboEspecialidade: TRxDBLookupCombo
              Left = 460
              Top = 15
              Width = 187
              Height = 21
              DropDownCount = 8
              DataField = 'ESPEICOD'
              DataSource = DSTemplate
              LookupField = 'ESPEICOD'
              LookupDisplay = 'ESPEA60DESCR'
              LookupSource = DSSQLEspecialidade
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From VENDEDOR Where (%MFiltro)')
    object SQLTemplateVENDICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Código'
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
      Visible = False
    end
    object SQLTemplateVENDA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateVENDN2COMISV: TFloatField
      DisplayLabel = '% Comissão a Vista'
      FieldName = 'VENDN2COMISV'
      Origin = 'DB.VENDEDOR.VENDN2COMISV'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVENDN2COMISP: TFloatField
      DisplayLabel = '% Comissão a Prazo'
      FieldName = 'VENDN2COMISP'
      Origin = 'DB.VENDEDOR.VENDN2COMISP'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVENDCTIPCOMIS: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'VENDCTIPCOMIS'
      Origin = 'DB.VENDEDOR.VENDCTIPCOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVENDCCOMISACRESC: TStringField
      DisplayLabel = 'Comissão Sobre Acréscimo'
      FieldName = 'VENDCCOMISACRESC'
      Origin = 'DB.VENDEDOR.VENDCCOMISACRESC'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVENDA60EMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'VENDA60EMAIL'
      Origin = 'DB.VENDEDOR.VENDA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.VENDEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.VENDEDOR.REGISTRO'
    end
    object SQLTemplateVENDA5FISJURID: TStringField
      DisplayLabel = 'Fis/Jur'
      FieldName = 'VENDA5FISJURID'
      Origin = 'DB.VENDEDOR.VENDA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateVENDA14CGC: TStringField
      DisplayLabel = 'CGC'
      FieldName = 'VENDA14CGC'
      Origin = 'DB.VENDEDOR.VENDA14CGC'
      EditMask = '##.###.###/####-##;0;_'
      FixedChar = True
      Size = 14
    end
    object SQLTemplateVENDA20IE: TStringField
      DisplayLabel = 'IE'
      FieldName = 'VENDA20IE'
      Origin = 'DB.VENDEDOR.VENDA20IE'
      FixedChar = True
    end
    object SQLTemplateVENDA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'VENDA11CPF'
      Origin = 'DB.VENDEDOR.VENDA11CPF'
      EditMask = '#########-##;0;_'
      FixedChar = True
      Size = 11
    end
    object SQLTemplateVENDA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'VENDA10RG'
      Origin = 'DB.VENDEDOR.VENDA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateVENDA60CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'VENDA60CONTATO'
      Origin = 'DB.VENDEDOR.VENDA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateVENDA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'VENDA15FONE1'
      Origin = 'DB.VENDEDOR.VENDA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateVENDA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'VENDA15FONE2'
      Origin = 'DB.VENDEDOR.VENDA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateVENDA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'VENDA15FAX'
      Origin = 'DB.VENDEDOR.VENDA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateVENDA60END: TStringField
      DisplayLabel = 'Endereço'
      FieldName = 'VENDA60END'
      Origin = 'DB.VENDEDOR.VENDA60END'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateVENDA60BAI: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'VENDA60BAI'
      Origin = 'DB.VENDEDOR.VENDA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateVENDA60CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'VENDA60CID'
      Origin = 'DB.VENDEDOR.VENDA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateVENDA2UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'VENDA2UF'
      Origin = 'DB.VENDEDOR.VENDA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateVENDA8CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'VENDA8CEP'
      Origin = 'DB.VENDEDOR.VENDA8CEP'
      EditMask = '00000-000;0;_'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateBANCA5COD: TStringField
      DisplayLabel = 'Cód. Banco'
      FieldName = 'BANCA5COD'
      Origin = 'DB.VENDEDOR.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateVENDA5AGENCIA: TStringField
      DisplayLabel = 'Agência'
      FieldName = 'VENDA5AGENCIA'
      Origin = 'DB.VENDEDOR.VENDA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateVENDA10CONTA: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'VENDA10CONTA'
      Origin = 'DB.VENDEDOR.VENDA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateVENDA60TITULAR: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'VENDA60TITULAR'
      Origin = 'DB.VENDEDOR.VENDA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateVENDDABERTCONTA: TDateTimeField
      DisplayLabel = 'Dt. Abertura CC'
      FieldName = 'VENDDABERTCONTA'
      Origin = 'DB.VENDEDOR.VENDDABERTCONTA'
    end
    object SQLTemplateBancoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoLookUp'
      LookupDataSet = TblBanco
      LookupKeyFields = 'BANCA5COD'
      LookupResultField = 'BANCA60NOME'
      KeyFields = 'BANCA5COD'
      Size = 0
      Lookup = True
    end
    object SQLTemplateVENDA30CORE: TStringField
      DisplayLabel = 'CORE'
      FieldName = 'VENDA30CORE'
      Origin = 'DB.VENDEDOR.VENDA30CORE'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateVENDA60RAZAOSOCIAL: TStringField
      DisplayLabel = 'Razão Social'
      FieldName = 'VENDA60RAZAOSOCIAL'
      Origin = 'DB.VENDEDOR.VENDA60RAZAOSOCIAL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateVENDA254OBS: TStringField
      DisplayLabel = 'Obs.'
      FieldName = 'VENDA254OBS'
      Origin = 'DB.VENDEDOR.VENDA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateVENDN2PERCFIDEL: TFloatField
      DisplayLabel = '% Comissão por Fidelização'
      FieldName = 'VENDN2PERCFIDEL'
      Origin = 'DB.VENDEDOR.VENDN2PERCFIDEL'
      Precision = 15
      Size = 2
    end
    object SQLTemplateVENDIDIASVALFIDEL: TIntegerField
      DisplayLabel = 'Dias de Validade Fidelização'
      FieldName = 'VENDIDIASVALFIDEL'
      Origin = 'DB.VENDEDOR.VENDIDIASVALFIDEL'
    end
    object SQLTemplateVENDN2PERCIRRF: TFloatField
      DisplayLabel = '% IRRF'
      FieldName = 'VENDN2PERCIRRF'
      Origin = 'DB.VENDEDOR.VENDN2PERCIRRF'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.VENDEDOR.ESPEICOD'
    end
  end
  object TblBanco: TTable
    DatabaseName = 'DB'
    TableName = 'BANCO'
    Left = 40
    Top = 286
    object TblBancoBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Required = True
      FixedChar = True
      Size = 5
    end
    object TblBancoBANCA60NOME: TStringField
      FieldName = 'BANCA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object SQLEspecialidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Especialidade')
    Macros = <>
    Left = 32
    Top = 192
    object SQLEspecialidadeESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.ESPECIALIDADE.ESPEICOD'
    end
    object SQLEspecialidadeESPEA60DESCR: TStringField
      FieldName = 'ESPEA60DESCR'
      Origin = 'DB.ESPECIALIDADE.ESPEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLEspecialidadeESPEN3VLRCONSULTA: TFloatField
      FieldName = 'ESPEN3VLRCONSULTA'
      Origin = 'DB.ESPECIALIDADE.ESPEN3VLRCONSULTA'
      Precision = 15
      Size = 3
    end
  end
  object DSSQLEspecialidade: TDataSource
    DataSet = SQLEspecialidade
    Left = 60
    Top = 192
  end
end
