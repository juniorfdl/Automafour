inherited FormCadastroBanco: TFormCadastroBanco
  Left = 3
  Top = 36
  Caption = 'Cadastro de Bancos'
  ClientHeight = 484
  ClientWidth = 793
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 793
    Height = 484
    inherited PanelCabecalho: TPanel
      Width = 791
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 791
        inherited Panel1: TPanel
          Width = 789
          inherited PanelNavigator: TPanel
            Width = 789
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 789
            end
          end
          inherited PanelLeft: TPanel
            Left = 332
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 791
      Height = 410
      inherited PanelBarra: TPanel
        Height = 410
      end
      inherited PanelFundoDados: TPanel
        Width = 661
        Height = 410
        inherited Panel5: TPanel
          Width = 661
          Height = 410
          inherited PagePrincipal: TPageControl
            Width = 661
            Height = 328
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 653
                Height = 255
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'BANCA5COD'
                    Width = 72
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BANCA60NOME'
                    Width = 555
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 653
                inherited PanelBetween: TPanel
                  Width = 259
                  inherited AdvPanel1: TAdvPanel
                    Width = 259
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 259
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 259
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
            Width = 661
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 661
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
              Top = 18
              Width = 65
              Height = 21
              DataField = 'BANCA5COD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 18
              Width = 541
              Height = 21
              DataField = 'BANCA60NOME'
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
      'Select * From BANCO Where (%MFiltro)')
    object SQLTemplateBANCA5COD: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'digo'
      FieldName = 'BANCA5COD'
      Origin = 'DB.BANCO.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateBANCA60NOME: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'BANCA60NOME'
      Origin = 'DB.BANCO.BANCA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.BANCO.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.BANCO.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update BANCO'
      'set'
      '  BANCA5COD = :BANCA5COD,'
      '  BANCA60NOME = :BANCA60NOME,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  BANCA5COD = :OLD_BANCA5COD')
    InsertSQL.Strings = (
      'insert into Banco'
      '  (BANCA5COD, BANCA60NOME, PENDENTE, REGISTRO)'
      'values'
      '  (:BANCA5COD, :BANCA60NOME, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from BANCO'
      'where'
      '  BANCA5COD = :OLD_BANCA5COD')
  end
end
