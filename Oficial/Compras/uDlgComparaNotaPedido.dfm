object fDlgComparaNotaPedido: TfDlgComparaNotaPedido
  Left = 195
  Top = 118
  BorderStyle = bsSingle
  Caption = 'fDlgComparaNotaPedido'
  ClientHeight = 442
  ClientWidth = 1040
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 1040
    Height = 442
    Align = alClient
    TabOrder = 0
    object pnlTopo: TPanel
      Left = 1
      Top = 1
      Width = 1038
      Height = 64
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 48
        Top = 23
        Width = 66
        Height = 13
        Caption = 'N'#250'mero Nota:'
      end
      object lblNumNota: TLabel
        Left = 121
        Top = 23
        Width = 3
        Height = 13
        Caption = '.'
      end
      object Label2: TLabel
        Left = 38
        Top = 40
        Width = 76
        Height = 13
        Caption = 'N'#250'mero Pedido:'
      end
      object lblNumPedido: TLabel
        Left = 121
        Top = 40
        Width = 3
        Height = 13
        Caption = '.'
      end
      object Label3: TLabel
        Left = 57
        Top = 7
        Width = 57
        Height = 13
        Caption = 'Fornecedor:'
      end
      object lblNomeFornecedor: TLabel
        Left = 121
        Top = 7
        Width = 3
        Height = 13
        Caption = '.'
      end
      object Shape1: TShape
        Left = 792
        Top = 1
        Width = 20
        Height = 17
        Brush.Color = clGreen
      end
      object Label4: TLabel
        Left = 817
        Top = 5
        Width = 114
        Height = 13
        Caption = 'Item somente no Pedido'
      end
      object Shape2: TShape
        Left = 792
        Top = 19
        Width = 20
        Height = 17
        Brush.Color = clYellow
      end
      object Label5: TLabel
        Left = 817
        Top = 23
        Width = 104
        Height = 13
        Caption = 'Item somente no Nota'
      end
      object btnFechar: TBitBtn
        Left = 656
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 0
        OnClick = btnFecharClick
      end
    end
    object TPanel
      Left = 1
      Top = 65
      Width = 1038
      Height = 376
      Align = alClient
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 1036
        Height = 374
        Align = alClient
        DataSource = dsDados
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CodigoProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Cod. Produto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeProduto'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Produto'
            Width = 384
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdePedido'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde Pedido'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdeNota'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde Nota'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorUniPedido'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Unit'#225'rio Pedido'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorUnitNota'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Unit'#225'rio Nota'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorTotalItemPedido'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Total Pedido'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorTotalItemNota'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Total Nota'
            Width = 80
            Visible = True
          end>
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
      DisplayFormat = '##0.00'
    end
    object cdsDadosQtdeNota: TFloatField
      FieldName = 'QtdeNota'
      DisplayFormat = '##0.00'
    end
    object cdsDadosValorUniPedido: TFloatField
      FieldName = 'ValorUniPedido'
      DisplayFormat = '##0.00'
    end
    object cdsDadosValorUnitNota: TFloatField
      FieldName = 'ValorUnitNota'
      DisplayFormat = '##0.00'
    end
    object cdsDadosValorTotalItemPedido: TFloatField
      FieldName = 'ValorTotalItemPedido'
      DisplayFormat = '##0.00'
    end
    object cdsDadosValorTotalItemNota: TFloatField
      FieldName = 'ValorTotalItemNota'
      DisplayFormat = '##0.00'
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 328
    Top = 16
  end
end
