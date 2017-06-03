inherited FormCadastroPertoChek: TFormCadastroPertoChek
  Left = 153
  Top = 124
  Caption = 'Cadastro de PertoChek'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetDadosPrincipais
            TabIndex = 1
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 4
                Top = 5
                Width = 41
                Height = 13
                Caption = 'Modelo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 4
                Top = 47
                Width = 78
                Height = 13
                Caption = 'Tipo de Porta '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 4
                Top = 90
                Width = 61
                Height = 13
                Caption = 'Velocidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ComboModelo: TRxDBComboBox
                Left = 4
                Top = 19
                Width = 303
                Height = 21
                Style = csDropDownList
                DataField = 'PERA30MODELO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'PertoChek Paralela e Serial')
                TabOrder = 0
                Values.Strings = (
                  'PertoChek')
              end
              object ComboPorta: TRxDBComboBox
                Left = 4
                Top = 61
                Width = 150
                Height = 21
                Style = csDropDownList
                DataField = 'PERA5PORTA'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'COM1'
                  'COM2'
                  'COM3'
                  'COM4'
                  'LPT1'
                  'LPT2')
                TabOrder = 1
                Values.Strings = (
                  'COM1'
                  'COM2'
                  'COM3'
                  'COM4'
                  'LPT1'
                  'LPT2')
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 4
                Top = 104
                Width = 150
                Height = 21
                Style = csDropDownList
                DataField = 'PERA5VELOC'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  '1200'
                  '2400'
                  '4800'
                  '9600'
                  '19200'
                  '57600')
                TabOrder = 2
                Values.Strings = (
                  '1200'
                  '2400'
                  '4800'
                  '9600'
                  '19200'
                  '57600')
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
              Left = 137
              Top = 4
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 18
              Width = 127
              Height = 21
              DataField = 'PERA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 134
              Top = 18
              Width = 484
              Height = 21
              DataField = 'PERA30DESCR'
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
      'Select * From PertoChek Where (%MFiltro)')
    object SQLTemplatePERA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'PERA13ID'
      Origin = 'DB.PERTOCHEK.PERA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.PERTOCHEK.EMPRICOD'
    end
    object SQLTemplatePERICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo Interno'
      FieldName = 'PERICOD'
      Origin = 'DB.PERTOCHEK.PERICOD'
    end
    object SQLTemplatePERA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PERA30DESCR'
      Origin = 'DB.PERTOCHEK.PERA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePERA30MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'PERA30MODELO'
      Origin = 'DB.PERTOCHEK.PERA30MODELO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePERA5PORTA: TStringField
      DisplayLabel = 'Porta'
      FieldName = 'PERA5PORTA'
      Origin = 'DB.PERTOCHEK.PERA5PORTA'
      FixedChar = True
      Size = 5
    end
    object SQLTemplatePERA5VELOC: TStringField
      DisplayLabel = 'Velocidade'
      FieldName = 'PERA5VELOC'
      Origin = 'DB.PERTOCHEK.PERA5VELOC'
      FixedChar = True
      Size = 5
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PERTOCHEK.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PERTOCHEK.REGISTRO'
    end
  end
end
