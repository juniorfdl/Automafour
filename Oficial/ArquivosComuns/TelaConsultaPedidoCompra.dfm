inherited FormTelaConsultaPedidoCompra: TFormTelaConsultaPedidoCompra
  Caption = 'Consulta Pedidos de Compra'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From PedidoCompra Where (%MFiltro)')
  end
end
