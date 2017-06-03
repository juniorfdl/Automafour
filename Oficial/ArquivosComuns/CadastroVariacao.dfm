inherited FormCadastroVariacao: TFormCadastroVariacao
  Left = 129
  Top = 140
  Caption = 'Varia'#231#245'es'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 88
            Height = 361
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 288
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'VARIICOD'
                    Width = 43
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VARIA60DESCR'
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
            Top = 0
            Height = 47
            object Label3: TLabel
              Left = 9
              Top = 7
              Width = 82
              Height = 13
              Caption = 'C'#243'd. SubGrupo'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 108
              Top = 7
              Width = 113
              Height = 13
              Caption = 'Descri'#231#227'o SubGrupo'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 7
              Top = 20
              Width = 92
              Height = 21
              DataField = 'SUBGICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 104
              Top = 20
              Width = 373
              Height = 21
              DataField = 'SUBGA60DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 47
            object Label5: TLabel
              Left = 7
              Top = 2
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 102
              Top = 2
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit5: TDBEdit
              Left = 6
              Top = 16
              Width = 90
              Height = 21
              DataField = 'VARIICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit6: TDBEdit
              Left = 101
              Top = 16
              Width = 372
              Height = 21
              DataField = 'VARIA60DESCR'
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
      'Select * From Variacao '
      'Where '
      'GrupICod=:GrupICod and '
      'SubgICod=:SubgICod and (%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GrupICod'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'SubgICod'
        ParamType = ptUnknown
      end>
    object SQLTemplateGRUPICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Grupo'
      FieldName = 'GRUPICOD'
      Origin = 'DB.VARIACAO.GRUPICOD'
    end
    object SQLTemplateSUBGICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Subgrupo'
      FieldName = 'SUBGICOD'
      Origin = 'DB.VARIACAO.SUBGICOD'
    end
    object SQLTemplateVARIICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'VARIICOD'
      Origin = 'DB.VARIACAO.VARIICOD'
      Visible = False
    end
    object SQLTemplateVARIA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'VARIA60DESCR'
      Origin = 'DB.VARIACAO.VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VARIACAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VARIACAO.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Variacao'
      'set'
      '  GRUPICOD = :GRUPICOD,'
      '  SUBGICOD = :SUBGICOD,'
      '  VARIICOD = :VARIICOD,'
      '  VARIA60DESCR = :VARIA60DESCR'
      'where'
      '  GRUPICOD = :OLD_GRUPICOD and'
      '  SUBGICOD = :OLD_SUBGICOD and'
      '  VARIICOD = :OLD_VARIICOD')
    InsertSQL.Strings = (
      'insert into Variacao'
      '  (GRUPICOD, SUBGICOD, VARIICOD, VARIA60DESCR)'
      'values'
      '  (:GRUPICOD, :SUBGICOD, :VARIICOD, :VARIA60DESCR)')
    DeleteSQL.Strings = (
      'delete from Variacao'
      'where'
      '  GRUPICOD = :OLD_GRUPICOD and'
      '  SUBGICOD = :OLD_SUBGICOD and'
      '  VARIICOD = :OLD_VARIICOD')
  end
end
