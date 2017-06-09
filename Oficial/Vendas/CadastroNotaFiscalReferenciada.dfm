inherited FormCadastroNotaFiscalReferenciada: TFormCadastroNotaFiscalReferenciada
  Left = 292
  Top = 65
  Caption = 'Refer'#234'ncias'
  ClientHeight = 622
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 622
    inherited PanelCentral: TPanel
      Height = 548
      inherited PanelBarra: TPanel
        Height = 548
      end
      inherited PanelFundoDados: TPanel
        Height = 548
        inherited Panel5: TPanel
          Height = 548
          inherited PagePrincipal: TPageControl
            Top = 96
            Height = 452
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 379
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATAEMISSAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO'
                    Title.Caption = 'Numero Doc'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MODELO'
                    Title.Caption = 'Modelo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERIA5COD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TIPO_DOCUMENTO'
                    Title.Caption = 'Doc'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CNPJ_CPF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CHAVEACESSO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO_COO'
                    Title.Caption = 'Nro Cupom'
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
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 749
                Height = 61
                Align = alTop
                ParentColor = True
                TabOrder = 0
                Visible = False
                object Label2: TLabel
                  Left = 36
                  Top = 8
                  Width = 95
                  Height = 13
                  Caption = 'Chave de Acesso'
                  FocusControl = DBEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit2: TDBEdit
                  Left = 37
                  Top = 24
                  Width = 400
                  Height = 21
                  DataField = 'CHAVEACESSO'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
              end
              object Panel7: TPanel
                Left = 0
                Top = 61
                Width = 749
                Height = 148
                Align = alTop
                ParentColor = True
                TabOrder = 1
                Visible = False
                object Label10: TLabel
                  Left = 36
                  Top = 44
                  Width = 66
                  Height = 13
                  Caption = 'N'#250'mero ECF'
                  FocusControl = DBEdit10
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 114
                  Top = 45
                  Width = 120
                  Height = 13
                  Caption = 'N'#250'mero Cupom Fiscal'
                  FocusControl = DBEdit11
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 37
                  Top = 89
                  Width = 63
                  Height = 13
                  Caption = 'Modelo ECF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label13: TLabel
                  Left = 272
                  Top = 44
                  Width = 76
                  Height = 13
                  Caption = 'Data Emissao'
                  FocusControl = DBEdit1
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 114
                  Top = 89
                  Width = 110
                  Height = 13
                  Caption = 'N'#250'mero Serie Fiscal'
                  FocusControl = DBEdit5
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 36
                  Top = 8
                  Width = 165
                  Height = 13
                  Caption = 'Cupons Fiscais Referenciados'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit10: TDBEdit
                  Left = 36
                  Top = 60
                  Width = 69
                  Height = 21
                  DataField = 'NUMERO_ECF'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEdit11: TDBEdit
                  Left = 114
                  Top = 61
                  Width = 151
                  Height = 21
                  DataField = 'NUMERO_COO'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object RxDBComboBox3: TRxDBComboBox
                  Left = 37
                  Top = 105
                  Width = 67
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MODELO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    '2B'
                    '2C'
                    '2D')
                  TabOrder = 3
                  Values.Strings = (
                    '2B'
                    '2C'
                    '2D')
                end
                object DBEdit1: TDBEdit
                  Left = 272
                  Top = 60
                  Width = 165
                  Height = 21
                  DataField = 'DATAEMISSAO'
                  DataSource = DSTemplate
                  TabOrder = 2
                end
                object DBEdit5: TDBEdit
                  Left = 114
                  Top = 105
                  Width = 323
                  Height = 21
                  DataField = 'NUMERO_SERIE'
                  DataSource = DSTemplate
                  TabOrder = 4
                end
              end
              object Panel6: TPanel
                Left = 0
                Top = 209
                Width = 749
                Height = 192
                Align = alTop
                ParentColor = True
                TabOrder = 2
                Visible = False
                object Label3: TLabel
                  Left = 32
                  Top = 44
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
                  Left = 125
                  Top = 44
                  Width = 107
                  Height = 13
                  Caption = 'N'#250'mero Nota Fiscal'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 337
                  Top = 44
                  Width = 41
                  Height = 13
                  Caption = 'Modelo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 397
                  Top = 44
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
                object Label7: TLabel
                  Left = 32
                  Top = 92
                  Width = 76
                  Height = 13
                  Caption = 'Data Emiss'#227'o'
                  FocusControl = DBEdit7
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 124
                  Top = 92
                  Width = 109
                  Height = 13
                  Caption = 'Tipo de Documento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 240
                  Top = 92
                  Width = 195
                  Height = 13
                  Caption = 'N'#250'mero do Documento (CPF/CNPJ)'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 32
                  Top = 8
                  Width = 287
                  Height = 13
                  Caption = 'Nota Fiscal Modelo 1 / 1 A e Nota Fiscal de Produtor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 32
                  Top = 136
                  Width = 136
                  Height = 13
                  Caption = 'Inscr. Estadual Produtor'
                  FocusControl = DBEdit8
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit3: TDBEdit
                  Left = 32
                  Top = 60
                  Width = 89
                  Height = 21
                  DataField = 'SERIA5COD'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEdit4: TDBEdit
                  Left = 125
                  Top = 60
                  Width = 207
                  Height = 21
                  DataField = 'NUMERO'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object DBEdit7: TDBEdit
                  Left = 32
                  Top = 108
                  Width = 90
                  Height = 21
                  DataField = 'DATAEMISSAO'
                  DataSource = DSTemplate
                  TabOrder = 4
                end
                object DBEdit9: TDBEdit
                  Left = 240
                  Top = 108
                  Width = 201
                  Height = 21
                  DataField = 'CNPJ_CPF'
                  DataSource = DSTemplate
                  TabOrder = 6
                end
                object CmbModeloNF: TRxDBComboBox
                  Left = 337
                  Top = 60
                  Width = 56
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MODELO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    '01'
                    '04')
                  TabOrder = 2
                  Values.Strings = (
                    '01'
                    '04')
                end
                object CmbTipoDocumento: TRxDBComboBox
                  Left = 126
                  Top = 108
                  Width = 107
                  Height = 21
                  Style = csDropDownList
                  DataField = 'TIPO_DOCUMENTO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'CNPJ'
                    'CPF')
                  TabOrder = 5
                  Values.Strings = (
                    '1'
                    '2')
                end
                object DBEdit8: TDBEdit
                  Left = 32
                  Top = 152
                  Width = 186
                  Height = 21
                  DataField = 'IE'
                  DataSource = DSTemplate
                  TabOrder = 7
                end
                object ComboUFRes: TRxDBComboBox
                  Left = 396
                  Top = 59
                  Width = 45
                  Height = 21
                  Style = csDropDownList
                  DataField = 'UF'
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
                    'RO'
                    'RR'
                    'RS'
                    'SC'
                    'SE'
                    'SP'
                    'TO'
                    'EX')
                  TabOrder = 3
                  Values.Strings = (
                    '12'
                    '27'
                    '13'
                    '16'
                    '29'
                    '23'
                    '53'
                    '32'
                    '52'
                    '21'
                    '31'
                    '50'
                    '15'
                    '25'
                    '26'
                    '22'
                    '41'
                    '51'
                    '33'
                    '24'
                    '11'
                    '14'
                    '43'
                    '42'
                    '28'
                    '35'
                    '13'
                    '99')
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 80
            Height = 16
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 80
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 757
              Height = 81
              Align = alTop
              BevelOuter = bvNone
              ParentColor = True
              TabOrder = 0
              object Label1: TLabel
                Left = 4
                Top = 28
                Width = 187
                Height = 13
                Caption = 'Tido de Documento Referenciado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object CmbTipoNota: TRxDBComboBox
                Left = 4
                Top = 48
                Width = 361
                Height = 21
                Style = csDropDownList
                DataField = 'TIPO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  '1 - Nota Fiscal Eletronica (NF-e)'
                  '2 - Conhecimento de Transporte Eletronico (CT-e)'
                  '3 - Nota Fiscal Modelo 1'
                  '4 - Nota Fiscal de Produtor'
                  '5 - Cupom Fiscal Emitido por ECF')
                TabOrder = 0
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5')
                OnChange = CmbTipoNotaChange
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      ' NOTAFISCALREFERENCIADA'
      'Where '
      '  NOFIA13ID = :NOFIA13ID and '
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'NOFIA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.NOTAFISCALREFERENCIADA.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateNFREFID: TIntegerField
      Tag = 1
      FieldName = 'NFREFID'
      Origin = 'DB.NOTAFISCALREFERENCIADA.NFREFID'
    end
    object SQLTemplateTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'DB.NOTAFISCALREFERENCIADA.TIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCHAVEACESSO: TStringField
      DisplayLabel = 'Chave de Acesso'
      FieldName = 'CHAVEACESSO'
      Origin = 'DB.NOTAFISCALREFERENCIADA.CHAVEACESSO'
      FixedChar = True
      Size = 44
    end
    object SQLTemplateSERIA5COD: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'SERIA5COD'
      Origin = 'DB.NOTAFISCALREFERENCIADA.SERIA5COD'
      Size = 5
    end
    object SQLTemplateNUMERO: TStringField
      DisplayLabel = 'Numero NF'
      FieldName = 'NUMERO'
      Origin = 'DB.NOTAFISCALREFERENCIADA.NUMERO'
      Size = 15
    end
    object SQLTemplateMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'DB.NOTAFISCALREFERENCIADA.MODELO'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateUF: TStringField
      FieldName = 'UF'
      Origin = 'DB.NOTAFISCALREFERENCIADA.UF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Origin = 'DB.NOTAFISCALREFERENCIADA.TIPO_DOCUMENTO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ / CPF'
      FieldName = 'CNPJ_CPF'
      Origin = 'DB.NOTAFISCALREFERENCIADA.CNPJ_CPF'
      Size = 14
    end
    object SQLTemplateNUMERO_ECF: TIntegerField
      DisplayLabel = 'Nro. ECF'
      FieldName = 'NUMERO_ECF'
      Origin = 'DB.NOTAFISCALREFERENCIADA.NUMERO_ECF'
    end
    object SQLTemplateNUMERO_COO: TIntegerField
      DisplayLabel = 'Nro.Cupom'
      FieldName = 'NUMERO_COO'
      Origin = 'DB.NOTAFISCALREFERENCIADA.NUMERO_COO'
    end
    object SQLTemplateMODELO_ECF: TStringField
      FieldName = 'MODELO_ECF'
      Origin = 'DB.NOTAFISCALREFERENCIADA.MODELO_ECF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateDATAEMISSAO: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATAEMISSAO'
      Origin = 'DB.NOTAFISCALREFERENCIADA.DATAEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object SQLTemplateNUMERO_SERIE: TStringField
      FieldName = 'NUMERO_SERIE'
      Size = 50
    end
    object SQLTemplateIE: TStringField
      FieldName = 'IE'
    end
  end
end
