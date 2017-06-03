inherited FormTelaConsultaNotaCompra: TFormTelaConsultaNotaCompra
  Caption = 'Consulta Notas de Compra'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From NotaCompra Where (%MFiltro)')
  end
end
