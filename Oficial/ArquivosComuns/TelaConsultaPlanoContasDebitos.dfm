inherited FormTelaConsultaPlanoContasDebitos: TFormTelaConsultaPlanoContasDebitos
  Left = 301
  Top = 134
  Width = 772
  Height = 486
  Caption = 'Consulta Contas de D'#233'bito'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 756
    Height = 447
    inherited PanelCentral: TPanel
      inherited DBGridLista: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'PLCTA30CODEDIT'
            Width = 185
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
            FieldName = 'PLCTA15COD'
            Visible = True
          end>
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 752
      inherited PanelCabecalho: TPanel
        Width = 752
        inherited PanelNavigator: TPanel
          Width = 752
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 752
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      '  PLANODECONTAS '
      'Where '
      '  (%MFiltro) and'
      '  PLCTCANALSINT = "A" and'
      '  (PLCTCTIPOSALDO = "D" or PLCTCTIPOSALDO = "A")')
    object SQLTemplatePLCTA15COD: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePLCTICODREDUZ: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PLCTICODREDUZ'
      Origin = 'DB.PLANODECONTAS.PLCTICODREDUZ'
    end
    object SQLTemplatePLCTA30CODEDIT: TStringField
      DisplayLabel = 'C'#243'digo Editado'
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
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
  end
end
