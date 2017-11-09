object FormTelaConsultaContratosCliente: TFormTelaConsultaContratosCliente
  Left = -1363
  Top = 281
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Advanced Control Cash'
  ClientHeight = 585
  ClientWidth = 804
  Color = 14731440
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 804
    Height = 35
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta de Documentos por Cliente'
    Color = 14731440
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel6: TRxLabel
    Left = 0
    Top = 549
    Width = 804
    Height = 36
    Align = alBottom
    Alignment = taCenter
    Caption = 
      'Pressione [ ESC ] para sair'#13#10'Pressione [F1] para ver ITENS do DO' +
      'CUMENTO'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object LabelCliente: TEdit
    Left = 14
    Top = 47
    Width = 775
    Height = 35
    TabStop = False
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 15
    Top = 89
    Width = 774
    Height = 382
    Caption = ' &PARCELAS '
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 770
      Height = 365
      Align = alClient
      BevelOuter = bvNone
      Color = 15461355
      TabOrder = 0
      object DBGridLista: TDBGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 365
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = False
        FixedColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGridListaCellClick
        OnColEnter = DBGridListaColEnter
        OnColExit = DBGridListaColExit
        OnDrawColumnCell = DBGridListaDrawColumnCell
        OnDblClick = DBGridListaDblClick
        OnKeyDown = DBGridListaKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CUPODEMIS'
            Title.Alignment = taCenter
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CTRCINROPARC'
            Title.Alignment = taCenter
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCDVENC'
            Title.Alignment = taCenter
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCN2VLR'
            Title.Alignment = taRightJustify
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Baixar'
            ReadOnly = False
            Title.Alignment = taCenter
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCN2VLRJURO'
            Title.Alignment = taRightJustify
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCN2VLRMULTA'
            Title.Alignment = taRightJustify
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCN2VLRDESC'
            Title.Alignment = taRightJustify
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorOrigem'
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CUPOA13ID'
            Title.Alignment = taCenter
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCA13ID'
            Title.Caption = 'ID Parcela'
            Title.Color = 10053171
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 16
    Top = 473
    Width = 773
    Height = 65
    ParentColor = True
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 131
      Top = 6
      Width = 92
      Height = 16
      Caption = 'Valor '#224' &Quitar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ShadowColor = clBlack
    end
    object RxLabel2: TRxLabel
      Left = 9
      Top = 6
      Width = 83
      Height = 16
      Caption = 'Valor Devido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ShadowColor = clBlack
    end
    object RxLabel3: TRxLabel
      Left = 352
      Top = 7
      Width = 100
      Height = 16
      Caption = 'Abatido Parcial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ShadowColor = clBlack
    end
    object RxLabel4: TRxLabel
      Left = 672
      Top = 6
      Width = 81
      Height = 16
      Caption = 'Selecionado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ShadowColor = clBlack
    end
    object BtnOk: TBitBtn
      Left = 473
      Top = 24
      Width = 81
      Height = 34
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 4
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
    object ValorPagar: TCurrencyEdit
      Left = 131
      Top = 24
      Width = 110
      Height = 33
      AutoSize = False
      CheckOnExit = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 247
      Top = 24
      Width = 100
      Height = 34
      Caption = '&Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        8E040000424D8E040000000000005600000028000000250000001B0000000100
        080000000000380400000000000000000000080000000800000000000000FF00
        000084840000FFFF000084008400C6C6C600FFFFFF00FFFFFF00060606060606
        0606060606060606060606060606060606060606060606060606060606060677
        7777060606060606060606060606060606060606060606060606060606060606
        0606060606060677777706060606060606060606060606060606060606060606
        0606060606060606060606060606060000000606060600000000000000000000
        0000000000000000000000000000000000000006060606777177060606000104
        01040104010401040104010401040104010401040104010401040100060606DD
        DDD0060606000302020202020202020202020202020202020202020202020202
        0202040006060677111706060600030202000000020000000200000002000000
        0200000000000000020201000606067777770606060003020205050002050500
        0205050002050500020705050505050002020400060606DDDDD0060606000302
        02020500020705000207050002070500020707070707070002020100060606B7
        B707060606000302020202020202020202020202020202020202020202020202
        02020400060606DDDDD006060600030202000000020000000200000002000000
        0200000002000000020201000606067771770606060003020205050002050500
        0205050002050500020505000205050002020400060606B07777060606000302
        0202050002070500020705000207050002070500020705000202010006060677
        7177060606000302020202020202020202020202020202020202020202020202
        020204000606060000D006060600030202000000020000000200000002000000
        0200000002000000020201000606064DDDD00606060003020205050002050500
        0205050002050500020505000205050002020400060606477177060606000302
        02020500020705000207050002070500020705000207050002020100060606D4
        4DD0060606000302020202020202020202020202020202020202020202020202
        0202040006060677717706060600030202000303030303030303030303030303
        0202020202020202020201000606060707700606060003020200070707070707
        0707070707070703020202020202020202020400060606444DD0060606000302
        020005050505050505050505050505030202020202020202020201000606067B
        7B07060606000302020000000000000000000000000000000202020202020202
        02020400060606DDDDD006060600030303030303030303030303030303030303
        0303030303030303030302000606067771770606060600000000000000000000
        0000000000000000000000000000000000000006060606077070060606060606
        0606060606060606060606060606060606060606060606060606060606060677
        7177060606060606060606060606060606060606060606060606060606060606
        0606060606060677777706060606060606060606060606060606060606060606
        060606060606060606060606060606DDDDD0}
    end
    object ValorDevido: TCurrencyEdit
      Left = 9
      Top = 24
      Width = 116
      Height = 33
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      TabOrder = 0
    end
    object ValorSaldo: TCurrencyEdit
      Left = 352
      Top = 24
      Width = 116
      Height = 33
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      TabOrder = 3
    end
    object BtnCancelar: TBitBtn
      Left = 559
      Top = 24
      Width = 81
      Height = 34
      Caption = 'Ca&ncel'
      TabOrder = 5
      Kind = bkCancel
    end
    object EditSel: TCurrencyEdit
      Left = 647
      Top = 24
      Width = 114
      Height = 33
      TabStop = False
      AutoSize = False
      CheckOnExit = True
      Color = clWhite
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      FormatOnEditing = True
      ParentFont = False
      TabOrder = 6
    end
  end
end
