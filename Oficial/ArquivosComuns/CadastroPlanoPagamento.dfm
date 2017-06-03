inherited FormCadastroPlanoPagamento: TFormCadastroPlanoPagamento
  Caption = 'Planos de Pagamento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Tag = 3
          Caption = '&3 Parcelas'
          WordWrap = True
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PLPGICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLPGA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLPGN3TXJURO'
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 5
              Top = 0
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
              Left = 136
              Top = 0
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
            object Label3: TLabel
              Left = 534
              Top = 0
              Width = 62
              Height = 13
              Caption = 'Taxa Juros'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 5
              Top = 16
              Width = 126
              Height = 21
              DataField = 'PLPGICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 136
              Top = 16
              Width = 395
              Height = 21
              DataField = 'PLPGA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 534
              Top = 16
              Width = 121
              Height = 21
              DataField = 'PLPGN3TXJURO'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From PlanoPagamento Where (%MFiltro)')
    object SQLTemplatePLPGICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PLPGICOD'
      Origin = 'DB.PLANOPAGAMENTO.PLPGICOD'
      Visible = False
    end
    object SQLTemplatePLPGA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PLPGA60DESCR'
      Origin = 'DB.PLANOPAGAMENTO.PLPGA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePLPGN3TXJURO: TBCDField
      DisplayLabel = 'Taxa Juros'
      FieldName = 'PLPGN3TXJURO'
      Origin = 'DB.PLANOPAGAMENTO.PLPGN3TXJURO'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANOPAGAMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANOPAGAMENTO.REGISTRO'
    end
  end
end
