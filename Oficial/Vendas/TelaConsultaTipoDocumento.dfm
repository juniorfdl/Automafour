inherited FormTelaConsultaTipoDocumento: TFormTelaConsultaTipoDocumento
  Left = 349
  Top = 202
  Caption = 'Consulta Tipo de Documento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited DBGridLista: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'TPDCICOD'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPDCA60DESCR'
            Width = 481
            Visible = True
          end>
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From TipoDocumento Where (%MFiltro)')
    object SQLTemplateTPDCICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
    end
    object SQLTemplateTPDCA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
  end
end
