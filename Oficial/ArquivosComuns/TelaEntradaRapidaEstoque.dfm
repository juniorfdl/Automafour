object FormTelaEntradaRapidaEstoque: TFormTelaEntradaRapidaEstoque
  Left = 665
  Top = 165
  Width = 633
  Height = 437
  Caption = 'Entrada R'#225'pida no Estoque'
  Color = 16249066
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object GroupValoresAtuais: TGroupBox
    Left = 15
    Top = 93
    Width = 293
    Height = 296
    Caption = '  Valores Atuais '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label34: TLabel
      Left = 20
      Top = 24
      Width = 116
      Height = 13
      Caption = 'Valor Ultima Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 152
      Top = 108
      Width = 101
      Height = 13
      Caption = 'Valor Custo M'#233'dio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 69
      Top = 62
      Width = 46
      Height = 13
      Caption = 'Frete %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 63
      Width = 33
      Height = 13
      Caption = 'IPI %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 20
      Top = 160
      Width = 103
      Height = 13
      Caption = 'Margem Varejo %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 152
      Top = 160
      Width = 107
      Height = 13
      Caption = 'Valor Venda Varejo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 152
      Top = 208
      Width = 117
      Height = 13
      Caption = 'Valor Venda Atacado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 20
      Top = 206
      Width = 106
      Height = 13
      Caption = 'Margem Atacad %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 20
      Top = 263
      Width = 117
      Height = 13
      Caption = 'Saldo de Estoque =>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 122
      Top = 64
      Width = 44
      Height = 13
      Caption = 'Desp %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 20
      Top = 112
      Width = 64
      Height = 13
      Caption = 'Valor Custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 179
      Top = 64
      Width = 30
      Height = 13
      Caption = 'ST %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 228
      Top = 64
      Width = 40
      Height = 13
      Caption = 'Dif.Icm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditUltCompra: TCurrencyEdit
      Left = 20
      Top = 38
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DecimalPlaces = 4
      DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditCustoMedio: TCurrencyEdit
      Left = 152
      Top = 124
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DecimalPlaces = 4
      DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditFrete: TCurrencyEdit
      Left = 66
      Top = 76
      Width = 52
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EditIPI: TCurrencyEdit
      Left = 20
      Top = 76
      Width = 42
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EditMargemVarejo: TCurrencyEdit
      Left = 20
      Top = 174
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object EditValorVendaVarejo: TCurrencyEdit
      Left = 152
      Top = 176
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object EditValorVendaAtacado: TCurrencyEdit
      Left = 152
      Top = 220
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object EditMargemAtacado: TCurrencyEdit
      Left = 20
      Top = 220
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EditSaldoEstoqueatual: TCurrencyEdit
      Left = 152
      Top = 256
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object EditDespesa: TCurrencyEdit
      Left = 122
      Top = 76
      Width = 47
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object editCusto: TCurrencyEdit
      Left = 20
      Top = 126
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DecimalPlaces = 4
      DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object editCST: TCurrencyEdit
      Left = 173
      Top = 76
      Width = 44
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object editDifIcms: TCurrencyEdit
      Left = 222
      Top = 76
      Width = 47
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
  end
  object GroupNovosValores: TGroupBox
    Left = 316
    Top = 93
    Width = 293
    Height = 296
    Caption = ' Novos Valores '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label9: TLabel
      Left = 153
      Top = 25
      Width = 88
      Height = 13
      Caption = 'Qtde Comprada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 21
      Top = 25
      Width = 93
      Height = 13
      Caption = 'Valor de Compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 23
      Top = 64
      Width = 33
      Height = 13
      Caption = 'IPI %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 72
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Frete %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 21
      Top = 112
      Width = 64
      Height = 13
      Caption = 'Valor Custo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 21
      Top = 166
      Width = 103
      Height = 13
      Caption = 'Margem Varejo %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 22
      Top = 213
      Width = 113
      Height = 13
      Caption = 'Margem Atacado %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 149
      Top = 166
      Width = 107
      Height = 13
      Caption = 'Valor Venda Varejo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 149
      Top = 213
      Width = 117
      Height = 13
      Caption = 'Valor Venda Atacado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 131
      Top = 64
      Width = 44
      Height = 13
      Caption = 'Desp %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 145
      Top = 112
      Width = 102
      Height = 13
      Caption = 'Custo M'#233'dio Atual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 184
      Top = 64
      Width = 30
      Height = 13
      Caption = 'ST %'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 229
      Top = 64
      Width = 40
      Height = 13
      Caption = 'Dif.Icm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditQtdeComprada: TCurrencyEdit
      Left = 150
      Top = 39
      Width = 117
      Height = 21
      AutoSize = False
      Color = clWhite
      DecimalPlaces = 3
      DisplayFormat = '0.000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditNovoValorCompra: TCurrencyEdit
      Left = 17
      Top = 39
      Width = 117
      Height = 21
      AutoSize = False
      Color = clWhite
      DecimalPlaces = 4
      DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = EditNovoValorCompraExit
    end
    object EditNovoIPI: TCurrencyEdit
      Left = 18
      Top = 77
      Width = 48
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = EditNovoValorCompraExit
    end
    object EditNovoFrete: TCurrencyEdit
      Left = 69
      Top = 77
      Width = 56
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = EditNovoValorCompraExit
    end
    object EditNovoCustoMedio: TCurrencyEdit
      Left = 18
      Top = 126
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DecimalPlaces = 4
      DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object EditNovaMargemVarejo: TCurrencyEdit
      Left = 17
      Top = 180
      Width = 117
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnExit = EditNovoValorCompraExit
    end
    object EditNovaMargemAtacado: TCurrencyEdit
      Left = 18
      Top = 227
      Width = 117
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnExit = EditNovoValorCompraExit
    end
    object EditNovoValorVendaVarejo: TCurrencyEdit
      Left = 145
      Top = 180
      Width = 117
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnEnter = EditNovoValorVendaVarejoEnter
      OnExit = EditNovoValorVendaVarejoExit
    end
    object EditNovoValorVendaAtacado: TCurrencyEdit
      Left = 145
      Top = 227
      Width = 117
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnEnter = EditNovoValorVendaAtacadoEnter
      OnExit = EditNovoValorVendaAtacadoExit
    end
    object EditNovoDespesa: TCurrencyEdit
      Left = 128
      Top = 77
      Width = 51
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnExit = EditNovoValorCompraExit
    end
    object EditCustoMedioCalculado: TCurrencyEdit
      Left = 146
      Top = 126
      Width = 117
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12572888
      DecimalPlaces = 4
      DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object editNovoCST: TCurrencyEdit
      Left = 181
      Top = 77
      Width = 43
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnExit = EditNovoValorCompraExit
    end
    object editNovoDifIcms: TCurrencyEdit
      Left = 226
      Top = 77
      Width = 43
      Height = 21
      AutoSize = False
      Color = clWhite
      DisplayFormat = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnExit = EditNovoValorCompraExit
    end
  end
  object ScrollBoxTopo: TScrollBox
    Left = 0
    Top = 0
    Width = 617
    Height = 80
    Align = alTop
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBlack
    ParentColor = False
    TabOrder = 3
    object PanelCabecalho: TPanel
      Left = 0
      Top = 0
      Width = 617
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object LabelTitulo: TLabel
        Left = 2
        Top = 3
        Width = 62
        Height = 26
        Caption = 'T'#237'tulo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PanelNavigator: TPanel
        Left = 0
        Top = 48
        Width = 617
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        Color = clSilver
        TabOrder = 0
        object AdvPanelNavigator: TAdvOfficeStatusBar
          Left = 0
          Top = 0
          Width = 617
          Height = 32
          AnchorHint = False
          Align = alClient
          Panels = <
            item
              AppearanceStyle = psLight
              DateFormat = 'mm/dd/yyyy'
              Progress.BackGround = clNone
              Progress.Indication = piPercentage
              Progress.Min = 0
              Progress.Max = 100
              Progress.Position = 0
              Progress.Level0Color = clLime
              Progress.Level0ColorTo = 14811105
              Progress.Level1Color = clYellow
              Progress.Level1ColorTo = 13303807
              Progress.Level2Color = 5483007
              Progress.Level2ColorTo = 11064319
              Progress.Level3Color = clRed
              Progress.Level3ColorTo = 13290239
              Progress.Level1Perc = 70
              Progress.Level2Perc = 90
              Progress.BorderColor = clBlack
              Progress.ShowBorder = False
              Progress.Stacked = False
              TimeFormat = 'hh:mm:ss'
              Width = 50
            end>
          SimplePanel = False
          SizeGrip = False
          URLColor = clBlue
          Styler = AdvOfficeStatusBarOfficeStyler1
          Version = '1.3.0.2'
          object BtnFecharTela: TSpeedButton
            Tag = 3
            Left = 525
            Top = 4
            Width = 76
            Height = 25
            Cursor = crHandPoint
            Hint = 'Fechar Tela'
            Caption = '&Fechar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000130B0000130B0000000100000001000000000000DCE4
              E4007975BE00817DC6002D2D2D004F4D8A005B579E005F5EA7006866AF00716D
              B6008986CD0008080800FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000B
              0B0B0B0B0B0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0001010000000000000C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0001010101000000000C0C0C0C0C0C0C0C0C0C0C
              0C0C00000001010101010100000C0C0C0C0C0C0C0C0C0C0C0C0C000200010101
              01010100000C0C0C0C0C0C0C0C000000000000020300010101010100000C0C0C
              0C0C0C0C0C00050607080902030A000101010100000C0C0C0C0C0C0C0C000506
              07080902030A000100040100000C0C0C0C0C0C0C0C0000000000000203000101
              04000100000C0C0C0C0C0C0C0C0C0C0C0C0C00020001010101010100000C0C0C
              0C0C0C0C0C0C0C0C0C0C00000001010101010100000C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0001010101010100000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00010101
              01010100000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000000000C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
              0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C}
            ParentFont = False
            OnClick = BtnFecharTelaClick
          end
          object LabelGravar: TSpeedButton
            Tag = 3
            Left = 19
            Top = 4
            Width = 87
            Height = 25
            Cursor = crHandPoint
            Caption = 'Gravar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              C2040000424DC204000000000000420000002800000018000000180000000100
              1000030000008004000000000000000000000000000000000000007C0000E003
              00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7F00000911742E4B199B6F524200000000FF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00006C19742E742E7B6BBD77D652
              7B6B313EA4100000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7F0000D746742E4B19DD77A50C95367B6F9C73D65A6B2100000000FF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000112EB63A742E185FDE7B2A197B6B
              9C739B6F7B6F313E742EA50C00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              0000D746742E742E4B193967DD77DD77BC739C73D6520911742E081185080000
              FF7FFF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ABD73BD73742E742E0811B552
              BD779C730821742E4B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
              184FBD73DE7B304ADE77BD73742E742E0811E7146C19742E4B19742E0000FF7F
              FF7FFF7FFF7FFF7FFF7FFF7F00008D21B63ADD77DE7B304A00000000DE77BD73
              742E742E4B194B19742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F00001853
              BD73DE7B304ADE7BCD626339000000009B6FBD73742E742E742E0000FF7FFF7F
              FF7FFF7FFF7FFF7FFF7F0000EF31D746DD77DE7B304ADE7BDE7B0000EC6AE845
              0000DE7BBD73742EE7140000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000D7463957
              7C6BDE7BDE7B304ADE7BDE7B0000EC6AE8450000BD73742E0000FF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7F00000000B63A39575B63DE7BDE7BDE7BDE7B0000
              EC6AE8450000A50C0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              000000005B6318535B63DE7BDE7BDE7B0000EC6AE8450000FF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000005B6318535B63DE7B
              DD770000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7F000000005B631853BD73742E0000EC6AE8450000FF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000
              742EE71400000000EC6AE8450000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7FFF7F0000EC6AE8450000
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7F0000EC6A0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              FF7FFF7FFF7F}
            Margin = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Spacing = 1
            OnClick = LabelGravarClick
          end
        end
      end
    end
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    BorderColor = 14986888
    PanelAppearanceLight.BorderColor = 14922381
    PanelAppearanceLight.BorderColorHot = clGray
    PanelAppearanceLight.BorderColorDown = 10240783
    PanelAppearanceLight.Color = 16440774
    PanelAppearanceLight.ColorTo = 14854530
    PanelAppearanceLight.ColorHot = 13958143
    PanelAppearanceLight.ColorHotTo = 6538487
    PanelAppearanceLight.ColorDown = 9232890
    PanelAppearanceLight.ColorDownTo = 1940207
    PanelAppearanceLight.ColorMirror = 14854530
    PanelAppearanceLight.ColorMirrorTo = 14854530
    PanelAppearanceLight.ColorMirrorHot = 6538487
    PanelAppearanceLight.ColorMirrorHotTo = 6538487
    PanelAppearanceLight.ColorMirrorDown = 1940207
    PanelAppearanceLight.ColorMirrorDownTo = 1940207
    PanelAppearanceLight.TextColor = clBlack
    PanelAppearanceLight.TextColorHot = clBlack
    PanelAppearanceLight.TextColorDown = clBlack
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = clGray
    PanelAppearanceDark.BorderColorDown = 10240783
    PanelAppearanceDark.Color = 14986888
    PanelAppearanceDark.ColorTo = 14986888
    PanelAppearanceDark.ColorHot = 13958143
    PanelAppearanceDark.ColorHotTo = 6538487
    PanelAppearanceDark.ColorDown = 9232890
    PanelAppearanceDark.ColorDownTo = 1940207
    PanelAppearanceDark.ColorMirror = 14986888
    PanelAppearanceDark.ColorMirrorTo = 14986888
    PanelAppearanceDark.ColorMirrorHot = 6538487
    PanelAppearanceDark.ColorMirrorHotTo = 6538487
    PanelAppearanceDark.ColorMirrorDown = 1940207
    PanelAppearanceDark.ColorMirrorDownTo = 1940207
    PanelAppearanceDark.TextColor = clWhite
    PanelAppearanceDark.TextColorHot = clWhite
    PanelAppearanceDark.TextColorDown = clWhite
    PanelAppearanceDark.TextStyle = []
    Left = 412
    Top = 5
  end
end
