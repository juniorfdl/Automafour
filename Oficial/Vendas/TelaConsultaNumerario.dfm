inherited FormTelaConsultaNumerario: TFormTelaConsultaNumerario
  Left = 279
  Top = 118
  Caption = 'Numer'#225'rios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited DBGridLista: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMEICOD'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMEA30DESCR'
            Width = 345
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMECVISTAPRAZO'
            Width = 107
            Visible = True
          end>
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From Numerario Where (%MFiltro)')
    object SQLTemplateNUMEICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLTemplateNUMEA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateNUMECVISTAPRAZO: TStringField
      DisplayLabel = 'Vista Prazo'
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
  end
end
