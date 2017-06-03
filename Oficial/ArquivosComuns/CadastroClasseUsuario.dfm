inherited FormCadastroClasseUsuario: TFormCadastroClasseUsuario
  Left = 22
  Top = 34
  Caption = 'Usu'#225'rios'
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
                    FieldName = 'USUAICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UsuarioLookup'
                    Title.Caption = ' '
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
            object Label4: TLabel
              Left = 11
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 78
              Top = 4
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit4: TDBEdit
              Left = 8
              Top = 18
              Width = 64
              Height = 21
              DataField = 'CLASSICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit5: TDBEdit
              Left = 75
              Top = 18
              Width = 364
              Height = 21
              DataField = 'CLASSA60DESCRICAO'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 10
              Top = 3
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnUsuario: TSpeedButton
              Left = 69
              Top = 16
              Width = 23
              Height = 22
              Cursor = crHandPoint
              Hint = 'Cadastro de Usu'#225'rios (Tecle F2)'
              Flat = True
              Glyph.Data = {
                F6000000424DF60000000000000076000000280000000E000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777700
                77007777777774EC0700770000004ECC000077877774ECC77000778FFF4ECC7F
                70007780087CC7FF7000787E70887FFF70008FE7E707FFFF70008EFE7E0FFFFF
                70008FEFE70FFFFF700078FEF0FFFFFF700077880FFFFFFF7000778FFFFFFF00
                0000778FFFFFFF0F8700778FFFFFFF0877007788888888877700}
              OnClick = BtnUsuarioClick
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 16
              Width = 64
              Height = 21
              DataField = 'USUAICOD'
              DataSource = DSTemplate
              TabOrder = 0
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit2: TDBEdit
              Left = 93
              Top = 16
              Width = 364
              Height = 21
              DataField = 'UsuarioLookup'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From ClasseUsuario'
      'Where'
      'CLASSICOD= :CLASSICOD AND'
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLASSICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplateUSUAICOD: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAICOD'
      Origin = 'DB.CLASSEUSUARIO.USUAICOD'
    end
    object SQLTemplateCLASSICOD: TIntegerField
      FieldName = 'CLASSICOD'
      Origin = 'DB.CLASSEUSUARIO.CLASSICOD'
      Visible = False
    end
    object SQLTemplateUsuarioLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'UsuarioLookup'
      LookupDataSet = SQLUsuario
      LookupKeyFields = 'USUAICOD'
      LookupResultField = 'USUAA60LOGIN'
      KeyFields = 'USUAICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLASSEUSUARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLASSEUSUARIO.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update ClasseUsuario'
      'set'
      '  CLASSICOD = :CLASSICOD,'
      '  USUAICOD = :USUAICOD'
      'where'
      '  CLASSICOD = :OLD_CLASSICOD and'
      '  USUAICOD = :OLD_USUAICOD')
    InsertSQL.Strings = (
      'insert into ClasseUsuario'
      '  (CLASSICOD, USUAICOD)'
      'values'
      '  (:CLASSICOD, :USUAICOD)')
    DeleteSQL.Strings = (
      'delete from ClasseUsuario'
      'where'
      '  CLASSICOD = :OLD_CLASSICOD and'
      '  USUAICOD = :OLD_USUAICOD')
  end
  object SQLUsuario: TTable
    DatabaseName = 'DB'
    TableName = 'USUARIO'
    Left = 16
    Top = 168
    object SQLUsuarioUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Required = True
    end
    object SQLUsuarioUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
end
