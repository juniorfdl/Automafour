inherited FormCadastroPlanoPagamentoParcela: TFormCadastroPlanoPagamentoParcela
  Caption = 'Parcelas'
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
                    FieldName = 'PLPPINROPARC'
                    Width = 119
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLPPINRODIAS'
                    Width = 118
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelMaster: TPanel
            object Label3: TLabel
              Left = 4
              Top = 3
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 135
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 533
              Top = 3
              Width = 62
              Height = 13
              Caption = 'Taxa Juros'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 4
              Top = 19
              Width = 126
              Height = 21
              DataField = 'PLPGICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 135
              Top = 19
              Width = 395
              Height = 21
              DataField = 'PLPGA60DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
            object DBEdit5: TDBEdit
              Left = 533
              Top = 19
              Width = 121
              Height = 21
              DataField = 'PLPGN3TXJURO'
              DataSource = DSMasterTemplate
              TabOrder = 2
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 4
              Top = 0
              Width = 42
              Height = 13
              Caption = 'Parcela'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 141
              Top = 0
              Width = 63
              Height = 13
              Caption = 'Nro de Dias'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 16
              Width = 134
              Height = 21
              DataField = 'PLPPINROPARC'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 141
              Top = 16
              Width = 134
              Height = 21
              DataField = 'PLPPINRODIAS'
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
      'Select * From PlanoPagamentoParcela Where '
      'PLPGICOD = :PLPGICOD AND'
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PLPGICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplatePLPGICOD: TIntegerField
      Tag = 1
      FieldName = 'PLPGICOD'
      Origin = 'DB.PLANOPAGAMENTOPARCELA.PLPGICOD'
      Visible = False
    end
    object SQLTemplatePLPPINROPARC: TIntegerField
      Tag = 1
      DisplayLabel = 'Parcela'
      FieldName = 'PLPPINROPARC'
      Origin = 'DB.PLANOPAGAMENTOPARCELA.PLPPINROPARC'
      Visible = False
    end
    object SQLTemplatePLPPINRODIAS: TIntegerField
      DisplayLabel = 'Nro de Dias'
      FieldName = 'PLPPINRODIAS'
      Origin = 'DB.PLANOPAGAMENTOPARCELA.PLPPINRODIAS'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANOPAGAMENTOPARCELA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANOPAGAMENTOPARCELA.REGISTRO'
    end
  end
end
