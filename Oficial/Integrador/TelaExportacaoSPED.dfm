inherited FormTelaExportacaoSped: TFormTelaExportacaoSped
  Left = 261
  Top = 110
  Width = 816
  Height = 632
  Caption = 'Gera'#231#227'o Arquivo SPED Fiscal'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 800
    Height = 594
    inherited PanelCentral: TPanel
      Width = 796
      Height = 510
      object Label6: TLabel [0]
        Left = 10
        Top = 163
        Width = 156
        Height = 13
        Caption = 'Formato do Arquivo Gerado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel [1]
        Left = 200
        Top = 162
        Width = 114
        Height = 13
        Caption = 'Tipo de Escritura'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel [2]
        Left = 8
        Top = 241
        Width = 115
        Height = 13
        Caption = 'Tipo de Contribui'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel [3]
        Left = 8
        Top = 201
        Width = 180
        Height = 13
        Caption = 'Incid'#234'ncia Tribut'#225'ria no Per'#237'odo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel [4]
        Left = 200
        Top = 201
        Width = 187
        Height = 13
        Caption = 'Indicador Apropria'#231#227'o de Cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel [5]
        Left = 8
        Top = 281
        Width = 199
        Height = 13
        Caption = 'Crit'#233'rio de Escritura'#231#227'o e Apura'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel [6]
        Left = 275
        Top = 120
        Width = 104
        Height = 13
        Caption = 'Versao Sped Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelBarra: TPanel
        Width = 3
        Height = 510
      end
      object GroupBox3: TGroupBox
        Left = 6
        Top = 7
        Width = 379
        Height = 47
        Caption = ' Empresa  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object ComboEmpresa: TRxDBLookupCombo
          Left = 9
          Top = 17
          Width = 359
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todas'
          FieldsDelimiter = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'EMPRICOD'
          LookupDisplay = 'EMPRA60RAZAOSOC'
          LookupDisplayIndex = 1
          LookupSource = DSSQLEmpresa
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 58
        Width = 378
        Height = 49
        Caption = ' Informe o caminho do(s) arquivo(s) a ser gerado(s) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object EditDiretorio: TDirectoryEdit
          Left = 6
          Top = 19
          Width = 362
          Height = 21
          ButtonHint = 'Selecione o Diret'#243'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 0
          Text = 'C:\Easy2Solutions\Gestao\SPED'
        end
      end
      object GroupBox1: TGroupBox
        Left = 7
        Top = 111
        Width = 257
        Height = 49
        Caption = ' Per'#237'odo para Apura'#231#227'o '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label1: TLabel
          Left = 10
          Top = 23
          Width = 15
          Height = 13
          Caption = 'De'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 131
          Top = 23
          Width = 20
          Height = 13
          Caption = 'At'#233
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object De: TDateEdit
          Left = 29
          Top = 19
          Width = 92
          Height = 21
          DefaultToday = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object Ate: TDateEdit
          Left = 158
          Top = 19
          Width = 92
          Height = 21
          DefaultToday = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        Left = 396
        Top = 170
        Width = 369
        Height = 122
        Caption = '<  Log de Erros de Exporta'#231#227'o  >'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object MemoErro: TMemo
          Left = 2
          Top = 15
          Width = 365
          Height = 105
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object CkBarras: TCheckBox
        Left = 397
        Top = 295
        Width = 325
        Height = 17
        Caption = 'Enviar Cod.Barras como Cod. Produto - Registro 0200'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object GroupBox4: TGroupBox
        Left = 5
        Top = 367
        Width = 382
        Height = 139
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        TabStop = True
        object Label3: TLabel
          Left = 14
          Top = 61
          Width = 66
          Height = 13
          Caption = 'Data Movto'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 115
          Top = 61
          Width = 193
          Height = 13
          Caption = 'Motivo da Apura'#231#227'o do Invent'#225'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 15
          Top = 101
          Width = 335
          Height = 13
          Caption = 'Codigo Conta Contabil anal'#237'tica cont'#225'bil debitada/creditada'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DataInventario: TDateEdit
          Left = 10
          Top = 75
          Width = 92
          Height = 22
          DefaultToday = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object cmbMotivoInventario: TComboBox
          Left = 110
          Top = 74
          Width = 267
          Height = 21
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            '01 - No final no per'#237'odo'
            '02 - Na mudan'#231'a de forma de tributa'#231#227'o da mercadoria (ICMS)'
            
              '03 - Na solicita'#231#227'o da baixa cadastral, paralisa'#231#227'o tempor'#225'ria e' +
              ' outras situa'#231#245'es'
            
              '04 - Na altera'#231#227'o de regime de pagamento - condi'#231#227'o do contribui' +
              'nte'
            '05 - Por determina'#231#227'o dos fiscos')
        end
        object edtContaAnalitica: TEdit
          Left = 12
          Top = 114
          Width = 365
          Height = 21
          TabOrder = 2
        end
        object chkGeraInventario: TCheckBox
          Left = 9
          Top = -1
          Width = 260
          Height = 17
          Caption = 'Gerar Registro de Invent'#225'rio de Estoque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object RadioInventario: TRadioGroup
          Left = 4
          Top = 15
          Width = 373
          Height = 33
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'Tab.Inventario'
            'Saldo Atual'
            'Saldo Retroativo')
          TabOrder = 4
        end
      end
      object CmbModelo: TComboBox
        Left = 8
        Top = 178
        Width = 184
        Height = 21
        Style = csDropDownList
        Color = clSilver
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 1
        ParentFont = False
        TabOrder = 7
        Text = 'EFD Fiscal'
        Items.Strings = (
          'EFD de PIS e COFINS'
          'EFD Fiscal')
      end
      object CmbEscrituracao: TComboBox
        Left = 200
        Top = 178
        Width = 188
        Height = 21
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 8
        Text = '0 - Original'
        Items.Strings = (
          '0 - Original'
          '1 - Retificadora')
      end
      object CmbIncidencia: TComboBox
        Left = 8
        Top = 217
        Width = 181
        Height = 21
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 9
        Text = '1 '#8211' Regime n'#227'o-cumulativo'
        Items.Strings = (
          '1 '#8211' Regime n'#227'o-cumulativo'
          '2 '#8211' Regime cumulativo'
          '3 '#8211' Ambos os Regimes')
      end
      object CmbTipoTrib: TComboBox
        Left = 8
        Top = 257
        Width = 378
        Height = 21
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 11
        Text = '1 - Por Al'#237'quota B'#225'sica'
        Items.Strings = (
          '1 - Por Al'#237'quota B'#225'sica'
          
            '2 - Al'#237'quotas Espec'#237'ficas (Diferenciadas ou por Und. de Medida d' +
            'e Produto)')
      end
      object CmbApropriacao: TComboBox
        Left = 200
        Top = 217
        Width = 187
        Height = 21
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 10
        Text = '1 - Apropria'#231#227'o Direta'
        Items.Strings = (
          '1 - Apropria'#231#227'o Direta'
          '2 - Rateio Proporcional (Receita Bruta)')
      end
      object CmbCriterioEscrit: TComboBox
        Left = 8
        Top = 297
        Width = 378
        Height = 21
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 12
        Text = '1 '#8211' Regime de Caixa '#8211' Escritura'#231#227'o consolidada'
        Items.Strings = (
          '1 '#8211' Regime de Caixa '#8211' Escritura'#231#227'o consolidada'
          '2 '#8211' Regime de Compet'#234'ncia - Escritura'#231#227'o consolidada'
          '9 '#8211' Regime de Compet'#234'ncia - Escritura'#231#227'o detalhada')
      end
      object Panel1: TPanel
        Left = 395
        Top = 12
        Width = 369
        Height = 147
        BevelInner = bvRaised
        BevelOuter = bvLowered
        ParentColor = True
        TabOrder = 13
        object Label5: TLabel
          Left = 10
          Top = 58
          Width = 107
          Height = 13
          Caption = 'Progresso do Bloco'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 10
          Top = 14
          Width = 120
          Height = 13
          Caption = 'Executando Processo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 102
          Width = 90
          Height = 13
          Caption = 'Progresso Geral'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditTabela: TEdit
          Left = 9
          Top = 30
          Width = 347
          Height = 19
          TabStop = False
          Color = 14737632
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object Progress: TProgressBar
          Left = 11
          Top = 76
          Width = 346
          Height = 21
          TabOrder = 1
        end
        object ProgressGeral: TProgressBar
          Left = 11
          Top = 120
          Width = 346
          Height = 21
          TabOrder = 2
        end
      end
      object chkterminal: TCheckBox
        Left = 397
        Top = 331
        Width = 312
        Height = 17
        Caption = 'Unificar terminais nos registros ref. cupons fiscais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object chkItensNFe: TCheckBox
        Left = 397
        Top = 351
        Width = 265
        Height = 17
        Caption = 'Incluir Itens das NF-e de Emiss'#227'o Pr'#243'pria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object ChkImporta: TCheckBox
        Left = 397
        Top = 409
        Width = 351
        Height = 17
        Caption = 'Criar Cupons Fiscais a partir de dados importados das ECFs'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object ckC400: TCheckBox
        Left = 397
        Top = 389
        Width = 246
        Height = 17
        Caption = 'Nao Criar Cupons Fiscais e NFCe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object ckQuestor: TCheckBox
        Left = 397
        Top = 429
        Width = 247
        Height = 17
        Caption = 'Questor - Unidade compra=venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object edtVersao: TEdit
        Left = 273
        Top = 136
        Width = 106
        Height = 21
        TabOrder = 19
        Text = '007'
      end
      object ckDominioProdutos: TCheckBox
        Left = 397
        Top = 448
        Width = 247
        Height = 17
        Caption = 'Gerar Dominio - Produtos.txt'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object GroupBox6: TGroupBox
        Left = 397
        Top = 472
        Width = 180
        Height = 39
        Caption = ' Cod Empresa na Contabilidade '
        TabOrder = 21
        object EditCodEmpresa: TEdit
          Left = 26
          Top = 14
          Width = 121
          Height = 21
          TabOrder = 0
        end
      end
      object ckC100: TCheckBox
        Left = 397
        Top = 370
        Width = 322
        Height = 17
        Caption = 'Nao Criar C100/C170/C190 - Notas Entradas e Saidas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object ckdtEmissao: TCheckBox
        Left = 161
        Top = 110
        Width = 95
        Height = 17
        Caption = 'Data Emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 796
      inherited PanelCabecalho: TPanel
        Width = 796
        inherited PanelNavigator: TPanel
          Width = 796
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 796
            object BtExecutar: TSpeedButton
              Tag = 3
              Left = 18
              Top = 3
              Width = 242
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Exportar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C0000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF0000000000
                00CF3000CF3000CF3000CF3000CF3000CF3000CF3000000000000000FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CF0000000097CF0097FF006790000000006700006700003000FF30
                2FFF302FFF302FFF302FFF302FFF302FCF3000FF302FCF300000300000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0000000097FF00679000000000670000972F00972F00972F0030
                00FF302FFF302FFF672FFF672FFF302FFF302FFF302F00300000672F003000CF
                3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0000000067900000000067002FC82F00972F2FC82F00972F0097
                2F003000FF302FFF672FFF302FFF672FFF302FFF302F00300060C82F003000CF
                3000CF3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0097CF00000000670060FF2F2FC82F2FC82F2FC82F00972F2FC8
                2F00972F003000FF672FFF672FFF672FFF672FFF672FFF672FFF302FFF302F00
                300000672F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0097FF0097CF0000002FC82F60FF2F2FC82F2FC82F2FC82F0097
                2F00972F003000FF672FFF672FFF672FFF672FFF672FFF302FFF302F00300000
                7F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CF00C8FF0097FF0097CF0000002FC82F2FC82F60FF2F2FC82F2FC8
                2F00972F00972F003000FF672FFF672FFF672FFF672FFF302F00300000972F00
                7F00007F00007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CFCFFFFF00C8FF0097FF0097CF00000060FF2F2FC82F2FC82F2FC8
                2F00972F00972F003000FF672F00000000000000000000000000000000000000
                0000000000007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0097CF90FFFF00C8FF0097FF0097CF0000002FC82F00972F7F7F
                00000000FF9700FF672FFF672F0097CF00C8FF00C8FF0097FF0097FF0097FF00
                000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000067000000
                00000000FF9700FF9700FF97000097CF90FFFF00C8FF00C8FF0097FF00000000
                7F00007F0000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF2FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000097
                FF000000FF9700FF9700FF97000097CF90FFFF90FFFF00C8FF0097FF0097CF00
                000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A02FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097FF0097
                FF000000FF9700FFC82FFF97000097CF90FFFF90FFFF90FFFF00C8FF0097FF00
                97CF00000000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFCF2FC82F0097CFCFFFFF90FFFF00C8FF00C8FF0097
                FF000000FF9700FFC82FFFC82F0097CF90FFFF0097CFCFFFFF90FFFF00C8FF00
                97FF0097CF00000000972F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFFCF2F676090FFFF90FFFF00C8FF00C8
                FF000000FFC82FFF9700FF97000097CF0097CF00672F0097CFCFFFFF90FFFF00
                C8FF0097FF0097CF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFCFFFFFCF2F676090FFFF90FFFF90FFFF90FFFF00C8
                FF000000FFC82FFFC82FFFC82F0097CFFF9700FF9700FF672F0097CFCFFFFF90
                FFFF00C8FF0097FF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFC8A00097CF0097CF0097CF0097CF0097CF0097CF0097
                CF000000FFC82FFFC82FFFFF2F007F00FFC82F007F0000672F0030000097CFCF
                FFFF90FFFF00C8FF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFF2F00672F2FC82F00972F0067
                2FFFC82FFFC82FFFC82FFF9700FFC82FFF9700FFC82F2FC82F00672F00300000
                97CFCFFFFF90FFFF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFEFC8A0FFFFFF00672F2FC82F2FC82F00972F0097
                2FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFF9700007F002FC82F007F00FF
                672F0097CFCFFFFF90FFFF0097CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00672F60FF2F60FF2F2FC82F00972F0097
                2F00672FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFFC82F007F00FF672FFF
                672FFF672F0097CFCFFFFF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FCFFFCFCFFFCF60FF2F2FC82F2FC8
                2F00972F00972F00672FFFC82F00672F00672FFF672FFF9700FF9700FF9700FF
                672F2F67600067900097CF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FFFFFFFCFFFCF60FF2F60FF
                2F2FC82F00972F00972F00672F00972F00972F00672FFF672FFF9700FF9700FF
                672F00C8FF0097FF00679000C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC82FCFFFCF60FF
                2F60FF2F2FC82F2FC82F2FC82F00972F00972F00972F00672FFF672FFF672F00
                C8FF0097FF0097FF006790006790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC8
                2FCFFFCFFFFFFFCFFFCF60FF2F60FF2F2FC82F2FC82F00972F00672FFFFFFF00
                97CF0097CF0097CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF2FC82F2FC82F2FC82F2FC82F2FC82F2FC82F2FC82FFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = BtExecutarClick
            end
            object btExportaCadastros: TSpeedButton
              Tag = 3
              Left = 267
              Top = 3
              Width = 242
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Exportar Cadastros'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C0000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF0000000000
                00CF3000CF3000CF3000CF3000CF3000CF3000CF3000000000000000FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CF0000000097CF0097FF006790000000006700006700003000FF30
                2FFF302FFF302FFF302FFF302FFF302FCF3000FF302FCF300000300000000000
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0000000097FF00679000000000670000972F00972F00972F0030
                00FF302FFF302FFF672FFF672FFF302FFF302FFF302F00300000672F003000CF
                3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0000000067900000000067002FC82F00972F2FC82F00972F0097
                2F003000FF302FFF672FFF302FFF672FFF302FFF302F00300060C82F003000CF
                3000CF3000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0097CF00000000670060FF2F2FC82F2FC82F2FC82F00972F2FC8
                2F00972F003000FF672FFF672FFF672FFF672FFF672FFF672FFF302FFF302F00
                300000672F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0097CF00C8FF0097FF0097CF0000002FC82F60FF2F2FC82F2FC82F2FC82F0097
                2F00972F003000FF672FFF672FFF672FFF672FFF672FFF302FFF302F00300000
                7F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CF00C8FF0097FF0097CF0000002FC82F2FC82F60FF2F2FC82F2FC8
                2F00972F00972F003000FF672FFF672FFF672FFF672FFF302F00300000972F00
                7F00007F00007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0097CFCFFFFF00C8FF0097FF0097CF00000060FF2F2FC82F2FC82F2FC8
                2F00972F00972F003000FF672F00000000000000000000000000000000000000
                0000000000007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0097CF90FFFF00C8FF0097FF0097CF0000002FC82F00972F7F7F
                00000000FF9700FF672FFF672F0097CF00C8FF00C8FF0097FF0097FF0097FF00
                000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000067000000
                00000000FF9700FF9700FF97000097CF90FFFF00C8FF00C8FF0097FF00000000
                7F00007F0000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF2FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097CF0000000097
                FF000000FF9700FF9700FF97000097CF90FFFF90FFFF00C8FF0097FF0097CF00
                000000972F007F00007F00003000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A02FC82F0097CFCFFFFF90FFFF00C8FF0097FF0097FF0097
                FF000000FF9700FFC82FFF97000097CF90FFFF90FFFF90FFFF00C8FF0097FF00
                97CF00000000972F007F0000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFCF2FC82F0097CFCFFFFF90FFFF00C8FF00C8FF0097
                FF000000FF9700FFC82FFFC82F0097CF90FFFF0097CFCFFFFF90FFFF00C8FF00
                97FF0097CF00000000972F00672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFFCF2F676090FFFF90FFFF00C8FF00C8
                FF000000FFC82FFF9700FF97000097CF0097CF00672F0097CFCFFFFF90FFFF00
                C8FF0097FF0097CF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEFC8A0FFFFCFFFFFCF2F676090FFFF90FFFF90FFFF90FFFF00C8
                FF000000FFC82FFFC82FFFC82F0097CFFF9700FF9700FF672F0097CFCFFFFF90
                FFFF00C8FF0097FF00000000672F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFC8A00097CF0097CF0097CF0097CF0097CF0097CF0097
                CF000000FFC82FFFC82FFFFF2F007F00FFC82F007F0000672F0030000097CFCF
                FFFF90FFFF00C8FF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFC8A0FFFFFFFFFFCFFFFF2F00672F2FC82F00972F0067
                2FFFC82FFFC82FFFC82FFF9700FFC82FFF9700FFC82F2FC82F00672F00300000
                97CFCFFFFF90FFFF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFEFC8A0FFFFFF00672F2FC82F2FC82F00972F0097
                2FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFF9700007F002FC82F007F00FF
                672F0097CFCFFFFF90FFFF0097CF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00672F60FF2F60FF2F2FC82F00972F0097
                2F00672FFF9700FFC82FFFC82FFFC82FFF9700FFC82FFFC82F007F00FF672FFF
                672FFF672F0097CFCFFFFF0097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FCFFFCFCFFFCF60FF2F2FC82F2FC8
                2F00972F00972F00672FFFC82F00672F00672FFF672FFF9700FF9700FF9700FF
                672F2F67600067900097CF00C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82FFFFFFFCFFFCF60FF2F60FF
                2F2FC82F00972F00972F00672F00972F00972F00672FFF672FFF9700FF9700FF
                672F00C8FF0097FF00679000C8FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC82FCFFFCF60FF
                2F60FF2F2FC82F2FC82F2FC82F00972F00972F00972F00672FFF672FFF672F00
                C8FF0097FF0097FF006790006790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FC82F2FC8
                2FCFFFCFFFFFFFCFFFCF60FF2F60FF2F2FC82F2FC82F00972F00672FFFFFFF00
                97CF0097CF0097CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF2FC82F2FC82F2FC82F2FC82F2FC82F2FC82F2FC82FFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = btExportaCadastrosClick
            end
          end
        end
      end
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 146
    Top = 6
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM'
      'EMPRESA')
    Macros = <>
    Left = 118
    Top = 6
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRCMATRIZFILIAL: TStringField
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'DB.EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLEmpresaEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLEmpresaEMPRCFISJURID: TStringField
      FieldName = 'EMPRCFISJURID'
      Origin = 'DB.EMPRESA.EMPRCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA11CPF: TStringField
      FieldName = 'EMPRA11CPF'
      Origin = 'DB.EMPRESA.EMPRA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLEmpresaEMPRA10RG: TStringField
      FieldName = 'EMPRA10RG'
      Origin = 'DB.EMPRESA.EMPRA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLEmpresaEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60URL: TStringField
      FieldName = 'EMPRA60URL'
      Origin = 'DB.EMPRESA.EMPRA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EMPRESA.REGISTRO'
    end
    object SQLEmpresaEMPRA100INFSPC: TStringField
      FieldName = 'EMPRA100INFSPC'
      Origin = 'DB.EMPRESA.EMPRA100INFSPC'
      FixedChar = True
      Size = 100
    end
    object SQLEmpresaEMPRA15CODEAN: TStringField
      FieldName = 'EMPRA15CODEAN'
      Origin = 'DB.EMPRESA.EMPRA15CODEAN'
      FixedChar = True
      Size = 15
    end
    object SQLEmpresaEMPRBLOGOTIPO: TBlobField
      FieldName = 'EMPRBLOGOTIPO'
      Origin = 'DB.EMPRESA.EMPRBLOGOTIPO'
      Size = 1
    end
    object SQLEmpresaEMPRA60CONTATO: TStringField
      FieldName = 'EMPRA60CONTATO'
      Origin = 'DB.EMPRESA.EMPRA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRIMUNICODFED: TIntegerField
      FieldName = 'EMPRIMUNICODFED'
      Origin = 'DB.EMPRESA.EMPRIMUNICODFED'
    end
    object SQLEmpresaEMPRA20CPFCONTADOR: TStringField
      FieldName = 'EMPRA20CPFCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA20CPFCONTADOR'
    end
    object SQLEmpresaEMPRA20CPFRESP: TStringField
      FieldName = 'EMPRA20CPFRESP'
      Origin = 'DB.EMPRESA.EMPRA20CPFRESP'
    end
    object SQLEmpresaEMPRA30CRC: TStringField
      FieldName = 'EMPRA30CRC'
      Origin = 'DB.EMPRESA.EMPRA30CRC'
      Size = 30
    end
    object SQLEmpresaEMPRA40CARGOCONT: TStringField
      FieldName = 'EMPRA40CARGOCONT'
      Origin = 'DB.EMPRESA.EMPRA40CARGOCONT'
      Size = 40
    end
    object SQLEmpresaEMPRA40CARGORESP: TStringField
      FieldName = 'EMPRA40CARGORESP'
      Origin = 'DB.EMPRESA.EMPRA40CARGORESP'
      Size = 40
    end
    object SQLEmpresaEMPRA60CONTADOR: TStringField
      FieldName = 'EMPRA60CONTADOR'
      Origin = 'DB.EMPRESA.EMPRA60CONTADOR'
      Size = 60
    end
    object SQLEmpresaEMPRIENDNRO: TIntegerField
      FieldName = 'EMPRIENDNRO'
      Origin = 'DB.EMPRESA.EMPRIENDNRO'
    end
    object SQLEmpresaEMPRIUFCODFED: TIntegerField
      FieldName = 'EMPRIUFCODFED'
      Origin = 'DB.EMPRESA.EMPRIUFCODFED'
    end
    object SQLEmpresaEMPRDREGJUNTA: TDateTimeField
      FieldName = 'EMPRDREGJUNTA'
      Origin = 'DB.EMPRESA.EMPRDREGJUNTA'
    end
    object SQLEmpresaEMPRA3CRT: TStringField
      FieldName = 'EMPRA3CRT'
      Origin = 'DB.EMPRESA.EMPRA3CRT'
      Size = 3
    end
    object SQLEmpresaEMPRN2CREDICMS: TFloatField
      FieldName = 'EMPRN2CREDICMS'
      Origin = 'DB.EMPRESA.EMPRN2CREDICMS'
    end
    object SQLEmpresaEMPRA15CRCCONTADOR: TStringField
      FieldName = 'EMPRA15CRCCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA15CRCCONTADOR'
      Size = 15
    end
    object SQLEmpresaEMPRA14CNPJCONTADOR: TStringField
      FieldName = 'EMPRA14CNPJCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA14CNPJCONTADOR'
      Size = 14
    end
    object SQLEmpresaEMPRA8CEPCONTADOR: TStringField
      FieldName = 'EMPRA8CEPCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA8CEPCONTADOR'
      Size = 8
    end
    object SQLEmpresaEMPRA60ENDCONTADOR: TStringField
      FieldName = 'EMPRA60ENDCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA60ENDCONTADOR'
      Size = 60
    end
    object SQLEmpresaEMPRA60BAICONTADOR: TStringField
      FieldName = 'EMPRA60BAICONTADOR'
      Origin = 'DB.EMPRESA.EMPRA60BAICONTADOR'
      Size = 60
    end
    object SQLEmpresaEMPRA10FONECONTADOR: TStringField
      FieldName = 'EMPRA10FONECONTADOR'
      Origin = 'DB.EMPRESA.EMPRA10FONECONTADOR'
      Size = 10
    end
    object SQLEmpresaEMPRA10FAXCONTADOR: TStringField
      FieldName = 'EMPRA10FAXCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA10FAXCONTADOR'
      Size = 10
    end
    object SQLEmpresaEMPRA7CODMUNCONTADOR: TStringField
      FieldName = 'EMPRA7CODMUNCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA7CODMUNCONTADOR'
      Size = 7
    end
    object SQLEmpresaEMPRIATIVIDADE: TIntegerField
      FieldName = 'EMPRIATIVIDADE'
      Origin = 'DB.EMPRESA.EMPRIATIVIDADE'
    end
    object SQLEmpresaEMPRA2NATPJ: TStringField
      FieldName = 'EMPRA2NATPJ'
      Origin = 'DB.EMPRESA.EMPRA2NATPJ'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaEMPRA9SUFRAMA: TStringField
      FieldName = 'EMPRA9SUFRAMA'
      Origin = 'DB.EMPRESA.EMPRA9SUFRAMA'
      Size = 9
    end
    object SQLEmpresaEMPRA20IMUNIC: TStringField
      FieldName = 'EMPRA20IMUNIC'
      Origin = 'DB.EMPRESA.EMPRA20IMUNIC'
    end
    object SQLEmpresaEMPRA150CONTADOREMAIL: TStringField
      FieldName = 'EMPRA150CONTADOREMAIL'
      Origin = 'DB.EMPRESA.EMPRICOD'
      Size = 150
    end
  end
  object SQLUnidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select distinct UNIDA5DESCR,  UNIDA15DESCR From UNIDADE')
    Macros = <>
    Left = 188
    Top = 8
    object SQLUnidadeUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLUnidadeUNIDA15DESCR: TStringField
      FieldName = 'UNIDA15DESCR'
      Origin = 'DB.UNIDADE.UNIDA15DESCR'
      FixedChar = True
      Size = 15
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select P.*, N.NCMA30CODIGO From PRODUTO P '
      'left join NCM N ON N.NCMICOD = P.NCMICOD '
      'where'
      '  PRODCATIVO = '#39'S'#39)
    Macros = <>
    Left = 217
    Top = 8
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA30CODESTRUT: TStringField
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA15CODANT: TStringField
      FieldName = 'PRODA15CODANT'
      Origin = 'DB.PRODUTO.PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.PRODUTO.PRODICODBALANCA'
    end
    object SQLProdutoUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
    object SQLProdutoPRODN3CAPACEMBAL: TFloatField
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.PRODUTO.PRODN3CAPACEMBAL'
    end
    object SQLProdutoPRODDCAD: TDateTimeField
      FieldName = 'PRODDCAD'
      Origin = 'DB.PRODUTO.PRODDCAD'
    end
    object SQLProdutoPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
    end
    object SQLProdutoPRODN3VLRCOMPRA: TFloatField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
    end
    object SQLProdutoPRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
    end
    object SQLProdutoPRODN3VLRCUSTOMED: TFloatField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
    end
    object SQLProdutoPRODN3PERCIPI: TFloatField
      FieldName = 'PRODN3PERCIPI'
      Origin = 'DB.PRODUTO.PRODN3PERCIPI'
    end
    object SQLProdutoPRODN3PERCMARGLUCR: TFloatField
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUCR'
    end
    object SQLProdutoPRODCATIVO: TStringField
      FieldName = 'PRODCATIVO'
      Origin = 'DB.PRODUTO.PRODCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCSERVICO: TStringField
      FieldName = 'PRODCSERVICO'
      Origin = 'DB.PRODUTO.PRODCSERVICO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODICODPAI: TIntegerField
      FieldName = 'PRODICODPAI'
      Origin = 'DB.PRODUTO.PRODICODPAI'
    end
    object SQLProdutoPRODCTIPOBAIXA: TStringField
      FieldName = 'PRODCTIPOBAIXA'
      Origin = 'DB.PRODUTO.PRODCTIPOBAIXA'
      FixedChar = True
      Size = 5
    end
    object SQLProdutoPRODN3QTDEBAIXA: TFloatField
      FieldName = 'PRODN3QTDEBAIXA'
      Origin = 'DB.PRODUTO.PRODN3QTDEBAIXA'
    end
    object SQLProdutoPRODIORIGEM: TIntegerField
      FieldName = 'PRODIORIGEM'
      Origin = 'DB.PRODUTO.PRODIORIGEM'
    end
    object SQLProdutoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTO.REGISTRO'
    end
    object SQLProdutoPRODISITTRIB: TIntegerField
      FieldName = 'PRODISITTRIB'
      Origin = 'DB.PRODUTO.PRODISITTRIB'
    end
    object SQLProdutoPRODN3VLRCOMPRAMED: TFloatField
      FieldName = 'PRODN3VLRCOMPRAMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRAMED'
    end
    object SQLProdutoPRODCSUBSTRIB: TStringField
      FieldName = 'PRODCSUBSTRIB'
      Origin = 'DB.PRODUTO.PRODCSUBSTRIB'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCTIPO: TStringField
      FieldName = 'PRODCTIPO'
      Origin = 'DB.PRODUTO.PRODCTIPO'
      FixedChar = True
      Size = 5
    end
    object SQLProdutoPRODN2PERCFRETE: TFloatField
      FieldName = 'PRODN2PERCFRETE'
      Origin = 'DB.PRODUTO.PRODN2PERCFRETE'
    end
    object SQLProdutoPRODN2PIS: TFloatField
      FieldName = 'PRODN2PIS'
      Origin = 'DB.PRODUTO.PRODN2PIS'
    end
    object SQLProdutoPRODN2PERCDESP: TFloatField
      FieldName = 'PRODN2PERCDESP'
      Origin = 'DB.PRODUTO.PRODN2PERCDESP'
    end
    object SQLProdutoPRODN2PERCSUBST: TFloatField
      FieldName = 'PRODN2PERCSUBST'
      Origin = 'DB.PRODUTO.PRODN2PERCSUBST'
    end
    object SQLProdutoPRODN2PERCDIFICM: TFloatField
      FieldName = 'PRODN2PERCDIFICM'
      Origin = 'DB.PRODUTO.PRODN2PERCDIFICM'
    end
    object SQLProdutoPRODIPRINCIPAL: TIntegerField
      FieldName = 'PRODIPRINCIPAL'
      Origin = 'DB.PRODUTO.PRODIPRINCIPAL'
    end
    object SQLProdutoPRODCCOFINS: TStringField
      FieldName = 'PRODCCOFINS'
      Origin = 'DB.PRODUTO.PRODCCOFINS'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODCVDESTNEG: TStringField
      FieldName = 'PRODCVDESTNEG'
      Origin = 'DB.PRODUTO.PRODCVDESTNEG'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA2CSTCOFINS: TStringField
      FieldName = 'PRODA2CSTCOFINS'
      Origin = 'DB.PRODUTO.PRODA2CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object SQLProdutoPRODA2CSTIPI: TStringField
      FieldName = 'PRODA2CSTIPI'
      Origin = 'DB.PRODUTO.PRODA2CSTIPI'
      FixedChar = True
      Size = 2
    end
    object SQLProdutoPRODA2CSTPIS: TStringField
      FieldName = 'PRODA2CSTPIS'
      Origin = 'DB.PRODUTO.PRODA2CSTPIS'
      FixedChar = True
      Size = 2
    end
    object SQLProdutoPRODN2ALIQCOFINS: TFloatField
      FieldName = 'PRODN2ALIQCOFINS'
      Origin = 'DB.PRODUTO.PRODN2ALIQCOFINS'
    end
    object SQLProdutoPRODN2ALIQPIS: TFloatField
      FieldName = 'PRODN2ALIQPIS'
      Origin = 'DB.PRODUTO.PRODN2ALIQPIS'
    end
    object SQLProdutoNCMICOD: TIntegerField
      FieldName = 'NCMICOD'
      Origin = 'DB.PRODUTO.NCMICOD'
    end
    object SQLProdutoPRODA1MODBC: TStringField
      FieldName = 'PRODA1MODBC'
      Origin = 'DB.PRODUTO.PRODA1MODBC'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA1MODBCST: TStringField
      FieldName = 'PRODA1MODBCST'
      Origin = 'DB.PRODUTO.PRODA1MODBCST'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA1TIPO: TStringField
      FieldName = 'PRODA1TIPO'
      Origin = 'DB.PRODUTO.PRODA1TIPO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODA2TIPOITEM: TStringField
      FieldName = 'PRODA2TIPOITEM'
      Origin = 'DB.PRODUTO.PRODA2TIPOITEM'
      FixedChar = True
      Size = 2
    end
    object SQLProdutoNCMA30CODIGO: TStringField
      FieldName = 'NCMA30CODIGO'
      Origin = 'DB.NCM.NCMA30CODIGO'
      Size = 30
    end
  end
  object SQLTerminalECF: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select TERMICOD, ECFA13ID From TERMINAL'
      'where'
      '  ECFA13ID <> '#39#39)
    Macros = <>
    Left = 700
    Top = 3
    object SQLTerminalECFTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalECFECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Origin = 'DB.TERMINAL.ECFA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  Sum(CupomItem.CPITN3QTD) as Quantidade,'
      
        '  Sum((CupomItem.CPITN3VLRUNIT *CupomItem.CPITN3QTD) - CUPOMITEM' +
        '.CPITN2DESC)  as ValorTotalItem,'
      '  CupomItem.PRODICOD'
      'from'
      '  Cupom'
      'inner join CupomItem on Cupom.CUPOA13ID = CupomItem.CUPOA13ID'
      'where'
      '  CupomItem.CPITN3QTDTROCA = 0 and'
      '  (%MEmpresa) and'
      '  (%MTerminal) and'
      '  (%MData)'
      'and'
      '  Cupom.CUPOCSTATUS <> '#39'C'#39
      'Group By'
      '  CupomItem.PRODICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 349
    Top = 8
    object SQLCupomQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object SQLCupomVALORTOTALITEM: TFloatField
      FieldName = 'VALORTOTALITEM'
    end
    object SQLCupomPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
  end
  object SQLCupomC410: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      
        '  SUM(((CupomItem.CPITN3VLRUNIT * CupomItem.CPITN3QTD) - CUPOMIT' +
        'EM.CPITN2DESC ) * (Produto.prodn2aliqcofins / 100)) as ValorTota' +
        'lCOFINS,'
      
        ' SUM(((CupomItem.CPITN3VLRUNIT * CupomItem.CPITN3QTD) - CUPOMITE' +
        'M.CPITN2DESC)  * (Produto.prodn2aliqpis / 100)) as ValorTotalPIS'
      'From'
      '  Cupom'
      
        'inner join CupomItem on Cupom.CUPOA13ID           = CupomItem.CU' +
        'POA13ID'
      
        'left outer join Operacaoestoque on Cupom.Opesicod = Operacaoesto' +
        'que.Opesicod'
      
        'left outer join Produto on CupomItem.Prodicod     = Produto.Prod' +
        'icod'
      'where'
      '  CupomItem.CPITN3QTDTROCA = 0 and'
      '  Produto.PRODA2CSTCOFINS > 0 and'
      '  Produto.PRODA2CSTPIS   > 0 and'
      '  (%MEmpresa) and'
      '  (%MTerminal) and'
      '  (%MData)'
      'and'
      '  Cupom.CUPOCSTATUS <> '#39'C'#39
      'and'
      '  operacaoestoque.OPESCENTRADASAIDA  = '#39'S'#39
      'and'
      '  operacaoestoque.OPESCORIGEMDESTINO = '#39'C'#39
      'and'
      '  operacaoestoque.OPESCGERAFINANCEIRO = '#39'S'#39
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 387
    Top = 8
    object SQLCupomC410VALORTOTALCOFINS: TFloatField
      FieldName = 'VALORTOTALCOFINS'
    end
    object SQLCupomC410VALORTOTALPIS: TFloatField
      FieldName = 'VALORTOTALPIS'
    end
  end
  object SQLReducaoZ: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM REDUCAOZDIA'
      'WHERE'
      '  (%MEmpresa)'
      'and'
      '  (%CampoData Between %DataInicial and %DataFinal)'
      'ORDER BY'
      '  TERMICOD asc,'
      '   REDUDEMIS asc')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 264
    Top = 8
    object SQLReducaoZREDUA13ID: TStringField
      FieldName = 'REDUA13ID'
      Origin = 'DB.REDUCAOZDIA.REDUA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLReducaoZEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.REDUCAOZDIA.EMPRICOD'
    end
    object SQLReducaoZREDUICOD: TIntegerField
      FieldName = 'REDUICOD'
      Origin = 'DB.REDUCAOZDIA.REDUICOD'
    end
    object SQLReducaoZECFA13ID: TStringField
      FieldName = 'ECFA13ID'
      Origin = 'DB.REDUCAOZDIA.ECFA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLReducaoZTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.REDUCAOZDIA.TERMICOD'
    end
    object SQLReducaoZREDUDEMIS: TDateTimeField
      FieldName = 'REDUDEMIS'
      Origin = 'DB.REDUCAOZDIA.REDUDEMIS'
    end
    object SQLReducaoZREDUN3VENDABRUTA: TFloatField
      FieldName = 'REDUN3VENDABRUTA'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDABRUTA'
    end
    object SQLReducaoZREDUN3GRANDETOTAL: TFloatField
      FieldName = 'REDUN3GRANDETOTAL'
      Origin = 'DB.REDUCAOZDIA.REDUN3GRANDETOTAL'
    end
    object SQLReducaoZREDUICONTINICIAL: TIntegerField
      FieldName = 'REDUICONTINICIAL'
      Origin = 'DB.REDUCAOZDIA.REDUICONTINICIAL'
    end
    object SQLReducaoZREDUICONTFINAL: TIntegerField
      FieldName = 'REDUICONTFINAL'
      Origin = 'DB.REDUCAOZDIA.REDUICONTFINAL'
    end
    object SQLReducaoZREDUICONTREDUZ: TIntegerField
      FieldName = 'REDUICONTREDUZ'
      Origin = 'DB.REDUCAOZDIA.REDUICONTREDUZ'
    end
    object SQLReducaoZREDUICONTREINICIO: TIntegerField
      FieldName = 'REDUICONTREINICIO'
      Origin = 'DB.REDUCAOZDIA.REDUICONTREINICIO'
    end
    object SQLReducaoZREDUN3ALIQ1: TFloatField
      FieldName = 'REDUN3ALIQ1'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ1'
    end
    object SQLReducaoZREDUN3BASE1: TFloatField
      FieldName = 'REDUN3BASE1'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE1'
    end
    object SQLReducaoZREDUN3IMPO1: TFloatField
      FieldName = 'REDUN3IMPO1'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO1'
    end
    object SQLReducaoZREDUN3ALIQ2: TFloatField
      FieldName = 'REDUN3ALIQ2'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ2'
    end
    object SQLReducaoZREDUN3BASE2: TFloatField
      FieldName = 'REDUN3BASE2'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE2'
    end
    object SQLReducaoZREDUN3IMPO2: TFloatField
      FieldName = 'REDUN3IMPO2'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO2'
    end
    object SQLReducaoZREDUN3ALIQ3: TFloatField
      FieldName = 'REDUN3ALIQ3'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ3'
    end
    object SQLReducaoZREDUN3BASE3: TFloatField
      FieldName = 'REDUN3BASE3'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE3'
    end
    object SQLReducaoZREDUN3IMPO3: TFloatField
      FieldName = 'REDUN3IMPO3'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO3'
    end
    object SQLReducaoZREDUN3ALIQ4: TFloatField
      FieldName = 'REDUN3ALIQ4'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ4'
    end
    object SQLReducaoZREDUN3BASE4: TFloatField
      FieldName = 'REDUN3BASE4'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE4'
    end
    object SQLReducaoZREDUN3IMPO4: TFloatField
      FieldName = 'REDUN3IMPO4'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO4'
    end
    object SQLReducaoZREDUN3ALIQ5: TFloatField
      FieldName = 'REDUN3ALIQ5'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ5'
    end
    object SQLReducaoZREDUN3BASE5: TFloatField
      FieldName = 'REDUN3BASE5'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE5'
    end
    object SQLReducaoZREDUN3IMPO5: TFloatField
      FieldName = 'REDUN3IMPO5'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO5'
    end
    object SQLReducaoZREDUN3ALIQ6: TFloatField
      FieldName = 'REDUN3ALIQ6'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ6'
    end
    object SQLReducaoZREDUN3BASE6: TFloatField
      FieldName = 'REDUN3BASE6'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE6'
    end
    object SQLReducaoZREDUN3IMPO6: TFloatField
      FieldName = 'REDUN3IMPO6'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO6'
    end
    object SQLReducaoZREDUN3VENDALIQ: TFloatField
      FieldName = 'REDUN3VENDALIQ'
      Origin = 'DB.REDUCAOZDIA.REDUN3VENDALIQ'
    end
    object SQLReducaoZREDUN3VLRCANC: TFloatField
      FieldName = 'REDUN3VLRCANC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRCANC'
    end
    object SQLReducaoZREDUN3VLRDESC: TFloatField
      FieldName = 'REDUN3VLRDESC'
      Origin = 'DB.REDUCAOZDIA.REDUN3VLRDESC'
    end
    object SQLReducaoZREDUITOTCUPOM: TIntegerField
      FieldName = 'REDUITOTCUPOM'
      Origin = 'DB.REDUCAOZDIA.REDUITOTCUPOM'
    end
    object SQLReducaoZREDUN3ALIQ7: TFloatField
      FieldName = 'REDUN3ALIQ7'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ7'
    end
    object SQLReducaoZREDUN3BASE7: TFloatField
      FieldName = 'REDUN3BASE7'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE7'
    end
    object SQLReducaoZREDUN3IMPO7: TFloatField
      FieldName = 'REDUN3IMPO7'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO7'
    end
    object SQLReducaoZREDUN3ALIQ8: TFloatField
      FieldName = 'REDUN3ALIQ8'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQ8'
    end
    object SQLReducaoZREDUN3BASE8: TFloatField
      FieldName = 'REDUN3BASE8'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASE8'
    end
    object SQLReducaoZREDUN3IMPO8: TFloatField
      FieldName = 'REDUN3IMPO8'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPO8'
    end
    object SQLReducaoZREDUN3ALIQF: TFloatField
      FieldName = 'REDUN3ALIQF'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQF'
    end
    object SQLReducaoZREDUN3BASEF: TFloatField
      FieldName = 'REDUN3BASEF'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASEF'
    end
    object SQLReducaoZREDUN3IMPOF: TFloatField
      FieldName = 'REDUN3IMPOF'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPOF'
    end
    object SQLReducaoZREDUN3ALIQI: TFloatField
      FieldName = 'REDUN3ALIQI'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQI'
    end
    object SQLReducaoZREDUN3BASEI: TFloatField
      FieldName = 'REDUN3BASEI'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASEI'
    end
    object SQLReducaoZREDUN3IMPOI: TFloatField
      FieldName = 'REDUN3IMPOI'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPOI'
    end
    object SQLReducaoZREDUN3ALIQN: TFloatField
      FieldName = 'REDUN3ALIQN'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQN'
    end
    object SQLReducaoZREDUN3BASEN: TFloatField
      FieldName = 'REDUN3BASEN'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASEN'
    end
    object SQLReducaoZREDUN3IMPON: TFloatField
      FieldName = 'REDUN3IMPON'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPON'
    end
    object SQLReducaoZREDUN3ALIQS: TFloatField
      FieldName = 'REDUN3ALIQS'
      Origin = 'DB.REDUCAOZDIA.REDUN3ALIQS'
    end
    object SQLReducaoZREDUN3BASES: TFloatField
      FieldName = 'REDUN3BASES'
      Origin = 'DB.REDUCAOZDIA.REDUN3BASES'
    end
    object SQLReducaoZREDUN3IMPOS: TFloatField
      FieldName = 'REDUN3IMPOS'
      Origin = 'DB.REDUCAOZDIA.REDUN3IMPOS'
    end
  end
  object SQLRegC490: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From Sped_RegC490'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 732
    Top = 3
    object SQLRegC490CST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Origin = 'DB.SPED_REGC490.CST_ICMS'
      FixedChar = True
      Size = 3
    end
    object SQLRegC490CFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'DB.SPED_REGC490.CFOP'
      FixedChar = True
      Size = 4
    end
    object SQLRegC490ALIQ_ICMS: TStringField
      FieldName = 'ALIQ_ICMS'
      Origin = 'DB.SPED_REGC490.ALIQ_ICMS'
      FixedChar = True
      Size = 10
    end
    object SQLRegC490VL_OPR: TFloatField
      FieldName = 'VL_OPR'
      Origin = 'DB.SPED_REGC490.VL_OPR'
      DisplayFormat = ',0.00'
    end
    object SQLRegC490VL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
      Origin = 'DB.SPED_REGC490.VL_BC_ICMS'
      DisplayFormat = ',0.00'
    end
    object SQLRegC490VL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
      Origin = 'DB.SPED_REGC490.VL_ICMS'
      DisplayFormat = ',0.00'
    end
    object SQLRegC490VL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
      Origin = 'DB.SPED_REGC490.VL_BC_ICMS_ST'
      DisplayFormat = ',0.00'
    end
    object SQLRegC490VL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
      Origin = 'DB.SPED_REGC490.VL_ICMS_ST'
      DisplayFormat = ',0.00'
    end
    object SQLRegC490VL_RED_BC: TFloatField
      FieldName = 'VL_RED_BC'
      Origin = 'DB.SPED_REGC490.VL_RED_BC'
      DisplayFormat = ',0.00'
    end
    object SQLRegC490VL_IPI: TFloatField
      FieldName = 'VL_IPI'
      Origin = 'DB.SPED_REGC490.VL_IPI'
      DisplayFormat = ',0.00'
    end
  end
  object SQLC400: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SPED_C400')
    Macros = <>
    Left = 352
    Top = 52
  end
  object SQLC405: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SPED_C405'
      '')
    Macros = <>
    Left = 380
    Top = 52
  end
  object SQLC420: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SPED_C420 WHERE'
      ' NUMEROSERIEECF = :xSerieECF   AND DATAREDUCAO = :xDataRDZ'
      '')
    Macros = <>
    Left = 436
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xSerieECF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xDataRDZ'
        ParamType = ptUnknown
      end>
  end
  object SQLC460: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT * FROM SPED_C460  WHERE  NUMEROSERIEECF = :xSerie_ECF  AN' +
        'D DATAREDUCAO = :xDataRDZ'
      '')
    Macros = <>
    Left = 464
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xSerie_ECF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xDataRDZ'
        ParamType = ptUnknown
      end>
  end
  object SQLC470: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SPED_C470 WHERE '
      'NUMEROSERIEECF = :xSerie_ECF  '
      'AND DATAREDUCAO = :xDataRDZ'
      'AND NUMEROCOO = :xCOO ')
    Macros = <>
    Left = 492
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xSerie_ECF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xDataRDZ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xCOO'
        ParamType = ptUnknown
      end>
  end
  object SQLC490: TRxQuery
    CachedUpdates = True
    AfterPost = SQLC490AfterPost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SPED_C490 WHERE'
      'NUMEROSERIEECF = :xSerie_ECF  AND DATAREDUCAO = :xDataRDZ'
      ''
      ''
      '')
    Macros = <>
    Left = 520
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xSerie_ECF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xDataRDZ'
        ParamType = ptUnknown
      end>
  end
  object SQLC410: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      ''
      '')
    Macros = <>
    Left = 408
    Top = 52
  end
  object Mem0220: TRxMemoryData
    FieldDefs = <>
    Left = 704
    Top = 336
    object Mem0220UNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
  end
  object FormStorage1: TFormStorage
    Options = []
    StoredProps.Strings = (
      'ChkImporta.Checked'
      'chkItensNFe.Checked'
      'chkterminal.Checked'
      'CkBarras.Checked'
      'ckC100.Checked'
      'ckC400.Checked'
      'ckQuestor.Checked'
      'De.Text'
      'Ate.Text'
      'ckDominioProdutos.Checked'
      'edtVersao.Text'
      'EditCodEmpresa.Text'
      'ckdtEmissao.Checked'
      'chkGeraInventario.Checked'
      'cmbMotivoInventario.ItemIndex'
      'edtContaAnalitica.Text'
      'DataInventario.Text')
    StoredValues = <>
    Left = 448
    Top = 7
  end
  object zPesquisa: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 624
  end
  object zPesquisa1: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 592
  end
  object zPesquisa2: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 560
  end
  object zPesquisa3: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 528
  end
  object zInventario: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    Macros = <>
    Left = 544
    Top = 24
  end
  object z0190: TRxQuery
    CachedUpdates = True
    AfterPost = z0190AfterPost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SPED_0190')
    Macros = <>
    Left = 608
    Top = 24
    object z0190UND_SIGLA: TStringField
      FieldName = 'UND_SIGLA'
      Origin = 'EASY_GESTAO.SPED_0190.UND_SIGLA'
      Size = 6
    end
    object z0190UND_DESCR: TStringField
      FieldName = 'UND_DESCR'
      Origin = 'EASY_GESTAO.SPED_0190.UND_DESCR'
      Size = 60
    end
  end
  object z0150: TRxQuery
    CachedUpdates = True
    AfterPost = z0150AfterPost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM SPED_0150')
    Macros = <>
    Left = 640
    Top = 24
    object z0150COD_PART: TStringField
      FieldName = 'COD_PART'
      Origin = 'EASY_GESTAO.SPED_0150.COD_PART'
      Size = 13
    end
    object z0150NOME: TStringField
      FieldName = 'NOME'
      Origin = 'EASY_GESTAO.SPED_0150.NOME'
      Size = 60
    end
    object z0150COD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      Origin = 'EASY_GESTAO.SPED_0150.COD_PAIS'
      Size = 4
    end
    object z0150CNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'EASY_GESTAO.SPED_0150.CNPJ'
      Size = 14
    end
    object z0150CPF: TStringField
      FieldName = 'CPF'
      Origin = 'EASY_GESTAO.SPED_0150.CPF'
      Size = 11
    end
    object z0150IE: TStringField
      FieldName = 'IE'
      Origin = 'EASY_GESTAO.SPED_0150.IE'
    end
    object z0150COD_MUN: TStringField
      FieldName = 'COD_MUN'
      Origin = 'EASY_GESTAO.SPED_0150.COD_MUN'
      Size = 7
    end
    object z0150COD_SUFRAMA: TStringField
      FieldName = 'COD_SUFRAMA'
      Origin = 'EASY_GESTAO.SPED_0150.COD_SUFRAMA'
      Size = 9
    end
    object z0150ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'EASY_GESTAO.SPED_0150.ENDERECO'
      Size = 60
    end
    object z0150END_NUM: TStringField
      FieldName = 'END_NUM'
      Origin = 'EASY_GESTAO.SPED_0150.END_NUM'
      Size = 10
    end
    object z0150COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'EASY_GESTAO.SPED_0150.COMPLEMENTO'
      Size = 60
    end
    object z0150BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'EASY_GESTAO.SPED_0150.BAIRRO'
      Size = 60
    end
    object z0150COD_FORN: TIntegerField
      FieldName = 'COD_FORN'
      Origin = 'EASY_GESTAO.SPED_0150.COD_FORN'
    end
    object z0150COD_TRANSP: TIntegerField
      FieldName = 'COD_TRANSP'
      Origin = 'EASY_GESTAO.SPED_0150.COD_TRANSP'
    end
  end
  object ZSerie: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    Macros = <>
    Left = 672
    Top = 24
  end
  object ZRegC490: TRxQuery
    CachedUpdates = True
    AfterPost = ZRegC490AfterPost
    DatabaseName = 'DB'
    RequestLive = True
    Macros = <>
    Left = 560
    Top = 48
  end
  object z0200: TRxQuery
    CachedUpdates = True
    AfterPost = z0200AfterPost
    DatabaseName = 'DB'
    RequestLive = True
    Macros = <>
    Left = 576
    Top = 24
  end
end
