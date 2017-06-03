inherited FormCadastroAvalista: TFormCadastroAvalista
  Left = 32
  Caption = 'Cadastro de Avalistas'
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
                    FieldName = 'AVALA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AVALA60RAZAOSOC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AVALA15FONE1'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AVALA15FONE2'
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
              object PanelTop: TPanel
                Left = 0
                Top = 0
                Width = 749
                Height = 43
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object PanelDocJur: TPanel
                  Left = 143
                  Top = 3
                  Width = 505
                  Height = 38
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 0
                  Visible = False
                  object LabelCgc_CPF: TLabel
                    Left = 5
                    Top = 0
                    Width = 27
                    Height = 13
                    Caption = 'CNPJ'
                    FocusControl = DBEditCgc
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object LabelIE_RG: TLabel
                    Left = 118
                    Top = 0
                    Width = 103
                    Height = 13
                    Caption = 'Inscrição Estadual'
                    FocusControl = DBEditIE
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label3: TLabel
                    Left = 247
                    Top = 0
                    Width = 101
                    Height = 13
                    Caption = 'Data de Fundação'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEditCgc: TDBEdit
                    Left = 5
                    Top = 15
                    Width = 110
                    Height = 21
                    DataField = 'AVALA14CGC'
                    DataSource = DSTemplate
                    TabOrder = 0
                  end
                  object DBEditIE: TDBEdit
                    Left = 118
                    Top = 15
                    Width = 124
                    Height = 21
                    DataField = 'AVALA20IE'
                    DataSource = DSTemplate
                    TabOrder = 1
                  end
                  object DBDateEdit2: TDBDateEdit
                    Left = 246
                    Top = 15
                    Width = 121
                    Height = 21
                    DataField = 'AVALDFUND'
                    DataSource = DSTemplate
                    NumGlyphs = 2
                    TabOrder = 2
                  end
                end
                object PanelDocFis: TPanel
                  Left = 144
                  Top = 5
                  Width = 500
                  Height = 38
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 1
                  object Label4: TLabel
                    Left = 4
                    Top = -1
                    Width = 20
                    Height = 13
                    Caption = 'CPF'
                    FocusControl = DBEdit55
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label5: TLabel
                    Left = 118
                    Top = -1
                    Width = 16
                    Height = 13
                    Caption = 'RG'
                    FocusControl = DBEdit56
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label80: TLabel
                    Left = 246
                    Top = -1
                    Width = 113
                    Height = 13
                    Caption = 'Data de Nascimento'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit55: TDBEdit
                    Left = 4
                    Top = 14
                    Width = 110
                    Height = 21
                    DataField = 'AVALA11CPF'
                    DataSource = DSTemplate
                    TabOrder = 0
                  end
                  object DBEdit56: TDBEdit
                    Left = 117
                    Top = 14
                    Width = 124
                    Height = 21
                    DataField = 'AVALA10RG'
                    DataSource = DSTemplate
                    TabOrder = 1
                  end
                  object DBDateEdit1: TDBDateEdit
                    Left = 245
                    Top = 14
                    Width = 121
                    Height = 21
                    DataField = 'AVALDNASC'
                    DataSource = DSTemplate
                    NumGlyphs = 2
                    TabOrder = 2
                  end
                end
                object RadioFisJur: TDBRadioGroup
                  Left = 1
                  Top = 1
                  Width = 141
                  Height = 40
                  Caption = '&Tipo Pessoa'
                  Columns = 2
                  DataField = 'AVALA5FISJURID'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Items.Strings = (
                    'Física'
                    'Jurídica')
                  ParentFont = False
                  TabOrder = 2
                  Values.Strings = (
                    'F'
                    'J')
                  OnClick = RadioFisJurClick
                end
              end
              object PanelFisica: TPanel
                Left = 0
                Top = 43
                Width = 749
                Height = 39
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
                object Label17: TLabel
                  Left = 4
                  Top = -1
                  Width = 69
                  Height = 13
                  Caption = 'Nome do Pai'
                  FocusControl = DBEdit14
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 329
                  Top = -1
                  Width = 76
                  Height = 13
                  Caption = 'Nome da Mãe'
                  FocusControl = DBEdit15
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit14: TDBEdit
                  Left = 3
                  Top = 13
                  Width = 321
                  Height = 21
                  DataField = 'AVALA60NOMEPAI'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEdit15: TDBEdit
                  Left = 327
                  Top = 13
                  Width = 290
                  Height = 21
                  DataField = 'AVALA60NOMEMAE'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
              end
              object PanelBody: TPanel
                Left = 0
                Top = 82
                Width = 749
                Height = 259
                Align = alClient
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 2
                object Label41: TLabel
                  Left = 4
                  Top = -1
                  Width = 21
                  Height = 13
                  Caption = 'Cep'
                  FocusControl = DBEdit20
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ButtonCep: TSpeedButton
                  Left = 102
                  Top = 14
                  Width = 21
                  Height = 21
                  Hint = 'Acessa Cep''s'
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
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ButtonCepClick
                end
                object Label40: TLabel
                  Left = 128
                  Top = 0
                  Width = 52
                  Height = 13
                  Caption = 'Endereço'
                  FocusControl = DBEditEnd
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label42: TLabel
                  Left = 4
                  Top = 35
                  Width = 34
                  Height = 13
                  Caption = 'Bairro'
                  FocusControl = DBEdit21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label43: TLabel
                  Left = 272
                  Top = 35
                  Width = 38
                  Height = 13
                  Caption = 'Cidade'
                  FocusControl = DBEdit22
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label44: TLabel
                  Left = 582
                  Top = 35
                  Width = 14
                  Height = 13
                  Caption = 'UF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 4
                  Top = 69
                  Width = 37
                  Height = 13
                  Caption = 'Fone 1'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 139
                  Top = 69
                  Width = 37
                  Height = 13
                  Caption = 'Fone 2'
                  FocusControl = DBEdit5
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 273
                  Top = 69
                  Width = 20
                  Height = 13
                  Caption = 'Fax'
                  FocusControl = DBEdit6
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label49: TLabel
                  Left = 4
                  Top = 103
                  Width = 30
                  Height = 13
                  Caption = 'Email'
                  FocusControl = DBEdit32
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 406
                  Top = 68
                  Width = 116
                  Height = 13
                  Caption = 'Renda/Faturamento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit20: TDBEdit
                  Left = 4
                  Top = 14
                  Width = 96
                  Height = 21
                  DataField = 'AVALA8CEPRES'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEditEnd: TDBEdit
                  Left = 126
                  Top = 14
                  Width = 491
                  Height = 21
                  DataField = 'AVALA60ENDRES'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object DBEdit21: TDBEdit
                  Left = 4
                  Top = 48
                  Width = 263
                  Height = 21
                  DataField = 'AVALA60BAIRES'
                  DataSource = DSTemplate
                  TabOrder = 2
                end
                object DBEdit22: TDBEdit
                  Left = 270
                  Top = 48
                  Width = 307
                  Height = 21
                  DataField = 'AVALA60CIDRES'
                  DataSource = DSTemplate
                  TabOrder = 3
                end
                object ComboUFRes: TRxDBComboBox
                  Left = 579
                  Top = 48
                  Width = 39
                  Height = 21
                  Style = csDropDownList
                  DataField = 'AVALA2UFRES'
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
                object DBEdit4: TDBEdit
                  Left = 4
                  Top = 82
                  Width = 130
                  Height = 21
                  DataField = 'AVALA15FONE1'
                  DataSource = DSTemplate
                  TabOrder = 5
                end
                object DBEdit5: TDBEdit
                  Left = 137
                  Top = 82
                  Width = 130
                  Height = 21
                  DataField = 'AVALA15FONE2'
                  DataSource = DSTemplate
                  TabOrder = 6
                end
                object DBEdit6: TDBEdit
                  Left = 270
                  Top = 82
                  Width = 130
                  Height = 21
                  DataField = 'AVALA15FAX'
                  DataSource = DSTemplate
                  TabOrder = 7
                end
                object DBEdit32: TDBEdit
                  Left = 4
                  Top = 117
                  Width = 614
                  Height = 21
                  DataField = 'AVALA60EMAIL'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                end
                object EvDBNumEdit2: TEvDBNumEdit
                  Left = 404
                  Top = 82
                  Width = 130
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'AVALN2RENDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Glyph.Data = {
                    46040000424D460400000000000036000000280000001A0000000D0000000100
                    1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                    FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                    C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                    C0C0FFC0C0FFC0C0FF7FFFC0C080404080404080404080404080404080404080
                    4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                    808080808080808080808080808080808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                    C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                    808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0E84CFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                    C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                    808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                    C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                    8080FFC0C0FFC0C0FF7FFFC0C0FFC000FF406040000040000040000040000040
                    0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                    808080808080808080808080FFC0C0808080FFC0C0FFC0C0FF7FFFC0C0FFC000
                    FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                    C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                    8080FFC0C0FFC0C0FF7FFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                    C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C0FF7FFFC0C0FFC0C0
                    FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                    C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                    C0C0FFC0C0FFC0C0FF7F}
                  ParentFont = False
                  TabOrder = 9
                end
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 7
              Top = 4
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 96
              Top = 4
              Width = 172
              Height = 13
              Caption = 'Nome Completo / Razão Social'
              FocusControl = DBEditNome
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 17
              Width = 85
              Height = 21
              DataField = 'AVALA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEditNome: TDBEdit
              Left = 92
              Top = 17
              Width = 525
              Height = 21
              DataField = 'AVALA60RAZAOSOC'
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
      'Select * From AVALISTA Where (%MFiltro)')
    object SQLTemplateAVALA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'AVALA13ID'
      Origin = 'DB.AVALISTA.AVALA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.AVALISTA.EMPRICOD'
    end
    object SQLTemplateAVALICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'AVALICOD'
      Origin = 'DB.AVALISTA.AVALICOD'
    end
    object SQLTemplateAVALA5FISJURID: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo Pessoa'
      FieldName = 'AVALA5FISJURID'
      Origin = 'DB.AVALISTA.AVALA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateAVALA14CGC: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'AVALA14CGC'
      Origin = 'DB.AVALISTA.AVALA14CGC'
      EditMask = '##.###.###/####-##;0;_'
      FixedChar = True
      Size = 14
    end
    object SQLTemplateAVALA20IE: TStringField
      DisplayLabel = 'IE'
      FieldName = 'AVALA20IE'
      Origin = 'DB.AVALISTA.AVALA20IE'
      FixedChar = True
    end
    object SQLTemplateAVALA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'AVALA11CPF'
      Origin = 'DB.AVALISTA.AVALA11CPF'
      EditMask = '#########-##;0;_'
      FixedChar = True
      Size = 11
    end
    object SQLTemplateAVALA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'AVALA10RG'
      Origin = 'DB.AVALISTA.AVALA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateAVALA60RAZAOSOC: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nome / Razão Social'
      FieldName = 'AVALA60RAZAOSOC'
      Origin = 'DB.AVALISTA.AVALA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAVALA60CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'AVALA60CONTATO'
      Origin = 'DB.AVALISTA.AVALA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAVALA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'AVALA15FONE1'
      Origin = 'DB.AVALISTA.AVALA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateAVALA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'AVALA15FONE2'
      Origin = 'DB.AVALISTA.AVALA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateAVALA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'AVALA15FAX'
      Origin = 'DB.AVALISTA.AVALA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateAVALA60ENDRES: TStringField
      DisplayLabel = 'Endereço'
      FieldName = 'AVALA60ENDRES'
      Origin = 'DB.AVALISTA.AVALA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAVALA60BAIRES: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'AVALA60BAIRES'
      Origin = 'DB.AVALISTA.AVALA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAVALA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'AVALA60CIDRES'
      Origin = 'DB.AVALISTA.AVALA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAVALA2UFRES: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'UF'
      FieldName = 'AVALA2UFRES'
      Origin = 'DB.AVALISTA.AVALA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateAVALA8CEPRES: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'AVALA8CEPRES'
      Origin = 'DB.AVALISTA.AVALA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateAVALA60EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'AVALA60EMAIL'
      Origin = 'DB.AVALISTA.AVALA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAVALDNASC: TDateTimeField
      DisplayLabel = 'Dt.Nascimento'
      FieldName = 'AVALDNASC'
      Origin = 'DB.AVALISTA.AVALDNASC'
    end
    object SQLTemplateAVALDFUND: TDateTimeField
      DisplayLabel = 'Dt.Fundação'
      FieldName = 'AVALDFUND'
      Origin = 'DB.AVALISTA.AVALDFUND'
    end
    object SQLTemplateAVALA60NOMEPAI: TStringField
      DisplayLabel = 'Pai'
      FieldName = 'AVALA60NOMEPAI'
      Origin = 'UNITGESTAO.AVALISTA.AVALA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAVALA60NOMEMAE: TStringField
      DisplayLabel = 'Mãe'
      FieldName = 'AVALA60NOMEMAE'
      Origin = 'UNITGESTAO.AVALISTA.AVALA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAVALN2RENDA: TFloatField
      DisplayLabel = 'Renda'
      FieldName = 'AVALN2RENDA'
      Origin = 'UNITGESTAO.AVALISTA.AVALN2RENDA'

    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.AVALISTA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.AVALISTA.REGISTRO'
    end
  end
end
