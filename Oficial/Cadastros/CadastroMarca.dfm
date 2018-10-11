inherited FormCadastroMarca: TFormCadastroMarca
  Left = 310
  Top = 109
  Caption = 'Cadastro de Marcas'
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
                    FieldName = 'MARCICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MARCA60DESCR'
                    Width = 321
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
              Left = 72
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
              Left = 3
              Top = 16
              Width = 64
              Height = 21
              DataField = 'MARCICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 69
              Top = 16
              Width = 364
              Height = 21
              DataField = 'MARCA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBCheckBox3: TDBCheckBox
              Left = 447
              Top = 18
              Width = 124
              Height = 17
              Caption = 'Listar nos Mobiles '
              DataField = 'LISTARMOBILE'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'select * from MARCA where (%MFiltro)')
    object SQLTemplateMARCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'MARCICOD'
      Origin = 'DB.MARCA.MARCICOD'
      Visible = False
    end
    object SQLTemplateMARCA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MARCA60DESCR'
      Origin = 'DB.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateLISTARMOBILE: TStringField
      FieldName = 'LISTARMOBILE'
      Origin = 'DB.MARCA.LISTARMOBILE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.MARCA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.MARCA.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update MARCA'
      'set'
      '  MARCICOD = :MARCICOD,'
      '  MARCA60DESCR = :MARCA60DESCR,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  MARCICOD = :OLD_MARCICOD')
    InsertSQL.Strings = (
      'insert into MARCA'
      '  (MARCICOD, MARCA60DESCR, PENDENTE, REGISTRO)'
      'values'
      '  (:MARCICOD, :MARCA60DESCR, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from MARCA'
      'where'
      '  MARCICOD = :OLD_MARCICOD')
  end
  object SQLMarcaAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from MARCA Where %Descricao')
    Macros = <
      item
        DataType = ftString
        Name = 'Descricao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 472
    Top = 2
    object SQLMarcaAuxMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.MARCA.MARCICOD'
    end
    object SQLMarcaAuxMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'DB.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
