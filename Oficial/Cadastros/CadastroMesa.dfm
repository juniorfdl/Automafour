inherited FormCadastroMesa: TFormCadastroMesa
  Left = 187
  Top = 76
  Caption = 'Cadastro de Mesas'
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
                    FieldName = 'MESAICOD'
                    Title.Caption = 'Mesa'
                    Width = 58
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MESAICAPAC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDICOD'
                    Title.Caption = 'Garcom Responsavel'
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
              Left = 14
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
              Left = 79
              Top = 3
              Width = 65
              Height = 13
              Caption = 'Capacidade'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 150
              Top = 20
              Width = 46
              Height = 13
              Caption = 'Pessoas'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 253
              Top = 4
              Width = 170
              Height = 13
              Caption = 'C'#243'digo Vendedor Responsavel'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 10
              Top = 16
              Width = 64
              Height = 21
              DataField = 'MESAICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 71
              Height = 21
              DataField = 'MESAICAPAC'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 300
              Top = 17
              Width = 64
              Height = 21
              DataField = 'VENDICOD'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Mesa Where (%MFiltro)')
    object SQLTemplateMESAICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Cod.Mesa'
      FieldName = 'MESAICOD'
      Origin = 'DB.MESA.MESAICOD'
      Visible = False
    end
    object SQLTemplateMESAICAPAC: TIntegerField
      DisplayLabel = 'Capacidade'
      FieldName = 'MESAICAPAC'
      Origin = 'DB.MESA.MESAICAPAC'
    end
    object SQLTemplateMESACSTATUS: TStringField
      FieldName = 'MESACSTATUS'
      Origin = 'DB.MESA.MESACSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateMESADABERTURA: TDateTimeField
      FieldName = 'MESADABERTURA'
      Origin = 'DB.MESA.MESADABERTURA'
    end
    object SQLTemplateMESADFECHAMENTO: TDateTimeField
      FieldName = 'MESADFECHAMENTO'
      Origin = 'DB.MESA.MESADFECHAMENTO'
    end
    object SQLTemplateMESADULTPED: TDateTimeField
      FieldName = 'MESADULTPED'
      Origin = 'DB.MESA.MESADULTPED'
    end
    object SQLTemplateVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.MESA.VENDICOD'
    end
    object SQLTemplateMESAN3VLRTOTAL: TFloatField
      FieldName = 'MESAN3VLRTOTAL'
      Origin = 'DB.MESA.MESAN3VLRTOTAL'
    end
  end
end
