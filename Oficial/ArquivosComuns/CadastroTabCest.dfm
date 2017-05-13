inherited FormCadastroTabCEST: TFormCadastroTabCEST
  Caption = 'Tabela CEST'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&3 Importa Tab .csv'
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CEST'
                    Width = 83
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NCM'
                    Width = 76
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Width = 419
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PENDENTE'
                    Title.Caption = 'Pendente'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Title.Caption = 'Registro'
                    Width = 88
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
                Left = 10
                Top = 0
                Width = 82
                Height = 13
                Caption = 'Descri'#231#227'o NCM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBMemoDescricao: TDBMemo
                Left = 7
                Top = 13
                Width = 606
                Height = 55
                BevelWidth = 0
                DataField = 'DESCRICAO'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label2: TLabel
              Left = 15
              Top = 3
              Width = 68
              Height = 13
              Caption = 'Codigo CEST'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 130
              Top = 3
              Width = 65
              Height = 13
              Caption = 'Codigo NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 11
              Top = 17
              Width = 109
              Height = 21
              DataField = 'CEST'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit1: TDBEdit
              Left = 126
              Top = 17
              Width = 109
              Height = 21
              DataField = 'NCM'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object btImportarTabelaCestcsvdapastaGestao: TMenuItem
      Caption = 'Importar Tabela Cest.csv da pasta Gestao'
      OnClick = Button3Click
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From Cestncm Where (%MFiltro)')
    object SQLTemplateCEST: TStringField
      DisplayLabel = 'Codigo CEST'
      FieldName = 'CEST'
      Origin = 'DB.CESTNCM.CEST'
      Size = 10
    end
    object SQLTemplateNCM: TStringField
      DisplayLabel = 'Codigo NCM'
      FieldName = 'NCM'
      Origin = 'DB.CESTNCM.NCM'
      Size = 10
    end
    object SQLTemplateDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DB.CESTNCM.DESCRICAO'
      Size = 100
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CESTNCM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CESTNCM.REGISTRO'
    end
  end
end
