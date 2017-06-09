object FormTelaDadosCheque: TFormTelaDadosCheque
  Left = 249
  Top = 104
  Width = 798
  Height = 580
  BorderIcons = []
  Caption = 'Dados Cheque'
  Color = 14731440
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Times New Roman'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 36
  object Label1: TLabel
    Left = 660
    Top = 166
    Width = 80
    Height = 36
    Caption = 'Banco'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 13
    Top = 166
    Width = 329
    Height = 36
    Caption = 'Nome do Titular da Conta'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 13
    Top = 81
    Width = 234
    Height = 36
    Caption = 'CGC/CPF Cheque'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 782
    Height = 73
    Align = alTop
    Alignment = taCenter
    Caption = 'Dados do(s) Cheque(s)'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -64
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object NomeTitular: TEdit
    Left = 9
    Top = 201
    Width = 640
    Height = 42
    CharCase = ecUpperCase
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnExit = NomeTitularExit
  end
  object ListaCheques: TDBGrid
    Left = 8
    Top = 252
    Width = 768
    Height = 213
    BorderStyle = bsNone
    Color = clWhite
    FixedColor = 10053171
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgConfirmDelete]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnEnter = ListaChequesEnter
    OnExit = ListaChequesExit
    OnKeyDown = ListaChequesKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NroCheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Nro.Cheque(s)'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -21
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 238
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NroDias'
        Title.Caption = 'Nro Dias'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -21
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataVecto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -21
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 180
        Visible = True
      end
      item
        Color = 14731440
        Expanded = False
        FieldName = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -21
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 225
        Visible = True
      end>
  end
  object CGCPFChq: TEdit
    Left = 9
    Top = 116
    Width = 385
    Height = 42
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnExit = CGCPFChqExit
  end
  object BtnCancelar: TConerBtn
    Left = 576
    Top = 481
    Width = 200
    Height = 40
    Cursor = crHandPoint
    Cancel = True
    Caption = '&2 - Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    Spacing = 5
    Flat = False
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = clRed
    SymbolColorClose = clMaroon
    Transparent = True
  end
  object BtnOK: TConerBtn
    Left = 372
    Top = 481
    Width = 200
    Height = 40
    Cursor = crHandPoint
    Caption = '&1 - OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ModalResult = 7
    ParentFont = False
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
    Spacing = 10
    Flat = False
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = clRed
    SymbolColorClose = clMaroon
    Transparent = True
  end
  object Banco: TEdit
    Left = 657
    Top = 201
    Width = 118
    Height = 42
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnExit = BancoExit
  end
end
