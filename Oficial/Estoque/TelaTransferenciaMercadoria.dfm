inherited FormTelaTransferencia: TFormTelaTransferencia
  Left = 357
  Top = 33
  Width = 880
  Height = 579
  Caption = 'Transfer'#234'ncia Produtos'
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 864
    Height = 540
    Color = 15461355
    inherited PanelCentral: TPanel
      Top = 73
      Width = 860
      Height = 463
      object PageControl: TPageControl [0]
        Left = 130
        Top = 0
        Width = 730
        Height = 463
        ActivePage = TabSheetGerarTransferencia
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        HotTrack = True
        MultiLine = True
        OwnerDraw = True
        ParentFont = False
        TabHeight = 1
        TabOrder = 0
        TabPosition = tpBottom
        TabWidth = 1
        OnChange = PageControlChange
        object TabTransfRecebida: TTabSheet
          Caption = 'Transfer'#234'ncias'
          ImageIndex = 1
          object Label19: TLabel
            Left = 0
            Top = 0
            Width = 722
            Height = 25
            Align = alTop
            AutoSize = False
            Caption = ' Transfer'#234'ncias Recebidas/Receber'
            Color = 10053171
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Panel2: TPanel
            Left = 0
            Top = 25
            Width = 722
            Height = 429
            Align = alClient
            BevelInner = bvLowered
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            object Splitter1: TSplitter
              Left = 441
              Top = 204
              Width = 4
              Height = 223
              Beveled = True
            end
            object Splitter2: TSplitter
              Left = 2
              Top = 200
              Width = 718
              Height = 4
              Cursor = crVSplit
              Align = alTop
              Beveled = True
            end
            object DBGridTranferencias: TDBGrid
              Left = 2
              Top = 40
              Width = 718
              Height = 160
              Cursor = crHandPoint
              Align = alTop
              BorderStyle = bsNone
              Color = clWhite
              DataSource = DSSQLTranferencia
              FixedColor = 10053171
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = DBGridTranferenciasDrawColumnCell
              OnDblClick = DBGridTranferenciasDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TRFEA13ID'
                  Width = 87
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'TERMICOD'
                  Width = 58
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EmpresaRemetente'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EmpresaDestino'
                  Width = 168
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRFEDEMISSAO'
                  Width = 81
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRFEDRECEBIMENTO'
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRFEA30USUENVIO'
                  Width = 147
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRFEA30USURECEB'
                  Visible = True
                end>
            end
            object DBGrid1: TDBGrid
              Left = 2
              Top = 204
              Width = 439
              Height = 223
              Align = alLeft
              BorderStyle = bsNone
              Color = clWhite
              DataSource = DSSQLTranferenciaItem
              FixedColor = 10053171
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = DBGrid1DrawColumnCell
              OnDblClick = DBGrid1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TRITICOD'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ProdutoLookup'
                  Width = 207
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRITN3QTDEENVIADA'
                  Width = 82
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRITN3QTDERECEBIDA'
                  Width = 91
                  Visible = True
                end>
            end
            object Panel3: TPanel
              Left = 2
              Top = 2
              Width = 718
              Height = 38
              Align = alTop
              ParentColor = True
              TabOrder = 2
              object shpNaoRecebido: TShape
                Left = 3
                Top = 2
                Width = 16
                Height = 15
                Brush.Color = 3354570
                Pen.Style = psInsideFrame
              end
              object shpEnviados: TShape
                Left = 3
                Top = 19
                Width = 16
                Height = 15
                Brush.Color = 9852187
                Pen.Style = psInsideFrame
              end
              object Label1: TLabel
                Left = 22
                Top = 3
                Width = 58
                Height = 13
                Caption = 'A Receber'
              end
              object Label2: TLabel
                Left = 25
                Top = 20
                Width = 52
                Height = 13
                Caption = 'Recebida'
              end
              object RadioRecebida: TRadioGroup
                Left = 118
                Top = 1
                Width = 502
                Height = 34
                Caption = 'Transfer'#234'ncias'
                Columns = 3
                ItemIndex = 0
                Items.Strings = (
                  'A Receber'
                  'Recebidas'
                  'Todas')
                TabOrder = 0
                OnClick = RadioRecebidaClick
              end
            end
            object rchDivergencia: TDBRichEdit
              Left = 445
              Top = 204
              Width = 275
              Height = 223
              Align = alClient
              BevelKind = bkFlat
              BorderStyle = bsNone
              Color = clWhite
              DataField = 'TRITA254DIVERGENCIA'
              DataSource = DSSQLTranferenciaItem
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 3
            end
          end
        end
        object TabSheetGerarTransferencia: TTabSheet
          Caption = 'Gerar Transfer'#234'ncia'
          ImageIndex = 1
          OnShow = TabSheetGerarTransferenciaShow
          object gboEmpresaOrigem: TGroupBox
            Left = 0
            Top = 0
            Width = 722
            Height = 42
            Align = alTop
            Caption = 'Empresa Origem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label6: TLabel
              Left = 523
              Top = -1
              Width = 136
              Height = 13
              Caption = 'ID Pedido Venda Origem'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dblEmpresaOrigem: TRxDBLookupCombo
              Left = 8
              Top = 14
              Width = 502
              Height = 20
              DropDownCount = 8
              DisplayAllFields = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRICOD;EMPRA60NOMEFANT'
              LookupDisplayIndex = 1
              LookupSource = dsSQLEmpresaRemetente
              ParentFont = False
              TabOrder = 0
            end
            object IDCupomOrigem: TEdit
              Left = 540
              Top = 14
              Width = 98
              Height = 21
              TabOrder = 1
            end
          end
          object gboPesquisaProduto: TGroupBox
            Left = 0
            Top = 384
            Width = 722
            Height = 70
            Align = alBottom
            Color = 16249066
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Label7: TLabel
              Left = 522
              Top = 11
              Width = 27
              Height = 13
              Caption = 'Qtde'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 10
              Top = 11
              Width = 380
              Height = 13
              Caption = 
                'Procura por C'#243'digos ou ENTER Procura por Descri'#231#227'o ou Ref. F'#225'bri' +
                'ca'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblDescrProduto: TLabel
              Left = 8
              Top = 46
              Width = 425
              Height = 16
              AutoSize = False
              Caption = 'Descri'#231#227'o do Produto'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 443
              Top = 11
              Width = 50
              Height = 13
              Caption = 'R$ Custo'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RxSpeedButton1: TRxSpeedButton
              Left = 571
              Top = 20
              Width = 81
              Height = 25
              Cursor = crHandPoint
              DropDownMenu = PopupMenuDiverso
              Caption = '&Diversos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F0030000C40E0000C40E00000000000000000000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080808080808080C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0808080FFFF00FFFF00FFFF00808080C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080808080
                0000FFFF00FFFF00FFFF00FFFF00FFFF00000000C0C0C0C0C0C0C0C0C0C0C0C0
                0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0808080800000808080FFFF00FFFF00
                FFFF00FFFF00FFFF00808000000000C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
                C0C0C0C0C0C0800000800000800000808080FFFF00FFFF00FFFF00FFFF00FFFF
                00808000808000000000C0C0C0C0C0C00000C0C0C0808080800000C0C0C0C0C0
                C0800000800000808080000000FFFF00FFFF00FFFF0080808080808080800080
                8000000000C0C0C00000C0C0C0800000800000808080800000FF000080000080
                8080000000808000C0C0C0FFFFFFC0C0C0808080808080808000000000C0C0C0
                0000C0C0C0C0C0C0800000800000808080800000FF0000808080000000C0C0C0
                808000C0C0C0FFFFFFC0C0C0808080808080000000C0C0C00000C0C0C0C0C0C0
                C0C0C0FF0000808080FF0000800000808080000000008080000000808000C0C0
                C0FFFFFFC0C0C0808080000000C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0FF00
                00FF0000FF000080808000000000FFFF00FFFF00808080800080800080808000
                0000C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FF0000FF000080
                808000000000FFFF00FFFF008080008080008080808080C0C0C0C0C0C0C0C0C0
                0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0008080FF000080808000000000FFFF
                00FFFF008080008080008080000000C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C000808000FFFFC0C0C000000000FFFF00FFFF0080800080
                80008080000000C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C000808000FFFF00FFFF00FFFF00FFFF00FFFF008080008080008080000000C0
                C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0008080C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0008080008080000000C0C0C0C0C0C0C0C0C0
                0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0008080C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0008080000000C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00080800000000000000000000000000000
                00000000000000C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
                C0C0C0C0C0C0C0C00000}
              GrayedInactive = False
              Layout = blGlyphLeft
              Margin = 0
              MarkDropDown = False
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object edCodigoProduto: TEdit
              Left = 5
              Top = 25
              Width = 426
              Height = 21
              BevelInner = bvNone
              BevelOuter = bvNone
              CharCase = ecUpperCase
              TabOrder = 0
              OnKeyDown = edCodigoProdutoKeyDown
            end
            object edQtdeProduto: TEdit
              Left = 518
              Top = 24
              Width = 44
              Height = 21
              TabOrder = 2
              Text = '1'
              OnKeyDown = edQtdeProdutoKeyDown
              OnKeyPress = edQtdeProdutoKeyPress
            end
            object edtCusto: TCurrencyEdit
              Left = 438
              Top = 24
              Width = 73
              Height = 21
              TabStop = False
              AutoSize = False
              TabOrder = 1
              OnKeyPress = edtCustoKeyPress
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 81
            Width = 722
            Height = 303
            Align = alClient
            BevelInner = bvLowered
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            TabOrder = 2
            object DBGrid5: TDBGrid
              Left = 2
              Top = 2
              Width = 718
              Height = 299
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              DataSource = DStblTempTranferencia
              FixedColor = 10053171
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              PopupMenu = PopupMenu
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ProdutoCod'
                  Width = 43
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ProdutoLookup'
                  Width = 223
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ProdutoReferencia'
                  Width = 146
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ProdutoBarras'
                  Width = 101
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ProdutoQtde'
                  Width = 78
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ProdutoEstoque'
                  Width = 62
                  Visible = True
                end>
            end
          end
          object gboEmpresaDest: TGroupBox
            Left = 0
            Top = 42
            Width = 722
            Height = 39
            Align = alTop
            Caption = 'Empresa Destino'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object dblEmpresaDestino: TRxDBLookupCombo
              Left = 8
              Top = 14
              Width = 501
              Height = 20
              DropDownCount = 8
              DisplayAllFields = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRICOD;EMPRA60NOMEFANT'
              LookupDisplayIndex = 1
              LookupSource = dsSQLEmpresaDestino
              ParentFont = False
              TabOrder = 0
              OnChange = dblEmpresaDestinoChange
            end
          end
        end
        object TabTransfGerada: TTabSheet
          Caption = 'TabTransfGerada'
          ImageIndex = 2
          object Label9: TLabel
            Left = 0
            Top = 0
            Width = 722
            Height = 25
            Align = alTop
            AutoSize = False
            Caption = ' Transfer'#234'ncias Geradas'
            Color = 10053171
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Panel4: TPanel
            Left = 0
            Top = 25
            Width = 722
            Height = 429
            Align = alClient
            BevelInner = bvLowered
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            object Splitter3: TSplitter
              Left = 441
              Top = 204
              Width = 4
              Height = 223
              Beveled = True
            end
            object Splitter4: TSplitter
              Left = 2
              Top = 200
              Width = 718
              Height = 4
              Cursor = crVSplit
              Align = alTop
              Beveled = True
            end
            object DBGridGeradas: TDBGrid
              Left = 2
              Top = 40
              Width = 718
              Height = 160
              Cursor = crHandPoint
              Align = alTop
              BorderStyle = bsNone
              Color = clWhite
              DataSource = DSSQLTranferencia
              FixedColor = 10053171
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Times New Roman'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = DBGridGeradasDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TRFEA13ID'
                  Width = 87
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'TERMICOD'
                  Width = 58
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EmpresaRemetente'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EmpresaDestino'
                  Width = 168
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRFEDEMISSAO'
                  Width = 81
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRFEDRECEBIMENTO'
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRFEA30USUENVIO'
                  Width = 147
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRFEA30USURECEB'
                  Visible = True
                end>
            end
            object DBGrid3: TDBGrid
              Left = 2
              Top = 204
              Width = 439
              Height = 223
              Align = alLeft
              BorderStyle = bsNone
              Color = clWhite
              DataSource = DSSQLTranferenciaItem
              FixedColor = 10053171
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Times New Roman'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = DBGrid1DrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TRITICOD'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ProdutoLookup'
                  Width = 207
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRITN3QTDEENVIADA'
                  Width = 82
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TRITN3QTDERECEBIDA'
                  Width = 91
                  Visible = True
                end>
            end
            object Panel5: TPanel
              Left = 2
              Top = 2
              Width = 718
              Height = 38
              Align = alTop
              ParentColor = True
              TabOrder = 2
              object Shape1: TShape
                Left = 3
                Top = 2
                Width = 16
                Height = 15
                Brush.Color = 3354570
                Pen.Style = psInsideFrame
              end
              object Shape2: TShape
                Left = 3
                Top = 19
                Width = 16
                Height = 15
                Brush.Color = 9852187
                Pen.Style = psInsideFrame
              end
              object Label11: TLabel
                Left = 22
                Top = 3
                Width = 76
                Height = 13
                Caption = 'N'#227'o Recebida'
              end
              object Label17: TLabel
                Left = 25
                Top = 20
                Width = 52
                Height = 13
                Caption = 'Recebida'
              end
              object RadioGerada: TRadioGroup
                Left = 118
                Top = 1
                Width = 502
                Height = 34
                Caption = 'Transfer'#234'ncias'
                Columns = 3
                ItemIndex = 0
                Items.Strings = (
                  'Recebidas'
                  'N'#227'o Recebidas '
                  'Todas')
                TabOrder = 0
                OnClick = RadioGeradaClick
              end
            end
            object DBRichEdit1: TDBRichEdit
              Left = 445
              Top = 204
              Width = 275
              Height = 223
              Align = alClient
              BevelKind = bkFlat
              BorderStyle = bsNone
              Color = clWhite
              DataField = 'TRITA254DIVERGENCIA'
              DataSource = DSSQLTranferenciaItem
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 3
            end
          end
        end
      end
      inherited PanelBarra: TPanel
        Height = 463
        TabOrder = 1
        object Button2: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 34
          Width = 127
          Height = 37
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&2 Transfer'#234'ncias Recebidas/Receber'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          WordWrap = True
          OnClick = Button1Click
        end
        object Button1: TRxSpeedButton
          Tag = 2
          Left = 3
          Top = 2
          Width = 125
          Height = 31
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          Alignment = taLeftJustify
          GroupIndex = 1
          Down = True
          Caption = '&1 Gerar '#13#10'Transfer'#234'ncias'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          OnClick = Button1Click
        end
        object Button3: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 71
          Width = 127
          Height = 37
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&3 Transfer'#234'ncias Geradas'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            6E040000424D6E04000000000000360000002800000014000000120000000100
            18000000000038040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000FFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000FFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF00
            0000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBF000000FFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBF000000FFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000000000FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF
            FFFFFF000000FFBFBFFFBFBFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFBFBFF7FEFFF7FEFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFFBFBF
            FFBFBFFFBFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBF
            BFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFFF
            BFBFFFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFF000000FFBFBFFFBFBFF7FEFF
            F7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBFFFBF
            BFFFBFBF000000FFFFFFFFFFFF000000FFBFBFFFBFBFFFBFBFFFBFBFFFBFBFF7
            FEFFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBFFFBFBFFFBFBF
            000000FFFFFFFFFFFF000000FFBFBFFFBFBF000000000000FFBFBFFFBFBFFFBF
            BFFFBFBFF7FEFFF7FEFFF7FEFFF7FEFF000000000000FFBFBFFFBFBF000000FF
            FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFF000000000000000000FFBFBF
            FFBFBFFFBFBFFFBFBFF7FEFFF7FEFFFFFFFF000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
            0000FFBFBFFFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 1
          ParentFont = False
          Transparent = True
          WordWrap = True
          OnClick = Button1Click
        end
        object Label20: TLabel
          Left = 15
          Top = 174
          Width = 62
          Height = 13
          Caption = 'S'#233'rie da NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 14
          Top = 250
          Width = 85
          Height = 13
          Caption = 'Vlr.Custo Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 15
          Top = 289
          Width = 93
          Height = 13
          Caption = 'Qtde Total Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CKImpMatricial: TCheckBox
          Left = 7
          Top = 121
          Width = 116
          Height = 17
          Caption = 'Imprimir em Matricial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object ComboSerieNF: TRxDBLookupCombo
          Left = 8
          Top = 187
          Width = 110
          Height = 22
          DropDownCount = 8
          DisplayAllFields = True
          Ctl3D = False
          DisplayEmpty = '...'
          LookupField = 'SERIA5COD'
          LookupDisplay = 'SERIA5COD;EMPRICOD'
          LookupSource = DSSQLSerieNF
          ParentCtl3D = False
          TabOrder = 1
        end
        object CKSemCusto: TCheckBox
          Left = 7
          Top = 139
          Width = 116
          Height = 17
          Caption = 'Imprimir S/Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EdtCustoTotal: TCurrencyEdit
          Left = 10
          Top = 263
          Width = 111
          Height = 21
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = edtCustoKeyPress
        end
        object EdtQtdeTotalItens: TCurrencyEdit
          Left = 11
          Top = 302
          Width = 111
          Height = 21
          AutoSize = False
          DisplayFormat = '0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyPress = edtCustoKeyPress
        end
        object ckGrade: TCheckBox
          Left = 7
          Top = 417
          Width = 116
          Height = 17
          Caption = 'Abrir Tela de Grade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 860
      Height = 73
      inherited PanelCabecalho: TPanel
        Width = 860
        Height = 72
        inherited LabelTitulo: TLabel
          Top = 4
        end
        inherited PanelNavigator: TPanel
          Top = 40
          Width = 860
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 860
            object btTranferir: TRxSpeedButton
              Left = 0
              Top = 4
              Width = 182
              Height = 25
              Cursor = crHandPoint
              Caption = 'Gerar Tranfer'#234'ncia'
              Enabled = False
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
                0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000004A422100A59C
                5A005A523100DEE7DE00949484000000000000000000FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000635A3100A59C5A00A59C
                5A00DEDED600EFEFEF00B5B5A500DEDED6008C8C7B002129210000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDB58C00A59C5A005A52
                3100EFF7EF0029291800ADA56B00DEDEDE00E7E7E700B5B5B5005A5A42000000
                000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00000000008C845A00B5AD7300A59C5A00C6C6
                BD00F7F7F700524A3100DEDED600E7E7E700DEE7DE00DEDEDE008C8C7B00A59C
                5A00292918000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000BDB58C00A59C5A00A59C5A005A52
                3100CECECE00EFF7EF00EFF7EF00E7EFE700E7E7E700B5B5A5004A422100A59C
                5A00424221002921100000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00000000006B634200B5AD7300EFEFE700EFEFE700A59C
                5A00A59C5A0042422100ADADA500EFEFEF00E7E7E70042424200A59C5A005A52
                3100A59C5A003939290000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF0000000000C6C69C00EFEFE700F7F7F700848C9400F7F7
                EF00EFEFE700A59C5A00A59C5A004242210039392900635A3100A59C5A005A52
                3100A59C5A0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00000000006B634200B5AD7300EFF7EF00F7F7F700848C94000000
                000000000000F7F7EF00EFEFE700A59C5A00A59C5A005A5231005A523100A59C
                5A003939290000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF0000000000C6C6A500EFEFE700F7F7F700848C9400F7F7F7006BB5
                C600185A73000000000000000000DEE7DE00EFEFE700A59C5A00A59C5A00A59C
                5A0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00000000007B7B6300BDB58C00EFF7EF00F7F7F700848C9400F7F7F700F7F7
                F7000000000063BDD600427B8C0000000000F7F7F700EFEFE700A59C5A003939
                290000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000BDB58C00CECEAD00E7DED600F7F7F700F7F7F700848C9400F7F7
                F700F7F7F7000000000063BDD600427B8C0000000000EFEFE700A59C5A000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF000000000000000000B5AD7300CECEAD00DED6C600F7F7F700F7F7
                F700F7F7F700F7F7F7000000000063BDD600427B8C0000000000292918000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF000000000000000000DED6C600C6C6A500DED6
                C600F7F7F700F7F7F700F7F7F7000000000063BDD600427B8C0000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000DED6
                C600C6C6A500DED6C600F7F7F700EFF7EF000000000063BDD600427B8C000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                000000000000DED6C600C6C6A500EFEFE700A59C5A000000000063BDD600427B
                8C0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF000000000000000000A59C5A0039392900000000000000000063BD
                D600427B8C0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
                000063BDD600427B8C0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF000000000063BDD60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
              Layout = blGlyphLeft
              ParentFont = False
              Transparent = True
              OnClick = btTranferirClick
            end
            object btReceberTransferencia: TRxSpeedButton
              Left = 187
              Top = 4
              Width = 182
              Height = 25
              Cursor = crHandPoint
              Caption = 'Receber Tranfer'#234'ncia'
              Enabled = False
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                36100000424D3610000000000000360000002800000020000000200000000100
                2000000000000010000000000000000000000000000000000000C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400402A000049300000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400895A0000BD842B0088580000311F0000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D4000000230000005700C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4002618
                0000B27D1C00FAC49100E6AF7000AD7614006E48000019100000C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400000056000017B600000CA400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4006E48
                0000DCA66100D7985A00E2A66B00FAC59200DAA45E00A9710B006D4700001B11
                0000C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D4000000290000008A000029C7000069F8000229C30000001400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4001D120000A974
                0F00ECB37B00D7985900D89A5A00D79A5A00E8AF7500F9C39000DCA66000AD78
                160082550000321D000009050000C8D0D400C8D0D400C8D0D400000027000000
                83000019BA000046E2000065F6000067F700144AD60000003F00C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D40071480000D8A3
                5C00DA9D5E00D89A5C00D99C5E00DBA06200DDA16200DEA26500E7AE7500F5BE
                8A00BC874E00966017008B540000563303000F074B0000029200001CBE00003C
                DC000052EB000065F4000066F5000066F5002466E70000004000C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4001C120000AA751200ECB4
                7B00D99A5C00DA9F6100DDA16200DFA36600DFA56700E2A76A00E2A86D00E4AA
                6E00ECB27300715171002A1F84000012AD00002DCE000042E100004EE900005F
                F0000066F4000065F4000066F5000064F5003882F50000006A00C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4007B500000DFAB6600DCA0
                6200DD9F6100DDA26500E0A46600E0A66A00E3A86D00E3AA6F00E6AC7000E7AE
                7400EDB27500745887000013B7000045E6000052EB000065F4000066F4000065
                F4000064F3000065F4000064F3000063F300438FFB0001006D00C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D40038240000B7832500EDB47C00DC9F
                6200DEA26500E1A46900E1A66C00E4A96E00E4AB6F00E7AD7100E8AF7500E8B1
                7600EBB17800F5BB7B00AB7F7100090E9A000038D9000053EA000065F4000066
                F5000066F5000064F3000066F5000064F4004692FD00070A7200C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D4000B07000092610000EEB97F00DDA26500E0A3
                6700E2A76B00E2A96D00E5AB6E00E6AB7200E6AD7300E9B07600E9B27700ECB2
                7B00EDB57D00EFB77F00B67F4600A67141001A118900003EDD000056EB000066
                F5000066F5000064F3000066F5000063F4004E98FD0007097200C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D4006B460000D49F5500E7AC7400E0A56800E1A8
                6C00E4AA6D00E6AC7100E7AC7200E7AE7600E9B17800EAB17800ECB47B00EEB5
                7E00F1BA8200CE986100A9743E00A4704400030EA5000047E4000064F3000066
                F5000066F5000064F3000065F5000063F400589DFE0006097200C8D0D400C8D0
                D400C8D0D400C8D0D400432B0000B7822500F3BD8900E0A56900E2A96E00E5AB
                7000E5AD7100E8AD7500E8B07700EAB17800F1BB8500FAC99B00F1BB8500F1B9
                8100DEA87100A9744000B37C3E00372279000033D500005CF0000065F4000064
                F3000063F3001573F5000066F4000062F30062A4FE0004067000C8D0D400C8D0
                D400C8D0D40021150000A06D0900F4C08C00E2A86C00E3A96E00E6AC7000E7AE
                7400E7B07600EAB07700ECB37900ECB47B00EFB78000FFD1A900FFD5AD00E7B7
                8900AC784500B17B40006B4760000018BC000056ED000066F4000066F5000065
                F5000064F40065A7FF0061A6FF000E6FF60067A4FD0000006B00C8D0D400C8D0
                D400060300009B650000EAB98000E8AD7400E4AA6F00E7AD7300E8AF7500E8B1
                7600EBB17800EBB47C00EEB67E00EFB88000F1B98200FDD2A800D4A77D00AF80
                5300B88754007B586500000DAB000051EB000066F4000064F3000066F5000064
                F4002A81F9004B74DD002A46C60072B3FF006197F40000005D00C8D0D4000704
                000088580000E2B17300EBB37C00E5AB7100E6AE7400EAB17600ECB47B00EEB6
                7D00EFB77F00F2BA8100F0B88100E3AD7600CB955E00B3835700B3835300B686
                5400593D7400000FB1000053EB000067F5000066F5000064F3000065F5000469
                F40064A4FC002D258800855856001D2AB2004269DD0000003E00080500008759
                0000DAA86700EEB88200E6AD7100E7AE7600E9B27700D39A5F00B77F4600B77F
                4700B7814800B57E4600AF774000AD773E00B0793D00B0805600795669001712
                91000029CA00005EF2000066F4000064F3000064F3000064F3000062F40058A1
                FF002A40C200AC836800BE844700AC824C0007017F00000023006A450000D09F
                5500FAC89C00E7AE7300E8AE7500EAB17800F0B77A008C6A8900876681007A52
                5D00744C5700754D5800714A5D00593A670033217E000512A400002ACA000056
                EC000067F6000065F4000066F5000066F5000065F5000063F4004E9CFF003254
                CC00A395C300C08B4E00C48E5C00B78429000A050000C8D0D4000D0900009260
                0000DCAC6D00FFD8B400F7C79A00F0BC8700F0B77B00BC9083001D1593000011
                B5000042DC000040DB000040DA00004AE300005AEF000066F6000068F7000066
                F5000066F5000064F3000065F4000063F4000B6CF5005CA5FF003357CF008A73
                AA00FAE0C600B47C4100CE9B6F00AB7715000C070000C8D0D400C8D0D400C8D0
                D4006F480000C08D3A00FCD2AE00FFD6B400FED5B200FDCFA400FFCD99009F7E
                97002429A700134CD400237EF9000E73F9000066F6000062F4000063F4000063
                F4000063F4000066F4001776F7004797FD0069A4F9002439B9009F86AE00FFE8
                CA00DBBE9D00B87F4800D9AA8100875A0100C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D4004E320000A4721400F9D8C000FFDABB00FED7B600FED8B900FFDC
                B800FFDEBF00AB8FAD004039A4002840BF004170DF004F91F400559CFB00569E
                FD005CA0FC0065A3FB005689EA002A45C400473FA700DBBDBC00FFE3C600FFE7
                D600C9A17500B9814A00DAAE830086590000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D4004D330000AD771900BD884F00DCB99500FFE4D200FFDBBE00FFD9
                BA00F8E0D200E8C59D00FFE7C800E7C5B9009E85AE006353A6004541A9003C3B
                AA003938A800443BA5007F6CAB00D9BBBE00FFE5C800FFDFC800FFDEC700FFEF
                E600BD8B5300BB834E00DCB38A0085580000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D40052360000AB771800C5925700BC8B5200DEBF9C00FEE6
                D800DDBE9F00B2783C00D0AB7E00FFE5D200FFE1C500FFE3C400FFE3C500FFE5
                C600FFE5C700FFE5C900FFE4C900FFE0CA00FFDECB00FDE0CA00FFDFCB00F7E6
                DA00BC854F00BC855000E1BC94007B500000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D4001B110000895A0000C1914600CA966600B680
                4400BA864D00BB824B00B8804800BC8C5200EBD1B700FFE6D600FFDFC900FFDE
                C800FFDEC900FDE0CB00FFE0CC00FFDFCD00FFE1CE00FDE0CF00FFE2D000E8D5
                BF00BC854D00BE865200E1BE950054360000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D40057380000A7741100D0A3
                6A00CB986B00BA824C00BB844D00BB844E00B77F4400C8A06D00F0DBC600FFE8
                DB00FEE1CE00FEE0CD00FDE0CE00FDE0D000FDE2D100FEE1D100FFE8DB00DABD
                9D00BE875100BF885400E2C19A0055360000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400100A00006E47
                0000B5852C00D8AF8000CB996C00BB834D00BD864F00BD855000B8804400C8A1
                6F00F0DDC900FFEEE600FFE5D700FFE3D200FFE2D300FDE2D400FFEEE600CDA6
                7C00C0895400C18B5700E2C29A0055360000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D40025170000764C0000BB8E3C00DAB38900CF9E7400BD865000BE875200BF87
                5100BA834A00C3976400DFC6A900F7E8DC00FFF0EA00FFE9DF00FFF7F400C291
                5C00C18C5800C28C5900E4C5A10055360000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D4003C2800008A5B0000BA8C3A00D9B48800D5A78100C28C
                5800C0895400C0895400BF875200BD874E00C99F6F00DDC6A700F1E8DA00BB85
                4B00C38E5A00C38E5B00E4C9A40055360000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400241700007B500000B0822700D2AB
                7600D9AF8900CA976B00C28C5800C28B5800C18C5700C18B5700BE885000C48F
                5C00C38E5B00C48F5D00E5CBA90055360000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D4001A1000005537
                0000885A0000B7883400CBA16800D9AF8A00CE9E7300C38E5B00C48E5B00C48E
                5A00C48F5C00C5905D00E4C8A40055360000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D4002A1B00006540000093620000B98B3900CFA86F00D9B38A00DCB4
                9000D6A98300CF9D7200E5CAA70055360000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400281A0000513400007C5000009B6B
                0C00B78B3700C9A56600CFAD710058390000C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0D400C8D0
                D400140D00003A2400004029000032210000C8D0D400C8D0D400}
              Layout = blGlyphLeft
              ParentFont = False
              Transparent = True
              OnClick = btReceberTransferenciaClick
            end
            object btImprimirRelatorio: TRxSpeedButton
              Left = 374
              Top = 4
              Width = 182
              Height = 25
              Cursor = crHandPoint
              DropDownMenu = PopupMenuRelatorios
              Caption = 'Imprimir'
              Enabled = False
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                36100000424D3610000000000000360000002800000020000000200000000100
                2000000000000010000000000000000000000000000000000000D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D7E8EB03D6E6E90CD7E8EB03D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00CBDBDE0FA8B5B93D8D999C5D9CA8AB49B4C2C52CA9B6B83BC3D2D519D7E8
                EB01D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D6E7EA02D3E4E606D0E1E409D4E4E705D8E9EC00D8E9EC00CBDBDE10AFBD
                C0368A8D8C81AB9E93B8E6CAB5E99B8D81CA676868A7555558BA686D6F98939E
                A159C5D4D717D5E6E903D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D1E2
                E508B8C6C92696A2A4588F989A60AAB8BA36C9D9DB12BAC8CB26939EA05D998C
                849DDDC3B3E7FFF0D9FCFFFEE6FFFFF7E7FDCCB09CF581685DFF6D565AED635D
                5FC47B858777ADBBBD35D7E8EB01D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D5E6E903CBDBDE0FAAB6B83B8991
                927A9FA0A0D1A9A5A4FE898685FD727473D06E71729B877C76A0E0B39EE5FFE5
                D3FFFEEBC9FFEFE5B8FF62BF59FF4DBA4CFFB9E2B2FFF7EDD5FFC3A794FF9375
                6DFF82676AED787475A1C5D4D717D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D0E0E30AB2C0C22D929B9C70919291D5CECC
                CBF8D8D7D6FFC3C2C1FF918F8DFF817672FFB58373F1EFC7B6F5FDD9BDFFFDD6
                B2FFFFDFB7FF87C06AFF28BC3BFF44C55AFF58C86BFF80CC82FFFAF3DBFFEDD8
                C9FFB4917FFF786868D298A4A74ECCDCDF0ED8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D4E4E705C9D9DB12A1ADAF48898F9190AEAEAEDDDCDBDAFFFBFBFBFFF6F5
                F5FFDFDEDEFFCAC8C8FF9E9C9BFF9F8E88FFAB8E81FFCF9E82FFF2B995FFDDB7
                9CFF5D7A91FF288D64FF43B471FF81C886FF75C17FFF52C667FF5AC25DFFE5F0
                C3FFFFFAE7FFF1D7C1F4978C82AFAFBBBE34D8E9EC00D8E9EC00D8E9EC00CFDF
                E20BAAB7B9398C939484A8A8A7DCD6D6D4FBF4F3F3FFF6F6F5FFF1F2F2FFF0EF
                EFFFE1DEDFFFD0CFCEFFA8A7A5FFA48B81FFA5705AFF956F5FFF52636EFF3D70
                92FF2F90DDFF2E93D7FF288ACAFF719C93FF50BE58FF26BC3CFF35AE39FFD4E1
                ABFFFFFCDFFFFFF7EDFFE7C8B1B2BDCACB29D8E9EC00D8E9EC00C7D7D914969D
                9D88B6B4B2F6E8E7E6FFFAFAFBFFF6F6F6FFF3F2F2FFEFF0EEFFEEECEDFFEBEA
                EAFFE2E1E0FFD8D6D6FFB6B4B2FFAD9B94FFA56C58FF85645AFF164C6DFF1349
                6EFF3982BBFF3F9CE5FF419CE3FFA3ADA1FFD6C08FFFD4C393FFFFE7C9FFFFE8
                D1FDDAC0B2C6BDBAB45ED5E6E903D8E9EC00D8E9EC00D8E9EC00A9B6B842C5C5
                C5EDF9F9F9FFF6F6F7FFF4F3F3FFF2F1F1FFEFEEEEFFEDECEBFFEAE9E9FFE8E6
                E6FFE3E2E1FFDEDDDCFFC0BEBDFFBBB9B7FFB09E99FFAA7F6FFF65595CFF3055
                71FF335875FF546E85FF9B8F8CFFF2B996FFFECAA5FFFFE1C9FFF5CAB8EDCFB6
                AA8EC1CECF21D7E8EB01D8E9EC00D8E9EC00D8E9EC00D8E9EC009EA9AB56DFDD
                DDFFF5F4F4FFF2F1F1FFEEEDEDFFEDECEAFFE9E8E9FFE8E7E5FFE4E3E2FFE2E1
                E0FFE2E1E2FFE3E3E1FFCCCAC9FFC8C6C5FFC0BEBDFFBBBAB9FFB09C94FFAA78
                67FFA76A54FFA66F59FFA57560FFA68473FFD9B4A5FFC79889FF95959370CCDC
                DF0ED8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC009EA9AB56DBD9
                D9FFF0F1EFFFEEEDEDFFEBEAEAFFE9E8E7FFE6E5E5FFE4E3E2FFE0E0DFFFDEDD
                DCFFE5E4E3FFE1E0DFFFD1CFCEFFD0CECDFFCBC9C7FFC5C3C0FFBDBBBBFFB6AE
                ACFFAA8C82FFA47361FFA28479FF88645AFF6C5851FF948D8BFF7F858699C5D5
                D816D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC009EA9AB56D7D5
                D5FFEBEAEAFFE9E8E8FFE5E4E4FFE4E3E1FFE0DFE0FFDEDEDCFFDCDAD9FFDFDD
                DDFFE8E7E6FFDDDCDBFFD4D2D2FFD4D3D2FFD2D0CFFFD0CECDFFCAC8C7FFC4C2
                C1FFBDBCBBFFB6B4B2FF9A726FFF75585BFF6E6464FFA19E9CFF818586A1C5D4
                D717D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC009EA9AB56D4D3
                D2FFE8E7E6FFE5E4E4FFE3E1E1FFE0DFDEFFDEDCDAFFDAD9D8FFDAD8D7FFE7E5
                E5FFE8E7E6FFDCDCDBFFD6D0CEFFCBA99CFFD2CECBFFD3D3D3FFD1CFCEFFCECC
                CBFFC6C4C3FFC1BFBEFFB9B5B5FFAB9C9CFF9D9191FFAAA7A6FF808586A1C5D4
                D717D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00A0AAAC54CFCE
                CDFFE3E2E1FFDFDEDFFFDEDBDBFFDADAD8FFD8D6D5FFD5D5D4FFE4E4E2FFEFEE
                EEFFE6E5E6FFDFE0E0FFD4876CFFC34D23FFB74923FFC48B77FFD1C9C6FFD3D3
                D2FFD1CFCEFFCDCBCAFFC7C4C3FFC1BFBDFFB9B7B6FFB7B4B3FF808586A1C5D4
                D717D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00A8B5B644C9C7
                C7F1DFDFDDFFDDDBD9FFD9D7D7FFD7D5D4FFD4D2D1FFE1E0DFFFF5F4F4FFF2F1
                F0FFE7E7E8FFE8CFC6FFE67A55FFDA6C46FFC95931FFBD481FFFBC6648FFC9A7
                9BFFD5D6D7FFD2D1D0FFCFCDCCFFCBC9C8FFC3C0BFFFC1BEBDFF7F8485A1C5D4
                D717D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C0CFD121B0B1
                AFCFDFDEDDFFD8D6D5FFD7D5D5FFD9D8D7FFEDEDECFFFDFDFCFFE6E2EDFFD6D2
                E9FFF1E0D7FFF8A888FFF89771FFF28B67FFE57A54FFD96B45FFC9562FFFBB44
                1AFFBD6D50FFCBAFA4FFD3D2D2FFD2D0CFFFCFCDCCFFCBC9C8FF8287889AC9D9
                DB12D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D7E8EB019FA6
                A782CAC9C8FFE4E3E2FFE9E8E7FFF0EFEDFFFAF8F9FFFCFCFCFFE2DBEBFFBDA7
                CAFFFBC5A5FFFBAF88FFFAA47FFFF99D78FFF5916CFFEE8560FFDE714CFFD164
                3CFFC14E25FFBB5029FFC28773FFD1C9C6FFD3D1D1FFC9C7C6FF878F9086CFDF
                E20BD8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00AEBA
                BB51939190FFABA9A7FFD3D1D2FFE6E4E4FFB3D0B6FFB6D2B3FFFBE4D5FFFFD2
                ACFFFEC9A1FFFDC19BFFFCB791FFFBAF89FFFAA580FFF99C78FFF5906BFFEC83
                5FFFDE714BFFD2613BFFC04B22FFBE6141FFD8D8D8FFB7B4B3FF9CA7A854D4E4
                E705D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00AEB9
                BA52B6B4B3FFCECFCDFFB5B1B0FFADA19DFFEBB69CFFEDB795FFFCC09BFFFDC6
                9EFFFECBA4FFFECCA5FFFCC59FFFFDBD97FFFAB28CFFFBAB84FFFA9F7AFFF897
                73FFF18A65FFE77C57FFD66840FFCF7A5CFFD7D8D8FFA2A2A0E7BCCBCD21D7E8
                EB01D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00B3BF
                C048D4D4D3FFF4E2DAFFF6C9B7FFE8CDBCFFB39C8EFFCF957EFFF6A884FFFDB5
                8EFFFDC09AFFFCC7A0FFFECCA5FFFECCA5FFFDC59EFFFBBC97FFFCB28DFFF9AA
                85FFFAA07BFFF89772FFEE906FFFE3CDC6FFC3C3C2FB8C93938CD4E4E705D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00CCDC
                DF0FB2B8B896D9B6A7F2F6CCB8FFFDE0CFFFF8DBC3FFD6BFACFFB69283FFDE99
                7CFFFDB089FFFCBA94FFFDC49EFFFEC9A3FFFECCA5FFFEC9A3FFFDC19AFFFCB7
                91FFFBAD87FFFAA37CFFF0C8BAFFEAE9E8FF979897D8AEBBBD37D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00B39E91ACFAD4C1FFFCE5D6FFFFE6D2FFFFE4CCFFFBDCC4FFC7B6
                A6FFC09683FFE09C7FFFFDB18AFFFCBB95FFFDC49EFFFECAA3FFFECCA5FFFEC9
                A2FFFCC19BFFF9D1BBFFEDF0F0FFB5B5B3F0A3AFB14DD5E5E804D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00B6A294AEFBD9C6FFFDEADDFFFFEBDCFFFFE7D5FFFFE4CEFFFFE2
                CBFFE6CDB7FFC5AB9AFFC08F7AFFF7A682FFFCB690FFFDBF98FFFDC6A0FFFECA
                A4FFFDE8D7FFFFFDFCFFC0C1C0F3959C9D79D3E4E606D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00B7A69AAEFDE0CCFFFEF0E8FFFFF3EBFFFFF0E4FFFFEADCFFFFE8
                D6FFFFE4CFFFFFE3CAFFE5D1BFFFB19C94ECD49A82F9EDB194FFF1CDB9FFEAE2
                DFFFD8D8D8FDACADACDBA6B2B54AD5E5E804D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00B8AA9DAEFFE1CAFFFEF3EBFFFFFBF8FFFFF6F0FFFFF0E6FFFFEE
                E0FFFFE8D8FFFFE5D2FFFFEDDCFFD1AEA0C897A0A170ACAAA9C1ADAEAED7ADAE
                AECAA0A9A97DB6C4C62FD7E8EB01D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00C4BEB479FEE2C8F8FEDFC6FFFDEEE1FFFDFAF5FFFFFAF7FFFFF6
                EFFFFFF1E7FFFFECDFFFFFF1E4FFCFAF9FCAB9C7CA25D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D1E0E30BBBBDB95EF9E1C6D7FFE0C8FFFEE4D1FFFDF3EBFFFFFD
                FCFFFFF8F3FFFFF3EAFFFFF5EDFFD0B4A4CAB8C6C926D6E7EA02D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D6E6E903D0C9BE74F9DEC3DBFEDEC6FFFDE5
                D1FFFDF7F0FFFDFCF9FFFFFCF9FFD2BAAACAB7C5C827D6E7EA02D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D7E8EB01C0CCCC2BF1E1CCA4FEE1
                C8FBFEDEC5FFFDE9D9FFFFFFFFFFD4BEB0CAB9C7CA25D7E8EB01D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00C4CE
                CD2EF2DCC6B8FDDDC1F5FFD9BBFCDDC8B4ACCAD9DC11D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00CEDDDF10D0CEC65CCAC2B678BECACA2BD7E8EB01D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
                EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00}
              Layout = blGlyphLeft
              ParentFont = False
              Transparent = True
            end
          end
        end
      end
    end
  end
  inherited AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Left = 108
    Top = 10
  end
  object SQLEmpresaDestino: TRxQuery
    AfterScroll = SQLEmpresaDestinoAfterScroll
    OnCalcFields = SQLEmpresaDestinoCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA')
    Macros = <>
    Left = 344
    Top = 8
    object SQLEmpresaDestinoEMPRICOD: TIntegerField
      DisplayWidth = 4
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaDestinoEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaDestinoEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLEmpresaDestinoEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLEmpresaDestinoEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaDestinoEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaDestinoEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaDestinoEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaDestinoEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaDestinoEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaDestinoEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaDestinoEmprDestCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmprDestCidade'
      Size = 100
      Calculated = True
    end
    object SQLEmpresaDestinoEmprDestEndereo: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmprDestEndere'#231'o'
      Size = 100
      Calculated = True
    end
    object SQLEmpresaDestinoEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLEmpresaDestino: TDataSource
    DataSet = SQLEmpresaDestino
    Left = 372
    Top = 8
  end
  object SQLEmpresaRemetente: TRxQuery
    OnCalcFields = SQLEmpresaRemetenteCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA order by empricod')
    Macros = <>
    Left = 400
    Top = 8
    object SQLEmpresaRemetenteEMPRICOD: TIntegerField
      DisplayWidth = 4
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaRemetenteEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaRemetenteEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLEmpresaRemetenteEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLEmpresaRemetenteEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaRemetenteEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaRemetenteEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaRemetenteEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaRemetenteEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLEmpresaRemetenteEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaRemetenteEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaRemetenteEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaRemetenteEmprDestEndereo: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmprDestEndere'#231'o'
      Size = 100
      Calculated = True
    end
    object SQLEmpresaRemetenteEmprDestCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmprDestCidade'
      Size = 100
      Calculated = True
    end
    object SQLEmpresaRemetenteEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLEmpresaRemetente: TDataSource
    DataSet = SQLEmpresaRemetente
    Left = 428
    Top = 8
  end
  object tblTempTranferencia: TTable
    OnCalcFields = tblTempTranferenciaCalcFields
    DatabaseName = 'Easy_Temp'
    TableName = 'tblTempTranferencia'
    Left = 636
    Top = 8
    object tblTempTranferenciaProdutoCod: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'ProdutoCod'
    end
    object tblTempTranferenciaProdutoNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'ProdutoNome'
      Size = 100
    end
    object tblTempTranferenciaProdutoBarras: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'ProdutoBarras'
      Size = 60
    end
    object tblTempTranferenciaProdutoQtde: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'ProdutoQtde'
      DisplayFormat = '#,###0.000'
    end
    object tblTempTranferenciaProdutoEstoque: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'ProdutoEstoque'
      DisplayFormat = '#,###0.000'
    end
    object tblTempTranferenciaProdutoReferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'ProdutoReferencia'
      Size = 60
    end
    object tblTempTranferenciaProdutoValorCusto: TFloatField
      DisplayLabel = 'Vlr Custo'
      FieldName = 'ProdutoValorCusto'
      DisplayFormat = '#,##0.00'
    end
    object tblTempTranferenciaProdutoLookup: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 100
      Calculated = True
    end
    object tblTempTranferenciaUnidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Unidade'
      Size = 60
      Calculated = True
    end
    object tblTempTranferenciaProdutoValorCustoTotal: TFloatField
      FieldName = 'ProdutoValorCustoTotal'
    end
    object tblTempTranferenciaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Size = 13
    end
  end
  object DStblTempTranferencia: TDataSource
    DataSet = tblTempTranferencia
    OnStateChange = DStblTempTranferenciaStateChange
    Left = 664
    Top = 8
  end
  object SQLProduto: TRxQuery
    OnCalcFields = SQLProdutoCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 465
    Top = 8
    object SQLProdutoPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA30CODESTRUT: TStringField
      DisplayLabel = 'C'#243'd. Estrutura'
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA60CODBAR: TStringField
      DisplayLabel = 'C'#243'd Barra'
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoCLFSICOD: TIntegerField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'CLFSICOD'
      Origin = 'DB.PRODUTO.CLFSICOD'
    end
    object SQLProdutoGRUPICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLProdutoMARCICOD: TIntegerField
      DisplayLabel = 'Marca C'#243'digo'
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLProdutoGRADICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Grade '
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      DisplayLabel = 'Gde Tamanho'
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoUNIDICOD: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoPRODN3VLRCUSTO: TFloatField
      DisplayLabel = 'Vlr Custo'
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLProdutoClassFiscal: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClassFiscal'
      Size = 60
      Calculated = True
    end
    object SQLProdutoMarca: TStringField
      FieldKind = fkCalculated
      FieldName = 'Marca'
      Size = 60
      Calculated = True
    end
    object SQLProdutoUnidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Unidade'
      Size = 60
      Calculated = True
    end
    object SQLProdutoProdutoLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 100
      Calculated = True
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
  end
  object SQLTranferencia: TRxQuery
    Tag = 2
    AfterOpen = SQLTranferenciaAfterOpen
    BeforePost = SQLTranferenciaBeforePost
    BeforeDelete = SQLTranferenciaBeforeDelete
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from TRANSFERENCIA'
      'where '
      '(%MFiltro)'
      'and'
      '(%MEmpresa)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 208
    Top = 8
    object SQLTranferenciaTRFEA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'TRFEA13ID'
      Origin = 'DB.TRANSFERENCIA.TRFEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTranferenciaEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa Origem'
      FieldName = 'EMPRICOD'
      Origin = 'DB.TRANSFERENCIA.EMPRICOD'
    end
    object SQLTranferenciaTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.TRANSFERENCIA.TERMICOD'
    end
    object SQLTranferenciaTRFEICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd'
      FieldName = 'TRFEICOD'
      Origin = 'DB.TRANSFERENCIA.TRFEICOD'
    end
    object SQLTranferenciaTRFEIEMPRDEST: TIntegerField
      DisplayLabel = 'Empresa Destino'
      FieldName = 'TRFEIEMPRDEST'
      Origin = 'DB.TRANSFERENCIA.TRFEIEMPRDEST'
    end
    object SQLTranferenciaTRFEDEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'TRFEDEMISSAO'
      Origin = 'DB.TRANSFERENCIA.TRFEDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTranferenciaTRFEDRECEBIMENTO: TDateTimeField
      DisplayLabel = 'Recebimento'
      FieldName = 'TRFEDRECEBIMENTO'
      Origin = 'DB.TRANSFERENCIA.TRFEDRECEBIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTranferenciaTRFECRECEBIDO: TStringField
      DisplayLabel = 'Recebido'
      FieldName = 'TRFECRECEBIDO'
      Origin = 'DB.TRANSFERENCIA.TRFECRECEBIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTranferenciaTRFEA30USUENVIO: TStringField
      DisplayLabel = 'Usu'#225'rio Envio'
      FieldName = 'TRFEA30USUENVIO'
      Origin = 'DB.TRANSFERENCIA.TRFEA30USUENVIO'
      FixedChar = True
      Size = 30
    end
    object SQLTranferenciaTRFEA30USURECEB: TStringField
      DisplayLabel = 'Usu'#225'rio Recebimento'
      FieldName = 'TRFEA30USURECEB'
      Origin = 'DB.TRANSFERENCIA.TRFEA30USURECEB'
      FixedChar = True
      Size = 30
    end
    object SQLTranferenciaREGISTRO: TDateTimeField
      DisplayLabel = 'Dt Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.TRANSFERENCIA.REGISTRO'
    end
    object SQLTranferenciaPENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.TRANSFERENCIA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTranferenciaEmpresaRemetente: TStringField
      DisplayLabel = 'Empresa Remetente'
      FieldKind = fkLookup
      FieldName = 'EmpresaRemetente'
      LookupDataSet = SQLEmpresaDestino
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICOD'
      Size = 60
      Lookup = True
    end
    object SQLTranferenciaEmpresaDestino: TStringField
      DisplayLabel = 'Empresa Destino'
      FieldKind = fkLookup
      FieldName = 'EmpresaDestino'
      LookupDataSet = SQLEmpresaDestino
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'TRFEIEMPRDEST'
      Size = 60
      Lookup = True
    end
    object SQLTranferenciaTRFECDIVERG: TStringField
      FieldName = 'TRFECDIVERG'
      Origin = 'DB.TRANSFERENCIA.TRFECDIVERG'
      FixedChar = True
      Size = 1
    end
    object SQLTranferenciaEMPRICODORIGEM: TIntegerField
      FieldName = 'EMPRICODORIGEM'
      Origin = 'DB.TRANSFERENCIA.EMPRICODORIGEM'
    end
  end
  object SQLTranferenciaItem: TRxQuery
    Tag = 1
    BeforePost = SQLTranferenciaItemBeforePost
    OnCalcFields = SQLTranferenciaItemCalcFields
    OnNewRecord = SQLTranferenciaItemNewRecord
    AutoRefresh = True
    DatabaseName = 'DB'
    DataSource = DSSQLTranferencia
    RequestLive = True
    SQL.Strings = (
      'select * from TRANSFERENCIAITEM'
      'where (%MFiltro)  and  TRFEA13ID = :TRFEA13ID')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 272
    Top = 8
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'TRFEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLTranferenciaItemTRFEA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'TRFEA13ID'
      Origin = 'DB.TRANSFERENCIAITEM.TRFEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTranferenciaItemTRITICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Item'
      FieldName = 'TRITICOD'
      Origin = 'DB.TRANSFERENCIAITEM.TRITICOD'
    end
    object SQLTranferenciaItemPRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.TRANSFERENCIAITEM.PRODICOD'
    end
    object SQLTranferenciaItemTRITN3QTDEENVIADA: TFloatField
      DisplayLabel = 'Qtde Enviada'
      FieldName = 'TRITN3QTDEENVIADA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITN3QTDEENVIADA'
      DisplayFormat = '#,###0.000'
    end
    object SQLTranferenciaItemTRITN3QTDERECEBIDA: TFloatField
      DisplayLabel = 'Qtde Recebida'
      FieldName = 'TRITN3QTDERECEBIDA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITN3QTDERECEBIDA'
      DisplayFormat = '#,###0.000'
    end
    object SQLTranferenciaItemTRITA254DIVERGENCIA: TStringField
      DisplayLabel = 'Divergencia'
      FieldName = 'TRITA254DIVERGENCIA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITA254DIVERGENCIA'
      FixedChar = True
      Size = 100
    end
    object SQLTranferenciaItemREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.TRANSFERENCIAITEM.REGISTRO'
    end
    object SQLTranferenciaItemPENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.TRANSFERENCIAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTranferenciaItemClassFiscal: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClassFiscal'
      Size = 60
      Calculated = True
    end
    object SQLTranferenciaItemMarca: TStringField
      FieldKind = fkCalculated
      FieldName = 'Marca'
      Size = 60
      Calculated = True
    end
    object SQLTranferenciaItemUnidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Unidade'
      Size = 60
      Calculated = True
    end
    object SQLTranferenciaItemProdutoLookup: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 100
      Calculated = True
    end
    object SQLTranferenciaItemReferencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'Referencia'
      Size = 60
      Calculated = True
    end
    object SQLTranferenciaItemCodBarras: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodBarras'
      Size = 60
      Calculated = True
    end
    object SQLTranferenciaItemTRITN3VLRCUSTO: TFloatField
      FieldName = 'TRITN3VLRCUSTO'
      Origin = 'DB.TRANSFERENCIAITEM.TRITN3VLRCUSTO'
    end
    object SQLTranferenciaItemCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.TRANSFERENCIAITEM.CUPOA13ID'
      Size = 13
    end
  end
  object DSSQLTranferencia: TDataSource
    DataSet = SQLTranferencia
    OnDataChange = DSSQLTranferenciaDataChange
    Left = 236
    Top = 8
  end
  object DSSQLTranferenciaItem: TDataSource
    DataSet = SQLTranferenciaItem
    Left = 300
    Top = 8
  end
  object tblDadosTranferencia: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'tblDadosTranferencia'
    Left = 692
    Top = 8
    object tblDadosTranferenciaTRFEA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'TRFEA13ID'
      Origin = 'DB.TRANSFERENCIA.TRFEA13ID'
      FixedChar = True
      Size = 13
    end
    object tblDadosTranferenciaTRFEDEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'TRFEDEMISSAO'
      Origin = 'DB.TRANSFERENCIA.TRFEDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object tblDadosTranferenciaTRFEA30USUENVIO: TStringField
      DisplayLabel = 'Usu'#225'rio Envio'
      FieldName = 'TRFEA30USUENVIO'
      Origin = 'DB.TRANSFERENCIA.TRFEA30USUENVIO'
      FixedChar = True
      Size = 30
    end
    object tblDadosTranferenciaDestNome: TStringField
      FieldName = 'DestNome'
      Size = 60
    end
    object tblDadosTranferenciaDestCnpj: TStringField
      FieldName = 'DestCnpj'
    end
    object tblDadosTranferenciaDestIE: TStringField
      FieldName = 'DestIE'
    end
    object tblDadosTranferenciaDestEmail: TStringField
      FieldName = 'DestEmail'
      Size = 60
    end
    object tblDadosTranferenciaDestCidade: TStringField
      FieldName = 'DestCidade'
      Size = 100
    end
    object tblDadosTranferenciaDestEndereco: TStringField
      FieldName = 'DestEndereco'
      Size = 100
    end
    object tblDadosTranferenciaDestFoneFax: TStringField
      FieldName = 'DestFoneFax'
      Size = 30
    end
    object tblDadosTranferenciaRemtNome: TStringField
      FieldName = 'RemtNome'
      Size = 60
    end
    object tblDadosTranferenciaRemtCnpj: TStringField
      FieldName = 'RemtCnpj'
    end
    object tblDadosTranferenciaRemtIE: TStringField
      FieldName = 'RemtIE'
    end
    object tblDadosTranferenciaRemtEmail: TStringField
      FieldName = 'RemtEmail'
      Size = 60
    end
    object tblDadosTranferenciaRemtCidade: TStringField
      FieldName = 'RemtCidade'
      Size = 100
    end
    object tblDadosTranferenciaRemtEnderecp: TStringField
      FieldName = 'RemtEnderecp'
      Size = 100
    end
    object tblDadosTranferenciaRemtFoneFax: TStringField
      FieldName = 'RemtFoneFax'
      Size = 30
    end
  end
  object tblTransferenciaDivergencias: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'tblTransferenciaDivergencias'
    Left = 720
    Top = 8
    object tblTransferenciaDivergenciasPRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.TRANSFERENCIAITEM.PRODICOD'
    end
    object tblTransferenciaDivergenciasTRITN3QTDEENVIADA: TFloatField
      DisplayLabel = 'Qtde Enviada'
      FieldName = 'TRITN3QTDEENVIADA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITN3QTDEENVIADA'
      DisplayFormat = '#,###0.000'
    end
    object tblTransferenciaDivergenciasTRITN3QTDERECEBIDA: TFloatField
      DisplayLabel = 'Qtde Recebida'
      FieldName = 'TRITN3QTDERECEBIDA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITN3QTDERECEBIDA'
      DisplayFormat = '#,###0.000'
    end
    object tblTransferenciaDivergenciasTRITA254DIVERGENCIA: TStringField
      DisplayLabel = 'Divergencia'
      FieldName = 'TRITA254DIVERGENCIA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITA254DIVERGENCIA'
      FixedChar = True
      Size = 100
    end
    object tblTransferenciaDivergenciasUnidade: TStringField
      FieldName = 'Unidade'
      Size = 60
    end
    object tblTransferenciaDivergenciasProdutoLookup: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'ProdutoLookup'
      Size = 100
    end
    object tblTransferenciaDivergenciasReferencia: TStringField
      FieldName = 'Referencia'
      Size = 60
    end
    object tblTransferenciaDivergenciasCodBarras: TStringField
      FieldName = 'CodBarras'
      Size = 60
    end
  end
  object crpRelatorio: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'D:\DESENV\UnitGestao\Relatorios\Movimentacao Caixa.rpt'
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    OnExecuteEnd = crpRelatorioExecuteEnd
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    Formulas.Formula.Strings = (
      '"Periodo Emissao"')
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 532
    Top = 8
  end
  object PopupMenu: TPopupMenu
    Left = 592
    Top = 8
    object mnRemoverItem: TMenuItem
      Caption = 'Remover Item'
      OnClick = mnRemoverItemClick
    end
  end
  object PopupMenuRelatorios: TPopupMenu
    OnPopup = PopupMenuRelatoriosPopup
    Left = 562
    Top = 8
    object mnEnvio: TMenuItem
      Caption = 'Tre]ansfer'#234'ncias Enviadas [Empresa Origem: ]'
      OnClick = mnEnvioClick
    end
    object mnRecebimento: TMenuItem
      Caption = 'Recebimentos com Diverg'#234'ncia'
      OnClick = mnRecebimentoClick
    end
  end
  object FormStorage: TFormStorage
    StoredProps.Strings = (
      'CKImpMatricial.Checked'
      'CKSemCusto.Checked'
      'ckGrade.Checked')
    StoredValues = <>
    Left = 408
    Top = 264
  end
  object SQLNotaFiscal: TRxQuery
    Tag = 2
    BeforePost = SQLNotaFiscalBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from NotaFiscal')
    Macros = <>
    Left = 32
    Top = 408
    object SQLNotaFiscalNOFIA13ID: TStringField
      Tag = 2
      FieldName = 'NOFIA13ID'
      Origin = 'DB.NOTAFISCAL.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTAFISCAL.EMPRICOD'
    end
    object SQLNotaFiscalNOFIICOD: TIntegerField
      Tag = 1
      FieldName = 'NOFIICOD'
      Origin = 'DB.NOTAFISCAL.NOFIICOD'
    end
    object SQLNotaFiscalEMPRICODDEST: TIntegerField
      FieldName = 'EMPRICODDEST'
      Origin = 'DB.NOTAFISCAL.EMPRICODDEST'
    end
    object SQLNotaFiscalCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.NOTAFISCAL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTAFISCAL.FORNICOD'
    end
    object SQLNotaFiscalSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.NOTAFISCAL.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
      Origin = 'DB.NOTAFISCAL.NOFIINUMERO'
    end
    object SQLNotaFiscalNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      Origin = 'DB.NOTAFISCAL.NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
      Origin = 'DB.NOTAFISCAL.NOFIDEMIS'
    end
    object SQLNotaFiscalCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.NOTAFISCAL.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTAFISCAL.OPESICOD'
    end
    object SQLNotaFiscalNOFIN2BASCALCICMS: TFloatField
      FieldName = 'NOFIN2BASCALCICMS'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCICMS'
    end
    object SQLNotaFiscalNOFIN2VLRICMS: TFloatField
      FieldName = 'NOFIN2VLRICMS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRICMS'
    end
    object SQLNotaFiscalNOFIN2BASCALCSUBS: TFloatField
      FieldName = 'NOFIN2BASCALCSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCSUBS'
    end
    object SQLNotaFiscalNOFIN2BASCALCCIPI: TFloatField
      FieldName = 'NOFIN2BASCALCCIPI'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCCIPI'
    end
    object SQLNotaFiscalNOFIN2VLRIPI: TFloatField
      FieldName = 'NOFIN2VLRIPI'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRIPI'
    end
    object SQLNotaFiscalNOFIN2VLRDESC: TFloatField
      FieldName = 'NOFIN2VLRDESC'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRDESC'
    end
    object SQLNotaFiscalNOFIN2VLRFRETE: TFloatField
      FieldName = 'NOFIN2VLRFRETE'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRFRETE'
    end
    object SQLNotaFiscalNOFIN2VLRSEGURO: TFloatField
      FieldName = 'NOFIN2VLRSEGURO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSEGURO'
    end
    object SQLNotaFiscalNOFIN2VLROUTRASDESP: TFloatField
      FieldName = 'NOFIN2VLROUTRASDESP'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLROUTRASDESP'
    end
    object SQLNotaFiscalNOFIN2VLRSERVICO: TFloatField
      FieldName = 'NOFIN2VLRSERVICO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSERVICO'
    end
    object SQLNotaFiscalNOFIN2VLRISSQN: TFloatField
      FieldName = 'NOFIN2VLRISSQN'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRISSQN'
    end
    object SQLNotaFiscalNOFIN2VLRPRODUTO: TFloatField
      FieldName = 'NOFIN2VLRPRODUTO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRPRODUTO'
    end
    object SQLNotaFiscalNOFIN2VLRNOTA: TFloatField
      FieldName = 'NOFIN2VLRNOTA'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRNOTA'
    end
    object SQLNotaFiscalNOFICFRETEPORCONTA: TStringField
      FieldName = 'NOFICFRETEPORCONTA'
      Origin = 'DB.NOTAFISCAL.NOFICFRETEPORCONTA'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.NOTAFISCAL.TRANICOD'
    end
    object SQLNotaFiscalNOFIN3QUANT: TFloatField
      FieldName = 'NOFIN3QUANT'
      Origin = 'DB.NOTAFISCAL.NOFIN3QUANT'
    end
    object SQLNotaFiscalNOFIA15MARCA: TStringField
      FieldName = 'NOFIA15MARCA'
      Origin = 'DB.NOTAFISCAL.NOFIA15MARCA'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalNOFIN3PESBRUT: TFloatField
      FieldName = 'NOFIN3PESBRUT'
      Origin = 'DB.NOTAFISCAL.NOFIN3PESBRUT'
    end
    object SQLNotaFiscalNOFIN3PESLIQ: TFloatField
      FieldName = 'NOFIN3PESLIQ'
      Origin = 'DB.NOTAFISCAL.NOFIN3PESLIQ'
    end
    object SQLNotaFiscalNOFIA8PLACAVEIC: TStringField
      FieldName = 'NOFIA8PLACAVEIC'
      Origin = 'DB.NOTAFISCAL.NOFIA8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLNotaFiscalPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.NOTAFISCAL.PLRCICOD'
    end
    object SQLNotaFiscalPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.NOTAFISCAL.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTAFISCAL.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTAFISCAL.REGISTRO'
    end
    object SQLNotaFiscalNOFIN2VLRDESCPROM: TFloatField
      FieldName = 'NOFIN2VLRDESCPROM'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRDESCPROM'
    end
    object SQLNotaFiscalNOFIINROTALAO: TIntegerField
      FieldName = 'NOFIINROTALAO'
      Origin = 'DB.NOTAFISCAL.NOFIINROTALAO'
    end
    object SQLNotaFiscalPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.NOTAFISCAL.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.NOTAFISCAL.VENDICOD'
    end
    object SQLNotaFiscalPDVDA60OBS: TStringField
      FieldName = 'PDVDA60OBS'
      Origin = 'DB.NOTAFISCAL.PDVDA60OBS'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalNOFIA20ESPECIE: TStringField
      FieldName = 'NOFIA20ESPECIE'
      Origin = 'DB.NOTAFISCAL.NOFIA20ESPECIE'
      FixedChar = True
    end
    object SQLNotaFiscalNOFIA30COMPRADOR: TStringField
      FieldName = 'NOFIA30COMPRADOR'
      Origin = 'DB.NOTAFISCAL.NOFIA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalNOFIA30NROPEDCOMP: TStringField
      FieldName = 'NOFIA30NROPEDCOMP'
      Origin = 'DB.NOTAFISCAL.NOFIA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalNOFIN2VLRICMSFRETE: TFloatField
      FieldName = 'NOFIN2VLRICMSFRETE'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRICMSFRETE'
    end
    object SQLNotaFiscalNOFIN2VLRSUBS: TFloatField
      FieldName = 'NOFIN2VLRSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSUBS'
    end
    object SQLNotaFiscalCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.NOTAFISCAL.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNOFIA13IDCONSIGNADA: TStringField
      FieldName = 'NOFIA13IDCONSIGNADA'
      Origin = 'DB.NOTAFISCAL.NOFIA13IDCONSIGNADA'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.NOTAFISCAL.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalCUPOA13IDCUPNEG: TStringField
      FieldName = 'CUPOA13IDCUPNEG'
      Origin = 'DB.NOTAFISCAL.CUPOA13IDCUPNEG'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNOFIDCANCEL: TDateTimeField
      FieldName = 'NOFIDCANCEL'
      Origin = 'DB.NOTAFISCAL.NOFIDCANCEL'
    end
    object SQLNotaFiscalPLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.NOTAFISCAL.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalPLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.NOTAFISCAL.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.NOTAFISCAL.USUAICOD'
    end
    object SQLNotaFiscalUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.NOTAFISCAL.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.NOTAFISCAL.ROTAICOD'
    end
    object SQLNotaFiscalNOFIAOBSCORPONF: TStringField
      FieldName = 'NOFIAOBSCORPONF'
      Origin = 'DB.NOTAFISCAL.NOFIAOBSCORPONF'
      FixedChar = True
      Size = 200
    end
    object SQLNotaFiscalVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.NOTAFISCAL.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNOFICEXPCONTABIL: TStringField
      FieldName = 'NOFICEXPCONTABIL'
      Origin = 'DB.NOTAFISCAL.NOFICEXPCONTABIL'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalNOFIDSAIDAENTRADA: TDateTimeField
      FieldName = 'NOFIDSAIDAENTRADA'
      Origin = 'DB.NOTAFISCAL.NOFIDSAIDAENTRADA'
    end
    object SQLNotaFiscalNOFIA255OBS: TMemoField
      FieldName = 'NOFIA255OBS'
      Origin = 'DB.NOTAFISCAL.NOFIA255OBS'
      BlobType = ftMemo
      Size = 1
    end
    object SQLNotaFiscalCFOPA5CODAUX: TStringField
      FieldName = 'CFOPA5CODAUX'
      Origin = 'DB.NOTAFISCAL.CFOPA5CODAUX'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.NOTAFISCAL.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalNOFIA5CODRETORNO: TStringField
      FieldName = 'NOFIA5CODRETORNO'
      Origin = 'DB.NOTAFISCAL.NOFIA5CODRETORNO'
      Size = 5
    end
    object SQLNotaFiscalNOFICSTNFE: TStringField
      FieldName = 'NOFICSTNFE'
      Origin = 'DB.NOTAFISCAL.NOFICSTNFE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalNOFITRETORNO: TStringField
      FieldName = 'NOFITRETORNO'
      Origin = 'DB.NOTAFISCAL.NOFITRETORNO'
      Size = 100
    end
    object SQLNotaFiscalNOFIN2PERCCOFINS: TFloatField
      FieldName = 'NOFIN2PERCCOFINS'
      Origin = 'DB.NOTAFISCAL.NOFIN2PERCCOFINS'
    end
    object SQLNotaFiscalNOFIN2PERCCONTRSOCIAL: TFloatField
      FieldName = 'NOFIN2PERCCONTRSOCIAL'
      Origin = 'DB.NOTAFISCAL.NOFIN2PERCCONTRSOCIAL'
    end
    object SQLNotaFiscalNOFIN2PERCINSS: TFloatField
      FieldName = 'NOFIN2PERCINSS'
      Origin = 'DB.NOTAFISCAL.NOFIN2PERCINSS'
    end
    object SQLNotaFiscalNOFIN2PERCIR: TFloatField
      FieldName = 'NOFIN2PERCIR'
      Origin = 'DB.NOTAFISCAL.NOFIN2PERCIR'
    end
    object SQLNotaFiscalNOFIN2PERCISSQN: TFloatField
      FieldName = 'NOFIN2PERCISSQN'
      Origin = 'DB.NOTAFISCAL.NOFIN2PERCISSQN'
    end
    object SQLNotaFiscalNOFIN2PERCMAODEOBRA: TFloatField
      FieldName = 'NOFIN2PERCMAODEOBRA'
      Origin = 'DB.NOTAFISCAL.NOFIN2PERCMAODEOBRA'
    end
    object SQLNotaFiscalNOFIN2PERCMATERIAL: TFloatField
      FieldName = 'NOFIN2PERCMATERIAL'
      Origin = 'DB.NOTAFISCAL.NOFIN2PERCMATERIAL'
    end
    object SQLNotaFiscalNOFIN2PERCPIS: TFloatField
      FieldName = 'NOFIN2PERCPIS'
      Origin = 'DB.NOTAFISCAL.NOFIN2PERCPIS'
    end
    object SQLNotaFiscalNOFIN3VLRCOFINS: TFloatField
      FieldName = 'NOFIN3VLRCOFINS'
      Origin = 'DB.NOTAFISCAL.NOFIN3VLRCOFINS'
    end
    object SQLNotaFiscalNOFIN3VLRCONTRSOCIAL: TFloatField
      FieldName = 'NOFIN3VLRCONTRSOCIAL'
      Origin = 'DB.NOTAFISCAL.NOFIN3VLRCONTRSOCIAL'
    end
    object SQLNotaFiscalNOFIN3VLRINSS: TFloatField
      FieldName = 'NOFIN3VLRINSS'
      Origin = 'DB.NOTAFISCAL.NOFIN3VLRINSS'
    end
    object SQLNotaFiscalNOFIN3VLRIR: TFloatField
      FieldName = 'NOFIN3VLRIR'
      Origin = 'DB.NOTAFISCAL.NOFIN3VLRIR'
    end
    object SQLNotaFiscalNOFIN3VLRMAODEOBRA: TFloatField
      FieldName = 'NOFIN3VLRMAODEOBRA'
      Origin = 'DB.NOTAFISCAL.NOFIN3VLRMAODEOBRA'
    end
    object SQLNotaFiscalNOFIN3VLRMATERIAL: TFloatField
      FieldName = 'NOFIN3VLRMATERIAL'
      Origin = 'DB.NOTAFISCAL.NOFIN3VLRMATERIAL'
    end
    object SQLNotaFiscalNOFIN3VLRPIS: TFloatField
      FieldName = 'NOFIN3VLRPIS'
      Origin = 'DB.NOTAFISCAL.NOFIN3VLRPIS'
    end
    object SQLNotaFiscalNOFA1ENTRADASAIDA: TStringField
      FieldName = 'NOFA1ENTRADASAIDA'
      Origin = 'DB.NOTAFISCAL.NOFA1ENTRADASAIDA'
      Size = 1
    end
    object SQLNotaFiscalNOFIA15PROTOCOLO: TStringField
      FieldName = 'NOFIA15PROTOCOLO'
      Origin = 'DB.NOTAFISCAL.NOFIA15PROTOCOLO'
      Size = 15
    end
    object SQLNotaFiscalNOFIA44CHAVEACESSO: TStringField
      FieldName = 'NOFIA44CHAVEACESSO'
      Origin = 'DB.NOTAFISCAL.NOFIA44CHAVEACESSO'
      Size = 44
    end
    object SQLNotaFiscalNOFICFINALIDADE: TStringField
      FieldName = 'NOFICFINALIDADE'
      Origin = 'DB.NOTAFISCAL.NOFICFINALIDADE'
      FixedChar = True
      Size = 1
    end
  end
  object SQLNotaFiscalItem: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM NOTAFISCALITEM'
      'Where (%Filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 61
    Top = 408
    object SQLNotaFiscalItemNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.NOTAFISCALITEM.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalItemNFITIITEM: TIntegerField
      FieldName = 'NFITIITEM'
      Origin = 'DB.NOTAFISCALITEM.NFITIITEM'
    end
    object SQLNotaFiscalItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTAFISCALITEM.PRODICOD'
    end
    object SQLNotaFiscalItemNFITN3QUANT: TFloatField
      FieldName = 'NFITN3QUANT'
      Origin = 'DB.NOTAFISCALITEM.NFITN3QUANT'
    end
    object SQLNotaFiscalItemNFITN2VLRUNIT: TFloatField
      FieldName = 'NFITN2VLRUNIT'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRUNIT'
    end
    object SQLNotaFiscalItemNFITN2PERCDESC: TFloatField
      FieldName = 'NFITN2PERCDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCDESC'
    end
    object SQLNotaFiscalItemNFITN2VLRDESC: TFloatField
      FieldName = 'NFITN2VLRDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRDESC'
    end
    object SQLNotaFiscalItemNFITN2PERCICMS: TFloatField
      FieldName = 'NFITN2PERCICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCICMS'
    end
    object SQLNotaFiscalItemNFITN2BASEICMS: TFloatField
      FieldName = 'NFITN2BASEICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASEICMS'
    end
    object SQLNotaFiscalItemNFITN2VLRICMS: TFloatField
      FieldName = 'NFITN2VLRICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRICMS'
    end
    object SQLNotaFiscalItemNFITN2PERCSUBS: TFloatField
      FieldName = 'NFITN2PERCSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCSUBS'
    end
    object SQLNotaFiscalItemNFITN2BASESUBS: TFloatField
      FieldName = 'NFITN2BASESUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASESUBS'
    end
    object SQLNotaFiscalItemNFITN2VLRSUBS: TFloatField
      FieldName = 'NFITN2VLRSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRSUBS'
    end
    object SQLNotaFiscalItemNFITN2PERCIPI: TFloatField
      FieldName = 'NFITN2PERCIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCIPI'
    end
    object SQLNotaFiscalItemNFITN2VLRIPI: TFloatField
      FieldName = 'NFITN2VLRIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRIPI'
    end
    object SQLNotaFiscalItemNFITN2PERCISSQN: TFloatField
      FieldName = 'NFITN2PERCISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCISSQN'
    end
    object SQLNotaFiscalItemNFITN2VLRISSQN: TFloatField
      FieldName = 'NFITN2VLRISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRISSQN'
    end
    object SQLNotaFiscalItemNFITN2VLRFRETE: TFloatField
      FieldName = 'NFITN2VLRFRETE'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRFRETE'
    end
    object SQLNotaFiscalItemNFITN2VLRLUCRO: TFloatField
      FieldName = 'NFITN2VLRLUCRO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRLUCRO'
    end
    object SQLNotaFiscalItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTAFISCALITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTAFISCALITEM.REGISTRO'
    end
    object SQLNotaFiscalItemNFITN2PERCREDUCAO: TFloatField
      FieldName = 'NFITN2PERCREDUCAO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCREDUCAO'
    end
    object SQLNotaFiscalItemNFITN3TOTVEND: TFloatField
      FieldName = 'NFITN3TOTVEND'
      Origin = 'DB.NOTAFISCALITEM.NFITN3TOTVEND'
    end
    object SQLNotaFiscalItemPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.NOTAFISCALITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalItemPVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
      Origin = 'DB.NOTAFISCALITEM.PVITIITEM'
    end
    object SQLNotaFiscalItemNFITN3QUANTVEND: TFloatField
      FieldName = 'NFITN3QUANTVEND'
      Origin = 'DB.NOTAFISCALITEM.NFITN3QUANTVEND'
    end
    object SQLNotaFiscalItemNFITN2PERCCOMIS: TFloatField
      FieldName = 'NFITN2PERCCOMIS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCCOMIS'
    end
    object SQLNotaFiscalItemCPITICPOS: TIntegerField
      FieldName = 'CPITICPOS'
      Origin = 'DB.NOTAFISCALITEM.CPITICPOS'
    end
    object SQLNotaFiscalItemCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.NOTAFISCALITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalItemLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTAFISCALITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalItemNFITA254OBS: TStringField
      FieldName = 'NFITA254OBS'
      Origin = 'DB.NOTAFISCALITEM.NFITA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLNotaFiscalItemCalculaIPI: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalculaIPI'
      Size = 1
      Calculated = True
    end
    object SQLNotaFiscalItemCalculaICMS: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalculaICMS'
      Size = 1
      Calculated = True
    end
    object SQLNotaFiscalItemNFITICST: TIntegerField
      FieldName = 'NFITICST'
      Origin = 'DB.NOTAFISCALITEM.NFITICST'
    end
  end
  object SQLSerieNF: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From Serie'
      'Where (%Empresa) and  (%Serie)')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 32
    Top = 445
    object SQLSerieNFSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLSerieNFPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSerieNFREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SERIE.REGISTRO'
    end
    object SQLSerieNFSERIINRONF: TIntegerField
      FieldName = 'SERIINRONF'
      Origin = 'DB.SERIE.SERIINRONF'
    end
    object SQLSerieNFEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.SERIE.EMPRICOD'
    end
  end
  object DSSQLSerieNF: TDataSource
    DataSet = SQLSerieNF
    Left = 60
    Top = 445
  end
  object crpSemCusto: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'D:\DESENV\UnitGestao\Relatorios\Movimentacao Caixa.rpt'
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    Formulas.Formula.Strings = (
      '"Periodo Emissao"')
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 532
    Top = 40
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 493
    Top = 8
  end
  object PopupMenuDiverso: TPopupMenu
    Left = 776
    Top = 488
    object ImportardoPalmOne1: TMenuItem
      Caption = 'Importar Produtos do Coletor Palm One'
      OnClick = ImportardoPalmOne1Click
    end
    object ImportarBematechDC20001: TMenuItem
      Caption = 'Importar Produtos do Coletor Bematech DC2000'
      OnClick = ImportarBematechDC20001Click
    end
  end
end
