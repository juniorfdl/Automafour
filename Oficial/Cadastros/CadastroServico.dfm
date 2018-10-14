inherited FormCadastroServico: TFormCadastroServico
  Left = 285
  Top = 86
  Caption = 'Cadastro Servico'
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
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label1: TLabel
                Left = 16
                Top = 8
                Width = 33
                Height = 13
                Caption = 'C'#243'digo'
                FocusControl = DBEdit1
              end
              object Label2: TLabel
                Left = 16
                Top = 48
                Width = 27
                Height = 13
                Caption = 'Nome'
                FocusControl = DBEdit2
              end
              object Label3: TLabel
                Left = 16
                Top = 88
                Width = 84
                Height = 13
                Caption = 'Descri'#231#227'o Servi'#231'o'
              end
              object DBEdit1: TDBEdit
                Left = 16
                Top = 24
                Width = 134
                Height = 21
                DataField = 'ID_SERVICO'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 16
                Top = 64
                Width = 654
                Height = 21
                DataField = 'NOME_SERVICO'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBMemo1: TDBMemo
                Left = 16
                Top = 104
                Width = 657
                Height = 89
                DataField = 'DESCRICAO_SERVICO'
                DataSource = DSTemplate
                TabOrder = 2
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From SERVICO Where (%MFiltro)')
    object SQLTemplateID_SERVICO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_SERVICO'
      Origin = 'DB.SERVICO.ID_SERVICO'
    end
    object SQLTemplateNOME_SERVICO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_SERVICO'
      Origin = 'DB.SERVICO.NOME_SERVICO'
      Size = 50
    end
    object SQLTemplateDESCRICAO_SERVICO: TBlobField
      FieldName = 'DESCRICAO_SERVICO'
      Origin = 'DB.SERVICO.DESCRICAO_SERVICO'
      Size = 1
    end
  end
end
