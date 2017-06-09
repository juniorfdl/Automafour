object FormTelaItensIncluidosCupom: TFormTelaItensIncluidosCupom
  Left = 318
  Top = 78
  BorderIcons = []
  BorderStyle = bsNone
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
  OnClose = FormClose
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
    Caption = 'Consulta de Itens do Cupom'
    Color = clNavy
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
  object Label12: TLabel
    Left = 615
    Top = 539
    Width = 184
    Height = 13
    Caption = 'Produtos Devolvidos pelo cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 589
    Top = 534
    Width = 20
    Height = 20
    Brush.Color = clRed
  end
  object Shape2: TShape
    Left = 589
    Top = 513
    Width = 20
    Height = 20
    Brush.Color = clBlack
  end
  object Label1: TLabel
    Left = 615
    Top = 518
    Width = 163
    Height = 13
    Caption = 'Produtos vendidos ao cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object RxLabel3: TRxLabel
    Left = 252
    Top = 512
    Width = 37
    Height = 19
    Caption = 'COR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBText3: TDBText
    Left = 247
    Top = 531
    Width = 248
    Height = 23
    Color = clWhite
    DataField = 'COR'
    DataSource = FormTelaItens.DSSQLIntensVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object RxLabel8: TRxLabel
    Left = 6
    Top = 512
    Width = 63
    Height = 19
    Caption = 'MARCA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBText8: TDBText
    Left = 5
    Top = 531
    Width = 239
    Height = 23
    Color = clWhite
    DataField = 'MARCA'
    DataSource = FormTelaItens.DSSQLIntensVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object RxLabel1: TRxLabel
    Left = 505
    Top = 512
    Width = 39
    Height = 19
    Caption = 'TAM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Layout = tlBottom
    ParentFont = False
    ShadowColor = clWhite
    ShadowPos = spRightBottom
    Transparent = True
  end
  object DBText1: TDBText
    Left = 500
    Top = 531
    Width = 55
    Height = 23
    Color = clWhite
    DataField = 'TAMANHO'
    DataSource = FormTelaItens.DSSQLIntensVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object DBGrid: TDBGrid
    Left = 9
    Top = 42
    Width = 785
    Height = 463
    BorderStyle = bsNone
    DataSource = FormTelaItens.DSSQLIntensVenda
    FixedColor = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGridDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMITEM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'IT.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 29
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'd.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODA60DESCR'
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Caption = 'Ref'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 106
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'QTD.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRUNITBRUT'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr. Unit'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDESC'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr.Desc.'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRTOTAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vlr.Total'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end>
  end
end
