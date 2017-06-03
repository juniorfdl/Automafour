inherited FormCadastroTransportadora: TFormCadastroTransportadora
  Left = 73
  Top = 29
  Caption = 'Transportadoras'
  ClientHeight = 588
  ClientWidth = 867
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 867
    Height = 588
    inherited PanelCabecalho: TPanel
      Width = 865
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 865
        inherited Panel1: TPanel
          Width = 863
          inherited PanelNavigator: TPanel
            Width = 863
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 863
            end
          end
          inherited PanelLeft: TPanel
            Left = 406
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 865
      Height = 514
      inherited PanelBarra: TPanel
        Height = 514
        inherited Button3: TRxSpeedButton
          Caption = '&3 Ve'#237'culos'
          Visible = True
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 735
        Height = 514
        inherited Panel5: TPanel
          Width = 735
          Height = 514
          inherited PagePrincipal: TPageControl
            Width = 735
            Height = 432
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 727
                Height = 359
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'TRANICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TRANA60RAZAOSOC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TRANA60NOMEFANT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TRANA60END'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TRANA60BAI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TRANA60CID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TRANA8CEP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TRANA2UF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TRANA14CGC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TRANA15IE'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 727
                inherited PanelBetween: TPanel
                  Width = 333
                  inherited AdvPanel1: TAdvPanel
                    Width = 333
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 333
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 333
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
                Top = 207
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 5
                Top = 3
                Width = 83
                Height = 13
                Caption = 'Nome Fantasia'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 5
                Top = 46
                Width = 52
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 5
                Top = 90
                Width = 34
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 5
                Top = 125
                Width = 38
                Height = 13
                Caption = 'Cidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 502
                Top = 163
                Width = 20
                Height = 13
                Caption = 'CEP'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 5
                Top = 163
                Width = 27
                Height = 13
                Caption = 'CNPJ'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 227
                Top = 163
                Width = 11
                Height = 13
                Caption = 'IE'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 5
                Top = 203
                Width = 27
                Height = 13
                Caption = 'Fone'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 116
                Top = 203
                Width = 20
                Height = 13
                Caption = 'Fax'
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 5
                Top = 242
                Width = 34
                Height = 13
                Caption = 'E-Mail'
                FocusControl = DBEdit13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 227
                Top = 203
                Width = 45
                Height = 13
                Caption = 'Contato'
                FocusControl = DBEdit14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 367
                Top = 163
                Width = 105
                Height = 13
                Caption = 'CPF Transportador'
                FocusControl = DBEdit15
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label120: TLabel
                Left = 459
                Top = 125
                Width = 37
                Height = 13
                Caption = 'Cd.NFe'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label44: TLabel
                Left = 556
                Top = 124
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
              object Label75: TLabel
                Left = 559
                Top = 45
                Width = 44
                Height = 13
                Caption = 'N'#250'mero'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 5
                Top = 17
                Width = 599
                Height = 21
                DataField = 'TRANA60NOMEFANT'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit4: TDBEdit
                Left = 5
                Top = 60
                Width = 548
                Height = 21
                DataField = 'TRANA60END'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit5: TDBEdit
                Left = 5
                Top = 103
                Width = 600
                Height = 21
                DataField = 'TRANA60BAI'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit7: TDBEdit
                Left = 503
                Top = 177
                Width = 102
                Height = 21
                DataField = 'TRANA8CEP'
                DataSource = DSTemplate
                TabOrder = 10
              end
              object DBEdit9: TDBEdit
                Left = 5
                Top = 177
                Width = 217
                Height = 21
                DataField = 'TRANA14CGC'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object DBEdit10: TDBEdit
                Left = 224
                Top = 177
                Width = 137
                Height = 21
                DataField = 'TRANA15IE'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit11: TDBEdit
                Left = 5
                Top = 217
                Width = 108
                Height = 21
                DataField = 'TRANA20FONE'
                DataSource = DSTemplate
                TabOrder = 11
              end
              object DBEdit12: TDBEdit
                Left = 113
                Top = 217
                Width = 109
                Height = 21
                DataField = 'TRANA20FAX'
                DataSource = DSTemplate
                TabOrder = 12
              end
              object DBEdit13: TDBEdit
                Left = 5
                Top = 256
                Width = 602
                Height = 21
                DataField = 'TRANA60EMAIL'
                DataSource = DSTemplate
                TabOrder = 14
              end
              object DBEdit14: TDBEdit
                Left = 224
                Top = 217
                Width = 379
                Height = 21
                DataField = 'TRANA60CONTATO'
                DataSource = DSTemplate
                TabOrder = 13
              end
              object DBEdit15: TDBEdit
                Left = 364
                Top = 177
                Width = 137
                Height = 21
                DataField = 'TRANA11CPF'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit49: TDBEdit
                Left = 456
                Top = 138
                Width = 93
                Height = 21
                DataField = 'TRANICODMUNICIPIO'
                DataSource = DSTemplate
                TabOrder = 5
                OnEnter = DBEdit49Enter
              end
              object ComboUFRes: TRxDBComboBox
                Left = 553
                Top = 137
                Width = 52
                Height = 21
                Style = csDropDownList
                DataField = 'TRANA2UF'
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
                TabOrder = 6
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
                  'RO'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO'
                  'EX')
              end
              object DBEdit8: TDBEdit
                Left = 558
                Top = 59
                Width = 47
                Height = 21
                DataField = 'TRANA5NROEND'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBComboBox1: TDBComboBox
                Left = 5
                Top = 139
                Width = 446
                Height = 21
                CharCase = ecUpperCase
                DataField = 'TRANA60CID'
                DataSource = DSTemplate
                ItemHeight = 13
                TabOrder = 4
                OnEnter = DBComboBox1Enter
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 735
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 735
            object Label1: TLabel
              Left = 9
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
              Left = 80
              Top = 5
              Width = 71
              Height = 13
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 7
              Top = 18
              Width = 64
              Height = 21
              DataField = 'TRANICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 18
              Width = 528
              Height = 21
              DataField = 'TRANA60RAZAOSOC'
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
      'Select * From Transportadora Where (%MFiltro)')
    object SQLTemplateTRANICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TRANICOD'
      Origin = 'DB.TRANSPORTADORA.TRANICOD'
      Visible = False
    end
    object SQLTemplateTRANA60RAZAOSOC: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'TRANA60RAZAOSOC'
      Origin = 'DB.TRANSPORTADORA.TRANA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTRANA60NOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'TRANA60NOMEFANT'
      Origin = 'DB.TRANSPORTADORA.TRANA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTRANA60END: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'TRANA60END'
      Origin = 'DB.TRANSPORTADORA.TRANA60END'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTRANA60BAI: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'TRANA60BAI'
      Origin = 'DB.TRANSPORTADORA.TRANA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTRANA60CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'TRANA60CID'
      Origin = 'DB.TRANSPORTADORA.TRANA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTRANA8CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'TRANA8CEP'
      Origin = 'DB.TRANSPORTADORA.TRANA8CEP'
      EditMask = '00000-000;0;_'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateTRANA2UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'TRANA2UF'
      Origin = 'DB.TRANSPORTADORA.TRANA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateTRANA14CGC: TStringField
      DisplayLabel = 'CGC'
      FieldName = 'TRANA14CGC'
      Origin = 'DB.TRANSPORTADORA.TRANA14CGC'
      EditMask = '##.###.###/####-##;0;_'
      FixedChar = True
      Size = 14
    end
    object SQLTemplateTRANA15IE: TStringField
      DisplayLabel = 'IE'
      FieldName = 'TRANA15IE'
      Origin = 'DB.TRANSPORTADORA.TRANA15IE'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TRANSPORTADORA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TRANSPORTADORA.REGISTRO'
    end
    object SQLTemplateTRANA20FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'TRANA20FONE'
      Origin = 'DB.TRANSPORTADORA.TRANA20FONE'
      FixedChar = True
    end
    object SQLTemplateTRANA20FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'TRANA20FAX'
      Origin = 'DB.TRANSPORTADORA.TRANA20FAX'
      FixedChar = True
    end
    object SQLTemplateTRANA60EMAIL: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'TRANA60EMAIL'
      Origin = 'DB.TRANSPORTADORA.TRANA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTRANA60CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'TRANA60CONTATO'
      Origin = 'DB.TRANSPORTADORA.TRANA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTRANA11CPF: TStringField
      FieldName = 'TRANA11CPF'
      Size = 11
    end
    object SQLTemplateTRANICODMUNICIPIO: TIntegerField
      FieldName = 'TRANICODMUNICIPIO'
      Origin = 'DB.TRANSPORTADORA.TRANICODMUNICIPIO'
    end
    object SQLTemplateTRANA5NROEND: TStringField
      FieldName = 'TRANA5NROEND'
      Size = 5
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Transportadora'
      'set'
      '  TRANICOD = :TRANICOD,'
      '  TRANA60RAZAOSOC = :TRANA60RAZAOSOC,'
      '  TRANA60NOMEFANT = :TRANA60NOMEFANT,'
      '  TRANA60END = :TRANA60END,'
      '  TRANA60BAI = :TRANA60BAI,'
      '  TRANA60CID = :TRANA60CID,'
      '  TRANA8CEP = :TRANA8CEP,'
      '  TRANA2UF = :TRANA2UF,'
      '  TRANA14CGC = :TRANA14CGC,'
      '  TRANA15IE = :TRANA15IE,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  TRANICOD = :OLD_TRANICOD')
    InsertSQL.Strings = (
      'insert into Transportadora'
      
        '  (TRANICOD, TRANA60RAZAOSOC, TRANA60NOMEFANT, TRANA60END, TRANA' +
        '60BAI, '
      
        '   TRANA60CID, TRANA8CEP, TRANA2UF, TRANA14CGC, TRANA15IE, PENDE' +
        'NTE, REGISTRO)'
      'values'
      
        '  (:TRANICOD, :TRANA60RAZAOSOC, :TRANA60NOMEFANT, :TRANA60END, :' +
        'TRANA60BAI, '
      
        '   :TRANA60CID, :TRANA8CEP, :TRANA2UF, :TRANA14CGC, :TRANA15IE, ' +
        ':PENDENTE, '
      '   :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from Transportadora'
      'where'
      '  TRANICOD = :OLD_TRANICOD')
  end
  object SQLCidades: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select Distinct  CLIEA60CIDRES '
      'from CLIENTE'
      'order by'
      'CLIEA60CIDRES')
    Macros = <>
    Left = 97
    Top = 169
  end
end
