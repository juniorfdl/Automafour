inherited FormCadastroFornecedorContato: TFormCadastroFornecedorContato
  Left = 196
  Top = 157
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
                    FieldName = 'FOCOICOD'
                    Title.Caption = 'C'#243'd.Contato'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FOCOA60NOME'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FOCOA15FONE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FOCOA15CELULAR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FOCOA60EMAIL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FOCOA60DEPTO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FOCOA60SETOR'
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
                Left = 3
                Top = 2
                Width = 27
                Height = 13
                Caption = 'Fone'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 165
                Top = 2
                Width = 39
                Height = 13
                Caption = 'Celular'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 4
                Top = 40
                Width = 30
                Height = 13
                Caption = 'Email'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 4
                Top = 77
                Width = 83
                Height = 13
                Caption = 'Departamento'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 4
                Top = 115
                Width = 31
                Height = 13
                Caption = 'Setor'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 5
                Top = 152
                Width = 21
                Height = 13
                Caption = 'Obs'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
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
                DataField = 'FOCOA15FONE'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 163
                Top = 16
                Width = 174
                Height = 21
                DataField = 'FOCOA15CELULAR'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 1
                Top = 54
                Width = 429
                Height = 21
                CharCase = ecLowerCase
                DataField = 'FOCOA60EMAIL'
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
                DataField = 'FOCOA60DEPTO'
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
                DataField = 'FOCOA60SETOR'
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
                DataField = 'FOCOA254OBS'
                DataSource = DSTemplate
                MaxLength = 254
                TabOrder = 5
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 6
              Top = 3
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
              Left = 73
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
            object DBEdit1: TDBEdit
              Left = 3
              Top = 16
              Width = 64
              Height = 21
              DataField = 'FOCOICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 70
              Top = 16
              Width = 364
              Height = 21
              DataField = 'FOCOA60NOME'
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
      'Select * From FORNECEDORCONTATO '
      'Where '
      '  FORNICOD = :FORNICOD and  (%MFiltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FORNICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDORCONTATO.FORNICOD'
    end
    object SQLTemplateFOCOICOD: TIntegerField
      Tag = 1
      FieldName = 'FOCOICOD'
      Origin = 'DB.FORNECEDORCONTATO.FOCOICOD'
      Visible = False
    end
    object SQLTemplateFOCOA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FOCOA60NOME'
      Origin = 'DB.FORNECEDORCONTATO.FOCOA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFOCOA15FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'FOCOA15FONE'
      Origin = 'DB.FORNECEDORCONTATO.FOCOA15FONE'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateFOCOA15CELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'FOCOA15CELULAR'
      Origin = 'DB.FORNECEDORCONTATO.FOCOA15CELULAR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateFOCOA60EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'FOCOA60EMAIL'
      Origin = 'DB.FORNECEDORCONTATO.FOCOA60EMAIL'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FORNECEDORCONTATO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FORNECEDORCONTATO.REGISTRO'
    end
    object SQLTemplateFOCOCENVIAMALA: TStringField
      FieldName = 'FOCOCENVIAMALA'
      Origin = 'DB.FORNECEDORCONTATO.FOCOCENVIAMALA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFOCOA254OBS: TStringField
      FieldName = 'FOCOA254OBS'
      Origin = 'DB.FORNECEDORCONTATO.FOCOA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateFOCOA60DEPTO: TStringField
      DisplayLabel = 'Depto'
      FieldName = 'FOCOA60DEPTO'
      Origin = 'DB.FORNECEDORCONTATO.FOCOA60DEPTO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateFOCOA60SETOR: TStringField
      DisplayLabel = 'Setor'
      FieldName = 'FOCOA60SETOR'
      Origin = 'DB.FORNECEDORCONTATO.FOCOA60SETOR'
      FixedChar = True
      Size = 60
    end
  end
end
