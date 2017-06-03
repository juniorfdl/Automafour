inherited FormCadastroClienteReferencia: TFormCadastroClienteReferencia
  Left = 291
  Top = 175
  Caption = 'Refer'#234'ncias'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 104
            Height = 345
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 272
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CLRFICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLRFA254REFERENCIA'
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
            Top = 63
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 63
            object Label1: TLabel
              Left = 8
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 79
              Top = 4
              Width = 61
              Height = 13
              Caption = 'Refer'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 18
              Width = 64
              Height = 21
              DataField = 'CLRFICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBMemo
              Left = 71
              Top = 18
              Width = 637
              Height = 42
              DataField = 'CLRFA254REFERENCIA'
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
      'Select '
      '  * '
      'From '
      '  CLIENTEREFERENCIA '
      'Where '
      '  CLIEA13ID = :CLIEA13ID and'
      '  (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEREFERENCIA.CLIEA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLRFICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLRFICOD'
      Origin = 'DB.CLIENTEREFERENCIA.CLRFICOD'
      Visible = False
    end
    object SQLTemplateCLRFA254REFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'CLRFA254REFERENCIA'
      Origin = 'DB.CLIENTEREFERENCIA.CLRFA254REFERENCIA'
      FixedChar = True
      Size = 254
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTEREFERENCIA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTEREFERENCIA.REGISTRO'
    end
  end
end
