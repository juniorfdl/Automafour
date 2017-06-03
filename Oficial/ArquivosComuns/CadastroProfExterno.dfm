inherited FormCadastroProfExterno: TFormCadastroProfExterno
  Caption = 'Cadastro de Profissionais'
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
                    FieldName = 'PROFA60NOME'
                    Width = 293
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PROFA15FONE1'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PROFA15FONE2'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PROFA60CATEG'
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
              object Label10: TLabel
                Left = 9
                Top = 7
                Width = 37
                Height = 13
                Caption = 'Fone 1'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 140
                Top = 7
                Width = 37
                Height = 13
                Caption = 'Fone 2'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 9
                Top = 93
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
              object Label40: TLabel
                Left = 7
                Top = 50
                Width = 149
                Height = 13
                Caption = 'Especialidades/Categorias'
                FocusControl = DBEdit19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 7
                Top = 191
                Width = 72
                Height = 13
                Caption = 'Cod.Internet'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit6: TDBEdit
                Left = 6
                Top = 20
                Width = 124
                Height = 21
                DataField = 'PROFA15FONE1'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit8: TDBEdit
                Left = 137
                Top = 20
                Width = 134
                Height = 21
                DataField = 'PROFA15FONE2'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBMemo1: TDBMemo
                Left = 4
                Top = 107
                Width = 611
                Height = 78
                BevelWidth = 0
                DataField = 'PROFA200OBS'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 3
              end
              object DBEdit19: TDBEdit
                Left = 5
                Top = 64
                Width = 608
                Height = 21
                DataField = 'PROFA60CATEG'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit3: TDBEdit
                Left = 4
                Top = 204
                Width = 134
                Height = 21
                DataField = 'PROFICODINTERNET'
                DataSource = DSTemplate
                TabOrder = 4
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 9
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
              Left = 99
              Top = 3
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
              Top = 16
              Width = 85
              Height = 21
              DataField = 'PROFA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 94
              Top = 16
              Width = 383
              Height = 21
              DataField = 'PROFA60NOME'
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
      'Select * From Profissional Where (%MFiltro)')
    object SQLTemplatePROFA13ID: TStringField
      Tag = 2
      FieldName = 'PROFA13ID'
      Origin = 'DB.PROFISSIONAL.PROFA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PROFISSIONAL.EMPRICOD'
      Visible = False
    end
    object SQLTemplatePROFICOD: TIntegerField
      Tag = 1
      FieldName = 'PROFICOD'
      Origin = 'DB.PROFISSIONAL.PROFICOD'
      Visible = False
    end
    object SQLTemplatePROFA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'PROFA60NOME'
      Origin = 'DB.PROFISSIONAL.PROFA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePROFA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'PROFA15FONE1'
      Origin = 'DB.PROFISSIONAL.PROFA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePROFA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'PROFA15FONE2'
      Origin = 'DB.PROFISSIONAL.PROFA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePROFA60CATEG: TStringField
      DisplayLabel = 'Especialidade'
      FieldName = 'PROFA60CATEG'
      Origin = 'DB.PROFISSIONAL.PROFA60CATEG'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePROFA200OBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'PROFA200OBS'
      Origin = 'DB.PROFISSIONAL.PROFA200OBS'
      FixedChar = True
      Size = 200
    end
    object SQLTemplatePROFICODINTERNET: TIntegerField
      DisplayLabel = 'Cod.Internet'
      FieldName = 'PROFICODINTERNET'
      Origin = 'DB.PROFISSIONAL.PROFICODINTERNET'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PROFISSIONAL.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PROFISSIONAL.REGISTRO'
    end
  end
end
