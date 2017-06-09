object FormTelaSelecaoProduto: TFormTelaSelecaoProduto
  Left = 254
  Top = 164
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o Produto'
  ClientHeight = 322
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBoxFundo: TScrollBox
    Left = 0
    Top = 0
    Width = 562
    Height = 322
    Align = alClient
    Color = 15461355
    ParentColor = False
    TabOrder = 0
    object PanelCabecalho: TPanel
      Left = 0
      Top = 0
      Width = 558
      Height = 37
      Align = alTop
      BevelOuter = bvNone
      Color = 14731440
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object LabelTitulo: TLabel
        Left = 2
        Top = 5
        Width = 151
        Height = 25
        Caption = 'Sele'#231#227'o Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object PanelCentral: TPanel
      Left = 0
      Top = 37
      Width = 558
      Height = 212
      Align = alClient
      BevelOuter = bvNone
      Color = 15461355
      TabOrder = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 558
        Height = 212
        Align = alClient
        ParentColor = True
        TabOrder = 0
        object DBGridProduto: TDBGrid
          Left = 1
          Top = 1
          Width = 556
          Height = 210
          Cursor = crHandPoint
          Align = alClient
          BorderStyle = bsNone
          Color = 12572888
          DataSource = dsSQLProduto
          FixedColor = 16767449
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGridProdutoDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'PRODICOD'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODA60DESCR'
              Width = 363
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODN3VLRCUSTO'
              Width = 102
              Visible = True
            end>
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 249
      Width = 558
      Height = 69
      Align = alBottom
      Color = 12572888
      TabOrder = 2
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 67
        Height = 13
        Caption = 'C'#243'd. Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 128
        Top = 3
        Width = 63
        Height = 13
        Caption = 'Refer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 429
        Top = 3
        Width = 72
        Height = 13
        Caption = 'Class. Fiscal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 251
        Top = 3
        Width = 36
        Height = 13
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 375
        Top = 3
        Width = 31
        Height = 13
        Caption = 'Unid.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 17
        Width = 121
        Height = 20
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRODA60CODBAR'
        DataSource = dsSQLProduto
        ParentColor = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 127
        Top = 17
        Width = 121
        Height = 20
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRODA60REFER'
        DataSource = dsSQLProduto
        ParentColor = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 250
        Top = 17
        Width = 121
        Height = 20
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Marca'
        DataSource = dsSQLProduto
        ParentColor = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 374
        Top = 17
        Width = 49
        Height = 20
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Unidade'
        DataSource = dsSQLProduto
        ParentColor = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 428
        Top = 17
        Width = 121
        Height = 20
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ClassFiscal'
        DataSource = dsSQLProduto
        ParentColor = True
        TabOrder = 4
      end
      object btOk: TConerBtn
        Left = 176
        Top = 40
        Width = 105
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Kind = bkOK
        Flat = False
        PlaceConer = pcNone
        SymbolState = ssClose
        SymbolColorOpen = clRed
        SymbolColorClose = clMaroon
        Transparent = True
      end
      object ConerBtn2: TConerBtn
        Left = 284
        Top = 40
        Width = 96
        Height = 25
        Caption = 'Cancela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Kind = bkCancel
        Flat = False
        PlaceConer = pcNone
        SymbolState = ssClose
        SymbolColorOpen = clRed
        SymbolColorClose = clMaroon
        Transparent = True
      end
    end
  end
  object dsSQLProduto: TDataSource
    DataSet = FormTelaTransferencia.SQLProduto
    Left = 376
    Top = 8
  end
end
