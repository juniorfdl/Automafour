inherited FormCadastroRamo: TFormCadastroRamo
  Caption = 'Ramos e SubRamos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&3 SubRamos'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 46
            Height = 403
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 330
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'RAMOICOD'
                    Title.Caption = 'C'#243'digo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RAMOA30DESCR'
                    Width = 446
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
              inherited MemoDetalhes: TMemo
                Lines.Strings = (
                  'SUBRAMO')
              end
            end
          end
          inherited PanelMaster: TPanel
            Height = 5
          end
          inherited PanelCodigoDescricao: TPanel
            object Label2: TLabel
              Left = 75
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
            object Label1: TLabel
              Left = 6
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
            object DBEdit1: TDBEdit
              Left = 3
              Top = 16
              Width = 64
              Height = 21
              DataField = 'RAMOICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 71
              Top = 16
              Width = 376
              Height = 21
              DataField = 'RAMOA30DESCR'
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
      'Select * From RAMO Where (%MFiltro)')
    object SQLTemplateRAMOICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Ramo'
      FieldName = 'RAMOICOD'
      Origin = 'DB.RAMO.RAMOICOD'
      Visible = False
    end
    object SQLTemplateRAMOA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'RAMOA30DESCR'
      Origin = 'DB.RAMO.RAMOA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.RAMO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.RAMO.REGISTRO'
    end
  end
  object SQLRamoAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Ramo Where %Descricao')
    Macros = <
      item
        DataType = ftString
        Name = 'Descricao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 472
    Top = 2
    object SQLRamoAuxRAMOICOD: TIntegerField
      FieldName = 'RAMOICOD'
      Origin = 'DB.RAMO.RAMOICOD'
    end
    object SQLRamoAuxRAMOA30DESCR: TStringField
      FieldName = 'RAMOA30DESCR'
      Origin = 'DB.RAMO.RAMOA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
end
