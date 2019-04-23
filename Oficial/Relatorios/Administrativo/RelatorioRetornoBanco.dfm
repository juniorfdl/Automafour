object FormRelatorioRetornoBanco: TFormRelatorioRetornoBanco
  Left = 329
  Top = 142
  Width = 829
  Height = 608
  Caption = 'FormRelatorioRetornoBanco'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = FormTelaMovimentoRetornoSicredi.DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 69
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 232
        Top = 8
        Width = 268
        Height = 23
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        Caption = 'Relat'#243'rio de Retorno Banc'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -18
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlSubTitulo: TRLLabel
        Left = 16
        Top = 40
        Width = 89
        Height = 16
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 133
      Width = 718
      Height = 19
      object RLDBText3: TRLDBText
        Left = 4
        Top = 1
        Width = 57
        Height = 14
        DataField = 'CodigoCliente'
        DataSource = FormTelaMovimentoRetornoSicredi.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 95
        Top = 1
        Width = 62
        Height = 14
        DataField = 'NomeCliente'
        DataSource = FormTelaMovimentoRetornoSicredi.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 322
        Top = 1
        Width = 57
        Height = 14
        DataField = 'Ocorrencia'
        DataSource = FormTelaMovimentoRetornoSicredi.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 390
        Top = 1
        Width = 52
        Height = 14
        DataField = 'Descricao'
        DataSource = FormTelaMovimentoRetornoSicredi.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 501
        Top = 1
        Width = 74
        Height = 14
        Alignment = taRightJustify
        DataField = 'ValorRecebido'
        DataSource = FormTelaMovimentoRetornoSicredi.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 584
        Top = 1
        Width = 56
        Height = 14
        Alignment = taRightJustify
        DataField = 'ValorJuros'
        DataSource = FormTelaMovimentoRetornoSicredi.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 643
        Top = 1
        Width = 54
        Height = 14
        Alignment = taRightJustify
        DataField = 'ValorMulta'
        DataSource = FormTelaMovimentoRetornoSicredi.DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 152
      Width = 718
      Height = 31
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand3BeforePrint
      object rlTotal: TRLLabel
        Left = 543
        Top = 9
        Width = 32
        Height = 14
        Alignment = taRightJustify
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlJuros: TRLLabel
        Left = 586
        Top = 9
        Width = 54
        Height = 14
        Alignment = taRightJustify
        Caption = 'Vlr Juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlMulta: TRLLabel
        Left = 645
        Top = 9
        Width = 52
        Height = 14
        Alignment = taRightJustify
        Caption = 'Vlr Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 92
        Top = 9
        Width = 82
        Height = 14
        Caption = 'TOTAL GERAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 107
      Width = 718
      Height = 26
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 4
        Top = 6
        Width = 67
        Height = 14
        Caption = 'Cod.Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 95
        Top = 6
        Width = 77
        Height = 14
        Caption = 'Nome Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 322
        Top = 6
        Width = 28
        Height = 14
        Caption = 'Cod.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 390
        Top = 6
        Width = 98
        Height = 14
        Caption = 'Nome Ocorr'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 543
        Top = 6
        Width = 32
        Height = 14
        Alignment = taRightJustify
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 586
        Top = 6
        Width = 54
        Height = 14
        Alignment = taRightJustify
        Caption = 'Vlr Juros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 645
        Top = 6
        Width = 52
        Height = 14
        Alignment = taRightJustify
        Caption = 'Vlr Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
