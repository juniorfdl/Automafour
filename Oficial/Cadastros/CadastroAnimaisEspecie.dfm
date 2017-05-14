inherited FormCadastroAnimais_especie: TFormCadastroAnimais_especie
  Caption = 'Cadastro de Esp'#233'cies'
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
                    FieldName = 'ESPEICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ESPEA50TIPO'
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
              object Label1: TLabel
                Left = 8
                Top = 8
                Width = 42
                Height = 13
                Caption = 'Esp'#233'cie'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 8
                Top = 24
                Width = 615
                Height = 21
                DataField = 'ESPEA50TIPO'
                DataSource = DSTemplate
                TabOrder = 0
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
      'Select * From ANIMAIS_ESPECIE Where (%MFiltro)')
    object SQLTemplateESPEICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Esp'#233'cie'
      FieldName = 'ESPEICOD'
      Origin = 'DB.ANIMAIS_ESPECIE.ESPEICOD'
    end
    object SQLTemplateESPEA50TIPO: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'ESPEA50TIPO'
      Origin = 'DB.ANIMAIS_ESPECIE.ESPEA50TIPO'
      Size = 50
    end
  end
end
