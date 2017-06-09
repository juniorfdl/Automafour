object FormConsultaProvedor: TFormConsultaProvedor
  Left = 138
  Top = 99
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Selecione o Provedor'
  ClientHeight = 231
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 190
    Width = 507
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BtnOk: TBitBtn
      Left = 141
      Top = 9
      Width = 89
      Height = 25
      Caption = '&OK'
      Default = True
      TabOrder = 0
      OnClick = BtnOkClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 261
      Top = 9
      Width = 89
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object PanelOpcoes: TPanel
    Left = 0
    Top = 48
    Width = 507
    Height = 142
    Align = alBottom
    TabOrder = 1
    Visible = False
    object PanelPagContas: TPanel
      Left = 174
      Top = 7
      Width = 185
      Height = 131
      BevelInner = bvLowered
      TabOrder = 2
      Visible = False
      object Label3: TLabel
        Left = 2
        Top = 2
        Width = 181
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Dados para pagamento de contas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 30
        Top = 46
        Width = 84
        Height = 13
        Caption = 'Valor da conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditVlrConta: TCurrencyEdit
        Left = 31
        Top = 61
        Width = 121
        Height = 21
        AutoSize = False
        CheckOnExit = True
        TabOrder = 0
      end
    end
    object RadioOpcoes: TRadioGroup
      Left = 4
      Top = 2
      Width = 166
      Height = 136
      Caption = 'Op'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Administrativa'
        'Consulta de Cheques'
        'Pagamento de Contas')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioOpcoesClick
    end
    object PanelConsultaCheque: TPanel
      Left = 174
      Top = 7
      Width = 185
      Height = 131
      BevelInner = bvLowered
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 2
        Top = 2
        Width = 181
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Dados para consulta de cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 30
        Top = 46
        Width = 94
        Height = 13
        Caption = 'Valor do cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditValorCheque: TCurrencyEdit
        Left = 31
        Top = 61
        Width = 121
        Height = 21
        AutoSize = False
        CheckOnExit = True
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 507
    Height = 48
    Align = alTop
    TabOrder = 0
    object Label9: TLabel
      Left = 5
      Top = 3
      Width = 60
      Height = 16
      Caption = 'Provedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboColetor: TDBLookupComboBox
      Left = 4
      Top = 20
      Width = 499
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'PRCAA13ID'
      ListField = 'PRCAA60DESCR'
      ParentFont = False
      TabOrder = 0
    end
  end
end
