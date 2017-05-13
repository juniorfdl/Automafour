inherited FormCadastroTamanho: TFormCadastroTamanho
  Left = 2
  Top = 36
  Caption = 'Cadastro de Tamanhos'
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
                    FieldName = 'GRTMICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GRTMA5DESCR'
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
            object Label3: TLabel
              Left = 7
              Top = 3
              Width = 61
              Height = 13
              Caption = 'C'#243'd. Grade'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 77
              Top = 3
              Width = 92
              Height = 13
              Caption = 'Descri'#231#227'o Grade'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 6
              Top = 16
              Width = 64
              Height = 21
              DataField = 'GRADICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 74
              Top = 16
              Width = 475
              Height = 21
              DataField = 'GRADA30DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 10
              Top = 4
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
              Left = 80
              Top = 4
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
              Left = 6
              Top = 17
              Width = 64
              Height = 21
              DataField = 'GRTMICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 17
              Width = 197
              Height = 21
              DataField = 'GRTMA5DESCR'
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
      'Select * From GradeTamanho '
      'Where  '
      'GRADICOD=:GRADICOD and '
      '(%MFiltro)'
      ''
      ' ')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateGRADICOD: TIntegerField
      Tag = 1
      FieldName = 'GRADICOD'
      Origin = 'UNITGESTAO_ODBC.GradeTamanho.GRADICOD'
      Visible = False
    end
    object SQLTemplateGRTMICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GRTMICOD'
      Origin = 'UNITGESTAO_ODBC.GradeTamanho.GRTMICOD'
      Visible = False
    end
    object SQLTemplateGRTMA5DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GRTMA5DESCR'
      Origin = 'UNITGESTAO_ODBC.GradeTamanho.GRTMA5DESCR'
      FixedChar = True
      Size = 6
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'UNITGESTAO_ODBC.GradeTamanho.PENDENTE'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'UNITGESTAO_ODBC.GradeTamanho.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Tamanho'
      'set'
      '  TAMAICOD = :TAMAICOD,'
      '  TAMAA5DESCR = :TAMAA5DESCR'
      'where'
      '  TAMAICOD = :OLD_TAMAICOD')
    InsertSQL.Strings = (
      'insert into Tamanho'
      '  (TAMAICOD, TAMAA5DESCR)'
      'values'
      '  (:TAMAICOD, :TAMAA5DESCR)')
    DeleteSQL.Strings = (
      'delete from Tamanho'
      'where'
      '  TAMAICOD = :OLD_TAMAICOD')
  end
end
