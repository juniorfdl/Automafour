inherited FormTelaGeracaoMalaDireta: TFormTelaGeracaoMalaDireta
  Left = 276
  Top = 136
  Width = 1019
  Height = 552
  Caption = 'Gera'#231#227'o de Mala Direta'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1003
    Height = 513
    inherited PanelCentral: TPanel
      Top = 63
      Width = 999
      Height = 446
      inherited PanelBarra: TPanel
        Width = 999
        Align = alTop
        BevelInner = bvLowered
        Color = 16249066
        object Label69: TLabel
          Left = 12
          Top = 229
          Width = 145
          Height = 13
          Caption = 'Apenas do Tipo de Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 370
          Top = 229
          Width = 162
          Height = 13
          Caption = 'Sele'#231#227'o de Cliente espec'#237'fico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 12
          Top = 194
          Width = 169
          Height = 13
          Caption = 'Apenas do Motivo de Bloqueio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 190
          Top = 229
          Width = 146
          Height = 13
          Caption = 'Diferente do Mot.Bloqueio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 371
          Top = 194
          Width = 126
          Height = 13
          Caption = 'Cadastrados pela Filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 997
          Height = 26
          Align = alTop
          ParentColor = True
          TabOrder = 9
          object Label1: TLabel
            Left = 1
            Top = 1
            Width = 995
            Height = 24
            Align = alClient
            Caption = '  Filtros'
            Font.Charset = ANSI_CHARSET
            Font.Color = 10053171
            Font.Height = -24
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CKUsaEndCob: TCheckBox
            Left = 252
            Top = 8
            Width = 135
            Height = 17
            Caption = 'Usar End.Cobranca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object ckSPC: TCheckBox
            Left = 410
            Top = 7
            Width = 129
            Height = 17
            Caption = 'em SPC Descartar'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 1
          end
        end
        object ComboTipoCliente: TRxDBLookupCombo
          Left = 10
          Top = 242
          Width = 174
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Nenhum...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LookupField = 'TPCLICOD'
          LookupDisplay = 'TPCLA30DESCR'
          LookupSource = DSSQLTipoCliente
          ParentFont = False
          TabOrder = 3
        end
        object ComboCliente: TRxDBLookupCombo
          Left = 366
          Top = 242
          Width = 432
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Nenhum...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLClienteAUX
          ParentFont = False
          TabOrder = 5
        end
        object RadioEmail: TRadioGroup
          Left = 9
          Top = 30
          Width = 361
          Height = 164
          Caption = ' &Filtro Especial '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            '&A - Todos os clientes'
            '&B - Para o titular e conjug'#234' em data de casamento'
            '&C - Para o titular em data de anivers'#225'rio do conjug'#234
            '&D - Para o titular em data de anivers'#225'rio dos dependentes'
            '&E - Para o titular em seu anivers'#225'rio'
            '&F - Para o conjug'#234' em data de anivers'#225'rio do titular'
            '&G - Para os dependentes em data de anivers'#225'rio do titular')
          ParentFont = False
          TabOrder = 0
        end
        object ComboMotivoBloqueio: TRxDBLookupCombo
          Left = 10
          Top = 207
          Width = 174
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Nenhum...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LookupField = 'MTBLICOD'
          LookupDisplay = 'MTBLA60DESCR'
          LookupSource = DSSQLMotBloq
          ParentFont = False
          TabOrder = 1
        end
        object ComboMotivobloqDif: TRxDBLookupCombo
          Left = 188
          Top = 242
          Width = 174
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Nenhum...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LookupField = 'MTBLICOD'
          LookupDisplay = 'MTBLA60DESCR'
          LookupSource = DSSQLMotBloqDif
          ParentFont = False
          TabOrder = 2
        end
        object RadioEtiqueta: TRadioGroup
          Left = 569
          Top = 95
          Width = 352
          Height = 100
          Caption = ' &Tipo de Impress'#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 2
          Items.Strings = (
            '&A - Etiq 2 Col Pimaco Carta'
            '&B - Etiq 3 Col Pimaco Carta'
            '&C - Listagem Padr'#227'o Carta'
            '&D - Etiq 3 Col Pimaco Carta com Cd Barras Cliente'
            '&E - Envelope Remetente'
            '&F - Envelope Destinatario'
            '&G - Carteiras para Cliente com Cd Barras'
            '&H - Cartas Personalizadas')
          ParentFont = False
          TabOrder = 8
        end
        object GrupDatasAniversario: TGroupBox
          Left = 372
          Top = 30
          Width = 238
          Height = 64
          Caption = ' Per'#237'odo Anivers'#225'rio '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          object GroupPeriodoIni: TGroupBox
            Left = 7
            Top = 15
            Width = 110
            Height = 45
            Caption = ' Dia / M'#234's Inicial '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label3: TLabel
              Left = 50
              Top = 22
              Width = 8
              Height = 16
              Caption = '/'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboDiaIni: TComboBox
              Left = 6
              Top = 20
              Width = 42
              Height = 21
              ItemHeight = 13
              MaxLength = 2
              TabOrder = 0
              Text = 'DIA'
              Items.Strings = (
                '01'
                '02'
                '03'
                '04'
                '05'
                '06'
                '07'
                '08'
                '09'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17'
                '18'
                '19'
                '20'
                '21'
                '22'
                '23'
                '24'
                '25'
                '26'
                '27'
                '28'
                '29'
                '30'
                '31')
            end
            object ComboMesIni: TComboBox
              Left = 57
              Top = 20
              Width = 43
              Height = 21
              ItemHeight = 13
              MaxLength = 2
              TabOrder = 1
              Text = 'M'#202'S'
              Items.Strings = (
                '01'
                '02'
                '03'
                '04'
                '05'
                '06'
                '07'
                '08'
                '09'
                '10'
                '11'
                '12')
            end
          end
          object GroupPeriodoFin: TGroupBox
            Left = 121
            Top = 15
            Width = 109
            Height = 45
            Caption = ' Dia / M'#234's Final '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label4: TLabel
              Left = 49
              Top = 22
              Width = 8
              Height = 16
              Caption = '/'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboDiaFin: TComboBox
              Left = 6
              Top = 20
              Width = 41
              Height = 21
              ItemHeight = 13
              MaxLength = 2
              TabOrder = 0
              Text = 'DIA'
              Items.Strings = (
                '01'
                '02'
                '03'
                '04'
                '05'
                '06'
                '07'
                '08'
                '09'
                '10'
                '11'
                '12'
                '13'
                '14'
                '15'
                '16'
                '17'
                '18'
                '19'
                '20'
                '21'
                '22'
                '23'
                '24'
                '25'
                '26'
                '27'
                '28'
                '29'
                '30'
                '31')
            end
            object ComboMesFin: TComboBox
              Left = 58
              Top = 20
              Width = 44
              Height = 21
              ItemHeight = 13
              MaxLength = 2
              TabOrder = 1
              Text = 'M'#202'S'
              Items.Strings = (
                '01'
                '02'
                '03'
                '04'
                '05'
                '06'
                '07'
                '08'
                '09'
                '10'
                '11'
                '12')
            end
          end
        end
        object GroupBox1: TGroupBox
          Left = 373
          Top = 103
          Width = 193
          Height = 42
          Caption = ' Sem compras abaixo de'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          object Label8: TLabel
            Left = 15
            Top = 21
            Width = 57
            Height = 13
            Caption = 'Data Base'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DataUltCompra: TDateEdit
            Left = 84
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
        end
        object RadioOrdem: TRadioGroup
          Left = 613
          Top = 30
          Width = 144
          Height = 65
          Caption = ' Ordenar por '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            '&1 - Nome'
            '&2 - Cidade/Bairro'
            '&3 - Data Nascimento')
          ParentFont = False
          TabOrder = 10
        end
        object CKAtivo: TCheckBox
          Left = 122
          Top = 8
          Width = 112
          Height = 17
          Caption = 'Somente Ativos'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 11
        end
        object CKTodosMotivosBloq: TCheckBox
          Left = 192
          Top = 207
          Width = 107
          Height = 17
          Caption = 'Todos Motivos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object GroupBox2: TGroupBox
          Left = 373
          Top = 152
          Width = 193
          Height = 42
          Caption = ' Com Compras entre '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          object DataUltCompra1: TDateEdit
            Left = 8
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
          object DataUltCompra2: TDateEdit
            Left = 99
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
        end
        object ComboEmpresa: TRxDBLookupCombo
          Left = 366
          Top = 207
          Width = 432
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todas...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          LookupField = 'EMPRICOD'
          LookupDisplay = 'EMPRA60NOMEFANT'
          LookupSource = dsSQLEmpresa
          ParentFont = False
          TabOrder = 4
        end
        object GroupBox3: TGroupBox
          Left = 765
          Top = 31
          Width = 155
          Height = 42
          Caption = ' Apenas Bairro '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          object EditBairro: TEdit
            Left = 4
            Top = 15
            Width = 145
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 295
        Width = 999
        Height = 129
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSTblMalaDiretaCli
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'CLIEA13ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60RAZAOSOC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60ENDRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60BAIRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60CIDRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA2UFRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA8CEPRES'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTATO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA30OUTROSDOC'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 267
        Width = 999
        Height = 28
        Align = alTop
        BevelOuter = bvLowered
        ParentColor = True
        TabOrder = 2
        object LBTotalRegistros: TLabel
          Left = 302
          Top = 1
          Width = 696
          Height = 26
          Align = alClient
          Alignment = taCenter
          Caption = 'Total Registros'
          Color = 16249066
          Font.Charset = ANSI_CHARSET
          Font.Color = 10053171
          Font.Height = -24
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 1
          Top = 1
          Width = 301
          Height = 26
          Align = alLeft
          Caption = '  Lista Tempor'#225'ria de Cliente'
          Color = 16249066
          Font.Charset = ANSI_CHARSET
          Font.Color = 10053171
          Font.Height = -24
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 424
        Width = 999
        Height = 22
        Align = alBottom
        BevelOuter = bvLowered
        ParentColor = True
        TabOrder = 3
        object Label9: TLabel
          Left = 1
          Top = 1
          Width = 997
          Height = 20
          Align = alClient
          Alignment = taCenter
          Caption = 'Escolha os Filtros Desejados e ap'#243's clique no bot'#227'o Gerar Lista'
          Color = 16249066
          Font.Charset = ANSI_CHARSET
          Font.Color = 10053171
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 999
      Height = 63
      inherited PanelCabecalho: TPanel
        Width = 999
        Height = 63
        inherited LabelTitulo: TLabel
          Top = 2
        end
        inherited PanelNavigator: TPanel
          Top = 31
          Width = 999
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 999
            object BtLimparCliente: TSpeedButton
              Left = 147
              Top = 3
              Width = 115
              Height = 25
              Caption = '&Remover Cliente'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000FFFFFFFFFFFFFF077777777000FF
                FFFFFFFFF078787727770000FFFFFFFFF0787837272700000FFFFFFFF0787837
                272700000FFFFFFFF0787837272700000FFFFFFFF078783727270000FFFFFFFF
                F078783727270FFFFFFFFFFFF070000000070FFFFFFFFFFFF007777777200FFF
                FFFFFFFF07777777777770FFFFFFFFFF07888877777770FFFFFFFFFF07888777
                777770FFFFFFFFFF08888700077770FFFFFFFFFFF0088F7737700FFFFFFFFFFF
                FFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = BtLimparClienteClick
            end
            object BtLimparTabela: TSpeedButton
              Left = 263
              Top = 3
              Width = 115
              Height = 25
              Caption = '&Remover Todos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000FFFFFFFFFFFFFF077777777000FF
                FFFFFFFFF078787727770000FFFFFFFFF0787837272700000FFFFFFFF0787837
                272700000FFFFFFFF0787837272700000FFFFFFFF078783727270000FFFFFFFF
                F078783727270FFFFFFFFFFFF070000000070FFFFFFFFFFFF007777777200FFF
                FFFFFFFF07777777777770FFFFFFFFFF07888877777770FFFFFFFFFF07888777
                777770FFFFFFFFFF08888700077770FFFFFFFFFFF0088F7737700FFFFFFFFFFF
                FFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = BtLimparTabelaClick
            end
            object BTGerarLista: TSpeedButton
              Left = 9
              Top = 3
              Width = 137
              Height = 25
              Caption = '&Adicionar a Lista'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                46050000424D460500000000000036040000280000000D000000110000000100
                08000000000010010000C30E0000C30E00000001000000000000000000008080
                8000000080000080800000800000808000008000000080008000408080004040
                0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
                FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
                80008000FF004080FF00C0DCC000F0CAA60060208000C0FFFF00E0E0A0008000
                60008080FF00C0800000FFC0C000FFCF0000FFFF6900E0FFE000B39CDD00EE8F
                B300F96F2A00CDB83F0036844800418C9500425E8E007A62A000AC4F6200BE2F
                1D007666280000450000013E450013286A006A39850085324A00040404000808
                08000C0C0C0011111100161616001C1C1C002222220029292900303030005F5F
                5F00555555004D4D4D0042424200393939000007000000000D008199B700B499
                840090BDBD00607F7F007F606000000E000000001B00000028002B090800001D
                0000000039009B00000000250000000049003B111100002F000000005D004517
                1700003A000011114900531C1C00FF160000FF002B006C212100141459000051
                00006A1A47006732190000610000FF310000FF0061007B20530067431600E22E
                2E001659260004465100492E68008F520700B8186A0015239000FF530000FF00
                A300124A6A006C3375009A414A000B653700152CA400B11F8300FF2C4E00B651
                2000926408000B566F00AD435900127236001733B00000A100001F5F77007147
                89001C43B0007D2DB70095860000236E7A00009F260001A9730000CA0000015B
                AC00C21D2000705294004CAA240089940A007B6E360090754400A800FF00FF71
                0000FF00DF004A915600F84834008232CC007041E40001CA680042BC3600FF9A
                0000B7229600337D85008CB72500ED5A360000FF5C000048FF00A29B22004DCF
                42005258C20095D32000E024A500B556730000A9A9003C6FD000589F67000BCF
                890000ACFF00FE2EA7007F59E20067DC4C00FF18FF00FF7D3A0018D0B10000FF
                C70000E2FF003D9ADF009F815600BA43C6008B71AF00C9A23800CE53D100659A
                FF00DBCA4600FF4DFF006AE9C800E0DE4C00FF98FF0082C0DF00A5ECE900CDF6
                F500FFD0FF005AACB100AE916300654C22003F4E8D0070705000FFFFD000FFE7
                FF00696969007777770086868600969696009D9D9D00A4A4A400B2B2B200CBCB
                CB00D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F80066C1B20078BF
                8000F0F0C600FFA4B200FFB3FF00A38ED10037DCC300549EA00070AE7600C19E
                7800BF648300D383A400323FD100007DFF0023784400605F24002C0E0E000000
                BE00001FFF00003931003E85D9008577020081D8B0001D21560030000000B3C8
                88000079A0008170EA0069F15100CD749100FF7CFF00FFFFA200F0FBFF00A4A0
                A000537F200029798A00326932007F05EC00AC112F00423FEE000F0F0F0F0001
                0F0F0F0F0F0F0F0000000F0F0F0F0000010F0F0F0F0F0F0000000F0F0F0F0F00
                00010F0F0F0F0F0000000F0F0F0F0F001100010F0F0F0F0000000F0F0F000000
                001100010F0F0F0000000F0F0F0011110E111100010F0F0000000F0F0F0F000E
                11000000000F0F0000000F0F0F0F00110E1100010F0F0F0000000F0000000000
                110E1100010F0F0000000F000E110E110E110E1100010F0000000F0F000E110E
                11000000000F0F0000000F0F00110E110E1100010F0F0F0000000F0F0F00110E
                110E1100010F0F0000000F0F0F000E0E0E110E0E00010F0000000F0F0F0F000E
                110E0E110E00010000000F0F0F0F0000000000000000000000000F0F0F0F0F0F
                0F0F0F0F0F0F0F000000}
              ParentFont = False
              OnClick = BTGerarListaClick
            end
            object BTimprimir: TSpeedButton
              Left = 379
              Top = 3
              Width = 137
              Height = 25
              Caption = '&Imprimir'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888888888888888888888888888888888888888888888888888888888888
                8888888000008888888888888888000777000888888888888000777777700008
                8888888007777777770000008888880777777788770000000088880777888888
                7700000000888807888888878F87000700888808888888FFFFF8700070888808
                888FFFFFFFFF8700008888078FFFFFFFF77777770088888008FFFF8777888177
                008888888008877FFFFF880088888888888008FFFFFFF87888888888888880FF
                FFFFFF80888888888888808FFFFFFFF8088888888888880FFFFF870008888888
                88888880F8700888888888888888888800888888888888888888888888888888
                8888888888888888888888888888888888888888888888888888}
              ParentFont = False
              OnClick = BtImpressaoClick
            end
            object BtArquivoTXT: TSpeedButton
              Left = 518
              Top = 3
              Width = 137
              Height = 25
              Caption = 'em Arquivo'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888888888888888888888888888888888888888888888888888888888888
                8888888000008888888888888888000777000888888888888000777777700008
                8888888007777777770000008888880777777788770000000088880777888888
                7700000000888807888888878F87000700888808888888FFFFF8700070888808
                888FFFFFFFFF8700008888078FFFFFFFF77777770088888008FFFF8777888177
                008888888008877FFFFF880088888888888008FFFFFFF87888888888888880FF
                FFFFFF80888888888888808FFFFFFFF8088888888888880FFFFF870008888888
                88888880F8700888888888888888888800888888888888888888888888888888
                8888888888888888888888888888888888888888888888888888}
              ParentFont = False
              OnClick = BtArquivoTXTClick
            end
          end
        end
      end
    end
  end
  object TblMalaDiretaCli: TTable
    DatabaseName = 'Easy_TEMP'
    TableName = 'EtiquetaEndereco.db'
    Left = 498
    Top = 3
    object TblMalaDiretaCliCLIEA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CLIEA13ID'
      Origin = 'Easy_TEMP."EtiquetaEndereco.DB".CLIEA13ID'
      Size = 13
    end
    object TblMalaDiretaCliCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Raz'#227'o Social/Nome do Cliente'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'Easy_TEMP."EtiquetaEndereco.DB".CLIEA60RAZAOSOC'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA60ENDRES: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLIEA60ENDRES'
      Origin = 'Easy_TEMP."EtiquetaEndereco.DB".CLIEA60ENDRES'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA60BAIRES: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLIEA60BAIRES'
      Origin = 'Easy_TEMP."EtiquetaEndereco.DB".CLIEA60BAIRES'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      Origin = 'Easy_TEMP."EtiquetaEndereco.DB".CLIEA60CIDRES'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      Origin = 'Easy_TEMP."EtiquetaEndereco.DB".CLIEA2UFRES'
      Size = 2
    end
    object TblMalaDiretaCliCLIEA8CEPRES: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CLIEA8CEPRES'
      Origin = 'Easy_TEMP."EtiquetaEndereco.DB".CLIEA8CEPRES'
      Size = 8
    end
    object TblMalaDiretaCliCONTATO: TStringField
      DisplayLabel = 'Pessoa de Contato'
      FieldName = 'CONTATO'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA15FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLIEA15FONE'
      Size = 15
    end
    object TblMalaDiretaCliCLIEA30OUTROSDOC: TStringField
      DisplayLabel = 'Outro Documento'
      FieldName = 'CLIEA30OUTROSDOC'
      Size = 30
    end
    object TblMalaDiretaCliCLIEDNASC: TDateTimeField
      DisplayLabel = 'Dt.Nascimento'
      FieldName = 'CLIEDNASC'
    end
    object TblMalaDiretaCliCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblMalaDiretaCliCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object TblMalaDiretaCliCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object TblMalaDiretaCliCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object TblMalaDiretaCliCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
    end
  end
  object DSTblMalaDiretaCli: TDataSource
    DataSet = TblMalaDiretaCli
    Left = 470
    Top = 3
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Cliente'
      'Where'
      '(%MFiltroMes)'
      'and '
      '(%MFiltroDia)'
      'and '
      '(%MFiltroDataCompra)'
      'and'
      '(%MCliente)'
      'and'
      '(%MMotBloq)'
      'and'
      '(%MAtivo)'
      'and'
      '(%MMotBloqDif)'
      'and'
      '(%MTipoCliente)'
      'and'
      '(%MEmpresa)'
      'and'
      '(%MSPC)'
      'and'
      '(%MBairro)'
      '%MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltroMes'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltroDia'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltroDataCompra'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMotBloq'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MAtivo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMotBloqDif'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSPC'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MBairro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 162
    Top = 2
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object SQLClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA5FISJURID: TStringField
      FieldName = 'CLIEA5FISJURID'
      Origin = 'DB.CLIENTE.CLIEA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLClienteCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object SQLClienteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLClienteCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CONTATO: TStringField
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FAX: TStringField
      FieldName = 'CLIEA15FAX'
      Origin = 'DB.CLIENTE.CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA30OUTROSDOC: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      Origin = 'DB.CLIENTE.CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object SQLClienteCLIECSEXO: TStringField
      FieldName = 'CLIECSEXO'
      Origin = 'DB.CLIENTE.CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA60PROFISSAO: TStringField
      FieldName = 'CLIEA60PROFISSAO'
      Origin = 'DB.CLIENTE.CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60URL: TStringField
      FieldName = 'CLIEA60URL'
      Origin = 'DB.CLIENTE.CLIEA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEN2RENDA: TBCDField
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
      Precision = 15
      Size = 3
    end
    object SQLClienteCLIEN2LIMITECRED: TBCDField
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
      Precision = 15
      Size = 3
    end
    object SQLClienteCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object SQLClienteCLIECESTADOCIVIL: TStringField
      FieldName = 'CLIECESTADOCIVIL'
      Origin = 'DB.CLIENTE.CLIECESTADOCIVIL'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA60CONJUGE: TStringField
      FieldName = 'CLIEA60CONJUGE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CONJUGEMAE: TStringField
      FieldName = 'CLIEA60CONJUGEMAE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEN2CONJUGERENDA: TBCDField
      FieldName = 'CLIEN2CONJUGERENDA'
      Origin = 'DB.CLIENTE.CLIEN2CONJUGERENDA'
      Precision = 15
      Size = 3
    end
    object SQLClienteCLIEDNASCCONJUGE: TDateTimeField
      FieldName = 'CLIEDNASCCONJUGE'
      Origin = 'DB.CLIENTE.CLIEDNASCCONJUGE'
    end
    object SQLClienteCLIEA60CONJUGEEMPR: TStringField
      FieldName = 'CLIEA60CONJUGEEMPR'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEEMPR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15CONJFONEMPR: TStringField
      FieldName = 'CLIEA15CONJFONEMPR'
      Origin = 'DB.CLIENTE.CLIEA15CONJFONEMPR'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA60EMPRESA: TStringField
      FieldName = 'CLIEA60EMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60ENDEMPRESA: TStringField
      FieldName = 'CLIEA60ENDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60ENDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIEMPRESA: TStringField
      FieldName = 'CLIEA60BAIEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60BAIEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDEMPRESA: TStringField
      FieldName = 'CLIEA60CIDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60CIDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFEMPRESA: TStringField
      FieldName = 'CLIEA2UFEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA2UFEMPRESA'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPEMPRESA: TStringField
      FieldName = 'CLIEA8CEPEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA8CEPEMPRESA'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIEDAMISEMPRESA: TDateTimeField
      FieldName = 'CLIEDAMISEMPRESA'
      Origin = 'DB.CLIENTE.CLIEDAMISEMPRESA'
    end
    object SQLClienteCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object SQLClienteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CLIENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA5AGENCIA: TStringField
      FieldName = 'CLIEA5AGENCIA'
      Origin = 'DB.CLIENTE.CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLClienteCLIEA10CONTA: TStringField
      FieldName = 'CLIEA10CONTA'
      Origin = 'DB.CLIENTE.CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60TITULAR: TStringField
      FieldName = 'CLIEA60TITULAR'
      Origin = 'DB.CLIENTE.CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDABERTCONTA: TDateTimeField
      FieldName = 'CLIEDABERTCONTA'
      Origin = 'DB.CLIENTE.CLIEDABERTCONTA'
    end
    object SQLClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CLIENTE.TPCLICOD'
    end
    object SQLClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
    object SQLClientePROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.CLIENTE.PROFICOD'
    end
    object SQLClienteVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CLIENTE.VENDICOD'
    end
    object SQLClienteCLIEDCAD: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object SQLClienteCLIEDPRICOMPRA: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object SQLClienteCLIEDULTCOMPRA: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
    object SQLClienteCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      Origin = 'DB.CLIENTE.CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object SQLClienteCLIECRECAVISATRASO: TStringField
      FieldName = 'CLIECRECAVISATRASO'
      Origin = 'DB.CLIENTE.CLIECRECAVISATRASO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIEA30NATURALIDADE: TStringField
      FieldName = 'CLIEA30NATURALIDADE'
      Origin = 'DB.CLIENTE.CLIEA30NATURALIDADE'
      FixedChar = True
      Size = 30
    end
    object SQLClientePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLClienteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTE.REGISTRO'
    end
    object SQLClienteCLIEA60EMAILCONJUG: TStringField
      FieldName = 'CLIEA60EMAILCONJUG'
      Origin = 'DB.CLIENTE.CLIEA60EMAILCONJUG'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDCASAMENTO: TDateTimeField
      FieldName = 'CLIEDCASAMENTO'
      Origin = 'DB.CLIENTE.CLIEDCASAMENTO'
    end
    object SQLClienteTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.CLIENTE.TPRCICOD'
    end
    object SQLClienteCLIEA60ENDCOB: TStringField
      FieldName = 'CLIEA60ENDCOB'
      Origin = 'DB.CLIENTE.CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAICOB: TStringField
      FieldName = 'CLIEA60BAICOB'
      Origin = 'DB.CLIENTE.CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDCOB: TStringField
      FieldName = 'CLIEA60CIDCOB'
      Origin = 'DB.CLIENTE.CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFCOB: TStringField
      FieldName = 'CLIEA2UFCOB'
      Origin = 'DB.CLIENTE.CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPCOB: TStringField
      FieldName = 'CLIEA8CEPCOB'
      Origin = 'DB.CLIENTE.CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object SQLClientePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CLIENTE.PLRCICOD'
    end
    object SQLClienteCLIEIDIAVCTOCARTAO: TIntegerField
      FieldName = 'CLIEIDIAVCTOCARTAO'
      Origin = 'DB.CLIENTE.CLIEIDIAVCTOCARTAO'
    end
    object SQLClienteROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.CLIENTE.ROTAICOD'
    end
    object SQLClienteCLIECATIVO: TStringField
      FieldName = 'CLIECATIVO'
      Origin = 'DB.CLIENTE.CLIECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIECVNDCHEQ: TStringField
      FieldName = 'CLIECVNDCHEQ'
      Origin = 'DB.CLIENTE.CLIECVNDCHEQ'
      FixedChar = True
      Size = 1
    end
    object SQLClienteCLIECVNDCRED: TStringField
      FieldName = 'CLIECVNDCRED'
      Origin = 'DB.CLIENTE.CLIECVNDCRED'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLTipoCliente: TDataSource
    DataSet = SQLTipoCliente
    Left = 438
    Top = 3
  end
  object SQLTipoCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'TPCLICOD,'
      'TPCLA30DESCR'
      'FROM'
      'TIPOCLIENTE'
      'ORDER BY'
      'TPCLA30DESCR')
    Macros = <>
    Left = 410
    Top = 3
    object SQLTipoClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.TIPOCLIENTE.TPCLICOD'
    end
    object SQLTipoClienteTPCLA30DESCR: TStringField
      FieldName = 'TPCLA30DESCR'
      Origin = 'DB.TIPOCLIENTE.TPCLA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLClienteAUX: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Cliente'
      'Order by '
      'CLIEA60RAZAOSOC')
    Macros = <>
    Left = 251
    Top = 3
    object StringField1: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object IntegerField1: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object StringField2: TStringField
      FieldName = 'CLIEA5FISJURID'
      Origin = 'DB.CLIENTE.CLIEA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object StringField3: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object StringField4: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object StringField5: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object StringField6: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object StringField8: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object StringField9: TStringField
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object StringField10: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object StringField11: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object StringField12: TStringField
      FieldName = 'CLIEA15FAX'
      Origin = 'DB.CLIENTE.CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object StringField13: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      Origin = 'DB.CLIENTE.CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object StringField14: TStringField
      FieldName = 'CLIECSEXO'
      Origin = 'DB.CLIENTE.CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object StringField15: TStringField
      FieldName = 'CLIEA60PROFISSAO'
      Origin = 'DB.CLIENTE.CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object StringField16: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object StringField17: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object StringField18: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object StringField19: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object StringField20: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object StringField21: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object StringField22: TStringField
      FieldName = 'CLIEA60URL'
      Origin = 'DB.CLIENTE.CLIEA60URL'
      FixedChar = True
      Size = 60
    end
    object BCDField1: TBCDField
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
      Precision = 15
      Size = 3
    end
    object BCDField2: TBCDField
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
      Precision = 15
      Size = 3
    end
    object StringField23: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object StringField24: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object StringField25: TStringField
      FieldName = 'CLIECESTADOCIVIL'
      Origin = 'DB.CLIENTE.CLIECESTADOCIVIL'
      FixedChar = True
      Size = 1
    end
    object StringField26: TStringField
      FieldName = 'CLIEA60CONJUGE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGE'
      FixedChar = True
      Size = 60
    end
    object StringField27: TStringField
      FieldName = 'CLIEA60CONJUGEMAE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEMAE'
      FixedChar = True
      Size = 60
    end
    object BCDField3: TBCDField
      FieldName = 'CLIEN2CONJUGERENDA'
      Origin = 'DB.CLIENTE.CLIEN2CONJUGERENDA'
      Precision = 15
      Size = 3
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'CLIEDNASCCONJUGE'
      Origin = 'DB.CLIENTE.CLIEDNASCCONJUGE'
    end
    object StringField28: TStringField
      FieldName = 'CLIEA60CONJUGEEMPR'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEEMPR'
      FixedChar = True
      Size = 60
    end
    object StringField29: TStringField
      FieldName = 'CLIEA15CONJFONEMPR'
      Origin = 'DB.CLIENTE.CLIEA15CONJFONEMPR'
      FixedChar = True
      Size = 15
    end
    object StringField30: TStringField
      FieldName = 'CLIEA60EMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object StringField31: TStringField
      FieldName = 'CLIEA60ENDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60ENDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object StringField32: TStringField
      FieldName = 'CLIEA60BAIEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60BAIEMPRESA'
      FixedChar = True
      Size = 60
    end
    object StringField33: TStringField
      FieldName = 'CLIEA60CIDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60CIDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object StringField34: TStringField
      FieldName = 'CLIEA2UFEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA2UFEMPRESA'
      FixedChar = True
      Size = 2
    end
    object StringField35: TStringField
      FieldName = 'CLIEA8CEPEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA8CEPEMPRESA'
      FixedChar = True
      Size = 8
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'CLIEDAMISEMPRESA'
      Origin = 'DB.CLIENTE.CLIEDAMISEMPRESA'
    end
    object StringField36: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object StringField37: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CLIENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object StringField38: TStringField
      FieldName = 'CLIEA5AGENCIA'
      Origin = 'DB.CLIENTE.CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object StringField39: TStringField
      FieldName = 'CLIEA10CONTA'
      Origin = 'DB.CLIENTE.CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object StringField40: TStringField
      FieldName = 'CLIEA60TITULAR'
      Origin = 'DB.CLIENTE.CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'CLIEDABERTCONTA'
      Origin = 'DB.CLIENTE.CLIEDABERTCONTA'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CLIENTE.TPCLICOD'
    end
    object IntegerField4: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
    object IntegerField5: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.CLIENTE.PROFICOD'
    end
    object IntegerField6: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CLIENTE.VENDICOD'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
    object StringField42: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      Origin = 'DB.CLIENTE.CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object StringField43: TStringField
      FieldName = 'CLIECRECAVISATRASO'
      Origin = 'DB.CLIENTE.CLIECRECAVISATRASO'
      FixedChar = True
      Size = 1
    end
    object StringField44: TStringField
      FieldName = 'CLIEA30NATURALIDADE'
      Origin = 'DB.CLIENTE.CLIEA30NATURALIDADE'
      FixedChar = True
      Size = 30
    end
    object StringField45: TStringField
      FieldName = 'CLIECRECEBECARTAO'
      Origin = 'DB.CLIENTE.CLIECRECEBECARTAO'
      FixedChar = True
      Size = 1
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'CLIEDENVCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDENVCARTIMP'
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'CLIEDRETCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDRETCARTIMP'
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'CLIEDENVCARTCLI'
      Origin = 'DB.CLIENTE.CLIEDENVCARTCLI'
    end
    object StringField46: TStringField
      FieldName = 'CLIEA10CODCONV'
      Origin = 'DB.CLIENTE.CLIEA10CODCONV'
      FixedChar = True
      Size = 10
    end
    object StringField47: TStringField
      FieldName = 'CLIEA10CODANT'
      Origin = 'DB.CLIENTE.CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
    object IntegerField7: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.CLIENTE.TPRCICOD'
    end
    object StringField52: TStringField
      FieldName = 'CLIEA60ENDCOB'
      Origin = 'DB.CLIENTE.CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object StringField53: TStringField
      FieldName = 'CLIEA60BAICOB'
      Origin = 'DB.CLIENTE.CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object StringField54: TStringField
      FieldName = 'CLIEA60CIDCOB'
      Origin = 'DB.CLIENTE.CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object StringField55: TStringField
      FieldName = 'CLIEA2UFCOB'
      Origin = 'DB.CLIENTE.CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object StringField56: TStringField
      FieldName = 'CLIEA8CEPCOB'
      Origin = 'DB.CLIENTE.CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object IntegerField8: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CLIENTE.PLRCICOD'
    end
  end
  object DSSQLClienteAUX: TDataSource
    DataSet = SQLClienteAUX
    Left = 279
    Top = 3
  end
  object DSSQLMotBloq: TDataSource
    DataSet = SQLMotBloq
    Left = 378
    Top = 3
  end
  object SQLMotBloq: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'MTBLICOD,'
      'MTBLA60DESCR'
      'FROM'
      'MOTIVOBLOQUEIO'
      'ORDER BY'
      'MTBLA60DESCR')
    Macros = <>
    Left = 350
    Top = 3
    object SQLMotBloqMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.MOTIVOBLOQUEIO.MTBLICOD'
    end
    object SQLMotBloqMTBLA60DESCR: TStringField
      FieldName = 'MTBLA60DESCR'
      Origin = 'DB.MOTIVOBLOQUEIO.MTBLA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLClienteDependente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from  Cliente, ClienteDependente  where'
      '  (%MFiltroMes)'
      'and'
      '  (%MFiltroDia)'
      'and'
      '  Cliente.CLIEA13ID = ClienteDependente.CLIEA13ID'
      'and'
      '  (%MFiltroDataUltCompra)'
      'and'
      '  (%MCliente)'
      'and'
      '  (%MMotBloq)'
      'and'
      '  (%MMotBloqDif)'
      'and'
      '  (%MTipoCliente)'
      'Order by'
      '  Cliente.CLIEA60RAZAOSOC')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltroMes'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltroDia'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltroDataUltCompra'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMotBloq'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMotBloqDif'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoCliente'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 121
    Top = 2
    object SQLClienteDependenteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteDependenteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object SQLClienteDependenteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteDependenteCLIEA5FISJURID: TStringField
      FieldName = 'CLIEA5FISJURID'
      Origin = 'DB.CLIENTE.CLIEA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLClienteDependenteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLClienteDependenteCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object SQLClienteDependenteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLClienteDependenteCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLClienteDependenteCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Nome / Raz'#227'o Social'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60CONTATO: TStringField
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone1'
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLClienteDependenteCLIEA15FONE2: TStringField
      DisplayLabel = 'Fone2'
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLClienteDependenteCLIEA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'CLIEA15FAX'
      Origin = 'DB.CLIENTE.CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLClienteDependenteCLIEA30OUTROSDOC: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      Origin = 'DB.CLIENTE.CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object SQLClienteDependenteCLIECSEXO: TStringField
      FieldName = 'CLIECSEXO'
      Origin = 'DB.CLIENTE.CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteDependenteCLIEA60PROFISSAO: TStringField
      FieldName = 'CLIEA60PROFISSAO'
      Origin = 'DB.CLIENTE.CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60ENDRES: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60BAIRES: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteDependenteCLIEA8CEPRES: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteDependenteCLIEA60EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60URL: TStringField
      FieldName = 'CLIEA60URL'
      Origin = 'DB.CLIENTE.CLIEA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEN2RENDA: TBCDField
      FieldName = 'CLIEN2RENDA'
      Origin = 'DB.CLIENTE.CLIEN2RENDA'
      Precision = 15
      Size = 3
    end
    object SQLClienteDependenteCLIEN2LIMITECRED: TBCDField
      FieldName = 'CLIEN2LIMITECRED'
      Origin = 'DB.CLIENTE.CLIEN2LIMITECRED'
      Precision = 15
      Size = 3
    end
    object SQLClienteDependenteCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      Origin = 'DB.CLIENTE.CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      Origin = 'DB.CLIENTE.CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DB.CLIENTE.CLIEDNASC'
    end
    object SQLClienteDependenteCLIECESTADOCIVIL: TStringField
      FieldName = 'CLIECESTADOCIVIL'
      Origin = 'DB.CLIENTE.CLIECESTADOCIVIL'
      FixedChar = True
      Size = 1
    end
    object SQLClienteDependenteCLIEA60CONJUGE: TStringField
      FieldName = 'CLIEA60CONJUGE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60CONJUGEMAE: TStringField
      FieldName = 'CLIEA60CONJUGEMAE'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEN2CONJUGERENDA: TBCDField
      FieldName = 'CLIEN2CONJUGERENDA'
      Origin = 'DB.CLIENTE.CLIEN2CONJUGERENDA'
      Precision = 15
      Size = 3
    end
    object SQLClienteDependenteCLIEDNASCCONJUGE: TDateTimeField
      FieldName = 'CLIEDNASCCONJUGE'
      Origin = 'DB.CLIENTE.CLIEDNASCCONJUGE'
    end
    object SQLClienteDependenteCLIEA60CONJUGEEMPR: TStringField
      FieldName = 'CLIEA60CONJUGEEMPR'
      Origin = 'DB.CLIENTE.CLIEA60CONJUGEEMPR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA15CONJFONEMPR: TStringField
      FieldName = 'CLIEA15CONJFONEMPR'
      Origin = 'DB.CLIENTE.CLIEA15CONJFONEMPR'
      FixedChar = True
      Size = 15
    end
    object SQLClienteDependenteCLIEA60EMPRESA: TStringField
      FieldName = 'CLIEA60EMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60ENDEMPRESA: TStringField
      FieldName = 'CLIEA60ENDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60ENDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60BAIEMPRESA: TStringField
      FieldName = 'CLIEA60BAIEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60BAIEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60CIDEMPRESA: TStringField
      FieldName = 'CLIEA60CIDEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA60CIDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA2UFEMPRESA: TStringField
      FieldName = 'CLIEA2UFEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA2UFEMPRESA'
      FixedChar = True
      Size = 2
    end
    object SQLClienteDependenteCLIEA8CEPEMPRESA: TStringField
      FieldName = 'CLIEA8CEPEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA8CEPEMPRESA'
      FixedChar = True
      Size = 8
    end
    object SQLClienteDependenteCLIEDAMISEMPRESA: TDateTimeField
      FieldName = 'CLIEDAMISEMPRESA'
      Origin = 'DB.CLIENTE.CLIEDAMISEMPRESA'
    end
    object SQLClienteDependenteCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      Origin = 'DB.CLIENTE.CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object SQLClienteDependenteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CLIENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLClienteDependenteCLIEA5AGENCIA: TStringField
      FieldName = 'CLIEA5AGENCIA'
      Origin = 'DB.CLIENTE.CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLClienteDependenteCLIEA10CONTA: TStringField
      FieldName = 'CLIEA10CONTA'
      Origin = 'DB.CLIENTE.CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLClienteDependenteCLIEA60TITULAR: TStringField
      FieldName = 'CLIEA60TITULAR'
      Origin = 'DB.CLIENTE.CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEDABERTCONTA: TDateTimeField
      FieldName = 'CLIEDABERTCONTA'
      Origin = 'DB.CLIENTE.CLIEDABERTCONTA'
    end
    object SQLClienteDependenteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CLIENTE.TPCLICOD'
    end
    object SQLClienteDependenteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
    object SQLClienteDependentePROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.CLIENTE.PROFICOD'
    end
    object SQLClienteDependenteVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CLIENTE.VENDICOD'
    end
    object SQLClienteDependenteCLIEDCAD: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object SQLClienteDependenteCLIEDPRICOMPRA: TDateTimeField
      FieldName = 'CLIEDPRICOMPRA'
      Origin = 'DB.CLIENTE.CLIEDPRICOMPRA'
    end
    object SQLClienteDependenteCLIEDULTCOMPRA: TDateTimeField
      FieldName = 'CLIEDULTCOMPRA'
      Origin = 'DB.CLIENTE.CLIEDULTCOMPRA'
    end
    object SQLClienteDependenteCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      Origin = 'DB.CLIENTE.CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object SQLClienteDependenteCLIECRECAVISATRASO: TStringField
      FieldName = 'CLIECRECAVISATRASO'
      Origin = 'DB.CLIENTE.CLIECRECAVISATRASO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteDependenteCLIEA30NATURALIDADE: TStringField
      FieldName = 'CLIEA30NATURALIDADE'
      Origin = 'DB.CLIENTE.CLIEA30NATURALIDADE'
      FixedChar = True
      Size = 30
    end
    object SQLClienteDependenteCLIECRECEBECARTAO: TStringField
      FieldName = 'CLIECRECEBECARTAO'
      Origin = 'DB.CLIENTE.CLIECRECEBECARTAO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteDependenteCLIEDENVCARTIMP: TDateTimeField
      FieldName = 'CLIEDENVCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDENVCARTIMP'
    end
    object SQLClienteDependenteCLIEDRETCARTIMP: TDateTimeField
      FieldName = 'CLIEDRETCARTIMP'
      Origin = 'DB.CLIENTE.CLIEDRETCARTIMP'
    end
    object SQLClienteDependenteCLIEDENVCARTCLI: TDateTimeField
      FieldName = 'CLIEDENVCARTCLI'
      Origin = 'DB.CLIENTE.CLIEDENVCARTCLI'
    end
    object SQLClienteDependenteCLIEA10CODCONV: TStringField
      FieldName = 'CLIEA10CODCONV'
      Origin = 'DB.CLIENTE.CLIEA10CODCONV'
      FixedChar = True
      Size = 10
    end
    object SQLClienteDependenteCLIEA10CODANT: TStringField
      FieldName = 'CLIEA10CODANT'
      Origin = 'DB.CLIENTE.CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
    object SQLClienteDependenteCLIEA20NROCARTCRED: TStringField
      FieldName = 'CLIEA20NROCARTCRED'
      Origin = 'DB.CLIENTE.CLIEA20NROCARTCRED'
      FixedChar = True
    end
    object SQLClienteDependentePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLClienteDependenteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTE.REGISTRO'
    end
    object SQLClienteDependenteCLIEA35NROCARTCRED: TStringField
      FieldName = 'CLIEA35NROCARTCRED'
      Origin = 'DB.CLIENTE.CLIEA35NROCARTCRED'
      FixedChar = True
      Size = 35
    end
    object SQLClienteDependenteCLIEA60EMAILCONJUG: TStringField
      FieldName = 'CLIEA60EMAILCONJUG'
      Origin = 'DB.CLIENTE.CLIEA60EMAILCONJUG'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEDCASAMENTO: TDateTimeField
      FieldName = 'CLIEDCASAMENTO'
      Origin = 'DB.CLIENTE.CLIEDCASAMENTO'
    end
    object SQLClienteDependenteTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.CLIENTE.TPRCICOD'
    end
    object SQLClienteDependenteCLIEA60ENDCOB: TStringField
      FieldName = 'CLIEA60ENDCOB'
      Origin = 'DB.CLIENTE.CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60BAICOB: TStringField
      FieldName = 'CLIEA60BAICOB'
      Origin = 'DB.CLIENTE.CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA60CIDCOB: TStringField
      FieldName = 'CLIEA60CIDCOB'
      Origin = 'DB.CLIENTE.CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLIEA2UFCOB: TStringField
      FieldName = 'CLIEA2UFCOB'
      Origin = 'DB.CLIENTE.CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object SQLClienteDependenteCLIEA8CEPCOB: TStringField
      FieldName = 'CLIEA8CEPCOB'
      Origin = 'DB.CLIENTE.CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object SQLClienteDependentePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CLIENTE.PLRCICOD'
    end
    object SQLClienteDependenteCLIEIDIAVCTOCARTAO: TIntegerField
      FieldName = 'CLIEIDIAVCTOCARTAO'
      Origin = 'DB.CLIENTE.CLIEIDIAVCTOCARTAO'
    end
    object SQLClienteDependenteCLIEN2VLRALUGUEL: TBCDField
      FieldName = 'CLIEN2VLRALUGUEL'
      Origin = 'DB.CLIENTE.CLIEN2VLRALUGUEL'
      Precision = 15
      Size = 2
    end
    object SQLClienteDependenteCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.CLIENTE.CLIEA13ID'
    end
    object SQLClienteDependenteCLDPA60NOME: TStringField
      FieldName = 'CLDPA60NOME'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLDPA15PARENTESCO: TStringField
      FieldName = 'CLDPA15PARENTESCO'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLClienteDependenteCLDPCAUTORIZADO: TStringField
      FieldName = 'CLDPCAUTORIZADO'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLClienteDependenteCLDPDNASC: TDateTimeField
      FieldName = 'CLDPDNASC'
      Origin = 'DB.CLIENTE.CLIEA13ID'
    end
    object SQLClienteDependenteCLDPA10RG: TStringField
      FieldName = 'CLDPA10RG'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 10
    end
    object SQLClienteDependenteCLDPA11CPF: TStringField
      FieldName = 'CLDPA11CPF'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 11
    end
    object SQLClienteDependenteCLDPA15FONE: TStringField
      FieldName = 'CLDPA15FONE'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLClienteDependenteCLDPA60EMAIL: TStringField
      FieldName = 'CLDPA60EMAIL'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLClienteDependente: TDataSource
    DataSet = SQLClienteDependente
    Left = 93
    Top = 2
  end
  object SQLMotBloqDif: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'MTBLICOD,'
      'MTBLA60DESCR'
      'FROM'
      'MOTIVOBLOQUEIO'
      'ORDER BY'
      'MTBLA60DESCR')
    Macros = <>
    Left = 794
    Top = 65
    object IntegerField11: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.MOTIVOBLOQUEIO.MTBLICOD'
    end
    object StringField70: TStringField
      FieldName = 'MTBLA60DESCR'
      Origin = 'DB.MOTIVOBLOQUEIO.MTBLA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLMotBloqDif: TDataSource
    DataSet = SQLMotBloqDif
    Left = 822
    Top = 65
  end
  object ppBDEPipeline: TppBDEPipeline
    DataSource = DSTblMalaDiretaCli
    CloseDataSource = True
    RefreshAfterPost = True
    UserName = 'BDEPipeline'
    Left = 533
    Top = 3
    object ppBDEPipelineppField1: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField2: TppField
      FieldAlias = 'CLIEA60RAZAOSOC'
      FieldName = 'CLIEA60RAZAOSOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField3: TppField
      FieldAlias = 'CLIEA60ENDRES'
      FieldName = 'CLIEA60ENDRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField4: TppField
      FieldAlias = 'CLIEA60BAIRES'
      FieldName = 'CLIEA60BAIRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField5: TppField
      FieldAlias = 'CLIEA60CIDRES'
      FieldName = 'CLIEA60CIDRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField6: TppField
      FieldAlias = 'CLIEA2UFRES'
      FieldName = 'CLIEA2UFRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField7: TppField
      FieldAlias = 'CLIEA8CEPRES'
      FieldName = 'CLIEA8CEPRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField8: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField9: TppField
      FieldAlias = 'CLIEA15FONE'
      FieldName = 'CLIEA15FONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField10: TppField
      FieldAlias = 'CLIEA30OUTROSDOC'
      FieldName = 'CLIEA30OUTROSDOC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField11: TppField
      FieldAlias = 'CLIEDNASC'
      FieldName = 'CLIEDNASC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField12: TppField
      FieldAlias = 'CLIEA11CPF'
      FieldName = 'CLIEA11CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField13: TppField
      FieldAlias = 'CLIEA10RG'
      FieldName = 'CLIEA10RG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField14: TppField
      FieldAlias = 'CLIEA60NOMEPAI'
      FieldName = 'CLIEA60NOMEPAI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField15: TppField
      FieldAlias = 'CLIEA60NOMEMAE'
      FieldName = 'CLIEA60NOMEMAE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipelineppField16: TppField
      FieldAlias = 'CLIEA15FONE2'
      FieldName = 'CLIEA15FONE2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
  end
  object ppReportEtiq2Col: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '2000000'
      '108000000')
    DataPipeline = ppBDEPipeline
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Etiquetas de C'#243'digo de Barras'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 5000
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 139
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 562
    Top = 3
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline'
    object ppColumnHeaderBand2: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 6746888
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'ppDBText9'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1052779
        mmLeft = 1680108
        mmTop = 1609993
        mmWidth = 22261557
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'ppDBText10'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 1680108
        mmTop = 490009
        mmWidth = 22261557
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'ppDBText11'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 1680108
        mmTop = 2660126
        mmWidth = 22261557
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'ppDBText12'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 1680108
        mmTop = 3780374
        mmWidth = 22261557
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'ppDBText13'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 1680108
        mmTop = 4900358
        mmWidth = 3290100
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'ppDBText14'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1052779
        mmLeft = 10360575
        mmTop = 4900358
        mmWidth = 13580825
        BandType = 4
      end
    end
    object ppColumnFooterBand2: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppReportEtiq3Col: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '11000000'
      '80000000'
      '151000000')
    DataPipeline = ppBDEPipeline
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Etiquetas de C'#243'digo de Barras'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 7000
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 139
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 591
    Top = 3
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6746888
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'ppDBText1'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 420159
        mmTop = 1680108
        mmWidth = 16941040
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'ppDBText2'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 420159
        mmTop = 629974
        mmWidth = 16941040
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'ppDBText3'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 420159
        mmTop = 2730241
        mmWidth = 16941040
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'ppDBText4'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 420159
        mmTop = 3850224
        mmWidth = 16941040
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'ppDBText5'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 420159
        mmTop = 4900358
        mmWidth = 1260213
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'ppDBText6'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 2800091
        mmTop = 4900358
        mmWidth = 5530332
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'ppDBText33'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 11410708
        mmTop = 4900358
        mmWidth = 5530332
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppListagem: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Listagem'
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
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 620
    Top = 3
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 3570295
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'ppLabel1'
        Caption = 'www.conceitossistemas.com'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 862543
        mmLeft = 59414422
        mmTop = 70115
        mmWidth = 9610215
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'ppLabel2'
        Caption = 'Listagem de Clientes para Mala Direta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 910168
        mmLeft = 210080
        mmTop = 70115
        mmWidth = 12460841
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'ppLine2'
        Pen.Style = psDot
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 350044
        mmLeft = 0
        mmTop = 2170117
        mmWidth = 75221191
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'ppSystemVariable3'
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 910168
        mmLeft = 62654252
        mmTop = 1119983
        mmWidth = 6370386
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'ppLine4'
        Pen.Style = psDot
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 279930
        mmLeft = 0
        mmTop = 3220250
        mmWidth = 75221191
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'ppLabel4'
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 910168
        mmLeft = 210080
        mmTop = 2380196
        mmWidth = 2310082
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'ppLabel5'
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 910168
        mmLeft = 5950491
        mmTop = 2380196
        mmWidth = 2100267
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'ppLabel11'
        Caption = 'Fone 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 862543
        mmLeft = 48093144
        mmTop = 2450047
        mmWidth = 2329661
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'ppLabel6'
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 910168
        mmLeft = 23171461
        mmTop = 2450047
        mmWidth = 4900358
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'ppLabel7'
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 910168
        mmLeft = 40112765
        mmTop = 2450047
        mmWidth = 2450047
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'ppLabel3'
        Caption = 'Dt.Nascimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 840054
        mmLeft = 61534004
        mmTop = 2450047
        mmWidth = 4760393
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'ppLabel10'
        Caption = 'Observa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 862543
        mmLeft = 67694574
        mmTop = 2450047
        mmWidth = 4032258
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'ppLabel12'
        Caption = 'Fone 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 862543
        mmLeft = 54813574
        mmTop = 2520161
        mmWidth = 2329661
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 910168
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        UserName = 'ppDBText15'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 896146
        mmLeft = 210080
        mmTop = 0
        mmWidth = 5600447
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'ppDBText16'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 910168
        mmLeft = 5950491
        mmTop = 0
        mmWidth = 16941040
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'ppDBText17'
        AutoSize = True
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3260
        mmLeft = 48163258
        mmTop = 0
        mmWidth = 15367
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'ppDBText18'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 910168
        mmLeft = 23101611
        mmTop = 0
        mmWidth = 16801075
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'ppDBText19'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 910168
        mmLeft = 40042651
        mmTop = 0
        mmWidth = 7980643
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'ppDBText7'
        AutoSize = True
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3260
        mmLeft = 61604118
        mmTop = 0
        mmWidth = 13801
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'ppShape1'
        mmHeight = 840054
        mmLeft = 66504476
        mmTop = 0
        mmWidth = 840054
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'ppLine1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 629974
        mmLeft = 67694574
        mmTop = 210080
        mmWidth = 7350404
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'ppDBText32'
        AutoSize = True
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3260
        mmLeft = 54883688
        mmTop = 0
        mmWidth = 15367
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 2240232
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'ppLine5'
        Pen.Style = psDot
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 210080
        mmLeft = 0
        mmTop = 70115
        mmWidth = 75221191
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'ppSystemVariable4'
        VarType = vtPageNo
        DisplayFormat = 'P'#225'gina #'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 910168
        mmLeft = 61394039
        mmTop = 490009
        mmWidth = 2940320
        BandType = 8
      end
    end
  end
  object ppEtiqCdBarrasCliente: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '11000000'
      '80000000'
      '151000000')
    DataPipeline = ppBDEPipeline
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Etiquetas de C'#243'digo de Barras'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 7000
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 139
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 649
    Top = 3
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline'
    object ppColumnHeaderBand3: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 6746888
      mmPrintPosition = 0
      object ppDBText20: TppDBText
        UserName = 'ppDBText20'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 420159
        mmTop = 1609993
        mmWidth = 16941040
        BandType = 4
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'ppDBBarCode1'
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clWindowText
        CalcCheckDigit = False
        DataPipeline = ppBDEPipeline
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3570295
        mmLeft = 420159
        mmTop = 2870206
        mmWidth = 9030512
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppColumnFooterBand3: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppEnvelopeDestinatario: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Sele'#231#227'o autom'#225'tica'
    PrinterSetup.DocumentName = 'Etiquetas de C'#243'digo de Barras'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 7000
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 139
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 708
    Top = 3
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline'
    object ppDetailBand5: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 20091440
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'ppLabel8'
        Caption = 'Destinatario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 11900717
        mmTop = 7980643
        mmWidth = 6720430
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'ppDBText8'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 11900717
        mmTop = 10500804
        mmWidth = 32622132
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'ppDBText21'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 11900717
        mmTop = 11690902
        mmWidth = 32622132
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'ppDBText22'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 11900717
        mmTop = 12880736
        mmWidth = 32622132
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'ppDBText23'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 11900717
        mmTop = 14070834
        mmWidth = 27021685
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'ppDBText24'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1119983
        mmLeft = 40462545
        mmTop = 14070834
        mmWidth = 4130154
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'ppDBText25'
        AutoSize = True
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 4022
        mmLeft = 11970832
        mmTop = 15260932
        mmWidth = 19177
        BandType = 4
      end
    end
  end
  object ppEnvelopeRemetente: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Sele'#231#227'o autom'#225'tica'
    PrinterSetup.DocumentName = 'Etiquetas de C'#243'digo de Barras'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 7000
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 14000
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 139
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 680
    Top = 3
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline'
    object ppDetailBand6: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 20021325
      mmPrintPosition = 0
      object ppLabel9: TppLabel
        UserName = 'ppLabel9'
        Caption = 'Remetente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 17081005
        mmTop = 8680467
        mmWidth = 5040323
        BandType = 4
      end
      object ppNomeFantasia: TppLabel
        UserName = 'ppNomeFantasia'
        Caption = 'NomeFantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 17081005
        mmTop = 10430690
        mmWidth = 6720430
        BandType = 4
      end
      object ppEndereco: TppLabel
        UserName = 'ppEndereco'
        Caption = 'Endereco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 17081005
        mmTop = 11620788
        mmWidth = 4480199
        BandType = 4
      end
      object ppCidade: TppLabel
        UserName = 'ppCidade'
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 17081005
        mmTop = 14000984
        mmWidth = 3360215
        BandType = 4
      end
      object ppBairro: TppLabel
        UserName = 'ppBairro'
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 1119983
        mmLeft = 17081005
        mmTop = 12810886
        mmWidth = 3360215
        BandType = 4
      end
      object ppCep: TppLabel
        UserName = 'ppCep'
        Caption = 'ppCep'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 17081005
        mmTop = 15191082
        mmWidth = 10329
        BandType = 4
      end
    end
  end
  object ppCarteiraCliente: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Etiquetas de C'#243'digo de Barras'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 139
    Template.FileName = 'C:\TiagoAllfaro\Moreleh\EtiquetasMalaDireta\EtiquetaMoreleh.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 736
    Top = 3
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline'
    object ppDetailBand7: TppDetailBand
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 12040682
      mmPrintPosition = 0
      object ppImage1: TppImage
        UserName = 'ppImage1'
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0A544A504547496D616765969D0100FFD8FFE000104A46494600010101012C01
          2C0000FFDB0043000302020302020303030304030304050805050404050A0707
          06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
          1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
          1414141414141414141414141414141414141414141414141414141414141414
          14141414141414141414141414FFC0001108022B079103012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F98F
          E22FFC940F137FD84EE7FF0046B573D5D0FC45FF009281E26FFB09DCFF00E8D6
          AE7ABF7CA7F047D0FC627F1BF50A28A2B4330A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2803A1F88BCFC40F137FD84EE7FF46B
          573D5BFF00107FE47CF11FFD84AE3FF46B5605674FE05E85CFE2614514568405
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          145140051451400514514005145140051451400514514005145140051451401B
          FF00107FE47CF11FFD84AE3FF46B56057D71E2DFF827C7C50D5BC55ACDF413E8
          421B9BC9A64DF78E0ED672467F77D706B27FE1DD1F153FE7BE81FF0081AFFF00
          C6EBCA8663845057AABEF3D19E0B12E4FDC67CBB457D463FE09D1F154FFCB7D0
          3FF035FF00F8DD1FF0EE7F8ABFF3DF40FF00C0D7FF00E3757FDA583FF9FA88FA
          8E27FE7DB3E5CA2BEA3FF8773FC55FF9EFA07FE06BFF00F1BA3FE1DCFF00157F
          E7BE81FF0081AFFF00C6E8FED2C1FF00CFD41F51C4FF00CFB67CB9457D47FF00
          0EE7F8ABFF003DF40FFC0D7FFE3747FC3B9FE2AFFCF7D03FF035FF00F8DD1FDA
          583FF9FABEF0FA8E27FE7DB3E5CA2BEA3FF8773FC55FF9EFA07FE06BFF00F1BA
          5FF8772FC55FF9EFA07FE06BFF00F1BA3FB4B07FF3F57DE1F51C4FFCFB67CB74
          57D49FF0EE5F8ADFF3DF40FF00C0D7FF00E3747FC3B97E2B7FCF7D03FF00035F
          FF008DD1FDA583FF009FABEF0FA8E27FE7DB3E5BA2BEA4FF008772FC56FF009E
          FA07FE06BFFF001BA3FE1DCBF15BFE7BE81FF81AFF00FC6E8FED2C1FFCFD5F78
          7D4713FF003ED9F2DD15F527FC3B97E2B7FCF7D03FF035FF00F8DD1FF0EE5F8A
          DFF3DF40FF00C0D7FF00E3747F6960FF00E7EAFBC3EA389FF9F6CF96E8AFA93F
          E1DCBF15BFE7BE81FF0081AFFF00C6E8FF008772FC56FF009EFA07FE06BFFF00
          1BA3FB4B07FF003F57DE1F51C4FF00CFB67CB7457D49FF000EE5F8ADFF003DF4
          0FFC0D7FFE3747FC3B97E2B7FCF7D03FF035FF00F8DD1FDA583FF9FABEF0FA8E
          27FE7DB3E5BA2BEA4FF8772FC56FF9EFA07FE06BFF00F1BA3FE1DCBF15BFE7BE
          81FF0081AFFF00C6E8FED2C1FF00CFD5F787D4713FF3ED9F2DD15F527FC3B97E
          2B7FCF7D03FF00035FFF008DD1FF000EE5F8ADFF003DF40FFC0D7FFE3747F696
          0FFE7EAFBC3EA389FF009F6CF96E8AFA93FE1DCBF157FE7BE81FF81AFF00FC6E
          93FE1DCDF157FE7BE81FF81AFF00FC6E8FED2C1FFCFD5F787D4713FF003ED9F2
          E515F51FFC3B9FE2AFFCF7D03FF035FF00F8DD1FF0EE7F8ABFF3DF40FF00C0D7
          FF00E3747F6960FF00E7EAFBC3EA389FF9F6CF9728AFA8FF00E1DCFF00157FE7
          BE81FF0081AFFF00C6E8FF008773FC55FF009EFA07FE06BFFF001BA3FB4B07FF
          003F507D4713FF003ED9F2E515F51FFC3B9FE2AFFCF7D03FF035FF00F8DD07FE
          09D1F1547FCB7D03FF00035FFF008DD1FDA583FF009FA83EA389FF009F6CF972
          8AFA8BFE1DD1F153FE7BE81FF81AFF00FC6E8FF87747C54FF9EFA07FE06BFF00
          F1BA3FB4B07FF3F57DE1F51C4FFCFB67CBB457D45FF0EE8F8A9FF3DF40FF00C0
          D7FF00E3747FC3BA7E2A7FCFC681FF0081AFFF00C6E8FED2C1FF00CFD5F787D4
          B13FF3ED9F2ED15F517FC3BA7E2A7FCFC681FF0081AFFF00C6E93FE1DD5F153F
          E7BE81FF0081AFFF00C6E9FF0068E13FE7EAFBC3EA589FE467CBD457D43FF0EE
          AF8A9FF3DF40FF00C0D7FF00E3747FC3BAFE29FF00CF7D03FF00035FFF008DD1
          FDA384FF009FABEF17D4B13FC8CF97A8AFA87FE1DD7F14FF00E7BE81FF0081AF
          FF00C6E93FE1DDBF14FF00E7BE81FF0081AFFF00C6E8FED1C27FCFC5F787D4B1
          3FC8CF97E8AFA83FE1DDBF14FF00E7BE81FF0081AFFF00C6E8FF008776FC53FF
          009EFA07FE06BFFF001BA3FB4709FF003F17DE1F52C4FF00233E5FA2BE9FFF00
          8776FC53FF009EFA0FFE06BFFF001BA3FE1DDFF14FFE7BE83FF81AFF00FC6E8F
          ED1C27FCFC5F787D4B11FC8CF9828AFA7FFE1DDFF14FFE7BE83FF81AFF00FC6E
          8FF8777FC53FF9EFA0FF00E06BFF00F1BA3FB4709FF3F107D4F11FC8CF9828AF
          A7BFE1DE1F14BFE7BE83FF0081AFFF00C6E8FF0087787C52FF009EFA0FFE06BF
          FF001BA3FB4709FF003F107D4F11FC8CF9868AFA7BFE1DE1F14BFE7BE83FF81A
          FF00FC6E83FF0004F0F8A43FE5BE83FF0081AFFF00C6E8FED1C27FCFC41F53C4
          7F233E61A2BE9DFF008778FC51FF009EFA0FFE06BFFF001BA43FF04F2F8A23FE
          5BE83FF81AFF00FC6E9FF68613FE7E217D4F11FC8CF98E8AFA73FE1DE7F147FE
          7BE83FF81AFF00FC6E8FF8779FC51FF9EFA0FF00E06BFF00F1BA3FB4309FF3F1
          7DE1F53C47F233E63A2BE9CFF8779FC51FF9EFA0FF00E063FF00F1BA4FF877A7
          C50FF9EFA0FF00E063FF00F1BA3FB4309FF3F107D4F11FC8CF9928AFA6FF00E1
          DEBF143FE7BE83FF00818FFF00C6E8FF00877AFC51FF009EFA0FFE063FFF001B
          A3FB4309FF003F107D5311FC8CF9928AFA68FF00C13DBE280FF96FA17FE063FF
          00F1BA3FE1DEFF00143FE7BE85FF00818FFF00C6E8FED0C27FCFC41F54C47F23
          3E65A2BE9AFF00877BFC50FF009EFA17FE063FFF001BA3FE1DEFF143FE7BE85F
          F818FF00FC6E8FED0C27FCFC41F54AFF00C8CF9968AFA67FE1DF1F143FE7BE85
          FF00818FFF00C6E8FF00877C7C4F1FF2DF42FF00C0C7FF00E3747F68617FE7E2
          0FAA57FE467CCD457D33FF000EF9F89FFF003DF42FFC0C7FFE3749FF000EF9F8
          9FFF003DF42FFC0C7FFE3747F68617FE7E217D52BFF233E67A2BE98FF877DFC4
          FF00F9EFA17FE063FF00F1BA3FE1DF7F13FF00E7BE85FF00818FFF00C6E9FD7F
          0BFF003F107D52BFF233E67A2BE98FF877DFC4FF00F9EFA17FE063FF00F1BA43
          FF0004FBF89C3FE5BE85FF00818FFF00C6E8FAFE17FE7E20FAA57FE467CD1457
          D2FF00F0EFCF89DFF3DF42FF00C0C7FF00E3747FC3BF3E277FCF7D0BFF00031F
          FF008DD1F5FC2FFCFC41F54AFF00C8CF9A28AFA5BFE1DFBF13BFE7B685FF0081
          8FFF00C6E8FF00877EFC4EFF009EDA17FE063FFF001BA3EBF85FF9F885F55AFF
          00C8CF9A68AFA5BFE1DFBF13BFE7B685FF00818FFF00C6E8FF00877EFC4EFF00
          9EDA17FE063FFF001BA3EBF85FF9F883EAB5FF00919F34D15F4B7FC3BF7E277F
          CF6D0BFF00031FFF008DD1FF000EFDF89DFF003DB42FFC0C7FFE3747D7F0BFF3
          F107D56BFF00233E69A2BE96FF00877EFC4EFF009EDA17FE063FFF001BA3FE1D
          FBF13BFE7B685FF818FF00FC6E8FAFE17FE7E20FAAD7FE467CD3457D2DFF000E
          FDF89DFF003DB42FFC0C7FFE3747FC3BF7E277FCF6D0BFF031FF00F8DD1F5FC2
          FF00CFC41F55AFFC8CF9A68AFA5BFE1DFBF13BFE7B685FF818FF00FC6E8FF877
          EFC4EFF9EDA17FE063FF00F1BA3EBF85FF009F883EAB5FF919F34D15F4B7FC3B
          F7E277FCF6D0BFF031FF00F8DD1FF0EFDF89DFF3DB42FF00C0C7FF00E3747D7F
          0BFF003F107D56BFF233E69A2BE96FF877EFC4EFF9EDA17FE063FF00F1BA3FE1
          DFBF13BFE7B685FF00818FFF00C6E8FAFE17FE7E20FAAD7FE467CD3457D2DFF0
          EFDF89DFF3DB42FF00C0C7FF00E3747FC3BF7E277FCF6D0BFF00031FFF008DD1
          F5FC2FFCFC41F55AFF00C8CF9A68AFA5BFE1DFBF13BFE7B685FF00818FFF00C6
          E8FF00877EFC4EFF009EDA17FE063FFF001BA3EBF85FF9F883EAB5FF00919F34
          D15F4B7FC3BF7E277FCF6D0BFF00031FFF008DD1FF000EFDF89DFF003DB42FFC
          0C7FFE3747D7F0BFF3F107D56BFF00233E69A2BE96FF00877EFC4EFF009EDA17
          FE063FFF001BA3FE1DFBF13BFE7B685FF818FF00FC6E8FAFE17FE7E20FAAD7FE
          467CD3457D2DFF000EFDF89DFF003DB42FFC0C7FFE3747FC3BF7E277FCF6D0BF
          F031FF00F8DD1F5FC2FF00CFC41F55AFFC8CF9A68AFA5BFE1DFBF13BFE7B685F
          F818FF00FC6E8FF877EFC4EFF9EDA17FE063FF00F1BA3EBF85FF009F883EAB5F
          F919F34D15F4B7FC3BF7E277FCF6D0BFF031FF00F8DD1FF0EFDF89DFF3DB42FF
          00C0C7FF00E3747D7F0BFF003F107D56BFF233E69A2BE96FF877EFC4EFF9EDA1
          7FE063FF00F1BA3FE1DFBF13BFE7B685FF00818FFF00C6E8FAFE17FE7E20FAAD
          7FE467CD3457D2DFF0EFDF89DFF3DB42FF00C0C7FF00E3747FC3BF7E277FCF6D
          0BFF00031FFF008DD1F5FC2FFCFC41F55AFF00C8CF9A68AFA5BFE1DFBF13BFE7
          B685FF00818FFF00C6E8FF00877EFC4EFF009EDA17FE063FFF001BA3EBF85FF9
          F883EAB5FF00919F34D15F4B7FC3BF7E277FCF6D0BFF00031FFF008DD1FF000E
          FDF89DFF003DB42FFC0C7FFE3747D7F0BFF3F107D56BFF00233E69A2BE96FF00
          877EFC4EFF009EDA17FE063FFF001BA3FE1DFBF13BFE7B685FF818FF00FC6E8F
          AFE17FE7E20FAAD7FE467CD3457D2DFF000EFDF89DFF003DB42FFC0C7FFE3747
          FC3BF7E277FCF6D0BFF031FF00F8DD1F5FC2FF00CFC41F55AFFC8CF9A68AFA5B
          FE1DFBF13BFE7B685FF818FF00FC6E8FF877EFC4EFF9EDA17FE063FF00F1BA3E
          BF85FF009F883EAB5FF919F34D15F4B7FC3BF7E277FCF6D0BFF031FF00F8DD1F
          F0EFDF89DFF3DB42FF00C0C7FF00E3747D7F0BFF003F107D56BFF233E69A2BE9
          6FF877EFC4EFF9EDA17FE063FF00F1BA3FE1DFBF13BFE7BE85FF00818FFF00C6
          E8FAFE17FE7E20FAAD7FE467CD3457D2DFF0EFDF89DFF3DB42FF00C0C7FF00E3
          747FC3BF7E277FCF6D0BFF00031FFF008DD1F5FC2FFCFC41F55AFF00C8CF9A68
          AFA5BFE1DFBF13BFE7B685FF00818FFF00C6E8FF00877EFC4EFF009EDA17FE06
          3FFF001BA3EBF85FF9F883EAB5FF00919F34D15F4B7FC3BF7E277FCF6D0BFF00
          031FFF008DD1FF000EFDF89DFF003DB42FFC0C7FFE3747D7F0BFF3F107D56BFF
          00233E69A2BE96FF00877EFC4EFF009EDA17FE063FFF001BA3FE1DFBF13BFE7B
          685FF818FF00FC6E8FAFE17FE7E20FAAD7FE467CD3457D2DFF000EFDF89DFF00
          3DB42FFC0C7FFE3747FC3BF7E277FCF6D0BFF031FF00F8DD1F5FC2FF00CFC41F
          55AFFC8CF9A68AFA5BFE1DFBF13BFE7B685FF818FF00FC6E8FF877EFC4EFF9ED
          A17FE063FF00F1BA3EBF85FF009F883EAB5FF919F34D15F4B7FC3BF7E277FCF6
          D0BFF031FF00F8DD1FF0EFDF89DFF3DB42FF00C0C7FF00E3747D7F0BFF003F10
          7D56BFF233E69A2BE96FF877EFC4EFF9EDA17FE063FF00F1BA3FE1DFBF13BFE7
          B685FF00818FFF00C6E8FAFE17FE7E20FAAD7FE467CD3457D2DFF0EFDF89DFF3
          DB42FF00C0C7FF00E3747FC3BF7E277FCF6D0BFF00031FFF008DD1F5FC2FFCFC
          41F55AFF00C8CF9A68AFA5BFE1DFBF13BFE7B685FF00818FFF00C6E8FF00877E
          FC4EFF009EDA17FE063FFF001BA3EBF85FF9F883EAB5FF00919F34D15F4B7FC3
          BF7E277FCF6D0BFF00031FFF008DD1FF000EFDF89DFF003DB42FFC0C7FFE3747
          D7F0BFF3F107D56BFF00233E69A2BE96FF00877EFC4EFF009EDA17FE063FFF00
          1BA3FE1DFBF13BFE7B685FF818FF00FC6E8FAFE17FE7E20FAAD7FE467CD3457D
          2DFF000EFDF89DFF003DB42FFC0C7FFE3747FC3BF7E277FCF6D0BFF031FF00F8
          DD1F5FC2FF00CFC41F55AFFC8CF9A68AFA5BFE1DFBF13BFE7B685FF818FF00FC
          6E8FF877EFC4EFF9EDA17FE063FF00F1BA3EBF85FF009F883EAB5FF919F34D15
          F4B7FC3BF7E277FCF6D0BFF031FF00F8DD1FF0EFDF89DFF3DB42FF00C0C7FF00
          E3747D7F0BFF003F107D56BFF233E69A2BE96FF877EFC4EFF9EDA17FE063FF00
          F1BA3FE1DFBF13BFE7B685FF00818FFF00C6E8FAFE17FE7E20FAAD7FE467CD34
          57D2DFF0EFDF89DFF3DB42FF00C0C7FF00E3747FC3BF7E277FCF6D0BFF00031F
          FF008DD1F5FC2FFCFC41F55AFF00C8CF9A68AFA5BFE1DFBF13BFE7B685FF0081
          8FFF00C6E8FF00877EFC4EFF009EDA17FE063FFF001BA3EBF85FF9F883EAB5FF
          00919F34D15F4B7FC3BF7E277FCF6D0BFF00031FFF008DD1FF000EFDF89DFF00
          3DB42FFC0C7FFE3747D7F0BFF3F107D56BFF00233E69A2BE96FF00877EFC4EFF
          009EDA17FE063FFF001BA3FE1DFBF13BFE7B685FF818FF00FC6E8FAFE17FE7E2
          0FAAD7FE467CD3457D2DFF000EFDF89DFF003DB42FFC0C7FFE3747FC3BF7E277
          FCF6D0BFF031FF00F8DD1F5FC2FF00CFC41F55AFFC8CF9A68AFA5BFE1DFBF13B
          FE7B685FF818FF00FC6E8FF877EFC4EFF9EDA17FE063FF00F1BA3EBF85FF009F
          883EAB5FF919F34D15F4B7FC3BF7E277FCF6D0BFF031FF00F8DD1FF0EFDF89DF
          F3DB42FF00C0C7FF00E3747D7F0BFF003F107D56BFF233E69A2BE97FF877EFC4
          EFF9EFA17FE063FF00F1BA3FE1DF9F13BFE7BE85FF00818FFF00C6E8FAFE17FE
          7E21FD52BFF233E68A2BE971FF0004FCF89C7FE5BE85FF00818FFF00C6E97FE1
          DF7F13FF00E7BE85FF00818FFF00C6E8FAFE17FE7E20FAA57FE467CCF457D31F
          F0EFBF89FF00F3DF42FF00C0C7FF00E3747FC3BEFE27FF00CF7D0BFF00031FFF
          008DD1F5FC2FFCFC41F54AFF00C8CF99E8AFA63FE1DF5F13FF00E7BE85FF0081
          8FFF00C6E97FE1DF3F13FF00E7BE85FF00818FFF00C6E97F68617FE7E20FAA57
          FE467CCD457D33FF000EF9F89E7FE5BE85FF00818FFF00C6E8FF00877C7C50FF
          009EFA17FE063FFF001BA3FB430BFF003F107D52BFF233E66A2BE9AFF877BFC5
          0FF9EFA17FE063FF00F1BA3FE1DEFF00143FE7BE85FF00818FFF00C6E8FED0C2
          7FCFC43FAA57FE467CCB457D35FF000EF7F8A1FF003DF42FFC0C7FFE3740FF00
          827B7C503FF2DF42FF00C0C7FF00E3747F68613FE7E20FAA623F919F32D15F4D
          FF00C3BD7E28FF00CF7D07FF00031FFF008DD1FF000EF5F8A3FF003DF41FFC0C
          7FFE3747F68613FE7E20FAA623F919F32515F4DFFC3BD3E287FCF7D07FF031FF
          00F8DD2FFC3BD3E289FF0096FA0FFE063FFF001BA3FB4309FF003F107D4F11FC
          8CF98E8AFA73FE1DE7F147FE7BE83FF81AFF00FC6E8FF8779FC51FF9EFA0FF00
          E06BFF00F1BA3FB4309FF3F17DE1F53C47F233E63A2BE9C1FF0004F3F8A27FE5
          BE83FF0081AFFF00C6E97FE1DE3F147FE7BE83FF0081AFFF00C6E8FED0C27FCF
          C41F53C47F233E62A2BE9E1FF04F0F8A47FE5BE83FF81AFF00FC6E8FF87787C5
          2FF9EFA0FF00E06BFF00F1BA5FDA384FF9F887F53C47F233E61A2BE9EFF87787
          C52FF9EFA0FF00E06BFF00F1BA3FE1DE1F14BFE7BE83FF0081AFFF00C6E8FED1
          C27FCFC41F53C47F233E61A2BE9FFF008777FC53FF009EFA0FFE06BFFF001BA3
          FE1DDFF14FFE7BE83FF81AFF00FC6E8FED1C27FCFC41F53C47F233E60A2BE9FF
          00F8777FC53FF9EFA0FF00E06BFF00F1BA07FC13B7E299FF0096FA0FFE06BFFF
          001BA3FB4709FF003F17DE1F52C47F233E60A2BEA0FF008776FC53FF009EFA07
          FE06BFFF001BA3FE1DDBF14FFE7BE81FF81AFF00FC6E8FED1C27FCFC5F787D4B
          13FC8CF97E8AFA83FE1DDBF14FFE7BE81FF81AFF00FC6E8FF87767C533FF002D
          F40FFC0D7FFE3747F68E13FE7E2FBC3EA589FE467CBF457D43FF000EEBF8A7FF
          003DF40FFC0D7FFE3747FC3BABE2A7FCF7D03FF035FF00F8DD1FDA384FF9FABE
          F0FA9627F919F2F515F50FFC3BABE2A7FCF7D03FF035FF00F8DD2FFC3BABE2A7
          FCF7D03FF035FF00F8DD1FDA384FF9FABEF1FD4B13FC8CF9768AFA8BFE1DD3F1
          53FE7E340FFC0D7FFE3747FC3BA3E2A7FCF7D03FF035FF00F8DD2FED2C1FFCFD
          5F787D4B13FF003ED9F2ED15F517FC3BA3E2A7FCF7D03FF035FF00F8DD1FF0EE
          8F8A9FF3DF40FF00C0D7FF00E3747F6960FF00E7EAFBC3EA389FF9F6CF9768AF
          A8C7FC13A3E2A9FF0096FA07FE06BFFF001BA3FE1DCFF157FE7BE81FF81AFF00
          FC6E8FED2C1FFCFD41F51C4FFCFB67CB9457D47FF0EE7F8ABFF3DF40FF00C0D7
          FF00E3747FC3B9FE2AFF00CF7D03FF00035FFF008DD1FDA583FF009FA83EA389
          FF009F6CF9728AFA8FFE1DCFF157FE7BE81FF81AFF00FC6E8FF8773FC55FF9EF
          A07FE06BFF00F1BA3FB4B07FF3F57DE1F51C4FFCFB67CB9457D47FF0EE7F8ABF
          F3DF40FF00C0D7FF00E374BFF0EE5F8ABFF3DF40FF00C0D7FF00E3747F6960FF
          00E7EAFBC3EA389FF9F6CF96E8AFA93FE1DCBF15BFE7BE81FF0081AFFF00C6E8
          FF008772FC56FF009EFA07FE06BFFF001BA3FB4B07FF003F57DE1F51C4FF00CF
          B67CB7457D49FF000EE5F8ADFF003DF40FFC0D7FFE3747FC3B97E2B7FCF7D03F
          F035FF00F8DD1FDA583FF9FABEF0FA8E27FE7DB3E5BA2BEA4FF8772FC56FF9EF
          A07FE06BFF00F1BA3FE1DCBF15BFE7BE81FF0081AFFF00C6E8FED2C1FF00CFD5
          F787D4713FF3ED9F2DD15F527FC3B97E2B7FCF7D03FF00035FFF008DD1FF000E
          E5F8ADFF003DF40FFC0D7FFE3747F6960FFE7EAFBC3EA389FF009F6CF96E8AFA
          93FE1DCBF15BFE7BE81FF81AFF00FC6E8FF8772FC56FF9EFA07FE06BFF00F1BA
          3FB4B07FF3F57DE1F51C4FFCFB67CB7457D49FF0EE5F8ADFF3DF40FF00C0D7FF
          00E3747FC3B97E2B7FCF7D03FF00035FFF008DD1FDA583FF009FABEF0FA8E27F
          E7DB3E5BA2BEA4FF008772FC56FF009EFA07FE06BFFF001BA3FE1DCBF15BFE7B
          E81FF81AFF00FC6E8FED2C1FFCFD5F787D4713FF003ED9F2DD15F527FC3B97E2
          AFFCF7D03FF035FF00F8DD27FC3B9BE2AFFCF7D03FF035FF00F8DD1FDA583FF9
          FABEF0FA8E27FE7DB3E5CA2BEA3FF8773FC55FF9EFA07FE06BFF00F1BA3FE1DC
          FF00157FE7BE81FF0081AFFF00C6E8FED2C1FF00CFD5F787D4713FF3ED9F2E51
          5F51FF00C3B9FE2AFF00CF7D03FF00035FFF008DD1FF000EE7F8ABFF003DF40F
          FC0D7FFE3747F6960FFE7EA0FA8E27FE7DB3E5CA2BEA3FF8773FC55FF9EFA07F
          E06BFF00F1BA0FFC13A3E2A8FF0096FA07FE06BFFF001BA3FB4B07FF003F507D
          4713FF003ED9F2E515F517FC3BA3E2A7FCF7D03FF035FF00F8DD1FF0EE8F8A9F
          F3DF40FF00C0D7FF00E3747F6960FF00E7EAFBC3EA389FF9F6CF9768AFA8BFE1
          DD1F153FE7BE81FF0081AFFF00C6E8A3FB4B07FF003F57DE1F51C4FF00CFB67E
          9E5C7FAF93FDE3FCE980669F3F33C9FEF1FE748062BF285B1FA1BDC3A514514C
          41451452B9560A50334014EA9188062968A2800A28A2800A28A31400514BB68D
          B4009452EDA36D002514BB68DB400945183450014514500148466968A006918A
          4A7D211400DA28A2AAE2B0514514C91A462929FD69A4628012908A5A2801B450
          4628A6890A6914EA2A84329A4629C78A08CD048CA28A2A9805348C53A82322A5
          00DA28A2A84C6B0A4A71E69B4121451455201B487A52B0A4A621B450460D1408
          2994FA6B75A6804A28A2A896235369F4CA04145145003690F4A7375A4AA42194
          5145048D3D6929CD4DAA426141E94514C4368A0F145001451450405145140051
          4514005145140051451400514514005145140051451400514514005145140051
          4514005145140051451400514514005145140051451400514514005145140051
          45140051451400514514005145140051451400507AD141EB4005145140051451
          4005145140051451400514514005145140051451400514514005145140051451
          4005145140051451400514514005145140051451400514514005145140051451
          4005145140051451400514514005145140051451400514514163874A28A2800A
          5A4A55EB498D0EA28A2A463969690714A3AD0CA1C38A28A2A4614E5A6D3C74A0
          028A28A06829C381483AD3AA594145145201474A5A2940E681F90E1C5145140C
          2940E6929C0605400B4514503400669D48052D2650514514D00A0669D4806296
          A580A0669D480629682828A2803352C62814B45148A0A5033475A7018A003A51
          451400514514AE5582940CD0053AA462018A5A28A0028A28A0028A28C5001452
          EDA36D002514BB68DB4009452EDA36D00251460D14005145140052119A5A2801
          A462929F484500368A28AAB8AC1451453246918A4A7F5A6918A004A28A280269
          C7EFE4FF0078FF003A653E7FF5F27FBC7F9D3292D86F70A28A286C6905380C50
          06296A461451450014514A168012942D2D1400631452E2976D00368A76052E28
          1D86514FA280B0CA29F498140586D18CD3B6D262801A569318A7514086D14A56
          92800A28A280108CD369F583E37F1DF873E1BE82DAD78A759B5D0F4C120885C5
          C93F3B9E42AAA82CC7009C007804D524E4ED157626D455DEC6DD155749D56C75
          ED2ACF54D32F21D434DBD8967B6BAB76DD1CA8DD181AB546DA300A08CD145324
          6514E229B400119A6D3A908A04C4A28A2A842114DA7D308C532588C29B4F3CD3
          29A10514514980D23068A56149548029A4734EA43D28206D14514D001E94CA7D
          34F5AA131AC2929C7A5368061487A52D14086514515620A69EB4EA46A091B451
          45002374A4A71E94DA68434F5A4A73536989887A5369F4CA6841451455122375
          A4A56A4A0028A28A096145145020A28A2800A28A2800A28A2800A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
          2800A0F5A283D6800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
          0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
          0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
          0A28A281A0A075A29568285A28A2800A72F4A6D3C74A96520A075A295690C752
          AD253874A4C6145145218A39A753569D40051451414872D2D20E296A0614AA29
          29C3A500829C3A5369F40D051451498C503269D48B4B520140E68A5514142D14
          515230A502929E06055300A551494FA91A0A28A291414E03148A296A46828A29
          C050300314B4514005145149B2920A7018A00C52D48C28A28A0028A2942D0025
          285A5A2800C628A5C52EDA006D14EC0A5C503B0CA29F4501619453E930280B0D
          A319A76DA4C50034AD26314EA2810DA294AD2500145145002119A6D3E908CD02
          1B45145340C282334515448DC1A29D45003E7FF5F27FBC7F9D329F3FFAF93FDE
          3FCE9953D0AEA14E02900CD3A90C28A28A0028A3AD380C50000628A29C050020
          19A502968A0AB051452EDA2E3128A76D146295C06D14FA28B80CA29D8A3028B8
          0DA2976D7C27FB47FEDD1E37F865F1D6FF00C33A0D869F6FA1E8570915C41770
          79926A1F2AB31673CA29CFCBB307B92738AEDC2612AE366E9D15AA57D4E5C462
          69E161CF576BD8FBA88CD2118ACDF0B789AC3C69E18D23C41A549E669BAA5AC7
          796EC4F211D41C1F719208EC41AD68C65BEE97C0276AF56F61F5AE4778DD3E87
          4AB4B622A08CD7E74FC3EFF8284F8D67F8D76B278B65B5B7F04DE5D7D96E3498
          ED9156C2266DA245936EF2C9D4EE27700C3038C7E8C30DAC402187661D08EC6B
          BB1782AD829463596EAFA7F5D0E2C3E2A962939527B68713F17BE2C683F04BC0
          977E2AF1134CD670C8B0436F6CA0CB733364AC6B9C01C2B1249E003F4AE6BF67
          BFDA3FC39FB45E83A85E68F6D3E95A969B22A5E69974E1DD15B3B2456006E538
          23A0208E47209B5FB4B7C20FF85E1F0735AF0D438FED54C5FE9849C0FB5461B6
          A9F675674CF6DF9ED5F98FFB357C60BBF801F1974ED62E5658F4E2E6C358B520
          866B7620480AFF0079080E07AA015E8E0B014B1B84A9287F163F97FC1D7E6716
          2B193C2E220A5FC37F9FFC0D3E47EC2D7CF9FB737C2A9FE277C07BEB8B1567D4
          FC3729D5A28979F3620A5675C7B21DFF00F00C77AFA0229A1BA8629EDA64B8B6
          991658A68CE56446195607B820834F1B4E43A2C88415646190C0F0411E84578D
          42B4B0F563561BC5DCF52AD38D684A9CB67A1F16FF00C1377E30FF006D785B56
          F871A84F9BBD28B6A3A6073CB5BBB0F3A31FEEB90F8FFA68DE95F67D7E58FC40
          D26FFF00633FDACE2D434B8E4FECAB5BB5D46C5338171A7CD90D167BE14C9113
          EAB9AFD46D3355B2D7F4AB1D574C9D6EB4DBF823BAB69D7A4913A8656FC88AF5
          F37A31556389A5F05457F9F5FF003FBCF372EAB274DD0A9F141DBE5D3FCBEE2C
          514515E1A3D4614D2314EA08CD310CA28A2801A4628A561494D12C2908A5A2A8
          4329AD4EA423228448DA28A29B00A6D3A91A8402514514C96328A56A4A04148D
          4B487A5580DA69EB4EA46A05D04A28A2810D3D6929CD4DAA401487A52D14C819
          451450014D3D69D48DD684034F4A6D3E99542614D3D69D4D6A09128A28AB240F
          4A6D3A9B40051451412C28A28A04145145001451450014514500145145001451
          4500145145001451450014514500145145001451450014514500145145001451
          4500145145001451450014514500145145001451450014514500145145001451
          4500141EB4507AD0014514500145145002668CD7C5BE02D6B47D57F6A4F1BD9F
          8A7C65ADD85DDA6BF10D0B4C82F65105C3F98E5A36400AEDF963183B4609FC33
          97C756D7C3E13C9E16D57C4D1E9D71E3A6B6BA1ACDF79934A43DBEE4250E0C78
          3C29F53EB5EB7F67CAF6BF44F6D354DFE8707D6D5AF6FC7CEC7DC9457CDFF0EF
          E3168BE17F07788F50D0B4BF17789A693C512699F62BB956E66FB41504EC6CE2
          38001DFA13EF5B307ED71E1EB9F87D6FE238B45D4DEFA7D67FB023D18797E7B5
          E601DBBB76DDB823E6CF538C5734B07553B455FA1B2C453B5DB3DDE8AF02D6BF
          6808BC6BF0C45E691A378AACF56B8D6068CD65A5C510BC82752ACD991F746A84
          60173C7CD8E3922BF86FF6A5D06D3E15F87753B6B3D775BD4AFF0052FEC2B7B1
          BA688DE4F76319DEF95400EE5E4607CC060763EA75AD7B6B7B07D629DF7E973E
          85A2B8AF847F1534CF8C3E104D7B4C82E2D104F25B4F6B7400921950FCCA7048
          3D41C8EC7F0AED6B96709424E325668DE32525CCB60A28A2A0A0A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A281A0A55E9494E1D
          282828A28A005A753475A7541414E5E94DA70E940D0B4EA68EB4EA9650514514
          00E5E94B40E94500140EB452AD22C75145152014EA45EB4B40FA0ABD69D48BD2
          9681A0A28A51D6A405A5A28A43414E1C53475A752650514514201475A75201C5
          2D2602A8A7520E29682828EB452A8A963168A28A450A0669D4806296800A28A2
          931A0A701480669D52505145140051475A7018A0000C5145380A0040334A052D
          141560A28A5DB45C62514EDA28C52B80DA29F4517019453B146051701B452EDA
          4A770108CD2118A75140AC3282334E229B412348C514EEB4D231400514514008
          4669B4FA69140094514552258514514C43E7FF005F27FBC7F9D329F3FF00AF93
          FDE3FCE9AA2A0B62F4A5A28A0028A2940A0050314514E0280002968A28282942
          D2818A5A9B8C00C9C01CD79AFC4FFDA3FE1C7C1D99AD7C4FE28B6B7D49464E9B
          68AD73723D372203B3FE0656BC7FF6ECFDA6354F831A0E9DE16F0BCDF63F126B
          903CF2EA2A7F79676DB8A031FA3B90C037F08538E4823F316E6E66BCB89279E5
          79E7958BBC923166662724927A935F4F9664AF19055AB4AD17B5B77FE47818FC
          D16165ECA9ABCBADF647EA45A7FC1457E0F5CDC98A4935FB54071E74DA72943F
          82C84FE95ED9F0EFE30F823E2CC064F08789EC35B754DEF6B1394B98D7D5A170
          1C0F7C62BF11EAEE8DADEA1E1CD4EDF51D2AFAE34DD42DDC3C3756B2B47246DE
          AACA4106BD9ADC3B4251FDD4DA7E7AA3CCA59DD54FF7914D7968CFDDBA2BE3BF
          D90BF6DE5F88F7363E08F1F4D1C1E267C4561AC9C2477EDDA39474594F661C37
          4E1B1BBEC420A9208C11DABE271385AB84A8E955567F9F9A3EAA857A78982A94
          DDD7F5B9F24FED77FB67EB9F01BC7361E14F0CE8B6175742D62BDBBBCD511DD5
          95C9C471AAB2E385E5B27AE0018CD7D13F09BE23D87C5CF86FA078BF4E410C1A
          9DBEF7B7DDBBC899495963CF7DAE1867B8C1EF5F2B7FC14B7E137F6C785342F8
          87650EEB9D29C699A8B28E4DBBB130B9F6590B2FFDB515CF7FC1337E2CED9FC4
          3F0E2FA6F9650756D3031FE35016741F55D8C07FB0E7BD7B53C1D1AB96471345
          7BD1F8BF5FD1FA1E5C713569E3E542ABF765F0FE9FAAF53EF7AFCF9FF8298FC2
          6FB0EBFA0FC45B28710EA4834CD459470278D73139F768C15FFB642BF41AB84F
          8E9F0C61F8C7F097C49E137553737B6C5EC9DB8D9749F3C273D86E014FB31AF3
          32FC57D4F130ABD367E8F7FF003F91DF8CC3FD6684A9F5E9EABFAB1F39FF00C1
          36FE2C7FC249F0F756F01DE4DBAF74090DE592B1E5AD256F9D47B24A73FF006D
          457D8AAC55811C11CD7E387ECE3F13AE3E04FC72D0F5ABC125BDA41726C75585
          8107ECEE764A08F55FBC07AA0AFD903B58064759108055D4E4303C820FA57A19
          DE1BEAF8A738FC33D7E7D7FCFE671E5588F6D87517BC74F974FF002F91F959FB
          79FC1A1F0BFE33CFABD841E5683E270DA8DBED1858E7CFFA4463E8E7763B0914
          76AFB3BF61FF008C5FF0B67E0959DA5E4FE6EBDE1AD9A65DEE3967840FF4794F
          D5014CF73193DEB6FF006BCF839FF0B9FE09EAD616B079BAEE940EA7A66D1966
          9114EF887AEF4DC00FEF05F4AFCFBFD8BFE328F839F1B34E7BE9FC9D035AC697
          A96E38545761E5CA7D363ED24FF7777AD7A71FF854CB3977A94FF1B7F9AFC51C
          32FF0084FC7DFEC54FEBF07F833F5A812A411C115F9A1FF050BF81E3C09F11E2
          F1B6976FE5E89E276679C20F961BE1CCA3DB78FDE0F525FD2BF4CA48CA3953D4
          1C5709F1B3E15597C6BF861ADF846F364725DC7E6595C38FF8F7BA4E627FA678
          38EAACC3BD78197633EA5888D4FB2F47E9FF000373D7C6E1BEB545D3EBBAF5FF
          0083B1E0DFF04F8F8DDFF09EFC379BC13A9DC6FD6FC32A0DA973F34D60C70BF5
          F2D8EDF656415F5757E347C2BF1DEB7FB397C68B2D5A4B7960BED16F5ED751B0
          7E0C91E4A4F0B76C91B80F4201ED5FB17A3EB363E23D1AC357D2EE16EF4CD42D
          D2EAD675E9244EA194FE46BB739C22C3D7F6B0F867AFCFAFF99C996627DBD1E4
          97C51D3E5D3FC8F9ABFE0A05F07BFE160FC214F1458C1BF59F0AB34EDB47CD25
          9390251EFB0857F601FD6B1BFE09D1F187FE12EF8757FE04D427DFA9F8718CF6
          61CFCCF65237207AF9721FC048A3B57D6F3DB417B6F35B5D42971693C6D0CD0C
          832B246C086523B820915F95CC2FFF0062AFDADB3FBD9348B1BBCFAFDAF4C9FF
          0099D8DF83A7B56B81FF006EC1D4C13F8A3EF47F55FD772315FECB8986297C32
          F765FA3FEBB1FAA24628A6C3736F7D6D05D5A4C97369711ACD04F19CAC91B00C
          AC0FA1041A757CD9ED8514515440D61494E23229B400534F14EA46A04C4A28A2
          A8435A929C7A536992C69EB494E6A6D508283D28A2A406D1451542621E94DA7D
          3282428A28AA403283D294F5A4A621B451450210F4A6D3E99548028A28A64B1A
          7AD252B525020A46A5A0F4A006D34F5A7535BAD5098948D4B487A5048DA28A2A
          912C29A7AD3A9A7AD300A28A28130A28A282428A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A0028A28A00283D68A0F5A0028A28A0028A28A00F07F825F0B75BF0BFC60F8
          B7AEEB7A424161ACEA10CFA5DCBBC72191434C598004B27DF4EA01E7DABC7BC1
          DFB3C7C41D2F4BF87715D787CC52695E367D5AF17ED701F2AD4B5B91270FCFFA
          B7E064F1D3A57DB3457A2B1D523272B2D6DF82B1C8F0D0692BBD2FF8BB9F11CF
          F00FE255BF81EF74E4D12E2482EBC6F26A579A5DBEA3144D7B60CAA012E1F001
          208C13919071C66AA5AFC00F1B7833E14C37B3F87C4373E1FF001A3788BFB323
          BB898C96291479646DC4123CBE870D8078E80FDCF55355D320D674F9ACAE4CCB
          0CC36B1B79DE1907FBAE84329F70456CB32ABB34AD7BF5FF0033378386E9BFEB
          E47C9BE29D1BE2AFC6EF00783F54BFD3EDB54D3A5F101B9BAD1F47D4638967D3
          7E408249564DAC78941C31C6E1C641C73BE1CFD9E3E20785FE1FF846E0F86FCE
          D57C3BE326D61F488AF21DF35AE213947DDB7398B18241E7A57D99E1CF0DE9DE
          12D16DB49D26D859E9F6E18470AB16C658B3124924924924924924D69D2FED09
          C172538A51BFF9F9F98FEA9193E69377FEBC8F19FD94BE1C6B9F0D3E1A5D5A78
          86D56C753D43539F517B4122C861570AAAA594904E133C1EF5ECD4515E755A8E
          B4DD496ECEB841538A8AE8145145645851451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          51451400514514005145140051451414829D4D1D69D40C28A28A0072D2D22F4A
          5A82829F4D1D69D414855A5A45A5A918528EB494A3AD003A8A28A06829CBD29B
          4E1D293285A28A2A4055A5A074A51D6818E145145030A55A4A70E95002D14514
          14855ACFD63575D2E350177CAFF757B0F735A23A5739E2DB76DD04E395C6C3ED
          DC7F5ABA694A7664C9B4AE8A71789AF126DEECAE99E536803F035D5DB4E97502
          4B19CAB8C8AF3EAE97C277D90F6AC791F3A7F515D3569A51BA467093BD99D1D2
          8EB494E5E95C2740B4514522829D483AD2D48D0528193494E038A062D1451400
          51452A8A92C5E94B45148028A2940A0050314514E0280002968A28282942D281
          8A5A9B8C4A5A28A0028A28A0028A28A0028A28A0028A28A00695A4A7D2119A2E
          036908CD2F4A2A843282334E2334DA0437A514E2334DA0414514500308C514E2
          29B4C028A28A7726C493FF00AF93FDE3FCE929651FBF93FDE3FCE92A56C5BDC2
          8A28A0400669D4018145002819A75038A282829C06280296A46145145007E4DF
          EDEDAFDD6B7FB4F78A21B8DCB169A96D656E8DFC31AC28DF916766FF00815789
          784FC23AD78EB5EB4D17C3FA65CEADAADD36D8AD6D632EEDEA7D80EA49E00E4D
          7EC07C55FD997E1BFC67D486A7E28F0F09B5708B19D46CE77B799D5460072A70
          F81800B0240006715AFF00093E06F82FE08E97359F847475B17B83FE917B3379
          B7538CE42B4879DA3B28C0EF8CE4D7DA51CFA961F090A7083E78A4BCBD7B9F2F
          5727A95B132A939AE56DBF3F43E25F0DFF00C130FC517FA0ADC6B5E30D3346D5
          9D370D3E2B77B9543FDD7943000FAED0C3DCD7CF9F1A7F66DF1D7C07BF11F893
          4BDFA748DB60D5EC8996CE63E81F036B7FB2C15B8E98AFD5CF885F1DBC09F0B6
          47B7F107882087505193A7DAA99EE07A028B9D9FF0222A0F85FF0015BC2DFB44
          785B5AFB1E972CDA54773F61B9B0D5E28DC4E8503066405860FCC3049FBB5E2D
          0E2B9C711ECEA4D49BFB3A26BD2DFADCFA3ADC1F5DE05E3634250A6ADEFB4ECE
          FA2DF7F91F8BD6AB31B88FECE1CCFB86CF2C1DDBB3C631DEBF59FF00641F8B3E
          2BF1FF00C3130F8FB47D4F4AD5F48558C6B3AA5ABC10EA307457F31C05322F46
          E79E1B924E3E6FD4BC5B79A47C61FF008579F0ADADBC2DA1477F1E8F05CE9F69
          0A5D4A5488E49A4B90BE63E583B64B74AC9FDA83E2037C45D4FC21AD43712C96
          175A44A6DB7C858B449A85E4713367AB18D1327A935E3671C5B4B1D86A93A342
          F1A724B99BEAEFB593D2C8FBBC8FC34C4D0C761B0B8CC528CABC253E549BB463
          6DEED6B795B4ECCFBBBE2F8F09EA5F0AB5DB5F16EAB6B65E19D5ACCDABDF13E6
          20320FDDBA6DCEE60C030C775AFCECF859E0CF057C1AF885A178B63F8AED7B7B
          A4DD2CFF0067D23409E45997A3C65E578B0194B2938E8C6BE9AF8C5E16D5BC5F
          FB26FC2FB1D3EE34FB4B316F653DE5DEA5A84369147B6D708A5A461927793819
          3F2D7CF3A7FECE17BA8595A5C278CFC2845E5FA6956A915ECB379D78EA4C7006
          489943301C12C07BD7CE4B3ECD68B786C0C749A4DAB5EFA6B6BF91F5796F0670
          D56C3BC6E758869D39CA2AD2514929595EC9B4DBD775B9F7DFC2DF8D7E10F8CB
          0DCC9E1ABF91E7B620CF63751F953C4A4E03632415ED904E38CE335E29E38FDB
          BEC7C19E2DD6B438BC133DEC9A5DECD66677D50461CC6E5376044719DB9C57CF
          DFB1DEAB75A2FED11E1B8626655BA33DA5C463A32189CE0FD1955BFE022B0BC5
          9E1D8FC5FF00B4CEB3A14B335BC5A9F8B66B279906590497850B01DC8DD9AF02
          A6718AAB8684A0ED2E669F9ED6DFD4FB2C2F03E4F84CDB114713173A2A9A9C6E
          DDD6AD3F86D7DB4355FC45F0A3E2A7C548AEF58F85C2CE5D7F54437B731EBB71
          88DA59009245450A33962D8E99AF60D3FF006AAD7BE0EFC1FF0002E9379A35B6
          B1ACDB8BED36E26BC91D098ED2E0DBC4C369E4908CA49EE95ADE25FD86BC3BE0
          9F0E6A5AF43AB789759B8D2E1376B65A7DBC2279B6724460E72D80481DF181CD
          79D7C5AF147C30F88BA7E83E2CD4AC7C5DA22DDC97D68BA6411DB868654BA796
          72E18F0CD2DCB9C7B735EED4C4E711CB2ACB1736ED28F2C9B5EEEF75F3D3FA47
          CA50C1707E338830B4B2BA57838D4E7828CFDE7A38BD75D357BFE674317FC143
          35C47563E0DD33839F96E6515F377C54F01F873E20E93ADF8F3C116971A3DF5B
          4E2E759F0CCB2099218E5902FDA2D5C2A931891955908CA6F5C12BD3E8BB3FD9
          3FC13E25F82773E3ED1FC41AD59C7FD9D757F0C3A9470903C92E0ABECF5319E8
          7B8FA57947ECC535B43F1418EA16B3DF68FF00D93A8BDFDADB286926852D6472
          A8A4805B72AE064738AE4CA739CCF2BC7517527CD1A96D34D537FD58F6F3EE17
          E18CEF26C6CF014BD9D5C3A96BEF2B4A2AED34DD9DED667D137DFB6759FC2CBE
          5F05EA5E1ABCD66E340862D367D506A2A1EE258A354766531F5DC08EA738AD8D
          0BF6F2F00EA5771C3A8E95AD68EAE403705239E34F76DAC1B1F404FB5782F8F7
          E1F7C3ED5FE2CEADA6DCF8DF5BB5D6EFF536F33CCD09258BCD99F77DE1700E32
          FD7158DFB437ECDD3FC034D22493C416FAD47A8BCA8AAB01824429B7276966C8
          F98739EB5E6D4CCB3384AA554D38C5EBF0BB6BB69A9EA61B85F84F110C3E1250
          946AD48A6BF88B9AD1BB6B9972F9F634FF00E0A13F086D2E350D17E2DF85CC77
          DA2F889520BD9AD3E64371B7F7728C7FCF445C1FF6A339E5ABD97F62EF126B1F
          0D7E18B7857E275E69BE144B7905C68A9ACEA704173E4CB9678DE167DF180DF3
          2EE03EFB7A0AA3F01BC5F2787FF631F166ABA85BC57B1E8DA84A74D4BB40E91C
          D9B7781C03C7C93C9BC7BE6BE50D0BC35E24F89DAF5D2E9D6B73ADEA6E1AEAE6
          42D92067E69247638032C3927A91EB5F578BE2CAAF2FA1848D2529BD7AE9DADF
          8AF43F3ECAFC33A15733C76231189F6746949C6FA6AED76DB7A2B269BF33F586
          CAEEDF53B34BBB2B982FAD1FEEDC5ACAB2C6DF4652457C99FF000516F83BFF00
          097FC38B1F1D5841BF54F0DB79178547CD25948DC13EBE5C841F61231ED5F3A7
          87BC4BE3DFD9CFC67148897BA15FAED925B1BA5221BB8B3D197A3A1E4647E041
          19AFB5BE2F7C680DFB34A78DB44B2B2BBB5D6520866B0D4A2F3E168E42D1CF03
          8C8C804329E474A9CAB88A34E6EBCE2E32A7AB5DD6CCF3F887C3FAF879D1A185
          AAAAD2C43E58CB6B49EAAF6BAF46B7B338BFF827DFC603F103E10C9E17BE98C9
          ABF85196042C7992CDF2623FF002193D804F5AFA78F06BE58FD88354F026A373
          E2C6D07C276BE14F12BC50B5CC76B773CD14F6E18E4C6B2B31401CAE4027EF2D
          7D3FA86A9A7E95F67FB7EA36760D73279502DDDC244667C676A6E2371C7615ED
          D5C76171D2962B0CED093EBA6BD7F13E16BE4D986515BFB3B1B0FDEC56B6D6EB
          74D77D0B1453A489E238752A7DC5369A773CF6AC14D23069D48D4C91B41E9451
          400DA2834534485329F4D3D6A84C69E94DA7D329A2428A28A4C069EB452B5255
          082987AD3E9ADD68244A28A2A9008D4DA7374A6D31751A7AD141EB45020A61EB
          4FA69EB4D00945145512C46A6D38F4A6D020A0F4A28A006D35A9D48DD2A85D06
          D068A7C70BCCDB634673E8A33408868A5552CC140CB13802B8CF1F7C76F86DF0
          BB54B9D2F5DD7E7B9D62DB026D3B4EB5691D0900E0B91B338238CD73D7C551C2
          C79AB49247A380CB3199A55F6382A4EA4BB257B79BF23B2A36962000493D8563
          7C22F8B7A1FC58F09F883C43A4787EEACF4FD39DE1B79753705AE6458CC8C36A
          921401B7B9FBDED5F1FF00883F6EBF899A9EF4D35B49F0EC67207F67D8AB301F
          594BF3F8578B89CFF0B87846766D4B63ED32AE01CDB34AF570F1E584A9B4A5CC
          F66D5D6D7FF807DBCB6370D3470F92E2493EEAB0C13F9D4F77A4B69B179BA85C
          DA69D17F7EEAE1507E79AE7BC27E33BCFF008539A278C755B83757D6DE163AA5
          C4F2000C8EB1331271C726BF2E6F2FEE350B879EE6792799CE5A491CB31FC4D7
          26639F3C1C69B842FCEAFE87AFC33C03FDBB57130AD5F9151972E8AFCCF5BF55
          6DBF13F4F754F895F0FB42C8D43E20787E365EA96F76B3B0FF0080A126ADF857
          C61E12F1FBC917857C55A76B9751A966B48A4D93ED1D488DB0C47BE2BF2C2AEE
          89ADDF786F57B4D534CBA96CAFED2412C3710B6D6460720835F3F1E29C4F3A72
          82E53F47ABE11E5DEC24A95797B4E8DDAD7F35FF0004FD4DD6B5BD3BC21E18D7
          35FD5E1B99ACF4AB63712436B8F318020600620679EE45784CFF00B76F8062CF
          91E11D6E7F4F3A78D3F931AEF3C5FE324F893FB266B7E2D5458E5D5340637288
          30A2E11C24B8F6DCA715F9BF5D79C67188A5520F0D2B46514CF178278272EC7E
          1F111CD297354A551C376B6B76F33ED2B8FDBF3C3B167ECDF0EEE26F4F3B55D9
          FCA335E81F027F693B1F8F1ABEB9A3A78562F0FDC59589BE89D6F4DC17557556
          1CA2E31B87E75F9DDB5BD0FE55EE9FB166B2DA3FC7ED1A07CAC1A9C1716321C7
          18689997FF001E45AF23079D636789A6AAD46E2DABEC7D8E7BC0791E1F29C4D4
          C261ED52306D3BC9ECAFB376FC0FAABE3D7C754F80DE1EF0ECF16876BADDE6B1
          34F84B990A6C8E3D809E07AB0AF161FF000502BDEFE01D28FD2E9FFC2B2FF6F8
          D5249FE21786F4440CC9A6E90AEE00FBB2CB23161F92A57CC06DE51D6371FF00
          0135799E6D8B8632A468D46A29E863C27C1B9362324C356C6E1D4AA495DB6DF5
          6EDB35D2C7D7117FC140E4DE3CEF87B60E9DC477EEA4FE3B0D7B5FC20F8F3E11
          F8E7E6DA6931CDA1F88E2432B68F76E1FCD51D4C2FFC78EE300FB639AFCDA2AC
          BD411F515B1E0CF155F781FC57A56BDA6CA62BDD3EE12E2320E3241E54FB1190
          47704D73E173EC651AAA5527CD1EA99E9E6DE1CE498CC2CE184A5ECEA5BDD69B
          DFA5D36F43F4E7C4FE29D3FC03E0BD7BC4FAADABDE59E9702B98237D8CECCE15
          403EE4E2BC5ED3F6E7F871363ED7E1AF10DAFAFD9CC3263F375ADDFDB53C450D
          A7C02DF68711789350B528BDCC5E599F3FF7D2AFE75F9F15ED6719D622862B97
          0F2B46C8F85E08E07CB334CAA55F32A6DCF9E4934DAD1597E773F416CFF6C3F8
          437C407B8D7B4FCF7B8B35603FEF82D5E95E0FF18F857E255ACB3F83FC456BAE
          18977C96CA0C57118F531300D8F7C57E5856B784FC57AAF823C4363ADE8B7925
          8EA567209229A338C1EE0FA823820F04120D7061F89B1709AF6B692FC4FA2CC7
          C29CA6B5197D4A7284FA5DDD7CF4BFE3F267EA511834F8A19277DB1A348DE8A3
          26A0F09EB51FC47F0EF86FC41691AC235BB38EE5E35E445211FBC5FC181FCABE
          4FF8FDFB626B7FF090DEF873E1F5E8D1F43B27303EA70283717AE38660E47CA9
          9CE36F2719CF381F738CCDE860E846B4B5E6D91F81E49C21986778FAB81A4945
          D376937B2D6DF7F647D7EDA45F20CB5A4E07AF966AAB2952430208EC6BF386CB
          F688F89B6171E745E3BD799F39C4D7D24ABFF7CB123F4AF65F86FF00B76EBD69
          730D9F8FAC20F11E9AC42BDF5B44B05E443D46DC2363D30B9F5AF1A871461E72
          E5AB171F33EDF1FE1466B86A4EA61AA46A35D354FE57D3F13EB8A2A3D3B52D33
          C47A1D8EBBA15EA6A5A2DFA6FB7B94FD558766072083CE41A9352D4740D1EEEC
          6C6FFC49A669BA95E422786D2FE7585A45C91F2E4FCDC83D2BEB5E268A82A8E4
          B95ECCFC7960314EB4B0EA9BE78DEEADAAB6FA79051572EB48BAB4844CD18680
          8044B1B06520F439154EB78C9495E2EE714A3283B49598514515448514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400507AD141EB40051451400514514005145140051451400514514005145
          1400514514005145140051451400514514005145140051451400514514005145
          1400514514005145140051451400514514005145140051451400514514005145
          140051451414851D6969169681851451498D0E1D296814548C55EB4EA6AD3A82
          BA0E1D28A074A2A4614E5A6D39680168A28A06829F4D1D69D52CA0A28A075A40
          3A9934F1DB44D248DB5147269F58BE286616F081F74B1CFD715515CCEC1276D4
          AD77E269DE4FF47511A0FEF0C935A1A3EB62FDBCA9404980C8C746AE569F0CCD
          6F3248870CA722BAE54A2D5919293B9DED3EABD9DCADE5BC72A74619C7A1F4AB
          15C0D5B4370A28A075A450EA82FED16F6D2485BF88707D0F6A9E8A4B47703CF2
          44689D9186194E08F7A92D2E5ACEE63993EF21CFD7DAB57C5163E4DCADC28F92
          5E1BFDEAC4AF522D4E37391AE567A2C332DC449221CA38041A9AB9DF09DF7991
          3DAB1F993E65FA77FF003EF5D1579B38F2CAC7645DD5C28A28ACD963874A28A2
          A4A169D4D5EB4EA0028A28A4C6829F4D514EA92828A28A0000CD3A803028A005
          0334EA071450505380C50052D48C28A28A0028A2942D21D84A3069D8C514AE02
          6DA36D2D145C7A8DC1A29D463345C4368A52B494C028A28A62108CD37A53E908
          CD0036908A5A2A8432908A71E2908CD048DA28A2800A61E0D3E9AC280128A28A
          00966FF5D27FBC7F9D369F3FFAE93FDE3FCE9942D818503AD14AB400B4E514DA
          78E940D052819A4A701C52650B45145200A28A50290F600315C8FC60F14DEF82
          7E1678AB5DD386750B2B077B76033B1CE143E3FD9DDBBF0AEBEA0BFB0B6D56C2
          E6C6F6DD2EECAEA268278251959236186523D0826B0AD194E9CA31766D33B307
          529D1C4D3AB5A3CD18C936BBA4F55F33F2DFE0D783B4AF8B5F136DB48F13F88E
          5D1D7502EC2F1D7CC7B89C9C88F731C06624FCC7393C7522BEF5F0BFC2FF000D
          FECC1F0F3C65A9F87E4BF9A54B07BC9A5D467572F2431C8630155540F9988E9D
          C57C6BFB49FECE97FF0004F5E5D434DF36EFC277921FB25E1E5EDDFAF93211D1
          8763FC4067A8207ADF837E3A5FFC59FD97FE21687AC4A67F11E8BA583F6A6E5A
          EADB728DCDEAEB8C13DF2A7AE6BE03012860E75295785AAA4DA7F2FEAC7F4AF1
          242BE7B87C2E372FC47360E72829C34B24E4B57D747A34F67667887ECF9E13D6
          3C67E22F175D68F135D6B7A7F87351BBB404FCCF72F118931EAF99723DC0AE5B
          C60AC9F0FBE14AB0218786DC107A83FDA37B5EDBFB01F886CB4AF89FAC69F733
          C705D6A3A6ECB5F3180F32459118A2FB95C9C7FB354FF6EED0AC7C39F14342B2
          D3ADD6D2DBFB1BCFF25780AF2DE5D48F81D86E7638ED5AC6AC56412A2B77513F
          B935FE45CE1525E2042A4BE18D1715DACF5D3E772A78F7C477F75F07359D0E59
          CBE9D6769E15BB8213D12496C675908FA8863FFBE6B27E187C62D0BE1E7C11D6
          F4E96D1350F15CBABADE690B2212B6522C3B05D67A6E5DCDB47F7BD81A7F8DBF
          E49FF897FEC17E0FFF00D23BAAE67E087C01F117C6FD61A3D3956CB46B770B7B
          AACE3F77083CED03ABBE3A28F6C9039ABCCE55A963A97D597BCE9C169E705732
          E1EA580AF91625E6924A8C711564EFB7BB52E93EFADB4EBB1D1FECA975A6F833
          C756FE3CF103F91A469D750E9B048DC7997776DE4A819EBB2369A56F411FB8AE
          1BE2DDEDC69DF1B7C6577693C96B7507882F2586785CA3C6EB70E55958720820
          1045747FB5EF84F50F861F15BC0BE0BB31E4F826D23B7BBD2C28E6E267755B89
          A63FC52974C7A2A040001D63D567D3ED7F6A9BC9B56302E971F8C9DEECDC8062
          108BD25F783C6DDB9CE7B57567193ACB32DC1DE57954726FB2DBF2EA71F0AF14
          7FAC59FE67898C1FB3A508C62BAB49C9FF00E4CEEFE66BFC05F1C78E3C73F19F
          C21A55DF8BF5FBBB697508E49E2975299D5E28FF0078EA416E4154615A5FB557
          8066F87074DD264732C52EB3ABDF5BCA7AB453C90CA9CF7203ED27D54D7D8163
          F157E0BE8B74B73A7EBBE10B0B85C859AD63891D411838655C8C8247E35F3EFF
          00C141AEE1BF93E1E5D5B4C9716D3D9DCCD0CB19CABA3189948F6208AC2AD3FA
          AE595A97B55372716ECFB3D3F539B018F966DC5582C47D52542318CD24D5AEDC
          64DF45D2DF71E65E2EF8ED7B6FFB3EF847E1BE9904B690B5BBCDA95DBF1F6853
          732BA449FEC67058F7231D01CFB97EC33F066EBC356373E3FD5E0F2A6D460FB3
          E9904839F20B02F311DB76D017DB71E8457837C4EF095BCDF013E187892D4AB5
          DDBDA4D657E83AA23DDDCB5BB1F6263B819FF6457D39FB0F7C43FF0084AFE15C
          DE1FB8977DF787A6F29413C9B690968CFE0DE62FB00B5CF97479B1F0589DD457
          2FDC9AFC3F13D0E29ABEC786F113CAE2929559AABDFE36A4FE6D25FE1763E64F
          8AB1883F6B4D45214002788615452703874C0AC8FDA5758F1A6B1F14F506F1B6
          D4BD8FE5B58A07DF6C96F93B3C83FC4879E7A939CF3915ABF18AEA1B1FDAC358
          B9B89161821F1045249239C2A28742493E80537E25580B6F056BF16ABE26D075
          C78FC4725E787C697A82DD4F1DADC34CF3C4E072881842E01E0333E3EF1AE6FA
          BC6B61F1551D45170926A2DFC5AB4EDE6B73DEA58E9E0F1B94D3587738D5A5CA
          E6937C8ED16B5D9296CFE47D0DE2BD33408BF60CB98BC2B3B5D69BF63B699E57
          5C48F3FDB2233EF1D886C8C7380A3048C1AF8F62B7B89BE00FC497B557262B8D
          29EE193B41E6CA0E7DBCC30FE38AFA3BF640B6BAF1FF00C16F8B1E0824BC7240
          925A29E42CF2C5281FF8F4317E55E71FB255EE8F37C44D53C1DE25553A2F8B34
          C9F469E390ED1E63619393D1B2A554F66615E9E0B171A1986071B28DA2ACADE8
          DAFD4F97CC32DA95324CF7288CDCAA2939DFAB52519ABFCA2D33CD344BFB9D5B
          F66FF0FB5ECAF3B69DE22BEB3B3690926385A0B691A31FEC8725B1EAEDEB5EF8
          67966FD80C2C84958B5DD91E7FBBE66EFE6CD5E55F183C189F07B4CD0FE1A0BD
          86FEEF469EF2FAFA780FCAD34F2009F8F910DB923B1623B57B778E6D6C3C31FB
          12E95E1C37B6EDAEA9B5D52EEC524066852E257923691472B952A067AED3E95B
          E6F5218BCDB1D5E86B1E57AAF92FCCC720A53CBF86B23C2E2B49CAAC5A4F749B
          9C97E0D7DE7CFBF05BE22DD7C25F889A378991246B38A530DD46A389A06004A9
          E84ED6C8F43B4D6EFED1FF001A66F8CDE3E96EEDDE48FC3F619B7D32DDB8C479
          E6423FBCE464FA0DA3F86B63E1D786B4AF1A7C0FBED0A7511F88EEB5C6FEC398
          E3E7B85B6DE6DC9FFA6A88C07ABAA0EF59FE2FF86DA4F827E0C6FB96F37C6C35
          7B41A8458E34F8A5B79E48EDCFFD34202BB8ED941D41AF9DFAB63161344FD935
          CFE5A3E5FCCFBEFED0C9A79CFB4A96FADC65EC52EBAAE7BDBB72DF5F55D4F42F
          873FB57C5FB3E7C0DF0C7F6AE8979E275D5356D42288ADFF00946D9214B6F946
          E46C83E6F0380307D6BE98F811FB42785BF684F0FDE6A1E1EFB4D9DE583AA5F6
          997A17CE837676B02A70C8D86008F43902BF377E30FF00C90BF86FFF00618D6F
          FF0040B0AF72FF008261E81A88F11F8E35B30CC9A52D84567E695223799A50E0
          03D090AA491DB70F5AFDA32AC0D07C3D4717B4EDDF7F7ADB7A1FC8DC5D8AAAB8
          BB19865F073BE9B6973EFCA43D2968AE13C91945145002375A4A56A4A689614D
          6A7521E95426369A7AD3A9ADD69A244A28A28602352538F4A6D34014D6A75237
          4A081B45795FED35F166EBE0C7C21D57C43A7471C9AA6E8ED6CC4A328B239C6E
          23BED1B9B1DC802BE3EF0ABFC78F885F08F5EF8A70FC49BCB6B5D384F30B0133
          2199221BA560AA0228033818E769E9C57AB86C0CABD3F6AE4A31BDB5EACE1AD8
          B54A7ECD45B76BE9D8FD143D29B5F33FEC41F1EBC41F193C2BAFD8F89AE16FB5
          5D1648B6DEEC5479A2903EDDC14004831B7207208CF3C9F3DFD8E3E3878E7E22
          7C70D7F46F11F886E354D32DF4EB99A2B695102ABACF12A9F9541E0330FC69CB
          2FAB175549AFDDDAFF003EC258CA72F66D27EFEDF23ED96A4AF9BBC67E18F8F1
          73F1FA3BFD1356117C3A1A859BB5AFDA211FE8E047E78DA46EE4893BE79E2BE9
          1AE4AB4953516A49DD5F4E9E4FCCE885473725CAD5BBF5F40A6B53A91AB046A3
          68A28AA1303D2995C1788FE3CF81FC2FE35B1F085EEB919F12DE5CC36B1E9D02
          34922BCBB766F206132194FCC4706BBDAB9425049C95AFB19A9464DA4F60A28A
          2A0A1A7AD3D638D6DEE2EAE6E22B2B1B6432DC5D5C3848E241C96663C0A61EB5
          F2CFEDDDF122F2C5B43F0058CCF059B5B2EA7A88438F3DD9888D1BD942938E84
          953D857979963965F8775AD77D3D4FAAE19C8A7C4599430317CA9DDC9F64B7FF
          0025E6763E3CFDB5BC09E119A5B4F0DE9975E30BC8C95FB54AFF0066B4CFAA92
          0B37FDF201EC6BCD7C2BFB6FF8DFC43F13BC3515DB69FA3786E4D4618AEACAC2
          D8056899C2B1677DCDC039E08E95E0FF000A3E156B5F18FC5D1F87B4236C978D
          134CD25DCBB238D1719624024F51C004D7D3BE18FD81B4BB178E5F12F8E1E591
          482D6FA2DB6307DA5727FF0041AFCFA189CDB33973D3BB49F4D11FD0F8ACAB83
          385693C3E2ADED1C7795E52D74BDAD65E4EC8FA8750BBB5F0BBEAFAA5F1DB61A
          44135ECC7FD88D4B7F415F94BE2AF115D78BFC4FAAEB77ADBAF351BA92EA539E
          373B16207B735FA13FB6078C13C3DF01B5A6B67904DAD5C5BE92B2498DE401BE
          4271EAB1907EB5F067C27F0A0F1CFC4BF0C682CA5A2BFD421865C768CB8DE7F0
          5DC6B7E22AF2AF88A7875D12FBD9C3E18E0A96032CC4E693DA4DEBFDD82BFE37
          FC0FD0FF00837E111E00F817A26885365CB68D3DFDD8C73E74D1B3907DD410BF
          857E6337DE3F5AFD70D5A613BEB6CA00416770AA0740046C07E82BF23DBEF1FA
          D4F10D1587587A51E91FF236F0CB193CC2798E2EA6F39A7F7F31FA6BE13F09A7
          8E7F65DD13403AB0D19F51F0C5B426EFC933148F1BA43B0119CA823AF7FC2BE3
          A3E15F805A41FF004BF1B78AB5EDBD7FB2F4C4B7DDF4F37A7E35F6AFC24FF923
          3E0AFF00B15D3FF44B57E5D37DE3F5A59BB8D2861E5CA9B71EB7E9F327822955
          C662332A4AB4A118D56ED1E5576DBBDDB8B7D15ACD1F7D783FF648F841E27F0B
          E8BA85ADBF88648B5AB44B8B796EEF1166895C704841B770F4E47D6BE17F1468
          E3C3DE25D5B4A5985C2D8DDCB6C261D1C2395DDF8E335F7ADDFC63D33E0BFECC
          9E0AD55A78E5F115CE8315BE95659058CA5399587F713393EA703BD7E7DCD34B
          7970F2C8CD2CD2B16666392CC4F24D70E6AB0D18518D18A52B5E56F33E8B82E5
          9B56AD8DAD8EA92952E771A7CCEFF0B69B5E5B2F37E87DBBF0CB7FFC301788FC
          CE9E4DEF97FEEF9A33FAE6BE1F4FBC3EB5FA29ABF84A4F87FF00B1ADFF0086E7
          4F2EEED3C3AD3DCA63949A67123A9F705B1F857E755679AD395254212DF911D1
          C1989A78C9E635E97C32AF2B7A687EBEC7A6DC5AC76EBA7E976AB08863DACB6E
          9FDC19E71EB5644BE208509589635519384418AFC9F7F8A1E329142BF8B35B65
          03001D466231FF007D57D33FB0BDEEB3AEEBDE33D6752D52FAFE0B1D352D156E
          6E1E450F349C10093CE223F99AFA8C16770C456861E1455DE973F24CFBC3EAF9
          5606BE655B1B750D6C93EAEC96FE67A5FED6FF001DFC63F0AF43F065CF873508
          AD26D49EF05CB496D1CBBC4662D98DCA718DCDD2B84FD97FF69EF885F12FE2FE
          9DA16BFAB4177A64D6F7123C49650C649589997E65507A8150FEDF9FF22CFC38
          FF00AE9A87F386BC9FF632D4ACF47F8EBA7DEEA1731D9D95BD8DE4935C4CC152
          3410392C49E800AF2F1B88A94F3774D4DA8F32D2FA5B43EB324CAB0588E09FAD
          4A84655BD9D47CDCA9CAE9CADADAF7DAC7D51FB5D6A76777FB3DEBD2EB51C12D
          C35C5B43A6B3A28713F980B6C38EBE587CFB66BF39D46580F7AF6AFDA7BE3D7F
          C2E3F144567A4F990784F492D1D844C306663F7A771EAD8E01E83D093553F65C
          F8492FC56F8A164B71191A0E92CB7FA94CC3E5F2D4E563FAB918C7A6E3DABCEC
          CAB4732C7DB0EB4D12F3F33EAF857073E14E1D75332959ABCE57E974AD1F5D16
          9DDD8FB7BE276BB3FC3FFD9E67BB934CD3B53BFF000FE9360238355B613C6243
          E5C6FB94E3B13DC57C8FA07ED3A3C43AF69B61AA7C2EF87B731DD5CC703C8BA2
          61C06600904B9E79AFA9BF697BA37DF00BE224E78DF15B103D07DA63C0FCABF3
          B3C1471E31D08FFD3F41FF00A316BD2CEE73C2E2A14A0ECB951F27C0384C3669
          94623178885E5ED276776ACAC9F46BB9FA15F19BE0FF00C2ED37E1EF8C6FAEFC
          21A4E91169F632BC37D671F9122CFB71105DB804972A003C1CE0D7E6E57D03FB
          58FED07AC7C50F145C78763B3B9D0FC3DA5DC328D3EE14C734D30E0CB32F63D7
          0BD81F535E73F03FE1B2FC59F89DA2F86A4BD8AC20BA90B4D2C8E03796A0B32A
          03D5C80401F8F406BCACCAAD2C5E25430D04ADA76BB3ECB84F078BC8F289E273
          6ACE4DDE6D36E5CB14B6EBADB5763EDCF035FDCF80BF633B4D449786FAD7C357
          77103F464699D8C4C3FEFB06BF3A0F26BF4DBF6808635F80DE3BB2B1845A5AD9
          E9B141040A30238A391405C7D057E6527DF5FAD7567B09509D1A0FECC51E4F87
          55E18EA38EC7C559D5AD27F2DD7E6CFA1FC11FB1178CFC61E15B1D6A6D5746D0
          FEDF0ADC5B5A6A133895A36195660AA4282304753EA05794FC52F847E25F83DA
          F2E95E24B210492A79905C42FBE1B84E9B91875FA1C11C640CD7E9DEAD025ADD
          25BC7FEAA18628D3FDD08B8AF9EFF6E3D3E3BCF82DA06A0EA1AE2CB5CFB3C6E7
          AAC7240ECC07D4C6BF957A998643470D81FAC536F9924DF99F29C37E2166199E
          7AB01898C7D9CDB4ACACD6F6D7AF9DCF3EFD84BE224F6FE2AD4FC0575297D3F5
          881EE6CE33CF97751AEE247A6E8D5B3FEE2D1FB7E71E2EF067FD81FF00F6ABD7
          91FECD1A849A6FC7BF034D1B1566D4E28491E8E7611F931AF62FF8285208FC75
          E1451D174A61FF00919EBC9857954CA274E5F664AC7D757C053C371C50C4D356
          F694A4DFAABABFDD638BFD90FE2ECDE06F89B67A36A57B2FFC239AE0FECF9A29
          24263864723CA9403C021F009F4627B57DD7736CF6B73240E3E746DBF5AFC9B5
          628C19495607208ED5FA1BE14FDA5B48FF00867A83E20EAD2A5CF8834D8FFB32
          5B263F35D5FAAFEED8FB32E1C9EC0363A57A9C3D9A470F0A946B3D12BAFD4F95
          F12B856AE3B1187C76061794DA8492EEFE17FA37E876DE26F89DE02F04F88E0F
          0DF88BC4F0E91AF490ACED1CD1B18A30DF755DC0C23639F988E08F519E922B45
          BDD3D750D3EEADB54D3D8656EEC66596361EA0835F955E26F126A1E30F105FEB
          5AB5CB5DEA37D334F3CCFD5989FD00E807400015F4B7EC05712FFC25FE3287CC
          7F28E8C58C7B8EDCF9A8338F5E4D7560788AB62314A8CA2B964F4EE8F233FF00
          0D70995E4F2C753ACFDA538A725A34DF5B6CD7E27D6F451457E847F3C0514514
          0051451400514514005145140051451400514514005145140051451400514514
          00507AD141EB4005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          1451400514514005145140051451400514514005145140051451400514514005
          14514142AD2D22F4A5A0614514A3AD26343AB2AF75B5898A4003B0E0B1E95A17
          6C56D662BD421C7E55CA55C229EAC19AD69AEB8902CE0143FC40608ADC072323
          915C6D747A2DCF9F68109CB47F29FA76A752292BA1A669514515CE5853874A6D
          3C74A00A9A86A09A7C41986E76FBAA3BD604BACDDC926E12941D957A559F1203
          F6A889FBBB38FCCD64575422AD721B674FA36A9F6E5292604CA33C7F10F5AD4A
          E2ECAE4D9DD4728FE13C8F51DEBB2471222B29CA91906B0AB1E57A171771D40E
          B452AF5AC4B42D55D52CBEDD62F18FBE3E65FAD5AA70E94D3B3BA1EE70041048
          3C11456B788AC3ECD75E728FDDCBCFD1BBD64D7A117CCAE73B5676373C337FE5
          4CD6CE7E57E57EB5D3D79F23B46EACA70CA7208AEDF4EBD5BFB4494753C30F43
          DEB92B46CF991AC1F42D52AD252AF4AE666E2D145149015753B217F65243FC44
          654FA1ED5C2B29462A46083822BD1475AE4BC4F61F66BDF3946239B9FA377AEA
          A32B3E531A8B4B99DA7DE3585E453AFF0009E47A8EE2BD06391658D5D4E55864
          1F515E6D5D77852FFCFB56B663F3C5CAFF00BB555E375CC854A567637681D68A
          55EB5C0CEA168A28A450E5E94B40E945001451454B290E1D2968A290C281D68A
          55A005A728A6D3C74A0682940CD25380E293285A28A29005145281487B0018A5
          A28A900A28A28185145140051451400504668A2810DA29C4669B541B8514514C
          4348A4A711914DA6804614DA7D32992C43D69295BA525020A43CD2D1400CA29D
          8A2815C927FF005F27FBC7F9D329F3FF00AF93FDE3FCE9942D8A7B853874A6D3
          A810A3AD3A9ABD69D414829F4D1D69D52C6145145000064D3A91696A58C2B07C
          7F7FAB697E04F115EE83E51D66D6C65B8B41347E62B3A2EEDBB7BE4023F1ADEA
          55628C083823BD6738B9C5C53B5CE8A15151AB0A8E2A4934ECF676E8FD4FCCAF
          1B7C7EF8A5F17F469742D4EEA5BED2EE1D5DECACB4E8D43953B97944DC70403D
          6BDE7F631F80FAAE9FA5F8AF56F1669971A769FADE9EDA445697286396686439
          95F6919030140247393E95F617DA25FEFB7E74C2C58E4924FA9AF9DA19372565
          5EBD5736BBFF00C3B3F50CCB8ED57C04B2FCBB091C3C64D37CAFCD3D2D18ABE8
          B53F33BE247ECA7F10FC03AFDC4167A05FF8874C12136DA8693034E244EC5950
          16438EA08EBD091835C9BFC19F8937F26F7F0478A277E9B9B4AB863F995AFD5D
          0C57A123E94BE6B820EF6C8F7AE69F0E51726E33691EB50F14B1F0A718D5C3C6
          525D6ED5FE47E7D7887C05E23D7340F1768361A1DFDDEB56DA5F8484DA7C56EC
          678B6DA5D06DC98C8C1E0E7A57BC7EC4DE0AD77C0DE04D7ECBC43A55DE8D7B3E
          A02E2182F2231BC9188D14B007B0240FC6BE41FDBEBE1A5F7C30F8D771AE69F2
          DC41A2F8A90DF4452460AB38389E3FC188703A012803A579F7ECB3F19A5F843F
          1BFC3FAEDFDDCBFD91339B0D4B7B923ECD2FCACC7FDC3B5FFE002BF455C2D1C4
          386674AADDA824A36DF9636DEFBE87E47578EEB47055B23AB4128D4AB29B95DD
          D734B9B6B6C7E83FEDA3F09BFE162FC36D3B5BB587CCD5BC2B7F1EA0840F99AD
          99D45C2FD000B21FFAE66BE60F8A1FB3F7C43D73E2878B2F6C3C2D79756B77AB
          DDCD04A85312234CC55873D0820D7E8E5C5B5BDEDBCD6D711A5D59DC46D1491B
          7CC92C6C3047B820FEB5F8CDF187C09AB7C00F8E5AAE8B6B2CF0CFA46A0B73A6
          5D0CEE68B7092DE407B9C6DFC411DAB8BFB1A1C454E385A955C3D9DDAD2F7BDA
          FF0073FCCE8CA38B711C195AA62F0D4554F6A945DDBD396ED6DDFF0043D9B4DF
          D94BE295DEA16B0CBE0FBFB78A49551E670A150120163F3741D6BE90FDB3FE0D
          F8A3C772782E1F08E8371AADA69B6F3DBB8B7DB888663080E48ECA7F2AFA5FC3
          FA8DD6B1E1ED2750BEB63657B776505C5C5B30C186478D59908F6248FC2AF1E9
          5F250C8A8D3A53A3CCFDEB76E87DD627C42C7E271D87C74A9453A5CD65AD9F32
          B3BEB7D16C7E7A5DE93A9E8BE30F037C2AD7ACE5B3B8F127841F4D96D586E6B6
          BD1A85E4F692305CE30DB413D925726B9BFD99BC5BAD7C36F8E7A55B4165733C
          9777074ABFD3A342646466C37CBEA8C03FFC039E335FA4E2C6D46A5FDA3F64B7
          FED1F2FC9FB6792BE76CFEEEFC6EC7B6715CBE89F097C2FE1DF881ADF8D6CAC7
          1E20D5C0134AF82B0F187318FE12E4658F53F89CF463F2EF6F2C2CB0FEEBA694
          5BEE96CFF431C978B6385A199D1CC21CF1C4B94E315B294B46AFDBADF756EE7C
          5FF1FF00F67BF88BE25F8C9E2CD574BF09EA17DA75D5F34905C44A0AC8A40E47
          35C1DAFECB1F15EEE4089E09D454E719976463F36602BF4EE9B2388A29247711
          C31A9791DDB6AAA8E4924F000F535C35387A8D49B9B9BD5DFA1EAE1BC4DCC70D
          4218785085A2925F17456EE78E7ECBBF04AEBE08F826EA2D56489BC41AA4C971
          76B030648150111C5B870C46E7248E32D819C64FCDFF00B577ECE1ADF863C697
          9E2DF0D699717BE1FD52537520B38CB3594E4E5C32AF210B1CAB7419C7619EFF
          00E3E7FC1417C2FF000FFED3A4780D21F176BEB946BF627FB3EDDBD4118331FF
          00770BFED1E95F06F88BE3F7C44F14F8C9BC5379E30D5D35DC148EEAD2E9EDCC
          284E764610808BFECA802BECE9F074B1F848D17FBB8C7E16F7FBBB33F3FC3F89
          189CA737A999BB55954D271DA36E893D6CD74DFCCF5CF0A7811EDD65F1978EE2
          B9D37C1F60FE75D5C5D8292EA320E56DA0DD8324921182470A0962401CC5E00D
          775CF8C1A0FC65D6BEC535EEA7A95E69B726D6CA2693CB4F366DA8AA064222ED
          51E800ABBF0B3F662F8B3FB52DCD9EBFE31D7353B3F0E63F77AC7882692E2695
          0F516F1BB6581E39F957DCE315F7E7C19F813E0FF809A34963E14B068EE67551
          77AA5D36FBAB923A6E6E028E4FCAA00FC79A4B25C16519757C046A73D6ABA392
          5A249EDFD6B735C6F1BE639F67784CDEAD150A38777842FBBEAEF6EBA6B64ADB
          1F2FFECF7FB3B3FC51F015C59788AEB5AF0AFF006478860D4E17B587C9B87710
          B01B19C7CB83CEEC1E40ADEFDAE3E15F87FE1AFC24B45D02D2E4DCEA9E21FB6E
          A37B7770F713DDCDE4CB99246638CFCC7EE8039E95F62BCD24830CECC3D09CD2
          C77124208472A0F615E3BC254FECDFECEF69EEFF00C1BEC74FFAC507C47FEB0C
          A82E6BA7CB7ED1E5DEDA7DC7CC3FB20F81FC37E30F81500F11786F48F107D9B5
          9BB300D5AC63B9F2498E0DDB37A9DB9C0CE3AE067A57D2363656DA5D8C365636
          B6F616508C456B6B12C51463FD955000AB52CAD20018F0093C0C5475D784A2F0
          D8785072BF29E16718F59AE615B1EA1CBED1DEDBDBCAF6570A28A2BB0F1069EB
          494A7AD250007A5369C7A5368130A43D29690D5886D2352D2350881B45145360
          07A5369D4DA100521E94B487A5324F96BFE0A2AC47C08B100E01D6E007DFF753
          55CFD8B741B3F147ECA5168DA8234961A8B5FDA5C22B152D1C8ECAC011C83827
          9AA5FF000516FF00921361FF0061C83FF454D5BBFB0671FB38E8FF00F5F775FF
          00A34D7D15DACAA2D7F3FF0099E3257C7B4FF94EFF00E13FC00F077C127D524F
          0AD9CF6AFA8AA2DC19AE1E5DC1376DC6E3C7DE35F18FEC07FF00271DE27FFB04
          DDFF00E94C35FA28CC191B041E3B57E75FEC07FF00271DE27FFB04DDFF00E94C
          35584A93AB87C4CE6EEECBF5162611A75A8462ACAEFF0043DBBC73FB58788BC3
          1FB505A7C33B7D274C97499750B1B43772093CF0B3A44CC786DB91E61C71D857
          69FB53FED187F67CF0C69B35969F16A5ADEAB2BC76915C311122A005DDB1C9C6
          E41B4119DDD78AF96FE2F7FCA4374EFF00B0DE8FFF00A2EDEBA1FF00829748C7
          5BF01A124A2DBDDB01EE5A2CFF00215D30C1D19D6C345C74946EFCDDAE613C4D
          58D3AF2BEAA565E5A9AFE23FDA97E38FC37F0BF877C63E27F0CF86E4F0DEB851
          A08E0122C815937AA93E61D859012321B183919E2BE8DD6FE31A49F002EBE246
          896E927FC4A4EA505B5D670182E4A3E08E8720E0F6AF8D3E377C55D47E2FFC0A
          F07F83F4AF01F89E0B8D2DED266BC96C59A19563B6788942B92725C11ED5EDBE
          1EB1BDD33FE09F5796BA8DBCF6979168B7AAF0DCC65244FDF4B8054F238C54E2
          30D4D429CE5051973D9A5DBEF1D1AD3E69C549B5CB7D7B9CBF833F6BBF8B7F14
          7C13AF5F785BC0BA5DDDF6927CDB9BBF30882287613858DA40D24876B1C03C00
          38248AEEFF0064DFDA7F5BF8EB6DE21D3F5AD3ACE1D6F4C8927864B20C91CEAD
          9186566382180E41C1DDDB1CF9EFFC13E803F0ABE227FD761FFA21AB93FF0082
          6EFF00C946F16FFD8317FF0046AD6D88A143931118C12E4B59FA99D1AB579A8B
          949BE6BDFE4798F8DF5BF1E5C7ED616FA96A7E1FB3B5F1F0D52C1D3468E75301
          99522F2537EF230C021277F1B8F23B7DD1E3CF8E1AD7C22F811078BBC63A1436
          DE29908B73A45BCC0C42E199B68DE0B7CBB1771C13D08AF94BE297FCA42ECFFE
          C3DA4FFE8AB7AF67FF00828E48CBF077414070ADAEC648F5C413D5E2230C454C
          2D394559A5F96DE9F8F99145CA8C2BCE2F54DFFC3FA9C78FDA87E3A9F865FF00
          0B37FE11DF0CFF00C221E6F978F2E4DFB7CCF2B7E3CDDD8DFF002E7D7B62BE9A
          F80DF17ADBE377C38B1F13436A6C67777B7BAB5DDB845321F9803DC10411EC6B
          E28D37E2FDCEADFB22C7F0DAC7C13E22BDBB922289AA5BD997B56FF4C331208E
          4F00AF4EA2BDFF00FE09FBA36A9A17C1CD5ED755B0BAD3E6FEDC95D22BB85A26
          DA60839018038C83CFD6B9B1D87A71A139F228B52B2B7589B616B4E55631E66D
          38DDDFB9F4C9EB5F257EDDFF000EB507D7348F1E5A42F3E9373691D8DDC8833F
          679D09C6EF40CA463DD4FA8AFAD9BAD24F05A6A5A75DE99A9DA47A86957B1986
          EAD26194910FF5F43DABE1334C02CC30CE95ECF75EA7E93C2D9F4B8733286314
          79A3B49774F7F9F547E577847C5BAAF81BC4763AEE8976F63A9D948248A64EC7
          B823B8232083C1048AFD21F841F17B4AF8EBE11FED8B054B4D76D005D574B53C
          C6FF00F3D13B946E483DB907915F19FED25FB3ADDFC1AD65751D37CCBFF07DFB
          9FB1DE119681BAF932FA30EC7F880F5040E03E167C4AD5BE13F8DB4FF11E9129
          59ADDF13424E12E223F7E371DC11F91C11C815F9B607195F26C4BA75169D57EA
          7F4EF1064980E38CAE38BC1C939DAF097FEDB2F9FDCFE77FA8BF6FBD4DEDFC25
          E00D314FEEEE26BCBA917DD3CB553F93B57937EC4FA7ADE7ED05A34EEA1C595B
          5D5C807B110B283F9B57A5FEDF77369AE689F0BF5ED3496D3751B4B99A127B2B
          88245FD1FF004AF1DFD93BC6361E0AF8E7A05DEA970B69A7DCF9B652CEE70A9E
          6C6CAA58F61BCAE49E839AD7195632CDFDA4B6E68FDDA1C391E1AA4381E54292
          F7FD9D556EB7BC935EBD0FD0727363AA1FFA71B8FF00D16D5F934DF78FD6BF5C
          2F74ABAB1D3F5569223E50B2B81E60E54FEEDB1CD7E47B7DE3F5AF4B8AA4A556
          934FA33E6FC228CA387C6292B7BD1FCA47EA2FC24FF9233E0AFF00B15D3FF44B
          57E5D37DE3F5AFD45F849FF2467C15FF0062BA7FE896AFCBA6FBC7EB5C79E7F0
          B0DFE1FF0023D8F0F3FDF335FF00AFABF3916B51D5EF7576B737B752DD1B7852
          DE1F35CB7971A0C2A2FA003B0AFA13F63FF812FE35F1347E32D72DCA785F4594
          49189178BDB953948D73D554E0B7E03B9C3BF67EFD91AFBC7B6F65E28F17C8DA
          3F849F12C30A9FF49BF5EC107F0A1FEF1E48E839DC3ED08A2B4D3B4DB3D2F4BB
          38B4DD22CA3115AD9C03091A8FE67D4F7AD726C96A62A6B115D5A0B5F5FF0080
          7371CF1CE1F2DA13CB32D92755DD36B682EABFC5F97A9CC7C70B97BCF82FF112
          690E5DF4C727FEFA15F98A064815FA6BF197FE4877C40FFB0537FE842BF32D4E
          187D68E2856C5C52FE52BC266DE5159BFF009F8FF247D2F17EC11E34D91B4FE2
          7F09DB1750FB24BD9830046464187DEBDE3E09FC239FE04FC3FD4F4EBCD5B4CD
          5356D4B5249DDF4C94BA2C291E141C8073B8B76C722B4B53F8E3F09B55922B96
          F881676CE618D5A3FB2CAF82140EA17DAAB5AFC5BF84F7B7705AC1F10E09AE27
          758E38D34E9C96627000E3D4D7BF81C364F83A90AF1ACB99799F9F6799AF1867
          386A981C46165ECDBE94DAD9DD743CB3F6F6944DE14F86CEBD19F503FAC35E01
          F01BC13FF0B17C6979E1E55DD3DE6937BE40FF00A6CB0B3C7FF8FAAD7D09FF00
          0502D35748F0FF00C3CB359BCF114BA80F336EDC9CC04F1935E5FF00B0F304FD
          A1F4563D05ADD13FF7E5ABE5B318C6AE7128F4725F8A47EA9C3756784E078D68
          692842A35EAA526782BA18DD95810C0E083DABF467F661FEC58FF67CF0FC9A05
          B25AFDA24917556073249768D825CFA11B481D8115F1F7ED4BF0FF00FE15DFC6
          AD7ED214DBA75FC9FDA56640C0314D96C0F656DEBFF01AF57FD843C7E23D5F5D
          F015D48047AA47F6FB00C7A5CC63E751EED18CFF00DB3A5934D60B3154EAAEF1
          F997C714659F70BFD6F092764A352CBAAB6A9FA5EFF23DD7F688FF009375F1F7
          FD70B6FF00D298EBF3D3C13FF239683FF5FF0007FE8C5AFD0BFDA2063F676F1F
          03FF003C6DBFF4A63AFCEFF0A5D4563E29D1EE67711C10DE43248E7A2A87049F
          CABAF897FE4611F45F9B3C9F0B537C3D5D2FE797FE9313EFCFDACBE03D97C57D
          1B52D6F48B5483C61A3C6D27EE97075081464C6D8EAEA3EE9FF80F718FCF7D37
          51BAD1B51B6BEB29E4B5BCB6916586789B6BC6EA72181EC4115FA7BFF0BEFE18
          7F6AB6A29E3FD24286F30A6E6DC477038E78AFCD3F1B5ED86A3E33D7AEF4A5D9
          A5CF7F3CB68BB76E226918A0C76F948AC33DA78655215B0F24DBDEDDFB9D9E1D
          62334786AD97E654A4A10F85C935A3BFBBAF4EC7E8AD978957E3B7ECD7AB6B31
          A05BED57C3F7505CC49D16F22520F1D8332EE03D08AFCD11F2B7D0D7DE3FB016
          A4CDF0BB5DB59FE7B5875A0407E571242AAC3F219AF8DFE2A7839FE1FF00C47F
          11F879D485D3EFA58632DD5A3DD98DBF152A7F1ACB3473C461B0F8A975567EA8
          EAE0E851CB735CCF28A7A28CD4E2BCA5FE5A23F4BF48D597C43E16F0DEB08DB9
          751D2AD6E73EED1AE7F1CD7847EDCFA9ADA7C22F0C698C7125EEB2F76A3D5628
          590FEB28AE8FF63FF19A78F7E0D5A688B209358F0E4CD6D2439F9DADE462D13F
          D012CBEDB6BC0BF6DCF1F5BF89FE285B6816332CF63E1BB6FB233A3655AE18EE
          988FA1DAA7DD0D7D26638F854C9E0D3D6565FE67E61C31C3F5B0FC6B5294A368
          D17295FC9FC3F7DD1C5FECB5A6BEABFB40F826144DE52F84E40F48D59C9FC029
          35EB3FF0507712F8E3C24E3A3694C7FF00233D67FEC19E147BDF887AD789DD71
          6DA1E9ECAAF8FF0096F37C883FEF91255BFDBF7FE46EF067FD81FF00F6ABD7CD
          4293864F3A8FED497E07EA188C646B71CD0C3C5FF0E94AFEAEEFF268F14F873F
          0B6E7E23F863C6577A7EF9351D06CE3D41205E7CD883112803D42FCC3FDDC77A
          E17CF944261F31BCA2DBCC7B8EDDDD338F5AFAB7FE09EF75F65F1878C5F68703
          4A562A7A10255C8FD6ACEBDFB1B4BA87ED0BF64B48DEDFE1EDD2FF006B3DE20C
          2C306EF9EDD4F67DDF281D429079C1AE48E5F52B61A9D6A2AF76E2FEFD0F6AA7
          1461B039B62F018E9A8C611538B7DB95732F5BEA96EEECF96B51F0CEA5A4E8FA
          5EA9796AF6F67A9891AD1DF8F355182B301E9BB233EA0FA57D23FB017FC8EBE3
          1FFB021FFD1A953FEDF5059D8EB9E04B3D3ED92CAC2DF496482DA31858E3126D
          5007D00A83F602FF0091D7C63FF6043FFA352BA30943EAB9AC28DF66BF23CCCE
          73279BF0757C772DB9E2DA5E5CD65F86E7D77451457EC87F1785145140051451
          40051451400514514005145140051451400514514005145140051451400507AD
          141EB40051451400514514005145140051451400514514005145140051451400
          5145140051451400514514005145140051451400514514005145140051451400
          514514005145140051451400514514005145140051451400514550BFD4C5B379
          7180D27727A0A695F602FD15CF2EA772AFBBCC27D88E2B6ED2E56EE10E383D08
          F4354E2D144EBD29681D28A818528EB494A3AD263438804107906B95BCB736B7
          2F19E80F1F4ED5D5564EBD6DB912703A7CADF4ED574DD9D8198B57B47B9FB3DE
          A82708FF0029FE95468E95D0D5D58476B4557D3EE7ED7691C9FC58C37D6AC570
          35676350A78E94CA7D00676B769F69B32EA3E78FE61F4EF5CC5771D6B91D4ED3
          EC776E807C87E65FA57452974264BA956BA4F0EDE79B6E6063F347D3E95CDD58
          D3EE8D95DC72FF00083861EA3BD6938F346C4A7667674AB4D5218020E41E41A7
          2D701BA169E3A5329F40D15B50B35BEB4788F5232A7D0F6AE29D1A3764618653
          822BBEAE6BC4B61E5CAB7283E57E1BEB5BD29D9F2B226BA9895AFE1CBFFB35D7
          92C7F772F1F46ED59140241047045754A3CCACCC93B3B9E874E1D2A86917E2FE
          C91C9FDE2FCAE3DEAF8E95E5C95B4675A77D428A28A4862AF5AA9AC58FDBEC24
          8C0F9C7CC9F5156D69D4EF67740D5D58F37230706ADE957A74FBE8E6FE1070C3
          D477AB7E24B0FB1DF975188E6F987D7B8FF3EB5935E9A6A71F538F58B3D29583
          28607208C834E5AC4F0BDFFDAAC7C9639921E3EABDBFC2B6D7A579538F2C9A3B
          A2F995C5A28A51D6A0B1D451450014A3AD252AF5A92875145148614E1D29B4EA
          0051D69D4D5EB4EA0A414FA68EB4EA9630A28A280003269D48B4B52C61451452
          185382D0052D00181460514500215A6D3E908CD00368A28A0029A460D3A90F4A
          684251451542614C3D69F4D6A004A69EB4EA46AA131A69B4EA69EB4121451450
          0145145003E7FF005F27FBC7F9D329F3FF00AF93FDE3FCE9942D86F701D69D4D
          1D69D40872D2D22D2D0521569D4D5A7548C28A28A06870E94503A51503414A3A
          D252AF5A007514528EB400A1682B4B454DCA3C23F6D0F845FF000B73E04EB115
          B43E6EB5A1E756B0DA32CC6353E6C63B9DD1EEC0EECAB5F90DD0D7EF786DAE0E
          33EDEB5F8EBFB5C7C20FF8531F1C35CD26DA1F2B46BD6FED1D33030BF6794921
          47B23074FF008057DD70E62FE2C2CBD57EBFE7F79F259E61FE1C447D1FE9FD7A
          1F7D7EC29F19FF00E16B7C16B6D32FA7F375FF000C6CD3EE771CB496F83F6790
          FF00C0414FAC64F7AF73D57C19E1DD775AB0D6353D034BD4757B018B4BFBBB38
          E59EDC673F23B02460F231D0D7E487ECA1F1B5FE067C60D3357B89186857BFE8
          1AAC63A1B77232F8F5460AE3FDD23BD7EC32BA488AF1BACB13A864910E55948C
          820F704578D9C611E0F14E50D232D57EABFAE8CF532CC4AC561D296F1D1FE8FF
          00AEA8733162493927B9A434515E01EB31B40049C0E4D727F12BE2B784FE1068
          6755F176B76FA45BB026189CEE9EE08ED1443E673F41819E48AF80FE3BFF00C1
          443C4DE34173A4F802197C23A2B650EA0CC0EA13AFA861C423D932DFED76AF57
          0797E231AFF751D3BBDBFE0FC8E1C56368E157EF1EBD96E7D97F1CBF6A4F027C
          05B6921D66FF00FB4BC41B731685A7B07B8248E0C87A44BD396E71D01AFCE3F8
          F3FB5DF8EBE3BCB2D9DE5D7F62786B7663D0F4E72B111D8CADD653D3EF719E42
          8AF1877BAD5EFCB334D797971264924BC92BB1FCC924FE35F62FECF3FF0004F3
          D63C562D75DF892F3F877476C491E8D1F17D703A8DF9FF0052A7DF2FD785E0D7
          D953C1E072782AD5DDE5DDFE8BFAF53E5E78AC5E67274E8AB47FADDFF5E87CCD
          F0B7E0E78BBE336BC349F09E8F36A530C19A7C6D82DD4FF14921F95475EA727B
          0278AFD11F803FB077843E150B6D5FC55E4F8CBC4E9870254CD85AB7FB119FF5
          847F79F8E84283CD7D11E10F07685F0FFC3F6FA1F86F4AB6D174983EE5B5AA60
          13DD98F5763DD98927D6B5DBA57CF63B39AF8ABC29FBB0FC5FABFD17E27B584C
          AE961FDE9FBD2FC17A2FF3FC019CB9C939EDF4A61193814B5C37C72F1E4DF0BF
          E0F78C3C556B817BA6D8335AB30C859DC88E2623B80EEA71ED5E0C20E72508EE
          F4FBCF5E52514E52D96A70FF001ABF6C3F879F03F549346D46E2EF5DF1047FEB
          B4DD21558DB9EC259188553FEC8CB0EE066B9CF861FB7DFC33F889AD41A45E8B
          FF0008DEDC384865D54235ABB1E029954FC87DD805F7AFCB7BEBDB8D4AF67BBB
          B9A4B9BA9E469659A562CEEEC72CC49E4924939A87A57E811E1FC32A7CB26F9B
          BFFC03E3659D57F6978A5CBDBFE09FBC122143861822995F3FFEC2FF00126FBE
          247ECFB6235399AE6FF41BC7D20CF21CBC912A23C449EF857D9F4415F4057C1D
          7A52A15654A5BC5D8FAEA55235A9C6A4766AE1451456650D6EB494ADD6928003
          D29B4E3D29B4098514515621948DD29691BA50894368A28A6C414DA753684014
          87A52D21E94C967CE3FB7BF876E75EFD9F2F66B685E63A6DF417B204192106E4
          66C7A0F3327D064F6AF06F839F1FBC1DE18FD8EBC53E13D43555B6F11B5B6A16
          96F60518BCC674611B290318CBF3CF1B4FB67F406E2DE2BB8248678D26864528
          F1C8A195948C1041EA0D795DD7ECA7F096EEFDAF24F036982663B8AC6AC91E7F
          DC560A3F2AF6F0B8CA31A0A8574ECA5CCAD6FD4F2EBE1AA4AAFB5A4D6AACEE7C
          E9FF0004D3D22EFECDE3CD5E5593EC8E6D6D6291B3B59D44ACE01F50193FEFA1
          5C67EC07FF00271DE27FFB04DDFF00E94C35FA09E1EF0D693E12D261D2F45D3A
          D74AD3A104476D6912C71AE7A9C0EE7B9EF589E19F855E0EF05EAD36A7A0F86B
          4CD2351991A292EACED96391D490C54903A12A0FE02B5A99946A3AEDC7F88925
          E56338E09C15257F82FF0089F0A7C5EFF9486E9DFF0061BD1FFF0045DBD763FF
          00052DD0EE1A3F02EB091BB5AA1BAB596403E5473E5B2027D4857FFBE4D7D73A
          87C29F076A7E295F12DDF86B4CB8F102491CCBA9496CA670E80046DF8CE542AE
          0F6C0AD2F14E85A3788F459EC35FB0B5D4F4C971E65B5E4424463DBE523AFA1E
          D4E398C635684D47E0567E7A5825826E1562DFC4EFF89F1CFC61FDA8A1F0D7EC
          F3F0F62F87FE2EB687C4CD1DA47770DAF9734D0C496C5644911836C3E66CEA01
          38E38CD7A76ADA9F8835BFD87B52D4BC537125D6B979E1F9EE679658D63660E5
          9932AA001F215ED5D0D97C0AF85FA3EA8B7D61E02D2166460EAD3C465008E842
          B12A3F2AF55961D3BC5DA35D69B7F6715D59CF198AE2D2750C8E87A820F51535
          6BD18A82A70DA5CCDBB5FD342A9D1AADC9CE5BAB24AF6F53E3DFF827D7FC92AF
          889FF5D87FE886AE4FFE09BBFF00251BC5BFF60C5FFD1AB5F71F85FE1E7867C1
          3657567A068561A45ADD1CCF0D9C0B1ACA718F980EBC7150784BE177847C0777
          3DD7877C39A6E8B713A7972CB656EB1B3AE738240E466AEA66109AAF68BFDE5A
          DE5622183943D96BF05FF13E09F8F77F6FE0DFDBB6DF5AD564FB2E9B16A9A5DE
          C93B29216258E10CDC75036B74F4AF6BFDB9AEECBE22FECE7A6788BC3D729AB6
          956FABC571F6BB63BA331ED961273E81D82FD6BE80F1E7C1AF057C4E9A19BC4F
          E1CB2D5AE214F2E39E552B2AAE73B77A90D8C92719C727D6B4F44F02787FC39E
          138FC31A7E936D1787E3478869EEBE64455D8B3290D9C8258939F5A1E3E9FEE2
          693E6A765E4D7F9896127FBD8B6B96777E773E34F087ED09A5F80FF625B4B5D0
          BC4D6B61E39B42D6F059AB235CA335E162DE5B0395F2989DC4639C6735EEBFB1
          C78C3C5DE3DF844DAEF8C2FE5D46F2EB509BECB3CB0A479B75545180AA011BC4
          9CD7423F65DF8522F7ED5FF083693E6E73B7CA3E5FFDF19DBFA576D25F5B68D6
          D1D869D6F1410C0A2348E24091C6A380AAA38007A74ACF1188A35A128D286B29
          5DB76D3C97917468D58494AA4B44AD657FBCDB3D6BCBBE3AFED2FA47C0CF12DB
          68D2F83AE75992E6CE3BD86E1AFBC98DD58B0C7DD6E41522BB0B7D76749079B8
          913BF1823E95C47ED17F002F3E3F691E19B9D1B52D2F4ED474C33432BEA32B20
          9217DACB8DAAC72083E9F78D7C86711C553C373615FBC9F4EA7E85C24B2AA999
          C69E7093A2D3BB6DAB3B69B6BE5F33E7FF008AFF00B68DFF00C49F03EA7E16B7
          F0969DA4D86A015657799AE2450AC1815C8501B2A39C57CDC064E075AFAAEDBF
          E09F9E22247DA7C67E1E8877F25A493FF6515E93F0C3F631F09FC3ED6ADB5AF1
          06B6DE2DBCB5712C16315B7936C241C82F92C5C03CE381EA08AFCEE596E678FA
          A9D68BBF7763FA468F14F0970E61254F2FA8ADBF2C799B6EDDDFA75649F18FE0
          EEA1E28FD937C29A6456EF27897C31A6DB5FB5B01990A18B134407AA820E3FD8
          0057C0FD0D7EB736A7703503781F13139CF6FA7D2BC97C7FFB2C7C34F891A94D
          A9BC17BE17D4E762F33E92CBE44AC7AB18D81009FF00671EF9AF7734C82AD4E5
          A987D5A4935E87E7DC23E21E1B02AAE1B334D465294A2D6B6E67769AED7D51F0
          4C5F103C51069EB611F88F568EC55760B65BD944617D36EEC62B06BED8BBFD85
          FC0F6AC0BF8DB56543D07D8949FCE989FB157C3A5FF59E2FD724FF0072DA35FE
          62BC0FEC1CCA5BD37F79FA547C42E18A5770AD6BF68BFF0023DABE12DC6DF84B
          E0984F46F0A211F5F25ABF305BEF1FAD7EA66831E89E19B1D0746B59EEA7D2B4
          DD2FFB37CE91479AC023283C719E457905B7EC4FF0A6E23120D6BC56E0FA4D6E
          3FF6957D166B94E2F134E82A71F86367EA7E65C23C5D94E4F89C7D4C5CDA5567
          78D95EEBDEFF0033D3FE15FF00C91AF87DFF00603B7FE55D1D47A7E93A77873C
          3FA2E87A4B5CBD86976696913DD953232AF00B150013F402A4AFB5C1D3952C3C
          212DD247E1D9B57862B1F5EBD2778CA526BD1BB9CA7C65FF00921DF103FEC14D
          FF00A10AFCCAAFD5BD4B48D2FC4BE1DD6342D616E1B4ED4EDCDBCBF6660AFB49
          07827A74AF281FB1E7C221FF002EFAF9FADE2FFF00135F1F9E6538AC762154A2
          B44AC7ECDC03C6195F0EE5D530F8D72E694AEACAFA592EE7E7DD7A87ECC5E19F
          F84AFE3CF836CD9774715F2DE499E9B6106539F6F931F8D7D6E3F640F8423FE5
          CB5C3F5BD1FE15BDE0DF82DF0F7E10EAF2EB5E1DD3B525D51EDA5B68E5BAB9F3
          11378C138F5FFEBD78B87E1DC6AAD0734AC9ABEA7DCE67E2664B5B055A9619CB
          DA4A3251BAD2ED59753C83F6F8BA37DE1CF87D707FE5ADCEA6FF009BC26BCCBF
          622FF9383D23FEBD2EFF00F44B57D63E36F03782FE28E87A2D8F8AEC6FEE5B4A
          699A06B49FCA1FBC2A5B3EBF756A2F863F063E1AFC3AF14C7AF787F4ED521D52
          08A448DAE2EBCC5C3A956E3E86BD7C564B8BA9993C5412E4E64FE4AC7C6E59C6
          995E17855E5155CBDAB84E3B69793935ADFCF5D0E0BF6D8F87EDE2AF86BA678B
          6D63DF7BE1E97ECD77B472D6B291B58FFBAF81FF000326BE2EF08F8A2FBC15E2
          7D2F5ED364F2AFB4FB84B889BB654E707D41E847704D7EA5B58596B7637FA36A
          69E6E99AA5BBD9DCA1FEE38233EC467AF6AFCD3F17FC24D7FC2FF14AF3C08967
          2DEEB11DDFD9ADE38939B80DCC6EA3D19486F6079E86BCBE23C14A86296229AD
          25F99F57E196774B1D9554CAF14D5E95F7EB07BFC93DFD51F73FC6FF0012E9FE
          3AFD94BC51E28D258369DAB595ACEAB9C98A4FB4C6248CFBAB641FA57E7157E9
          4FC3CF81BA3F82BE085D7C39F125DDDEA87537173A97D925DA90CB946F2E227A
          01B1727B9C9E3381CD1FD8EFE111FF00961AFAFD2F17FF0089ADF1D95E3F3174
          EBF2A4F9527AF53CBE1BE2DC83862189C0FB494A1ED64E2D2BFBB649755D8FCF
          BA00C9AFD021FB1C7C230D9D9E213EDF6B4FFE26BA5F087ECF7F0B7C07A845A8
          69BE187D435084868A7D5A769C46C3A109F773EF8C8ED5E7C386F1D2959A497A
          9F535FC53C869C1CA9A9C9F4564BF1B99DFB327802EBE1B7C10B0B7D4616B6D5
          75ABA6D52685C61E28CA848D58762557763B6E22BCB7F6E6F85D2EA50E99F11F
          4EB7DEBB16C358D839571C452B7B107613DB083BD7D4375752DECED34CDBE46E
          A69A3ECF3DADD595F5AC57FA6DDC661B9B49D4324A87A820D7DC57CA21532F58
          38BD63B3F33F02CBF8C31184E21967735A4DBE68FF0075F4F974F348FCAFF0FF
          0089F58F09DEB5E689AADEE9176C86333D8DC342E54F55DCA41C1F4AA004D7B7
          2000F3CF2B74E599D89FD4935F67F8CBF60ED1357D4E4BBF0978B5749B390EEF
          ECFD5612E61C9E42C80F20760413EA4D76BF07BF656F09FC1FD4E2D72FEFFF00
          E12EF1140775B1687CBB5B57ECE14925987624F1D400706BE029E458F9D454A5
          1B2EFD0FE8BC47887C3D430CF174AA734DAF8526A4DF44DDADA7ABF2B9D07C08
          F8627E0F7C27D3F47BA8BCBD7B5261A86A80FDE4761F2447FDD5C023D727BD7C
          FF00FB7EFF00C8DDE0CFFB03FF00ED57AFAEE799EE65796462EEC7249AF34F8E
          DFB39E9DF1DEFB43D424F177F604DA7D97D94C274F3701BE72D9CEF5C75C77AF
          B4CD32E9ACBA385C346ED58FC2B8578928AE269E6F9AD4E55252BBD5DAEB4565
          77E47867EC06FF00F15B78C13D7442DF94D1FF008D7D8BFDA73FF67FD8B7FEE3
          76EC77FA7D3BD793FC05FD9AED7E05EBDADEACBE308B5D17BA6BD92C02C4C041
          2E8C1B25DB3F7318F7AF4EAE9C870D530F84F675E36699E771F66984CD739962
          B01539E0E3157575B2D77499F237EDF8FF00F157F8353D346CFE72BFF8537F60
          2FF91D7C63FF006043FF00A352BD73F693FD9B35AF8E5ADE81AA68DAEE8B6096
          5A6ADA3C3A8CEE8E5F7B367E546E30C299FB347ECDBE23F81FAEF88F52D7353D
          16F6DEF34D36D10D36E5E46DFBD5B90C8BC601AF98783C47F6C7B6E47CBCDB9F
          A82CF32CFF00523FB3D578FB6F676E5EB7E6BD8F62A28A2BF4C3F99428A28A00
          28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
          283D68A0F5A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002AB
          5D5FC56BC31CB7F757AD53D4355DA4C701F62E3FA5649249C9E4D69185F563B1
          7E6D666909080463F33551EE2593EF48CDF5351D15AA490C29C92BC67E5765FA
          1C5368AA196E2D52E22FE3DE3D1866AFDBEB31498120319F5EA2B168A8714C56
          3AA560EA0A90C0F42296B9AB6BB96D5B28DC7753D0D6DD9DFC776303E593BA9F
          E95938B42B16A8A28A8105145140057377B9179367AEE35D2563EB56FB645980
          E1B83F5AD20F51A332B4347B8F2E73193F2BF4FAD67D2A31470CA7041C835B35
          75628EB074A2A3B7944F02483A30CD495CA014A3AD2528EB498D0EA8E7844F0B
          C6DD1862A4A290CE464431BB2370CA7069B5A7AEDB7973ACA07CB20E7EA2B32B
          AD3BAB926B787EEBCB9DA12787E47D47F9FD2B7EB8D8A46864575E194E4575F0
          CAB3C2922F4619AE7AB1B3B97163E9F4CA7D62505666BD67E7DAF98A3E78F9FC
          3BD69D21018104641EA29A76771DAE8E228AB3A85A9B3BB78FF87AA9F6AAD5DC
          9DF5313A6D02F3ED16BE531F9E2E3EA3B56B2F4AE374CBCFB15E2499F90FCADF
          4AEC94E464571D58F2CAE6D077169F4CA7D625A0A8AEAD96EEDDE27E8C319F4F
          7A968A57B3B8CE0A785ADE678DC6194E0D32BA1F1369FC2DDA0FF65FFA1AE7AB
          D184B995CE66ACEC696837FF0062BD018E2293E56F6F435D98E95E755D9E81A8
          7DBAC80639963F95BDFD0D73578FDA46B4E5D0D2A28A2B911B8E5A5A45A5A4C0
          A1AF587DBF4E60A33227CEBFE15C357A50E95C3EBF61F60D41F68C4727CEBFD4
          5765097D9665563D48F45BFF00ECFBF8E427087E57FA1AEF94E4022BCCEBB7F0
          D6A1F6DD3C231CC90FCA7E9D8FF9F4A58887DA41465D0D6A51D6929475AE13A8
          75145140052AD252AD4963A8A28A4003AD3A9A3AD3A801CB4B48B4B414855A75
          3569D5230A28A281A1C3A5140E94540D0528EB494ABD6801D4514A3AD00285A0
          AD2D1537286514ADD692A8434F5A4A735368105068A28131B451455830A46A5A
          46E94086D2352D2374AA10DA69EB4EA69EB41214514500145145003E7FF5F27F
          BC7F9D329F3FFAF93FDE3FCE9942D86F701D69D4DA75021CB4B4D5EB4EA0A42A
          D3A9ABD69D5230A28A28043874A291696A0614A3AD25140C7D1480E696801C0D
          04D368A561DC3AD7CB3FF0507F82EFF11BE12C7E28D360F3759F0A97B870A3E6
          92C9B1E70F7D842BFB00FEB5F53536448E58DE39A349A1914A3C720DCAEA460A
          907A8238AEAC3579616B46B4374FFA5F330AF46388A72A52D99F8295F7E7EC53
          FB6769565E1FB2F87DF103524D39AC808B49D6AE9B1118BB5BCCDFC1B7F85CFC
          BB7838C0CF807ED83FB37DCFC06F8832CFA7C0EFE0ED5E469F4CB8009587272D
          6EC7B32678CF55C1EB9C78157EA3568E1F37C327D1EA9F54FF00AD1A3F3FA756
          B65B5DAEAB46BA3FEBA1FBA9A978BF40D174BFED2D435ED2EC74DDBBFED9717B
          1245B7D7716C1AF903F686FF008289697A04171A27C2ED9AB6A872926BF7117F
          A341FF005C51BFD637FB4C36FA06CD7E75EE27B9FCEA4B5B59AFAE62B7B685EE
          27958247144A599D89C0000E493E95E561B87A851973D6973DBA5ACBE7BDCF46
          BE7556AC79694797CF77F234FC5BE31D73C77AE5C6B1E21D56EB58D4E73992E6
          F252EE7D00CF403B01C0ED5D7FC16F801E31F8F1AEFD83C33A716B68980BAD4E
          E7296B6A0F777C75F451963D857D19FB3AFF00C13CF55F1235B6BDF1344FA169
          3C49168719DB7B723AFEF4FF00CB153E9F7FAF0BC1AFD02F0D786748F06E876B
          A2E83A6DB691A4DAAED86D2D10222FA9F727BB1C927926963B3BA5865ECB0A93
          6BAF45FE7F90F099554AEFDA626E976EAFFCBF33C8BF67EFD91BC17F012DE1BD
          8615F1078AC2FEF35CBD8C6633DC4119C8887BF2C7279C715EDEC73C9E4D2D35
          ABE12AD6A95E6EA5595DB3EB69D38528A853564252374A5A46ACCD18DAE2BE35
          F80A5F8A5F093C5DE14B72A2EF53B064B6DC70A6742248813D8174519F7AED69
          BDEAE1270929C775AFDC6728A927196CCFC27D4B4DBAD1F50B9B0BEB792D2F2D
          A5686682652AF1BA9C32B03D08208C5570335FAFBF19FF0064BF875F1CB503AA
          6B56373A5EBAC009355D1E458A59B1C0F3159591CE38DC46EC719E0573BF0C3F
          614F85DF0CF5A87576B7BFF146A3030780EB722341130E8C224550C47FB5B87B
          57DF478870FECF9A517CDDBFE0F6FEAC7C7CB25ADCF68C972F7FF804FF00B0FF
          00C31BEF861F0034F4D5616B6D4B5CBA7D624B79061E28DD1122561D89440D8E
          DBEBDEE9F2BB48C598E58F534CAF85AD5655EACAACB793B9F5B4A9AA508D38EC
          B40A28A2B3286B75A4A53D6928003D29B4E3D29B4098514515621948DD29691A
          8448DA28A29B105369D4DA100521E94B487A53258DA28A29A10534F5A7534F5A
          A1310F4AE7BC4F236F813F8704FE35D09E9591E21B5F3AD04A07CD11CFE07AD6
          94DDA4899EC73356B4DBAFB1DE472670B9C37D2AAD15DCD5D58C0EE28AA1A35D
          7DA6C9413F3A7CA7FA55FAE16ACEC6DBA0A69EB4EA69EB48435F211B6F5C715C
          59E4F3D6BB5AE5B56B4FB25E3003E47F996B7A4F5689914EB7741BADF1B40C79
          5E57E9FE7F9D6154D69706D6E1251D8F23D456D25756253B1D55148AC1D4329C
          82320D2D720C6B75A4A56EB495484C86F2D85D5BB467AF507D0D732CA5588230
          4704575958BAD5AF97289947CAFC1FAD6D07D046656869175E54DE531F95FA7B
          1ACFA01C1C8E0D6AD5D580EAE8AAF63722EADD5FF8870C3DEAC5733D080A28A2
          900541796E2E6DDD3BF51F5A9E8A360394208241E08A96DA736F3A483B1E47A8
          AB5ABDB79571E601F2C9CFE3DEA85752D514754AC1D4329C82320D48DA7E8875
          D8BC4E74C89FC591DA7F67AEA2C32C90649E3B6EE48CF5C77C71597A35CF9909
          889F993A7D2B46B82AD1854694D5ECEE7451C4D6C3737B1938F32B3B754FA012
          58924E49EE68A28AD4E50A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A0F5A283D6800A28A2800A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800ACDD5EF1A2510A1C161927DAB4AB9CBF9BCEBB91BB6703F0AB82BB
          1A2BD14515D05051451400514514005145140052AB156041208E845251401B9A
          76A42E311C9C4BD8FF007AAFD72A0952083823B8ADCD3AFC5D2EC738947FE3D5
          84A36D512D17A8A28ACC41505E41F69B774EE4647D6A7A28D80E508C1C1A2AE6
          AB6FE45D1207CAFF0030FEB54EBA93BEA59B1A1DC643C24F4F997FAD6AD72F6B
          39B7B84907F09E7E95D42B065041C83C8358CD59DC029475A4A51D6B26343A8A
          28A91906A36DF6AB374032C06E5FAD72D5D90E95CCEAD6DF66BC6C0C23FCC2B7
          A6FA04914EB7BC3D75BA27809E57E65FA77FF3EF583562C6E4DA5D472760707E
          9DEB49AE65612D19D6D3E980E4647229F5C46814514505232BC4167E75B09947
          CD1F5FA57395DC150E8CAC32A4608AE3AF6D4D9DD4911EC783EA3B5745295FDD
          3392EA415D568179F69B208C72F17CA7E9DAB95ABBA45EFD8AF5189C237CADF4
          ABA91E688A2ECCEC29F4CA7D709BA0A28A2A58C49615B885E3719561822B86BC
          B56B3B99217EAA719F51D8D7783A562789AC3CD805CA0F9A3E1BDD6B7A32E576
          644D5D5CE62AF68F7E74FBD4727F76DF2B8F6AA34576B49AB3304EDA9E8A0820
          11C834563F86F50FB55A792E73245C7D57B56C5796E3CADA676277571CB4B48B
          4B50C63874ACBF11D87DB74F66519922F9C7D3B8FF003E95A83A51D69C5F2BBA
          1B57563CD6B4BC3FA87F67EA2858E2393E47FF001A66B761FD9FA848806236F9
          93E86A857A9A4E3EA71EB167A6D28EB599E1FD43EDFA726E39923F91BFA1AD31
          D6BC9927176677A77571D4514548C295692957AD4963A8A28A4003AD3A9B4EA0
          072D2D357AD3A8290AB4EA6AF5A7548C28A28A010E1D28A45A5A818528EB4945
          031F452039A5A007034134DA2958770EB4514138A621ADD6928A2800A28A0F4A
          04C6D1451560C291A969AD4084A46E94B48D5426369A7AD3A9A7AD0485145140
          051451400F9FFD7C9FEF1FE74CA7CFFEBE4FF78FF3A650B61BDC29C3A5369568
          10E1D69D4CA78E940D00A7D329C0F149942D1451480075A7536941A4C7E62D14
          515230A706A6D1400FA2994500389A4EB49450061F8E3C0DA0FC49F0BDEF877C
          4BA745AA691763F79049C1561D1D1872AC3B30E6BE12F887FF0004C4D761D4E5
          9BC0FE29D3EF74D66252DB5BDF04F18FEEEF44657FAE17E95FA13457A184C7E2
          3057F632B27D37471E23074315FC58EABAF53F3C7C1BFF0004BFF125C5DA378B
          3C63A4E9D68305A3D22392EA56F6CBAC6ABF5E7E86BEA9F00FC0BF851FB2E787
          A7D7A182D74E6B38F373E26D724125C0CF185623084F40B1804F03935ECA4E2B
          F33BFE0A37F16750F11FC5A1E068A778F44F0E45133C0A70B2DD4B1891A43EA4
          2BAA0CF4C363EF1AF5A856C66735950A952D1DDDB4D3F5F99E755A786CAE93AD
          085DECAFDFF4F91F4C5C7FC1447E0E45AB9B3177AE4F0EEDBFDA09A77EE3EB82
          E24C7FC073ED5EF9E0CF1B681F113C3D6FAEF86756B6D6B499CE16E6D9B3861D
          5594E0A30C8CAB00467A57E1957D29FB047C5ABFF00FC73D2F41370E742F13B8
          D3EEAD89F97CD20F91201FDE0F819F476AF531D90D2A54255283778ABD9F5FF8
          27061338A952B28564ACF4D3A1FAA94D3D69C78CD32BE211F5414D3D69D4CAA2
          585369C7A53681051451400D6EB4955B55D56CB43D32F352D4AEA3B1D3ECE233
          5C5CCC70B1A0EA4F7FC0726B97F873F173C33F15E6D4E1F0ECB7B24FA70579A3
          BCB3784B46DF7245CF055BA8CE0E39C5632AF4A15153949293D91DD4B038AAD8
          79E2A9D36E9C37925A2F567634562EA1E29B5B32C9166E241FDDFBBF9D615CF8
          AEFA73F232C0BE8839FCCD7A11A3391E53A91476A7AD2579E3EA97921CB5D4A7
          FE06698B7F72BD2E251F4735AFD59F733F6CBB1E8C7A536B8587C417F0E3170C
          E3D1FE6AD4B4F181C817308C7F7A3FF0350E84D6C3F6B1674D487A557B3D46DE
          FD7304A18F75E847E1560F4AC5A6B46697BEC3691A969ADD69A244A28A286007
          A547248B1233B9DAAA3249ED521E9597E212C34A976FA8CFD33551576909BB2B
          9977DE2791D8ADAAF96BFDF61927F0A974AF10BCD32C37383B8E15C0C73EF5CE
          D00E0D7A1ECA36B58E5E677B9E814555D32EC5ED947267E6C61BEA2AD5705ACE
          C746E14CA79A6531311BA531D0488CAC32AC30453DA92813389BBB736B732447
          AA9C7D476A8AB77C4969CC770A3FD96FE95855E8425CCAE60D599A5A15D7D9EF
          02138493E5FC7B574D5C40254820E08E41AEC2C6E45DDAC728EA473F5EF58D58
          F52A2F4B13D329F4CAC0A0AA1AD5A7DA6D0B01F3C7F30FA77ABF475A69D9DC0E
          2A8AB5A95A7D8EEDD07DC3F32FD2AAD77277573237743BAF32030B1F993A7D2B
          4EB96B2B936B72927607047B57500860083907A1AE79AB31A10F5A4A53D692A1
          030A8EE615B881E36E8475F4A9283D2988E5248DA2764618607069B5ABACDAE0
          89D47B37F435955D29DD5C0B9A5DD7D9EE0293F23F07EBDAB7EB94AE834DBAFB
          4DB8C9F9D783FE359CD752596E8A28AC841451450057BEB7FB4DB328FBC395FA
          D7395D5D606AB6DE45C9603E57F987D7BD6B07D06886CEE0DB5C23F6E87E95D2
          020804720D72B5B9A45CF9D6FB09F9938FC3B539AEA0CBF451456220A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A0F5A283
          D6800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28
          A2800A28A2800A28A2800A28A2800A28A2800A28A28022B997C9B791FB8538FA
          D7335BFAB1C58BFB903F5AC0ADA1B14828A28AD461451576CF4C92E70CDFBB8F
          D4F53F4A4DDB7114A8AE8E0B182DC7CA809FEF3726A66891C6191587A1159F3A
          0B9CB515B771A3C520263FDDB7E959571692DAB6245C0EC474356A49810D1451
          5430A723B46E194E18720D368A00E8AC6F16F22CF471C30AB35CCDB5C35ACC1D
          7F11EA2BA386559E357439522B9E51B12C7D145150229EAB6FE7DA923EF27CC3
          FAD60575EB6D248B909907D6B25BC3172D2B6D68D533C6E3DAB3FAD50A7A4A6B
          EF3B6184C454578C1FDC6356F68F71E75B6C27E68F8FC3B53A3F09B1FBF7007F
          BAB9ABD65E1F8ACDCB096462460F4C573D4CCB0B6B735FE4CEC8E558B97D9B7C
          D094A3AD5992C881943BBD8D56E86B4A55E9D757A6EE71D6C355C33E5AB1B0EA
          2A6B500CBC8CF15730076AE0C4E3961A7C9CB73D1C1E5AF174FDA735B5EC67A8
          24551D66C9AE6D8322167439000E48EF5BF4571FF6B493BA87E3FF0000F4964B
          1EB53F0FF8270834FBA3D2DA53FF0000351CD0496EC165468D88CE18638AEFEB
          9CF1645F35BC9EA0A9AEEC26672C45654E514AE7262F2B8E1E8BAB1937626D16
          EBED166149F9E3F94FD3B56A08DB038AE5344B9F22F554FDD93E53F5ED5D98E0
          55661899615AE557B9CF9760E38CE6E76D5AC57F2DBD28F2DBD2ACD15E47F6A5
          5FE547B5FD8F47F99FE05708C3B563F88EC8BC2B7007CC9C37D3FCFF003AE829
          AE8B2215601948C107BD694F359C649CA2673C9A0E3EE4DDFCCF3EA2B5F5CD1B
          EC0DE7439F218E31FDD35915F5546B42BC15483D19F2D5E8CF0F374EA2D51D6E
          8779F6BB150C72F1FCADFD0D698E9597E198BCBD3777F7DC9FE9FD2B5EBE7ABE
          611A7565051D9F73DEA1953AB4A3539ED75DBFE08CA29D8A302B3FED2A6F78B2
          DE5157A4902F4A47412232B0CA91820F7A5C6296BB28E2A956768BD4F3EBE0AB
          61D5E6B4EE8E1B52B236176F11FBA3953EA3B555AEB3C4761F6AB4F3947EF22E
          7EABDEB93AF6E9CB9A373C992E565AD36F5AC2F239874070C3D477AEE91D6445
          75395619047715E775D4785EFF00CD81AD9CFCD1F2B9EE2B2AD1D398D29BD6C6
          F2F5A753475A757133A070E94B48B4B48663789EC3ED563E6A8CC90FCDF55EF5
          C6D7A51018104641E0835C0EAD6274FBE922FE0CE54FB1E95D94277F759CF563
          D4B5E1AD43EC5A8AAB1C472FC8DEC7B1FF003EB5DBD79903835DF6897FFDA3A7
          C72139917E57FA8A9C443ED22A8CBEC9A54503A515C4748528EB49454B287D14
          5148614E1D29B4AB400E1D69D4CA78E940D00A7D329C0F149942D1451480075A
          7536941A4C7E62D14515230A706A6D1400FA2994500389A4EB49450014514500
          1487AD2938A6D342F30A28A2A8414D3D6949C53684014D3D69D4CAA2585369C7
          A536810514514005145140AE3A6FF5D27FBC7F9D369D2FFAF93FDE3FCE9B42D8
          A7B8503AD145021D4E534D072296801D4A0E2928A0B1F452039A5A900A28A280
          4381CD717F187E24DAFC2DF87FAD6B0D77A745AAC36A5EC6DAFA5C79D213B540
          45CB373E831C7254648EC25952DE192697708E24691F68C9C0049C0EE78AFCD2
          F11DD6A3FB53FC6AD5EEED6F2C34596ED49B1B6D5EF7CB5D8802C70231C8DEDD
          768C0C96E95E0E6B8D78482853579CB45FE67E85C1FC3D4F39C44F118A972D0A
          36949EF7D7E1F9A4EEFA58F5BF875FB6CF8ABC312D9C3F11F497D574CBE5F3AD
          F54B581619FCB27EF2800472A8391818208209C8C57D97A2EAF69E22D1AC355D
          3E469AC2FA04B9B791E3642D1B0CA92AC011C7AD784FECE5E0EF15DF781E6F09
          7C50F04694344D0A458F4BFB75AC66479036588519565E73E60C6E24E4BE4E3C
          DBE277C4EF8A7F123F680D63C03E09D70F87E0D31A58EDEDE093C8F304499666
          7505989C1C2F4C6063A9AF370D8BAD83A319D66E6A5A24D7BD7EBBF43E9F35C9
          F039EE6156865F0850749394E6A57A6E1F65A4968F5D52B25AEE7D95457CBBF0
          57E33FC42F0A780FC61AFF00C57B6BD7D134558E2B57BDB3F22FA6B966C08949
          0372F232CC0E3239E08AEEBC03FB5E7C36F1DF970C9AABF86EFDB03ECFACA88D
          33ED282531FEF153ED5EBD1CCF0F514799F2B7D1E87C563784F34C2CEA7B287B
          6841D9CA1EF2BD93F5D1357D343DA28A48644B986396091278A450F1C9130757
          53D082382297A57AA9A7AA3E39A71767B8504E290B52555890EB5F971FF050FF
          0087B7DE17F8FB77E21689BFB2FC496F15D5BCD8F97CC48D629533FDE050363D
          1D6BF51EB95F897F0BFC33F17FC2B3787BC55A6AEA3A73B7991B03B25B7900C0
          92271CAB0FC88E0820915EAE5B8CFA8E21556AEB67E879F8EC37D728BA69D9EE
          BD4FC41AF7CFD87BE1E5EF8F3F689F0CCF042C6C342986AD79381F2C4B172809
          F56936281EE7D2BE969FFE0979E196D5BCD87C7BAA47A66ECFD95F4F8DA6DBE9
          E6870B9F7D9F857D3DF093E0CF84FE077860E89E13D3CDB452B07BABC9DB7DCD
          DB8180D23E067193850028C9C01935F558ECF30F2A12861EEE5256DAD6BFA9F3
          D84CA6B46B29D6B249DF7BDCEDD8E49A6D1457C223EC04634DA52734878A0811
          BAD250016380324F6144C56D63925B875B7862432492CC76AA20192CC4F4000C
          E693696E35172764829511A4385049F6AF1997F6BBF864BAAE956506AB717697
          D78F66F74906C8EDB1B4095C3107CB62C3040E818E38AE2BF6EAF881AAF867C3
          7A0784F4BB892D1B5B9257BD789B6B3C4855563CFF007599893EBB476CD7935B
          33C3D3A33AD4E5CDCB6DBCF63EC701C299962B1F430388A6E97B5BD9C9748FC4
          EDE56DB4E9DCF5FF008CF7BA07FC29AF155E6B767278834186153716BA6DDED6
          919654DABE621F970C54B75E01E0F4AF9AFC19E2FF008C7FB49F8AAC2EB40921
          F0A78534AB885FCBB57305BC691B02AAC47CF3101718E5723A2D777FB38FC0BF
          117C1BF15F8B34EF135D585F785B518A3B34B7664996F5FCC5C48D0E582A8532
          29DF83F377AF95EDF4BD46EBE2D7883C2F06AA9E01B3D46F6E61BC5BDB9686DE
          08559DFCB948037001700118271D335F319856AD374AB56838F368E2B46DA7A6
          B6DB53F5AE1BCBB034A38BC160EB46ABA694E3524B9A294D2E6B42FF0012B6AD
          6BB27D8FBDF5C40BAA5C3C6A0413399622AC195918E54823208C7A551AE5FE13
          EB3E15D4BC036DA278535F9BC471F85956C6EAF27B630997CC6924574079D99D
          EA33C8DA3AF5AEA2BF4EC0E2162B0F0AABAAE9AEBD753F9D336C0CB2DC755C2C
          93F75E974E2DA7AA767AABAB3B0514515DC792145145003A391A270C8C558742
          0E08AE874BF149F962BCE476940FE62B9CA2A2505356652938EC7A3A3AC8A194
          86523208E8690F5AE2F48D6A4D35C2B65E03D53D3DC576104F1DCC4B2C6C1D1B
          9045704E9B833A6325243E8A28AC9942374A86EA05BAB79226E8EB8A99A929AD
          0479FCB1B432BC6C30CA4834CADAF13D9F9374B3A8F9651CFD4562D7A719732B
          9C8D59D8DBF0CDE79770F6EC7E590657EA3FFADFCABA5AE0A195A09924438652
          08AEE6DE65B881255FBAE0115CD56367CC6B07A5890F4A6539BA536B02FA88D4
          94A7AD2502643796E2EEDA488FF10E0FA1ED5C5BA1472AC30C0E08AEEAB98F10
          5AF9179E601F2CBCFE3DEBA28CB5B19C97532EB6BC3B75B647B763C37CCBF5EF
          FE7DAB16A4B799ADE74957AA9CD74C9732B19AD0ED0F4A650922CB12BA9CAB00
          4515C26A14514500666B96BE7DB798A3E78F9FC3BD73B5D9100820F20D72B7F6
          C6D2E9E3FE1EABF4AE9A4F4B10D752BD6FE8B75E75BF96C7E68F8FC3B560558B
          0B9FB25D23FF000F46FA569257449D31EB494673CD15CC86C291BA52D2353111
          CB1ACD1B2372AC306B9B9E1682568DBAA9AE9EB3359B5DC82651CAF0DF4AD20E
          CEC063D59D3EEBECB70093F21E1AAB515B35703ABA2A8E9375E7C1B18FCE9C7D
          476ABD5CCD59D880A28A2900555D46DBED36CC00CB2FCC2AD514D3B6A0729562
          C6E3ECD72AC7EE9E1BE94ED4ADBECF72D81F237CC2AAD74EE8A3ABA2A969573E
          7DB0527E64E0FD3B55DAE66ACEC485145148028A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A00283D68A0F5A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A008AEA017303C678C8E0FBD73B34125BBED914A9FE75D3D2
          32871860187A115719728EE72B4E8E3695C2A29663D85742D616EC79857F018A
          7C36D15BE7CB40B9EB8ABE743B94ECB4958B0F361DFF00BBD8568D14564DB7B9
          2145145200A6BA2C8A5580653D41A7052C700127DA9594A9C1183E8695D5EC3B
          3B5EDA18F7BA46C0D243D07250FF004ACBAEAEA2D3748417F2CCC8AD163E5561
          9009FF003FAD2AB885429BA92E874E1A8CB1155528F539D8ADE59CE238DDCFFB
          2335664D1EEA1B779A48C468A32771E7F2AED4285180001E82B0FC5373B2DE28
          01E5CEE3F41FE7F4AF268E6757135A34E11493F9E87BD5B2BA586A32AB524DB5
          F2D7F131F48D3D752BA3133940177640F71FE35D3D9E8F05921552EE09CFCC6B
          0FC2DFF2107FFAE67F98AEAAB9B33C4D6856F671934AC8E9CAF0B46A50E79C13
          777B956EE24480ED50391DAA8D685EFF00A83F5154A15DD2A0F7AEACBE6FEAEE
          7277D59E666B4D7D6A3082B5D2FCCD345D88ABE8314EA28AF956F99DD9F6D14A
          29241452138EB40208E0E690C5AA77B160871DF83572A2BA1981BDB9AECC1D47
          4ABC5AEBA7DE79F8FA4AB61E49F4D7EE2BDA7FADFC2AED52B4FF005A3E9576BA
          733FE3FC8E4C9FFDDBE6FF0040A29B23EC42D8CE2A1FB58FEEFEB5C74B0D56B2
          E6A71BA3D0AD8BA187972D4959FCCB1591E268BCCD3777F71C1FE9FD6B43ED3C
          70BFAD73BA8F881EE2196D9EDC267E53F367041AF470B82C4C2B467CBB3EE8F3
          3158FC2D5A33A6A5BAECFF00C8A1A445E76A56EBFED83F973FD2BB8AE174FBDF
          B05CACC1039008009C5747A7EB725DCDE5C96C62C8C83CF35DF99E1AB57A8A50
          5A25DD1C395E2A861E9494DEADF666BD15179C7FBB49E79FEED78AB035DECBF1
          47B2F32C32DE5F83FF00226A2A349B71C118A92B96AD19D17CB5158ECA35E9E2
          23CD4DDD115D5BADD5BC913747522B826528C54F50706BD0AB86D513CAD4AE01
          18FDE138F63CD7BF934DDE70E9B9F3F9DD356854EBB1D76951793A75BAFF00B0
          09FC79AB75869E29B65500C320038E31FE353C1E23B49E558C6F42C700B0E3F9
          D799530789949CDC1EA7AB4B1B858C141545A686AD14991466B91D0AB157717F
          71D51C4D193B466BEF168A28ACA327169ADCDA51534E32D98846460F4AE3754D
          31AD751F26352564398C0F7ED5D9D31E14791246505D33B4FA67AD7D8AC57B1A
          3EDBC8F86585F6B88F60BBFE46669DE1F82D5034CA2697BE7EE8FA0AD5550830
          A001E82968AF93AB5AA5797354773ED28D0A7423CB4D58294391EF4945442A4E
          9BBC5D8A9D2A7555A714C95181A7D57A951B70F7AF77098CF6AF927B9F378DC0
          2A0BDA53F87F21F587E2AB0FB45A0B851978BAFBAD6E542ED9DCA40653C10457
          754C4AC335391E7D0C2CB15CD18BD8F3AAE9FC181FFD28F3E5FCBF9F3531F0CD
          9B4DBFF78A99CEC078ADBB6B78ADA1548502463A015D3F5DA3888F2D37A98CF0
          55B0CEF5159138E94B4D5A756420A28A293290E1D2969AB4EA918503AD145003
          A9CA69A0E452D003A941C52514163E8A40734B5201451450087039A29B4A1AA6
          C3168A28A43B85145140051451405C28271485A929D841D68A28AA1051452138
          A00426928A2A9008C69B4A4E690F14102375A4A28A002929691A801B45145004
          93713C9FEF1FE74944FF00EBE4FF0078FF003A40685B0DEE2D145140801C53A9
          B4E073400A0D3A994E0681A169C0E69B474A4D143E8A40734B48055628C08382
          2BC33E23FEC75E02F881ABC7A9DB473F85EF1A50F7234B55F2A75CFCDFBB3C23
          1FEF2F1DCA9AF72A2B96BE1A8E2A3CB5A3747AB9766B8DCA6A3AB81AAE0DEF6E
          BEAB67F33E56FDA93E30FC40F83DE25F0DE9DE1882EB49F07D95A4216F442B38
          BC61C18DE5756C1550060F2492C73918E37F66FBED4FE2EFED59AA7C42B6D2E4
          D3B498C5C5C5C8CEE48F7C26248CBE002C4B038F627B57DB6D8922789D56489C
          61A37019587B83C1A8EDE08ACE0105BC315BC00E4450C61141FA000578F2CAA7
          3C42AB2AADC134D2ED6DADE47DB51E2EC3E1F2B9E0E9E0D2AD28383A89EEA5BB
          6ADABF57A74B2D0E3FE34FC4DD2BE16FC3AD4F5AD6628AF9190DBDB69D380CB7
          9330F96320F55E3737A007BE2BE46FD9C7F66EB2F8F1E1DF106BBE25B49F49B7
          9EF33A7DEE97B612EF92654588829E52E540C0183900F181EA5FB46FC04F1EFC
          6AF8B3A0224D6CBE048512359E39806B204033BBC6C416762081B410404071CD
          52FDB07C64FF000BFC09E10F87FE0AB9B9D1649B0C2DF4FDCB21B64F9517CC52
          0E5A4C92064B11927D7CDC77EF2B4EBE261FBBA7A25FCCD9F51C3E961305432E
          CA6BAFAD629F34A49DD528C75B35DFBA7BEB7D2C735F1D7E33DC78534F4F85BF
          0966B8B0D37C356A4EA5ABDA4C5645F2CE5D04A318F9CFCCC31B9DB68F46F54F
          86BF1B6FBC37FB2DD8F8FF00C737136B1741E48E1DA1526BA1E698E352718CE5
          5896233819E4F5F90BC67E08F1CFC10F08CDA36BB0DB69CBE2C285ED81496E64
          8E12AFF33292506F751B7B95391F28CFD4DF1EBC411FC0AFD96B45F0A46A8BAB
          DFD8C3A546840255B606B9940F5059867A8320AE2C3622B4675ABC9B8F2C76E8
          AFF0AB7A1EF66D95E027430397D0846AFB6AD7E74FDE9A4BF79272B69793D6D7
          B25F773FA27FC142343BABF58F57F05DEE9D665B06E2D2FD6E1D47AEC644CFFD
          F55F51685AEE9FE28D12C758D26ED2FB4CBE884D6F708080EA7D8F20839041E4
          10457E6D68BE39BFF19FC24B4F861A5F876EBC45AECDA87DA62BD71E7496D18C
          01140A065178C924E06E6E39C8FBF3E08F80EEBE18FC27F0DF866FA4596FECE1
          77B8D8DB9564924691901EE14BE323AE2BD5C9F1B89C4D471A92E68DAF7B5ACF
          B1F23C6F90E5794E1E1530D4FD9557369479B9B9A097C7ADDAD743B7ACDD4FC4
          BA2E89790DA6A5AD69BA6DDCD8F2ADEF2F238A4933D36AB3026B95F8E5F1357E
          10FC31D5BC468A8F7E816DAC2371956B87C8524770A03391DC2E2BE2CD17F66A
          F1D7C64F874DF10219A5D67C41AB6A2765BDCDC246D2DB8DC249D9E4233F380A
          141E80FB577E3B319E1EA7B1A10E795AEFC91F39C3FC334332C33C7663885428
          F37245BEB2DFAD92496ECFD11F29F7EDDA777A5410CF0DDA2BC13C33A3EEDA62
          955C36D386C60F383D7D2BE3BFDA3BC71E27F0B7857C07F06348BB92E35FB8D3
          2D60D566B590979DD808E3B756EBB49073FDE1B3B641E2343F07EB3F03FF0069
          CF86FE197D5E4D46E209ACD6411B9F2A2FB4B6264407F870EDCF7EBED5CB5339
          70A8A2A9E8AC9BBECDF4F91EB61381A388C2BAF3C4A52929CA11B5F9A10FB4F5
          D1376B793EBB1F76EB5E25D13C3114136B9AD69DA2413BF971C9A8DDC7009187
          50BBC8C919ED51EBBE29D1FC35E1AB9F10EA7A9416DA1DBC2B70F7EADE646518
          80A576E77649006DCE72315F197EDE3ABCDE21F8A1A2F86ED0F9ABA469525D48
          B9FBAEE1A593FF0021C686B37C45E30BAF15FECE9F07FE1C69B216D4759B995A
          E40392B147752C7106FF006724B7B797535B3A942B56A518FC2B4F37A2FCD9D1
          83E0586230581C5D4AAD7B697BEB4F761694AE9FF863D7AB3ECEF02FC46F0C7C
          4ED265D4FC2DAB26AB670C82194889E278DF19C32BA83C8EFD2AD78CF55BED0B
          C1BE20D4F4BB786EB52B1D3E7BAB682704A49222160A40209CE3A022BE6EFF00
          827E9C782BC62BE9A85BFF00E8B7AFAA5361702450F1B7CAEAC320A9E083F857
          AD82AF531B835525A4A49EDF71F199F65F87C8B3BA984A77953A728FC5D5593B
          3B5BBD8F993C2FFB466B1F113F666F88DE20BE36FA578834946B549B4BDD0ED5
          9822C6E3E6255B7171907B0AE2A1F17F886D7F612D56FEFF0054BED42EF58D5C
          DA2DCDDCED2BA5B9640C81989214989C63A7CC7D6BC63C617777F08EEFE26FC3
          A50E2DAFAFE18B24FDE8E0999E263F55607F1AFB360F82C7C45FB27E99E025DB
          6FA8C9A4C575099380978CDF68DAC7B02CC509EC09AF90A12C4635CE376E5083
          4FD6EFF43F68CC68E5B90468D5518AA55B114E71D3682845B7E8A5D3B1F2DF8C
          BE0FE9BA27EC9BE0DF19C0A1B58BBD4E46BA97D62937AAAE7D17ECEBC7ABB7AD
          765FB4FD95F78D3E027C22F1D6C791A0B11657D2753BD9542B9F405A2939F561
          5C225AFC55F14F84B4BF82ADE19BB54D3F53370BE65B3A3C59DDC3B9F94440C8
          EDBBA73D70057DA57BE1BD3BC37E05D1FC0F736D06B1A3DBE9B1D8DD4170B98E
          E42800B7A825816041C83823A55E0300F30F694A92E55CA96BFCC859F67BFEAF
          D4C2E271535566AB549249A6FD94EEBE5A356F4F23C1B41FDA3B5DF8A3F1FF00
          C0DA7787B5078BC3D3C10B6A9A7C716C49243116BB32E465F6FCC01E836823D6
          BA1F8C7FB3EE93F19BC5163E209BC412E89789025B5F27D93CF372A99DAEA770
          C3EDC29DDC700FB1EAFC19F0EFC23F0DCDDC9E17D0574DBBBB4314D7734EF3CD
          E593928ACDF754F19C0C9C0C935BB5F6183C965570F38664F99C9DF46F4B1F93
          E69C5B4B0B8FA55F86E3ECA34E1C97718DE57776DAD57A5F5EA62F82BC09E1BF
          867A24DA57866C1EDA2B828D75797327997374CB9DA5DB8000C9C2A80066B6A8
          A2BEA2850A786A6A9528DA2BA1F9CE331988C7D79627153739CB76F561451456
          E7185145140051451400568E8FABBE9B360E5A063F32FA7B8ACEA2A5A5256634
          EDAA3D0E295668D5D183230C823BD3AB92D0758365208253FB863C13FC27FC2B
          ADCF15E6D48383B1D519732B8D3D68A28A9194B57B3FB6D8C9181970372FD457
          135E875C66B967F64BF7C0C23FCEBFD6BAE84BEC984D7533EBA4F0C5E6F85EDD
          8F29F32FD3BFF9F7AE6EACE9D766CAF2397B0386FA77ADE71E68D8CE2ECCED9A
          9B4B90DC8E4525701D1D469EB45145020AA1AC5AFDAECDC01974F997F0ABF4CA
          A8BB3B8B7387A2AE6A9666D6F5D154EC3F32E3D0D56104846446D8FF0074D77F
          32B5EE63CAFB1BDA05D79B6CD093F346723E86B52B94D36EBEC9788E4E14FCAD
          F435D6005BA0CFD2B96AAE5772E377A21283D29DB1BFBA7F2A428D8FBA7F2AE7
          E787735F673FE57F70CACBD76D7CD804AA3E68FAFD2B57637F74FE54C9232C08
          652548C10456B19C53D192E124B5471D454D776E6D6E1E33D01E0FA8ED50D776
          E606FE9173E7DB0427E68F8FC3B55EAE734EB9FB2DD2B13846F95BE95D1D6125
          660148D4B487AD400948CA1D4AB0C8230452D14099CCDD5B9B69DA33DBA1F515
          156DEAF6BE6C3E628F993AFB8AC4AE98BBA027B3B936B70AFDBA30F515D1AB06
          0083907906B95AD9D1EEBCC88C2C7E64E47D2A26BA8334A8A28AC490A28A2802
          9EA96DE7DB1207CE9F30FEB5815D5D7397F6FF0066B9651F74F2BF4ADA0FA0D0
          ED3AE7ECD72A49F91BE535D0D7295D069B73F68B65C9F9D7E534A6BA832DD145
          1590828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
          28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00283
          D68A0F5A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A2ADD9DB823CC619F415CF5EBC70F07391D586C3CF15515387FC311C566F
          2727E51EF5652CA35EB963EF5628AF96AD8FAF576765E47DAD0CAF0D456B1E67
          E7FE5B08AA10614003DAA85F2E2607D4568553BE65655C302C0F406AB2F9C962
          13DEE466B08BC2B5B5ACD14EB4AD63F2E05F53C9ACF8D37C8ABEA6B5BA57A19A
          D4B4634D75D4F2B24A3794EABE9A0571BAFDCFDA3529307E54F907E1D7F5CD75
          D3CA2086490F4452C7F0AE09DCC8ECCC7258E4D2C9A95E72A8FA69F79D59D55B
          4234975D7EE35FC2DFF2107FFAE67F98AEAAB95F0B7FC841FF00EB99FE62BAAA
          E5CDBFDE5FA23AB28FF755EACA1ACCFF0066B3127501C67E955E29769574C1E3
          20D3BC4BFF0020B6FF0078565E8D73E6446263F32723E95EA65B052C2BBF7678
          99C371C529477497E6CDE02E9C672141FA51F679DBACD8FA135663FB8BF414EA
          F0E58B945B508C57C91F431C0C2714E7393F593391D7A168E70FB8B29F94F3DC
          53BC3570F1EA0220C7638395EDEB9AD0D4EDFED293277C923EB557C2F665A792
          E1861506D5FAF7FF003EF5F4D889C7EA5273EDF8F43E5B09193C6C543A3FC11D
          354771FEA5FE95254176DB6123D78AF90C3C79AB412EE8FB4C5494684DBECC82
          CFFD68FA55EAA367FEB7F0ABD5DD99FF001FE479B93FFBB7CDFE84771FEA5AA9
          D5E750EA41E86A3FB327BFE75AE0B174B0F4DC67BDFF00C8CB30C0D5C4D553A7
          6B5ADF8B2B8E95CF6BF6BE55C8940F9641CFD457542DD0763F9D51D6AC96E2CD
          9147CE3E65FA8AF5B0F8FA552A2846FA9E2D7CB6B50A6EA4DAB238F1D6BD053E
          E2FD2BCF875AF414FB8BF4AE6CEB6A7F3FD0F4323DEA7CBF51D555BEF1FAD5AA
          AADF78FD6B8F2BF8A7F23A339F821EAC58C65C7D6ACD470A6D193D4D495CD985
          6556ADA3B23AF2CA0E8D1E696F2D42B9AF1359FCCB72A3FD96FE86BA463804D5
          3B9816E60789FEEB0C576E529C5CAA7C8E0CEA69A853F994BC3B0452E9B978D1
          CEF3CB2835A474FB53FF002EF17FDF02AA787E2682C5A3618659181AD3AF3F17
          526B113B3EA7AD83A70961A9DD2D90C241240EA3AD039ACB96F7ECFAF0898FC9
          2A28FC79C56B018AF65D65430D194B76B43E7BEACF118B9C22AC93D7C85A28A2
          BE612727647D84A4A29C9EC828A28AF7B1CBD9E1E30F4FC8F98CBA5ED7153A9E
          AFEF6155352D4A2D3610EF9666E15475356EB94F144A5F5054EC883F5AF3F038
          78E26B284B6DCF631F88961A839C77D916478B0EEE6DBE5F67FF00EB56EDADC2
          5E5BA4D1FDC61F957035BDE16D43CA99AD5CFC9272BEC6BE871395D174DBA4AC
          D1F3787CD6BC6695577474B4AA76B0349457C8C64E12525BA3EC6715522E2F66
          58A81FEF1A981C8150BFDE35EDE60EF4E2CF9ECAD72D59A6254B0B7F0D454AAD
          B581AF26855F655148F6F1347DBD270EBD3D4B438A75301C8CD24926C4F7AFA7
          9CE308B9BD8F8D8539549A8456A299543609E69E083D0E6A95018AF438AF1E39
          84AFEF4743DF96571B7B92D4BA38A7D431316404F5A941AF5E12538A92EA7835
          20E9CDC1F4168A28AA2001C53A9B4E073400A0D3A994E0681A169C0E69B474A4
          D143E8A40734B48028A28A0029771A4A290EE2EEA375251458341771A4A28A02
          E14514531051452138A003A5349CD04E68A690052134138A6D3130A4634A4E29
          B4121451450014D2726949C0A6D00145145301F3FF00AF93FDE3FCE9838A7CFF
          00EBE4FF0078FF003A6501D47D14D534EA401474A28A007039A29A0E29D400E0
          734B4CA7039A0AB8B4A1A928A5618FA2999A706A402D1451400554BFD1F4ED56
          7B29AFF4EB3BF9AC65F3ED25BA81646B793FBF19232A7DC55BA2A651525692B9
          70A93A72E683B3F23CFF00E217C0CF0BFC50F17787BC47AE1BF6BDD14AF95041
          3288275590C816452A4FDE3C952091C7A570BF1E7F677D67E34FC52F0AEB136A
          D643C2960B1C577A7CA5D2645F30BCA5300862E30B9C8C6071C57BD515C15B2F
          C3D652528FC4D376EB63E8B03C4598E0274E74AA5FD9C6518DF5E552DEDD9F99
          F20782FC31AA7C1AFDB56F34ED274BBA97C3DAEAB9C5AC24A456D38DE1B81855
          8E55C67B053EB5F5FD2F9EE136073B7D33C5479CD3C1E0FEA8A718BBA6DB5E57
          E82CEF3A96773A356A42D384141BBDF99AFB4FCCF9B7F6F6D2EFEFBE12691736
          B1BCB6767AB07BAD83210346CA8CDE83248CFAB0F5AE1BE037C63F1E7C44F1EF
          827C33E120FA4782F40B2B5875389A08E449238D0099E472B906460CAA011D41
          EB935F64CB147710C90CD1A4D0C8A5248A550C8EBDC107823EB5069BA5D8E896
          9F65D36C2D74DB5CEEF22CA048533EBB54015C35B2CA95317F588D4E54ED74B7
          D3A5FB1F4381E2AC3E1725FECCAB8555271E6E593D52E6DDB8DB56BA1F1A7ED0
          3AA47F0C7F6C6D0FC61ACDB4D2E88CB69788635DC76246226DBCE09565271F4F
          51537C168AF7F688FDA9F50F88C6CE5B7F0EE93289A2328E8513CBB68B3D37F0
          1C81E8DEA2BEB4F167833C3FE3AD3E3B1F1168D67AD5B44C5E34BB8F718D8F52
          ADD573EC6AD685A1E9BE17D2E1D3746D3ED749D3E1394B6B3884680F7381D49F
          53CD73FF0064547897294FF77CDCD6EB7FF23D17C67878E571A34E8B58954BD8
          F35FDD50EAD2EEFF00A67C5D7F65FF000B2BF6A5F8B772079ABA6E8DAB46BDF1
          E5DA9B41FAB563FEC5DE09B9F13F8C755F11DD2497167E18D2E65B4520B013CA
          24D88A3E8D337D715F71E97E14D0B43D6AFF0058D3744D3F4FD5B50CFDAEF6DA
          DD5259F2DB8EE207393C9F53D6AE58D9DB697118AC2D2DEC222E64296B0AC4A5
          BFBC428193EF59C32497B5556A496EDBF3BEC74E238F21F52A983C3516938538
          26DAD145352FBD3697A9F32FEC11A5DE58F823C593DCDACD0433EA10889E442A
          1CAA3EEC67AE323F3AFA7E9F24D24D8DEE5B1EA6995EFE0B0DF53A11A17BD8FC
          EF3DCD5E7798D5C7B87273DB4BDED6496FA763C4FE2A7ECA7A07C56F89169E2E
          BBD5EE34F6C422FAC63B65916EFCBC0E1F70DA4A0553C1E95EDD2BF992336300
          9E00EC29B48C6AE8E168D09CE74E3672D59CF8CCDB1B9851A387C4D4E68D2568
          AD345FAECB71CD712B2ED32314FEEE4E2B82F15397D66407F85540FCB3FD6BB9
          AE53C5BA548661791A9642007C7623BD7A7876A333C3AD77139AA28A2BD53802
          9C88D2385452CC78000C9356B4DD26E353936C4B841F7A46E82BB2D2F45B7D2D
          3E41BE523991BAFE1E95854AAA1EA690A6E463699E122C04978C57FE9929E7F1
          35B71693650AE16DA2C7BAE4FE66AE93C536B82552537AB3A94231D8CEBAF0FD
          8DD29FDC889BFBD1FCBFFD6AE7B52F0CDC59E5E1FF00488BD87CC3F0AECA8AB8
          D5944994148F34E94576DA9E856FA8E5F1E54DFDF51D7EA3BD727A869D369B36
          C9875E5587435DB0A8A7EA734A0E255A28A922B6967388E2793FDD5CD68DA8AB
          B64A4E4EC911D74DE1CD5BCD416929F9D47C8C7B8F4AE7AE6D65B470B326C623
          3827B56C697E1F33C50DCFDA0C64FCC02AF23F1AE4C457A30A7CF3968F6EA75D
          0C3D6AB51C211D56FD3F33A6A29070064E4FAD2D79547174EBCF92077E230557
          0F0539DB7B087A565EBBA73DF5B298D774A87207A8EF5A9DE96B9F118E961EA7
          2C11D583CBA189A5CF36D1C8C7E1ABD7EAA89FEF37F85598FC2729FBF3A2FF00
          BAA4D74B4571CB35C4CB6697CBFCEE7A91CA30B1DD37F3FF002B15ED6D4DB5BC
          71193CC2831B88C669CC0A8A9A908C8C54D2CC2AA97EF1DD135F2BA3283F64AC
          C82A545054702A2230715347F7057A19849AA29C5F5FD19E565504F1128CD747
          F9A1703D0518A5A2BE6DCA4F767D728456C8290804107A1A5A291479FCD198A6
          743D5588AEAFC3F73F6AB4049CB20D87FA573FADC5E4EA938EC4EEFCC66B67C2
          B16DB49A4FEF3E3F21FF00D7AFB3C75552C173F74BF13E1F0346D8EE4FE56FF0
          3728A28AF8B3EE028A28A00CED53478B514C8F92603E561FC8D721342F6F2B47
          20DAEA70457A05739E2AB40AD15C28C6EF91BFA57D16578C9A9AA13774F6F23E
          6F35C141D375E0ACD6FE662DA45E7DD431FF0079C0FD6BBBF2D31F757F2AE43C
          3F179BAA45C64282DFA5763466F55FB58C13D97E6193528BA329C96EFF002FF8
          72330467F80534DA447F83F5A9A8AF1157AB1DA6FEF67B8F0D425BC17DC8AE6C
          633D323F1AAF2D9320CA9DC3F5AD0A2BAA9E3EBD377E6BFA9C75B2CC35556E5B
          3F23188C8C1E95CEDF5B7D96E197F84F2BF4AEB6FA10A438EFD6B2754B5FB45B
          9207CE9C8FEB5F5D86AF1AD0538F53E231142586AAE94BA181525BCC6DE65917
          A83D3D6ACE99A649A94C557E58D7EF39ED5D45AE8B696AA00883B7F79F935962
          B1F4B0CF91EAFB1DB85CBAAE29732D23DD94E371222BA9CA91914EAD511228C0
          4503D00A6B5B44FD500FA715E5C736A6DFBD16774B23A897BB34FF00AF999945
          5B96C31CA1CFB1AA8CA54904608ED5EAD1C453AEAF4D9E2E230B5B0CED5636FC
          82A8EAD6DE75BEF03E68F9FC3BD5EA4232307915D29D9DCE4395AB9A5DCF9172
          013F23FCA7FA545796FF0066B874EDD47D2A0AE9DD147574532124C285BEF151
          9FAD3EB9490A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
          800A0F5A283D6800A28A2800A28A2800A2BE3BF12FED49E3FF000B78BBC717BE
          5E8F79E14F0C6BD16993D9C903ADCBC523C801470D8DC0467A8EE38AFA2F59F8
          DDE06F0F78AE2F0D6A5E24B3B4D6E468D05AB96CAB48014566036A920820123A
          8AEDA984AB4EDA5EFDB5EDFE68E786229CEFADADDFFAF23B9A2BC8BC2DFB4FF8
          33C4DE21F18E9C6EFF00B3ADFC349E64F7B76C152640DB247503F8558A2F3C92
          E302BB5F027C4DF0C7C4CB4B9B9F0CEB106AB15B388E7F2C32B46C4646E56008
          CF3838E706B19D0AB4F5945AFF0082691AB09FC2CEA28AF03F8D3FB475AF85BC
          49E1CF0FF85B58D3EEB5A7F105AE9BAAD9BA9778A1933BB1D39E83233827079A
          F48B6F8CBE0ABBF19378521F1159C9E20591A136609CF98A32C81B1B4B0EEA0E
          47A554B0F56315271DF5F912AAC1B71BEC769457817ED59F193C53F0922F0CB7
          8605A33DE9BB92E56EA2DF98E1884871C8C701AB43C15F1F6DE5D4FE22DE78A3
          53B3D3FC39A1DEDB45677250A9F2E58F7007192CC4918C0AB585A8E9AAAB54FE
          FDEDF992EBC14DC1EEBFCAE7B6D15C00F8F5E003E135F128F13D9FF6335CFD8C
          5C7CDB8CF8CF97B31BF7639DB8CE39E94FBFF8EBE02D33C2BA7F892E7C4D649A
          36A0ED1DADC82CDE732E7700A016C8C73C71DEB1F6357F95F6D9EE69ED21FCC8
          EF28ACFF000FF8834DF1568D69AB6917916A1A75D27990DCC0DB91C74E3F1046
          3B115A15934D3B32D3BEA828A28A430A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800032715AEAA11428E8062B201C1CD6BAB0750C3A119AF9FCDA
          F6876D4FA9C8F96F53BE9FA8B54EEAE648E42ABF28F5F5AB9514F009D307823A
          1AF230B3A74EAA7555D7F5A9EF6369D5AB45C68CAD2FCFC8CE6919FEF313F534
          DA57431B156182292BED63CB65CBB1F9DCF9B99F3EFE658B15DD367D066B42A9
          E9EBC39FA0AB95F2398CF9B10D76B23EEB298726162FBDDFE856BF01AD5D0F47
          F94D71371035B4CD1B763D7D45769A81F9507A926B0757B5F36212A8F993AFB8
          AF7F2A5C942FDDFF00C03E7B37A9CD8A71EC92FD7F513C2DFF002107FF00AE67
          F98AEAAB95F0B7FC841FFEB99FE62BAAAF1B36FF00797E88F7F28FF755EACCAF
          12FF00C82DBFDE15CBDA4E6DAE1241D01E7E95D47897FE416DFEF0AE46BDACA3
          FDD9FABFD0F0F39FF795E8BF53D063398D48E9814EA86D3FE3D61FF717F954D5
          F1F3F899F670F817A19DE4B4D72E074DC727D39ABD14490204450ABD7029C142
          E7031939A5AEBC4E2A55D28EC91C384C1C70CE53DE4FFAB0573BAEEA5E5EA30A
          29CAC5CB01EFFF00D6AD8D46F934FB5695B93D157D4D711248D2C8CEE72CC724
          D7A794E19CE6EB4B65B7A9E6E71895182A11DDEFE87656243480839046455FAC
          2F0DDCF9D184272D18C7E1DAB76B973456C45BC8E8C9FF00DDBE6FF40A28A4C8
          F5AF26CD9ED3696E2D56B83993E82AC6E1EA2AA48773B1F7AF632D83F6AE4FA2
          3C1CDEA2545413DD9CAEAB6BF65BD600611BE65AED13EE2FD2B075DB5F3AD448
          07CD19CFE1DEB793EE2FD2BAF377CD1A7F3FD0E5C9159D4F97EA3AA248F2C58F
          4CF152D53D36EFED36F264E5A37643F81E3F4C578F46A4E9D39B8792FCCF72BD
          2A756AC154E976BF02E515F337C03F8D3E33F1F6A9E27D6FC47AF68367E15D0A
          FAF6D67B15B72975E5C48184B9DC7E501B9E3F84D7A24BFB527C2A58279078DF
          4B2B0C4B33E1D89DAC70303192724640C919C900575CF2BC4C6B7B04B99E97B5
          DA57EFA1CCB34C33A1EDDBB2E89D9376EDA9EA12367814CAF2A83E2BDA5978FF
          00C48DA8F8C7421E18B0D2E1BF5B45565B8B7570844B2487E5646DDF281CFCCB
          5A963F1FFE1EEA3E17BFF1141E29B23A45848B0DCCEFB90C6EDF754A300D96ED
          81CE0E3A57D353C1CE84142116D69D1F5FD4F8CAD8C588A8EA4DEBEBD8F45854
          052477393525794F88BE3FF8621F869278AB42F11E8D25BB5DAD94371A8BCA91
          79D905A36544326F0992176E7A1E07356ACFE3E783B4FF00879A3789F5CF14E9
          296B7FFBA173646468A4987DF48D48DE76907A807D40CD7CC627078875252507
          AC9AD9EE7D9613174234610735A453DD6C76D235AAEBA3CEFF005DB07965BA67
          9FD6B5AB829BC43A6F8AE0B3D5F47BD8750D36EE05920B981B723AE4F20FE98E
          C462BA2D035837205B4C73281F2B1FE21FE35BE270553D842B2BE8B55DBFAEA6
          186C753FAC4E83B6AF47DFFAE86DD14515E5E1EAAA3514DA3D4C55175E8BA69D
          98514515ED661EF51525DCF9DCAAF1C438BECFF3415CBF8A2D1A3BA49FAA4831
          9F422BA8AAFA8592DFD9C909EA7953E87B5716593E4C427E47A79B479B0DE8D1
          C25391DA37575386539047634488D13B230C329C107B1A681935F6E7C31DFDBC
          866823908C1650C47D45494C8536431A9EA140A7D7E6B3779368FD420AD14993
          27DD1513FDE3532FDD150BFDE35EBE37F834FF00AE878397EB88A9FD75128A29
          59715E3D9B573DF7249A4FA9242FF2907B7351BB6F6CD2515BCEBCA74E34DEC8
          E6A786853AB2AAB76145145731D464EA5E25934CB830240AF800EE63EB5513C6
          9701BE6B78C8F624551F127FC851BFDD5ACBAFBCC25283C3C1B5D11F9EE32A49
          622A24FAB3B5B0F17DADD384994DB31EE4E57F3ADD0410083906BCB6BAFF0007
          EA4D3C325AC8DB8C637213D76FA7E1FD6AAB50515CD132A755B7691D251D28A2
          B84EA1C0E68A6838A7500381CD2D329C0E682AE2D286A4A295863E8A6669C1A9
          00B451450014514500145145001452134DCE6801C5A9B4514EC014138A42714D
          A626C5EB4945349CD048139A28A2800A28A46340084E4D251453426145145512
          3E7FF5F27FBC7F9D329F3FFAF93FDE3FCE994BA14F70A7039A6D1D290C7D1480
          E696900500E28A2801DD68A6F4A7039A0050D4ECE6994503B8FA29BBA972281D
          C5A3345145862E4D19349451600C9A28A28B0051499146EA042D216A4A4A0570
          A282714D27340809CD14514005145274A0009C5368273450014514559251B8D1
          2C6E98992D9327BAFCBFCAAAB785B4FCF11B7D379AD72714DAB5392D990E317D
          06C50A411AC71A0441D154714EA282715050D2734514C3281D39ACE75614B59B
          B1AD2A152B3B538DC7D21381511909F6A407904D704B3085ED147A71CAEA72B7
          295892B3F5AD3C6A366C807EF57E643EFE95A14C27AD7AAE7ECD39F63C5841D4
          9282EBA197A669105BDAC464855A6C658B0C9CD688014600C0A5AA9AA5CFD92C
          2690750B81F53C0AF9372A989A9ABBB6FF0033EE630A785A5A2B24BF2392D5AE
          7ED7A84D20395CE17E838AEAF45FF905DB7FBB5C4D76DA2FFC82EDBFDDAFA2CD
          60A9E1A105B27FA1F35944DD4C4D49CB76AFF89768A2AA437C24BDB9B63C3C78
          23DC103FAD79596ABD57E9FAA3D3CDFF0080BD7F465A1DE969A0D2F34F134253
          AB294A497AB160F130A742308C5BB7642D1514F1B490BA06285810194E08AE26
          5B9B98E66579A4DE87072E720D5D0CB5D74DC66855F355425CB2A6FE67774551
          D1AE9EF34F8A490E5F904FAE0D5EAF26A41D29B84B75A1ECD3A8AAC14E3B3572
          19461AA48FEE0A64BF787D29F1FDC15EBE21B783A77F2FC99E0E1128E61552EC
          FF00343A98D2843839CD3EABCDF7EB8F074635EAF2CF6B1E8E3EBCF0F479E1BD
          C7F9E3D0D55D435516112C862675271C1C62A4A82F6DC5D5B3C47F88707DFB57
          BD1CBF0F7D57E27CCBCD315D1FE08E6F55BF5D46E44AA863F940209CD5DD335F
          8EC2D121F259C824920F5E6B1994A31523041C115B3E1650D792E403F277FAD7
          762A951861AD28DE31E97FD4C3095AB54C573465694BADBF437AD7514BA81655
          5203763DAA4FB50FEE9A98281D001515CFFABFC6BE6694B0D56A287B3B5FCD9F
          4B5E38BA34E553DADEDFDD434DD81FC26A58E412AE45516E9566CC6118FA9AEB
          C6E0E8D1A4E7056670E031F5EBD754E6EEBD0B1597E244DFA5B9FEEB03FAE3FA
          D6A556D41165B5746E55B835E5611B58885BBA3DBC6DBEAD52FD99CBE877D0E9
          F7124936EE5768DA335BABE23B13FF002D187D54D7330DBF97A8C70C8010240A
          41EE335D7368F64DD6D93F018AF7B328E1A3554AAA6DBED63C0CB27899D271A2
          E365DEFD7D075BEA76D74A5A394300707822A617111FE31F9D565D32DAD52468
          E20991CE09AA95C7430787C526E9B92B77B1D18AC7E2B06D2A8A2EFDAE6BAB06
          190411EA296A969E0E5CFF000D5DAF33134550AAE9A77B1EC612BBC4D1555AB5
          C86E86E81FF3ACDAD3B93881FE959F0AEE9507B8AF772C972D0937B27FA1F339
          C479F1308ADDAFD5976CAD12CE0088BB72771FA9AB14515F3739BA927396ECFA
          EA7054E0A11D90515957BE22B7B395A30AD2BAF076F41459F88ADEEE51195689
          8F4DDC8AEA582C43873A83B1CAF1D8653E47357356A1B8B7132FA30E86A50411
          91C8A5AE784E54A6A51D1A3A2A538578384D5D331C820907822A5B64124C1586
          41A92FA3DB2061D1BF9D32CFFE3E17F1AFAF956F69857563A68CF82861FD8E36
          3467ADA4BE684BFD0A1BD51F31471D0F5AA29E1D5B33E648DE760F1D80FC2BA1
          A6BA8752A7A1AF068E655E9B4A52BA3EA6BE5587A917C8ACFC8C9A295D0A3953
          D45257D6269ABA3E11A716D3DC28A5552EC140C934AF13C7F7948A4E514F95BD
          4A50938F325A771B451455101451450014514500145145001451450014514500
          1451450014514500145145001451450014514500145145001451450014514500
          141EB4507AD0014514500145145007E7E78E3C15E2BF10F8A7E2AF852C3C25AE
          5C4FE23F145BDC5AEA02C5C59A431C936E77948C01F3AE0F43CF3EBA1F1D342F
          18F88BE287892DFF00B0F53FB2DAEB9A5BDA47A6E8E3C9BA8552406796758F74
          8C995032C71BDC70071F79D257B2B3269A7C8B45FE5FE479CF069A6B9BFAD7FC
          CF893C4E3C4DE16D4FF683B2B0F0C5E5EEA5AA5C5A5F5919F4AFB55B4D02CA04
          8C03294760B2860307EE93FC26BBDFD8EFC3FAC68FE2FF0089B75AA5AEAD1C57
          AFA7C905DEAD666D9EE3E49B710BB547191C01C64035F4F6296B1A98D73A52A7
          CBBDB5F4B7F91A470DCB353E6DAFF8DFFCCF80BC51E0DF110F8CBADC23C31ABC
          A24F88165A92DEC762ED0FD9B329DDE6018C61C1F41DEB5BC0BE00D46CBE36FD
          8758D27C512DF43E35B8D56DC5B5BAC7611C24A917524AD19DC180236871D074
          26BEE6A5AD5E65271E5E5E962160D277BF5B9E09FB48F83AF7C65E36F86F6705
          8DC5D59C926A56F75345133A42B2DAEC05C81850738E6BE72F0DDA78EF4EF847
          E27B85F0B6A30DF4FAB69104DF6CD1BED12A4515B98DE78E391082C1957E600E
          377635FA11498ACA8E39D2A6A9F2DD2FF3B97530CA7273BDBFE1AC7C17A1781E
          E6C7E1BEB9FDBBA2F8B22953C74D7767AD5B5A38BCB13B06DBD78826645C8F98
          281CE3041C55F4B7F135AE81F07BC57AE782A64B1D1AEF544BDB3D37483079AB
          22A88A57B78D3E432ED209DA0719EE2BEE5C515ABCC5BDE3F8F74D7EA42C225B
          4BFABDCF27F83FE3358745F09E84BF0FF50F06AEA1677178B67145BAD6C0095B
          092390A55DF3BC2ED1F7ABD668A2BCCA9353973256FC4ED845C559BB85145159
          161451450014514500145145001451450014514500145145001566D6E7CBF91B
          EEF63E955A8AC6B518D78384CE8C3D79E1AA2A94F73628AA36975B708E7E5EC7
          D2AF57C66230F3C3CF965F23F41C2E2A18BA7CF0F9AEC43736E265E3861D0D66
          9054904608AD8AA77D170241D7A1AF4F2EC538C9519ECF63C7CDB04A7078886E
          B7F35FF007D87FA93FEF559AAD607F74DFEF559AF3F1BFEF13F53D4CBFFDD69D
          BB14B50FBC9F4354C804107906AFDFA6515BD0D51AFA5CBE49E1A36E97FCCF90
          CD62E38B937D6DF915343B636BAC4A9FC3E592A7DB22BA3ACEB1406E7763E60A
          467F115A35E2668EF88F923E9728FF00755EACCAF12FFC82DBFDE15C8D75DE25
          FF00905B7FBC2B91AF7328FF00777EAFF43C3CE7FDE57A2FD4EF6D3FE3D21FF7
          17F954D50DA7FC7A43FEE2FF002A9ABE427F1BF53ECE1F02F40A6BB8452C4E00
          A6CB3AC232C79EC2A8493B4CD93C0EC2BBB0B829E21F33D23FD6C7998DCC29E1
          572AD65DBFCCC0D76EA5B8BE6127089F717DAB3AB675CB7DD1A4C072BF29FA7F
          9FE758D5F6D4A31841460AC91F0D52A4AAC9CE6EED9ADE1972BA963B1439AEB6
          B91F0D7FC8517FDC35D757C966FF00EF1F247D9E4FFEEDF37FA115C7FA96AA63
          A55DB8E616AA4AA7D0D76656D2A2FD7F447979C26F111B76FD58B4EA4DA7D0D3
          829C7435EB392EE789CB2EC35943A9523208C115780C002A955EAF0B35DA1F3F
          D0FA4C977A9F2FD42B9CD12E766A979093C48588FA827FFAF5D1D70FF68369AA
          B4C3AA4A4FD466B1CBE97B7855A7DD1D998D6F613A353B3FF873E43F83FE1DB7
          D1B4CF8A5A7EA5E02F102F8CF53FEDA1A7EAEDA5CA21FB335B3158FCC3819665
          6C000E4B0C75AE24FC30F137FC23CC9FF08A6ABE67FC2BD16FB7FB3A4CFDA3ED
          E1B67DDFF59B79C75C735FA508CB222B2F2AC320D2E2BD45C43521525354F56D
          3D5BE9DBB2F2381E434E74D41CF449AD975FCDF99F0841E04BF9357F1C9D6BC1
          FADEADA54DE05D2606B6B585E29669123B5DCB1B9523CC42A5B6E09CA10476A8
          B43D1AEF57F847E3AB0D73C29AE6B3A1DB6A3A79D3B5CB3D2FEC3ABCCA158799
          20F2F74E60F957241243B738E9F77C8B86FAD32BE8A9E6AEAC149477B3DFB5BF
          CBFAD0F92AB977B1A928396D75B77BFF0099F0B4177E3C93E1B787E1FF00847A
          78AD9FC6E565F10D9F86517509EDB0BB6F842D112B31F9BF7BB7712AA09273BB
          9BF0CF827C4BE18F87DF0BF56D43C37AD0B2D1F5CD58DF5B8D3E479A21324422
          73185CE094619C62BF44E21F253ABC1AB9E3A539415256BB6FCEEA4BB7697FC0
          3E9E864AAAD2854751DF955BCB54FF004FF827CDFF00B33F86755F08FC0EF0B6
          9BACDA4D617EB1CF2B5ADC21492257B895D4329E412AC0E0FAD7A847234322BA
          1C329C83EF5ABE261FF132FF00800FEB5918AF5A9D678A87B692F8AEFEFD4F0E
          AD1586A8E8C5FC3A7DC77965742F2D639871B8723D0F7A9EB33C3B13C5A626F0
          4658B007D2B4EBF3FC44234EB4A31D9367E89879CAA5184E5BB4828A28AF5E29
          D5C15BB7E878136A86629F47FAAFF30A55A4A075AF230F3F67563267BB8AA7ED
          68CA0BB1CD78A34FF2A65BA41F2BF0F8F5F5AC9D3E13717D04639CB8CFD3BD77
          1776C9796D242FF75C633E9EF5CFF87B4D786FA67957061F907D4FFF005BF9D7
          D9D4C42A587949EE97FC31F0F87A0EB622105D5FFC39D1D1452A8CB57C3C22E7
          2515D4FBFA9354E0E6FA132FA542FF0078D25CDE43651F99348117DFBFD29914
          CB731ACAB9DAE370CF5C57B998AB538FA9F3994BBD49FA0FAC11E20946B06197
          6ADBAB18C003A73C1CD6F570BA9F1A8DCFFD746FE75195D28D675213EA8E9CD6
          ACA82A7521BA6775505EDDA58DBB4D21E0741EA7D2A9683A88BCB3DAEDFBC8B8
          627B8EC6B0B5BD4CEA173843FB94E17DFDEB1C3E0275310E94F68EFF00D799B6
          2330853C32AD0DE5B7F5E4741A15CC97968F34872CD21FC3A715A3593E191FF1
          2C1FEF9AD6AE4C5A51AF351D933B306DCB0F094B768E43C49FF2146FF756B2EB
          53C49FF2146FF756B2EBEDF07FEEF4FD11F098DFF79A9EAC2B77C1C4FF006B36
          3FE791CFE62B0ABA4F05C24DCDC4DFDD40BF99CFF4ADAB3B53673D3F8D1D7D14
          80E696BC73D10A01C5145003BAD14DE94E073400A1A9D9CD328A0771F4537752
          E4503B8B4668A28B0C5C9A326928A2C0193451451600A293228DD4085A42D494
          940AE14504E29A4E6810139A28A2800A28A4E9400138A6D04E68A0028A28AB24
          28A28A043E7FF5F27FBC7F9D329D39C5C49FEF1FE74DA4B61BDC28A28A003A53
          81CD368A9287D1480E696800A28A28000714E069B45003A8A6E714BBA8016972
          69BBA97228017268C9A4CD19A005C9A4A3229370A005A293752673400E271484
          D2514005145140051452138A003A5349CD04E68A0028A28AA44B0A28A6939A62
          0273494514005349EF4A4D4729C2E3D6B2AB3F67073EC6D469FB6AB1A7DC8DDC
          B1F6A4A2803240AF957295595DEAD9F6D18C28C2D1564828A93601EF4BD2BD28
          65D37F13B1E3D4CDA9AD2116FF000109E0531A9C79A6B75AEFC6CBD9E1F97BE8
          79D97C3DAE279EDA2BB12B07C5771B6086107966DC7E83FF00D75BD589E27B03
          35BADCAF2D1F0C3FD9AF3F2D8296262DF4D4F5F34A8E185925D74397AEDB45FF
          00905DB7FBB5C4D76DA2FF00C82EDBFDDAF6B39FE0C7D7F4678992FF001A5E9F
          AA2ED729A9DD3597881E65FE12B91EA368CD7575C6F883FE42D3FF00C07FF411
          5E6650AF5E4BC9FE68F4F39FF778FF00897E4CEBA19165457539561906A4AC3F
          0C5EF9B035BB1F9A3E57E95B9586651E5C435E46D953BE193F3635B815CAF88E
          CFCABB59947CB28E7EA2BAA7FBB513DB24FB0C8A1B6B6E00FAD77607111C361D
          D4977679D9861E789C5AA70ECBE5B91E956A6CEC218DBEF0196FA9E6ADD14C9A
          558227918E154126BC094A5566E4F76FF33E96118D2828AD92FC864872DF4A92
          3FB82B0F43D45AEFCE490FCFB8B8FA13FE7F3ADC8FEE0AF7B1F4FD8E1E34DF46
          BF267CD65B53DB632753BA7F9A1D4C78839CE69F457854EA4E93E683B33E92AD
          28568F2D457445E40F5341B753DCD4B48C76A93E82BA562F11269299C6F03858
          272705A1C86BD6A20BC2EA3E4939FC7BD58F0AFF00C7E4BFEE7F5ABBABDAFDA6
          C9F032E9F30AA5E15FF8FC97FDCFEB5F578B77C1CD791F2380FF007B83F33A8A
          86EBFD58FAD4D50DC825001D735F2385D2BC1BEE7D96355F0D34BB15029760A3
          AD5F4408A1476A6430F9632796352D7563B15EDE5C90F857E271E5B827868F3C
          FE27F820AA97CFF757F1AB2EE114B1E82B3647323963DEB4CB2839D4F68F65F9
          98E6F8854E97B15BCBF233AF6DBFD3AD6751FF002D155BF3E2BA5ACB450CE808
          C8DC3F9D6A56D9B3BCA1E865927F0E7EA882F8E2CA7FFAE6DFCAB234C90DF429
          8E5C70DED5AF7DFF001E53FF00D736FE555B4586DA2B2536CDBC37DE63D49F7A
          C30B89FAB509C92BB6F43A71B8458BC4422DD924EFDFE45D8A31120514FA290E
          4038193E95E536E72BB7AB3D88C634E3CB15A22ADFC985541D4F26ABDA8CDC27
          D6992333B92DF7BBD3ED4E2E13EB5F5F1A3EC30AE0BB3FC8F839E23EB38D8D47
          B5D7DD734EA2BA97C9B69641D510B7E42A5A82FA332D9CE83AB2301F957C8D34
          9CD27DCFBBA8DC6126BB1C2125892792685628C194E0839068652AC411823822
          92BF493F313B2D1AEC5D400FB671E87BD68D72FE169985E491FF0009427F1E2B
          A8AF87CCE0A18976EBA9F77954DCF0AAFD2E8AD7CB9841F4355ACFFE3E17F1AB
          779FF1EEDF87F3AA967FF1F0BF8D76E15DF035176BFE47978D8DB32A4FBF2FE6
          69514515F3A7D594AFE2E4483E86AA56B4882442A7A1AA16F6C5E521870A79AF
          A7C0E2E2A83537F0FE5FD687C7E658194B13174D7C7F9F5FF3FBC9ECA0D8BBD8
          7CC7A7B0AB3D6968AF9FAD5A55EA3A923EA30F42187A4A94764579EDA328CC17
          040278ACFAD2BB93CAB599C8C854271F8573075D1DA127FE05FF00D6AFA4CAE5
          3A94E5CCEF667C9E734A14EAC5C236BA3568ACC4D7109F9E2651EC7357A0B98E
          E57746C1BD47715ECB4D6E7CF12D145148028A28A0028A28A0028A28A0028A28
          A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00283D6
          8A0F5A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
          28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
          28A075AD15B5870085CE7D4D71E27150C324E69EA7A184C14F18DA834ADDCCEA
          BF652B3A1079DBD0D4C218C7445FCA9C0003818AF0B178F86229F2287CCFA5C0
          E59530B57DA39FC97516A3B81981FE99A92A1BB7D9037A9E05799413756296F7
          47AF896A3426E5B59FE441A7BF2EBF8D5DACA864F2A40DE9D6B515832820E41A
          F4733A2E157DA747F99E564F5D4E87B2EB1FC819430208C83555B4F527E56207
          A119AB74579F4B115687F0E563D4AF85A388B7B58DEC4105A8818B6ECE463A54
          F4515152ACEB4B9A6EECD2951A7423C94D59195E25FF00905B7FBC2B91AEBBC4
          BFF20B6FF7857235F5D947FBBBF57FA1F1F9CFFBCAF45FA9DEDA7FC7A43FEE2F
          F2A9AA1B4FF8F487FDC5FE55357C84FE37EA7D9C3E05E8654E7333FF00BC6983
          AD3A6E6693FDE3FCE9B5F774BF871F447E6B5BF892F5624D109A278DBA30C572
          F246629191B8653835D5D626B76FB265940E1F83F5AE883D6C643FC35FF2145F
          F70D75D5C8F86BFE428BFEE1AEBABE4F37FF0078F92FD4FB6C9FFDDBE6FF0040
          A28A2BC43DC0A427009F4A5A8E66DB19F7E2B5A70E79C63DD99569FB3A729F64
          CAD576A8D5EAF6B34DA1F3FD0F9DC977A9F2FD42B82BCFF8FB9FFDF6FE75DED7
          0579FF001F73FF00BEDFCEB5C97E39FA22B3BF821EACEA3C3977F68D3C213F3C
          4769FA76FF003ED5AB5C7F87AF3ECB7EAA4E125F94FD7B57615E7E6343D8E21D
          B67A9E86595FDBE1D5F78E9FD7C86C8B95FA543562A075DA7DABAF2DADA3A4FE
          479B9B61ECD578FA3FD0922FBB4FA645F769F5E562BF8F3F53DBC1FF00BBC3D1
          098A4D8BFDD1F953A8AE63B028A28A40266969A4F34A39AFADC2D374E8A8C8F8
          6C6D55571129C76FF2168A28AF9BC451746A38F4E87D7612BAC45253EBD7D450
          D49DE8A2A675EA4E2A127A22E187A54E6EA42366C2B2357D7BFB39CC312869B1
          924F45AD0BDBB4B2B6799CF0A381EA7D2B879E66B899E5739763935EBE5586F6
          937564B45F99E3E6F8AF674FD8C5EAFF00216E6EA5BB90C933991BD4D769A67F
          C83ADBFEB9AFF2AE1ABB9D33FE41D6DFF5CD7F9577673A5287A9C1927F167E85
          AAE1B54E351B9FFAE87F9D7735CBCFA1DD6A1A95CB468163DE7E77E0571E4F25
          1A93BF6FD4EECE9374A16EFF00A18F1CCF16ED8C5770DAD8EE29A14B1000249E
          C2BAAB4F08C11E0DC4AD29FEEAFCA2B66D6C6DECC6218523F7039FCEBE8E55E1
          17EEA3E555393D1B33340824834D4591191B24E1860D6953E6FBE6995F0D8997
          3579BF367E838456C3C179239FD6B43BCBEBC334118742A07DE03F9D678F0DEA
          44E3ECC7FEFA5FF1AEE21384152D7D5616BCA3420BC8F8DC5D28BC44DF9B390B
          3F074F23037322C49DC2F2DFE15D3D8D8C3A7C0228536AF73DC9F535628AB9D4
          94F7318C14360E94E0734DA2B0351F452039A5A0028A28A0001C5381A6D1400E
          A29B9C52EEA005A5C9A6EEA5C8A005C9A326933466801726928C8A4DC280168A
          4DD499CD00389C5213494500145145001451484E2800E94D2734139A2800A28A
          2A912C28A29A4E69885DD45368A0092E3FD7C9FEF1FE74C0714FB8FF005F27FB
          C7F9D47496C37B8FA29A0E29D4C4145145030A506928A918FA2994E0D4862D14
          514005145140051451400515E7BF1FBE265D7C1EF84BAF78BACACE2D42E74E10
          94B69D8AA3EF9A38CE48E780E4FE15E71F0DFF0069FD53C6DE25F86DA45CE8B6
          B672F8963D4C5F84958B5A4D68CE36AFA83B01E7D6BB29E16AD4A4EB457BAAFF
          0082BBFC0E69E229C2A2A727AE9F8BB7E67D134566DA789748BFBBBAB5B6D52C
          AE2EAD73F68862B8467871D778072BF8D449E2ED0A4194D674F61E534FC5D21F
          DDA9C33F5FBA08209E82B9B965D8DF997735E8ACBBBF1568BA7E9D6F7F75ABD8
          DB58DC63C9B996E5162933C8DAC4E0E7DAAD1D56C84F6D01BB83CEB952D047E6
          0DD280324A8CFCC31CF14B95F61DD772D514515230A290B5349CD00296A4A28A
          620A28A298828A29A4D3101349451400504E282714DA04C2A394700D49484646
          2B3AD4FDAD370EE6F87ABEC6AC6A7620A29594A9A4AF93945C1F2CB73EDE138D
          48A945DD31EAD9EBD6958D474E0735EF60B15CFF00BB9BD7A799F359860BD9FE
          F69AD3AF90534F5A7536B2CCDFC11F536CA23F1CBD3F50A49144885186548C10
          7BD2D153962F7A4FD0ACDDFBB05EA70FA9D91B0BC78BF87AA9F515D5E8BFF20B
          B6FF0076ABF886C3ED767E628CC9173F51DC558D17FE4176FF00EED7A19ACB9B
          0F1F5FD19C393AB579FA7EA8BB5C6F883FE42D3FFC07FF004115D9571BE20FF9
          0B4FFF0001FF00D0457164FF00EF0FD3F547A19D7FBBC7FC4BF264FE16FF0090
          8BFF00D733FCC57575CA785FFE422FFF005CCFF315D5D679B7FBCFC91A651FEE
          BF3626334B4515E3DDDAC7B3649DFA8573DE26D44605A4679EB263F415AFA9DC
          BDA594B246BB9D4703FAD70EEED23B3312CC4E493DEBE832BC1B9CBDBCF65B7A
          9F3B9AE35422F0F07ABDFD0B1A75D7D8EF2393F87386FA576F11CC608E95E7F5
          DA687234BA540CC727047E448AEECE17EE62FCFF004679F92BFF006892F2FD51
          7E8A2A09890FD6BE6B0F41E227C89D8FA7C5E256169FB46AE4F51CE7119F7AAE
          CC73D69335EC52CB7D9CD4DCAF6F23C0AD9BFB4A728285AEADBFFC012B3F47B5
          FB26B17280614A6E5FA66B429F6F18F3F7FF00105DBFAD7A38B76C3CD791E660
          3FDEA1EA5BAAB7F75F64F218F0AD2853F420D5AAC7F147FC8397FEBA0FE46BE5
          B0B0552B460F667DA62E6E9D094D6EB53628AADA6DCFDAEC6197392579FAF435
          66B09C5C24E2F7474424A71535B3285D4A5DCAF40BDAA0AB37A9870DEB55ABEC
          F06E0E845C1687E7D8F538E226AA3BBBFE1D07C5FEB53EA2B4EB322FF5A9F515
          A75E3E6DF1C3D0F7F24FE1CFD5105FFF00C795C7FD736FE55C769BA8C9A74E1D
          3943F793B115D8DFFF00C795C7FD736FE55C1D7565308D4A55213574CCB389CA
          955A7383B3573BEB7B84BA85258CE5186454B5CBF866F8C5726D98FC9272BECD
          5D457898CC33C2D570E9D3D0F6F078958AA2AA75EBEA53BE87FE5A0FA1AAD09C
          4C87DC569BA0742A7A11593CAB7B8AF732FAAEB5195296EBF267CD66B4561F11
          1AD1D9EBF346C535C6E461EA314AA77283EA334B5F31AC5FA1F63A4E3E4CE3B5
          8B5F2E41328F95F83F5ACDAEA6F6D84A2589BA1E87D3D2B98923313B230C329C
          1AFD1A94D4E29A3F30945C64E2FA1AFE15526FE46EC233FCC5755581E148488E
          794F42428FC3FF00D75BF5F1999CF9B152B74B23EEF2A83861637EB764178716
          EDEF8AA967FF001F0BF8D58BF6C44A3D4D57B3FF008F85FC6BBB0D1B6066FBDF
          F23C9C64B9B32A6BB72FE7734A9AEE1319E84E29D5435AB836B60D205DC41000
          35E1D0A6AAD58C1F567D2622A3A54A5516E95CBF498C550D1751FED0B4CB63CD
          438603F435A153569CA8CDD396E8BA55235A11A91D9851597AA6A9E45C416D19
          FDE3BAEE23F8466B529CE94A118CE5F6B6142AC6A4A508FD9DCADA8FFC83EE7F
          EB937F2AE16BBAD47FE41F73FF005C9BF9570B5F4D937F0E7EA7CBE77FC487A0
          5496F3B5BCAAE870476F5A8E8AFA13E6CEA6371246AE3A30C8A7555D34E6C62C
          FA7F5AB55CCF72028A28A4014514500145145001451450014514500145145001
          451450014514500145145001451450014514500141EB4507AD00145145001451
          4500145145001451450014514500145145001451450014514500145145001451
          4500145145001451450014514500145145001451450015A366FBE05F51C56752
          ABB28E188FA1AE2C5E1BEB34F96F667A381C5FD4EA39B574D58D7A2B20BB1FE2
          3F9D2124F535E4ACA5F59FE1FF0004F71E7ABA53FC7FE01A8F3C718E587D2A85
          C4E676F451D0545457A386C0D3C3BE6BDD9E4E2F32AB8B8F25AD10A9A0B96878
          EABE950D15DD529C6AC7966AE8F369559D1929D3766682DEC4DD4953EE29FF00
          698BFBE2B328AF2A595516F46D1EDC73AC4256714FEFFF00334FED517F7C527D
          AE2FEFFE86B368A5FD9547F99FE1FE4379DD7E915F8FF991788AFA07B330ABE6
          42430183D2B99ADDD5ADBCEB7DE07CD1F3F877AC2AF670B42187A7C90FC4F2F1
          3899E2E7ED2695F6D0EAE0F10D9C76F1A976DCAA01C29F4A79F12D97AB9FF80D
          7234570BCA70EDDDB7F7FF00C03D159C6252B24BEEFF00826FD8DE2DD4B70013
          8F30B2E7D09AB95CE584FF0067BA46270A783F4AE8EBD17150B2478B29393727
          D470E9505F5BFDA6D5D31F3632BF5A99696A7611CFE937A9A7DE096456650A46
          17AD6E7FC2556DFF003CA5FC87F8D616AB6FE45DB103E57F987F5AA75956C151
          C4CBDA4D6A7A1431F5F0D0E4A6F43B0B3D7A0BD7645475603386C7356FED8BFD
          D35C559DC1B5B9493B03CFD3BD754082011C835C53CB30F17B7E274FF6B62BBA
          FB8B82ED4F6351CD389140008E6A05EB4EA29E068D3929C56A88A998E22B41C2
          4F47E43AAC7DA47A1AACBD296B4AD87A75EDCEB631C3E2AAE1AFECDEE4EF7415
          18842C40CE077AE1E77F32791F046E62707EB5D8D54B8D26DAEA4DEC8558F52A
          719AD30D469619B705B8B138AAD8A49547B1CD5B4125C4C89182589EDDBDEBBC
          8CE507393DEA8DBDAC5689B624083BFA9AB30BE1B1D8D736654FEB14EF15AC7F
          A675E575FD856E596D2D3FC89EA3948C63BD2BB841EF50839EBD6BC8C061A529
          2ACF44B6F33DACCF171841D08EADEFE5FF0004911C2AE29DE68F4351515E9CF0
          546A49CA4B5678D4F31C4538A845AB2F2251203EB4D966D884AA3487FBAB8CFE
          A69A3AD2D47F67D0ECFEF34FED4C4DB75F7090CEF28CB42D10FF006C8CFE9529
          39A6A9A5ADA183A14DF3463A98D4C7622AC79652D02954D252160A0924003B9A
          EA38092A39AE22B75065916304E01638AC7D47C4B1C394B60247FEF9FBA3FC6B
          9DB8B996EA42F2B9763DCD2A9828E2636A9A7E66F43193C2CAF4FEEE8778922C
          8A1958303DC1CD57BBD4ADAC94996419FEE8E49FC2B87048E871495C31C9A2A5
          794EEBD0F5659DC9C6D1859FAFFC02F6ABAAC9A9CA091B225FBA9FD6A8D14AA8
          CEC1541663C003A9AFA0A74E34A2A105648F9DA9527566E73776C4AEDB489A39
          6C6054757658D772A9C91C77AC7D37C30F261EE898D7FE798EA7EBE95D2DB5BC
          56D108E2411A8EC2BCCC75286262A37D8F43038896124E495EE183E86A64FBA2
          929C0E6BCFC3E1561E4E49DCEDC4E39E2A2A2E36B0B451457733CE2193EFD36A
          7C528553D87E55E2D4C0CA737252DCFA0A399C69C23071D9090FDCA901C52000
          74E28AF4E943D9C145F43C7AD3552A4A6BAB1F45341C53AB5310A28A28185283
          494548C7D14CA706A43168A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A42D4D273400A5A928A298828A28A620A28A6934C404D25145
          00145145004939FDFCBFEF1FE751D3AE3FE3E25FF78FF3A6839A4B606F50A507
          14945301E0E68A65381A005A28A2800A28A2958770A5DD4945218EDD4669B452
          18FA2994B93401E1BFB6EFFC9B0F8CFE969FFA590D7CDBE1392E347FDA9ADBC3
          D6BB85F58DD6BBA85AA27554BBD39278C01FEF16C57DEFABE8F61E20D3A5B0D5
          2C6DB52B19B1E65ADDC2B2C4F8208CAB020E08079EE05528FC17E1F8B5D5D6D3
          42D3535955D8BA8ADA462E02EDD9812637636FCBD7A71D2BD8C363A34284A938
          DEFCDF8A4BF4679B5F092AD55544ED6B7E0DB3F383F67FFB345E2DF85F2697E5
          0D4EE347D7BFB65A123CC7016EB679F8E7A04C6EF45F6AE6BC0DE14D2AFADBE1
          C99EC9243A8681E2192EB39FDF3451DD988B7FBA5148FA0AFD3DD33E1E785B44
          D46F350D3BC37A4585FDE065B9BAB6B18A39670DCB0760A0B03DF3D69907C37F
          09DB0B610F86347885B47245004B0897CA4901122AE17E50C19B2075DC73D6BD
          1967317293517AF9FF008BF2E6FC0E15964AC9392D3CBFC3FE5F89F9CAF1CBAA
          785FE055AEA175A65BE92DE1FD6809F5E4692CE360F721D8A8392E1447B31CEF
          11F5E057D5DFB3F69BE03B7F0B7C1FFED1D622D73C5B6D677F1F87AFB1730996
          1DCE25DB1B601023C2FCE3A0CAF6AF6ABFF867E10D5746B4D22F7C2DA2DDE956
          8C5ADEC67D3E2782124E49442B85C927381DEB463F0B68B15CE9D709A458A4FA
          6C662B2956D9035AA11B4AC47194047042E38AE3C4E631C4439126B57B35D79B
          FCF5F23A6860A5467CCDA7B7E16FF2D0D5DD494515E19EB0514514EC2B851451
          4C41474A427149400139A4A28A00282714138A6F5A04D875A28A2A9210514534
          9CD3108DF35465706A4A6B73C570E2B0CABC6EBE247A382C63C34AD2F858CA07
          068A2BE6758B3EC5A52567B31D4DA55E9486BD3C649D4A74EA33C6C04551AD56
          92E81451456583AF1A137CDB336CC30D2C4535C9BA0EB51C10ADBC4234E14670
          3D39A928AEBC76229D5A6A3077D4E2CB70D568D494AA46CAC15C6F883FE42D3F
          FC07FF004115D9571BE20FF90B4FFF0001FF00D045564FFEF0FD3F545E75FEEF
          1FF12FC993F85FFE422FFF005CCFF315D5D729E17FF908BFFD733FCC575759E6
          DFEF3F2469947FBAFCD8531E40BC0E4D2C870A6A1A582C246AAF693DBB19E638
          E9D07ECA9E8DADC475122B2B7208C106B8BBCB7369732447F84F07D476AED6B0
          BC4B69C4770A3FD96FE95F5345F2BE53E46777AB306BB2F0FF00FC8260FF0081
          7FE846B8DAECBC3FFF0020983FE05FFA11AF3F38FF00775EBFA33D8C97FDE25F
          E17F9A346ABCDF7EAC52601ED5F3386AFF0057A9CED5CFA6C6619E2A9FB34EDA
          94A8ABB81E9462BD5FED55FC9F8FFC03C5FEC57FF3F3F0FF008252A96DBEF9FA
          53EE4E140A65AFDF6FA574D4ABEDF092A96B5FFCCE4A343EAD8F8D2BDEDFE459
          AC7F147FC8397FEBA0FE46B62B1FC51FF20E5FFAE83F91AF1305FEF30F53E971
          DFEED53D0AFE15BACA4B6E4F20EF5FEBFD2BA0AE1F4BBAFB1DFC521385CE1BE8
          6BB8AECCD68FB3AFCEB697E7D4E2CA6BFB5C3F23DE3A7CBA11DC47E644477EA2
          B36B5AB3EE63F2E53E87915BE555B7A2FD57EA7167587F86BAF47FA0C8BFD6A7
          D4569D6645FEB53EA2B4EA336F8E1E869927F0E7EA882FBFE3CAE3FEB9B7F2AE
          0EBD08804104641EC6A13656E7AC111FF800AC7038E8E12324E37B9D98FC04B1
          928B52B58E334D566D42DC28C9F301E3EB5DD54515AC30B6638910FAAA8152D6
          38EC5AC5CD492B58D70183783838B95EE159570313BFD6B56B2A73999CFB9AEB
          CA6FED25E879D9E5BD943D7F42F5A3EF817D47153D50B0936B943FC5D2AFD70E
          3697B2AF25D1EBF79E965D5BDB61A2FAAD1FC8A17D1ED903766AC0D66D7913A8
          F66FE86BAB9A2132153F81AAB1D87CDFBCDACBE9EB5EC60F1F4E9D1B547AC7F1
          3C2C6E5B56789E6A4B497E1DFF00CC5D26D7EC7A7C519FBD8DCDF535728A6C8E
          B1233B1C2A8C93E82BE72729559B93DD9F570846941416C914AFDF3205F4150D
          A4E82F523DC37907E5FC2B16FF005B7B876F286C527EF1EB49E1E24EAD192724
          86E7F0AFB1950F6382707D22FF0023E16157DBE3D54EF25F9E8761597E241FF1
          2A7FF797F9D6A566788BFE4152FD47F3AF96C27FBC53F547D9633FDDAA7A3FC8
          E7348BF3A7DE2B93FBB6F95C7B5757A8EA0961686624313C20F535C3D4B35D4B
          3A448EE59631B547A0AFACC5602389AB1A8FE7E67C8617309E1A8CA9AF97912D
          ACAF3EA70C8E773B4AA493F5AEE6B85D3016D46DB033FBC53FAD7755E4E72929
          C12EC7B192B6E136FB95B51FF907DCFF00D726FE55C2D7777EA5EC6E1546498D
          801F857166C6E07FCB17FC057564DFC39FA9C99DFF00121E84145584D3EE1CE0
          44C3EBC55EB5D1B690D3907FD81FD6BE81C923E68BF669E5DAC4BDF68A9A8E94
          5731214514500145145001451450014514500145145001451450014514500145
          14500145145001451450014514500141EB4507AD001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145002119183C8AE6EF2DFECD70E9DBA8FA574B59BACDBEF884
          A0729C1FA55C1D98D18D45145741415D169D71F68B5524E597E535CED5DD26E7
          C8B9D84FCAFC7E3DAA26AE80DE1D69D4DA70E6B9C0A3ABDBF9D6A580F9A3E7F0
          EF5815D69018107906B99BDB56B49D908F97AA9F515B41F4020AE8F4898CB629
          9EAA76D73C91B4AC1514B31EC2BA5D3ED8DA5AAA37DEEADF5A552D61A2CD3E99
          4E1D2B9CA4283CD3A9B4E1CD4B185145140C7839145354D3A801492C726901C1
          A28A4924AC8D1B727763E8A4078A5A9105381CD36941A010E1C53AABDC5D4569
          1EF95C22FBF7AE7EFF00C452CE0A5BE624FEF7F11FF0AB8C1CB606D44DABFD5E
          0B004336F97B22F5FC7D2B9ABFD5A7D40E1DB6C7D917A7FF005EA91249249C93
          DE8AEB8D351D4C5C9B0A28A2B52428A9AD6CE6BD9364285CF73D87D4D74BA778
          761B5C3CF89A5F4FE11FE359CA6A1B9518B918DA768571A861B1E545FDF61D7E
          82BA7B0D2ADF4E5FDDA65FBBB724D5B5E38A5AE19D494B43A231510A50714945
          6658FEB474A6838A75480EEB4B4D0714EA0A0A28A293431C0E68A6D381CD48EE
          14A0E2928A063C1CD14CA703400B45145001451452B0EE14BBA928A431DBA8CD
          368A431F45329726801D4537268C9A007514DC9A4A00751B85368A005DD49451
          4C41451453B0AE14514531051D2909C5250004E6928A2800A09C504E29BD6813
          62EEA2928A0571F71FEBE4FF0078FF003A653EE3FD7C9FEF1FE74CA76D06F714
          1A5A6D00E2905C7514039A2818A0E2941CD368A007D14DCE29775002D1451400
          5145140C28A28A560B8514514582E145145160B8514514C028A28A0414526EA4
          26801C4E29A4E6928A0028A28A002909A09CD2502B851451556105145349CD31
          0139A6B12052D35BA62B1ACA4E9CB95EA6F8771F6D1E757571A5CD264D1457CA
          BAD525BC9FDE7DAC70F463F0C17DC1451401530A72A8F962AE5D4AB0A51E69BB
          21470293AD04E68AFA696154A82A5DBF33E3E18C70C4BAFDFF0020A28A2BE767
          87AB4DDA513EAA9E2A8D5578C9051499A3359FB39F666DED61FCCBEF16B8DF10
          7FC85A7FF80FFE822BB0660AA493803926B8CD6E649F5399E360E871823E82BD
          CCA2138D76DAE9FAA3C1CE2A4254128B4F5FD196BC2FFF002117FF00AE67F98A
          EAEB8FF0FDD45697ACF3384528464FAE4574275DB11FF2F03F234B34A352788B
          C22DAB2E856555A953C35A7249DDEECB929C2D4559BA8EBB6C605304BBE45707
          001191DEB411C488ACA72AC320D766029CE9D1F7D5B5EA79799D4854AF7834D5
          96DF31D505DC02EADE488F4618FC6A62714DAF49773C83897431BB2B0C329C11
          5D8787FF00E41307FC0BFF00423583E20B5F26E84A07CB20E7EB57F49D6ED6CF
          4F8A291983AE7385CF735CD99C275A845535777FD19E9E5552146BB751D95BAF
          AA3A0A2B2BFE125B2FEF3FFDF357A2BB8A68D5D4E558641C57CB3C26216F07F7
          1F59F5DC37FCFC5F793D1517DA13DE8FB427BD2FAAD7FE461F5DC37FCFC5F791
          5CB7CF8F4A2D7EFB7D2A391B7B934E82411B127D2BE8E7464B07ECD2D6C7CA53
          AF1963BDB49E977F7172B1FC51FF0020E5FF00AE83F91AD2FB5C7EFF00956378
          96ED1ED12201B25B7038E38AF270786AD1C442528BB5CF7B198BA13C3CE319A6
          DA39BAECF43BCFB669E849CBA7C8DF857195BBE172F1CD213C44C00FA9FF003F
          CEBE8732A1EDA836B78EA7CE65988F618849ED2D3FC8E9AA1B98BCC8F8EA3915
          3515F194AA4A94D4E3BA3EDEB528D6A6E9CB6665C7FEB53FDE15A95992320B9D
          CBF74366ADFDB62F53F957B99853A95DC2508BD8F9BCAEAD2C3AA90A934B5FBC
          B14557FB6C5EA7F2A5FB6C5EA7F2AF23EAB5FF0091FDC7BBF5DC37FCFC5F793D
          154DF54891B1B246FF007532294EA0B8E11B3E86AD60F112D141912C7E160AEE
          A2FCC9E79443196EFDBEB5974F966699B2C7E83D2995F4D82C2FD5A1AEEF73E3
          B30C67D72A2E5F856C2AB156047515A91482540C3BD6554B6F70606F553D4546
          3B0BF5885E3F1234CB71AB0B53967F0BFC3CCD3A2A38E78E5CEC7048EA33C8A9
          2BE4651717692B33EEA328CD7345DD0561789B5111C42D50FCEFCBE3B0F4AB3A
          9EB90D8A32C644B3F651D07D6B939A579E5692462CEC7249AF7F2DC0CA5355AA
          2B25B799F3F99E3E3083A14DDDBDFC86569F877FE42B1FD0FF002ACCAD2F0F30
          5D5232480307AFD2BE8B17FEEF53D1FE47CD60FF00DE29FAAFCCEC6B3BC4033A
          54D8F55FE62B40107A1CFD2A2BC19B77FC3F9D7C361B4AF07E6BF33EF317AE1E
          A7A3FC8E3E1D2679402408C7FB5D7F2ABD0E8D0A72E4C87F215A1457DE39B67E
          6D716D2248A5408814647415AF5976FF00EBD3EB5A95F2D9B7F123E87D8647FC
          29FAFE8326FF005327FBA6B2AB566FF5327FBA6B2ABA729F825EA71E79FC487A
          0514515EE9F34145145001451450014514500145145001451450014514500145
          145001451450014514500145145001451450014514500141EB4507AD00145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          001451450014514500145145001451450014D7412232B0C861834EA2803979E2
          304AF1B75538A656AEB56F829301D7E56FE95955D29DD5CA0A3A514550CE8EC6
          E3ED56CAFF00C4386FAD5953583A4DCF9371B09F95F8FC7B56E8EB5CD256603A
          992C2932ED91438F4229F454811C36F1DB8C468133E95383914CA55352CA43A9
          475A4A290C7D2AD341CD28E29318EA28A290C29F4CA729A005A28A281A141C1A
          7532A9DEEAF0590209F325FEE2FF005F4A566F61DEC5E660A0924003A9358F7F
          E2148B296C048DFDF3D07F8D645EEA73DF37CEDB53B22F4AA95D31A56D6466E5
          D8927B892E642F2B976F5351D1456E4051455DD3F489F5020A8D91F776E9F87A
          D0DA5AB04AE53552C4000927A015B5A7786DE5C3DD131A7F707DE3F5F4AD8B0D
          260D3C6517749DDDBAFF00F5AAED724EB3DA26CA1DC482DE3B68C24481147615
          252034B5CC69B05381CD368E948B1D451D68A900A50690900124E00EE6B1AFBC
          4F05B9290AF9EC3BE70BF9D6918B9EC26D2DCDCA50715C749E29BD63F2F9683D
          973FCE9D0F8AEED0FCE91C83E9835A7B0991ED227634564E9DE22B6BE608730C
          A7F85BA1FA1AD6AC1C5C5D99AA69EC1451454D8A141A5A6D00E2A4771D4500E6
          8A062838A50734DA2801F453738A5DD400B4514500145145030A28A29582E145
          145160B8514514582E145145300A28A28105149BA909A007138A6939A4A2800A
          28A2800A42682734940AE1451455584145145301F3FF00AF97FDE3FCE994B71F
          F1F12FFBC7F9D341CD25B037A8B451450014A1A928A5601D4536943521DC5A28
          CD140C29726928A0076EA3229B45003F228A651400FA29945003E8CD328A0076
          451BA9B45002E4D251450014514500145216A4CD02B8A5A928A29D8414514530
          0A4A09C5349CD315C5273494521341204D368A2A80314628A2B1F670E915F71A
          BAD51EF27F785349CD293495A2496C66DB93BB0A28A2A886C42714DEB4A4E692
          8105145154800F4AE3357B3FB15EBA81846F997E95D8939ACAF10D9FDA2CFCC5
          1978B9FC3BD6D4E56919C95D1CB514515DC6215D3F87EEBCFB3F2C9F9A238FC3
          B573157F45BAFB2DF2E4E11FE53FD2B2A91E688E2ECCEA89A4A28AE33729EAB6
          BF6BB275032EBF32FD457275DC5727AB5AFD92F5D40C237CCBF435D34A5D0CA5
          DCA75BFE1FBAF3206849E50E47D0FF009FD6B02AD69939B7BE898742769FA1AD
          66AF1256E7574138145213CD711A0948C6969879AA130A8E7812E632922EE535
          25213C5324CE4D12047C92CE3FBA4D5E4508A0280A07402968AABB7B899A504B
          E6C60F7E86ABDDDC6728A78EE6A0495A30C14E3351B57914B2F853ACEA3DBA23
          DBAF9A4EAE1E34968FABFEBBF5128A28AF5CF0C28A28A080A28A2800A2909C0A
          A177ABA45958B123FAF61FE34D26F602ECB3240859D82AFBD64DDEB0F26561F9
          17FBDDCFF85519A77B87DD23163FCAA3AD9412DCAB0E0ECADB8310DEA0F34F7B
          B9E45DAD348C3D0B1A8A8AA718BD5A2D4A495930A29402C400324F615A369A3B
          498698EC5FEE8EA69B696E4142181E77DB1A963ED5AF69A42458694EF6FEEF61
          FE357A285204DA8A157DA9F58B9B7B0AE2018181D2973451598828A28A00012A
          4107045482E651FC66A3A2A25084FE2499A42ACE9FC126BD1921B994820B920F
          151D145118461F0AB04EA4EA7C726FD428A28AB330A28A2800A28A2800A28A28
          00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
          00A28A2800A0F5A283D6800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A28023B8845C42F19FE215CCB29462A46083822BAAAC4D62DFCB9C4807CAFF
          00CEB583E83467D14515B1400E0E475AE92CAE3ED56EAFFC5D1BEB5CDD5ED26E
          7C9B8D84FCAFC7E3DAA26AE80DF07228A45A5AE700A5A4A293043E8A4534B525
          0AA69D4CA7D052141A5A683834EA918528E29291E45894B3B0551D4934012543
          737715A26E95C28EC3B9AC9BDF1005052D864FFCF461FC85634B2BCEE5E462EC
          7B935B469B7B92E56D8D1BED7A5B8CAC39893D7F88FF008565F5A28AE8492D88
          6EE14514550054904125CC812242EC7B0ABFA7E872DDE1E5CC517BF53F4AE8AD
          6D22B34DB12051DCF73F5AC67514744528DCCED3FC3A9161EE7123FF00707DD1
          FE35B6A005000000E3029B4A0E2B925272DCD924875145150CA0A7039A6D00E2
          A407D145140D0038A7669B599E20BD36960554E1E53B47D3BFF9F7A6A3CCEC86
          DD95CC8D775A6BB91A085B1029C123F8CFF856351457A718A8AB2391B6DDD851
          4515420AE9FC3BAE34AC2D6E1B2DFC0E7BFB1AE62951CA30652430390476ACE7
          0535665464E2EE8F490734B54F4DBBFB6D94537761CFD7BD5B0735E5B5676676
          277168A28A4505286A4A295807514DA50D4877168A3345030A5C9A4A2801DBA8
          C8A6D1400FC8A29945003E8A651400FA334CA2801D9146EA6D1400B934945140
          05145140051485A93340AE296A4A28A7610514514C029282714D2734C571DBA8
          A6D140AE4971FF001F12FF00BC7F9D474EB9FF008F997FDF3FCE980D09680F71
          C0D2E734DA280B8FA29A1A9D40C28A28A430A3268A295805DD4B9A6D148771D4
          5368C9A02E3A8A4DD46EA077168A4DD46EA02E2D149BAA3FB545E618FCC4F307
          F0EE19FCA815D12D1505C5EC168AAD3CF1C218ED06460B93E83352E73405C766
          9375251405C5CD251453B0828A28A601451485A9885A696A4CE68A0570A2909C
          52139A7610139A4A28A7B00514515201484D04D25348028A28A64B614D268269
          28105145154802909A09C5369898535C060548C83C114E2714DA00E32FED4D9D
          DC911E80F1EE3B557AE87C4769BE14B851CA7CADF4FF003FCEB9EAEF84B9A373
          9DAB30A28A2B411D669579F6CB35627E75F95BEB572B98D12F3ECD76158E124F
          94FD7B574F5C538F2B354EE82B2F5DB43716C2451978F9FC3BD69B1A6D4A7677
          038AAB9A55A3DCDDA100EC42199BB56EC9A45A4926F31007B804806AD471AC48
          15142A8E800ADDD556D08511C4E29B4139345608B109A6D04E68A6485349C9A5
          27029B4C414514551214D3CD2B1A4A0028A28A04C28A2992CC9026E91828F7A0
          91F55AEAFE2B41863B9FFBA3AD675DEB0F26561F917FBDDCD671249C93935AA8
          771D8B575A84B7448276A7F74555A28AD52B1414514F8A179DF6A2966F6A6032
          ACDAE9F2DD9C81B53FBC6B46D34848F0D37CEDFDDEC3FC6B400C0C0E0564E7D8
          5720B5B18AD07CA32FDD8F5AB1451593772428A28A4014514500145145001451
          4500145145001451450014514500145145001451450014514500145145001451
          4500145145001451450014514500145145001451450014514500141EB4507AD0
          0145145001451450014514500145145001451450014514500145145001451450
          0145145001451450014514500145145001451450014514500145145001451450
          0145145001451450014514500145145001451450014514500155EFEDFED36CEA
          065872BF5AB14535A01CA5156F53B7F22E9B03E57F98554AE94EE5851D28A298
          1D169F75F6AB7049F9D786AB75CDD85D9B49C31FB878615D123060083907906B
          9E4ACC07514515002838A75329C0D4942D2A9A4A290C7D283C7D2A95E6A90DA0
          209DF27F717FAD61DE6A735E64336D4FEE2F4AB507206CD8BDD722B7CAC5FBD7
          F6FBA3F1AC3BABD9AF1B32BE7D1474150515D1182892DDC28A28AB1051475AD6
          D3F4179B0F3E634FEEFF0011FF000A97251DC12B99F6D692DE49B2242C7B9EC3
          EB5D169DA24569879312CBEA7A0FA55D8608EDE3091A8451D85480D72CEA3968
          8D546C3A8A28AC0B141A5A6D381CD03141A75329C0D0085A28A29343141C53A9
          94A0E2A4075731E2B949BB863ECA99FCCFFF005ABA7AE57C52A45FC67B18C7F3
          35BD1F8C89FC263514515DE601451450014514500757E1194B59CD19FE17C8FC
          47FF005AB76B9EF08A116F70FD8B01FA7FF5EBA006BCCAABDF67543E14381A5C
          E69B45646971F4534353A818514514861464D1452B00BBA9734DA290EE3A8A6D
          193405C75149BA8DD40EE2D149BA8DD405C5A293751BA80B8B4537268A0571D9
          A4DD4945017173494514EC20A28A29805145216A62169A5A9339A2815C28A427
          1484E69D842EEA29B453B0EE4B73FF001F12FF00BE7F9D45525C7FC7C4BFEF1F
          E751D24F407B8A0E29C0E699453B087D14DDD4E073536017752E734DA281DC7D
          14DC9A37503B8EA293229681851451400514514AC01451451600AFCC8FDA4A3D
          1AE3E3A7C5A8AE639C7895EE34D5D0EED6630C56F2ED8BCC69242CA8A0A6402D
          DF18C75AFD37AF93FE267ECC1E2EF17EB3F1A6EACDF4DF2FC5F169CBA6F9D3B0
          2A6092267F33E53B7846C633DABDACAAB4285594A6EDA2FF00D297E9BF91E5E6
          14A5569A5057D5FE4CF35F8B3A1D878D3E348D07E23EB462D3F45F00A39D44BC
          92C56D78CAAA6E76A105FF007926EC7F160678AFA43E0BF88351D23C29F0D741
          D1BCCF1D7866E6CEE23B8F18AB35BAC022DC220617058EE2047F78636E6BCB3C
          7DFB347C414D534BD63C35FD8DA8DD5CF8353C2DAADB6A13B2047F2BCB69636D
          BF376233CE57A73C7A9FC18F87FE3EF857E18F875E16693459F44D3EDEED75D9
          11A46977B33BC3E41200237300DB87D2BA71552954C3C54669DBA74D9DDF7BDF
          6D6CF430A10A90AD26E2D5FAFCD69F77CD1ED5451499AF9D3DB168A4DD499340
          AE2E7149BA928A0570CE68A09C53775021C4E29A4D25155600A28A295C028A28
          27148029A4E6827345558028A28A09B85349A09A4A04145145348028271474A6
          939AA061D693A514D27340B60273451450219344B3C4F1B72AC306B8B9E16B79
          9E36FBCA706BB7AE7BC476BB644B851C37CADF5EDFE7DAB7A52B3B1125D4C5A2
          8A2BB0C83A575BA65E7DB2CD1C9F9C7CADF5AE4AB4744BBFB3DD6C63F249C7E3
          DAB2A91BA1A674945145721A052134B4D2734005358D2F4A6D509851452138A0
          9109C9A4A28AA4261451413C5310D27268A28A002909C0C9E0556BAD422B5C82
          773FF756B1EEAFE5BA3863B53FBA3A55A8B64EE68DDEAE91E561F9DBFBDD87F8
          D644D33CEFBA462C7DE99456CA290C28A28AA1851D6A7B5B296EDBE4185EEC7A
          0AD9B4D3A2B5C1C6F7FEF1FE950E490AE67DA690F361A5CC69E9DCD6BC3025BA
          6D8D428FE7525158B93620A28A2A44145145001451450014C965485373B055F5
          34DB9B85B588BB7E03D4D73D7372F7521773F41D855C6371D8D29B5B50711C65
          BDD8E2A1FEDB9B3F7131F8D67515AF2A1D8D8875B4638910A7B8E6B463916540
          C8C194F715CB54D6B74F6926E43C775EC6A5C1740B1D2D151C13ADC44B221E0F
          E952562485145140051451400514514005145140051451400514514005145140
          0514514005145140051451400514514005145140051451400507AD141EB40051
          4514005145140051451400514514005145140051451400514514005145140051
          4514005145140051451400514514005145140051451400514514005145140051
          4514005145140051451400514514005145140051451400514514014B55B6F3ED
          89032C9C8FA77AC1AEAEB9ED46D7ECD70401F2372BFE15B41F41A2AD14515A94
          15A7A5EA3E5110C87E4FE163DBDAB328A4D5F403ADA2B06CB5692D80471E6463
          A7A8AD38F55B6907FACDA7D1862B9DC5A02DD2838AAADA95B20E6653F4E6AA4F
          AE2818850B1F56E052E56C68D59245890B3B0551DC9AC5BFD64C994832ABDDFB
          9FA550B8BA96E9B32396F41D85455AC6096E170A28A2B51051451D6800A9ED6C
          E5BC7DB1AE7D58F4157EC34379B0F3E634FEEF73FE15BB144902048D4228EC2B
          19544B4452455D3F4986CC063FBC97FBC7B7D2AFD341C53AB99B6F5658514514
          8A4381CD2D329C0E6A58C5A28A2900E07345341C53A81EE381CD2D37A5381CD0
          014514526862838AC6F14DA992D639D464C6707E86B629B246B346D1B8CA30C1
          14E32E56989ABAB1C0D156F52D3DF4EB828DCA1E51BD4554AF4934D5D1CDB051
          4514C028A2B5741D28DF5C091C7EE233939FE23E9532928ABB1A57764743A15A
          1B4D362561876F9CFE3FFD6C55FA28AF31CB99DD9D69595850714E0734CA2958
          63E8A6EEA7039A9B00BBA9739A6D140EE3E8A6E4D1BA81DC75149914B40C28A2
          8A0028A28A5600A28A28B0051451458028A28A0028A29334C05A29375264D02B
          8B9C526EA4A2815C339A282714DDD4087138A6934945558028A28A5700A28A28
          B8125C7FC7C4BFEF1FE751D3AE7FE3E65FF7CFF3A606A496837B8B45145020A2
          8A2AAE02E714BBA9B45003E8A652E4D2B00EA293751914AC03B268DD499A281E
          A2EEA5DD4DA280B8EDD46EA6D1405C76EA4DD494501717751934946680D428A4
          C8A3751610B453726929D8076EA4CD2514EC01451451700A28A2A6E014521348
          4E69D8052D494514C41451484E2810B4D273484E68A0414514552401474A3A53
          49CD300273494521340809CD25145020A28A693400139AAF7B6C2EEDA488FF00
          10E0FA1ED53D156B411C4329462A4608382292B4F5EB4F22EFCC5184979FC7BD
          6657727757300A3A5145501D5E9B77F6CB45727E71F2B7D6AD5731A45EFD92E8
          06388DF86F6F435D3938AE29C7959A2621349452138A480426928A28105349CD
          2934DA620A28A2A890A6939A25916252CCC147A9ACABAD67AAC03FE06DFD0534
          9BD80D09EE63B65DD2305F41DCD645DEAF24D958FF00769EBDCD52791A562CEC
          598F734DAD941200EB45145680145156AD34E92E883F723FEF1FE949BB015951
          9D82A82CC7A015AB69A3E30D3FFDF03FAD5EB6B38AD5708BCF763D4D4F58B9DF
          626E22A8450AA0003A014B451598828A28A0028A28A0028A28A0028A2919B6A9
          6F419A00C2D5AE4CD72501F9538FC7BD52A56258927A9E692BA92B2B14145145
          318514514017F48B9314FE593F2BFF003ADCAE5A3731C8AC3AA906BA8EB584D6
          B7258B451456620A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A0F5A283D6800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800AAD7D6A2EE02
          BFC63953EF5668A69D80E5482A482304751495ABABD96099D071FC63FAD65574
          277450514515430A28A2800A28A2800A28A2800A28AD1B1D1DEE30F2E638FD3B
          9A96D2DC0A76D6B25DC9B235DC7B9EC2BA0D3F4A8ACF0CDFBC97FBC7A0FA5598
          214823091A8551D854B5CF29B9688B48751480E696B1282941A4A2801F452039
          A5A002941C52514143E8A6838A7540C28071451400EA5E94C0714EA07B8F0734
          537A5381CD001451452B0C86EAD22BD84C72AEE53F983EA2B9CBDF0E5C404B43
          FBF8FDBEF0FC2BA9A338AA8D4943625C5338392DE588E1E3743E8CA452C5693C
          E711C4EFF4535DE839A5ADBDBBEC47B3399D3FC3123B07BA3B17FB8A724FE35D
          2431A411AC68A151780076A751584A6E7B9AC6296C3A8A6D286ACEC58B451452
          00A28A2AAE02E714BBA9B45003E8A652E4D2B00EA293751914AC03B268DD499A
          281EA2EEA5DD4DA280B8EDD46EA6D1405C76EA4DD494501717751934946680D4
          28A4C8A3751610B453726929D8076EA4CD2514EC01451451700A28A2A6E01452
          13484E69D80764514DA28B0125CFFC7CCBFEF9FE751D4973FF001F32FF00BE7F
          9D4742D81BD401C5286A4A29887514DA5DD4AC3168A339A2900514514EE01451
          451700A28A29DC05CD1934945002E4D1934945002E4D19A4A2800A28A2800A28
          A295C028A28A2E01451467148028A4DD499A760149A42734514C028A28A0570A
          2909C52139A09149A6D14500145145558028271484E29B4C57149CD251484E68
          0026928A28105145213400134DA28AA00A28A2992CA7AB5AFDAEC9D40CBAFCCB
          F5AE4EBB62735CAEAD69F64BC600611FE65AE8A52E867229D14515D0485747A3
          DF7DAA0F2DCFEF5063EA3D6B9CA9209DEDA55910E196A251E6409D8EBE984E6A
          1B5BC4BD843A707BAF706A6AE5D8B6C2827145349CD210945150DCDDC7689991
          B9ECA3A9AB48964C48009270077ACEBBD6638B2B10F31BD7B0FF001ACDBCD424
          BC6C13B63EC83FAD55AD943B812CF7325CB6E918B1F4EC2A2A28AD0028A28A60
          14E8E2799C2A29663D855AB3D364BAC31F923FEF1EFF004ADAB7B68ED936C6B8
          F53DCD6729242B94ACF4858F0F361DBFBBD87F8D6881814B4562DB7B92145145
          200A28A2800A28A2800A28A2800A28A2800A64C3744E0752A69F4500729454D7
          70982E244EC0F1F4A86BA8B0A28A29805145140075AEA946140F415CED8C3E7D
          D46BD81C9FA0AE8EB1A8C961451456420A28A2800A28A2800A28A2800A28A280
          0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
          0A0F5A283D6800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2801080C082320F6AC2D474F36ADBD06623FA56F5232865208041E
          A0D5465619CAD15A779A41525E0E47F73B8FA566B2942430208EC6B74D3D8625
          14515430A28AB3069D3DC60AA10BFDE6E052BD80AD53DAD94B767E45F97BB1E9
          5AD6DA345161A53E6B7A76AD00028000C01D8566E7D80AB65A5C36B8623CC93F
          BC7B7D055DA6838A7573B6DEE505381CD36941C521A1D4E0734DA01C52631D45
          14521853C1CD32941C5003A8A3AD140C2941A4A29143E8A6834EA900A01C5145
          003A96980E29DD681EE381CD2D329C0D017168A28A561852834945201F45301C
          5381CD20168A28A07700714A1A928A063A8A6D2EEA5618B4519CD148028A28A7
          700A28A28B80514514EE02E68C9A4A28017268C9A4A28017268CD25140051451
          400514514AE01451451700A28A338A4014526EA4CD3B00A4D2139A28A6014514
          502B85145140AE3AE4FF00A4CBFEF9FE74C0734EB9FF008F997FDF3FCEA3A16C
          0F71F45341A5C8A042D145140EE14668A281DC5DD4B914DA28B0C7514DA334AC
          03A8A6E4D2EEA2C02D149BA8DD4AC02D149BA8DD45805A293751BA8B00B4526E
          A371A760168A6E4D14580764526EA4A29D803268A28A0570A28A2815C28A4271
          485A810A4E290B5251400514514EC01451484E2A805A426909CD25020A09C504
          E29B406C04E68A28A0414514D2680149A6D145500514514C96C29A4E68269281
          0552D5ACFED96A768CC89F32FF00855DA29A7677038AA2B4B5AB1FB34FE620FD
          DC9CFD0D66D76A7757320A28A2A8096DEE64B5903C6D83FA1ADAB6D6A194012F
          EE9FDFA560515128A96E0755F6A858712A11FEF0A8A5D46DE21CCAA7D979AE6A
          8A8F66877352E75C66C885768FEF375ACD776918B331663D49A6D15A2496C20A
          28A2A8028A2ADD9E9D25D107EE47FDE3DFE949BB015A389E670A8A598F615B16
          7A4AC5879B0EFF00DDEC2AE5BDB476A9B635C7A93D4D4B58CA77D89B85145159
          8828A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00CFD5AC
          8CE82541975EA3D4562575759B7BA489897870AE7AAF635AC656D18D331A8A92
          5B792038910AFD47151D6A505152C36D2CE711A16F7ED5AD63A52C043C987907
          41D852724843B4BB236D19771891FB7A0ABD4515CEDDDDC90A28A29005145140
          0514514005145140051451400514514005145140051451400514514005145140
          0514514005145140051451400507AD141EB400514514008480327814DF3A3FF9
          E8BF9D66F8ABC3769E31F0D6A9A15F990596A36D25ACC616DAFB1D4AB60F6383
          5E03FF000C05F0CBFE7B6BBFF81ABFFC4574D2851927ED26D7CAFF00AA319CAA
          27EE46FF003B7E87D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9
          EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF00115B7B2C2FFCFD
          7FF80FFC133E7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F3
          7FFC3017C32FF9EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF00
          1147B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F807D21E747FF3D17F3A
          3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E06AFF00F1147FC3017C32FF
          009EDAEFFE06AFFF001147B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F8
          07D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E06AFF
          00F1147FC3017C32FF009EDAEFFE06AFFF001147B2C2FF00CFD7FF0080FF00C1
          0E7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C3
          2FF9EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF001147B2C2FF
          00CFD7FF0080FF00C10E7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7
          A2FE75F37FFC3017C32FF9EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE
          06AFFF001147B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F807D21E747F
          F3D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E06AFF00F1147FC3
          017C32FF009EDAEFFE06AFFF001147B2C2FF00CFD7FF0080FF00C10E7AFF00C8
          BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF
          00E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF001147B2C2FF00CFD7FF00
          80FF00C10E7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F37F
          FC3017C32FF9EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF0011
          47B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F807D21E747FF3D17F3A3C
          E8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E06AFF00F1147FC3017C32FF00
          9EDAEFFE06AFFF001147B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F807
          D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E06AFF00
          F1147FC3017C32FF009EDAEFFE06AFFF001147B2C2FF00CFD7FF0080FF00C10E
          7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C32F
          F9EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF001147B2C2FF00
          CFD7FF0080FF00C10E7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2
          FE75F37FFC3017C32FF9EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06
          AFFF001147B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F807D21E747FF3
          D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E06AFF00F1147FC301
          7C32FF009EDAEFFE06AFFF001147B2C2FF00CFD7FF0080FF00C10E7AFF00C8BE
          FF00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00
          E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF001147B2C2FF00CFD7FF0080
          FF00C10E7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC
          3017C32FF9EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF001147
          B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8
          FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E06AFF00F1147FC3017C32FF009E
          DAEFFE06AFFF001147B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F807D2
          1E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E06AFF00F1
          147FC3017C32FF009EDAEFFE06AFFF001147B2C2FF00CFD7FF0080FF00C10E7A
          FF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9
          EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF001147B2C2FF00CF
          D7FF0080FF00C10E7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2FE
          75F37FFC3017C32FF9EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06AF
          FF001147B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F807D21E747FF3D1
          7F3A3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E06AFF00F1147FC3017C
          32FF009EDAEFFE06AFFF001147B2C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF
          00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC3017C32FF9EDAEFF00E0
          6AFF00F1147FC3017C32FF009EDAEFFE06AFFF001147B2C2FF00CFD7FF0080FF
          00C10E7AFF00C8BEFF00F807D21E747FF3D17F3A3CE8FF00E7A2FE75F37FFC30
          17C32FF9EDAEFF00E06AFF00F1147FC3017C32FF009EDAEFFE06AFFF001147B2
          C2FF00CFD7FF0080FF00C10E7AFF00C8BEFF00F807D202542701D49FAD24B6F1
          CE31222B7D45780787BF61EF875E19D7F4DD5ECE5D68DDE9F731DD4224BC52BB
          D1832E46CE4640AFA0EB9EAC69C5AF6526FE56FD59B41CDFC6ADF3B949B48B66
          3C2B2FD1A85D22D97AAB37D5AAED159733354C862B4861E523553EB8E6A70734
          9474A9287504850493803B9A33C66B0753D44DCB98D0E2207FEFAAA8ABB02E5C
          EB51C64AC4BE61F5E82A9B6B5727A155FA2D50A2B650480D18F5CB853F30471E
          E315A369ABC37242B7EEDCF63D0FE35CED149C130B9D8834EAC5D23522E4412B
          64FF00031FE55B20E6B9DAE57666898E06869153EF305FA9A4AF2CF8C3FB3878
          4FE38EA1A75E788DF5049AC626862FB15C08C6D63939CA9CD3A718395AA3B2F4
          BFF9113728AF715DFDC7A979F1FF00CF44FF00BE851E747FF3D17F3AF9B3FE1D
          F9F0C3FE7B6BDFF81CBFFC451FF0EFCF861FF3DB5DFF00C0E5FF00E22BAFD961
          3FE7EBFF00C07FFB639F9F11FC8BFF0002FF00807D28278C7FCB45FCE9DE7C7F
          F3D17F3AF9A7FE1DF9F0BFFE7B6BBFF81CBFFC451FF0EFCF85FF00F3DB5DFF00
          C0E5FF00E2297B2C2FFCFD7FF80FFF006C1CF88FF9F6BFF02FF807D2DE747FF3
          D17F3A3CE8FF00E7A2FE75F35FFC3BEFE17FFCF6D77FF0397FF88A3FE1DF7F0B
          FF00E7B6BDFF0081CBFF00C453F6584FF9FAFF00F01FFED87ED311FF003ED7FE
          05FF0000FA53CE8FFE7A2FE74A278FFE7A2FE75F357FC3BEFE17FF00CF6D7BFF
          000397FF0088A3FE1DF7F0BFFE7B6BDFF81CBFFC452F6584FF009FAFFF0001FF
          00ED87ED311FF3ED7FE05FF00FA5FCE8FF00E7A2FE7479D1FF00CF45FCEBE681
          FF0004FBF85FFF003DB5DFFC0E5FFE229DFF000EFAF85FFF003D75DFFC0E5FFE
          2297B2C27FCFD7FF0080FF00F6C1ED311FF3ED7FE05FF00FA57CE8FF00E7A2FE
          7409E31FF2D17F3AF9ABFE1DF5F0BFFE7AEBBFF81CBFFC451FF0EFAF85FF00F3
          D75DFF00C0E5FF00E2297B2C27FCFD7FF80FFF006C3F6988FF009F6BFF0002FF
          00807D2E278CFF00CB45FCC51E747FF3D17F3AF9A3FE1DF5F0BFFE7AEBBFF81C
          BFFC4503FE09F5F0B8FF00CB6D77FF000397FF0088A3D9613FE7EBFF00C07FFB
          60F69887FF002ED7FE05FF0000FA605C463FE5A2FE629DE7C7FF003D17FEFA15
          F337FC3BE3E17FFCF6D77FF0357FF88A3FE1DF1F0BFF00E7B6BBFF0081ABFF00
          C451ECB09FF3F5FF00E03FFDB0FDA6217FCBB5FF00817FC03E99F3E3FF009E89
          FF007D0A3CF8FF00E7A27FDF42BE671FF04F8F85C7FE5B6BBFF81CBFFC452FFC
          3BDFE177FCF6D7BFF0397FF88A3D9613FE7EBFFC07FF00B60F6988FF009F6BFF
          0002FF00807D2FE7C7FF003D13FEFA1479F1FF00CF44FF00BE857CD1FF000EF7
          F85DFF003DB5EFFC0E5FFE228FF877BFC2EFF9EDAF7FE072FF00F114BD8E13FE
          7EBFFC07FF00B61FB4C47FCFB5FF00817FC03E981711FF00CF45FF00BE852F9F
          1FFCF45FCC57CCDFF0EF7F85DFF3DB5EFF00C0E5FF00E228FF00877BFC2EFF00
          9EDAF7FE072FFF00114BD9613FE7EBFF00C07FFB60F6988FF9F6BFF02FF807D3
          3E7C7FF3D13FEFA1479F1FFCF44FFBE857CCDFF0EF7F85DFF3DB5EFF00C0E5FF
          00E2297FE1DEDF0B7FE7B6BDFF0081CBFF00C451ECB09FF3F5FF00E03FFDB07B
          4C47FCFB5FF817FC03E98F3E3FF9E89FF7D0A5F3E3FF009E8BFF007D0AF99FFE
          1DEBF0BBFE7B6BDFF81CBFFC451FF0EF5F85DFF3DB5EFF00C0E5FF00E228F658
          4FF9FAFF00F01FFED87ED713FF003ED7FE05FF0000FA63CE8FFE7A2FE7479E9F
          F3D17F3AF99FFE1DEBF0BBFE7B6BDFF81CBFFC451FF0EF5F85DFF3DB5EFF00C0
          E5FF00E228F6584FF9FAFF00F01FFED83DA623FE7DAFFC0BFE01F4CFDA23FEFA
          FE74BF688FFE7A2FE75F32FF00C3BD7E177FCF6D7BFF000397FF0088A3FE1DEB
          F0BBFE7B6BDFF81CBFFC452F6384FF009FAFFF0001FF00ED87ED311FF3ED7FE0
          5FF00FA6BCF8FF00E7A27FDF428F3E3FF9E8BFF7D0AF997FE1DEBF0BBFE7B6BD
          FF0081CBFF00C451FF000EF5F85DFF003DB5EFFC0E5FFE228F6384FF009FAFFF
          0001FF00ED83DA627FE7DAFF00C0BFE01F4D79D1FF00CF45FCE8F3A3FF009E8B
          F9D7CCBFF0EF5F85DFF3DB5EFF00C0E5FF00E228FF00877AFC2DFF009EDAF7FE
          072FFF001147B1C27FCFD7FF0080FF00F6C1ED311FF3ED7FE05FF00FA6BCE8FF
          00E7A2FE7479D1FF00CF45FCEBE65FF877AFC2DFF9EBAF7FE072FF00F114BFF0
          EF5F85BFF3DB5EFF00C0E5FF00E228F6384FF9FAFF00F01FFED83DA627FE7DAF
          FC0BFE01F4CF9D1FFCF45FCE8F3A3FF9E8BF9D7CCDFF000EF5F85BFF003DB5EF
          FC0E5FFE228FF877AFC2DFF9EDAF7FE072FF00F1147B1C27FCFD7FF80FFF006C
          1ED313FF003ED7FE05FF0000FA67CE8FFE7A2FE7479D1FFCF45FCEBE66FF0087
          7AFC2DFF009EDAF7FE072FFF001149FF000EF5F85BFF003D75EFFC0E5FFE228F
          6384FF009FAFFF0001FF00ED83DA627FE7DAFF00C0BFE01F4D79D1FF00CF45FC
          E8F3A3FF009E8BF9D7CCBFF0EF5F85BFF3DB5EFF00C0E5FF00E228FF00877AFC
          2EFF009EDAF7FE072FFF001147B1C27FCFD7FF0080FF00F6C1ED311FF3ED7FE0
          5FF00FA6BCF8FF00E7A2FF00DF428F3E3FF9E89FF7D0AF997FE1DEBF0BBFE7B6
          BDFF0081CBFF00C451FF000EF5F85DFF003DB5EFFC0E5FFE228F6384FF009FAF
          FF0001FF00ED83DA627FE7DAFF00C0BFE01F4D7DA23FF9E8BF9D27DA23FEFAFE
          75F337FC3BD7E177FCF6D7BFF0397FF88A3FE1DEBF0BBFE7B6BDFF0081CBFF00
          C451EC709FF3F5FF00E03FFDB07B4C47FCFB5FF817FC03E98F3D3FE7A2FE74AA
          EAFF0075837D0D7CCDFF000EF5F85DFF003DB5EFFC0E5FFE22BD47E0C7C00F0C
          7C0983558BC36F7CEBA9346D3FDB67127281B6EDC28C7DF351529E1E316E9D46
          DF6E5B7E3765C2759CAD3824BD6FFA1E9545145711D170A2909C5216A042938A
          42D49450019A28A298125CFF00C7CCBFEF9FE751D4973FF1F32FFBE7F9D474D6
          C37B8514514AC20CE297752514807669699466801F4537752EE1400B45266968
          1DC28A28A02E14514503B851451405CF1AF8D9FB462FC27F13693E1BD37C3577
          E2BF106A16B2DF0B3B79D6111C11866672C41C9C239C01FC27DB3CAEA9FB65DA
          0F0DF80B53D0FC21A86BB71E2D174B0D84770B1CB0C9032ABA7421B249C63190
          07AE2B07E2D6A967E1EFDB83C0FA9EA6E90E9D1F85EE8BBC846D2156ED9873C7
          4AE2BE2DF8B2D7E2C78BFE036ABF0E0AF8716FAEF538EC26BBB3555864568959
          CC4A483C86EF5F45470B45AA7CD0DD5DBBBB6D2D1FDDD3CCF16A622AA73B4B67
          64ACBBC75FC7A9E9D7DFB6BE973784FC1BAC683E16BFD6AE7C497D2E991E9C67
          486586E50C63613821B71957072382338E83DE7C19AE6A1E23F0CD8EA3AAE8D3
          787B509D58CBA6DC48B23C043100165E0E40078F5AF887E2C7C0C9BE0F41F02B
          C1FA5EBEE357B9F12CB31D685B83E55CC925B0122C4490426178279DBCE3381F
          5758F812CECFC4BE05B9F1378C27D57C61A4C1751DB132476A352DEA448ED6E3
          3BB6AE3EE9E31935862A8E1A34E32A3D79BBDEC9BB795BF136A156BB9C954E96
          ED6D6D7F3BFE07A5D145257887A77168A4DC29375021D499A4C9A4A0076EA427
          34945001451453B0051451540145216A4A05702D494504E280F50A426909CD14
          05C28A28A041452138A42734EC004D25145300A28A299370A426909CD25020A2
          8A2800A09C504E29BD68022B9B75BA85A37E87BFA1AE56E207B699A371861FAD
          75F54752B017D1E4604ABF74FF004ADA12E5D0968E6A8A73A346E5581561C106
          9B5D44051451400514514005145140052A2348C1541663D00AB969A54971867F
          DDA7A9EA6B62DED63B55C46B83DC9EA6A1C92114ACB4809879F0CDD93B0FAD69
          018181D2968AC1B6F72428A28A40145145001451450014514500145145001451
          45001451450014514500145145001451450014CF29339D8B9FA53E8A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
          0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00283D68A0F5A002
          8A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002
          8A28A0028A28A0028A28A002BCEFE227ED03E03F851AE5BE91E29D70E997F710
          0B98E3FB24D283196650D94460395618EBC57A257C67FB4F4DA847FB50685169
          7A14BE24BEBAF095C5A47A7C4402E641749B8E78C2EEDC7D857760E8C6BD4719
          ED66FB6DEA73622A4A9439A3DD1F5D7873C47A678BB44B4D6347BD8B50D36ED3
          7C37309CAB8CE3F420823A8208AD2AF85F49D67E23FC14D0BC0BF0C6CB5387C3
          3AACDA5EA5AE5ECBF678AED93689E68E1F9B2B8C458247773CF1CEEA7ED19F11
          FC5DA77C1C8B42D42C34FD4FC54B776F7AD716AAF1192298C424C6323805B0A4
          0CF1D2BA65974EF784972EB6F4D75DBAD998C7171B7BC9DFF5D3FCCFB2B72EED
          B91BBAE33CD2D7C63F0C2E7C59A0FC75F8C97B7FE30B59EEF46D3774F75A8DB8
          8ED656F28988B6D24C51A3609080E4678E6AA7C38FDA6FC68DE28D72CAEFC536
          BE31B48BC3379AB4770BA67D9628EE614660232638D9E3F971961CE7B62A5E5F
          3D79249D927D7AABF61AC5C74E656BB7DBA1F595FF00C4AF0EE9BE3ED3BC1771
          7E63F126A16CD776D67E4C843C437E5B785DA3FD5BF0483C7B8AE9EBE00F867F
          103C49E22F8E5F0E3C65E2AD421D5EFA5F0D6A1768D15BAC05638CDEA8460BF2
          9398C9DC00E180C1C64F69F06BF68AF881ADF8E3C02FAFEB16DA8E8FE3037C87
          4F4B28E2164626754D8EA37372A3EF13C13DF9AD2AE5B387C2F65AFAEBB69E5D
          48A78C8CB75BBD3D34DFEF3ECBA2BE76FD907E22F8FBE2CF87EFBC45E29D5ACA
          EB4B8E692CA0B786D56399A51B18BB15006D018A803D493DABE89AF36B51742A
          3A72776BB1D94EA2AB1535B30A28A2B0350A28A2800A28A2800A28A2800A28A2
          800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2828A5AB5
          C982D4A8386938FC3BD60D68EB6F9B845EC173FAD6757441590C28A28AB00A28
          A2801558AB020E08E41AEA6CEE3ED36D1C9DC8E7EBDEB95ADDD05F36D22FF75B
          FA565516971A3541CD2D301C53BAD7317B8F07345369C0E6A4028A28A062838A
          7532941C5003A8A28A0614A0E2928A431F45301C5381CD2B0C5A28A2900A0E29
          69B450171D4A0D341A5A07E83F39AF36F895FB44F803E116B76FA478AF5C6D33
          50B8B71751C42CE79B74659941CC68C3AA3719CF15E8D5F1BFED097BAF587EDA
          BF0FAE3C35A45BEBDADA68327D9F4FBB98431CB91781B2E781852C7EA00AEEC1
          D0857A8E33D926F7B6CBBBD8E5C4D59528271DEE977DFC8FAFB44D62D3C45A35
          86AB612F9F637D047736F2952BBE3750CA704023208E08CD5DAF91FF00689F8E
          5F127E1778D7C3DA4E9735A5B1F12E950C36B64D1C4EB63A81991643B88CB205
          3819C8CB13DAB9BF8D7F1F7E28F833C77F11346D23C4D6D0D9F85F4BD3EEC34B
          A742F24AF21B48E4C12303734ECDC8200E001C11BC32DA95795C5AB4B55AF9A5
          DBBB329E369D3BF327A6FF00737DFC8FB72B3BC45E20B0F09E83A86B5AA4FF00
          66D36C207B9B99B633EC8D012C70A093800F0066BE32F8A5FB52F8E4788EC34F
          D13581A13A7856D758F26D74A17AD7D792A23F9272ADE5A61F86E00C7279155B
          E35FC73F1D78BE2B0F0F41736FA2E9DA9FC3F9B58D5AC65B30C6595A19BCC405
          BE64C6CC2E0F07AEEE9550CAEAB71726ACFF002FB89963E9A52E54EEBFAEE7D4
          FA1FC7AF04788B59F0D695A7EB2D3DF788ED9EF34C8BECB32F9F126FDCD92802
          E3CA7E1883C7B8AD9D7BE27F86FC31E2FD0FC2FA96A06DF5BD6F7FD82D843237
          9DB7EF7CC14AAFFC088AF917E0FF00C57D77C297FF0004FC396725B9D1AF3C33
          7B7B710BDBA33BBC6B76EB8908DCA331AF008EFEB5C7FC3BF883E2DF89BF197E
          0BF893C57AA41A94D73777EB6E22B5585A145C82876F0C32320E33EA4D6EF2C4
          A5277B4527D757F15BA7F775FCCC9639F2A5D5B5D34FB37EBE67E89E696BE1BF
          875FB51FC41D6FC5FE08D6351D5ADAE3C3BE29F115CE8DFD88B651A0B545F242
          3ACA06F2733F73FC3EFC7A97ECBDF127E217C52F12F8B6EF5DD5ECA6F0E691A8
          DC69F15B25A2A4EEF95299650005551F525CE7A0AE2AB97D5A31729B565FE76B
          6DBDD1D34F194EAC94629EBFF0E7D254537752EE15E59DC2D1499A5A0770A28A
          280B85145140EE1451450170A28A280B85145140AE145149405C5A29370A4DD4
          0875266932692801DBA909CD251400514514EC014514550051499145003EE7FE
          3E65FF007CFF003A606A75C9FF004997FDF3FCEA3A4B607B8FCE68A652E4D315
          C75149BA96818514514AC01451452B005145145805C9A371A4A28017751BA928
          A402EEA375251401C77C44F83FE0DF8AE968BE2BD06DF583684981E42C8F1E71
          90190838381C671C52C3F087C1D6EFE1A687C3F6B09F0DEFFEC91182A2D37637
          1500E09240249CE4F3DEBB0A2B6556A24A2A4ECBCC8F6706EF65739FF137803C
          3FE32D4F45D4359D322BFBCD16E05D69F348581B7972A770C11CE517AE7A54FA
          8F83B46D5BC4BA4F882EEC239F59D29654B2BB627742245DB201CE391C722B66
          8A9E79DAC9FF004F71F2C77B0514515162828A28A2C01451453B00514526EA60
          2D19A6934940AE38B5252504E2800A09C526EA4A0009CD145140828A29280169
          09C5213494EC014514550828A2827141214D2734139A4A0028A28A0028271413
          8A6F5A041D68A29A4E6A83602734945141254BED3A3BD5CFDD907461FD6B02E6
          D25B56C48B81D987435D4934C650EA4300C0F506B48CDAD04CE4E8AE825D22DA
          4390A50FFB26A2FEC28BFE7A3FE95B73A118940049C01935BC9A2DBA7DEDEFF5
          3FE15663B78A1FF571AAFB81CD2735D00C4B7D2A79B058796BEADD7F2AD4B6D3
          61B6C1C6F7FEF355BA2A1C9B00A2A39A64813748C147BD674DAD80711479F763
          FD2928B7B13B9AB45627F6DCF9FB91FE47FC6A7875B52712C657DD79A7C8C2C6
          A514C8A549903230653DC53EA041451450014514500145145001451450014514
          5001451450014514500145145001451450014514500145145001451450014514
          5001451450014514500145145001451450014514500145145001451450014514
          50014514500145145001451450014514500141EB4507AD001451450014514500
          1451450014514500145145001451450014514500145145001451450014514500
          1451450015E67ADFC1A3AC7C79D03E247F6B088695A6BE9FFD9BF67CF9BBBCDF
          9FCCDDC7FADE9B4FDDEBCF1E9945690A92A77E57BAB7C99128A9DAE78C7C6EFD
          9FAEBE27F8A348F12E8DE205F0FEB5616771A7B3CD69F688E5826474618DCB86
          0247C1E7AFB56568DFB29DBE817BF0BA5B3F103087C15E7334725A64DEBCAFBD
          CE77FEEFE627030DC63D2BDF28ADD62EB460A0A5A2F4F3FF003664E85372726B
          57FD7E88F9FBC49FB2EDEEB3F107C71AD5AF8AFEC3A378BAC5AD6FB4EFB10770
          FE56D461216E8AE03E0019E573DEB2BC1FFB1DDC687A8C175A9F8C4EA489E1C9
          FC3A618F4F116D8E45750CADBCFDD0FDC12482723381F4B5157F5DAEA3CAA5A6
          DB2F417D5A95EF6FCCF9A3E1AFEC7771E0AF13F86F55D4BC60759B6D1B4FBAD3
          56C469E220D14C6724070E48C19D8F209ED90318B1F0C7F6459BC07E31F0EEA7
          7DE2BFED7D2BC37F69FECAB11642275331624C8FBCEEC1627803903A0E2BE8FA
          29CB1D8895EF2DFC979FF9B12C3528DACB6F5F2FF24799FECFDF068FC0CF034B
          E1D3AB8D68BDE4977F6916FE46372A8DBB77374DBD73DEBD328A2B92A5495593
          9CDEACDE31508A8C764145145665851451400514514005145140051451400514
          5140051451400514514005145140051451400514514005145140189AD2E2E94F
          6283F99ACFAD9D6A0DF0AC807DC383F4358D5D117A1414514558C28A28A002B6
          F405C412B7AB63F4AC4AE974C87ECF688A4618FCC7F1ACAA3D068B74038A28AE
          618FA29A0E29D415B8E07345369C0E6A46145145002838A775A652E71400EA29
          01CD2D00145145050E0696994A0E2A6C31D452039A5A4014038A28A007039AF0
          CF8BDFB3AEB7E3FF008B1A278FBC3BE37FF844B56D2AC0D8C24698B767932EE6
          F99C0E5662B82A7D73E9EE3466B6A55A7465CD07AEDDF7F533A94E35572CCF9B
          FE227EC877FF0014EF67D4BC43E386BBD6934AB3D3EC6F974D09F66922759259
          F689002D2307E06DDA1F1938E7CA3C57F0635BF8BBFB4CFC4DF0C1D7DF49373A
          269E2EF501621E2BBF2D6CD986D2C36E5D030C3646DC7209AFBA41CD1819CE39
          AEEA598D6A7E7A5968B4D579797EA72D4C1529EDDF5DF5DFCFCCF9D7C61FB27E
          A375AF596AFE0FF1B4DE17BC5D021F0F5D4C6D4CB23C31850244657528F8451C
          7A704545F10FF640BAF196B7A46A369E39BBB19AD7C38DE1EBB9EEED45D4D76A
          51D4C8CCCC396F30EEEFC7041391F47D2E4D64B1D888DAD2DBC97F91A3C2D177
          BADFCD9F3CF86FF6475D0FC47F0FF529BC4DF6A8BC2DA45C692F02D96C376255
          9D4B86F30ECC79FD30DF77AF3C61FC34FD8AEF3C05E28F086AB3F8E0EA56DE1B
          B9B89ADEC7FB34461925EDBC4990724924E7B000639FA8F752D3FAFE21A6B9B7
          F25E7E5E6C1612868F976F37E5FE48F98BC1BFB179F0AF8D342BC93C566EFC31
          A06AB3EB1A76942C424AB349B3E579779C85F2A3FE1E707A66BD37E057C143F0
          5ED3C4B01D606AFF00DB3AAC9A96E16DE4F93B801B3EFB6EC63AF1F4AF50A2B3
          AB8BAF5938CE5A3F25DEFF009970C352A6D38A0A28A2B86C7485145145805C9A
          371A4A28017751BA928A402EEA375251400BBA8DD4945002EE3464D2514C028A
          28A2C01451451600A28A29D8028A2937530168CD349A4A0571C5A92928271400
          5149BA8A0341F75FF1F337FBE7F9D479C54975FF001F337FBE7F9D47496C0F76
          2EEA5A6D14C2E3A8A4DD46EA0341D934BBA9B4501A8EC8A5A651405C7D14DC9A
          371A02E3A8A4DD46EA077168A4DD4645002D149914645002D1499146E1400B45
          26EA375017168A6EEA326815C751914CA280B8EDD4993494501A851466937501
          A0B49BA928A02E19345145020A28A2800A2909A42734EC0296A6D145300A28A2
          98AE14514D268245271494945001451450014138A09C53681075A28A6939AA0D
          809CD25145020A42682714DA620A28A2A890A28A42680026928A2800A86EAE56
          D612EDF80F5353560EAB7067B92A0FCA9C0FAF7AA8ABB16E57B8B87B990BB9C9
          EC3B0A8A8A2BA061451453026B6BA7B593721E3BAF635D0DBCEB7312C89D0F6F
          4AE62AFE8F7062B8F2C9F95FF9D6738DD5C4CDCA28A2B02428A28A0028A28A00
          28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
          28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00
          28A28A0028A28A0028A28A0028A28A0028A28A0028A28A00283D68A0F5A0028A
          28A0028A2B84D57E30E8DA47C55D2BC0734572DA9EA16FE7ADCA28FB3C448919
          2376CE43B086420639C55C6129DF955EDA932928EE7774514541414515C278F3
          E2A7FC219E25D1340B5F0F6A5E21D53568679E1834F68576A45B379632C883F8
          C77AB842551F2C49949455D9DDD15C5F82FE28D9F8BB5BBDD0EE34AD4FC3DAFD
          A42B73269BAB448B23C2C7689636466474DC0AE43707838AED28942507690464
          A4AE828A28A82828A28A0028A28A0028A28A0028A28A0028AE6BC7DE358FC0FA
          347742CE5D4EFEEAE12D2C74E808125D4EE78452780000CC49E02AB13D2BA285
          9DA1432A0490A82CAADB803DC03819FCAA9C5A4A5D18AEAF61F4515CA7C47F89
          DE1EF853E1D7D67C477C2D2D41091C6A374B337F7513AB1EFEC324E05118CA6D
          462AED836A2AEF63ABA2ABDB5EC5756315DAB6D8248C4A19B8C2919E7F0AF3AB
          4FDA23C1F79716C55F538F4ABAB816B6FADCBA6CC9A7CD296DA15672BB705B80
          DD09EF551A739DF955EC4B9C63BB3D368A46608A5890140C926B8DF86FF16740
          F8AD0EA9368124F2C3A7DC7D9E49268B60725432B27AA952083DC1149424D392
          5A21B924D26F567674571FE24F8B1E1AF0B78C343F0BDEDF675DD624F2EDECE1
          1BD94609DCF8FB8A704027AF38CE0E3B0A4E328A4DADC14936D27B0514515250
          515E75E22F8C1F62F16DDF867C3BE1BD4BC5DAC58C692DFA583C3145681C6515
          E495D577B0E428C9C56DFC3BF88BA7FC47D26EAEECE0BAB0B9B2B97B2BDD3EF9
          024F6B3A637238048EE08209041AD9D29C63CCD6866AA45BE54CEAA8A28AC4D0
          28A2ABD95FDB6A5079F697115D43B993CC85C3AEE562AC323B860411D8822802
          C51451400514514005159BE25D721F0C787754D62E11E5834FB596EE448F1B99
          510B1033C670293C31AF43E2AF0DE95AD5B46F15BEA36915DC71CB8DEAB22060
          0E38CE0D572BB737415D5EC69D145213804FA548C5A2B9EF0078D2D3E21F83B4
          BF11D8C335BDA6A1179B1C57000914648C1C123B7AD740CC154927007249AA94
          5C5B8BDD0934D5D0B45731E02F1AFF00C27BA7DDEA76F6125AE93F69786C6EA5
          7C9BD894E3CF55C708C41DB9E4819E011563C51E2F83C3177A15A34125D5DEB1
          7EB6304311191F233BC873FC2888CC7E8077AAF67252E4B6A2E656E6E86FD15E
          4F6DF1E67D46EF5A1A6F807C4BABD8E95A85C69D35E588B560D2C2E51F6A34CA
          E46471C679AEBF41F899E1FF0010F811BC5F6F7861D1238659A796E10C6D008F
          2240EA795652AC08F6AB951A90DD12AA465B33A9A2BC7A4FDA1CD96950788351
          F0478834DF074C50AEB93880848D880B2BC22432AC6720E4AF439C57AFC722CB
          1ABA3074600AB29C823D6A674A74FE2438CE33D8751451591635D0488CAC32A4
          608AE76F2D1AD252A7953F75BD4574951CF025C465245C8FE557195868E628AD
          0B9D1E58C9317EF17F5AA4D048870D1B2FD456E9A650CA2A54B69653F2C6C7F0
          AD0B4D11890D39C0FEE29FEB49C92021D2EC0DC482471FBA53F99ADEA44408A1
          540551D00A5AC24F9807034B4CA70359942D2838A4A2900FA2980E29DD682B71
          E0E68A6D2835202D145140C29C0D368A007D14D0714EA0028A28A0770A50D494
          52287D14C0714E0D4AC02D145148028CE28A28017752D368A0771D4526EA3750
          1A0EC9A5DD4DA280D476452D328A02E3E8A6E4D1B8D0171D4526EA37503B8B45
          26EA32280168A4C8A32280168A4C8A370A005A293751BA80B8B45377519340AE
          3A8C8A651405C76EA4C9A4A280D428A3349BA80D05A4DD49450170C9A28A2810
          5145140125D7FC7CCDFEF9FE751D3AEBFE3EA6FF007CFF003A8F75096837BB1D
          4526696810514514005193451400BBA8DC2928A02E3B228A6D140EE3A8A6E68C
          9A0341D453726977501A0B4526EA37501A0B4526EA4C9A0341D4537268CD01A0
          EA3229B450171DB8526EA4A2815C3268A28A0028A28A0028A2933400B4537752
          6734EC03B752139A4A2980514514C570A28A09C504852138A4269280149CD251
          450014514138A002909A4273453B082909C504E29BD6980139A28A28242909A0
          9A6D300A28A2A890A28A42680026928A2800A28A28258D76D88CDE8335CB9258
          927A9AE9E61BA1900EA548FD2B97ADA9820A28A2B52828A28A0029D1B98E4561
          D54834DA00C9C5007574520180052D7210145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500141EB4507AD0014514500213819AF9
          7B59B2B8F11FC34F17FC54B48CCDA8C5E215D7B4C61FC56760FE4A8FA344970D
          EFE6FBD7B4FC6DD6F50D07E1778826D2209AE7579E0FB1D94702967F3A622346
          007F74BEE3ECA6B93D23F661D174EF0CDB68C7C4DE2E1691DB0B77B6875EB88E
          0236E1808C36D0A79F9718E6BD0C3CA34A3CF276BBFC16AFF4392AA94DF2A5D3
          F3DBF5367E20FC44BCF0FAF8075ED3678A5F0D6ABA941697E4A03986E5088650
          DFC20394CFFBD5A52F8B750BDF8CD0786AC9D174BB1D1DB50D44EC0CCD249284
          B74CFF000F09337BF15E67E11F08EA9E2BFD9A7C43E03BF8A74D67417B9D26D6
          6950A995EDDF7DA4A99EAB811608FEE9ADCF811A9DF5FF0086FC57F11B5DD3AE
          ACEF7589BCDFB21848996DAD6111AA843CE4B2CCC077DFEF572A508C24D6AE37
          5EB7D9FDD7FB91319CA525E7AFDDBFE87B557867C5AF112785BE3EFC39BE92C3
          50D45469BAA2791A65AB5C4C73E473B179C7A9AF60F0D6BD0F8A340B0D5ADE1B
          8B782F2159922BB8FCB950119C32F63ED5E79E2FB1B997F688F87B7496F2BDB4
          3A66A8B24CA84A213E4E013D067071F4AE7C3FBB51F37697E4CDAAFBD156EEBF
          3452D206BFE2CF8A37DE36B5F0E5EE9765A7F87A5D32C6DF57DB6F35F5C3CAB2
          FDDC92883CB5196C72C7038AC5F1178C7C69F0DEDFC3FAB6B7E31D2F53BCB9BE
          B4B6D4BC3696B146B1ACF22A3790CADE613197E0B16042E4E2BD5FE26C1ACDCF
          C3BF12C5E1D674D75F4E9D6C9A338712943B769ECD9E87D715F37F8BAD7C2F7D
          F0EBC3D67E0DF04DD8D520D4B4D9754BB9746921B8B50B711F98659A4406490B
          E010A58E3731F9466BAE85AAB4DA56DB6BE9EAF6FF00339EADE9DECF5DCF58F1
          9F897C6379F1AACBC1BE1ED4EDB4BB0BAD05F509AEA6B6599EDD967085D14E37
          310CAB863B464B60E3076BC5D078C65D62DEDEDBC496BE19F0F5B58AB4FAC3C1
          14971737458829B5FE4440A03138E4B606315464B1B83FB4E5A5DF912FD90784
          6588CFB0EC0FF6C8CEDDDD338E715CE78C9347B3F8D5A8DDF8F747B9D5F466D3
          6D9740274D96FEDA390349F68511A238131263209192A300F6ACE293E5492D23
          7DAEDBFEBFCCB6DABB6FAF7B1A1E0AF8C5789F0CFC79ACEB3716BACDC7846EEF
          2D8DED92848EFD22896547001214B07008071906B9BF1AF89FE28F81BE1D69BE
          2B9FC45637B2EA13D925DD8AE9C91AD82CF2C63F74D925F1BB61DF9CEEDC08C6
          2A1F875E09BEF157C35F8CFA19D15FC392EB3AADE7D86CA7884423492D21F249
          0381DB2074391D4565FC60F887A96B5F06B4BD1A4F0B6B9A75FC579A647AAC97
          F64D0DBDB94B9841D929F965CC8140D85B2092718AE98D38FB5E58A4F557DB6B
          2FF83B18CA52F6776DEDA7A9ECF278BF515F8E16BE180E9FD95278765D499367
          CFE72DC47183BBD36B1E2A0F0F78CF58D4FC7DF123480915D45A18B3FECFB7E1
          0B3496DE61567F76EE7A5737E3CD720F87DF1D342F146B31DC43E1FB9D02E34A
          37D0DBBCC90DC79F14AAAFB012BB955B048E48AE7BC297DAFF008A753F8E9AAE
          87A7DF6977BA8DADBFF623DDC2D03CACB66E91C8A180232C030CE08C8C815CCA
          9270E6B69CAB5F3E646CE6D4B96FADDFDD6659F13F8CBC6DF0D749D235ED73C6
          1A5DF5FC977691EA3E184B589111269511D6070DE6129BF2198B03B724574FF1
          3FC67AC5B7C44F0B784AC75E83C256DAB5B5C4FF00DAD3DB24CD3CC8C816DA3D
          FF0020621CB1C8248000AF1BF17DAF86AF7E11E97A7784FC1378DAFC773A7C9A
          ADDCDA34915CDA949E232B4B34880C921618215989049FBA09AF64F8B5AEE863
          5BB4F0EF8E7408AEFC157F64F22EA9340F324578AC008C9507CB2509657C8390
          4035BCA094A2F975F7BA2F2B69D7CAFB99A9369EBA69D5FE65ABAF1478CFC17F
          087C4FAB6B96506A5E21D1A3BB6B692050A97D1479314C63563B32B82C99CF07
          A64554F8737FE32BDBFD03531E27B2F1BF85756B591EEAEA0B68ADFEC5285050
          C7B5B2EAC7721520B290327AD62FC38D63C4DE19F82FE26BFD3AC351F1147617
          D72DE1EB4D5438BABAD3D4AEC0770DE78F3366E1B8809C722B2FC1EDE1F9FE32
          F87F50F86B0DDD9E9D7F15C49E26B482DA582C957CACC2CE8CA1527F37030BF3
          637678ACF915A6ACBAEB6D36DBBAF2F3D0AE6D62EFDBF3FC7CFCB53D17E1F788
          AE7C5BE26F1B26A51DBCC740D69ACB4F93C901E28CDBC4C70DD724BB64FA7153
          FC11F176A3E3AF86FA7EB3AABA3DF4D3DDC6ED1A6C5C47732C6BC7FBA8B5C168
          1E38B3F859F103E23E9DAE5A6A2B77AA6A89A96971DB58CB3FDBD1ADA24DB114
          520B078CA9048C7D326A5F82FE2A8FE197ECCF67AEF8A2D6E74E5B192F25BAB6
          F2F32A335ECA028538C925863D722A2A517C978ADDC6DF34EF6F9FE2542A7BDA
          BDAF7FBD1EE75E47FB4BF85F49BCF855E2DD72E2C219F56B4D16E60B7BA91773
          C28C3E6099FBB9C724738E3A57ABDB4DF69B78A5F2DE2F31436C906197233823
          D6B82FDA12D27BEF825E34B7B6864B89E4D326548A252CCC76F400724D72E1DB
          8D68FAAFCCDEAA4E9CBD0DA9F4C3AD7C33934F138B5377A41804EDD23DD0EDDD
          F86735F33EA9F106DFC4FF00B3A68BF0F974ABCB09EE16D341FEDF9E02BA3AB4
          52229B85BAFB8CADE592B8E4B103D6BE8EF10E877BAFFC20D4B47B2CC5A85EE8
          725A43B8EDDB2BC055727B7245787788BC6DA7F89BF675B7F879A7E93A8B78CA
          6D36DF481A0BE9D323DBCE9B1599D8AED5442A5B7938C0CD77617D2FEF2F979F
          A1CB5BD6DA3F9F91EB3F1A753BAB9D1B4CF066953B45AC78A66360264FBD6F6A
          1775D4FF00F018F207FB4E9587F0174BB5D0FC69F14B4EB2856DECED356B6B78
          224E888B650AAA8FA000574BE21F8430789756D2B5893C41AD693ABD8D87D83E
          D1A5CE91EF42433677237565078C7415C4FC0AF015EF87BE25FC47BAB8D5F5DB
          A8A3D4A38E317F2298EEC1B78CF9AD841B981F941181818C567170F6128A974F
          C6E8B9297B58B6BAFE8CB3F17FC2FA4E8DE3BF877A95958436FA86A7E2D864BC
          BA55FDE4ECB6932AEE6EB800000741CFA9AF6EAF2CF8D3637177E24F85EF05BC
          B32C1E268E495A342C235FB3CE37363A0C91C9F5AF53AE7AADBA74EEFA3FCCDA
          0AD395BFAD042C0752052D71BE2DF83FE10F1D6AABA96BBA325FDEAC62112B4D
          227C8092061580EE6BB15508A147000C0AC1A8D959EBFD799A2BDF53C7BF67F5
          171E22F8B37AFF0034EFE2EB8B7663D76470C2147D064E2BB3D6A0D1BE17E83E
          31F165B586C91A19755BF08ED9B878A2EBC92012A80718AF33D0BC576BF037E2
          278F2CFC5115ED9E8FAEEA2359D335386CA59E0999E245962263562AEAC9D0F5
          1CF719D3D357C53F177E1C7C4937F15C59E9FAEC57369E1EB1BE816096380DBE
          C591C6030DEE4B00F92063A0AF42A536E7ED1BB41F2FCF6D3E5F858E584928F2
          AF8B5F96E63EA3E37F1D783FC0DA7F8FF55F12E9BA85B37D9AE350F0EC562B1A
          4504CEA196297717DE81C1CB641DA7815D278E3C53E30B9F8C7A47837C3B7F6B
          A6D95F68B35FDCDE4D6C2692DF64CABBD1490189DC170DC0DD9C1C60F96D845F
          0DE5F09687A7E91F0CAC750F1FCA2DADA5D1EF34378DA0972AB33CCE50055501
          DB7670703D6BD7AE2C6E0FED2FA6DD8824FB2AF84AE6233EC3B039BB8085DDD3
          3804E3DAB59C6317771D7DEDD25E9A7EBD4CE2DC96FDBABF9EA57F026BBE2CD5
          6FBC77E0ED4B5B826D674296DC5AEBA964AA648A78848A5E1076EE5C329C601E
          0E0573BFB32D8EBBA77C2492FAE35D5BAB3F335310598B35430CAB793E64DF92
          5B2431DA4606EC76AEABC0565710FC69F8A73C904B1C13FF00667952B210B262
          DD81DA7A1C1EB8AC1F80FAA258F80756F06DD5ADF5A6BFA64FA9BCF05C594B1A
          323DD4CE8C9215D8E089148DAC4D6727EE49452FB0F65DB5FC4B8FC516DFF32F
          C742D7C18F17F8B35DF86D69E3DF16EAB0B5949A534FFD97696AABF73933B49D
          4B30563B000A0381C919AE727F1AFC47D27E15DA7C51BBD6ECA6B37861D527F0
          CA69EA235B39194ED49B76FF003046DBB278C8C62BACF845E1BB9D4FF666D134
          29E37B4BABAD09AD192752AD1B3C6CBF303C8EB5E73A978E575BFD9EADBE1C43
          A6EA4BE3B974D834193497B09818A401627959F6EC11800BEFCE31DEB48C54AA
          4AD156E6B6CB48EBFD5FF121B6A0AEDEDF8FF5D0FA7A1956E214950E51D4303E
          A0D3B70CE323350D85A8B1B1B7B7539586358C1F60315C947F073C1F178A8F89
          134641AD99CDCFDAFCE933E61392DB776DEFE98AF2928EB77FD7DE773E6E84FF
          00173FE49578CBFEC0D79FFA25EBCBF52F19F88FC1DF057E0E2F863ECA751D5E
          4D2F4B617885A2D925A31C9C60E015563839C023BD7AA7C55824B9F861E2F861
          8DA5964D22ED12341966261700003A9AF2DD4F4ABD6F871F01221693996D753D
          25AE1046774216CA40C5C63E5009C1CF4AEEA1CBC8B9B5D7F439AADF99DBB7EA
          3F53D67E25F86BE26691E0B1E25B2D623F10D9CD711EAD71A6A44FA6984AF985
          6346C4808601431E0904920107A8F86BE24F1147E36F17F83BC47A945ADCBA44
          36B776BA9A5B2DBBCB14EB2652445F972AD19E46320F4A6F8A2CAE24FDA1BC0D
          74904AD6D168FA924932A12884B41804F404E0E3E947866CAE22F8FF00E3EBA7
          8254B69748D3163999084720DC6403D091919FA8A7271953D97C37D96FCD6FC8
          514D4F77BDBE56FF0033C93E106A3F10B4BFD9B34DF15E97AB69F6D63A3D94D3
          C1A14B65E67DAE185DCBF9936E0CACFB5F6ED18036E73CD7AAF8F7E225F6A96D
          E06D23C3B2DAD8CFE315797EDDA842268EDAD560F3643E59203390CAA01E3E63
          9AF26F87BF10FF00B0FF006644F065EE8DAB43E319F4DB8B2B1D2BFB3E52D746
          62E227560BB76E1C6E248DBB5B3DB3D77C4CF87FA7E8BA77C26B8F1268CBAFF8
          7BC391369BA9C4B68D742257B654598C6012556489727191B81AEBA914EB3735
          D656D37D34F5D6DEA6109354D72BE8AFFAFA68759E04F116B5E1DF88EDE04D63
          55B5D7AD64D27FB4B4EBF82D52D9E358E458A481D10EC38DC8548038C8238157
          AC7FE2AEF8DF7F747E7B1F0A588B28BD3ED973B6494FD5615847FDB56AE47C03
          AAF81B4AF16EB7AC7847C2161A5F85F4AD1DE6BCF12C3A735A97937063046595
          77A844DCC4700ED15DE7C16D22E74FF025B5FEA1198F56D6E59358BD53D5649D
          B7843FEE2148FE882B8EAA50BCAD6764BB6AF7D3A69F99D107CD68DFCFFAF99E
          4DF0CBE265EF83ACBE214369E09F11F88DD3C59ABC8B3697044D0B1F3DBE5CB4
          81B3C73853D78CD741F08BC136FE3AFD9DB54D3E6D4A197FE12B6D42E669AC83
          14B692E247CA2860A7319E082072A45743F006C6E2CB4DF1BADCDBCB6E65F176
          AB2A0950AEF469C95619EA0F63DEB97F86B63E27D2FE0978DED3C3D1BD97892D
          757D58E9EB3C23E67F3D9D301C60860700F4E6B7A924DC94347CD1D7EFFC8CA0
          9AE5E6D559E85AF0F78D96CF4FB6F869F15F4A8B4FBBB98069D6F7FC9D37594C
          6D0124E364846331B60E4F1D40AF6CB5B68ACAD61B78176431208D141CE140C0
          1F957CEDF133E2968DF15FE12DF785ADB45D5351F196A56CB6E9A2CDA5CC92DA
          5D9C7CEECC811046D96DDBB185E2BE80D0ED2E2C345B0B6BB98DC5D436F1C72C
          C4E7CC70A0337E2726B971116A2A4D72B6DE9D3D57AFFC31BD295DB49DD77FD0
          BD45145709D214514500145145034C2941A4A2828751480D2D0014514500381A
          5A652835250EA3A5145201C0E696994E07341571C0D2D3680714AC03A8A01CD1
          48614B55754D52CF44D3AE2FF50BA8ACACAD90CB35C4EE1238D00C96663C003D
          6B8EB7F8F1F0E6EE78E187C73E1F96691822226A5112CC4E0003775AB8D39CD5
          E29B21CE31D1B3BC0696994A0E2A0B1D4500E68A0028A2B0E0F1D7876EB4DB4D
          421D734F96C6F2E8595BDCA5CA18E69CB14112B6705CB02368E72314D45BD90F
          992DCDC0714EDD4DA2A4A1F4532AA596B761A8DE5EDA5ADE41737362EB15D431
          4819E072A182B81F749520E0F6228B3E82B97A8A4CD2D48C28A28A0028C9A2A0
          BCBEB7D3ADDEE2EEE22B681065A599C22A8F7278146E1B163751B8561697E39F
          0E6B9746DB4ED7F4CBFB91FF002C6D6F2391FF002524D6E537171D1A12927B0E
          C8A29B4522AE3A8A6E68C9A0341D453726977501A0B4526EA37501A0B4526EA4
          C9A0341D4537268CD01A0EA322A86A1AD58695359C57B7B05ACB7B37D9ED9269
          0299A4C16D880FDE6C2B1C0EC0D5DA7662B8EDC29375251482E1934514500145
          145001451499A005A29BBA9339A7601D9A29B453B012DD7FC7D4DFEF9FE75154
          B75FF1F537FBE7F9D4542D81BD58519C5145310BBA97229B452B0C7D14CA5C9A
          5601D4537752E45160168A4CD79BFED1F657D7BF037C67FD9B7571657D069EF7
          714F6B23472298B12FCACA411908471EB8ABA70E79A85ED7644E5C9172EC7A4D
          15F1B780BE331B3F14D9F8C75BD4AFE7D07C39F0EAC64BCB68A567135ECB228D
          C549C176C9193ED935E9967FB5FE82DE16F156AB7FE1FD5B4CBBF0F5BD9DE5C6
          9B2F94D2CB05C94F29D183EDE9221209046477C81DB53015A2ED157DBEF7FF00
          0EBEF39618BA725793B7F5FF000FF71EFB45782E87FB61F85754D37C5D7B75A4
          EAFA545E1DB1B7BF952EA24124F1CC17CBD8A1BA92E98C91F7C1E39C733E36FD
          A53C3BE38F85BE31875AD27C57E176D2E2B0BA9E3B09A386EDE19E589A278650
          C54677A6E071F2B63AE7131C0D772B38DB55F8DBFCD14F15492BA977FC3FE18F
          A828AF9C7C41FB61786BE1DB5D68EFA0F883521A369D637335CA08DFF7532445
          19D8B0E7F7A8093D58F1EB5AF65FB5FF00856E34AF1BEA173A5EADA7C1E168ED
          E6952E615592E5273888A2EEE3712BC3638604F7C2782C45B9941DBFCEDFE687
          F5AA37B736BFD7F91EEF4578145FB5FE8317843C57AC6A1E1FD5B4EBCF0DFD8D
          AF34B93CA695A3B92A227460FB48C30241208AE77C59FB672C9E04F1AEA1E19F
          0CDFC5ACF87FECB94D5A3511AC739F96665570DB470319CE5D3B670E381C449D
          B97ADBEFB7F9A13C5514AFCDFD6BFE4CFA7E8AF9DEEFF6B583C2DE13F093EADE
          1AD56FBC45A9E88DACDDD9DB0897C9B78D58BCE497C6D608CEAA3276F5C1E2BD
          2745F8C363E24BCF052E97A4EA979A7F8A2D24BC8B51483F7168A91EFDB3B67E
          463F740E7245673C2D682BCA3A6BF87FC3171AF4E4EC9FF4CEFE8A29335C8740
          B45264526EA7601D453771A4CD1601D9149BA928A760173494514C4145145017
          0A28A33412145216A6D0038B5368A2800A28A2800A28271484E6800271494521
          38A7610B4D268273494C2E1451474A090A6934139A4A601451455121451484D0
          004D251450014514504B6145145020AE66EE1305C489D81E3E95D3567EAB6467
          41220CBA8E47A8AB83B31A3128A28AE82828A28A002AC69F0F9F7718EC0EE3F4
          155FAD6F699666DA22CE3123F5F61E951276422ED14515CE4851451400514514
          0051451400514514005145140051451400514514005145140051451400514514
          0051451400514514005145140051451400514514005145140051451400514514
          00514514005145140051451400514514005145140051451400507AD141EB4005
          145140051585E3CF12B7833C0FE21D7D20174DA569F717C202DB448638D9F6E7
          0719DB8CE2B8BF0678CBE2478963D1AFEEBC29A0DA68F7E914EF347AC48F3470
          B80D9086000B007A647D6B68D294A3CEB6F5466E693E5EA7A8D1451589A05145
          1400526052D79978D3E2F5C7864F8F26B4D3A3BDB4F0A6971DD4CCD29432DCBA
          B3F939C1C01184627FE9A0E2B4853954768FF5D08949415D9E9B498CD79BF84B
          C51F11F5AB8D327D47C2DA1596917216492783589259511867210C0013C8E323
          EB5E9344E0E0ECFF003B8E325257452D674B8B5CD22FB4E9DA48E1BC81EDDDE1
          6DAE1594A92A7B1C1E0D794A7C1AF156AFA5E89E1EF11F8C2D753F0CE93716F3
          08E0D35A2BCBD10306892794CACB8CAA9255016C7519AF63A2AA15674D5A24CA
          9C67B89818A314B595E23F15E8BE0FB24BCD7757B1D16D24904493EA17090233
          904850CC40270A4E3D8FA5649393B22DB4B566A6050403D6B17C35E38F0EF8CC
          5C1D035ED375B16FB7CEFECEBB8E7F2B7676EED84E33B4E33D707D2AF2EB5A7B
          EAEFA52DF5BB6A6908B86B212AF9CB11380E5339DB9E338C669B8C93B3409A7A
          A65DA4000E8296BC8AF7E38EAF7035EBFF000FF822EF5DF0F6897135B5CEA02F
          A281E578789BC889813205208C92BB882066AE14E553E1FF002FCC994D4373D7
          300F6ACAF1378574BF18E9634ED5EDBED965E74570612ECA19E3759133B48C80
          CAA707838E41AC0D6FE2DE87A2FC2F8FC76C67B8D226B586E6DE3853334C65DA
          238D573F7999D463B13591A3FC5AD5E2F13689A3F8ABC1F71E196D6CBA585C0B
          D8EEA369550B98A4DB828C54123A838233571A553E28ADBF4DFEE25CE1F0BEBF
          A9E99D28AF3AF15FC55BFB1F193F857C2FE1997C51AD5BDAA5E5EE6ED2D6DED6
          37242069181CBB6D38503A0CD5BF05FC4D97C6DE18D72EEDB42B9B6F1068D34D
          6775A14F3207174881846B2E761560CB87E9F366A5D19A8F335A7C87ED22DF29
          DD526067A578A78B3E3B78C7C0FA0DC6B3AD7C2BBCB4D3ADCA09251AD5A4872C
          C11405562492CC0600EF5ED6A72A0F4CD13A52A69396CFB34FF208CE336D2FF2
          168AF3CF187C53BDD2BC611F853C37E1C9BC4FAF0B417D731FDA92D60B580B15
          52F2303F331070A013804F02B47E1B7C465F1F5B6AB15C6993E87ACE91766CB5
          0D36E1D5CC326D0C0ABAF0EACAC0861D7D287466A3CED69FD74DC1548B9729D9
          515E6BE1AF8EDA278C3E295CF83748866BC5B7B396E5F56518B6778E44478A33
          FC654B8CB0E01E39ADFF001CF897C49E1E366340F084DE2A12EFF38C57F05AF9
          18C6DCF9A46EDD93D3A6DE7A8A1D19C64A32566FBE9F982A9169C96A75745799
          7823E2DEAFE21F88371E11D73C1D71E1ABF8B4DFED3DF25FC372A63F3446A0F9
          64E093B88C9FE03563E35FC67B1F831A05B5FDC584DAB5D5CBB88ACADDC23944
          42F24849E02A8033EECA3BD3F61539D534B57E82F6B0E573BE88F44201EA334B
          515ACE2EADA2980DA2440F8F4C8CD4B581A89819E94B4514005262968A002930
          339C734B4500145145001494B4500145145002607A52D1450067EBDA058789F4
          7BAD2B53B7175A7DD2EC9A02C543AE7383820E0F71DFA55F00280070052D14EE
          ED615BA85145148626067A52D14500145145001451450014514500145145034C
          2941A4A2828751480D2D00145145002838A7532941C54943A8A01CD14805069D
          4CA507140EE3A941A6839A5A5619E7BFB457FC909F1E7FD81EE7FF0040349F0F
          A2F06BF84BC3802686D786CADC00043E617D8BF8E7349FB449FF008B15E3B1FF
          00507B9FFD166AB7C3AF83BE0383C31E1AD4A3F066831EA29696D70B74BA6C22
          559422B070DB73BB3CE7AE6BBA2E2B0FEF36B57B7A23965775B45D3F53D3EBCA
          6F7E3C1B8F157887C33E1EF08EB1E24D73439952EE2B768618911915D5FCD91C
          2FCDB880BF78956E30335B7A869FF121FC5665B2D6BC391F877CF43F669B4E99
          AE7CAE372F98250BB8F383B71D38AE73E0DC48BF143E314814798DAD5BA96EE4
          0B38B1FCCFE7514E105194A569595FAF74B5DBB953949B515A5DFE8CAFA6FED2
          91F8A3449352F0BF82F5FF00102592B7F6A448B0C0F60EA4EF85848E3CC94633
          B13770579E45747A8FC70D1E1F08F8675BD2ED2F75D93C4AC91E93A7DA2AACD3
          BB21721B7B0540A15B71270306B9FF00D9AA18E3F0B78CCAA01BFC57AB336075
          3E791FC80AE07E0FF8BB59B1F841F073C27E1F92D6C754F104178DFDA7790999
          6D6180B33948F23739DEA064E0724838AEA951A6E52518FC2FBF4B37AFA5BA74
          F3308D59D9393DD76F34B4F5BF53D9BC1BF155BC43E2CBCF0B6B3E1FBEF0C788
          60B41A825ADD4914C93DBEFD8648E48D981C31008382322BCA7C63E24D07C59F
          0E3E1A6A5E1BD25744D29FC7F611AD9A42908574BC7476DA9F2FCCCACDEF9E79
          ABBA1E9FA8E8FF00B575859EABE279FC497A3C25712969ADE183C856BA880502
          251C12A4FCD93EF5C1F86CFF00C587F85BFF00651A1FFD39CD5AC294232528FF
          0077BDB552EFAF43395494938BF3FCD76F53EA35F16C8DE3D7F0D7F62EA6225D
          3FEDFF00DB060FF4127CCD9E4093FE7AFF0016DFEEF35ABAC6AD6BA0E937BA9D
          F4A20B2B385EE27948C848D14B31E3D00356B20F7E6B1FC652E910F84B596F10
          3A47A1FD92517CD2676880A90F9C738DA4F4AF1D5A524AC7A5AA4DDCE0BC3FF1
          E1B53D43C3DFDA7E10D6340D1BC45208749D56F1E07499D90BC6AE88ECF11755
          246E1F95717E17F88371E1AF8C9F1674CD2BC37A978A3559352B5B97B6B03146
          B0C3F63846F7925655049042A8249DA78C0CD58D1DF5DF82777E0ED327D421F1
          A7C38D52FADF4ED2AE6EA302FF004C790116E370F9658FB6EC0650476183B3F0
          765B6FF85E5F1AE352BF6B17FA7338FE2D9F641B7F0CEFAF51C610539463756F
          3D7DE5BF55E670A94E4E29BD6FE5D9FC8EA6CFE377876E3E18DF78E2617765A6
          D81923BCB4B9876DD413C6FB1A064CFF00ACDF850338248E706B3F47F8DD70DE
          20D174CF11F83759F0926B8E62D36EEFDE0923964DA5C452796EC62908070AC3
          9C11D6BC57C4400F879F136E38FECA5F8970C931C7CBB167B4129CF4C6F073EE
          0D7AD7ED1B87B1F8791A11F696F19E95E40EA7224258FE081F3ED9A4E8535251
          B7C4DFCB44FF005D4A55A6D395F64BE7ABFF0022EEA7F1E3FE2B4F10784740F0
          9EAFE24F1068AD17DA61B668618446F12C8AE6591C28CEEC05FBC4AB71819ACE
          D2BF6925F15E972DCF85BC13AFEBF7363BD755B3510C0FA7C88CCAD0B191C079
          7E527626E382338C81537C298957E377C679028F31AFB4D52DEA058C78FE67F3
          A87F66E8923B3F892CAA14BF8DB576623B9F300FE40544A146116F96F651EAF5
          BAD7FE014A552524B9B772FC1E874D7DF19B48FF00854D078EB4C8E5D42D6F62
          8FEC16780935C5C48E238E0C7663210A7AE393C8158175E1ED17C2B6367E21F8
          912AF89FC4F79288EDEDBC86B88E399B245BD95B738C0C8DF8DC402CCC074F32
          F87E9B7E02FC179A4E2CA0F16235C1FE100DC5D2479FFB6AF17E38AF54F105FD
          A597ED15A0CBAD4F15B5A2F87EE069725CB058DAE5A64F38213C6FF2C271D769
          6ED9A6E92A529421DE5EB65B2FF3254DD48A94BCBD35EBFE42DDEBDE02F12DED
          87877C43E153A6EA7A84822B2D3B55D3504B2FCACFBE364DC30A1092C1B2876E
          704AE67F0EEAFA97813C51AD783E4FB6788A0834DFED8D155E50F74F1062925A
          B4921018ABECDAEED9224018FCB9385A978DBC3FE24FDA0F44DFA9D9A58786F4
          5BBBB4BC925558A4B89A44898239386D88920620E017C1E4103A0F05CA7C73F1
          3352F1A5BAB0D06DB4F5D1F4BB86040BCCC9E64F3A67AC7958955BA36C623208
          273947963EF2D2D7B3EF7D2DF2FC2E5C5DE5A3D6F6F95B5B9CE7ECFDF137C4BE
          2DBCF15C3AE685AAC76D0EBDA846BA85DCD6E62B348DC05B521642D940319552
          B9C9DC7AD5E6FDA3A37D267F125AF83B5CBCF0340CC24F11C5E4EC31AB6D6996
          13279AD10C13B82F404E2B37E11C32DCF813E2E436F9370FE27D75630064EE2E
          71FD2B92F007847C55A97ECDBA5493FC48D3F4BF0A4BE1E02E226D016436F6FE
          49122993CE058A8DC09C678E95BCA9D294E52924B54BAFE97D7B74328CEA2845
          26DE8DF4FD7A1EB3E37F8E1A6F837C41E1ED222D32FB5DBBF105ACB71A6AE981
          5CDC326CF90648032AFBB712142A924D52D6BE3BBE87E2AD3FC2B2784755BAF1
          4DF6931EA716976B242E41676468DA4DC11766C24B96DBC8C12480792D374CB5
          D37E2BFC0EB3B5BCFED4B5B4F0B5E4705F34650CEAB0DB2AC9B4F2BB8738ED9A
          E88229FDAEDDC81B87820007D01BE3FE02B2F654A297BB7F75BEBD1B469CF51D
          F5B6A97E08D8D5BE2F5EA788EE7C3FA1784351F116B3A7DB4371A9C505C410C5
          666552C919924750CE40270B918C735D17C3AF88161F127C38356B182E6CDA39
          E5B4B9B2BC40935B4F1B15923700919047627B57131EB7E2AF88FE3CF16695A2
          6BB0F84F47F0F5C4564F3C36497177773344B233664CA22287503E524E09CF6A
          CCFD941CB786FC725B506D54FF00C261A9837EEA8A6E3E65FDE108028DDD7E50
          073C0ACE7460A9395ACD5BBF5EFD3D2DF32E3524EA257D1DFB74FC4F40F887F1
          1EDFC04BA4DBA69D77ADEB3ABDC9B5D3F4BB1D8259DC297624BB2AAA2A825989
          C0155FC1BF13E3F11EB3AA687AAE9177E19D7F4D812EA7B1BE78DC3C0E485963
          9118ABA655813C10460815CAFC433B3F68FF00848D2E3CA6B4D612227FE7A795
          093F8ED0DF91AE9BE225F69571A7F8A74BB436EDE2D3E1DB8955563CCFF6721D
          53E6C676F980E067A83C547B3872415B592BDFB6AD7DDA15CF2E693BE89EDF2B
          FDE725FF000D2F07F637FC24FF00F086EBDFF08279BB3FE123C43B366FD9E779
          1E679BE5679DDB7A738AE8FC71F1AAC3C17E2CD23C351E91A96B7AC6B16925D6
          9F069CA8C272ACA0A6E660178258B310A154F39C03C58B9B03FB10EFDD1FD9BF
          E107D99C8C799F63DB8FF7B7F1F5AAFE16B5917E327C2B5BB4CDD43E069776E1
          CABEEB607F99AE9F6549B6F976E65BEF65A7FC130F6951595F7B7E2FFAB1BF63
          FB4535EEAD7DE1A1E09D6D7C7568559FC3A1E024C457227F3F7F95E572016DD9
          DC40C1CD765F0D7E24DB7C46B0D45974FBBD1F53D2EEDAC750D36F82F9B6F328
          07195255948604303820D71BE1A850FED51E349768F3078774F50DDF0659B3FC
          87E552FC1FC0F8B1F18FB7FC4DED3FF48E2ACAA53A7CB2E58D9A49FDF6D3D35F
          5F33484E7CCAEEFAB5F75FFC8A1FB4B7886D7C2B7FF0C755BC59A482DFC4E84C
          76F19925918DB5C054451C96662001EA45753E15F8BE758F17C5E19D73C31AAF
          84F57BAB67BBB28F5168648EEE24203EC789D86F5DCA4A1E4035CC7ED1B2DB45
          AEFC226BA6510FFC2636A016E9B8C5284FFC7B6D5DF8A387F8E7F06D6323ED0B
          73A9B9F68BEC6C1CFD32507D48AA518CE9422D6B696BE977FF000E4B94A3524D
          3EABF1B22F783BE382F8EFC4D7FA3E8FE19D4EE0697A9DC69BA9DF334696F68D
          13B2E4B3302E5B6E42A0240209C6457A8578EFECD8AA9A7FC4220005BC6DAB92
          4773E763FA57B06EAE5C44631A8E305648E8A2E5282949EE3A8A6EE3499AE6B1
          B8EC8A4DD49453B00B9A4A28A620A28A280B85145140AE49747FD2A6FF007CFF
          003A8E9D75FF001F537FBE7F9D47496C0F763A8A6EEA5C8A62168A28A0770A28
          A280B85145140EE155358D362D6749BDD3E71BA0BA81E0907AAB2907F4356E8A
          13B6A83467C43F0FBF65FF001F47F037E27E85AD69C96BAFEAB1D95B69B13DCC
          4C258AD5FCC50195885DC78F988F7C53AD7E0378C751F853E3DD3ACFE1BDAF87
          6FEF74DD3ECAD03EA1E65EDFCB1C90B4C5D9A768D5018D8AF0BC150338AFB728
          AF59E6759B6ECB569F5E96F3F2479FF51A692577B5BA79F9799F12DC7ECD3E3D
          D5AD7E26DB3E90B6BFDAFE1ED22D6C5E4BA8889AE2D92D8BC7C31DBF342CB96C
          0F7C735BBE27F097C64F895F047C55E16BEF0A43A75A4565A5DA691A73CF0FDA
          66922784CEED2799B76FEEDC8CE38200CE2BEBDA2A5E6351B4DC568D35BF4B79
          F921FD4A0AE937ADD7DF7FF33E21F885FB3B7C42D6EE7E21B597878CEBAAE81A
          359599FB5C0BE6CD035999579718DBE549C9C03B7827233675CFD9B3C77AED87
          C5BB71A42C0FACE9FA42E9ACF73162E25B6111913863B4FC8C016C0CE39C735F
          6AD154B33AC92492D2DDFA5BCFFBA84F034DB6DB7FF0F7FF0033E239BE0378C7
          58F843F1034ED3FE1BDAF872FB508B4D82CE13A8799797A62963699A5779DA30
          A36B15C6D3838E71566F3F677F1EDDE95F18A0FEC4F2DF5CD2F4C8B4ECDCC27E
          D1240233220C3FCA7E4232D807D6BED3A28FED2AAAFA2DEFD7CBCFFBA83EA34F
          BBFC3CFCBCCF89BC67F09BE24EB16DE14D76DFC1533DE0F055C784AEF4D5BE83
          CCB693CB96249892C0156F303601240E0D7BE7C29D13C5FF000CFC37F0DBC1E7
          4486F34D8B4F91359D4D6E947D86509B911573970CE4AE4038C66BD768AC6AE3
          25560A128AB2F5F3B75E97D3F1B9AD3C3469C9C9377F9797975B0514515E79D6
          1451450170A28A2815C28A28A02E14526451BA810B499A4CD250029349451400
          514514005145216A005A42D499CD14EC20A2909C52139A61B0A5A9B45140828A
          290B502027149D6928A7615C28A28AA105145349CD002934945140051451412D
          85145140828A28A0028A28A00CEBDD296625E2C239EA0F4359535B4B01C3A15F
          7C715D3515A29B43B9CA54B0DA4D39F923247AF6FCEBA4F2D739DA33F4A753F6
          8172858E96B6C43B90F276F4157E8A2B36DBDC4145145200A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A0F5A283D6800A28
          A280387F8E5FF2457C7DFF00601BEFFD277AE73E10F897C6F71E1BF09DA5E782
          ED2D3473616E87515D69647118886D7F2BCA1C9E38DDC67AD75FF16F49BBD7BE
          15F8C74CB081AE6FAF347BCB7B785319924785D55467B9240ABDE02B0B8D2FC0
          DE1DB2BA88C3756FA75BC32C6DD51D635041FA106BAD4E2A859A4DDFF4F53071
          6EADEFD0F32D374ED57E2F78D3C712CDE28D6B44D2743D40691616BA35C88009
          1214796590ED3BC9690000F000E86B9BD73E2478AE6FD97EFF0054875231F8BF
          4CD523D25EFD14289658F51480B301D9D7EF01FDE35D3D85DEB5F08FC67E3651
          E14D5FC41A46BB7E356B1B9D1E38E5226685239629033A94F9A30437421BAF15
          8B79F0CBC471FECE33E912E9E65F136A3ABC3AB5D5942E1BCB693528EE1D7767
          076267273FC2715DD170E68F35AD78DB6F9FFC1399F35A56BDED2BFE9FF00D4D
          434CD6BE197C42F0148BE2CD675C875EBD974ED4EDB53995E191BECEF22C9120
          502221A3E8B81838AC5F13F8FF0048D7BE2C78B746F137C4493C19A5E85F66B6
          B2B3B3D492C64B991E2596499D8FCCC016550B9DBF29C839AF43F89BE1DD4759
          F167C38BAB2B57B8834DD69AE2EDD7188A3FB34C9B8FB6E651F8D73B7515FF00
          C39F89FE2ED526F096A3E24D1BC43F66BB82E3498239DE09E38842F1BA330201
          088C1BA7273D2B3A728C9293F8B97C96BCDFE5F81528B574B6BF9F6FF32F7C0F
          F891FDBDF0F75DBED4F598F58B6F0FEA3796475B0571756F0E1D2662BF293E5B
          2E48E0904F7AE4F5FD3AE22FD94FC6FACDF4662D4FC456377AD5CA3754330CC6
          87FDC88449FF0000ABFAD4DE24F1078174EF0D7882CE2D2F52F18EB4F00D3A00
          A1ED34B04CB22485382FE446549CF5940AEF3E3668179E20F83DE2CD234AB56B
          9BEB9D36582DEDA3C02EC5701476A578C2A26B4BC97DC9FE57BFDC3B3941F5B2
          FCFF00AFC4CDF86FE25F1BDE5AE856BA9782ED34ED24DAA07D423D696675511F
          CA7CAF286724018CF19F6AF3BF88DAA5B6836DE2ABAD5BE2ADEDB78C60371736
          1A7E917844366A0136F13DBAA90DC01B8C839C9E40AF7EF0E5B4B67E1CD32DE6
          431CD15AC48EA7AAB04008FCEBC2349D1FC5FE1DF861E25F01DAF83AEAE3C417
          6DA829D79A484595C89DE46170EFBFCC2FB5C0D9B09CA81C0E42A328B9B92496
          ABFE1F5BFCC7513514B7FEBCAC755E27F13788F50F82BE18F1E6953489A8D95A
          5A6B97B6109C25EC0620D710907FD86665EE1957D6B53E10F892FF00E23DC6AF
          E34375327872F9C5AE8964DF2A9B78C90D72CBD7748FBB19E42AAFA9AE6AFBC2
          3E23D6BE127C3AF008B1B8B2B7BCB0B4B6F10DD6E0BF65B68A14F3A1C83F7E42
          3CBE33C16CD741F0CBC2DA97C37F19788FC376F62DFF000865C9FED5D2678F1E
          5DA49237EFED71D86FFDE280318661DA94D41529256BDDDBD2FF009F6F2B8479
          B9D37B7EB6FEBE6767E11F0F5E786EC2E6DEF75ABAD72496EA59D67BB037468C
          722218FE15E82B88F8E8F730DF7C3DB8B7D1EF35C16DE2112BDA5946AEEDFE89
          72AB9DC42A8DCCBF3310067935DBF8435DD47C4161733EA5A24FA14D15D4B024
          13C8AE648D4E16504740C3902A87C41D63C43A041A55FE85A636B36F15E01A9D
          94201B86B628C0B43B9802CADB0E33C8040E6B9A0E4AAEB6BEBE9B1B49270D36
          2B781FC776DAFEB3AAE8971A1DCF86B5DB048A69EC2EBCA25E193704951E3665
          75255875C820820571BE18F0869FE13FDA46FF00EC42679EFF00C3AF77757373
          299659A46BBC64B1EC000A00E0000015B1E07B3D4FC49F14F5CF19DDE9179A1E
          9C74BB6D26CA0D4155279F64924B24AC809DA3322A8079382703BE8FF60DFF00
          FC2F6FEDAFB33FF65FFC239F63FB4F1B7CEFB4EFD9EB9DBCD6D750949276BC7F
          1EC67672516FA33BEAF2DF8D1ABF883C15E0ABC8BC1FE128B51B79E0B86BBB88
          25488588619697C9C0698FCCEDB570495F7AF5135E1EBE39F1FF0086B48D6FC3
          9AC783F59F14EB866B94D3756B28E0FB1DD42ECC6132B6E5116D0C15815E8B9E
          735961E2DCAFA3B746EDFE5B1A557656D55FAA395F8A86CBC39FB32FC3D4F0F3
          BEBFA7C17DA3FD9994796D78AAEAC383F74B10383D09C76AEEFF00E137F19786
          7C5FE16B4F1CE93A049A66B9746D2D2EB497959ECAEBCB67447F307CDB82B2EE
          5DBCF6C566EB7F07F5CB0FD9D3C3BE18D30437BE23D03EC37B142EFB639E7825
          591A30C7A0386009F6CE3B49A8DDEBDF18BC5DE0984F84757F0DE93A16A4358B
          FBAD61238F74B1C4E91C5105762F969092DC0007E15DD784E2D68D5E5AF5F2FB
          CE5B4A2FB3B2D3A799E89E37F11E85F0CB40D6BC5B7F6F0C2C912F9F2C31A89E
          E997E58A2CF56625B6A83D3776AC3F819E12D4FC3BE14BBD4B5E511F88BC457B
          26B3A8423A5BC92001611EC88A8BF506B88F8A13F88752F8C9A53EA1E0BD735E
          F07787D16F2CA2D296174BABF238964F3244E2204851CFCD93ED5EB7E0BF15DD
          78B2CA79EEBC3BAAF871A2936083565895E418CEE5F2DDC63B72474AE59C5C28
          AB6B7D5EBF72FF003F976378B52A8EFD36FD59C17C573FF099FC52F0078253E7
          B68676F11EA6A3B436FC42AC3B869997FEF8AF5FAF32F873E19D526F897E3DF1
          76B566F6925D5C45A5E991CB8245940BF7D70781248EED83CF02BB0D6F5DD474
          CD7743B2B4D127D46D2FA4912EAFA391552C95572ACC0F2DB8F1C567575E5A71
          E8BF1DDFF97C8A86979BEAFF00E02FF32BF8C75DD07E1D68BAC78BB538A0B610
          5B83717491AF9D305FB91E7AB12CD8519EADEF5CCFC0BF0BEA7A5F87F52D7FC4
          117D9FC43E27BD6D5AF2D8FF00CBAAB2858A0FF8046AA0E7BEEAE43E2EC9E20D
          57E2C6871DEF8375BD7FC15A222DFC51694B0BADE5FF00F019049227C910C903
          9CB1E7815EADE0AF175D78B6DAE65BAF0D6AFE1B685C2AC5AB2C4AD2E4755F2E
          47181EF8AD25170A3A6B7DF5E9D17EAFE44A6A5535E9B7F99C24D670587ED3DA
          0C16D0476F02784AEC2C51205551F6B87A01C0AF5E270335E717BE1CD4A4FDA1
          74AD756D1CE9317872E6CDEEB8DAB335C44CA9EB92AA4FE15B1F1766D722F86B
          E204F0D59C97DAECF6AD6F691444060F27C9BF248036EE2DFF0001A89AF68E9C
          53E8BF36547DD5276EBFA1C87C073FF095EADE36F88127CD1EBBA91B4D3DFB1B
          1B5CC5191E9B9C4ADF88AF3AF8B5FF0015EF807E2AF8EA4F9F4FB6B09343D0F3
          D0C31CA3ED13AFFD74957683FDD847AD7D0DE04F09DBF81BC17A2F87AD7060D3
          AD23B60C063795500B1F72724FD6BC83E307ECDBE1B7F85BE22B7F0B68170DAC
          B5B37D8EDE1BF9C82E581C046936FAF0462BAA8D6A7EDF99BB6A92F45F35D12F
          C4C2A539FB2B6FA3BFA9EE5A473A559FFD714FFD0455BAC4F06F866CBC21E1AB
          1D2AC207B7B6853223795E5218F2DF33927A93DEB6EBCC95AEEC76ABDB50A28A
          2A46145145001451450014514500145145001451450014514500145145001451
          45001451450014514500145145001451450014514500145145034C2941C52514
          143A8A6838A775A0028A28A0029C0E69B454D8771F45341A752185286A4A2819
          9BE2AF0D58F8CBC37A9687A92BBE9FA840F6D3AC6DB58A30C1C1EDC579DE9BFB
          36F87B4A96D5ADF5EF162A5B1531C475FB93180B8C2EDDD8C718C57AB038A703
          9ADA15AA535CB1959112A709BBC96A381AC4D07C1BA6F87357D7752B2475BAD6
          AE16EAECB3960CEB1AC6081DBE551C56D5158A6D269752DABEA62784FC17A678
          2ACAFAD74C8E48E1BDBD9EFE612396265958B3919E8327A76AE6DBE05F857FE1
          0ED0FC39145796B6DA1B9934DBBB6BB78AEED58E72525521B90C411D083C8AF4
          00D4B56AAD44EE9EA4F241AB58E17C31F05FC33E13F1245E20B28AEE5D6D6DE4
          B69750BCBB92E27B857284F98EE496C796B8E70A38005169F05BC3365E1AD1B4
          28A09C69FA4EAABACDAA99896172B334C093DC6F63C577545375AA3D5C9FF5FF
          000E0A9C16891CFAF81F4C4F1E3F8BC79FFDAEDA7FF661FDF1F2BC9F33CCFB9D
          376EFE2EB8E2B5F54D36D75AD32EF4EBE812EACAEE27827824195923604329F6
          20915668ACDCA4ECDBD8A5148F38F0FF00C06F0F683A869170D7DACEAB6FA336
          FD2F4FD4F5079EDAC9829556443D4AA9214B16DA0F18A359F803E1CD57C45A9F
          882DAF358D135DD4A5125CEA3A46A0F6F348A1153CB24705308A704704646093
          5E8F4B5AFD62ADF9B9999FB1A76B58E4F4EF851E18D33C012F82D34D12F87E68
          DE39EDE6919DA6DE4B3BBB93B8B1624EECE73D318158DE1CF811A0E81AF69BAB
          CDA86B7AEDCE961869C9ACEA525CC767B976931A9E33B78C9C9C77E95E8BBA97
          2292AD515FDE7AEE57B3869A6C6268BE0DD3740F106BFACDA248B7DADCB14D78
          CCE4AB347188D303B7CAA293C29E0BD33C191EAA9A647246BA9EA13EA771E639
          6CCF336E7233D067B76ADDA2A1CE4F46FF00A5B14A296C8E3EC3E1478774FF00
          8747C111DB48FA014910452484BAEE7326E0FD43076DC08E41008E95877167E2
          6D334F5D27C41E1C83E22E97111E55DC2D02DD381D3CE8272919703ABABFCDC9
          D8BD2BD328AB556577CDAF5F9F725C23D343CCEEDEFBC449676D07C2E8E136A3
          6DBCDE2192CD20B71FEC085E6718C740AB9C0E4751E85A5C377069F025F4D0DC
          5D85FDE496F118A327FD952CC40FA93F5AB5454CA7CCAD6B7F5E65463CBADCE3
          342F84FA1F86BC61A8F88B4C9350B4B8D4657B8BAB34BE97EC72CCE00694C1BB
          66F381CE2B9BB9FD9ABC2970B3D98BCD720F0FDC4CD3CDE1E87549534F9199B7
          B0F281E14B6495042F3D2BD5E8AB55EAA77526274A9B56691CFDCF81B48B9F14
          68BAF98192FF0048B69AD2D3CB6DB1A4726D0C368E3F8171E9520F0669A3C707
          C59B24FED83A78D2F7EF3B3C8127998DBD33B8F5ADCA2B3E7977F22F963D8E13
          C47F063C3DE24F115D6B4F2EA9A6DEDEA2457DFD95A94D68B7A8830A2611B0DD
          81C67838E338A2CFE0AF8574CF05EB9E14B1B392C744D62679EE2DEDA531EC66
          0A088C8FB83E45E07BD777455FB6A964B99E9FA6C4FB285DBB1C7F8B3E16687E
          31D0349D2EF3ED701D25E3934FBEB3B9686EAD5D17686490739DB90739073C8A
          7781BE18695E04B9D42F60B8BFD5756D4022DD6A9AB5CB5C5CCA899D89B8F0AA
          3270AA00E6BAEA2A7DACF9792FA0FD9C39B9ADA9E50DFB34784587D93CFD67FE
          11EFB47DA7FE11C1A94BFD9BBF7EFC7939FBBBB9D99DB9ED5DDDC783B4DB9F18
          D9789DE37FED5B3B392C6270E42089D959815E84E5179ADCA29CAB549FC52FE9
          EE254A11D918769E0DD36CBC63A8789E24906AD7D6B159CCE5C9531C658A80BD
          8E5CF3547FE15AE8BFF157612753E2918D4596620B7EE443F21FE1F900E9DF9A
          EAA8A9F6925D7FA457247B1C16B9F047C2BE25F0AF87BC3BA9DA4D7BA5685B4D
          A4524EDBB2B1346A5981C92158907390707A8A7783BE0E68DE0FF10BEBA6FB57
          D7758FB39B48AF75BBF7BA7821243148F770A0903271938E4F5AEEE8ABF6D539
          79799D89F670BDEDA985E13F06699E0B8B548F4C49235D47509F53B8F31CB667
          99B73919E833DBB56ED1456529393BB2D5A2AC828A28A4170A28A280B8514991
          46EA042D26693349400EDD45368A00F90FC47FF0518D1B48F106A762DE0CBD91
          AD6E6584B8BD4018AB119FBBED59DFF0F29D17FE849BEFFC0D4FFE26BE28F881
          FF0023DF88FF00EC2371FF00A31AB06BF41865183714F97F167C8CB31C4A93F7
          BF047DEBFF000F29D17FE849BEFF00C0D4FF00E268FF008794E8BFF424DF7FE0
          6A7FF135F055155FD8F83FE5FC593FDA389FE6FC11F7AFFC3CA745FF00A126FB
          FF000353FF0089A5FF00879568BFF424DF7FE06A7FF135F04D147F63E0FF0097
          F161FDA389FE6FC11F7BFF00C3CAB45FFA126FBFF0353FF89A3FE1E55A27FD09
          37FF00F81A9FFC4D7C11451FD8F83FE5FC587F68E27F9BF047DEFF00F0F2AD13
          FE849BFF00FC0D4FFE268FF8795689FF00424DFF00FE06A7FF00135F045147F6
          3E0FF97F161FDA389FE6FC11F7BFFC3CAB44FF00A126FF00FF000353FF0089A3
          FE1E55A27FD0937FFF0081A9FF00C4D7C11453FEC7C1FF0027E2FF00CC3FB471
          3FCDF823EF7FF8795689FF00424DFF00FE06A7FF001347FC3CAB44FF00A126FF
          00FF000353FF0089AF8228A3FB1F07FC9F8BFF0030FED1C4FF0037E08FBDFF00
          E1E55A27FD0937FF00F81A9FFC4D1FF0F2AD13FE849BFF00FC0D4FFE26BE08A2
          8FEC7C1FF27E2FFCC3FB4713FCDF823EF7FF008795689FF424DFFF00E06A7FF1
          347FC3CAB44FFA126FFF00F0353FF89AF8228A3FB1F07FC9F8BFF30FED1C4FF3
          7E08FBDFFE1E55A27FD0937FFF0081A9FF00C4D1FF000F2AD13FE849BFFF00C0
          D4FF00E26BE08A28FEC7C1FF0027E2FF00CC3FB4713FCDF823EF7FF8795689FF
          00424DFF00FE06A7FF001347FC3CAB44FF00A126FF00FF000353FF0089AF8228
          A3FB1F07FC9F8BFF0030FED1C4FF0037E08FBDFF00E1E55A27FD0937FF00F81A
          9FFC4D1FF0F2AD13FE849BFF00FC0D4FFE26BE08A28FEC7C1FF27E2FFCC3FB47
          13FCDF823EF7FF008795689FF424DFFF00E06A7FF1347FC3CAB44FFA126FFF00
          F0353FF89AF8228A5FD8F83FE5FC587F68E27F9BF047DEFF00F0F2AD13FE849B
          FF00FC0D4FFE268FF8795689FF00424DFF00FE06A7FF00135F045147F63E0FF9
          7F161FDA389FE6FC11F7B7FC3CAB45FF00A126FBFF000353FF0089A4FF008794
          E8BFF424DF7FE06A7FF135F055147F63E0FF0097F161FDA389FE6FC11F7AFF00
          C3CA745FFA126FBFF0353FF89A3FE1E53A2FFD0937DFF81A9FFC4D7C15451FD8
          F83FE5FC587F68E27F9BF047DEBFF0F29D17FE849BEFFC0D4FFE268FF8794E8B
          FF00424DF7FE06A7FF00135F055147F63E0FF97F17FE61FDA389FE6FC11F7AFF
          00C3CA745FFA126FBFF0353FF89A3FE1E53A2FFD0937DFF81A9FFC4D7C15453F
          EC7C1FF27E2FFCC3FB4713FCDF823EF5FF008794E8BFF424DF7FE06A7FF1347F
          C3CA745FFA126FBFF0353FF89AF82A8A3FB1F07FC9F8BFF30FED1C4FF37E08FB
          D3FE1E4FA29FF992AFBFF0353FF89A3FE1E4FA2FFD0957DFF81A9FFC4D7C1745
          1FD9183FE4FC5FF98BFB4713FCDF823EF4FF008793E8BFF4255F7FE06A7FF134
          1FF829368BFF004255F7FE06A7FF00135F05D147F6460FF97F17FE61FDA389FE
          6FC11F79FF00C3C9745FFA12AFBFF0353FF89A3FE1E4BA2FFD0957DFF81A9FFC
          4D7C19451FD9183FE5FC5FF987F68623F9BF047DE7FF000F25D17FE84ABEFF00
          C0D4FF00E268FF008792E8BFF4255F7FE06A7FF135F065147F6460FF0097F17F
          E61FDA188FE6FC11F791FF00829268A7FE64BBEFFC0D4FFE2693FE1E47A2FF00
          D0977DFF0081A9FF00C4D7C1D453FEC8C1FF002FE2FF00CC3FB4311FCDF823EF
          1FF8791E8BFF00425DF7FE06A7FF001347FC3C8F45FF00A12EFBFF000353FF00
          89AF83A8A3FB2707FCBF8B17F68623F9BF047DE3FF000F23D17FE84ABEFF00C0
          D4FF00E268FF008791E8BFF4255F7FE06A7FF135F075147F64E0FF0097F161FD
          A188FE6FC11F781FF829168C7FE64BBEFF00C0D4FF00E268FF008790E8BFF425
          DF7FE06A7FF135F07D147F64E0FF0097F161FDA188FE6FC11F787FC3C8745FFA
          12EFBFF0353FF89A3FE1E43A2FFD0977DFF81A9FFC4D7C1F451FD9383FE5FC58
          7D7F11FCDF823EF0FF008790E8BFF425DF7FE06A7FF1347FC3C8745FFA12EFBF
          F0353FF89AF83E8A3FB2707FCBF8B17D7F11FCDF823EF0FF008790E8BFF425DF
          7FE06A7FF1347FC3C8745FFA12EFBFF0353FF89AF83E8A3FB2707FCBF8B0FAFE
          23F9BF047DE1FF000F21D17FE84BBEFF00C0D4FF00E268FF008790E8BFF425DF
          7FE06A7FF135F07D147F64E0FF0097F161F5FC47F37E08FBC3FE1E43A2FF00D0
          977DFF0081A9FF00C4D1FF000F21D17FE84BBEFF00C0D4FF00E26BE0FA28FEC9
          C1FF002FE2C3EBF88FE6FC11F787FC3C8745FF00A12EFBFF000353FF0089A3FE
          1E43A2FF00D0977DFF0081A9FF00C4D7C1F451FD9383FE5FC587D7F11FCDF823
          EF0FF8790E8BFF00425DF7FE06A7FF001347FC3C8745FF00A12EFBFF000353FF
          0089AF83E8A3FB2707FCBF8B0FAFE23F9BF047DE1FF0F21D17FE84BBEFFC0D4F
          FE268FF8790E8BFF00425DF7FE06A7FF00135F07D147F64E0FF97F161F5FC47F
          37E08FBC3FE1E43A2FFD0977DFF81A9FFC4D1FF0F21D17FE84BBEFFC0D4FFE26
          BE0FA28FEC9C1FF2FE2C3EBF88FE6FC11F787FC3C8745FFA12EFBFF0353FF89A
          3FE1E43A2FFD0977DFF81A9FFC4D7C1F451FD9383FE5FC587D7F11FCDF823EF0
          FF008790E8BFF425DF7FE06A7FF1347FC3C8745FFA12EFBFF0353FF89AF83E8A
          3FB2707FCBF8B0FAFE23F9BF047DE1FF000F21D17FE84BBEFF00C0D4FF00E268
          FF008790E8BFF425DF7FE06A7FF135F07D147F64E0FF0097F161F5FC47F37E08
          FBC3FE1E43A2FF00D0977DFF0081A9FF00C4D1FF000F21D17FE84BBEFF00C0D4
          FF00E26BE0FA28FEC9C1FF002FE2C3EBF88FE6FC11F787FC3C8745FF00A12EFB
          FF000353FF0089A3FE1E43A2FF00D0977DFF0081A9FF00C4D7C1F451FD9383FE
          5FC587D7F11FCDF823EF0FF8790E8BFF00425DF7FE06A7FF001347FC3C8745FF
          00A12EFBFF000353FF0089AF83E8A3FB2707FCBF8B0FAFE23F9BF047DE1FF0F2
          1D17FE84BBEFFC0D4FFE268FF8790E8BFF00425DF7FE06A7FF00135F07D147F6
          4E0FF97F161F5FC47F37E08FBC3FE1E43A2FFD0977DFF81A9FFC4D1FF0F21D17
          FE84BBEFFC0D4FFE26BE0FA28FEC9C1FF2FE2C3EBF88FE6FC11F787FC3C8745F
          FA12EFBFF0353FF89A3FE1E43A2FFD0977DFF81A9FFC4D7C1F451FD9383FE5FC
          587D7F11FCDF823EF0FF008790E8BFF425DF7FE06A7FF1347FC3C8745FFA12EF
          BFF0353FF89AF83E8A3FB2707FCBF8B0FAFE23F9BF047DE1FF000F21D17FE84B
          BEFF00C0D4FF00E268FF008790E8BFF425DF7FE06A7FF135F07D147F64E0FF00
          97F161F5FC47F37E08FBC3FE1E43A2FF00D0977DFF0081A9FF00C4D1FF000F21
          D17FE84BBEFF00C0D4FF00E26BE0FA28FEC9C1FF002FE2C3EBF88FE6FC11F787
          FC3C8745FF00A12EFBFF000353FF0089A3FE1E43A2FF00D0977DFF0081A9FF00
          C4D7C1F451FD9383FE5FC587D7F11FCDF823EF0FF8790E8BFF00425DF7FE06A7
          FF001347FC3C8745FF00A12EFBFF000353FF0089AF83E8A3FB2707FCBF8B0FAF
          E23F9BF047DE1FF0F21D17FE84BBEFFC0D4FFE268FF8790E8BFF00425DF7FE06
          A7FF00135F07D147F64E0FF97F161F5FC47F37E08FBC3FE1E43A2FFD0977DFF8
          1A9FFC4D1FF0F21D17FE84BBEFFC0D4FFE26BE0FA28FEC9C1FF2FE2C3EBF88FE
          6FC11F787FC3C8745FFA12EFBFF0353FF89A3FE1E43A2FFD0977DFF81A9FFC4D
          7C1F451FD9383FE5FC587D7F11FCDF823EF0FF008790E8BFF425DF7FE06A7FF1
          347FC3C8745FFA12EFBFF0353FF89AF83E8A3FB2707FCBF8B0FAFE23F9BF047D
          E1FF000F21D17FE84BBEFF00C0D4FF00E268FF008790E8BFF425DF7FE06A7FF1
          35F07D147F64E0FF0097F161F5FC47F37E08FBC3FE1E43A2FF00D0977DFF0081
          A9FF00C4D1FF000F21D17FE84BBEFF00C0D4FF00E26BE0FA28FEC9C1FF002FE2
          C3EBF88FE6FC11F787FC3C8745FF00A12EFBFF000353FF0089A3FE1E43A2FF00
          D0977DFF0081A9FF00C4D7C1F451FD9383FE5FC587D7F11FCDF823EF0FF8790E
          8BFF00425DF7FE06A7FF001347FC3C8745FF00A12EFBFF000353FF0089AF83E8
          A3FB2707FCBF8B0FAFE23F9BF047DE1FF0F21D17FE84BBEFFC0D4FFE268FF879
          0E8BFF00425DF7FE06A7FF00135F07D147F64E0FF97F161F5FC47F37E08FBC3F
          E1E43A2FFD0977DFF81A9FFC4D1FF0F21D17FE84BBEFFC0D4FFE26BE0FA28FEC
          9C1FF2FE2C3EBF88FE6FC11F787FC3C8745FFA12EFBFF0353FF89A3FE1E45A2F
          FD0977DFF81A9FFC4D7C1F451FD9383FE5FC587D7F11FCDF823EF0FF008790E8
          BFF425DF7FE06A7FF1347FC3C8745FFA12EFBFF0353FF89AF83E8A3FB2707FCB
          F8B0FAFE23F9BF047DE1FF000F21D17FE84BBEFF00C0D4FF00E268FF008790E8
          BFF425DF7FE06A7FF135F07D147F64E0FF0097F161F5FC47F37E08FBC3FE1E43
          A2FF00D0977DFF0081A9FF00C4D1FF000F21D17FE84BBEFF00C0D4FF00E26BE0
          FA28FEC9C1FF002FE2C3EBF88FE6FC11F787FC3C8745FF00A12EFBFF000353FF
          0089A3FE1E43A2FF00D0977DFF0081A9FF00C4D7C1F451FD9383FE5FC587D7F1
          1FCDF823EE997FE0A27E1C9AEE0BA93C077325D40ACB14CD751978C3637053B3
          201C0CE3AE07A54FFF000F21D17FE84BBEFF00C0D4FF00E26BE0FA28FEC9C27F
          2FE2FF00CC3EBF88EFF823EF0FF8790E8BFF00425DF7FE06A7FF001347FC3C87
          45FF00A12EFBFF000353FF0089AF83E8A3FB2707FCBF8B0FAFE23F9BF047DE1F
          F0F21D17FE84BBEFFC0D4FFE268FF8790E8BFF00425DF7FE06A7FF00135F07D1
          47F64E0FF97F161F5FC47F37E08FBC3FE1E43A2FFD0977DFF81A9FFC4D1FF0F2
          1D17FE84BBEFFC0D4FFE26BE0FA28FEC9C1FF2FE2C3EBF88FE6FC11F787FC3C8
          745FFA12EFBFF0353FF89A3FE1E43A2FFD0977DFF81A9FFC4D7C1F451FD9383F
          E5FC587D7F11FCDF823EF0FF008790E8BFF425DF7FE06A7FF1347FC3C8745FFA
          12EFBFF0353FF89AF83E8A3FB2707FCBF8B0FAFE23F9BF047DE1FF000F21D17F
          E84BBEFF00C0D4FF00E268FF008790E8BFF425DF7FE06A7FF135F07D147F64E0
          FF0097F161F5FC47F37E08FBC3FE1E43A2FF00D0977DFF0081A9FF00C4D1FF00
          0F21D17FE84BBEFF00C0D4FF00E26BE0FA28FEC9C1FF002FE2C3EBF88FE6FC11
          F787FC3C8745FF00A12EFBFF000353FF0089A3FE1E43A2FF00D0977DFF0081A9
          FF00C4D7C1F451FD9383FE5FC587D7F11FCDF823EF0FF8790E8BFF00425DF7FE
          06A7FF001347FC3C8745FF00A12EFBFF000353FF0089AF83E8A3FB2707FCBF8B
          0FAFE23F9BF047DE1FF0F21D17FE84BBEFFC0D4FFE268FF8790E8BFF00425DF7
          FE06A7FF00135F07D147F64E0FF97F161F5FC47F37E08FBC3FE1E43A2FFD0977
          DFF81A9FFC4D1FF0F21D17FE84BBEFFC0D4FFE26BE0FA28FEC9C1FF2FE2C3EBF
          88FE6FC11F787FC3C8745FFA12EFBFF0353FF89A3FE1E43A2FFD0977DFF81A9F
          FC4D7C1F451FD9383FE5FC587D7F11FCDF823EF0FF008790E8BFF425DF7FE06A
          7FF1347FC3C8745FFA12EFBFF0353FF89AF83E8A3FB2707FCBF8B0FAFE23F9BF
          047DE1FF000F21D17FE84BBEFF00C0D4FF00E268FF008790E8BFF425DF7FE06A
          7FF135F07D147F64E0FF0097F161F5FC47F37E08FBC3FE1E43A2FF00D0977DFF
          0081A9FF00C4D1FF000F21D17FE84BBEFF00C0D4FF00E26BE0FA28FEC9C1FF00
          2FE2C3EBF88FE6FC11F787FC3C8745FF00A12EFBFF000353FF0089A3FE1E43A2
          FF00D0977DFF0081A9FF00C4D7C1F451FD9383FE5FC587D7F11FCDF823EF0FF8
          790E8BFF00425DF7FE06A7FF001347FC3C8745FF00A12EFBFF000353FF0089AF
          83E8A3FB2707FCBF8B0FAFE23F9BF047DE1FF0F21D17FE84BBEFFC0D4FFE268F
          F8790E8BFF00425DF7FE06A7FF00135F07D147F64E0FF97F161F5FC47F37E08F
          BC3FE1E43A2FFD0977DFF81A9FFC4D1FF0F21D17FE84BBEFFC0D4FFE26BE0FA2
          8FEC9C1FF2FE2C3EBF88FE6FC11F787FC3C8745FFA12EFBFF0353FF89A3FE1E4
          3A2FFD0977DFF81A9FFC4D7C1F451FD9383FE5FC587D7F11FCDF823EF0FF0087
          90E8BFF425DF7FE06A7FF1347FC3C8745FFA12EFBFF0353FF89AF83E8A3FB270
          7FCBF8B0FAFE23F9BF047DE1FF000F21D17FE84BBEFF00C0D4FF00E268FF0087
          90E8BFF425DF7FE06A7FF135F07D147F64E0FF0097F161F5FC47F37E08FBC3FE
          1E43A2FF00D0977DFF0081A9FF00C4D1FF000F21D17FE84BBEFF00C0D4FF00E2
          6BE0FA28FEC9C1FF002FE2C3EBF88FE6FC11F787FC3C8745FF00A12EFBFF0003
          53FF0089A3FE1E43A2FF00D0977DFF0081A9FF00C4D7C1F451FD9383FE5FC587
          D7F11FCDF823EF0FF8790E8BFF00425DF7FE06A7FF001347FC3C8745FF00A12E
          FBFF000353FF0089AF83E8A3FB2707FCBF8B0FAFE23F9BF047DE1FF0F21D17FE
          84BBEFFC0D4FFE268FF8790E8BFF00425DF7FE06A7FF00135F07D147F64E0FF9
          7F161F5FC47F37E08FBC3FE1E43A2FFD0977DFF81A9FFC4D1FF0F21D17FE84BB
          EFFC0D4FFE26BE0FA28FEC9C1FF2FE2C3EBF88FE6FC11F787FC3C8745FFA12EF
          BFF0353FF89A3FE1E43A2FFD0977DFF81A9FFC4D7C1F451FD9383FE5FC58FEBF
          88FE6FC11F787FC3C8745FFA12EFBFF0353FF89A3FE1E45A30FF00992EFBFF00
          0353FF0089AF83E8A3FB2707FCBF8B0FED0C47F37E08FBC7FE1E47A2FF00D095
          7DFF0081A9FF00C4D1FF000F23D17FE84ABEFF00C0D4FF00E26BE0EA28FEC9C1
          FF002FE2C3FB4311FCDF823EF1FF008791E8BFF4255F7FE06A7FF1347FC3C8F4
          5FFA12EFBFF0353FF89AF83A8A3FB2707FCBF8B0FED0C47F37E08FBC7FE1E47A
          2FFD0977DFF81A9FFC4D2FFC3C93451FF325DF7FE06A7FF135F06D147F6460FF
          0097F17FE61FDA188FE6FC11F79FFC3C9745FF00A12AFBFF000353FF0089A3FE
          1E4BA2FF00D0957DFF0081A9FF00C4D7C19452FEC8C1FF002FE2FF00CC7FDA18
          8FE6FC11F79FFC3C9745FF00A12AFBFF000353FF0089A3FE1E4BA2FF00D0957D
          FF0081A9FF00C4D7C19451FD9183FE5FC5FF00987F68623F9BF047DE83FE0A4D
          A2FF00D0957DFF0081A9FF00C4D1FF000F27D17FE84ABEFF00C0D4FF00E26BE0
          BA28FEC8C1FF002FE2FF00CC3FB4713FCDF823EF4FF8793E8BFF004255F7FE06
          A7FF001347FC3C9F451FF3255F7FE06A7FF135F05D147F6460FF0093F17FE61F
          DA389FE6FC11F7AFFC3CA345FF00A126FBFF000353FF0089A3FE1E53A2FF00D0
          937DFF0081A9FF00C4D7C15451FD8F83FE4FC5FF0098FF00B4713FCDF823EF5F
          F8794E8BFF00424DF7FE06A7FF001347FC3CA745FF00A126FBFF000353FF0089
          AF82A8A3FB1F07FC9F8BFF0030FED1C4FF0037E08FBD7FE1E53A2FFD0937DFF8
          1A9FFC4D1FF0F29D17FE849BEFFC0D4FFE26BE0AA297F63E0FF97F17FE61FDA3
          89FE6FC11F7AFF00C3CA745FFA126FBFF0353FF89A3FE1E53A2FFD0937DFF81A
          9FFC4D7C15451FD8F83FE5FC587F68E27F9BF047DEBFF0F29D17FE849BEFFC0D
          4FFE2697FE1E55A2FF00D0937DFF0081A9FF00C4D7C13451FD8F83FE5FC587F6
          8E27F9BF047DEFFF000F2AD17FE849BEFF00C0D4FF00E268FF008795689FF424
          DFFF00E06A7FF135F045147F63E0FF0097F161FDA389FE6FC11F7BFF00C3CAB4
          4FFA126FFF00F0353FF89A3FE1E55A27FD0937FF00F81A9FFC4D7C11451FD8F8
          3FE5FC587F68E27F9BF047DEFF00F0F2AD13FE849BFF00FC0D4FFE268FF87956
          89FF00424DFF00FE06A7FF00135F04514FFB1F07FC9F8BFF0030FED1C4FF0037
          E08FBDFF00E1E55A27FD0937FF00F81A9FFC4D1FF0F2AD13FE849BFF00FC0D4F
          FE26BE08A28FEC7C1FF27E2FFCC3FB4713FCDF823EF7FF008795689FF424DFFF
          00E06A7FF1347FC3CAB44FFA126FFF00F0353FF89AF8228A3FB1F07FC9F8BFF3
          0FED1C4FF37E08FBDFFE1E55A27FD0937FFF0081A9FF00C4D1FF000F2AD13FE8
          49BFFF00C0D4FF00E26BE08A28FEC7C1FF0027E2FF00CC3FB4713FCDF823EF7F
          F8795689FF00424DFF00FE06A7FF001347FC3CAB44FF00A126FF00FF000353FF
          0089AF8228A3FB1F07FC9F8BFF0030FED1C4FF0037E08FBDFF00E1E55A27FD09
          37FF00F81A9FFC4D1FF0F2AD13FE849BFF00FC0D4FFE26BE08A28FEC7C1FF27E
          2FFCC3FB4713FCDF823EF7FF008795689FF424DFFF00E06A7FF1347FC3CAB44F
          FA126FFF00F0353FF89AF8228A3FB1F07FC9F8BFF30FED1C4FF37E08FBDFFE1E
          55A27FD0937FFF0081A9FF00C4D1FF000F2AD13FE849BFFF00C0D4FF00E26BE0
          8A297F63E0FF0097F161FDA389FE6FC11F7BFF00C3CAB44FFA126FFF00F0353F
          F89A3FE1E55A27FD0937FF00F81A9FFC4D7C11451FD8F83FE5FC587F68E27F9B
          F047DEDFF0F2AD17FE849BEFFC0D4FFE2693FE1E53A2FF00D0937DFF0081A9FF
          00C4D7C15451FD8F83FE5FC587F68E27F9BF047DEBFF000F29D17FE849BEFF00
          C0D4FF00E268FF008794E8BFF424DF7FE06A7FF135F055147F63E0FF0097F161
          FDA389FE6FC11F7AFF00C3CA745FFA126FBFF0353FF89A3FE1E53A2FFD0937DF
          F81A9FFC4D7C15451FD8F83FE5FC5FF987F68E27F9BF047DEBFF000F29D17FE8
          49BEFF00C0D4FF00E268AF82A8A7FD8F83FE4FC5FF00987F68E27F9BF046F7C4
          0FF91EFC47FF00611B8FFD18D5835F66F8AFE08782AE7C51AC4B268DBA492F26
          663F6A98649724FF001D657FC28AF03FFD013FF26A6FFE2EAA19852E55A3FC3F
          CC2582A9CCF55FD7C8F91E8AFAE3FE145781FF00E809FF0093537FF1747FC28A
          F03FFD013FF26A6FFE2EAFFB469767F87F991F52A9DD7F5F23E47A2BEB8FF851
          5E07FF00A027FE4D4DFF00C5D1FF000A2BC0FF00F404FF00C9A9BFF8BA3FB469
          767F87F987D4AA775FD7C8F91E8AFAE3FE145781FF00E809FF0093537FF1747F
          C28AF03FFD013FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF
          008515E07FFA027FE4D4DFFC5D1FF0A2BC0FFF00404FFC9A9BFF008BA3FB4697
          67F87F987D4AA775FD7C8F91E8AFAE3FE145781FFE809FF93537FF001747FC28
          AF03FF00D013FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB
          8FF8515E07FF00A027FE4D4DFF00C5D1FF000A2BC0FF00F404FF00C9A9BFF8BA
          3FB469767F87F987D4AA775FD7C8F91E8AFAE3FE145781FF00E809FF0093537F
          F1747FC28AF03FFD013FF26A6FFE2E97F68D2ECFF0FF0030FA954EEBFAF91F23
          D15F5C7FC28AF03FFD013FF26A6FFE2E8FF8515E07FF00A027FE4D4DFF00C5D1
          FDA54BB3FC3FCC3EA553BAFEBE47C8F457D71FF0A2BC0FFF00404FFC9A9BFF00
          8BA3FE145781FF00E809FF0093537FF1747F68D2ECFF000FF30FA954EEBFAF91
          F23D15F5C7FC28AF03FF00D013FF0026A6FF00E2E8FF008515E07FFA027FE4D4
          DFFC5D3FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF008515E07FFA027FE4
          D4DFFC5D1FF0A2BC0FFF00404FFC9A9BFF008BA3FB469767F87F987D4AA775FD
          7C8F91E8AFAE3FE145781FFE809FF93537FF001747FC28AF03FF00D013FF0026
          A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF8515E07FF00A027
          FE4D4DFF00C5D1FF000A2BC0FF00F404FF00C9A9BFF8BA3FB469767F87F987D4
          AA775FD7C8F91E8AFAE3FE145781FF00E809FF0093537FF1747FC28AF03FFD01
          3FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF008515E07FFA
          027FE4D4DFFC5D1FF0A2BC0FFF00404FFC9A9BFF008BA3FB469767F87F987D4A
          A775FD7C8F91E8AFAE3FE145781FFE809FF93537FF001747FC28AF03FF00D013
          FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF8515E07FF
          00A027FE4D4DFF00C5D1FF000A2BC0FF00F404FF00C9A9BFF8BA3FB469767F87
          F987D4AA775FD7C8F91E8AFAE3FE145781FF00E809FF0093537FF1747FC28AF0
          3FFD013FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF008515
          E07FFA027FE4D4DFFC5D1FF0A2BC0FFF00404FFC9A9BFF008BA3FB469767F87F
          987D4AA775FD7C8F91E8AFAE3FE145781FFE809FF93537FF001747FC28AF03FF
          00D013FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB73F02B
          C103FE60BFF93537FF001749FF000A2FC11FF405FF00C9A9BFF8BA3FB469767F
          87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF0093537FF1747FC28BF0
          47FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BEB6FF008517
          E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9BFF008BA3FB469767F8
          7F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF93537FF001747FC28BF04
          7FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BEB6FF851
          7E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00C9A9BFF8BA3FB46976
          7F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF0093537FF1747FC28B
          F047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BEB6FF0085
          17E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9BFF008BA3FB469767
          F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF93537FF001747FC28BF
          047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BEB6FF8
          517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00C9A9BFF8BA3FB469
          767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF0093537FF1747FC2
          8BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BEB6FF00
          8517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9BFF008BA3FB4697
          67F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF93537FF001747FC28
          BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BEB6F
          F8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00C9A9BFF8BA3FB4
          69767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF0093537FF1747F
          C28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BEB6FF
          008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9BFF008BA3FB46
          9767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF93537FF001747FC
          28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BEB
          6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00C9A9BFF8BA3F
          B469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF0093537FF174
          7FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BEB6
          FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9BFF008BA3FB
          469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF93537FF001747
          FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2B
          EB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00C9A9BFF8BA
          3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF0093537FF1
          747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2BE
          B6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9BFF008BA3
          FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF93537FF0017
          47FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A
          2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00C9A9BFF8
          BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF0093537F
          F1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E49A2
          BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9BFF008B
          A3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF93537FF00
          1747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E4
          9A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00C9A9BF
          F8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF009353
          7FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E49
          A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9BFF00
          8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF93537FF
          001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23
          E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00C9A9
          BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF0093
          537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E
          49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9BFF
          008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF93537
          FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F
          23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00C9
          A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF00
          93537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F2
          3E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A9B
          FF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF935
          37FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F
          5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF00
          C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF
          0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5
          F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC9A
          9BFF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BFF9
          3537FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9DD
          7F5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405FF
          00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80B
          FF0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7
          F5F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405FFC
          9A9BFF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80BF
          F93537FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52A9
          DD7F5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF405
          FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE8
          0BFF0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A9D
          D7F5F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00405F
          FC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE80
          BFF93537FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F52
          A9DD7F5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11FF4
          05FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823F
          E80BFF0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F52A
          9DD7F5F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF0040
          5FFC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823FE
          80BFF93537FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE61F
          52A9DD7F5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC11F
          F405FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F82
          3FE80BFF0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61F5
          2A9DD7F5F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF00
          405FFC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F823
          FE80BFF93537FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1FE6
          1F52A9DD7F5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2FC1
          1FF405FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F
          823FE80BFF0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE61
          F52A9DD7F5F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11FF
          00405FFC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145F8
          23FE80BFF93537FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE1F
          E61F52A9DD7F5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A2F
          C11FF405FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE14
          5F823FE80BFF0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1FE
          61F52A9DD7F5F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC11
          FF00405FFC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE145
          F823FE80BFF93537FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9FE
          1FE61F52A9DD7F5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF000A
          2FC11FF405FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE
          145F823FE80BFF0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9FE1
          FE61F52A9DD7F5F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2FC
          11FF00405FFC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBFE1
          45F823FE80BFF93537FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5D9
          FE1FE61F52A9DD7F5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF00
          0A2FC11FF405FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFADB
          FE145F823FE80BFF0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D9F
          E1FE61F52A9DD7F5F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D1FF0A2
          FC11FF00405FFC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F9268AFADBF
          E145F823FE80BFF93537FF001747FC28BF047FD017FF0026A6FF00E2E8FED1A5
          D9FE1FE61F52A9DD7F5F23E49A2BEB6FF8517E08FF00A02FFE4D4DFF00C5D1FF
          000A2FC11FF405FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9268AFA
          DBFE145F823FE80BFF0093537FF1747FC28BF047FD017FF26A6FFE2E8FED1A5D
          9FE1FE61F52A9DD7F5F23E49A2BEB6FF008517E08FFA02FF00E4D4DFFC5D28F8
          15E083FF00305FFC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F9228AFAE
          3FE145781FFE809FF93537FF001747FC28AF03FF00D013FF0026A6FF00E2E8FE
          D1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF8515E07FF00A027FE4D4DFF00C5
          D1FF000A2BC0FF00F404FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F9
          1E8AFAE3FE145781FF00E809FF0093537FF1747FC28AF03FFD013FF26A6FFE2E
          8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF008515E07FFA027FE4D4DFFC
          5D1FF0A2BC0FFF00404FFC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F91
          E8AFAE3FE145781FFE809FF93537FF001747FC28AF03FF00D013FF0026A6FF00
          E2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF8515E07FF00A027FE4D4D
          FF00C5D1FF000A2BC0FF00F404FF00C9A9BFF8BA3FB469767F87F987D4AA775F
          D7C8F91E8AFAE3FE145781FF00E809FF0093537FF1747FC28AF03FFD013FF26A
          6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF008515E07FFA027FE4
          D4DFFC5D1FF0A2BC0FFF00404FFC9A9BFF008BA3FB469767F87F987D4AA775FD
          7C8F91E8AFAE3FE145781FFE809FF93537FF001747FC28AF03FF00D013FF0026
          A6FF00E2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF8515E07FF00A027
          FE4D4DFF00C5D1FF000A2BC0FF00F404FF00C9A9BFF8BA3FB469767F87F987D4
          AA775FD7C8F91E8AFAE3FE145781FF00E809FF0093537FF1747FC28AF03FFD01
          3FF26A6FFE2E8FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF008515E07FFA
          027FE4D4DFFC5D1FF0A2BC0FFF00404FFC9A9BFF008BA5FDA34BB3FC3FCC3EA5
          53BAFEBE47C8F457D71FF0A2BC0FFF00404FFC9A9BFF008BA3FE145781FF00E8
          09FF0093537FF1747F6952ECFF000FF30FA954EEBFAF91F23D15F5C7FC28AF03
          FF00D013FF0026A6FF00E2E8FF008515E07FFA027FE4D4DFFC5D1FDA34BB3FC3
          FCC3EA553BAFEBE47C8F457D71FF000A2BC0FF00F404FF00C9A9BFF8BA3FE145
          781FFE809FF93537FF00174FFB469767F87F987D4AA775FD7C8F91E8AFAE3FE1
          45781FFE809FF93537FF001747FC28AF03FF00D013FF0026A6FF00E2E8FED1A5
          D9FE1FE61F52A9DD7F5F23E47A2BEB8FF8515E07FF00A027FE4D4DFF00C5D1FF
          000A2BC0FF00F404FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8F91E8A
          FAE3FE145781FF00E809FF0093537FF1747FC28AF03FFD013FF26A6FFE2E8FED
          1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF008515E07FFA027FE4D4DFFC5D1F
          F0A2BC0FFF00404FFC9A9BFF008BA3FB469767F87F987D4AA775FD7C8F91E8AF
          AE3FE145781FFE809FF93537FF001747FC28AF03FF00D013FF0026A6FF00E2E8
          FED1A5D9FE1FE61F52A9DD7F5F23E47A2BEB8FF8515E07FF00A027FE4D4DFF00
          C5D1FF000A2BC0FF00F404FF00C9A9BFF8BA3FB469767F87F987D4AA775FD7C8
          F91E8AFAE3FE145781FF00E809FF0093537FF17451FDA34BB3FC3FCC3EA553BA
          FEBE47FFD9}
        mmHeight = 11550673
        mmLeft = 2660126
        mmTop = 279930
        mmWidth = 50963349
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'ppDBText26'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 8540502
        mmTop = 6160306
        mmWidth = 18061288
        BandType = 4
      end
      object ppDBBarCode2: TppDBBarCode
        UserName = 'ppDBBarCode2'
        AutoEncode = True
        BarCodeType = bcEAN_13
        BarColor = clWindowText
        CalcCheckDigit = False
        DataPipeline = ppBDEPipeline
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3080285
        mmLeft = 17571279
        mmTop = 7840414
        mmWidth = 11200629
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 76200
      end
      object LBDTVenc: TppLabel
        UserName = 'LBDTVenc'
        Caption = 'Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 980019
        mmLeft = 8750582
        mmTop = 10290725
        mmWidth = 3270521
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'ppDBText27'
        AutoSize = True
        DataPipeline = ppBDEPipeline
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3302
        mmLeft = 31922043
        mmTop = 5180287
        mmWidth = 13039
        BandType = 4
      end
      object LBEmissao: TppLabel
        UserName = 'LBEmissao'
        Caption = 'Emissao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 980019
        mmLeft = 43332751
        mmTop = 5180287
        mmWidth = 2363263
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'ppDBText28'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 31362183
        mmTop = 1750222
        mmWidth = 17641129
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'ppDBText29'
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 1050133
        mmLeft = 31362183
        mmTop = 2870206
        mmWidth = 17641129
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'ppDBText30'
        AutoSize = True
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3302
        mmLeft = 8610617
        mmTop = 7490369
        mmWidth = 13039
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'ppDBText31'
        AutoSize = True
        DataPipeline = ppBDEPipeline
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3302
        mmLeft = 8540502
        mmTop = 8890547
        mmWidth = 13039
        BandType = 4
      end
    end
  end
  object PipeCarta: TppBDEPipeline
    DataSource = DSTblMalaDiretaCli
    UserName = 'PipeCarta'
    Left = 816
    Top = 3
  end
  object ReportCartas: TppReport
    AutoStop = False
    DataPipeline = PipeCarta
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 139
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 844
    Top = 3
    Version = '7.04'
    mmColumnWidth = 0
    DataPipelineName = 'PipeCarta'
    object ppDetailBand8: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 139965
      mmHeight = 69444532
      mmPrintPosition = 0
      object ppTexto: TppRichText
        UserName = 'ppTexto'
        Caption = 'ppTexto'
        MailMerge = True
        mmHeight = 69304567
        mmLeft = 0
        mmTop = 0
        mmWidth = 52573342
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  EMPRICOD,'
      '  EMPRA60NOMEFANT'
      'FROM'
      '  EMPRESA'
      'ORDER BY'
      '  EMPRA60NOMEFANT')
    Macros = <>
    Left = 857
    Top = 64
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 885
    Top = 64
  end
end
