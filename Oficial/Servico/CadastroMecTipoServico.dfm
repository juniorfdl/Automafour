inherited FormCadastroMecTipoServico: TFormCadastroMecTipoServico
  Caption = 'Tipo de Servi'#231'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 118
            Height = 331
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 258
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
          inherited PanelMaster: TPanel
            Top = 77
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 77
            object Label1: TLabel
              Left = 16
              Top = 29
              Width = 24
              Height = 13
              Caption = 'C'#243'd.'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 76
              Top = 29
              Width = 148
              Height = 13
              Caption = 'Tipo de Servi'#231'o Executado'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 16
              Top = 45
              Width = 53
              Height = 21
              Color = clBtnFace
              DataField = 'ORMCTIPOSERVICOID'
              DataSource = DSTemplate
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 45
              Width = 394
              Height = 21
              DataField = 'ORMCA30TIPOSERVICO'
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
      'Select * From ORD_MEC_TIPOSERVICO Where (%MFiltro)')
    Left = 240
    object SQLTemplateORMCTIPOSERVICOID: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Tipo Servi'#231'o'
      FieldName = 'ORMCTIPOSERVICOID'
      Origin = 'DB.ORD_MEC_TIPOSERVICO.ORMCTIPOSERVICOID'
    end
    object SQLTemplateORMCA30TIPOSERVICO: TStringField
      DisplayLabel = 'Descri'#231#227'o Tipo Servi'#231'o'
      FieldName = 'ORMCA30TIPOSERVICO'
      Origin = 'DB.ORD_MEC_TIPOSERVICO.ORMCA30TIPOSERVICO'
      Size = 30
    end
  end
end
