object FormConfigPopUp: TFormConfigPopUp
  Left = 475
  Top = 202
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Configura'#231#227'o PopUp Agenda'
  ClientHeight = 163
  ClientWidth = 258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 258
    Height = 163
    Align = alClient
    Color = 12572888
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 173
      Top = 116
      Width = 73
      Height = 22
      Caption = 'OK'
      Flat = True
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
      OnClick = SpeedButton1Click
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 19
      Width = 241
      Height = 33
      TabOrder = 0
      object ExibirPopTarefa: TCheckBox
        Left = 10
        Top = 11
        Width = 145
        Height = 17
        Caption = 'Exibir PopUp Tarefa'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 66
      Width = 241
      Height = 36
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 14
        Width = 56
        Height = 13
        Caption = 'Avisar em'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboTimePopUp: TComboBox
        Left = 89
        Top = 10
        Width = 128
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = '05 Minutos'
        OnKeyDown = ComboTimePopUpKeyDown
        Items.Strings = (
          '05 Minutos'
          '10 Minutos'
          '15 Minutos'
          '20 Minutos'
          '30 Minutos'
          '45 Minutos'
          '50 Minutos'
          '60 Minutos')
      end
    end
  end
  object SQLPopUP: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CFGCALLCENTER')
    Left = 176
    Top = 8
  end
end
