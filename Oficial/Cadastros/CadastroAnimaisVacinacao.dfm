inherited FormCadastroAnimaisVacinas: TFormCadastroAnimaisVacinas
  Caption = 'Carteirinha de Vacina'#231#227'o'
  ClientHeight = 502
  ClientWidth = 959
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 959
    Height = 502
    inherited PanelCabecalho: TPanel
      Width = 957
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 957
        inherited Panel1: TPanel
          Width = 955
          inherited PanelNavigator: TPanel
            Width = 955
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 955
            end
          end
          inherited PanelLeft: TPanel
            Left = 498
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 957
      Height = 428
      inherited PanelBarra: TPanel
        Height = 428
      end
      inherited PanelFundoDados: TPanel
        Width = 827
        Height = 428
        inherited Panel5: TPanel
          Width = 827
          Height = 428
          inherited PagePrincipal: TPageControl
            Width = 827
            Height = 346
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 819
                Height = 273
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ANVCDDATA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ANVCA100VACINA'
                    Width = 400
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ANVCA60VETERINARIO'
                    Width = 400
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 819
                inherited PanelBetween: TPanel
                  Width = 425
                  inherited AdvPanel1: TAdvPanel
                    Width = 425
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 425
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 425
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
              object Label1: TLabel
                Left = 16
                Top = 8
                Width = 67
                Height = 13
                Caption = 'Data Vacina'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 16
                Top = 52
                Width = 88
                Height = 13
                Caption = 'Vacina Aplicada'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 16
                Top = 96
                Width = 63
                Height = 13
                Caption = 'Veterin'#225'rio'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 16
                Top = 24
                Width = 238
                Height = 21
                DataField = 'ANVCDDATA'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 16
                Top = 68
                Width = 785
                Height = 21
                DataField = 'ANVCA100VACINA'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 16
                Top = 112
                Width = 784
                Height = 21
                DataField = 'ANVCA60VETERINARIO'
                DataSource = DSTemplate
                TabOrder = 2
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 827
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 827
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      
        'Select * From Animais_vacinacao Where ANIICOD = :ANIICOD AND (%M' +
        'Filtro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ANIICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateANVCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'ID'
      FieldName = 'ANVCICOD'
      Origin = 'DB.ANIMAIS_VACINACAO.ANVCICOD'
    end
    object SQLTemplateANIICOD: TIntegerField
      DisplayLabel = 'ID Animal'
      FieldName = 'ANIICOD'
      Origin = 'DB.ANIMAIS_VACINACAO.ANIICOD'
    end
    object SQLTemplateANVCDDATA: TDateTimeField
      DisplayLabel = 'Data Vacina'
      FieldName = 'ANVCDDATA'
      Origin = 'DB.ANIMAIS_VACINACAO.ANVCDDATA'
    end
    object SQLTemplateANVCA100VACINA: TStringField
      DisplayLabel = 'Vacina Aplicada'
      FieldName = 'ANVCA100VACINA'
      Origin = 'DB.ANIMAIS_VACINACAO.ANVCA100VACINA'
      Size = 100
    end
    object SQLTemplateANVCA60VETERINARIO: TStringField
      DisplayLabel = 'Veterin'#225'rio'
      FieldName = 'ANVCA60VETERINARIO'
      Origin = 'DB.ANIMAIS_VACINACAO.ANVCA60VETERINARIO'
      Size = 60
    end
  end
end
