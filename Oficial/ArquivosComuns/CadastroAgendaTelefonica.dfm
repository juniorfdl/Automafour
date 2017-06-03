inherited FormCadastroAgendaTelefonica: TFormCadastroAgendaTelefonica
  Caption = 'Agenda Telefonica'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button2: TRxSpeedButton
          Top = 37
        end
        inherited Button3: TRxSpeedButton
          Top = 60
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 209
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'AGFOA60NOME'
                    Width = 324
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGFOA15FONE1'
                    Width = 81
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGFOA15FONE2'
                    Width = 78
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AGFOA60CID'
                    Width = 272
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
                Top = 127
              end
              object Panel4: TPanel
                Left = 0
                Top = 256
                Width = 749
                Height = 85
                Align = alBottom
                Color = 16249066
                TabOrder = 3
                object Label10: TLabel
                  Left = 12
                  Top = 4
                  Width = 52
                  Height = 13
                  Caption = 'Endere'#231'o'
                  FocusControl = DBEdit10
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 329
                  Top = 4
                  Width = 34
                  Height = 13
                  Caption = 'Bairro'
                  FocusControl = DBEdit11
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit10: TDBEdit
                  Left = 8
                  Top = 17
                  Width = 313
                  Height = 21
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  Color = 16249066
                  DataField = 'AGFOA60END'
                  DataSource = DSTemplate
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit11: TDBEdit
                  Left = 325
                  Top = 17
                  Width = 312
                  Height = 21
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  Color = 16249066
                  DataField = 'AGFOA60BAI'
                  DataSource = DSTemplate
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBMemo1: TDBMemo
                  Left = 8
                  Top = 43
                  Width = 630
                  Height = 31
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  Color = 16249066
                  DataField = 'AGFOA254OBS'
                  DataSource = DSTemplate
                  ReadOnly = True
                  ScrollBars = ssVertical
                  TabOrder = 2
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 12
                Top = 4
                Width = 52
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 12
                Top = 43
                Width = 34
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 12
                Top = 86
                Width = 38
                Height = 13
                Caption = 'Cidade'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 12
                Top = 128
                Width = 21
                Height = 13
                Caption = 'Cep'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 127
                Top = 128
                Width = 14
                Height = 13
                Caption = 'UF'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 246
                Top = 128
                Width = 37
                Height = 13
                Caption = 'Fone 1'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 405
                Top = 128
                Width = 37
                Height = 13
                Caption = 'Fone 2'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 10
                Top = 171
                Width = 73
                Height = 13
                Caption = 'Observa'#231#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 8
                Top = 19
                Width = 541
                Height = 21
                DataField = 'AGFOA60END'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit4: TDBEdit
                Left = 8
                Top = 57
                Width = 541
                Height = 21
                DataField = 'AGFOA60BAI'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit5: TDBEdit
                Left = 8
                Top = 100
                Width = 541
                Height = 21
                DataField = 'AGFOA60CID'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit6: TDBEdit
                Left = 8
                Top = 142
                Width = 105
                Height = 21
                DataField = 'AGFOA8CEP'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit7: TDBEdit
                Left = 123
                Top = 142
                Width = 41
                Height = 21
                DataField = 'AGFOA2UF'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit8: TDBEdit
                Left = 242
                Top = 142
                Width = 149
                Height = 21
                DataField = 'AGFOA15FONE1'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit9: TDBEdit
                Left = 401
                Top = 142
                Width = 149
                Height = 21
                DataField = 'AGFOA15FONE2'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object MemoOBS: TDBMemo
                Left = 5
                Top = 186
                Width = 545
                Height = 60
                DataField = 'AGFOA254OBS'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 7
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 10
              Top = 4
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 104
              Top = 4
              Width = 32
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 17
              Width = 88
              Height = 21
              DataField = 'AGFOA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 100
              Top = 17
              Width = 469
              Height = 21
              DataField = 'AGFOA60NOME'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * from AgendaTelef Where (%MFiltro)')
    object SQLTemplateAGFOA13ID: TStringField
      Tag = 2
      FieldName = 'AGFOA13ID'
      Origin = 'DB.AGENDATELEF.AGFOA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      Tag = 1
      FieldName = 'EMPRICOD'
      Origin = 'DB.AGENDATELEF.EMPRICOD'
      Visible = False
    end
    object SQLTemplateAGFOICOD: TIntegerField
      Tag = 2
      FieldName = 'AGFOICOD'
      Origin = 'DB.AGENDATELEF.AGFOICOD'
      Visible = False
    end
    object SQLTemplateAGFOA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'AGFOA60NOME'
      Origin = 'DB.AGENDATELEF.AGFOA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAGFOA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'AGFOA15FONE1'
      Origin = 'DB.AGENDATELEF.AGFOA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateAGFOA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'AGFOA15FONE2'
      Origin = 'DB.AGENDATELEF.AGFOA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateAGFOA60END: TStringField
      FieldName = 'AGFOA60END'
      Origin = 'DB.AGENDATELEF.AGFOA60END'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAGFOA60BAI: TStringField
      FieldName = 'AGFOA60BAI'
      Origin = 'DB.AGENDATELEF.AGFOA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAGFOA60CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'AGFOA60CID'
      Origin = 'DB.AGENDATELEF.AGFOA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateAGFOA8CEP: TStringField
      FieldName = 'AGFOA8CEP'
      Origin = 'DB.AGENDATELEF.AGFOA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateAGFOA2UF: TStringField
      FieldName = 'AGFOA2UF'
      Origin = 'DB.AGENDATELEF.AGFOA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateAGFOA254OBS: TStringField
      FieldName = 'AGFOA254OBS'
      Origin = 'DB.AGENDATELEF.AGFOA254OBS'
      Size = 254
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.AGENDATELEF.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.AGENDATELEF.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
end
