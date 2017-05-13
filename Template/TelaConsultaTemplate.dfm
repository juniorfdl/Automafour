object FormTelaConsultaTemplate: TFormTelaConsultaTemplate
  Left = 296
  Top = 207
  Width = 783
  Height = 480
  Caption = 'FormTelaConsultaTemplate'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBoxFundo: TScrollBox
    Left = 0
    Top = 0
    Width = 767
    Height = 441
    Align = alClient
    TabOrder = 0
    object PanelCentral: TPanel
      Left = 0
      Top = 80
      Width = 749
      Height = 358
      BevelOuter = bvNone
      Color = 15461355
      TabOrder = 0
      object PanelProcura: TPanel
        Left = 0
        Top = 0
        Width = 749
        Height = 47
        Align = alTop
        BevelOuter = bvNone
        Color = 16249066
        TabOrder = 0
        object EditProcura: TMaskEdit
          Left = 321
          Top = 17
          Width = 232
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyDown = EditProcuraKeyDown
          OnKeyPress = EditProcuraKeyPress
        end
        object PanelIndice: TPanel
          Left = 0
          Top = 0
          Width = 318
          Height = 47
          Align = alLeft
          BevelOuter = bvNone
          Color = 16249066
          TabOrder = 0
          object LblProcurarPor: TLabel
            Left = 10
            Top = 3
            Width = 71
            Height = 13
            Caption = '&Procurar por'
            FocusControl = ComboOrdem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LblOrdenarPor: TLabel
            Left = 167
            Top = 3
            Width = 84
            Height = 13
            Caption = '&Ordenando por'
            FocusControl = ComboOrdem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComboOrdem: TComboBox
            Left = 1
            Top = 18
            Width = 157
            Height = 21
            Style = csDropDownList
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            Sorted = True
            TabOrder = 0
            OnClick = ComboOrdemClick
          end
          object ComboOrder: TComboBox
            Left = 159
            Top = 18
            Width = 157
            Height = 21
            Style = csDropDownList
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            Sorted = True
            TabOrder = 1
          end
        end
      end
      object DBGridLista: TDBGrid
        Left = 0
        Top = 47
        Width = 749
        Height = 311
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSTemplate
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnKeyDown = DBGridListaKeyDown
      end
    end
    object ScrollBoxTopo: TScrollBox
      Left = 0
      Top = 0
      Width = 749
      Height = 80
      Align = alTop
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clBlack
      ParentColor = False
      TabOrder = 1
      object PanelCabecalho: TPanel
        Left = 0
        Top = 0
        Width = 749
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
        object LabelRegistros: TLabel
          Left = 7
          Top = 28
          Width = 54
          Height = 13
          Caption = 'Registros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelDataHoraAlteracao: TLabel
          Left = 649
          Top = 29
          Width = 95
          Height = 13
          BiDiMode = bdRightToLeft
          Caption = 'Ultima Alteracao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
        object PanelNavigator: TPanel
          Left = 0
          Top = 48
          Width = 749
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Color = clSilver
          TabOrder = 0
          object AdvPanelNavigator: TAdvOfficeStatusBar
            Left = 0
            Top = 0
            Width = 749
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
              Left = 666
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
            object LabelRetornar: TSpeedButton
              Left = 10
              Top = 3
              Width = 81
              Height = 25
              Caption = '&Retornar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                76060000424D7606000000000000360400002800000018000000180000000100
                08000000000040020000130B0000130B0000000100000001000000000000B8D0
                DC0075848C0093A6B0008B9DA60070A08C00678F7E005D697000A6C4B70085AE
                9D0097BAAB007D9F91007888900081A69600597567006D7E74005F6C7200626F
                760054685C004F615600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
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
                0000000000000000000000000000000000000000000000000000141414141414
                1414141414141414141414141414141414141414141414141414141414141414
                1414141414141414141414141414141414141414141414141414141414141414
                1414141414141414141414141414141414141414141414141414141414141414
                1414141414141414141414141414141414141414141414141414141414141414
                1414141414141414141414141414000000000000000014000000141414141414
                1414141414140001030200101110001213130000001414141414141414000000
                0000000203030C000D0E000F0F00141414141414140003010302070003010100
                0A05000B0B001414141414141414000000000002030101000809000505001414
                1414141414000301010307000301010008090005050014141414141414140000
                0000000103010005050600000014141414141414141414141400010400001400
                0000141414141414141414141414141414000100141414141414141414141414
                1414141414141414000103001414141414141414141414141414141414141414
                0001030014141414141414141414141414141414141414140001020014141414
                1414141414141414141414141414141414000000141414141414141414141414
                1414141414141414141414141414141414141414141414141414141414141414
                1414141414141414141414141414141414141414141414141414141414141414
                1414141414141414141414141414141414141414141414141414141414141414
                1414141414141414141414141414141414141414141414141414}
              Margin = 0
              ParentFont = False
              Spacing = 1
              OnClick = LabelRetornarClick
            end
          end
        end
      end
    end
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLTemplate
    Left = 149
    Top = 11
  end
  object SQLTemplate: TRxQuery
    AfterOpen = SQLTemplateAfterOpen
    AfterScroll = SQLTemplateAfterScroll
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From Tabela Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 121
    Top = 11
  end
  object DSMasterTemplate: TDataSource
    Left = 190
    Top = 12
  end
  object SQLCount: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 91
    Top = 11
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
