object FormTelaGeracaoXMLVendas: TFormTelaGeracaoXMLVendas
  Left = 182
  Top = 214
  Width = 565
  Height = 177
  Caption = 'Tela Gera'#231#227'o XML das Vendas e Movimento de Caixa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 72
    Width = 367
    Height = 13
    Caption = 'Aguarde! Gerando arquivos  XML com dados da  Ultima Venda...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BTGerarXML: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Gerar XMLs'
    TabOrder = 0
    OnClick = BTGerarXMLClick
  end
  object ProgressBar: TProgressBar
    Left = 16
    Top = 91
    Width = 521
    Height = 17
    TabOrder = 1
  end
  object PcdsXML: TDataSetProvider
    ResolveToDataSet = True
    Left = 154
    Top = 15
  end
  object cdsXML: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PcdsXML'
    Left = 126
    Top = 15
  end
end
