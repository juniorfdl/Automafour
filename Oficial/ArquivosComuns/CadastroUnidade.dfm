inherited FormCadastroUnidade: TFormCadastroUnidade
  Left = 332
  Top = 140
  Caption = 'Cadastro de Unidades'
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
                    FieldName = 'UNIDICOD'
                    Width = 42
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UNIDA5DESCR'
                    Width = 38
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UNIDA15DESCR'
                    Width = 409
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UNIDN3FATORCONV'
                    Title.Caption = 'Fator Convers'#227'o'
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
              object Label5: TLabel
                Left = 16
                Top = 61
                Width = 328
                Height = 39
                Caption = 
                  'Obs.: O campo Fator Conversao de Estoque, serve para  multiplica' +
                  'r '#13#10'a Capacidade de Embalagens X Quantidade Comprada, '#13#10'na hora ' +
                  'de lan'#231'ar a Nota de Compra! Conforme layout SPED Fiscal!'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBCheckFrac: TDBCheckBox
                Left = 11
                Top = 10
                Width = 302
                Height = 17
                Hint = 'Substitui'#231#227'o Tribut'#225'ria'
                Caption = 'Permite Venda com Quantidade Fracionada '
                DataField = 'UNIDCFRAC'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
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
              Left = 80
              Top = 3
              Width = 27
              Height = 13
              Caption = 'Sigla'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 139
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 404
              Top = 3
              Width = 112
              Height = 13
              Caption = 'Fator Conv. Estoque'
              FocusControl = DBEdit3
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
              DataField = 'UNIDICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 54
              Height = 21
              DataField = 'UNIDA5DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 136
              Top = 16
              Width = 259
              Height = 21
              DataField = 'UNIDA15DESCR'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBMgFixaVarejo: TEvDBNumEdit
              Left = 401
              Top = 16
              Width = 120
              Height = 21
              AutoHideCalculator = False
              DataField = 'UNIDN3FATORCONV'
              DataSource = DSTemplate
              Decimals = 3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              ParentFont = False
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Unidade Where (%MFiltro)')
    object SQLTemplateUNIDICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
      Visible = False
    end
    object SQLTemplateUNIDA5DESCR: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Sigla'
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateUNIDA15DESCR: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o Completa'
      FieldName = 'UNIDA15DESCR'
      Origin = 'DB.UNIDADE.UNIDA15DESCR'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateUNIDCFRAC: TStringField
      FieldName = 'UNIDCFRAC'
      Origin = 'DB.UNIDADE.UNIDCFRAC'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.UNIDADE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.UNIDADE.REGISTRO'
    end
    object SQLTemplateUNIDN3FATORCONV: TBCDField
      ConstraintErrorMessage = '1'
      FieldName = 'UNIDN3FATORCONV'
      Origin = 'DB.UNIDADE.UNIDN3FATORCONV'
      Precision = 15
      Size = 3
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update Unidade'
      'set'
      '  UNIDICOD = :UNIDICOD,'
      '  UNIDA5DESCR = :UNIDA5DESCR'
      'where'
      '  UNIDICOD = :OLD_UNIDICOD')
    InsertSQL.Strings = (
      'insert into Unidade'
      '  (UNIDICOD, UNIDA5DESCR)'
      'values'
      '  (:UNIDICOD, :UNIDA5DESCR)')
    DeleteSQL.Strings = (
      'delete from Unidade'
      'where'
      '  UNIDICOD = :OLD_UNIDICOD')
  end
  object SQLUnidadeAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from UNIDADE Where %Descricao')
    Macros = <
      item
        DataType = ftString
        Name = 'Descricao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 472
    Top = 2
    object SQLUnidadeAuxUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
    end
    object SQLUnidadeAuxUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
end
