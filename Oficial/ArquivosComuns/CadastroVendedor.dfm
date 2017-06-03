inherited FormCadastroVendedor: TFormCadastroVendedor
  Left = 174
  Top = 102
  Caption = 'Vendedores'
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
            ActivePage = TabSheetDadosPrincipais
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
                    FieldName = 'VENDN2COMISV'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDN2COMISP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDCTIPCOMIS'
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
                    FieldName = 'VENDA30CORE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDCCOMISACRESC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60EMAIL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA14CGC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA20IE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA11CPF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA10RG'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60CONTATO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA15FAX'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60END'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60BAI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60CID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA2UF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA8CEP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BancoLookUp'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA5AGENCIA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA10CONTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60TITULAR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDDABERTCONTA'
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
                Top = 149
                Width = 101
                Height = 13
                Caption = '% Comiss'#227'o Vista'
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
                Top = 149
                Width = 105
                Height = 13
                Caption = '% Comiss'#227'o Prazo'
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
                Top = 149
                Width = 81
                Height = 13
                Caption = 'Tipo Comiss'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 359
                Top = 149
                Width = 152
                Height = 13
                Caption = 'Comiss'#227'o Sobre Acr'#233'scimo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 366
                Top = 2
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
              object Label8: TLabel
                Left = 3
                Top = 1
                Width = 81
                Height = 13
                Caption = 'F'#237'sica/Jur'#237'dica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelCgc_CPF: TLabel
                Left = 99
                Top = 2
                Width = 27
                Height = 13
                Caption = 'CNPJ'
                FocusControl = DBEditCgc_Cpf
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelIE_RG: TLabel
                Left = 240
                Top = 2
                Width = 103
                Height = 13
                Caption = 'Inscri'#231#227'o Estadual'
                FocusControl = DBEditIE_RG
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 2
                Top = 39
                Width = 52
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label42: TLabel
                Left = 0
                Top = 75
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
                Top = 37
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
                Left = 267
                Top = 75
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
                Left = 605
                Top = 75
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
                Top = 111
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
                Top = 111
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
                Top = 111
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
              object Label11: TLabel
                Left = 428
                Top = 113
                Width = 29
                Height = 13
                Caption = 'CORE'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 0
                Top = 315
                Width = 73
                Height = 13
                Caption = 'Observa'#231#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 0
                Top = 183
                Width = 157
                Height = 13
                Caption = '% Comiss'#227'o por Fideliza'#231#227'o'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 174
                Top = 183
                Width = 225
                Height = 13
                Caption = 'Dias de Validade da Comiss'#227'o Fidelizada'
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 515
                Top = 149
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
              object Label20: TLabel
                Left = 409
                Top = 183
                Width = 85
                Height = 13
                Caption = 'R$ Flex Vendas'
                FocusControl = DBEdit14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 0
                Top = 162
                Width = 103
                Height = 21
                DataField = 'VENDN2COMISV'
                DataSource = DSTemplate
                TabOrder = 13
              end
              object DBEdit4: TDBEdit
                Left = 106
                Top = 162
                Width = 105
                Height = 21
                DataField = 'VENDN2COMISP'
                DataSource = DSTemplate
                TabOrder = 14
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 214
                Top = 162
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
                TabOrder = 15
                Values.Strings = (
                  'T'
                  'L')
              end
              object RxDBComboBox2: TRxDBComboBox
                Left = 359
                Top = 162
                Width = 152
                Height = 21
                Style = csDropDownList
                DataField = 'VENDCCOMISACRESC'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 16
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit5: TDBEdit
                Left = 364
                Top = 18
                Width = 279
                Height = 21
                DataField = 'VENDA60EMAIL'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEditIE_RG: TDBEdit
                Left = 240
                Top = 18
                Width = 122
                Height = 21
                DataField = 'VENDA20IE'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEditCgc_Cpf: TDBEdit
                Left = 99
                Top = 18
                Width = 139
                Height = 21
                DataField = 'VENDA14CGC'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object RxComboBoxFisJur: TRxDBComboBox
                Left = 1
                Top = 18
                Width = 96
                Height = 21
                Style = csDropDownList
                DataField = 'VENDA5FISJURID'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'F'#237'sica'
                  'Jur'#237'dica')
                TabOrder = 0
                Values.Strings = (
                  'F'
                  'J')
              end
              object DBEdit19: TDBEdit
                Left = 0
                Top = 53
                Width = 521
                Height = 21
                DataField = 'VENDA60END'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit21: TDBEdit
                Left = 0
                Top = 89
                Width = 262
                Height = 21
                DataField = 'VENDA60BAI'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit20: TDBEdit
                Left = 525
                Top = 53
                Width = 120
                Height = 21
                DataField = 'VENDA8CEP'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit22: TDBEdit
                Left = 267
                Top = 89
                Width = 332
                Height = 21
                DataField = 'VENDA60CID'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object DBEdit6: TDBEdit
                Left = 1
                Top = 126
                Width = 124
                Height = 21
                DataField = 'VENDA15FONE1'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit8: TDBEdit
                Left = 127
                Top = 126
                Width = 134
                Height = 21
                DataField = 'VENDA15FONE2'
                DataSource = DSTemplate
                TabOrder = 10
              end
              object DBEdit9: TDBEdit
                Left = 266
                Top = 126
                Width = 159
                Height = 21
                DataField = 'VENDA15FAX'
                DataSource = DSTemplate
                TabOrder = 11
              end
              object GroupBox7: TGroupBox
                Left = 0
                Top = 219
                Width = 509
                Height = 96
                Caption = ' Dados Banc'#225'rios '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 21
                object Label56: TLabel
                  Left = 5
                  Top = 14
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
                  Hint = 'Acessa Profiss'#227'o'
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
                  Left = 284
                  Top = 14
                  Width = 45
                  Height = 13
                  Caption = 'Ag'#234'ncia'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label57: TLabel
                  Left = 379
                  Top = 14
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
                  Left = 122
                  Top = 53
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
                  Left = 4
                  Top = 53
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
                  Width = 228
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
                  Left = 284
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
                  Left = 379
                  Top = 30
                  Width = 122
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
                  Width = 379
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
              object DBEdit11: TDBEdit
                Left = 428
                Top = 126
                Width = 215
                Height = 21
                DataField = 'VENDA30CORE'
                DataSource = DSTemplate
                TabOrder = 12
              end
              object DBMemo1: TDBMemo
                Left = 1
                Top = 329
                Width = 642
                Height = 56
                BevelWidth = 0
                DataField = 'VENDA254OBS'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 22
              end
              object DBEdit7: TDBEdit
                Left = 0
                Top = 199
                Width = 167
                Height = 21
                DataField = 'VENDN2PERCFIDEL'
                DataSource = DSTemplate
                TabOrder = 18
              end
              object DBEdit12: TDBEdit
                Left = 173
                Top = 199
                Width = 231
                Height = 21
                DataField = 'VENDIDIASVALFIDEL'
                DataSource = DSTemplate
                TabOrder = 19
              end
              object DBEditComissao: TDBEdit
                Left = 515
                Top = 162
                Width = 129
                Height = 21
                DataField = 'VENDN2PERCIRRF'
                DataSource = DSTemplate
                TabOrder = 17
              end
              object ComboUF: TRxDBComboBox
                Left = 602
                Top = 88
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
                TabOrder = 8
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
              object DBEdit14: TDBEdit
                Left = 409
                Top = 199
                Width = 98
                Height = 21
                DataField = 'VENDN2FLEX'
                DataSource = DSTemplate
                TabOrder = 20
              end
            end
          end
          inherited PanelMaster: TPanel
            Height = 4
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 7
              Top = 2
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
              Left = 56
              Top = 2
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
            object Label14: TLabel
              Left = 336
              Top = 2
              Width = 45
              Height = 13
              Caption = 'Contato'
              FocusControl = DBEdit10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 595
              Top = 2
              Width = 30
              Height = 13
              Caption = 'Ativo'
              FocusControl = DBEdit10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 483
              Top = 1
              Width = 35
              Height = 13
              Caption = 'Senha'
              FocusControl = DBEdit13
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
              Width = 44
              Height = 21
              DataField = 'VENDICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 53
              Top = 16
              Width = 276
              Height = 21
              DataField = 'VENDA60NOME'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit10: TDBEdit
              Left = 332
              Top = 16
              Width = 146
              Height = 21
              DataField = 'VENDA60CONTATO'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object RxDBComboBox3: TRxDBComboBox
              Left = 591
              Top = 16
              Width = 51
              Height = 21
              Style = csDropDownList
              DataField = 'VENDCATIVO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'Nao')
              TabOrder = 4
              Values.Strings = (
                'S'
                'N')
            end
            object DBEdit13: TDBEdit
              Left = 481
              Top = 16
              Width = 107
              Height = 21
              Ctl3D = True
              DataField = 'VENDA30SENHA'
              DataSource = DSTemplate
              ParentCtl3D = False
              PasswordChar = '*'
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From VENDEDOR Where (%MFiltro)')
    object SQLTemplateVENDICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLTemplateVENDA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateVENDN2COMISV: TBCDField
      DisplayLabel = '% Comiss'#227'o a Vista'
      FieldName = 'VENDN2COMISV'
      Origin = 'DB.VENDEDOR.VENDN2COMISV'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVENDN2COMISP: TBCDField
      DisplayLabel = '% Comiss'#227'o a Prazo'
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
      DisplayLabel = 'Comiss'#227'o Sobre Acr'#233'scimo'
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
      DisplayLabel = 'Endere'#231'o'
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
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'BANCA5COD'
      Origin = 'DB.VENDEDOR.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateVENDA5AGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
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
      DisplayLabel = 'Raz'#227'o Social'
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
    object SQLTemplateVENDN2PERCFIDEL: TBCDField
      DisplayLabel = '% Comiss'#227'o por Fideliza'#231#227'o'
      FieldName = 'VENDN2PERCFIDEL'
      Origin = 'DB.VENDEDOR.VENDN2PERCFIDEL'
      Precision = 15
      Size = 2
    end
    object SQLTemplateVENDIDIASVALFIDEL: TIntegerField
      DisplayLabel = 'Dias de Validade Fideliza'#231#227'o'
      FieldName = 'VENDIDIASVALFIDEL'
      Origin = 'DB.VENDEDOR.VENDIDIASVALFIDEL'
    end
    object SQLTemplateVENDN2PERCIRRF: TBCDField
      DisplayLabel = '% IRRF'
      FieldName = 'VENDN2PERCIRRF'
      Origin = 'DB.VENDEDOR.VENDN2PERCIRRF'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateVENDCATIVO: TStringField
      FieldName = 'VENDCATIVO'
      Origin = 'DB.VENDEDOR.VENDCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVENDA30SENHA: TStringField
      FieldName = 'VENDA30SENHA'
      Origin = 'DB.VENDEDOR.VENDA30SENHA'
      Size = 30
    end
    object SQLTemplateVENDN2FLEX: TBCDField
      FieldName = 'VENDN2FLEX'
      Origin = 'DB.VENDEDOR.VENDN2FLEX'
      Precision = 15
      Size = 2
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
  object SQLVendedorAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Vendedor'
      'Where %Cod')
    Macros = <
      item
        DataType = ftString
        Name = 'Cod'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 41
    Top = 233
  end
end
