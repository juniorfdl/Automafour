inherited FormTelaConsultaTabelaPreco: TFormTelaConsultaTabelaPreco
  Left = 152
  Top = 120
  Caption = 'Consulta de Tabelas de Pre'#231'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited DBGridLista: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'TPRCICOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPRCA60DESCR'
            Width = 666
            Visible = True
          end>
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From TABELAPRECO Where (%MFiltro)')
    object SQLTemplateTPRCICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPRCICOD'
      Origin = 'DB.TABELAPRECO.TPRCICOD'
    end
    object SQLTemplateTPRCA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPRCA60DESCR'
      Origin = 'DB.TABELAPRECO.TPRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TABELAPRECO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TABELAPRECO.REGISTRO'
    end
  end
end
