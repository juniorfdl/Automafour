inherited FormCadastroSubRamo: TFormCadastroSubRamo
  Left = 123
  Top = 147
  Caption = 'SubRamos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 45
            Height = 404
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 331
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'RAMOICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SRAMICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SRAMA30DESCR'
                    Width = 374
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
          inherited PanelMaster: TPanel
            Height = 4
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 10
              Top = 3
              Width = 45
              Height = 13
              Caption = 'C'#243'd.Sub'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 81
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 64
              Height = 21
              DataField = 'SRAMICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 364
              Height = 21
              DataField = 'SRAMA30DESCR'
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
      'Select * From SubRamo Where'
      'RamoIcod = :RamoIcod and '
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RamoICod'
        ParamType = ptUnknown
      end>
    object SQLTemplateRAMOICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Ramo'
      FieldName = 'RAMOICOD'
      Origin = 'DB.SUBRAMO.RAMOICOD'
    end
    object SQLTemplateSRAMICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.SubRamo'
      FieldName = 'SRAMICOD'
      Origin = 'DB.SUBRAMO.SRAMICOD'
      Visible = False
    end
    object SQLTemplateSRAMA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'SRAMA30DESCR'
      Origin = 'DB.SUBRAMO.SRAMA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SUBRAMO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SUBRAMO.REGISTRO'
    end
  end
end
