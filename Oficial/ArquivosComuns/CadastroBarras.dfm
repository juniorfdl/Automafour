inherited FormCadastroBarras: TFormCadastroBarras
  Caption = ''
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
                    FieldName = 'PRBAA15BARRAS'
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
            object Label2: TLabel
              Left = 12
              Top = 4
              Width = 95
              Height = 13
              Caption = 'Codigo de Barras'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label112: TLabel
              Left = 204
              Top = 4
              Width = 44
              Height = 13
              Caption = 'Imp.Etq'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 10
              Top = 17
              Width = 184
              Height = 21
              DataField = 'PRBAA15BARRAS'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object ComboImpEtqBarras: TRxDBComboBox
              Left = 201
              Top = 17
              Width = 69
              Height = 21
              Style = csDropDownList
              DataField = 'PRODCIMPETIQCDBAR'
              DataSource = DSTemplate
              EnableValues = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentFont = False
              TabOrder = 1
              Values.Strings = (
                'S'
                'N')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From PRODUTOBARRAS'
      'Where   '
      '  PRODICOD = :PRODICOD and'
      '  (%MFiltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplatePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOBARRAS.PRODICOD'
    end
    object SQLTemplatePRBAA15BARRAS: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Cd.Barras'
      FieldName = 'PRBAA15BARRAS'
      Origin = 'DB.PRODUTOBARRAS.PRBAA15BARRAS'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePRODCIMPETIQCDBAR: TStringField
      FieldName = 'PRODCIMPETIQCDBAR'
      Origin = 'DB.PRODUTOBARRAS.PRODCIMPETIQCDBAR'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOBARRAS.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOBARRAS.REGISTRO'
    end
  end
  object SQLBarrasPdvs: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from PRODUTOBARRASPDVS'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 570
    Top = 1
  end
end
