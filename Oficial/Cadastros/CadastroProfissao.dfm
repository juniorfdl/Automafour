inherited FormCadastroProfissao: TFormCadastroProfissao
  Left = 213
  Top = 135
  Caption = 'Profiss'#245'es/Atividades'
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
                    FieldName = 'PROFICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PROFA60DESCR'
                    Width = 564
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
            object DBEdit1: TDBEdit
              Left = 4
              Top = 16
              Width = 64
              Height = 21
              DataField = 'PROFICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 72
              Top = 16
              Width = 364
              Height = 21
              DataField = 'PROFA60DESCR'
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
      'Select * From PROFISSAO Where (%MFiltro)')
    object SQLTemplatePROFICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PROFICOD'
      Origin = 'DB.PROFISSAO.PROFICOD'
      Visible = False
    end
    object SQLTemplatePROFA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PROFA60DESCR'
      Origin = 'DB.PROFISSAO.PROFA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PROFISSAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PROFISSAO.REGISTRO'
    end
  end
  object SQLProfissaoAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PROFISSAO Where %Descricao')
    Macros = <
      item
        DataType = ftString
        Name = 'Descricao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 472
    Top = 2
    object SQLProfissaoAuxPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.PROFISSAO.PROFICOD'
    end
    object SQLProfissaoAuxPROFA60DESCR: TStringField
      FieldName = 'PROFA60DESCR'
      Origin = 'DB.PROFISSAO.PROFA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
