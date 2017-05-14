inherited FormCadastroClienteContato: TFormCadastroClienteContato
  Left = 222
  Top = 20
  Caption = 'Contatos'
  ClientHeight = 541
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 541
    inherited PanelCentral: TPanel
      Height = 467
      inherited PanelBarra: TPanel
        Height = 467
      end
      inherited PanelFundoDados: TPanel
        Height = 467
        inherited Panel5: TPanel
          Height = 467
          inherited PagePrincipal: TPageControl
            Height = 385
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 312
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CLCOICOD'
                    Title.Caption = 'C'#243'd.'
                    Width = 29
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLCOA60NOME'
                    Width = 270
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLCOA15FONE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLCOA15CELULAR'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLCOA60EMAIL'
                    Width = 107
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLCOCENVIAMALA'
                    Title.Caption = 'Env.Mala'
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
              object Label4: TLabel
                Left = 4
                Top = 1
                Width = 27
                Height = 13
                Caption = 'Fone'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 166
                Top = 1
                Width = 39
                Height = 13
                Caption = 'Celular'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 4
                Top = 39
                Width = 30
                Height = 13
                Caption = 'Email'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 4
                Top = 76
                Width = 83
                Height = 13
                Caption = 'Departamento'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 4
                Top = 113
                Width = 31
                Height = 13
                Caption = 'Setor'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 4
                Top = 150
                Width = 21
                Height = 13
                Caption = 'Obs'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit4: TDBEdit
                Left = 1
                Top = 16
                Width = 160
                Height = 21
                DataField = 'CLCOA15FONE'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 163
                Top = 16
                Width = 174
                Height = 21
                DataField = 'CLCOA15CELULAR'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 1
                Top = 54
                Width = 429
                Height = 21
                DataField = 'CLCOA60EMAIL'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit8: TDBEdit
                Left = 1
                Top = 91
                Width = 429
                Height = 21
                DataField = 'CLCOA60DEPTO'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit9: TDBEdit
                Left = 1
                Top = 128
                Width = 429
                Height = 21
                DataField = 'CLCOA60SETOR'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object DBMemo1: TDBMemo
                Left = 1
                Top = 165
                Width = 429
                Height = 89
                DataField = 'CLCOA254OBS'
                DataSource = DSTemplate
                MaxLength = 254
                TabOrder = 5
              end
            end
          end
          inherited PanelMaster: TPanel
            object Label3: TLabel
              Left = 8
              Top = 3
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 95
              Top = 3
              Width = 32
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 410
              Top = 3
              Width = 83
              Height = 13
              Caption = 'Nome Fantasia'
              FocusControl = DBEditRzSocial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 4
              Top = 17
              Width = 85
              Height = 21
              DataField = 'CLIEA13ID'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 92
              Top = 17
              Width = 314
              Height = 21
              DataField = 'CLIEA60RAZAOSOC'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
            object DBEditRzSocial: TDBEdit
              Left = 408
              Top = 17
              Width = 243
              Height = 21
              DataField = 'CLIEA60NOMEFANT'
              DataSource = DSMasterTemplate
              TabOrder = 2
            end
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
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 75
              Top = 2
              Width = 32
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 16
              Width = 64
              Height = 21
              DataField = 'CLCOICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 70
              Top = 16
              Width = 364
              Height = 21
              DataField = 'CLCOA60NOME'
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
      'Select * From CLIENTECONTATO '
      'Where '
      '  CLIEA13ID = :CLIEA13ID and  (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTECONTATO.CLIEA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLCOICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLCOICOD'
      Origin = 'DB.CLIENTECONTATO.CLCOICOD'
      Visible = False
    end
    object SQLTemplateCLCOA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLCOA60NOME'
      Origin = 'DB.CLIENTECONTATO.CLCOA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLCOA15FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLCOA15FONE'
      Origin = 'DB.CLIENTECONTATO.CLCOA15FONE'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCLCOA15CELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CLCOA15CELULAR'
      Origin = 'DB.CLIENTECONTATO.CLCOA15CELULAR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCLCOA60EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'CLCOA60EMAIL'
      Origin = 'DB.CLIENTECONTATO.CLCOA60EMAIL'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTECONTATO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTECONTATO.REGISTRO'
    end
    object SQLTemplateCLCOCENVIAMALA: TStringField
      DisplayLabel = 'Envia Mala-Direta'
      FieldName = 'CLCOCENVIAMALA'
      Origin = 'DB.CLIENTECONTATO.CLCOCENVIAMALA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCLCOA254OBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'CLCOA254OBS'
      Origin = 'DB.CLIENTECONTATO.CLCOA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateCLCOA60DEPTO: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'CLCOA60DEPTO'
      Origin = 'DB.CLIENTECONTATO.CLCOA60DEPTO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLCOA60SETOR: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'CLCOA60SETOR'
      Origin = 'DB.CLIENTECONTATO.CLCOA60SETOR'
      FixedChar = True
      Size = 60
    end
  end
end
