object FormTelaTransferenciaMercadoriaReceberProduto: TFormTelaTransferenciaMercadoriaReceberProduto
  Left = 258
  Top = 200
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Receber Produtos'
  ClientHeight = 319
  ClientWidth = 558
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
  object ScrollBoxFundo: TScrollBox
    Left = 0
    Top = 0
    Width = 558
    Height = 319
    Align = alClient
    Color = 15461355
    ParentColor = False
    TabOrder = 0
    object PanelCabecalho: TPanel
      Left = 0
      Top = 0
      Width = 554
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
        Width = 165
        Height = 25
        Caption = 'Receber Produtos'
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
      Width = 554
      Height = 208
      Align = alClient
      BevelOuter = bvNone
      Color = 15461355
      TabOrder = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 554
        Height = 208
        Align = alClient
        ParentColor = True
        TabOrder = 0
        object DBGridProduto: TDBGrid
          Left = 1
          Top = 1
          Width = 552
          Height = 206
          Cursor = crHandPoint
          Align = alClient
          BorderStyle = bsNone
          Color = 16249066
          DataSource = dsSQLItens
          FixedColor = 16767449
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'ProdutoLookup'
              ReadOnly = True
              Width = 347
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TRITN3QTDEENVIADA'
              ReadOnly = True
              Width = 89
              Visible = True
            end
            item
              Color = 16382457
              Expanded = False
              FieldName = 'TRITN3QTDERECEBIDA'
              Width = 90
              Visible = True
            end>
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 245
      Width = 554
      Height = 70
      Align = alBottom
      Color = 16249066
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
        DataField = 'CodBarras'
        DataSource = dsSQLItens
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
        DataField = 'Referencia'
        DataSource = dsSQLItens
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
        DataSource = dsSQLItens
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
        DataSource = dsSQLItens
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
        DataSource = dsSQLItens
        ParentColor = True
        TabOrder = 4
      end
      object btOk: TConerBtn
        Left = 176
        Top = 41
        Width = 105
        Height = 25
        Cursor = crHandPoint
        Caption = 'OK'
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btOkClick
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
        Flat = False
        PlaceConer = pcNone
        SymbolState = ssClose
        SymbolColorOpen = clRed
        SymbolColorClose = clMaroon
        Transparent = True
      end
      object btCancelar: TConerBtn
        Left = 284
        Top = 41
        Width = 96
        Height = 25
        Cursor = crHandPoint
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
  object dsSQLItens: TDataSource
    DataSet = FormTelaTransferencia.SQLTranferenciaItem
    Left = 376
    Top = 8
  end
end
