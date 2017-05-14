inherited FormCadastroAnimaisRaca: TFormCadastroAnimaisRaca
  Caption = 'Cadastro de Ra'#231'as'
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
                    FieldName = 'RACAICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RACAA50RACA'
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
              object Label2: TLabel
                Left = 16
                Top = 8
                Width = 28
                Height = 13
                Caption = 'Ra'#231'a'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit2: TDBEdit
                Left = 16
                Top = 24
                Width = 654
                Height = 21
                DataField = 'RACAA50RACA'
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
      'Select * From ANIMAIS_RACA  Where (%MFiltro)')
    object SQLTemplateRACAICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd. Ra'#231'a'
      FieldName = 'RACAICOD'
      Origin = 'DB.ANIMAIS_RACA.RACAICOD'
    end
    object SQLTemplateRACAA50RACA: TStringField
      DisplayLabel = 'Ra'#231'a'
      FieldName = 'RACAA50RACA'
      Origin = 'DB.ANIMAIS_RACA.RACAA50RACA'
      Size = 50
    end
  end
end
