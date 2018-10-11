inherited FormCadastroSabores: TFormCadastroSabores
  Left = 338
  Top = 88
  Caption = 'Cadastro de Sabores'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
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
              Left = 72
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
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
              DataField = 'ID_SABOR'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 69
              Top = 16
              Width = 364
              Height = 21
              DataField = 'DESCRICAO'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From SABORES Where (%MFiltro)')
    object SQLTemplateID_SABOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_SABOR'
      Origin = 'DB.SABORES.ID_SABOR'
    end
    object SQLTemplateDESCRICAO: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'DESCRICAO'
      Origin = 'DB.SABORES.DESCRICAO'
      Size = 100
    end
  end
  object SQLSabores: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from SABORES Where %Descricao')
    Macros = <
      item
        DataType = ftString
        Name = 'Descricao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 484
    object SQLSaboresID_SABOR: TIntegerField
      FieldName = 'ID_SABOR'
      Origin = 'DB.SABORES.ID_SABOR'
    end
    object SQLSaboresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DB.SABORES.DESCRICAO'
      Size = 100
    end
  end
end
