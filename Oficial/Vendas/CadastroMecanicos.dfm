inherited FormCadastroMecanicos: TFormCadastroMecanicos
  Caption = 'Cadastro Mec'#226'nicos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
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
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 7
              Top = 4
              Width = 80
              Height = 13
              Caption = 'C'#243'd. Mec'#226'nico'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 148
              Top = 4
              Width = 105
              Height = 13
              Caption = 'Nome do Mec'#226'nico'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 20
              Width = 130
              Height = 21
              Color = clInactiveBorder
              DataField = 'IDMECANICO'
              DataSource = DSTemplate
              Enabled = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 148
              Top = 20
              Width = 465
              Height = 21
              DataField = 'ORDMECA40NOME'
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
      'Select * From ORD_MECANICOS Where (%MFiltro)')
    object SQLTemplateIDMECANICO: TIntegerField
      Tag = 1
      DisplayLabel = 'ID Mec'#226'nico'
      FieldName = 'IDMECANICO'
      Origin = 'DB.ORD_MECANICOS.IDMECANICO'
    end
    object SQLTemplateORDMECA40NOME: TStringField
      DisplayLabel = 'Nome do Mec'#226'nico'
      FieldName = 'ORDMECA40NOME'
      Origin = 'DB.ORD_MECANICOS.ORDMECA40NOME'
      Size = 40
    end
  end
end
