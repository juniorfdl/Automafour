inherited FormTelaConsultaNotaFiscal: TFormTelaConsultaNotaFiscal
  Left = 227
  Top = 164
  Caption = 'Consulta Notas Fiscais'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From NOTAFISCAL Where (%MFiltro)')
  end
end
