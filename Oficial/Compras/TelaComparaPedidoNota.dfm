inherited FormTelaComparaPedidoNota: TFormTelaComparaPedidoNota
  Left = 166
  Top = 105
  Width = 1053
  Height = 450
  Caption = 'Compara Pedido - Nota'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1037
    Height = 412
    inherited PanelCentral: TPanel
      Width = 1033
      Height = 328
      inherited PanelBarra: TPanel
        Width = 1
        Height = 328
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 0
        Width = 1032
        Height = 328
        Align = alClient
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDados
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1CodigoProduto: TcxGridDBColumn
            Caption = 'C'#243'digo Produto'
            DataBinding.FieldName = 'CodigoProduto'
            FooterAlignmentHorz = taCenter
            Width = 87
          end
          object cxGrid1DBTableView1NomeProduto: TcxGridDBColumn
            Caption = 'Nome Produto'
            DataBinding.FieldName = 'NomeProduto'
            FooterAlignmentHorz = taCenter
            Width = 345
          end
          object cxGrid1DBTableView1QtdePedido: TcxGridDBColumn
            Caption = 'Qtde Pedido'
            DataBinding.FieldName = 'QtdePedido'
            FooterAlignmentHorz = taCenter
            Width = 100
          end
          object cxGrid1DBTableView1QtdeNota: TcxGridDBColumn
            Caption = 'Qtde Nota'
            DataBinding.FieldName = 'QtdeNota'
            FooterAlignmentHorz = taCenter
            Width = 82
          end
          object cxGrid1DBTableView1ValorUniPedido: TcxGridDBColumn
            Caption = 'Valor Unit'#225'rio Pedido'
            DataBinding.FieldName = 'ValorUniPedido'
            FooterAlignmentHorz = taCenter
            Width = 117
          end
          object cxGrid1DBTableView1ValorUnitNota: TcxGridDBColumn
            Caption = 'Valor Unit'#225'rio Nota'
            DataBinding.FieldName = 'ValorUnitNota'
            FooterAlignmentHorz = taCenter
            Width = 115
          end
          object cxGrid1DBTableView1ValorTotalItemPedido: TcxGridDBColumn
            Caption = 'Valor Total Pedido'
            DataBinding.FieldName = 'ValorTotalItemPedido'
            FooterAlignmentHorz = taCenter
            Width = 126
          end
          object cxGrid1DBTableView1ValorTotalItemNota: TcxGridDBColumn
            Caption = 'Valor Total Nota'
            DataBinding.FieldName = 'ValorTotalItemNota'
            FooterAlignmentHorz = taCenter
            Width = 113
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 1033
      inherited PanelCabecalho: TPanel
        Width = 1033
        inherited PanelNavigator: TPanel
          Width = 1033
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 1033
          end
        end
      end
    end
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 16
    object cdsDadosCodigoProduto: TIntegerField
      FieldName = 'CodigoProduto'
    end
    object cdsDadosNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 100
    end
    object cdsDadosQtdePedido: TFloatField
      FieldName = 'QtdePedido'
    end
    object cdsDadosQtdeNota: TFloatField
      FieldName = 'QtdeNota'
    end
    object cdsDadosValorUniPedido: TFloatField
      FieldName = 'ValorUniPedido'
    end
    object cdsDadosValorUnitNota: TFloatField
      FieldName = 'ValorUnitNota'
    end
    object cdsDadosValorTotalItemPedido: TFloatField
      FieldName = 'ValorTotalItemPedido'
    end
    object cdsDadosValorTotalItemNota: TFloatField
      FieldName = 'ValorTotalItemNota'
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 328
    Top = 16
  end
end
