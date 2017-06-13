inherited FormRelatorioListagemProduto: TFormRelatorioListagemProduto
  Left = 101
  Top = 100
  Caption = 'Relat'#243'rio Listagem de Produtos'
  ClientHeight = 536
  ClientWidth = 822
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 520
    Width = 822
  end
  inherited ScrollBox: TScrollBox
    Width = 822
    Height = 520
    inherited PanelCentro: TPanel
      Left = 45
      Top = 70
      Width = 703
      Height = 443
      inherited BtnVisualizar: TSpeedButton
        Left = 285
        Top = 403
        Height = 28
      end
      object Label13: TLabel [1]
        Left = 270
        Top = 357
        Width = 85
        Height = 13
        Caption = 'Entre as Letras'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel [2]
        Left = 320
        Top = 373
        Width = 19
        Height = 13
        Caption = 'at'#233
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited GroupBox1: TGroupBox [3]
        Left = 19
        Top = 88
        TabOrder = 2
        Visible = False
      end
      inherited EmpresaGroup: TGroupBox [4]
        Left = 13
        Width = 418
        Height = 102
        inherited IncluirEmpresa: TSpeedButton
          Top = 65
          Height = 15
        end
        inherited ExcluirEmpresa: TSpeedButton
          Top = 80
          Height = 15
        end
        inherited Label2: TLabel
          Left = 46
          Top = 50
        end
        inherited ComboEmpresa: TRxDBLookupCombo
          Width = 367
        end
        inherited ListaEmpresas: TListBox
          Top = 64
          Width = 367
          Height = 34
        end
      end
      object GroupBox4: TGroupBox
        Left = 435
        Top = 117
        Width = 236
        Height = 89
        Caption = ' Ocultar '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object HidePrcCompra: TCheckBox
          Left = 12
          Top = 15
          Width = 117
          Height = 17
          Caption = 'Pre'#231'o de Compra'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object HidePrcVenda: TCheckBox
          Left = 12
          Top = 32
          Width = 117
          Height = 17
          Caption = 'Pre'#231'o de Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object CheckSaldo: TCheckBox
          Left = 12
          Top = 49
          Width = 133
          Height = 17
          Caption = 'Saldo de Estoque'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = CheckSaldoClick
        end
        object CKOcultarProdNaoMovimentaEstoque: TCheckBox
          Left = 12
          Top = 65
          Width = 216
          Height = 22
          Caption = 'Prod marcados "N'#227'o Mov.Estoque"'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = CheckPorGradeClick
        end
        object HideMarca: TCheckBox
          Left = 143
          Top = 15
          Width = 58
          Height = 17
          Caption = 'Marca'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object GroupFiltro: TGroupBox
        Left = 12
        Top = 230
        Width = 420
        Height = 120
        Caption = 'Filtrar Por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label5: TLabel
          Left = 7
          Top = 11
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
          Left = 8
          Top = 46
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
          Left = 213
          Top = 45
          Width = 49
          Height = 13
          Caption = 'Varia'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 214
          Top = 12
          Width = 34
          Height = 13
          Caption = 'Grade'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 368
          Top = 46
          Width = 46
          Height = 13
          Caption = 'Unidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 7
          Top = 80
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
        object Label17: TLabel
          Left = 308
          Top = 81
          Width = 28
          Height = 13
          Caption = 'Icms'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboGrupo: TRxDBLookupCombo
          Left = 5
          Top = 25
          Width = 204
          Height = 21
          DropDownCount = 8
          LookupField = 'GRUPICOD'
          LookupDisplay = 'GRUPA60DESCR'
          LookupSource = DSSQLGrupo
          TabOrder = 0
        end
        object ComboSubGrupo: TRxDBLookupCombo
          Left = 5
          Top = 59
          Width = 204
          Height = 21
          DropDownCount = 8
          LookupField = 'SUBGICOD'
          LookupDisplay = 'SUBGA60DESCR'
          LookupSource = DSSQLSubGrupo
          TabOrder = 2
        end
        object ComboVariacao: TRxDBLookupCombo
          Left = 211
          Top = 59
          Width = 152
          Height = 21
          DropDownCount = 8
          LookupField = 'VARIICOD'
          LookupDisplay = 'VARIA60DESCR'
          LookupSource = DSSQLVariacao
          TabOrder = 3
        end
        object ComboGrade: TRxDBLookupCombo
          Left = 211
          Top = 25
          Width = 204
          Height = 21
          DropDownCount = 8
          LookupField = 'GRADICOD'
          LookupDisplay = 'GRADA30DESCR'
          LookupSource = DSSQLGrade
          TabOrder = 1
        end
        object ComboUnidade: TRxDBLookupCombo
          Left = 366
          Top = 60
          Width = 50
          Height = 21
          DropDownCount = 8
          LookupField = 'UNIDICOD'
          LookupDisplay = 'UNIDA5DESCR'
          LookupSource = DSSQLUnidade
          TabOrder = 4
        end
        object ComboFornecedor: TRxDBLookupCombo
          Left = 5
          Top = 94
          Width = 296
          Height = 21
          DropDownCount = 8
          LookupField = 'FORNICOD'
          LookupDisplay = 'FORNA60RAZAOSOC'
          LookupSource = dsSQLFornecedor
          TabOrder = 5
        end
        object ComboIcms: TRxDBLookupCombo
          Left = 304
          Top = 94
          Width = 111
          Height = 21
          DropDownCount = 8
          LookupField = 'ICMSICOD'
          LookupDisplay = 'ICMSA60DESCR'
          LookupSource = dsSQLIcms
          TabOrder = 6
        end
      end
      object GroupCodDesc: TGroupBox
        Left = 436
        Top = 207
        Width = 236
        Height = 53
        Caption = ' Ordem '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object OrdemCodigo: TRadioButton
          Left = 11
          Top = 15
          Width = 69
          Height = 17
          Caption = 'C'#243'digo'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object OrdemDescricao: TRadioButton
          Left = 71
          Top = 15
          Width = 76
          Height = 17
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object OrdemRef: TRadioButton
          Left = 11
          Top = 33
          Width = 54
          Height = 17
          Caption = 'Refer'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object OrdemCodAntigo: TRadioButton
          Left = 68
          Top = 34
          Width = 74
          Height = 17
          Caption = 'Cd Antigo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object OrdemDescRef: TRadioButton
          Left = 148
          Top = 34
          Width = 82
          Height = 17
          Caption = 'Desc+Ref'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object OrdemBalanca: TRadioButton
          Left = 149
          Top = 16
          Width = 82
          Height = 17
          Caption = 'Cd Balanca'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox3: TGroupBox
        Left = 434
        Top = 4
        Width = 236
        Height = 101
        DragCursor = crHandPoint
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object SaldoMaiorZero: TRadioButton
          Left = 4
          Top = 24
          Width = 214
          Height = 19
          Caption = 'Listar produtos com saldo positivo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          TabStop = True
          OnClick = SaldoMaiorZeroClick
        end
        object SaldoMenorZero: TRadioButton
          Left = 4
          Top = 42
          Width = 220
          Height = 19
          Caption = 'Listar produtos com saldo negativo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TabStop = True
        end
        object TodosSaldos: TRadioButton
          Left = 4
          Top = 7
          Width = 217
          Height = 19
          Caption = 'Listar todos produtos'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object SaldosDiferenteZero: TRadioButton
          Left = 4
          Top = 59
          Width = 228
          Height = 19
          Caption = 'Listar todos produtos menos zerados'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          TabStop = True
        end
        object SaldoIgualZero: TRadioButton
          Left = 4
          Top = 76
          Width = 228
          Height = 19
          Caption = 'Listar somente produtos zerados'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          TabStop = True
        end
      end
      object CheckPorGrade: TCheckBox
        Left = 442
        Top = 335
        Width = 184
        Height = 17
        Caption = 'Agrupar Produtos por Grade'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = CheckPorGradeClick
      end
      object CheckDetalhe: TCheckBox
        Left = 442
        Top = 321
        Width = 193
        Height = 17
        Caption = 'Exibir Cores e Tamanhos'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = CheckPorGradeClick
      end
      object GroupImprimir: TGroupBox
        Left = 436
        Top = 259
        Width = 237
        Height = 62
        Caption = ' Imprimir '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        object RadioImpCodBarras: TRadioButton
          Left = 5
          Top = 12
          Width = 94
          Height = 17
          Caption = 'C'#243'd. Barras'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object RadioImpRefer: TRadioButton
          Left = 117
          Top = 24
          Width = 94
          Height = 17
          Caption = 'Refer'#234'ncia'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object RadioImpCodAntigo: TRadioButton
          Left = 5
          Top = 27
          Width = 94
          Height = 17
          Caption = 'C'#243'd. Antigo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object RadioImpCodBalanca: TRadioButton
          Left = 117
          Top = 7
          Width = 94
          Height = 17
          Caption = 'C'#243'd. Balan'#231'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object RadioICMS: TRadioButton
          Left = 117
          Top = 42
          Width = 114
          Height = 15
          Caption = 'NCM+CST ICMs'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object CKporGrupo: TCheckBox
        Left = 442
        Top = 349
        Width = 236
        Height = 17
        Caption = 'Quebra por Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = CheckPorGradeClick
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 350
        Width = 247
        Height = 41
        Caption = ' Alterados '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        object Label11: TLabel
          Left = 8
          Top = 18
          Width = 15
          Height = 13
          Caption = '&De'
          FocusControl = AlteradosDE
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 131
          Top = 18
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = AlteradosATE
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object AlteradosDE: TDateEdit
          Left = 39
          Top = 14
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
        object AlteradosATE: TDateEdit
          Left = 153
          Top = 14
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
      end
      object GroupBox5: TGroupBox
        Left = 12
        Top = 106
        Width = 420
        Height = 123
        Caption = ' Marcas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label8: TLabel
          Left = 49
          Top = 13
          Width = 88
          Height = 13
          Caption = 'Lista de Marcas'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 46
          Top = 50
          Width = 74
          Height = 13
          Caption = '&Selecionadas'
          FocusControl = ListaMarca
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 8
          Top = 64
          Width = 32
          Height = 25
          Flat = True
          Glyph.Data = {
            A2010000424DA2010000000000003600000028000000090000000D0000000100
            1800000000006C010000DE0E0000DE0E00000000000000000000FFFFFFFFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF00FFFF000000
            FFFFFFFFFFFFFFFFFF0000000000000000000000FFFF00FFFF00FFFF000000FF
            FFFFFFFFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FFFF
            FF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000
            0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FFFFFF00000000000000
            00000000FFFF00FFFF00FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFF00000000
            FFFF00FFFF000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00}
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 8
          Top = 90
          Width = 32
          Height = 25
          Flat = True
          Glyph.Data = {
            A2010000424DA2010000000000003600000028000000090000000D0000000100
            1800000000006C010000DE0E0000DE0E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF000000000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
            0000FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF00000000FFFF00FFFF
            000000FFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF00FFFF00FFFF00000000
            000000000000FFFFFF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
            000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFF
            FF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFFFFFFFFFF
            00000000FFFF00FFFF00FFFF00000000000000000000FFFFFFFFFFFFFFFFFF00
            000000FFFF00FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
            0000FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
            000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
            FFFFFFFFFF00}
          OnClick = SpeedButton4Click
        end
        object ComboMarca: TRxDBLookupCombo
          Left = 46
          Top = 29
          Width = 366
          Height = 20
          DropDownCount = 8
          DisplayAllFields = True
          FieldsDelimiter = '-'
          LookupField = 'MARCICOD'
          LookupDisplay = 'MARCICOD;MARCA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLMarca
          TabOrder = 0
        end
        object ListaMarca: TListBox
          Left = 44
          Top = 64
          Width = 367
          Height = 53
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          Sorted = True
          TabOrder = 1
        end
      end
      object CKEspecialMargemLucro: TCheckBox
        Left = 442
        Top = 363
        Width = 253
        Height = 17
        Caption = 'Especial com Margem de Lucro em Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object CKAtivos: TCheckBox
        Left = 442
        Top = 378
        Width = 112
        Height = 17
        Caption = 'Somente Ativos'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 13
      end
      object CKInativos: TCheckBox
        Left = 557
        Top = 378
        Width = 121
        Height = 17
        Caption = 'Somente Inativos'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object EditLetraInicial: TEdit
        Left = 266
        Top = 370
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 15
      end
      object EditLetraFinal: TEdit
        Left = 343
        Top = 370
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 16
      end
      object CKCofins: TCheckBox
        Left = 442
        Top = 393
        Width = 143
        Height = 17
        Caption = 'Isento de Cofins e IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object CKporMarca: TCheckBox
        Left = 442
        Top = 408
        Width = 143
        Height = 17
        Caption = 'Quebra por Marca'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object ckImpVlrAtacadoVarejo: TCheckBox
        Left = 442
        Top = 421
        Width = 181
        Height = 17
        Caption = 'Imp. Vlr.Atacado e Varejo'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object ckCatalogoFoto: TCheckBox
        Left = 20
        Top = 408
        Width = 193
        Height = 17
        Caption = 'Catalogo com Foto'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
        OnClick = CheckPorGradeClick
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 818
      inherited PanelCabecalho: TPanel
        Width = 818
        inherited PanelNavigator: TPanel
          Width = 818
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 818
          end
        end
      end
    end
  end
  inherited DSTblTemporaria: TDataSource
    Left = 342
  end
  inherited TblTemporaria: TTable
    AutoCalcFields = False
    TableName = 'RelListagemProduto.DB'
    Left = 314
    object TblTemporariaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblTemporariaCodProduto: TStringField
      FieldName = 'CodProduto'
      Size = 60
    end
    object TblTemporariaPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblTemporariaPRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Size = 30
    end
    object TblTemporariaPRODA255DESCRTEC: TStringField
      FieldName = 'PRODA255DESCRTEC'
      Size = 255
    end
    object TblTemporariaGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
    end
    object TblTemporariaSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
    end
    object TblTemporariaVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
    end
    object TblTemporariaPRODN3VLRVENDA: TBCDField
      FieldName = 'PRODN3VLRVENDA'
      Precision = 32
      Size = 3
    end
    object TblTemporariaPRODN3VLRVENDAPROM: TBCDField
      FieldName = 'PRODN3VLRVENDAPROM'
      Precision = 32
      Size = 3
    end
    object TblTemporariaPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
    end
    object TblTemporariaPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
    end
    object TblTemporariaPRODN3VLRCOMPRA: TBCDField
      FieldName = 'PRODN3VLRCOMPRA'
      Precision = 32
      Size = 3
    end
    object TblTemporariaPRODN3VLRCUSTO: TBCDField
      FieldName = 'PRODN3VLRCUSTO'
      Precision = 32
      Size = 3
    end
    object TblTemporariaSALDO: TBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Size = 30
    end
    object TblTemporariaGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Size = 5
    end
    object TblTemporariaPRODCTIPOBAIXA: TStringField
      FieldName = 'PRODCTIPOBAIXA'
      Size = 1
    end
    object TblTemporariaREGISTRO: TDateField
      FieldName = 'REGISTRO'
    end
    object TblTemporariaUnidadeDesc5: TStringField
      FieldName = 'UnidadeDesc5'
      Size = 5
    end
    object TblTemporariaMarcaDescr: TStringField
      FieldName = 'MarcaDescr'
      Size = 30
    end
    object TblTemporariaVLRMargem: TFloatField
      FieldName = 'VLRMargem'
    end
    object TblTemporariaGrupoDescr: TStringField
      FieldName = 'GrupoDescr'
      Size = 60
    end
    object TblTemporariaICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
    end
    object TblTemporariaPRODN3VLRVENDA2: TBCDField
      FieldName = 'PRODN3VLRVENDA2'
      Size = 3
    end
    object TblTemporariaPRODN2VLRVENDA2835D: TFloatField
      FieldName = 'PRODN2VLRVENDA2835D'
    end
    object TblTemporariaPRODN2VLRVENDA283542D: TFloatField
      FieldName = 'PRODN2VLRVENDA283542D'
    end
  end
  inherited SQLEmpresa: TQuery
    Left = 230
  end
  inherited DSSQLEmpresa: TDataSource
    Left = 258
  end
  inherited BatchMove: TBatchMove
    Left = 286
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  %MProduto'
      '  %CodProduto'
      '  %DemaisCampos'
      '  %MSaldo,'
      '  ICMS.ICMSA60DESCR '
      'from'
      '  PRODUTO'
      'left join '
      '  ICMS '
      'on ICMS.ICMSICOD = PRODUTO.ICMSICOD'
      'where'
      '  (%MGrupo) and'
      '  (%MSubGrupo) and'
      '  (%MVariacao) and'
      '  (%MMarca) and'
      '  (%MOcultar) and'
      '  (%MGrade) and'
      '  (%MUnidade) and'
      '  (%MAlterados) and'
      '  (%MAtivos) and'
      '  (%MFornecedor) and'
      '  (%MLetras) and'
      '  (%MIcms) and'
      '  (%MCofins)'
      '%MGroup'
      '%MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MProduto'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CodProduto'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DemaisCampos'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSaldo'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'MGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
        Name = 'MSubGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
        Name = 'MVariacao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
        Name = 'MMarca'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOcultar'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
        Name = 'MGrade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftInteger
        Name = 'MUnidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MAlterados'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MAtivos'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFornecedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MLetras'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MIcms'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCofins'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MGroup'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
      end>
    Left = 370
    Top = 5
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 400
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
  object DSSQLSubGrupo: TDataSource
    DataSet = SQLSubGrupo
    Left = 458
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
  object DSSQLVariacao: TDataSource
    DataSet = SQLVariacao
    Left = 516
    Top = 5
  end
  object SQLVariacao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLSubGrupo
    SQL.Strings = (
      'select * from VARIACAO where SUBGICOD = :SUBGICOD '
      'and GRUPICOD = :GRUPICOD'
      'order by VARIA60DESCR')
    Macros = <>
    Left = 544
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SUBGICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPICOD'
        ParamType = ptUnknown
      end>
    object SQLVariacaoGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'UNITGESTAO.VARIACAO.GRUPICOD'
    end
    object SQLVariacaoSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'UNITGESTAO.VARIACAO.SUBGICOD'
    end
    object SQLVariacaoVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'UNITGESTAO.VARIACAO.VARIICOD'
    end
    object SQLVariacaoVARIA60DESCR: TStringField
      FieldName = 'VARIA60DESCR'
      Origin = 'UNITGESTAO.VARIACAO.VARIA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLMarca: TDataSource
    DataSet = SQLMarca
    Left = 574
    Top = 5
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
  object DSSQLGrade: TDataSource
    DataSet = SQLGrade
    Left = 632
    Top = 5
  end
  object SQLGrade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRADE'
      'order by GRADA30DESCR')
    Macros = <>
    Left = 660
    Top = 5
    object SQLGradeGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'UNITGESTAO.GRADE.GRADICOD'
    end
    object SQLGradeGRADA30DESCR: TStringField
      FieldName = 'GRADA30DESCR'
      Origin = 'UNITGESTAO.GRADE.GRADA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLUnidade: TDataSource
    DataSet = SQLUnidade
    Left = 690
    Top = 5
  end
  object SQLUnidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from UNIDADE'
      'order by UNIDA5DESCR')
    Macros = <>
    Left = 718
    Top = 5
    object SQLUnidadeUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'UNITGESTAO.UNIDADE.UNIDICOD'
    end
    object SQLUnidadeUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'UNITGESTAO.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\DESENV\GestaoOficial\Relatorios\Listagem de Produtos.rpt'
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
    ConnectMethod = useLogOnInfo
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
    WindowButtonBar.ToolbarTips = False
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
    Left = 201
    Top = 5
  end
  object SQLGeralProd: TRxQuery
    DatabaseName = 'Easy_TEMP'
    SQL.Strings = (
      'delete from '
      '  RelListagemProduto.db'
      'where '
      '  Saldo <= 0')
    Macros = <>
    Left = 748
    Top = 5
  end
  object SQLCorTamanho: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTblTemporaria
    SQL.Strings = (
      'Select'
      ' PRODUTO.PRODICOD,'
      ' (select GRTMA5DESCR  from GRADETAMANHO'
      '   where PRODUTO.GRADICOD = GRADETAMANHO.GRADICOD'
      '   and PRODUTO.GRTMICOD = GRADETAMANHO.GRTMICOD) as GRTMA5DESCR,'
      ' (select CORA30DESCR from COR'
      '   where PRODUTO.CORICOD = COR.CORICOD) as CORA30DESCR'
      'from'
      '  PRODUTO'
      'where'
      ' PRODICOD = :PRODICOD'
      '')
    Macros = <>
    Left = 370
    Top = 33
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select FORNICOD, FORNA60RAZAOSOC from FORNECEDOR'
      'order by FORNA60RAZAOSOC')
    Macros = <>
    Left = 658
    Top = 39
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
  end
  object dsSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 630
    Top = 39
  end
  object SQLIcms: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select ICMSICOD, ICMSA60DESCR'
      'From ICMS'
      'Order by ICMSA60DESCR')
    Macros = <>
    Left = 757
    Top = 75
    object SQLIcmsICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.ICMS.ICMSICOD'
    end
    object SQLIcmsICMSA60DESCR: TStringField
      FieldName = 'ICMSA60DESCR'
      Origin = 'DB.ICMS.ICMSA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLIcms: TDataSource
    DataSet = SQLIcms
    Left = 729
    Top = 75
  end
  object ppCatalogoFoto: TppReport
    AutoStop = False
    DataPipeline = Pipe
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 280
    Top = 38
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'Pipe'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Grupo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2381
        mmTop = 6085
        mmWidth = 9779
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Foto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 17992
        mmTop = 6085
        mmWidth = 7027
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descri'#231#227'o Completa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 47625
        mmTop = 6085
        mmWidth = 31708
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'R$ Venda Atacado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8202
        mmLeft = 141023
        mmTop = 2117
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'R$ Venda Varejo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8202
        mmLeft = 160867
        mmTop = 2117
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'UN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 38100
        mmTop = 6085
        mmWidth = 5080
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODA60DESCR'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'Pipe'
        mmHeight = 9525
        mmLeft = 47625
        mmTop = 2117
        mmWidth = 90488
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'UnidadeDesc5'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4191
        mmLeft = 38100
        mmTop = 2117
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'GrupoDescr'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        DataPipelineName = 'Pipe'
        mmHeight = 9260
        mmLeft = 794
        mmTop = 2117
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODN3VLRVENDA2'
        DataPipeline = Pipe
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4022
        mmLeft = 138907
        mmTop = 2117
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODN3VLRVENDA'
        DataPipeline = Pipe
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4022
        mmLeft = 160867
        mmTop = 2117
        mmWidth = 16404
        BandType = 4
      end
      object Foto: TppImage
        UserName = 'Foto'
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 11642
        mmLeft = 18785
        mmTop = 794
        mmWidth = 17463
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object Pipe: TppDBPipeline
    DataSource = DSTblTemporaria
    UserName = 'Pipe'
    Left = 249
    Top = 38
    object PipeppField1: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeppField2: TppField
      FieldAlias = 'CodProduto'
      FieldName = 'CodProduto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeppField3: TppField
      FieldAlias = 'PRODA60DESCR'
      FieldName = 'PRODA60DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeppField4: TppField
      FieldAlias = 'PRODA30ADESCRREDUZ'
      FieldName = 'PRODA30ADESCRREDUZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeppField5: TppField
      FieldAlias = 'PRODA255DESCRTEC'
      FieldName = 'PRODA255DESCRTEC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeppField6: TppField
      FieldAlias = 'GRUPICOD'
      FieldName = 'GRUPICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeppField7: TppField
      FieldAlias = 'SUBGICOD'
      FieldName = 'SUBGICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeppField8: TppField
      FieldAlias = 'VARIICOD'
      FieldName = 'VARIICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeppField9: TppField
      FieldAlias = 'PRODN3VLRVENDA'
      FieldName = 'PRODN3VLRVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeppField10: TppField
      FieldAlias = 'PRODN3VLRVENDAPROM'
      FieldName = 'PRODN3VLRVENDAPROM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeppField11: TppField
      FieldAlias = 'PRODDINIPROMO'
      FieldName = 'PRODDINIPROMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeppField12: TppField
      FieldAlias = 'PRODDFIMPROMO'
      FieldName = 'PRODDFIMPROMO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeppField13: TppField
      FieldAlias = 'PRODN3VLRCOMPRA'
      FieldName = 'PRODN3VLRCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeppField14: TppField
      FieldAlias = 'PRODN3VLRCUSTO'
      FieldName = 'PRODN3VLRCUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeppField15: TppField
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeppField16: TppField
      FieldAlias = 'CORA30DESCR'
      FieldName = 'CORA30DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeppField17: TppField
      FieldAlias = 'GRTMA5DESCR'
      FieldName = 'GRTMA5DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeppField18: TppField
      FieldAlias = 'PRODCTIPOBAIXA'
      FieldName = 'PRODCTIPOBAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipeppField19: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipeppField20: TppField
      FieldAlias = 'UnidadeDesc5'
      FieldName = 'UnidadeDesc5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipeppField21: TppField
      FieldAlias = 'MarcaDescr'
      FieldName = 'MarcaDescr'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object PipeppField22: TppField
      FieldAlias = 'VLRMargem'
      FieldName = 'VLRMargem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object PipeppField23: TppField
      FieldAlias = 'GrupoDescr'
      FieldName = 'GrupoDescr'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object PipeppField24: TppField
      FieldAlias = 'ICMSICOD'
      FieldName = 'ICMSICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeppField25: TppField
      FieldAlias = 'PRODN3VLRVENDA2'
      FieldName = 'PRODN3VLRVENDA2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object PipeppField26: TppField
      FieldAlias = 'PRODN2VLRVENDA2835D'
      FieldName = 'PRODN2VLRVENDA2835D'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object PipeppField27: TppField
      FieldAlias = 'PRODN2VLRVENDA283542D'
      FieldName = 'PRODN2VLRVENDA283542D'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
  end
end
