inherited FormTelaPedidoCompraItemFiltro: TFormTelaPedidoCompraItemFiltro
  Left = 340
  Top = 11
  Caption = 'Assistente para Filtrar Produtos para Compra'
  ClientHeight = 690
  ClientWidth = 1350
  OldCreateOrder = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Top = 58
    Width = 1350
    Height = 632
    object GroupFiltro: TGroupBox
      Left = 0
      Top = 0
      Width = 1350
      Height = 141
      Align = alTop
      Color = 16249066
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 393
        Top = 43
        Width = 34
        Height = 13
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 557
        Top = 43
        Width = 55
        Height = 13
        Caption = 'SubGrupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 721
        Top = 43
        Width = 64
        Height = 13
        Caption = 'Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 853
        Top = 7
        Width = 35
        Height = 13
        Caption = 'Marca'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 392
        Top = 7
        Width = 154
        Height = 13
        Caption = 'Descri'#231#227'o Principal Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label50: TLabel
        Left = 614
        Top = 20
        Width = 13
        Height = 19
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label49: TLabel
        Left = 634
        Top = 7
        Width = 63
        Height = 13
        Caption = 'Ref.F'#225'brica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbSimples: TLabel
        Left = 784
        Top = 82
        Width = 198
        Height = 14
        Caption = 'Aten'#231#227'o! Fornecedor no Simples'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label25: TLabel
        Left = 737
        Top = 20
        Width = 13
        Height = 19
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 756
        Top = 7
        Width = 67
        Height = 13
        Caption = 'Cod.Interno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 834
        Top = 20
        Width = 13
        Height = 19
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 540
        Top = 56
        Width = 13
        Height = 19
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 704
        Top = 56
        Width = 13
        Height = 19
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 7
        Top = 103
        Width = 49
        Height = 13
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboGrupo: TRxDBLookupCombo
        Left = 389
        Top = 56
        Width = 150
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'GRUPICOD'
        LookupDisplay = 'GRUPA60DESCR'
        LookupSource = DSSQLGrupo
        ParentFont = False
        TabOrder = 6
        OnKeyDown = ComboGrupoKeyDown
      end
      object ComboSubGrupo: TRxDBLookupCombo
        Left = 553
        Top = 56
        Width = 150
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'SUBGICOD'
        LookupDisplay = 'SUBGA60DESCR'
        LookupSource = DSSQLSubGrupo
        ParentFont = False
        TabOrder = 7
        OnKeyDown = ComboSubGrupoKeyDown
      end
      object ComboFornecedor: TRxDBLookupCombo
        Left = 718
        Top = 56
        Width = 304
        Height = 21
        DropDownCount = 8
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'FORNICOD'
        LookupDisplay = 'FORNA60RAZAOSOC'
        LookupSource = DSSQLFornecedor
        ParentFont = False
        TabOrder = 8
        OnKeyDown = ComboFornecedorKeyDown
      end
      object ComboMarca: TRxDBLookupCombo
        Left = 849
        Top = 20
        Width = 174
        Height = 21
        DropDownCount = 8
        FieldsDelimiter = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'MARCICOD'
        LookupDisplay = 'MARCA60DESCR'
        LookupDisplayIndex = 1
        LookupSource = DSSQLMarca
        ParentFont = False
        TabOrder = 5
        OnKeyDown = ComboMarcaKeyDown
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 14
        Width = 376
        Height = 44
        Caption = ' Vendidos nos Ultimos 30 dias '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label12: TLabel
          Left = 97
          Top = 20
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = ATE
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DE: TDateEdit
          Left = 5
          Top = 16
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
        end
        object ATE: TDateEdit
          Left = 123
          Top = 16
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
        end
        object CkPeriodoVendas: TCheckBox
          Left = 217
          Top = 19
          Width = 139
          Height = 17
          Caption = 'N'#227'o Totalizar Vendas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object EditProduto: TEdit
        Left = 388
        Top = 20
        Width = 225
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditReferencia: TEdit
        Left = 630
        Top = 20
        Width = 107
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object CKNegativo: TCheckBox
        Left = 391
        Top = 96
        Width = 314
        Height = 15
        Caption = 'Mostrar Apenas com Saldo igual a Zero ou Negativo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object CKOrdemMarcaDescr: TCheckBox
        Left = 391
        Top = 81
        Width = 191
        Height = 17
        Caption = 'Ordenar por Marca+Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object EditCdPrincipal: TEdit
        Left = 752
        Top = 20
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 58
        Width = 375
        Height = 44
        Caption = ' Comprados nos Ultimos 30 dias '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label27: TLabel
          Left = 97
          Top = 20
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = AteCompras
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DeCompras: TDateEdit
          Left = 5
          Top = 16
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
        end
        object AteCompras: TDateEdit
          Left = 123
          Top = 16
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
        end
        object ckPeriodoCompras: TCheckBox
          Left = 217
          Top = 19
          Width = 148
          Height = 17
          Caption = 'N'#227'o Totalizar Compras'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 7
        Top = 117
        Width = 376
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Todas'
        EmptyValue = 'Todas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'EMPRICOD'
        LookupDisplay = 'EMPRA60NOMEFANT'
        LookupSource = dsEmpresa
        ParentFont = False
        TabOrder = 11
        OnChange = RxDBLookupCombo1Change
        OnKeyDown = ComboGrupoKeyDown
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 141
      Width = 1350
      Height = 491
      Align = alClient
      Color = 16249066
      TabOrder = 1
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 1348
        Height = 224
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = 16249066
        TabOrder = 0
        object Label11: TLabel
          Left = 767
          Top = 3
          Width = 149
          Height = 13
          Caption = 'Saldo de Estoque por Filial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbProdFiltrados: TLabel
          Left = 12
          Top = 2
          Width = 106
          Height = 13
          Caption = 'Produtos Filtrados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 3
          Top = 15
          Width = 759
          Height = 238
          BorderStyle = bsNone
          Color = clWhite
          DataSource = DSTblTemporaria
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnEnter = DBGrid1Enter
          OnKeyDown = DBGrid1KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'PRODICOD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODA60DESCR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 276
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAULTCOMPRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODDULTVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'U.Venda'
              Width = 49
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDETOTVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Q.T.Venda'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODN3VLRVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 56
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDEMBAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Embal'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDECOMPRADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Qtde.Ped'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODN3VLRCOMPRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IPIPERC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 36
              Visible = True
            end>
        end
        object DBGrid3: TDBGrid
          Left = 765
          Top = 15
          Width = 179
          Height = 238
          BorderStyle = bsNone
          Color = clWhite
          DataSource = dsProdSaldo
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'EMPRICOD'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PSLDN3QTDE'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PSLDN3QTDMIN'
              Title.Caption = 'Q.Minimo'
              Visible = True
            end>
        end
        object Panel9: TPanel
          Left = 947
          Top = 19
          Width = 84
          Height = 145
          Color = 16249066
          TabOrder = 2
          object Label15: TLabel
            Left = 3
            Top = 1
            Width = 49
            Height = 13
            Caption = 'Resumo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object lbQtdTotalCompras: TLabel
            Left = 38
            Top = 44
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = '0,000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbQtdTotalVendas: TLabel
            Left = 38
            Top = 82
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = '0,000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbQtdTotalSaldo: TLabel
            Left = 38
            Top = 125
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = '0,000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 3
            Top = 25
            Width = 71
            Height = 13
            Caption = 'Q.T. Compras:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 8
            Top = 63
            Width = 64
            Height = 13
            Caption = 'Q.T. Vendas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 3
            Top = 108
            Width = 69
            Height = 13
            Caption = 'Saldo Periodo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 2
            Top = 95
            Width = 75
            Height = 13
            Caption = '---------------'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 254
        Width = 1348
        Height = 236
        Align = alBottom
        Color = 16249066
        TabOrder = 1
        object LbProdEscolhidosCompra: TLabel
          Left = 12
          Top = 7
          Width = 191
          Height = 13
          Caption = 'Produtos Escolhidos para Compra:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 723
          Top = 7
          Width = 255
          Height = 13
          Caption = 'Ultimas Nfs Entradas do Produto Selecionado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GridProdutosFiltrados: TDBGrid
          Left = 3
          Top = 21
          Width = 712
          Height = 169
          BorderStyle = bsNone
          Color = clWhite
          DataSource = DSTblTempComprados
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = GridProdutosFiltradosDrawColumnCell
          OnEnter = GridProdutosFiltradosEnter
          OnExit = GridProdutosFiltradosExit
          Columns = <
            item
              Expanded = False
              FieldName = 'PRODICOD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODA60DESCR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 313
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODN3VLRVENDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Venda Atual'
              Width = 71
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'QTDEMBAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = 'Embal.'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDECOMPRADO'
              Title.Caption = 'Qtde.Comprada'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODN3VLRCOMPRA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Vlr.Comprado'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IPIPERC'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 36
              Visible = True
            end>
        end
        object DBGrid2: TDBGrid
          Left = 722
          Top = 21
          Width = 600
          Height = 167
          BorderStyle = bsNone
          Color = clWhite
          DataSource = dsCompras
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'NOCPDRECEBIMENTO'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOCIN3VLRUNIT'
              Title.Caption = 'Vlr Compra'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDCompra'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPESA60DESCR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOCPA30NRO'
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 1
          Top = 192
          Width = 1346
          Height = 43
          Align = alBottom
          Color = 16249066
          TabOrder = 2
          object Label32: TLabel
            Left = 614
            Top = 3
            Width = 19
            Height = 13
            Caption = 'Cor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 514
            Top = 3
            Width = 61
            Height = 13
            Caption = 'Refer'#234'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 398
            Top = 3
            Width = 35
            Height = 13
            Caption = 'Marca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 13
            Top = 3
            Width = 106
            Height = 13
            Caption = 'Descri'#231#227'o Principal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit10: TDBEdit
            Left = 610
            Top = 17
            Width = 105
            Height = 21
            TabStop = False
            Color = 16249066
            DataField = 'Cor'
            DataSource = DSTblTempComprados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit9: TDBEdit
            Left = 511
            Top = 17
            Width = 94
            Height = 21
            TabStop = False
            Color = 16249066
            DataField = 'Ref'
            DataSource = DSTblTempComprados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 395
            Top = 17
            Width = 112
            Height = 21
            TabStop = False
            Color = 16249066
            DataField = 'Marca'
            DataSource = DSTblTempComprados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit8: TDBEdit
            Left = 10
            Top = 17
            Width = 379
            Height = 21
            TabStop = False
            Color = 16249066
            DataField = 'PRODA60DESCR'
            DataSource = DSTblTempComprados
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
        object ckComprasTodasFiliais: TCheckBox
          Left = 1007
          Top = 6
          Width = 150
          Height = 14
          Caption = 'Mostrar Todas Filiais'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 225
        Width = 1348
        Height = 29
        Align = alBottom
        Color = 16249066
        TabOrder = 2
        object Label13: TLabel
          Left = 948
          Top = 8
          Width = 50
          Height = 13
          Caption = 'Vlr.Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 873
          Top = 8
          Width = 34
          Height = 13
          Caption = 'Embal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 734
          Top = 8
          Width = 66
          Height = 13
          Caption = 'Prev.Entreg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 602
          Top = 8
          Width = 19
          Height = 13
          Caption = 'Cor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 482
          Top = 8
          Width = 19
          Height = 13
          Caption = 'Ref'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 329
          Top = 8
          Width = 35
          Height = 13
          Caption = 'Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 7
          Top = 8
          Width = 32
          Height = 13
          Caption = 'Descr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 1001
          Top = 4
          Width = 68
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'UltVlrCusto'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 910
          Top = 5
          Width = 35
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'QTDEMBAL'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 804
          Top = 5
          Width = 64
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'PRODDPREVCOMPRA'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 624
          Top = 5
          Width = 105
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'Cor'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 504
          Top = 5
          Width = 94
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'Referencia'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 367
          Top = 5
          Width = 112
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'Marca'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit30: TDBEdit
          Left = 43
          Top = 5
          Width = 282
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'PRODA60DESCR'
          DataSource = DSTblTemporaria
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 1350
    Height = 58
    inherited PanelCabecalho: TPanel
      Width = 1350
      Height = 57
      object Label19: TLabel [1]
        Left = 525
        Top = 4
        Width = 127
        Height = 24
        Caption = 'Total Pedido...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ImageProduto: TImage [2]
        Left = 114
        Top = 5
        Width = 126
        Height = 17
        Center = True
        Proportional = True
        Stretch = True
        Transparent = True
        Visible = False
      end
      inherited PanelNavigator: TPanel
        Top = 25
        Width = 1350
        object Label14: TLabel [0]
          Left = 464
          Top = 3
          Width = 348
          Height = 14
          Caption = '<F9> Mostra hist'#243'rico de Compras e Vendas do produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel [1]
          Left = 464
          Top = 16
          Width = 240
          Height = 14
          Caption = '<F8> Ver Foto do produto selecionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 1350
          inherited BtnFecharTela: TSpeedButton
            Left = 840
          end
        end
        object BtSugestao: TBitBtn
          Left = 228
          Top = 3
          Width = 105
          Height = 25
          Caption = '&3 - Sugest'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BtSugestaoClick
        end
        object BTGravar: TBitBtn
          Left = 119
          Top = 3
          Width = 105
          Height = 25
          Caption = '&2 - Gravar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ModalResult = 1
          ParentFont = False
          TabOrder = 1
        end
        object BTFiltrar: TBitBtn
          Left = 10
          Top = 3
          Width = 105
          Height = 25
          Caption = '&1 - Filtrar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BTFiltrarClick
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
        object BTListagem: TBitBtn
          Left = 338
          Top = 3
          Width = 105
          Height = 25
          Caption = '&4 - Listagem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = BTListagemClick
        end
      end
      object DBEdit3: TDBEdit
        Left = 678
        Top = 6
        Width = 123
        Height = 18
        TabStop = False
        BorderStyle = bsNone
        Color = clBlack
        DataField = 'ValorTotal'
        DataSource = DSSQLTotal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object SQLMarca: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MARCA'
      'order by MARCA60DESCR')
    Macros = <>
    Left = 602
    Top = 5
    object SQLMarcaMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'UNITGESTAO.MARCA.MARCICOD'
    end
    object SQLMarcaMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'UNITGESTAO.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLMarca: TDataSource
    AutoEdit = False
    DataSet = SQLMarca
    Left = 574
    Top = 5
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select FORNICOD, FORNA60RAZAOSOC, FORNCSIMPLES from Fornecedor'
      'Order by FORNA60RAZAOSOC')
    Macros = <>
    Left = 544
    Top = 5
    object SQLFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFornecedorFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNCSIMPLES: TStringField
      FieldName = 'FORNCSIMPLES'
      Origin = 'DB.FORNECEDOR.FORNCSIMPLES'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLFornecedor: TDataSource
    AutoEdit = False
    DataSet = SQLFornecedor
    OnDataChange = DSSQLFornecedorDataChange
    Left = 516
    Top = 5
  end
  object SQLSubGrupo: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLGrupo
    SQL.Strings = (
      'select * from SUBGRUPO Where GRUPICOD = :GRUPICOD'
      'order by SUBGA60DESCR')
    Macros = <>
    Left = 486
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GRUPICOD'
        ParamType = ptUnknown
      end>
    object SQLSubGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'UNITGESTAO.SUBGRUPO.GRUPICOD'
    end
    object SQLSubGrupoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'UNITGESTAO.SUBGRUPO.SUBGICOD'
    end
    object SQLSubGrupoSUBGA60DESCR: TStringField
      FieldName = 'SUBGA60DESCR'
      Origin = 'UNITGESTAO.SUBGRUPO.SUBGA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLSubGrupo: TDataSource
    AutoEdit = False
    DataSet = SQLSubGrupo
    Left = 458
    Top = 5
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRUPO Where (%MFiltro)'
      'order by GRUPA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 428
    Top = 5
    object SQLGrupoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'UNITGESTAO.GRUPO.GRUPICOD'
    end
    object SQLGrupoGRUPA60DESCR: TStringField
      FieldName = 'GRUPA60DESCR'
      Origin = 'UNITGESTAO.GRUPO.GRUPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLGrupo: TDataSource
    AutoEdit = False
    DataSet = SQLGrupo
    Left = 400
    Top = 5
  end
  object SQLMarcaAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Marca')
    Macros = <>
    Left = 981
    Top = 26
    object SQLMarcaAuxMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.MARCA.MARCICOD'
    end
    object SQLMarcaAuxMARCA60DESCR: TStringField
      FieldName = 'MARCA60DESCR'
      Origin = 'DB.MARCA.MARCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLCorAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Cor')
    Macros = <>
    Left = 1009
    Top = 26
    object SQLCorAuxCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorAuxCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLUnidadeAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Unidade')
    Macros = <>
    Left = 1037
    Top = 26
    object SQLUnidadeAuxUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
    end
    object SQLUnidadeAuxUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLUnidadeAuxPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.UNIDADE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLUnidadeAuxREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.UNIDADE.REGISTRO'
    end
    object SQLUnidadeAuxUNIDA15DESCR: TStringField
      FieldName = 'UNIDA15DESCR'
      Origin = 'DB.UNIDADE.UNIDA15DESCR'
      FixedChar = True
      Size = 15
    end
    object SQLUnidadeAuxUNIDCFRAC: TStringField
      FieldName = 'UNIDCFRAC'
      Origin = 'DB.UNIDADE.UNIDCFRAC'
      FixedChar = True
      Size = 1
    end
  end
  object DSTblTempComprados: TDataSource
    DataSet = TblTempComprados
    Left = 296
    Top = 514
  end
  object TblTempComprados: TTable
    AutoCalcFields = False
    AfterPost = TblTempCompradosAfterPost
    BeforeDelete = TblTempCompradosBeforeDelete
    AfterDelete = TblTempCompradosAfterDelete
    DatabaseName = 'Easy_Temp'
    TableName = 'PedidoCompraProdutosFiltradosComprados.DB'
    Left = 268
    Top = 514
    object TblTempCompradosPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
    end
    object TblTempCompradosPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTempCompradosQTDEMBAL: TIntegerField
      DisplayLabel = 'Cap.Embal'
      FieldName = 'QTDEMBAL'
    end
    object TblTempCompradosPRODN3VLRCOMPRA: TFloatField
      DisplayLabel = 'Vlr.Compra'
      FieldName = 'PRODN3VLRCOMPRA'
      DisplayFormat = '#,##0.00'
    end
    object TblTempCompradosPRODN3VLRVENDA: TFloatField
      DisplayLabel = 'Vlr.Venda'
      FieldName = 'PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00'
    end
    object TblTempCompradosQTDECOMPRADO: TFloatField
      DisplayLabel = 'Qtde.Pedido'
      FieldName = 'QTDECOMPRADO'
    end
    object TblTempCompradosIPIPERC: TFloatField
      DisplayLabel = 'IPI %'
      FieldName = 'IPIPERC'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object TblTempCompradosCor: TStringField
      FieldName = 'Cor'
    end
    object TblTempCompradosRef: TStringField
      FieldName = 'Ref'
      Size = 30
    end
    object TblTempCompradosMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
    object TblTempCompradosUltVlrCusto: TFloatField
      FieldName = 'UltVlrCusto'
      DisplayFormat = '##0.00000'
    end
    object TblTempCompradosSALDO: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'SALDO'
    end
    object TblTempCompradosQTDETOTVENDA: TFloatField
      DisplayLabel = 'Q.Venda'
      FieldName = 'QTDETOTVENDA'
    end
    object TblTempCompradosQTDEULTCOMPRA: TFloatField
      DisplayLabel = 'Q.Compra'
      FieldName = 'QTDEULTCOMPRA'
    end
    object TblTempCompradosDATAULTCOMPRA: TDateField
      DisplayLabel = 'Ult.Compra'
      FieldName = 'DATAULTCOMPRA'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblTempCompradosPRODDULTVENDA: TDateField
      DisplayLabel = 'Ult.Venda'
      FieldName = 'PRODDULTVENDA'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblTempCompradosPRODDPREVCOMPRA: TDateTimeField
      FieldName = 'PRODDPREVCOMPRA'
    end
  end
  object DSTblTemporaria: TDataSource
    DataSet = TblTemporaria
    OnDataChange = DSTblTemporariaDataChange
    Left = 295
    Top = 261
  end
  object DSSQLTotal: TDataSource
    AutoEdit = False
    DataSet = SQLTotal
    Left = 877
    Top = 6
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'Easy_Temp'
    SQL.Strings = (
      'select '
      '  Sum(QTDECOMPRADO*PRODN3VLRCOMPRA) as ValorTotal'
      'from '
      '  PedidoCompraProdutosFiltradosComprados'
      '')
    Macros = <>
    Left = 905
    Top = 6
    object SQLTotalValorTotal: TFloatField
      FieldName = 'ValorTotal'
      DisplayFormat = 'R$ ##0.00'
      EditFormat = '##0.00'
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'ckComprasTodasFiliais.Checked')
    StoredValues = <>
    Left = 848
    Top = 6
  end
  object TblTemporaria: TRxMemoryData
    FieldDefs = <>
    AfterPost = TblTemporariaAfterPost
    Left = 266
    Top = 261
    object TblTemporariaPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
    end
    object TblTemporariaPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTemporariaQTDEMBAL: TIntegerField
      DisplayLabel = 'Cap.Embal'
      FieldName = 'QTDEMBAL'
    end
    object TblTemporariaPRODN3VLRCOMPRA: TFloatField
      DisplayLabel = 'Vlr.Compra'
      FieldName = 'PRODN3VLRCOMPRA'
      DisplayFormat = '#,##0.00'
    end
    object TblTemporariaPRODN3VLRVENDA: TFloatField
      DisplayLabel = 'Vlr.Venda'
      FieldName = 'PRODN3VLRVENDA'
      DisplayFormat = '#,##0.00'
    end
    object TblTemporariaQTDECOMPRADO: TFloatField
      DisplayLabel = 'Qtde.Pedido'
      FieldName = 'QTDECOMPRADO'
    end
    object TblTemporariaSALDO: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'SALDO'
      DisplayFormat = '#0.000'
    end
    object TblTemporariaDATAULTCOMPRA: TDateField
      DisplayLabel = 'U.Compra'
      FieldName = 'DATAULTCOMPRA'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblTemporariaIPIPERC: TFloatField
      DisplayLabel = 'IPI %'
      FieldName = 'IPIPERC'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object TblTemporariaQTDEULTCOMPRA: TFloatField
      DisplayLabel = 'Q.Compra'
      FieldName = 'QTDEULTCOMPRA'
    end
    object TblTemporariaQTDETOTVENDA: TFloatField
      DisplayLabel = 'Q.Venda'
      FieldName = 'QTDETOTVENDA'
    end
    object TblTemporariaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object TblTemporariaCor: TStringField
      FieldName = 'Cor'
    end
    object TblTemporariaMarca: TStringField
      FieldName = 'Marca'
      Size = 30
    end
    object TblTemporariaUltVlrCusto: TFloatField
      FieldName = 'UltVlrCusto'
      DisplayFormat = '##0.00000'
    end
    object TblTemporariaPRODDULTVENDA: TDateField
      DisplayLabel = 'Ult.Venda'
      FieldName = 'PRODDULTVENDA'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblTemporariaPRODDPREVCOMPRA: TDateTimeField
      FieldName = 'PRODDPREVCOMPRA'
    end
    object TblTemporariaPRODBIMAGEM: TBlobField
      FieldName = 'PRODBIMAGEM'
    end
    object TblTemporariaBarrasPrincipal: TStringField
      FieldName = 'BarrasPrincipal'
      Size = 30
    end
  end
  object dsCompras: TDataSource
    AutoEdit = False
    DataSet = zCompras
    Left = 812
    Top = 517
  end
  object PipePrincipal: TppDBPipeline
    DataSource = DSTblTemporaria
    OpenDataSource = False
    UserName = 'PipePrincipal'
    Left = 121
    Top = 296
    object PipePrincipalppField1: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField2: TppField
      FieldAlias = 'PRODA60DESCR'
      FieldName = 'PRODA60DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField3: TppField
      FieldAlias = 'QTDEMBAL'
      FieldName = 'QTDEMBAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField4: TppField
      FieldAlias = 'PRODN3VLRCOMPRA'
      FieldName = 'PRODN3VLRCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField5: TppField
      FieldAlias = 'PRODN3VLRVENDA'
      FieldName = 'PRODN3VLRVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField6: TppField
      FieldAlias = 'QTDECOMPRADO'
      FieldName = 'QTDECOMPRADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField7: TppField
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField8: TppField
      FieldAlias = 'DATAULTCOMPRA'
      FieldName = 'DATAULTCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField9: TppField
      FieldAlias = 'IPIPERC'
      FieldName = 'IPIPERC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField10: TppField
      FieldAlias = 'QTDEULTCOMPRA'
      FieldName = 'QTDEULTCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField11: TppField
      FieldAlias = 'QTDETOTVENDA'
      FieldName = 'QTDETOTVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField12: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField13: TppField
      FieldAlias = 'Cor'
      FieldName = 'Cor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField14: TppField
      FieldAlias = 'Marca'
      FieldName = 'Marca'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField15: TppField
      FieldAlias = 'UltVlrCusto'
      FieldName = 'UltVlrCusto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField16: TppField
      FieldAlias = 'PRODDULTVENDA'
      FieldName = 'PRODDULTVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField17: TppField
      FieldAlias = 'PRODDPREVCOMPRA'
      FieldName = 'PRODDPREVCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField18: TppField
      FieldAlias = 'PRODBIMAGEM'
      FieldName = 'PRODBIMAGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipePrincipalppField19: TppField
      FieldAlias = 'BarrasPrincipal'
      FieldName = 'BarrasPrincipal'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
  end
  object ppListagem: TppReport
    AutoStop = False
    DataPipeline = PipePrincipal
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppListagemPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 149
    Top = 296
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipePrincipal'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6790545
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'ppLabel1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Listagem de Apoio a Compras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1321596
        mmLeft = 1330063
        mmTop = 420159
        mmWidth = 16072940
        BandType = 0
      end
      object ppLbEmpresa: TppLabel
        UserName = 'ppLbEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1064156
        mmLeft = 1400178
        mmTop = 2170117
        mmWidth = 3740951
        BandType = 0
      end
      object pplbData: TppLabel
        UserName = 'pplbData'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1064156
        mmLeft = 1400178
        mmTop = 3290100
        mmWidth = 1960037
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'ppLabel3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Produto Detalhamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1008065
        mmLeft = 1400178
        mmTop = 4620428
        mmWidth = 9038978
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'ppLine1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 139965
        mmLeft = 1609993
        mmTop = 6650315
        mmWidth = 49563172
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'ppLabel4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1008065
        mmLeft = 24991533
        mmTop = 4620428
        mmWidth = 2441844
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'ppLabel6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dt.Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1008065
        mmLeft = 20021325
        mmTop = 5600447
        mmWidth = 3606543
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'ppLabel7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtd.Tot Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1008065
        mmLeft = 29822041
        mmTop = 5600447
        mmWidth = 5645161
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'ppLabel8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr.Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1008065
        mmLeft = 25201613
        mmTop = 5600447
        mmWidth = 3797043
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'ppLabel10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dt.Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 980019
        mmLeft = 2730241
        mmTop = 5600447
        mmWidth = 4270384
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'ppLabel11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtd Comprada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1008065
        mmLeft = 13230781
        mmTop = 5600447
        mmWidth = 5846774
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'ppLabel12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vlr.Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1008065
        mmLeft = 8190458
        mmTop = 5600447
        mmWidth = 4491576
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'ppLabel18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Resumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 1008065
        mmLeft = 45572982
        mmTop = 5600447
        mmWidth = 3326613
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'ppLabel5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cd.Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 1008065
        mmLeft = 38642473
        mmTop = 4620428
        mmWidth = 4021146
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5110437
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'ppDBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipePrincipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 896146
        mmLeft = 1400178
        mmTop = 70115
        mmWidth = 3850224
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'ppDBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipePrincipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 840054
        mmLeft = 5390367
        mmTop = 70115
        mmWidth = 19251386
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'ppDBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipePrincipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 910168
        mmLeft = 24921683
        mmTop = 0
        mmWidth = 12880736
        BandType = 4
      end
      object lbDCompra1: TppLabel
        UserName = 'lbDCompra1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 980019
        mmLeft = 2730241
        mmTop = 1050133
        mmWidth = 4550313
        BandType = 4
      end
      object lbQCompra1: TppLabel
        UserName = 'lbQCompra1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 974462
        mmLeft = 13230781
        mmTop = 1050133
        mmWidth = 5740411
        BandType = 4
      end
      object lbVCompra1: TppLabel
        UserName = 'lbVCompra1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 974462
        mmLeft = 8050493
        mmTop = 1050133
        mmWidth = 4620428
        BandType = 4
      end
      object lbDCompra2: TppLabel
        UserName = 'lbDCompra2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 980019
        mmLeft = 2730241
        mmTop = 2100267
        mmWidth = 4550313
        BandType = 4
      end
      object lbQCompra2: TppLabel
        UserName = 'lbQCompra2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 974462
        mmLeft = 13230781
        mmTop = 2100267
        mmWidth = 5740411
        BandType = 4
      end
      object lbVCompra2: TppLabel
        UserName = 'lbVCompra2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 974462
        mmLeft = 8050493
        mmTop = 2100267
        mmWidth = 4620428
        BandType = 4
      end
      object lbDCompra3: TppLabel
        UserName = 'lbDCompra3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 980019
        mmLeft = 2730241
        mmTop = 3150135
        mmWidth = 4550313
        BandType = 4
      end
      object lbQCompra3: TppLabel
        UserName = 'lbQCompra3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 974462
        mmLeft = 13230781
        mmTop = 3150135
        mmWidth = 5740411
        BandType = 4
      end
      object lbVCompra3: TppLabel
        UserName = 'lbVCompra3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 974462
        mmLeft = 8050493
        mmTop = 3150135
        mmWidth = 4620428
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'ppShape5'
        Shape = stRoundRect
        mmHeight = 3920339
        mmLeft = 43612945
        mmTop = 1050133
        mmWidth = 7280554
        BandType = 4
      end
      object pplbEstoqueAtual: TppLabel
        UserName = 'pplbEstoqueAtual'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 951973
        mmLeft = 48006625
        mmTop = 3570295
        mmWidth = 2116935
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'ppLabel9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Saldo Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 951973
        mmLeft = 37553181
        mmTop = 3710259
        mmWidth = 5499640
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'ppLabel13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 951973
        mmLeft = 37085661
        mmTop = 2590276
        mmWidth = 6014785
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'ppLabel14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total de Compras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 951973
        mmLeft = 36494846
        mmTop = 1470028
        mmWidth = 6619624
        BandType = 4
      end
      object pplbQtdeTotalCompras: TppLabel
        UserName = 'pplbQtdeTotalCompras'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 951973
        mmLeft = 48023294
        mmTop = 1470028
        mmWidth = 2116935
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'ppDBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipePrincipal
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 910168
        mmLeft = 19951211
        mmTop = 2030152
        mmWidth = 3640145
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'ppDBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipePrincipal
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 840054
        mmLeft = 24431674
        mmTop = 2030152
        mmWidth = 4410348
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'ppDBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipePrincipal
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 910168
        mmLeft = 30591980
        mmTop = 2030152
        mmWidth = 4410348
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'ppDBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipePrincipal
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 951973
        mmLeft = 45712947
        mmTop = 2520161
        mmWidth = 4410348
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'ppDBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataPipeline = PipePrincipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipePrincipal'
        mmHeight = 910168
        mmLeft = 38712587
        mmTop = 0
        mmWidth = 11620788
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2870206
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'ppLabel2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'www.conceitossistemas.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 951973
        mmLeft = 39832571
        mmTop = 279930
        mmWidth = 10741576
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'ppLine2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 70115
        mmLeft = 1680108
        mmTop = 139965
        mmWidth = 49283242
        BandType = 8
      end
    end
  end
  object dsProdSaldo: TDataSource
    AutoEdit = False
    DataSet = zProdSaldo
    Left = 864
    Top = 289
  end
  object zProdutos: TQuery
    DatabaseName = 'DB'
    Left = 352
    Top = 18
  end
  object zProdSaldo: TQuery
    DatabaseName = 'DB'
    Left = 832
    Top = 290
  end
  object zCompras: TQuery
    DatabaseName = 'DB'
    Left = 784
    Top = 418
    object zComprasNOCPDRECEBIMENTO: TDateTimeField
      DisplayLabel = 'D.Compra'
      FieldName = 'NOCPDRECEBIMENTO'
      DisplayFormat = 'dd/mm/yy'
    end
    object zComprasNOCIN3VLRUNIT: TFloatField
      FieldName = 'NOCIN3VLRUNIT'
      DisplayFormat = '##0.000'
    end
    object zComprasQTDCompra: TFloatField
      DisplayLabel = 'Qtd Compra'
      FieldName = 'QTDCompra'
      DisplayFormat = '##0.000'
    end
    object zComprasOPESA60DESCR: TStringField
      DisplayLabel = 'OP.Estoque'
      FieldName = 'OPESA60DESCR'
      Size = 60
    end
    object zComprasNOCPA30NRO: TStringField
      DisplayLabel = 'NF Numero'
      FieldName = 'NOCPA30NRO'
      Size = 30
    end
  end
  object sqlEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select EMPRICOD, EMPRA60NOMEFANT from empresa'
      'order by EMPRA60NOMEFANT ')
    Macros = <>
    Left = 1056
    Top = 157
    object sqlEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object sqlEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Size = 100
    end
  end
  object dsEmpresa: TDataSource
    AutoEdit = False
    DataSet = sqlEmpresa
    OnDataChange = DSSQLFornecedorDataChange
    Left = 1028
    Top = 157
  end
end
