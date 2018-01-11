inherited FormCadastroChequesHistorico: TFormCadastroChequesHistorico
  Left = 107
  Top = 109
  Caption = 'Hist'#243'ricos de Cheque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 167
            Height = 282
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 209
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CHRHDDIGITACAO'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CHRHA255OBS'
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
              inherited MemoDetalhes: TMemo
                Left = 4
                Top = 135
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 126
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 126
            object Label1: TLabel
              Left = 6
              Top = 2
              Width = 53
              Height = 13
              Caption = 'Digita'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 6
              Top = 42
              Width = 50
              Height = 13
              Caption = 'Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBDateEdit
              Left = 4
              Top = 15
              Width = 90
              Height = 21
              DataField = 'CHRHDDIGITACAO'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 0
            end
            object DBEdit2: TDBMemo
              Left = 4
              Top = 55
              Width = 642
              Height = 63
              BevelWidth = 0
              DataField = 'CHRHA255OBS'
              DataSource = DSTemplate
              MaxLength = 254
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
      '  CHEQUERECEBIDOHISTORICO '
      'Where '
      '  CTRCA13ID = :CTRCA13ID and (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CHEQUERECEBIDOHISTORICO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCHRHICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Contador'
      FieldName = 'CHRHICOD'
      Origin = 'DB.CHEQUERECEBIDOHISTORICO.CHRHICOD'
    end
    object SQLTemplateCHRHDDIGITACAO: TDateTimeField
      DisplayLabel = 'Digita'#231#227'o'
      FieldName = 'CHRHDDIGITACAO'
      Origin = 'DB.CHEQUERECEBIDOHISTORICO.CHRHDDIGITACAO'
    end
    object SQLTemplateCHRHA255OBS: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'CHRHA255OBS'
      Origin = 'DB.CHEQUERECEBIDOHISTORICO.CHRHA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CHEQUERECEBIDOHISTORICO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CHEQUERECEBIDOHISTORICO.REGISTRO'
    end
  end
end
