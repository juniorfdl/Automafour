inherited FormCadastroCor: TFormCadastroCor
  Left = 194
  Top = 105
  Caption = 'Cadastro de Cores'
  ClientHeight = 509
  ClientWidth = 752
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 752
    Height = 509
    inherited PanelCabecalho: TPanel
      Width = 750
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 750
        inherited Panel1: TPanel
          Width = 748
          inherited PanelNavigator: TPanel
            Width = 748
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 748
            end
          end
          inherited PanelLeft: TPanel
            Left = 291
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 750
      Height = 435
      inherited PanelBarra: TPanel
        Height = 435
      end
      inherited PanelFundoDados: TPanel
        Width = 620
        Height = 435
        inherited Panel5: TPanel
          Width = 620
          Height = 435
          inherited PagePrincipal: TPageControl
            Width = 620
            Height = 353
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 612
                Height = 280
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CORICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CORA30DESCR'
                    Width = 328
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 612
                inherited PanelBetween: TPanel
                  Width = 218
                  inherited AdvPanel1: TAdvPanel
                    Width = 218
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 218
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 218
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
            Width = 620
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 620
            object Label1: TLabel
              Left = 8
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
              Left = 78
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
              Left = 6
              Top = 16
              Width = 64
              Height = 21
              DataField = 'CORICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 257
              Height = 21
              DataField = 'CORA30DESCR'
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
      'Select * From Cor Where (%MFiltro)')
    object SQLTemplateCORICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
      Visible = False
    end
    object SQLTemplateCORA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.COR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.COR.REGISTRO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Cor'
      'set'
      '  CORICOD = :CORICOD,'
      '  CORA30DESCR = :CORA30DESCR,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  CORICOD = :OLD_CORICOD')
    InsertSQL.Strings = (
      'insert into Cor'
      '  (CORICOD, CORA30DESCR, PENDENTE, REGISTRO)'
      'values'
      '  (:CORICOD, :CORA30DESCR, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from Cor'
      'where'
      '  CORICOD = :OLD_CORICOD')
  end
  object SQLCorAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from COR Where %Descricao')
    Macros = <
      item
        DataType = ftString
        Name = 'Descricao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 472
    Top = 2
    object SQLCorAuxCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorAuxCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
end
