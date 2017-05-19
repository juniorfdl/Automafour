inherited FormCadastroCidade: TFormCadastroCidade
  Left = -941
  Top = -19
  Caption = 'Cadastro de Cidades'
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
                    FieldName = 'ID'
                    Width = 109
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Width = 414
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SIGLA'
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
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 10
              Top = 4
              Width = 67
              Height = 13
              Caption = 'Codigo IBGE'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 101
              Top = 4
              Width = 14
              Height = 13
              Caption = 'UF'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 132
              Top = 4
              Width = 38
              Height = 13
              Caption = 'Cidade'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 129
              Top = 18
              Width = 424
              Height = 21
              DataField = 'NOME'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 18
              Width = 90
              Height = 21
              DataField = 'ID'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 98
              Top = 18
              Width = 29
              Height = 21
              DataField = 'SIGLA'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnImporta: TMenuItem
      Caption = 'Importa Cidades.csv'
      OnClick = MnImportaClick
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From Cidade Where (%MFiltro)')
    object SQLTemplateID: TStringField
      DisplayLabel = 'IBGE'
      FieldName = 'ID'
      Origin = 'DB.CIDADE.ID'
      Size = 10
    end
    object SQLTemplateNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'DB.CIDADE.NOME'
      Size = 30
    end
    object SQLTemplateSIGLA: TStringField
      DisplayLabel = 'UF'
      FieldName = 'SIGLA'
      Origin = 'DB.CIDADE.SIGLA'
      FixedChar = True
      Size = 2
    end
  end
end
