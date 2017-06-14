inherited FormCadastroPlanodeContas: TFormCadastroPlanodeContas
  Left = 169
  Top = 108
  Caption = 'Cadastro do Plano de Contas'
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
                    FieldName = 'PLCTA15COD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLCTA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLCTICODREDUZ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLCTINIVEL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLCTA15CODPAI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLCTA30CODEDIT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLCTCANALSINT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLCTCTIPOSALDO'
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
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From PLANODECONTAS Where (%MFiltro)')
    object SQLTemplatePLCTA15COD: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePLCTICODREDUZ: TIntegerField
      DisplayLabel = 'C'#243'd.Reduzido'
      FieldName = 'PLCTICODREDUZ'
      Origin = 'DB.PLANODECONTAS.PLCTICODREDUZ'
    end
    object SQLTemplatePLCTINIVEL: TIntegerField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'PLCTINIVEL'
      Origin = 'DB.PLANODECONTAS.PLCTINIVEL'
    end
    object SQLTemplatePLCTA15CODPAI: TStringField
      DisplayLabel = 'C'#243'd.Pai'
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePLCTA30CODEDIT: TStringField
      DisplayLabel = 'C'#243'd.Editado'
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePLCTA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePLCTCANALSINT: TStringField
      DisplayLabel = 'Anal'#237'tico/Sint'#233'tico'
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePLCTCTIPOSALDO: TStringField
      DisplayLabel = 'Tipo Saldo'
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANODECONTAS.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANODECONTAS.REGISTRO'
    end
  end
end
