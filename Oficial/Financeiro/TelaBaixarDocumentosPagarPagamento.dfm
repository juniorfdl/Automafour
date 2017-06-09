inherited FormTelaBaixaDocumentosPagarPagamento: TFormTelaBaixaDocumentosPagarPagamento
  Left = 303
  Top = 143
  Caption = 'FormTelaBaixaDocumentosPagarPagamento'
  ClientHeight = 519
  ClientWidth = 639
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Width = 639
    Height = 439
    object PanelBarra: TPanel
      Left = 0
      Top = 0
      Width = 132
      Height = 439
      Align = alLeft
      BevelOuter = bvNone
      Color = 14731440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object ButtonDinheiro: TRxSpeedButton
        Left = 4
        Top = 4
        Width = 122
        Height = 23
        Cursor = crHandPoint
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        GroupIndex = 1
        Caption = '&1 Caixa'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          6E040000424D6E04000000000000360000002800000014000000120000000100
          18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
          0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
          BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
          FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
          BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
          BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
          FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
          BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
          BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
          F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
          BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
          FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
          000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
          BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
          FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
          FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
          0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        GrayedInactive = False
        Layout = blGlyphLeft
        Margin = 1
        ParentFont = False
        Transparent = True
        OnClick = ButtonDinheiroClick
      end
      object ButtonCheque: TRxSpeedButton
        Tag = 1
        Left = 4
        Top = 27
        Width = 122
        Height = 23
        Cursor = crHandPoint
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        GroupIndex = 1
        Caption = '&2 Cheque'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          6E040000424D6E04000000000000360000002800000014000000120000000100
          18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
          0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
          BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
          FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
          BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
          BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
          FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
          BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
          BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
          F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
          BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
          FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
          000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
          BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
          FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
          FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
          0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        GrayedInactive = False
        Layout = blGlyphLeft
        Margin = 1
        ParentFont = False
        Transparent = True
        OnClick = ButtonDinheiroClick
      end
      object ButtonBanco: TRxSpeedButton
        Tag = 2
        Left = 4
        Top = 50
        Width = 122
        Height = 23
        Cursor = crHandPoint
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        GroupIndex = 1
        Caption = '&3 Banco'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          6E040000424D6E04000000000000360000002800000014000000120000000100
          18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
          0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
          BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
          FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
          BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
          BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
          FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
          BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
          BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
          F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
          BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
          FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
          000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
          BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
          FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
          FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
          0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        GrayedInactive = False
        Layout = blGlyphLeft
        Margin = 1
        ParentFont = False
        Transparent = True
        OnClick = ButtonDinheiroClick
      end
    end
    object Panel1: TPanel
      Left = 132
      Top = 0
      Width = 507
      Height = 439
      Align = alClient
      Caption = 'Panel1'
      Color = 16249066
      TabOrder = 1
      object PagePrincipal: TPageControl
        Left = 1
        Top = 44
        Width = 505
        Height = 321
        ActivePage = Dinheiro
        Align = alClient
        MultiLine = True
        TabOrder = 1
        TabPosition = tpRight
        object Dinheiro: TTabSheet
          Caption = 'Dinheiro'
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 478
            Height = 313
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            BorderWidth = 4
            Caption = 'Panel5'
            Color = 16249066
            TabOrder = 0
            object GroupBox6: TGroupBox
              Left = 8
              Top = 6
              Width = 436
              Height = 45
              Caption = '&Opera'#231#227'o Tesouraria'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object ComboOperacaoTesouraria: TRxDBLookupCombo
                Left = 4
                Top = 17
                Width = 428
                Height = 21
                DropDownCount = 8
                DisplayEmpty = 'Selecione uma opera'#231#227'o...'
                LookupField = 'OPTEICOD'
                LookupDisplay = 'OPTEA60DESCR'
                LookupSource = DSSQLOperacaoTesouraria
                TabOrder = 0
              end
            end
            object GroupBox7: TGroupBox
              Left = 9
              Top = 97
              Width = 435
              Height = 70
              Caption = '&Hist'#243'rico'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object MemoHistTesouraria: TMemo
                Left = 2
                Top = 15
                Width = 431
                Height = 53
                Align = alClient
                TabOrder = 0
              end
            end
            object GroupBox8: TGroupBox
              Left = 8
              Top = 51
              Width = 299
              Height = 45
              Caption = '&Numer'#225'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object ComboNumerario: TRxDBLookupCombo
                Left = 4
                Top = 17
                Width = 291
                Height = 21
                DropDownCount = 8
                DisplayEmpty = 'Selecione um numer'#225'rio...'
                LookupField = 'NUMEICOD'
                LookupDisplay = 'NUMEA30DESCR'
                LookupSource = DSSQLNumerario
                TabOrder = 0
              end
            end
            object GroupBox12: TGroupBox
              Left = 309
              Top = 51
              Width = 135
              Height = 45
              Caption = 'Data Movimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object DataMovTesouraria: TDateEdit
                Left = 6
                Top = 16
                Width = 123
                Height = 21
                NumGlyphs = 2
                TabOrder = 0
              end
            end
            object GroupPlanoContas: TGroupBox
              Left = 9
              Top = 168
              Width = 435
              Height = 120
              Caption = '&Plano de Contas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              object PageControl1: TPageControl
                Left = 2
                Top = 15
                Width = 431
                Height = 103
                ActivePage = TabCredito
                Align = alClient
                MultiLine = True
                RaggedRight = True
                Style = tsFlatButtons
                TabOrder = 0
                object TabDebito: TTabSheet
                  Caption = '&D'#233'bito'
                  ImageIndex = 1
                  object Label21: TLabel
                    Left = 2
                    Top = 2
                    Width = 80
                    Height = 13
                    Caption = '&Valor Principal'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label22: TLabel
                    Left = 216
                    Top = 2
                    Width = 31
                    Height = 13
                    Caption = '&Juros'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label23: TLabel
                    Left = 1
                    Top = 38
                    Width = 32
                    Height = 13
                    Caption = '&Multa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label24: TLabel
                    Left = 215
                    Top = 38
                    Width = 53
                    Height = 13
                    Caption = '&Desconto'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object ComboContaDebitoPrincipal: TRxDBLookupCombo
                    Left = 0
                    Top = 16
                    Width = 211
                    Height = 21
                    DropDownCount = 8
                    LookupField = 'PLCTA15COD'
                    LookupDisplay = 'PLCTA60DESCR'
                    LookupSource = DSSQLPlanoContaDebito
                    TabOrder = 0
                  end
                  object ComboContaDebitoJuros: TRxDBLookupCombo
                    Left = 212
                    Top = 16
                    Width = 212
                    Height = 21
                    DropDownCount = 8
                    LookupField = 'PLCTA15COD'
                    LookupDisplay = 'PLCTA60DESCR'
                    LookupSource = DSSQLPlanoContaDebito
                    TabOrder = 1
                  end
                  object ComboContaDebitoMulta: TRxDBLookupCombo
                    Left = 0
                    Top = 51
                    Width = 211
                    Height = 21
                    DropDownCount = 8
                    LookupField = 'PLCTA15COD'
                    LookupDisplay = 'PLCTA60DESCR'
                    LookupSource = DSSQLPlanoContaDebito
                    TabOrder = 2
                  end
                  object ComboContaDebitoDesconto: TRxDBLookupCombo
                    Left = 212
                    Top = 51
                    Width = 212
                    Height = 21
                    DropDownCount = 8
                    LookupField = 'PLCTA15COD'
                    LookupDisplay = 'PLCTA60DESCR'
                    LookupSource = DSSQLPlanoContaDebito
                    TabOrder = 3
                  end
                end
                object TabCredito: TTabSheet
                  Caption = '&Cr'#233'dito'
                  object Label16: TLabel
                    Left = 2
                    Top = 2
                    Width = 80
                    Height = 13
                    Caption = '&Valor Principal'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label18: TLabel
                    Left = 216
                    Top = 2
                    Width = 31
                    Height = 13
                    Caption = '&Juros'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label19: TLabel
                    Left = 1
                    Top = 38
                    Width = 32
                    Height = 13
                    Caption = '&Multa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label20: TLabel
                    Left = 215
                    Top = 38
                    Width = 53
                    Height = 13
                    Caption = '&Desconto'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object ComboContaCreditoPrincipal: TRxDBLookupCombo
                    Left = 0
                    Top = 16
                    Width = 211
                    Height = 21
                    DropDownCount = 8
                    LookupField = 'PLCTA15COD'
                    LookupDisplay = 'PLCTA60DESCR'
                    LookupSource = DSSQLPlanoContaCredito
                    TabOrder = 0
                  end
                  object ComboContaCreditoJuros: TRxDBLookupCombo
                    Left = 212
                    Top = 16
                    Width = 212
                    Height = 21
                    DropDownCount = 8
                    LookupField = 'PLCTA15COD'
                    LookupDisplay = 'PLCTA60DESCR'
                    LookupSource = DSSQLPlanoContaCredito
                    TabOrder = 1
                  end
                  object ComboContaCreditoMulta: TRxDBLookupCombo
                    Left = 0
                    Top = 51
                    Width = 211
                    Height = 21
                    DropDownCount = 8
                    LookupField = 'PLCTA15COD'
                    LookupDisplay = 'PLCTA60DESCR'
                    LookupSource = DSSQLPlanoContaCredito
                    TabOrder = 2
                  end
                  object ComboContaCreditoDesconto: TRxDBLookupCombo
                    Left = 212
                    Top = 51
                    Width = 212
                    Height = 21
                    DropDownCount = 8
                    LookupField = 'PLCTA15COD'
                    LookupDisplay = 'PLCTA60DESCR'
                    LookupSource = DSSQLPlanoContaCredito
                    TabOrder = 3
                  end
                end
              end
            end
          end
        end
        object Cheque: TTabSheet
          Caption = 'Cheque'
          ImageIndex = 1
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 478
            Height = 313
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            BorderWidth = 4
            Color = 16249066
            TabOrder = 0
            object GroupBox4: TGroupBox
              Left = 8
              Top = 8
              Width = 434
              Height = 131
              Caption = '&Dados Banc'#225'rios'
              Color = 16249066
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              object Label9: TLabel
                Left = 6
                Top = 16
                Width = 86
                Height = 13
                Caption = 'C&onta Corrente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 213
                Top = 53
                Width = 45
                Height = 13
                Caption = 'Ag'#234'ncia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 371
                Top = 53
                Width = 35
                Height = 13
                Caption = 'Limite'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 6
                Top = 54
                Width = 34
                Height = 13
                Caption = 'Banco'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 275
                Top = 53
                Width = 86
                Height = 13
                Caption = 'Conta Corrente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 8
                Top = 90
                Width = 35
                Height = 13
                Caption = 'Al'#237'nea'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 6
                Top = 67
                Width = 205
                Height = 21
                Color = 16249066
                DataField = 'BancoNome'
                DataSource = DSTblContaCorrente
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit3: TDBEdit
                Left = 213
                Top = 67
                Width = 58
                Height = 21
                Color = 16249066
                DataField = 'CTCRA15AGENCIA'
                DataSource = DSTblContaCorrente
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit4: TDBEdit
                Left = 273
                Top = 67
                Width = 94
                Height = 21
                Color = 16249066
                DataField = 'CTCRA15NUMERO'
                DataSource = DSTblContaCorrente
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit5: TDBEdit
                Left = 369
                Top = 67
                Width = 59
                Height = 21
                Color = 16249066
                DataField = 'CTCRN2SALDOATUAL'
                DataSource = DSTblContaCorrente
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object ComboContaCorrente: TRxDBLookupCombo
                Left = 6
                Top = 32
                Width = 419
                Height = 21
                DropDownCount = 8
                DisplayEmpty = 'Selecione uma conta corrente...'
                IndexSwitch = False
                LookupField = 'CTCRICOD'
                LookupDisplay = 'CTCRA60TITULAR'
                LookupSource = DSTblContaCorrente
                TabOrder = 4
              end
              object ComboAlinea: TRxDBLookupCombo
                Left = 6
                Top = 105
                Width = 420
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DisplayEmpty = 'Selecione uma al'#237'nea...'
                LookupField = 'ALINICOD'
                LookupDisplay = 'ALINA30DESCR'
                LookupSource = DSTblAlinea
                TabOrder = 5
              end
            end
            object GroupBox5: TGroupBox
              Left = 8
              Top = 141
              Width = 434
              Height = 141
              Caption = 'Dados do &cheque'
              Color = 16249066
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 1
              object Label5: TLabel
                Left = 170
                Top = 14
                Width = 84
                Height = 13
                Caption = '&Bom para o dia'
                FocusControl = EditDataVenc
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 7
                Top = 54
                Width = 62
                Height = 13
                Caption = '&Favorecido'
                FocusControl = EditFavorecido
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 7
                Top = 94
                Width = 50
                Height = 13
                Caption = '&Hist'#243'rico'
                FocusControl = EditObs
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 7
                Top = 14
                Width = 67
                Height = 13
                Caption = '&Nro. Cheque'
                FocusControl = EditNroCheque
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object EditDataVenc: TDateEdit
                Left = 169
                Top = 30
                Width = 128
                Height = 21
                NumGlyphs = 2
                TabOrder = 1
              end
              object EditFavorecido: TEdit
                Left = 7
                Top = 70
                Width = 421
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 3
              end
              object EditObs: TEdit
                Left = 7
                Top = 110
                Width = 422
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 4
              end
              object EditNroCheque: TEdit
                Left = 7
                Top = 30
                Width = 157
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 0
              end
              object CheckCruzado: TCheckBox
                Left = 301
                Top = 31
                Width = 126
                Height = 17
                Caption = 'Cruzar o c&heque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
            end
          end
        end
        object Banco: TTabSheet
          Caption = 'Banco'
          ImageIndex = 2
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 478
            Height = 313
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            BorderWidth = 4
            Color = 16249066
            TabOrder = 0
            object GroupBox1: TGroupBox
              Left = 8
              Top = 8
              Width = 435
              Height = 94
              Caption = '&Dados Banc'#225'rios'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object Label15: TLabel
                Left = 7
                Top = 51
                Width = 34
                Height = 13
                Caption = 'Banco'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 214
                Top = 51
                Width = 45
                Height = 13
                Caption = 'Ag'#234'ncia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 7
                Top = 14
                Width = 86
                Height = 13
                Caption = 'C&onta Corrente'
                FocusControl = ComboContaCorrenteBanco
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 371
                Top = 52
                Width = 35
                Height = 13
                Caption = 'Limite'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 274
                Top = 52
                Width = 86
                Height = 13
                Caption = 'Conta Corrente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit2: TDBEdit
                Left = 7
                Top = 66
                Width = 205
                Height = 21
                Color = 16249066
                DataField = 'BancoNome'
                DataSource = DSTblContaCorrente1
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object ComboContaCorrenteBanco: TRxDBLookupCombo
                Left = 7
                Top = 29
                Width = 422
                Height = 21
                DropDownCount = 8
                DisplayEmpty = 'Selecione uma conta corrente...'
                LookupField = 'CTCRICOD'
                LookupDisplay = 'CTCRA60TITULAR'
                LookupSource = DSTblContaCorrente1
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 214
                Top = 66
                Width = 58
                Height = 21
                Color = 16249066
                DataField = 'CTCRA15AGENCIA'
                DataSource = DSTblContaCorrente1
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit7: TDBEdit
                Left = 273
                Top = 66
                Width = 94
                Height = 21
                Color = 16249066
                DataField = 'CTCRA15NUMERO'
                DataSource = DSTblContaCorrente1
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit8: TDBEdit
                Left = 369
                Top = 66
                Width = 59
                Height = 21
                Color = 16249066
                DataField = 'CTCRN2LIMITE'
                DataSource = DSTblContaCorrente1
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
            end
            object GroupBox2: TGroupBox
              Left = 8
              Top = 102
              Width = 435
              Height = 42
              Caption = '&Opera'#231#227'o Banc'#225'ria'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object ComboOperacaoBanco: TRxDBLookupCombo
                Left = 7
                Top = 17
                Width = 422
                Height = 21
                DropDownCount = 8
                DisplayEmpty = 'Selecione uma opera'#231#227'o banc'#225'ria...'
                LookupField = 'OPBCICOD'
                LookupDisplay = 'OPBCA60DESCR'
                LookupSource = DSTblOperacaoBanco
                TabOrder = 0
              end
            end
            object GroupBox3: TGroupBox
              Left = 9
              Top = 199
              Width = 435
              Height = 88
              Caption = '&Hist'#243'rico'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              object MemoHistorico: TMemo
                Left = 4
                Top = 14
                Width = 426
                Height = 70
                TabOrder = 0
              end
            end
            object GroupDataMov: TGroupBox
              Left = 8
              Top = 145
              Width = 134
              Height = 53
              Caption = 'Data Movimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object DateEditMovBanco: TDateEdit
                Left = 5
                Top = 22
                Width = 121
                Height = 21
                NumGlyphs = 2
                TabOrder = 0
              end
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 365
        Width = 505
        Height = 73
        Align = alBottom
        Color = 16249066
        TabOrder = 2
        object Label11: TLabel
          Left = 190
          Top = 3
          Width = 223
          Height = 24
          Caption = 'Valor total da opera'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 3
          Top = 3
          Width = 70
          Height = 16
          Caption = 'Vlr. Juros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel
          Left = 3
          Top = 48
          Width = 72
          Height = 16
          Caption = 'Vlr. Desc.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 3
          Top = 25
          Width = 69
          Height = 16
          Caption = 'Vlr. Multa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object EditValorTotal: TCurrencyEdit
          Left = 222
          Top = 39
          Width = 137
          Height = 24
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object EditVlrJuros: TCurrencyEdit
          Left = 76
          Top = 5
          Width = 84
          Height = 21
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 1
        end
        object EditVlrDesc: TCurrencyEdit
          Left = 76
          Top = 50
          Width = 84
          Height = 21
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 2
        end
        object EditVlrMulta: TCurrencyEdit
          Left = 76
          Top = 27
          Width = 84
          Height = 21
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 3
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 505
        Height = 43
        Align = alTop
        BorderWidth = 1
        Color = 16249066
        TabOrder = 0
        object Label28: TLabel
          Left = 4
          Top = 1
          Width = 87
          Height = 13
          Caption = '&Tipo Liquida'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboTipoLiquidacao: TRxDBLookupCombo
          Left = 3
          Top = 17
          Width = 470
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Selecione um Tipo de Liquida'#231#227'o...'
          LookupField = 'TPLQICOD'
          LookupDisplay = 'TPLQA60DESCR'
          LookupSource = DSSQLTipoLiquidacao
          TabOrder = 0
        end
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 639
    inherited PanelCabecalho: TPanel
      Width = 639
      inherited PanelNavigator: TPanel
        Width = 639
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 639
          inherited BtnFecharTela: TSpeedButton
            Left = 646
            Width = 75
          end
          object Buttongerar: TSpeedButton
            Left = 3
            Top = 3
            Width = 106
            Height = 25
            Caption = '&Pagar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              F6040000424DF60400000000000036040000280000000C000000100000000100
              080000000000C0000000CE0E0000C40E00000001000000000000000000008080
              8000000080000080800000800000808000008000000080008000408080004040
              0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
              FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
              80008000FF004080FF007F7F7F00F0CAA6001084E80008E2FC000844520052C4
              E8000E64E7004684FB000DB8E70094E3F800406CF6000E94E800041944000E79
              E80007DAE900CFE4EC003BBCE4000468840064868C003FA5F30004B2CC000444
              FC0050D4F800B41E040004667B0006A0BB008CCDE7000BC4F9000584FC000594
              FC000412CC0005A8FC005CA9FC000574FC000484AC0004B8FC004494FA00BDD3
              E5006352FC00CAF6FC000498CC008FB6D3000525280044AAC9000468AA000477
              CA000564FC00052E4500044364004DC4FC009CF2FC000B55E6002FC4F8000448
              AB0064B9DA006FD4F2008CD7EC0008A7D80045B4DA002D88F8002DD4FB002C78
              F9002A98F60004062400B0E4F600437AFA004492A400042C6800055ACB002A88
              EB0023B9E80048B4FB00042A8C0021A9EA0073C4E2001C34CC0026A8F8000695
              D7005888FC0030C4EB0050E3FC002A97EC00A3311B0071656100745E5C000454
              FC0021AAD7005698FC00047AAC00296CF700CBEAF70028B7F8000764D7000554
              630057FDFC00ECF5FB005284890038ADF2000E92AB000458AA001E79EA000CB4
              DC005B79FC0040BCFC000674D6002ACDF7007EB8D600597C8500075AD7000F8C
              E800056CFC008BDCF400627478000588D6002C6CEC000E9CE60049DDFC00058C
              FC0075A3AC008F4638000428FC000404FC00C4C6C40081544C0036A0B500ACAA
              AC000635850004236C000514190005598400679EAC000414AC00047284000435
              3C000438AB00051929000419FC000438FC00DCDADC005CB7FC0004B6BC00973D
              2C00B6B5B600B02408000437450005234500073C670004597C00864D44000549
              7C000428AB00064DD500488F9A00696C6F000695BA00B1F4FC0070E8FC00C2DC
              EC0004D6FC005D59FC00579EAC0044ACD4009C3A240004081800074B99000669
              BA000677BB000757BA0006679B000488BB00052A3B00074BBB0004579C000876
              98000406B8004B899500083B5800056E7A0097BCD5003F98A90029ADC7005D68
              FC00DDE5EC002CA8BC00A3CFE600E1ECF50021B6DA003CE2FC00B6CADC00A92A
              140004245700052D5C00041C3B00053A7B000ECBE900044CFC0072DBF500ABED
              FC0073CCE9001C5E6C0074FEFC005C7A7C0004327A00458CFA00459CFA004DCC
              FB004BBADC0005102700043EC400069DD6007A5B5400053C8500A5C5DC0079B1
              D100A6D8EC00A2DEF400054B660034A7BC00041CAC0051A4FC004CADFC00B9DE
              F400349AB4008DA6AC0054CCEC000F6CE800E0E0E000A4A0A000030303030303
              0303030303030303030314141414030303030303030314181814140303030303
              1414141818141414030303141418181818181814140303141818181414181818
              1403031414141414141818181403030314181818181818181403031418181818
              1818181403030314181818141414141414030314181818141418181814030314
              1418181818181814140303031414141818141414030303030303141818140303
              0303030303031414141403030303030303030303030303030303}
            ParentFont = False
            OnClick = ButtongerarClick
          end
          object ButtonImprimir: TRxSpeedButton
            Left = 109
            Top = 3
            Width = 106
            Height = 25
            DropDownMenu = PopupImpressao
            Caption = '&Imprimir'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000130B0000130B00000001000000010000000000000606
              060026262600272727002D2D2D002E2E2E002F2F2F0031313100333333003434
              340035353500363636003737370038383800393939003A3A3A003B3B3B003C3C
              3C003E3E3E003F3F3F003F3F4000404040004141410042424200434444004545
              4500464646004747470048484800494949004A4A4A004B4B4B004D4D4D004E4E
              4E004F4F4F004C4F5000505050005454540055555500585858005B5B5B005C5E
              5F005E5E5E006060600061616100636363006062640060636400646464006666
              660067676700696969006E6E6E006F6F6F007070700071717100727272007B7B
              7B007B7D7D007F7F7F0081838400868686008D8D8D0090929200959595009999
              9900989A9A009E9E9E009EA2A500A0A0A000A1A1A100A2A2A200A3A3A300A5A5
              A500A6A6A600A7A7A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
              AD00AFAFAF00B1B1B100B2B2B200B3B3B300B0B3B500B2B3B500B4B4B400B6B6
              B600B7B7B700BBBBBB00BBBCBC00BEBEBE00C3C3C300C3C5C500C6C6C600C7C9
              CB00C6CBCD00C9C9C900CBCBCB00CECECE00D2D2D200D5D5D500DBDBDB00D9DC
              DD00D8DDDE00D9DEDF00DCE0E200DDE1E300DEE2E300DFE3E400E0E0E000E1E1
              E100E2E2E200E0E4E500E1E5E600E2E6E700E5E5E500E3E7E800E5E8E900E6E9
              EA00E7E9EA00E8E8E800E9E9E900E8EAEB00EAEAEA00EBEBEB00E9EBEC00EAEC
              ED00EBEDEE00EDEDED00ECEEEF00EEEEEE00EFEFEF00EDEFF000EEF0F100EFF1
              F100F0F0F000F0F2F200F1F3F300F2F2F200F3F3F300F2F4F400F3F4F500F4F4
              F400F4F5F600F5F6F700F6F6F600F6F7F700F6F7F800F9FAFA00FAFAFA00BEBE
              BE00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000999999999999
              9999999999999999999999999999999999999999999999999999999999999999
              9999999999999999999999999999999999999999999999999999999999999999
              9999999999999999999999999900000000009999999999999999999999999999
              99990000001C36380F1200999999999999999999999999000000162826303735
              15070C000099999999999999990000202426221A19212C390E10040A09009999
              999999990028281F1A1E2B3D4745433B0C0F11080E1100009999999900311B2D
              48514F4D4B49403908020F11130F0A00999999990033465A58544E4745416670
              5E17060A1215100099999999005553524D4C4D6676868A7B8D681B0E110D1600
              9999999900504E4C5B718E838D867F7E7B7C6716030B0F0099999999003E5A7F
              9894918D8A85833F2E232F18321D050099999999990000647C837C725729293C
              566A62142A3400009999999999999900006559423A8079756F6C6B5C00009999
              99999999999999999900014A8B87817A77736D69279999999999999999999999
              99999904928C88827D78746E6100999999999999999999999999990060938F89
              848079756F440099999999999999999999999999009796908B885F1A00000099
              9999999999999999999999999900956325000099999999999999999999999999
              9999999999990000999999999999999999999999999999999999999999999999
              9999999999999999999999999999999999999999999999999999999999999999
              9999999999999999999999999999999999999999999999999999}
            Layout = blGlyphLeft
            ParentFont = False
            Transparent = True
          end
          object ButtonCancel: TSpeedButton
            Left = 215
            Top = 3
            Width = 106
            Height = 25
            Caption = '&Cancelar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              02050000424D020500000000000036040000280000000C000000110000000100
              080000000000CC000000CE0E0000C40E00000001000000000000000000008080
              8000000080000080800000800000808000008000000080008000408080004040
              0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
              FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
              80008000FF004080FF00C0DCC000F0CAA600C7CAB700939874005C614700303F
              C800555BE300ECE3E800DAC9D200BBACBD008B738E0054455600E7CFC500C691
              7900AA654A00693E2E00BDC6A500848C5A006B6B310029310000B1C8F800909D
              CB00DDC1CF00B5849C00944A7B006B1052001A060800E7B59C00F7844A00AD39
              00009421000069110800E4EEE800D9E2D400A1B999006E9457006783AF006888
              CC00E0B7F900845A9C0052086B007B10BD00FCEDDA00F5CD9900F1B96D00EA93
              1E00923B1D00D2EDC900ABDE98007ACA5A0045872C00305C1F0047281B00DCD8
              EA00A9A9CD00575CB8001106AF002E248A00DACBCB00AD8C8C00845252006941
              4100442B2B00E9F8EB00C3EACA00A0E19D0040C43A001C7837008B9AB300B5BD
              DE005A6BAD000818840000084A00EBEBEB00F0ECCE00D9CE8400BCAB3B008E83
              2D005C5843009FBCB40067968F002D75660029553F006B7A8800545664008E91
              EA000E0DEF0009099B0014123D00DCDCDC00DDDCC100D0C99D00ACA171009D6B
              2B0069301100BDE6E20081CDC8003B948D002A55630061C4D60038C2E600CACE
              F700969EED002130BA0011185F00A0A0A000DAFDFE00A8FBFD0024F6F900116F
              8600BEE4E1009FBECB006596AB002B6384000B9ECD005EC7F40093B1F0002161
              E000184AB1000D275E005A5A5A0089FCEB0024F9D90006E1C000049B85000264
              5500BDD2F0006195DC002761B1000F488B000D79B1003491AF00D1E9F50084C3
              E4006BA4CF00348BCC004670B600E3FBFB00D6F6FA00C2F3FA00B9DEF8009CC8
              F90063EAF50080572300FE5DFF0093CEE20094C6DE000000BF0000BF000000BF
              BF00BF000000BF00BF00BFBF0000520052005200290051735B00B7CDD6009D00
              FF0098B1FB007A98A700729D9100506E66006685F200929EF70088B9FB00B5C2
              FF00A7C2F4007798EB005B78EB005A9CFF007B9CDE00445BB4008AA2E4006B9C
              DE0098A0DA008E9EBE00678ACA005A6ED300A5B5FF003562B2004478DB00697E
              DA0094C1F600466CD700BBC4DE002F52AD0073A5E700B7C0F100395EC6006390
              D60094B2E7005776B7003151B8002C4D9E0094A3CB007D88B700637BC6000E27
              75001C3489005356800065719D002D40800022336C001C419A00FFBDBD00FF59
              5900FFC6FF00FEFEB8004A66C8006BA4FF00528AE9006196F1007E97F7006B9C
              EF005D0070005B005200B87FFF00FFFF7C005B00CD00B77F0A00000001000000
              0A0000004C000000EE005B000000020000000200A400C86BF400030303030303
              0303030303030303030303030303030303030303030303030303030303030301
              0101030303030301010100000001030303030000000102021000010303001002
              0003030202100001001002000303030302021000100200030303030303000210
              0200030303030303030010021000010303030303001002150210000103030300
              1002150315021000010300100215030303150210000115151503030303031515
              1503030303030303030303030303030303030303030303030303030303030303
              030303030303}
            ParentFont = False
            OnClick = ButtonCancelClick
          end
        end
      end
    end
  end
  object PopupImpressao: TPopupMenu
    Left = 151
    Top = 3
    object PertoChek1: TMenuItem
      Caption = 'PertoChek'
      OnClick = PertoChek1Click
    end
  end
  object DSTblContaCorrente: TDataSource
    DataSet = TblContaCorrente
    Left = 179
    Top = 3
  end
  object TblContaCorrente: TTable
    DatabaseName = 'DB'
    TableName = 'CONTACORRENTE'
    Left = 207
    Top = 3
    object TblContaCorrenteCTCRICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTCRICOD'
      Required = True
    end
    object TblContaCorrenteBANCA5COD: TStringField
      DisplayLabel = 'C'#243'd.Banco'
      FieldName = 'BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object TblContaCorrenteCTCRA15AGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object TblContaCorrenteCTCRA15NUMERO: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object TblContaCorrenteCTCRA60TITULAR: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object TblContaCorrenteCTCRN2LIMITE: TFloatField
      DisplayLabel = 'Limite'
      FieldName = 'CTCRN2LIMITE'
    end
    object TblContaCorrenteBancoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoNome'
      LookupDataSet = TblBanco
      LookupKeyFields = 'BANCA5COD'
      LookupResultField = 'BANCA60NOME'
      KeyFields = 'BANCA5COD'
      Size = 30
      Lookup = True
    end
    object TblContaCorrenteCTCRN2SALDOATUAL: TFloatField
      FieldName = 'CTCRN2SALDOATUAL'
      DisplayFormat = '###0.00'
    end
  end
  object TblBanco: TTable
    DatabaseName = 'DB'
    TableName = 'BANCO'
    Left = 235
    Top = 3
    object TblBancoBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Required = True
      FixedChar = True
      Size = 5
    end
    object TblBancoBANCA60NOME: TStringField
      FieldName = 'BANCA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object SQLChequeEmitido: TQuery
    Tag = 2
    BeforePost = SQLChequeEmitidoBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from ChequeEmitido where CQEMA13ID IS NULL')
    Left = 263
    Top = 3
    object SQLChequeEmitidoCQEMA13ID: TStringField
      Tag = 2
      FieldName = 'CQEMA13ID'
      Origin = 'DB.CHEQUEEMITIDO.CQEMA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequeEmitidoEMPRICOD: TIntegerField
      Tag = 1
      FieldName = 'EMPRICOD'
      Origin = 'DB.CHEQUEEMITIDO.EMPRICOD'
    end
    object SQLChequeEmitidoCQEMICOD: TIntegerField
      Tag = 1
      FieldName = 'CQEMICOD'
      Origin = 'DB.CHEQUEEMITIDO.CQEMICOD'
    end
    object SQLChequeEmitidoCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.CHEQUEEMITIDO.CTCRICOD'
    end
    object SQLChequeEmitidoCQEMDEMIS: TDateTimeField
      FieldName = 'CQEMDEMIS'
      Origin = 'DB.CHEQUEEMITIDO.CQEMDEMIS'
    end
    object SQLChequeEmitidoCQEMDVENC: TDateTimeField
      FieldName = 'CQEMDVENC'
      Origin = 'DB.CHEQUEEMITIDO.CQEMDVENC'
    end
    object SQLChequeEmitidoCQEMN3VLR: TFloatField
      FieldName = 'CQEMN3VLR'
      Origin = 'DB.CHEQUEEMITIDO.CQEMN3VLR'
    end
    object SQLChequeEmitidoCQEMA60FAVORECIDO: TStringField
      FieldName = 'CQEMA60FAVORECIDO'
      Origin = 'DB.CHEQUEEMITIDO.CQEMA60FAVORECIDO'
      FixedChar = True
      Size = 60
    end
    object SQLChequeEmitidoCQEMINROCHEQUE: TIntegerField
      FieldName = 'CQEMINROCHEQUE'
      Origin = 'DB.CHEQUEEMITIDO.CQEMINROCHEQUE'
    end
    object SQLChequeEmitidoCQEMCCRUZADO: TStringField
      FieldName = 'CQEMCCRUZADO'
      Origin = 'DB.CHEQUEEMITIDO.CQEMCCRUZADO'
      FixedChar = True
      Size = 1
    end
    object SQLChequeEmitidoALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CHEQUEEMITIDO.ALINICOD'
    end
    object SQLChequeEmitidoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CHEQUEEMITIDO.REGISTRO'
    end
    object SQLChequeEmitidoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CHEQUEEMITIDO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLChequeEmitidoCQEMA60HIST: TStringField
      FieldName = 'CQEMA60HIST'
      Origin = 'DB.CHEQUEEMITIDO.CQEMA60HIST'
      FixedChar = True
      Size = 60
    end
  end
  object SQLOperacaoBanco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * '
      'from'
      '  OperacaoBanco'
      'where'
      '  OPBCCTIPO = '#39'D'#39'  '
      'order by'
      '  OPBCA60DESCR')
    Macros = <>
    Left = 291
    Top = 3
    object SQLOperacaoBancoOPBCICOD: TIntegerField
      FieldName = 'OPBCICOD'
      Origin = 'DB.OPERACAOBANCO.OPBCICOD'
    end
    object SQLOperacaoBancoOPBCA60DESCR: TStringField
      FieldName = 'OPBCA60DESCR'
      Origin = 'DB.OPERACAOBANCO.OPBCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoBancoOPBCCTIPO: TStringField
      FieldName = 'OPBCCTIPO'
      Origin = 'DB.OPERACAOBANCO.OPBCCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoBancoOPBCCALTSALDO: TStringField
      FieldName = 'OPBCCALTSALDO'
      Origin = 'DB.OPERACAOBANCO.OPBCCALTSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoBancoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOBANCO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoBancoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOBANCO.REGISTRO'
    end
  end
  object DSTblOperacaoBanco: TDataSource
    DataSet = SQLOperacaoBanco
    Left = 319
    Top = 3
  end
  object TblContaCorrente1: TTable
    DatabaseName = 'DB'
    TableName = 'CONTACORRENTE'
    Left = 347
    Top = 3
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTCRICOD'
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'C'#243'd.Banco'
      FieldName = 'BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object StringField2: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object BCDField1: TFloatField
      DisplayLabel = 'Limite'
      FieldName = 'CTCRN2LIMITE'
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoNome'
      LookupDataSet = TblBanco
      LookupKeyFields = 'BANCA5COD'
      LookupResultField = 'BANCA60NOME'
      KeyFields = 'BANCA5COD'
      Size = 30
      Lookup = True
    end
  end
  object DSTblContaCorrente1: TDataSource
    DataSet = TblContaCorrente1
    Left = 375
    Top = 3
  end
  object SQLOperacaoTesouraria: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '* '
      'FROM '
      'OPERACAOTESOURARIA '
      'WHERE '
      'OPTECDEBCRED <> "C"')
    Left = 403
    Top = 3
    object SQLOperacaoTesourariaOPTEICOD: TIntegerField
      FieldName = 'OPTEICOD'
      Origin = 'DB.OPERACAOTESOURARIA.OPTEICOD'
    end
    object SQLOperacaoTesourariaOPTEA60DESCR: TStringField
      FieldName = 'OPTEA60DESCR'
      Origin = 'DB.OPERACAOTESOURARIA.OPTEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoTesourariaOPTECDEBCRED: TStringField
      FieldName = 'OPTECDEBCRED'
      Origin = 'DB.OPERACAOTESOURARIA.OPTECDEBCRED'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoTesourariaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOTESOURARIA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoTesourariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOTESOURARIA.REGISTRO'
    end
  end
  object DSSQLOperacaoTesouraria: TDataSource
    DataSet = SQLOperacaoTesouraria
    Left = 431
    Top = 3
  end
  object SQLNumerario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * from NUMERARIO where NUMEA5TIPO = "DIN"')
    Left = 459
    Top = 3
    object SQLNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioNUMECVISTAPRAZO: TStringField
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMECATIVO: TStringField
      FieldName = 'NUMECATIVO'
      Origin = 'DB.NUMERARIO.NUMECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
    object SQLNumerarioOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.NUMERARIO.OPCXICOD'
    end
    object SQLNumerarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NUMERARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NUMERARIO.REGISTRO'
    end
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLNumerario
    Left = 487
    Top = 3
  end
  object TblAlinea: TTable
    DatabaseName = 'DB'
    TableName = 'ALINEA'
    Left = 515
    Top = 3
  end
  object DSTblAlinea: TDataSource
    DataSet = TblAlinea
    Left = 543
    Top = 3
  end
  object DSSQLPlanoContaCredito: TDataSource
    DataSet = SQLPlanoContaCredito
    Left = 543
    Top = 31
  end
  object SQLPlanoContaCredito: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'PLCTA15COD,'
      'PLCTA60DESCR'
      'FROM'
      'PLANODECONTAS'
      'WHERE'
      '(PLCTCTIPOSALDO = "C" '
      'OR'
      'PLCTCTIPOSALDO = "A")'
      'AND'
      'PLCTCANALSINT = "A" ')
    Macros = <>
    Left = 515
    Top = 31
    object SQLPlanoContaCreditoPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContaCreditoPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLPlanoContaDebito: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'PLCTA15COD,'
      'PLCTA60DESCR'
      'FROM'
      'PLANODECONTAS'
      'WHERE'
      '(PLCTCTIPOSALDO = "D"'
      'or'
      'PLCTCTIPOSALDO = "A")'
      'AND'
      'PLCTCANALSINT = "A" ')
    Macros = <>
    Left = 515
    Top = 59
    object StringField11: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object StringField12: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPlanoContaDebito: TDataSource
    DataSet = SQLPlanoContaDebito
    Left = 543
    Top = 59
  end
  object SQLTipoLiquidacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'TIPOLIQUIDACAO')
    Macros = <>
    Left = 80
    Top = 3
    object SQLTipoLiquidacaoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.TIPOLIQUIDACAO.TPLQICOD'
    end
    object SQLTipoLiquidacaoTPLQA60DESCR: TStringField
      FieldName = 'TPLQA60DESCR'
      Origin = 'DB.TIPOLIQUIDACAO.TPLQA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLTipoLiquidacao: TDataSource
    DataSet = SQLTipoLiquidacao
    Left = 108
    Top = 3
  end
end
