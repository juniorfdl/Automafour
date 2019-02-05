object FormTelaResumoFinanceiro: TFormTelaResumoFinanceiro
  Left = 279
  Top = 74
  Width = 774
  Height = 589
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelResumoFin: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 551
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object Label3: TLabel
      Left = 15
      Top = 231
      Width = 162
      Height = 24
      Caption = 'Contas Correntes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 188
      Top = 511
      Width = 187
      Height = 20
      Caption = 'Total Contas Correntes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 16
      Top = 208
      Width = 81
      Height = 20
      Caption = 'TOTAL.=>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 245
      Top = 208
      Width = 81
      Height = 20
      Caption = 'TOTAL.=>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxDBGrid1: TRxDBGrid
      Left = 13
      Top = 255
      Width = 493
      Height = 248
      TabStop = False
      BorderStyle = bsNone
      DataSource = DSSQLCC
      Options = [dgTitles, dgColumnResize]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CTCRA15NUMERO'
          Title.Caption = 'Conta'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTCRA60TITULAR'
          Title.Caption = 'Titular'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 215
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTCRN2LIMITE'
          Title.Alignment = taRightJustify
          Title.Caption = 'Limite'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTCRN2SALDOATUAL'
          Title.Alignment = taRightJustify
          Title.Caption = 'Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end>
    end
    object EditSaldoCC: TEdit
      Left = 379
      Top = 511
      Width = 103
      Height = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditTotalPagar: TEdit
      Left = 132
      Top = 209
      Width = 103
      Height = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EditTotalReceber: TEdit
      Left = 379
      Top = 209
      Width = 103
      Height = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object AdvOfficeStatusBar2: TAdvOfficeStatusBar
      Left = 1
      Top = 1
      Width = 756
      Height = 43
      AnchorHint = False
      Align = alTop
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
      object RxLabel1: TRxLabel
        Left = 8
        Top = 2
        Width = 216
        Height = 34
        Caption = 'Resumo Financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Impact'
        Font.Style = []
        ParentFont = False
        ShadowColor = 15195349
        ShadowPos = spRightBottom
        Transparent = True
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 44
      Width = 756
      Height = 161
      Align = alTop
      TabOrder = 5
      object Label1: TLabel
        Left = 13
        Top = -2
        Width = 142
        Height = 24
        Caption = 'Contas a Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 242
        Top = -2
        Width = 168
        Height = 24
        Caption = 'Contas a Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 26
        Width = 90
        Height = 20
        Caption = 'Vencidas...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 47
        Width = 99
        Height = 20
        Caption = 'Venc.Hoje...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 70
        Width = 109
        Height = 20
        Caption = 'Prox. 7 dias...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 244
        Top = 26
        Width = 123
        Height = 20
        Caption = 'Venc at'#233' 60 dd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 244
        Top = 47
        Width = 99
        Height = 20
        Caption = 'Venc.Hoje...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 244
        Top = 70
        Width = 109
        Height = 20
        Caption = 'Prox. 7 dias...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 509
        Top = 41
        Width = 150
        Height = 24
        Caption = 'Compras do Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 511
        Top = 106
        Width = 138
        Height = 24
        Caption = 'Vendas do Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 16
        Top = 92
        Width = 114
        Height = 20
        Caption = 'Prox.15 dias...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 244
        Top = 92
        Width = 114
        Height = 20
        Caption = 'Prox.15 dias...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 16
        Top = 114
        Width = 114
        Height = 20
        Caption = 'Prox.30 dias...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 16
        Top = 136
        Width = 114
        Height = 20
        Caption = 'Prox.45 dias...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 244
        Top = 114
        Width = 114
        Height = 20
        Caption = 'Prox.30 dias...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 244
        Top = 136
        Width = 114
        Height = 20
        Caption = 'Prox.45 dias...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditPagarVencidas: TEdit
        Left = 132
        Top = 27
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EditPagarHoje: TEdit
        Left = 132
        Top = 48
        Width = 103
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 1
      end
      object EditPagarAVencer: TEdit
        Left = 132
        Top = 70
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object EditRecAVencer: TEdit
        Left = 379
        Top = 70
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EditRecHoje: TEdit
        Left = 379
        Top = 48
        Width = 103
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 4
      end
      object EditRecVencidas: TEdit
        Left = 379
        Top = 27
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object EditComprasDia: TEdit
        Left = 519
        Top = 69
        Width = 133
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 6
      end
      object EditVendaDia: TEdit
        Left = 517
        Top = 133
        Width = 133
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 7
      end
      object EditPagarAVencer15: TEdit
        Left = 132
        Top = 92
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object EditRecAVencer15: TEdit
        Left = 379
        Top = 92
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object EditPagarAVencer30: TEdit
        Left = 132
        Top = 114
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object EditPagarAVencer45: TEdit
        Left = 132
        Top = 136
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object EditRecAVencer30: TEdit
        Left = 379
        Top = 114
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object EditRecAVencer45: TEdit
        Left = 379
        Top = 136
        Width = 103
        Height = 21
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
    end
  end
  object SQLCC: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONTACORRENTE')
    Macros = <>
    Left = 560
    Top = 357
    object SQLCCCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.CONTACORRENTE.CTCRICOD'
    end
    object SQLCCBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CONTACORRENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCCCTCRA15AGENCIA: TStringField
      FieldName = 'CTCRA15AGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLCCCTCRA15NUMERO: TStringField
      FieldName = 'CTCRA15NUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object SQLCCCTCRA60TITULAR: TStringField
      FieldName = 'CTCRA60TITULAR'
      Origin = 'DB.CONTACORRENTE.CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLCCCTCRDABERTURA: TDateTimeField
      FieldName = 'CTCRDABERTURA'
      Origin = 'DB.CONTACORRENTE.CTCRDABERTURA'
    end
    object SQLCCCTCRN2LIMITE: TFloatField
      FieldName = 'CTCRN2LIMITE'
      Origin = 'DB.CONTACORRENTE.CTCRN2LIMITE'
      DisplayFormat = '#,##0.00'
    end
    object SQLCCCTCRN2SALDOATUAL: TFloatField
      FieldName = 'CTCRN2SALDOATUAL'
      Origin = 'DB.CONTACORRENTE.CTCRN2SALDOATUAL'
      DisplayFormat = '#,##0.00'
    end
  end
  object DSSQLCC: TDataSource
    DataSet = SQLCC
    Left = 588
    Top = 357
  end
  object SQLSoma: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 616
    Top = 357
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    BorderColor = clGreen
    PanelAppearanceLight.BorderColor = clGreen
    PanelAppearanceLight.BorderColorHot = clGray
    PanelAppearanceLight.BorderColorDown = 10240783
    PanelAppearanceLight.Color = clGreen
    PanelAppearanceLight.ColorTo = clGreen
    PanelAppearanceLight.ColorHot = 13958143
    PanelAppearanceLight.ColorHotTo = 6538487
    PanelAppearanceLight.ColorDown = 9232890
    PanelAppearanceLight.ColorDownTo = 1940207
    PanelAppearanceLight.ColorMirror = clGreen
    PanelAppearanceLight.ColorMirrorTo = clGreen
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
    PanelAppearanceDark.Color = clGreen
    PanelAppearanceDark.ColorTo = clGreen
    PanelAppearanceDark.ColorHot = 13958143
    PanelAppearanceDark.ColorHotTo = 6538487
    PanelAppearanceDark.ColorDown = 9232890
    PanelAppearanceDark.ColorDownTo = 1940207
    PanelAppearanceDark.ColorMirror = clGreen
    PanelAppearanceDark.ColorMirrorTo = clGreen
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
