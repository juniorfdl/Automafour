inherited FormTelaConsultaPortador: TFormTelaConsultaPortador
  Left = 210
  Top = 124
  Caption = 'Portadores'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited DBGridLista: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'PORTICOD'
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PORTA60DESCR'
            Width = 372
            Visible = True
          end>
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From Portador Where (%MFiltro)')
    object SQLTemplatePORTICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PORTICOD'
      Origin = 'DB.PORTADOR.PORTICOD'
    end
    object SQLTemplatePORTA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
