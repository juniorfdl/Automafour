inherited FormCadastroAnimaisAgenda: TFormCadastroAnimaisAgenda
  Caption = 'Agenda de Compromissos'
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
                    FieldName = 'ANAGDDATA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ANAGA200MOTIVO'
                    Width = 500
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
                Left = 8
                Top = 4
                Width = 107
                Height = 13
                Caption = 'Data Compromisso'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 8
                Top = 48
                Width = 77
                Height = 13
                Caption = 'Compromisso'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 8
                Top = 92
                Width = 72
                Height = 13
                Caption = 'Avisar Antes'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 8
                Top = 20
                Width = 238
                Height = 21
                DataField = 'ANAGDDATA'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 8
                Top = 64
                Width = 617
                Height = 21
                DataField = 'ANAGA200MOTIVO'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object ComboOrigem: TRxDBComboBox
                Left = 8
                Top = 106
                Width = 207
                Height = 21
                Style = csDropDownList
                DataField = 'AVISARANTES'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  '  5 Min. Antes'
                  '10 Min. Antes'
                  '15 Min. Antes'
                  '20 Min. Antes'
                  '25 Min. Antes'
                  '30 Min. Antes'
                  '35 Min. Antes'
                  '45 Min. Antes'
                  '50 Min. Antes'
                  '1 Hora Antes'
                  '2 Hora Antes'
                  '3 Hora Antes'
                  '1 Dia Antes'
                  '2 Dias Antes'
                  '3 Dias Antes ')
                ParentFont = False
                TabOrder = 2
                Values.Strings = (
                  '5'
                  '10'
                  '15'
                  '20'
                  '25'
                  '30'
                  '35'
                  '45'
                  '50'
                  '60'
                  '120'
                  '180'
                  '1440'
                  '2880'
                  '4320 '
                  '')
              end
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      
        'Select * From Animais_Agenda Where  ANIICOD = :ANIICOD AND (%MFi' +
        'ltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ANIICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateANAGICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'ID'
      FieldName = 'ANAGICOD'
      Origin = 'DB.ANIMAIS_AGENDA.ANAGICOD'
    end
    object SQLTemplateANIICOD: TIntegerField
      DisplayLabel = 'ID Animal'
      FieldName = 'ANIICOD'
      Origin = 'DB.ANIMAIS_AGENDA.ANIICOD'
    end
    object SQLTemplateANAGDDATA: TDateTimeField
      DisplayLabel = 'Data Compromisso'
      FieldName = 'ANAGDDATA'
      Origin = 'DB.ANIMAIS_AGENDA.ANAGDDATA'
    end
    object SQLTemplateANAGA200MOTIVO: TStringField
      DisplayLabel = 'Compromisso'
      FieldName = 'ANAGA200MOTIVO'
      Origin = 'DB.ANIMAIS_AGENDA.ANAGA200MOTIVO'
      Size = 200
    end
    object SQLTemplateAVISARANTES: TIntegerField
      FieldName = 'AVISARANTES'
    end
  end
end
