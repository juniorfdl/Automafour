inherited FormTelaLancamentoGradePedido: TFormTelaLancamentoGradePedido
  Left = 379
  Top = 127
  Width = 796
  Height = 546
  Caption = 'Lan'#231'amento por Grade'
  FormStyle = fsMDIForm
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 780
    Height = 508
    inherited PanelCentral: TPanel
      Width = 776
      Height = 424
      inherited PanelBarra: TPanel
        Top = 170
        Width = 0
        Height = 217
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 170
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object Label7: TLabel
          Left = 382
          Top = 49
          Width = 77
          Height = 13
          Caption = 'Valor Unit'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 171
          Top = 49
          Width = 69
          Height = 13
          Caption = '% Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 277
          Top = 49
          Width = 85
          Height = 13
          Caption = 'Valor Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 66
          Top = 10
          Width = 69
          Height = 13
          Caption = 'C'#243'd.Produto'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 589
          Top = 50
          Width = 66
          Height = 13
          Caption = 'Total Grade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 66
          Top = 49
          Width = 27
          Height = 13
          Caption = 'Qtde'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 492
          Top = 6
          Width = 61
          Height = 13
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 67
          Top = 91
          Width = 73
          Height = 13
          Caption = 'Observa'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 486
          Top = 49
          Width = 70
          Height = 13
          Caption = '% Comiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 67
          Top = 131
          Width = 173
          Height = 13
          Caption = 'Observa'#231#245'es Complementares'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 492
          Top = 131
          Width = 25
          Height = 13
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DbEditVlrUnit: TEvDBNumEdit
          Left = 382
          Top = 65
          Width = 101
          Height = 21
          AutoHideCalculator = False
          DataField = 'PVITN2VLRUNIT'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          TabOrder = 6
        end
        object DBEditPercDesc: TEvDBNumEdit
          Left = 171
          Top = 65
          Width = 101
          Height = 21
          AutoHideCalculator = False
          DataField = 'PVITN2PERCDESC'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          TabOrder = 4
        end
        object DBEditVlrDesc: TEvDBNumEdit
          Left = 277
          Top = 65
          Width = 101
          Height = 21
          AutoHideCalculator = False
          DataField = 'PVITN2VLRDESC'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          TabOrder = 5
        end
        object DBEdit1: TDBEdit
          Left = 66
          Top = 26
          Width = 99
          Height = 21
          TabStop = False
          Color = 16249066
          Ctl3D = True
          DataField = 'PRODICOD'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 171
          Top = 26
          Width = 310
          Height = 21
          TabStop = False
          BorderStyle = bsNone
          DataField = 'ProdutoLookUp'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit4: TEvDBNumEdit
          Left = 66
          Top = 65
          Width = 101
          Height = 21
          TabStop = False
          AutoHideCalculator = False
          Color = 16249066
          Ctl3D = True
          DataField = 'PVITN3QUANT'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 493
          Top = 24
          Width = 209
          Height = 21
          TabStop = False
          BorderStyle = bsNone
          DataField = 'ReferenciaLookUp'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 67
          Top = 106
          Width = 622
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PDVDA60OBS'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          TabOrder = 9
        end
        object EvDBNumEdit1: TEvDBNumEdit
          Left = 486
          Top = 65
          Width = 101
          Height = 21
          AutoHideCalculator = False
          DataField = 'PVITN2PERCCOMIS'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          Glyph.Data = {
            E6020000424DE60200000000000042000000280000001A0000000D0000000100
            100003000000A402000000000000000000000000000000000000007C0000E003
            00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
            EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
            EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
            FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
            FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
            FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
            FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
            FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
            EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
            FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
            070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
            EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
            FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
            FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
            FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
            FF5EFF5EFF5EFF5EFF5E}
          TabOrder = 7
        end
        object DBEdit2: TDBEdit
          Left = 67
          Top = 147
          Width = 419
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PDVDA255OBS1'
          DataSource = FormCadastroPedidoVendaItem.DSTemplate
          TabOrder = 10
        end
        object EditTotGrade: TCurrencyEdit
          Left = 589
          Top = 65
          Width = 101
          Height = 21
          TabStop = False
          AutoSize = False
          TabOrder = 8
        end
        object ComboLote: TRxDBLookupCombo
          Left = 489
          Top = 147
          Width = 200
          Height = 21
          DropDownCount = 8
          LookupField = 'LOTEA30NRO'
          LookupDisplay = 'LOTEA30NRO'
          LookupSource = DSSQLLote
          TabOrder = 11
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 170
        Width = 776
        Height = 217
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 20
        ParentColor = True
        TabOrder = 2
        object DBGridLista: TDBGrid
          Left = 20
          Top = 20
          Width = 736
          Height = 177
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          DataSource = DSTblQtde
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColLines, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnEnter = DBGridListaEnter
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 387
        Width = 776
        Height = 37
        Align = alBottom
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        object Label5: TLabel
          Left = 592
          Top = 12
          Width = 59
          Height = 13
          Caption = 'Qtde.Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditTotal: TCurrencyEdit
          Left = 659
          Top = 8
          Width = 95
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16249066
          Ctl3D = True
          DisplayFormat = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 776
      inherited PanelCabecalho: TPanel
        Width = 776
        inherited PanelNavigator: TPanel
          Width = 776
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 776
            inherited BtnFecharTela: TSpeedButton
              Left = 674
            end
            object BtnOk: TSpeedButton
              Left = 3
              Top = 3
              Width = 75
              Height = 25
              Caption = '&OK'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                DE040000424DDE0400000000000036040000280000000C0000000E0000000100
                080000000000A8000000130B0000130B0000000100000001000000000000A7C2
                B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
                88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
                FF00000000000000000000000000000000000000000000000000000000000000
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
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000111111111100
                11111111111111111111000B0011111111111111110009090011111111111111
                1100090F10001111111111110009090D0E0011111111110009090B000C060011
                11111100090800000A0200111111000909000011000206001111000708001111
                0003020011111100001111111100030600111111111111111100050200111111
                1111111111110003040011111111111111110001020011111111111111111100
                0011}
              ParentFont = False
              OnClick = BtnOkClick
            end
          end
        end
      end
    end
  end
  object SQLProdutoGrade: TRxQuery
    DatabaseName = 'DB'
    DataSource = FormCadastroPedidoVendaItem.DSTemplate
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    PRODUTO'
      'Where '
      '    PRODIAGRUPGRADE=:AgrupGradeLookUp'
      'order by'
      '    CORICOD,GRADICOD,GRTMICOD')
    Macros = <>
    Left = 29
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AgrupGradeLookUp'
        ParamType = ptUnknown
      end>
    object SQLProdutoGradePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoGradeGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGradeGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoGradeCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
  end
  object SQLGradeTamanho: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    GRADETAMANHO'
      'Where '
      '    GRADICOD=:GRADICOD')
    Macros = <>
    Left = 29
    Top = 153
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
      end>
    object SQLGradeTamanhoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADETAMANHO.GRADICOD'
    end
    object SQLGradeTamanhoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.GRADETAMANHO.GRTMICOD'
    end
    object SQLGradeTamanhoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Origin = 'DB.GRADETAMANHO.GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object SQLCor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From COR')
    Macros = <>
    Left = 29
    Top = 181
    object SQLCorCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object TblQtde: TMemoryTable
    BeforeInsert = TblQtdeBeforeInsert
    BeforeDelete = TblQtdeBeforeDelete
    OnCalcFields = TblQtdeCalcFields
    DatabaseName = 'Easy_Temp'
    EnableDelete = False
    TableName = 'TblQtde'
    Left = 57
    Top = 181
    object TblQtdeCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Visible = False
    end
    object TblQtdeCorLookUp: TStringField
      DisplayLabel = 'Cor'
      FieldKind = fkLookup
      FieldName = 'CorLookUp'
      LookupDataSet = SQLCor
      LookupKeyFields = 'CORICOD'
      LookupResultField = 'CORA30DESCR'
      KeyFields = 'CORICOD'
      Size = 60
      Lookup = True
    end
    object TblQtdeField1: TFloatField
      FieldName = '1'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField2: TFloatField
      FieldName = '2'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField3: TFloatField
      FieldName = '3'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField4: TFloatField
      FieldName = '4'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField5: TFloatField
      FieldName = '5'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField6: TFloatField
      FieldName = '6'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField7: TFloatField
      FieldName = '7'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField8: TFloatField
      FieldName = '8'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField9: TFloatField
      FieldName = '9'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField10: TFloatField
      FieldName = '10'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField11: TFloatField
      FieldName = '11'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField12: TFloatField
      FieldName = '12'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField13: TFloatField
      FieldName = '13'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField14: TFloatField
      FieldName = '14'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField15: TFloatField
      FieldName = '15'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeCod1: TIntegerField
      FieldName = 'Cod1'
      Visible = False
    end
    object TblQtdeCod2: TIntegerField
      FieldName = 'Cod2'
      Visible = False
    end
    object TblQtdeCod3: TIntegerField
      FieldName = 'Cod3'
      Visible = False
    end
    object TblQtdeCod4: TIntegerField
      FieldName = 'Cod4'
      Visible = False
    end
    object TblQtdeCod5: TIntegerField
      FieldName = 'Cod5'
      Visible = False
    end
    object TblQtdeCod6: TIntegerField
      FieldName = 'Cod6'
      Visible = False
    end
    object TblQtdeCod7: TIntegerField
      FieldName = 'Cod7'
      Visible = False
    end
    object TblQtdeCod8: TIntegerField
      FieldName = 'Cod8'
      Visible = False
    end
    object TblQtdeCod9: TIntegerField
      FieldName = 'Cod9'
      Visible = False
    end
    object TblQtdeCod10: TIntegerField
      FieldName = 'Cod10'
      Visible = False
    end
    object TblQtdeCod11: TIntegerField
      FieldName = 'Cod11'
      Visible = False
    end
    object TblQtdeCod12: TIntegerField
      FieldName = 'Cod12'
      Visible = False
    end
    object TblQtdeCod13: TIntegerField
      FieldName = 'Cod13'
      Visible = False
    end
    object TblQtdeCod14: TIntegerField
      FieldName = 'Cod14'
      Visible = False
    end
    object TblQtdeCod15: TIntegerField
      FieldName = 'Cod15'
      Visible = False
    end
    object TblQtdeTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object DSTblQtde: TDataSource
    DataSet = TblQtde
    Left = 57
    Top = 209
  end
  object SQLLote: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM LOTE')
    Macros = <>
    Left = 552
    Top = 224
    object SQLLoteLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.LOTE.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLLoteLOTEDVECTO: TDateTimeField
      FieldName = 'LOTEDVECTO'
      Origin = 'DB.LOTE.LOTEDVECTO'
    end
    object SQLLoteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.LOTE.REGISTRO'
    end
    object SQLLotePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.LOTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLLote: TDataSource
    DataSet = SQLLote
    Left = 580
    Top = 224
  end
end
