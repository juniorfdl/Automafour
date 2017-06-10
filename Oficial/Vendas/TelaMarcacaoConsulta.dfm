inherited FormTelaMarcacaoConsulta: TFormTelaMarcacaoConsulta
  Left = 238
  Top = 130
  Width = 1037
  Height = 588
  Caption = 'Marca'#231#227'o de Consulta'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 3
    Top = 5
    Width = 52
    Height = 13
    Caption = 'Endere'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited ScrollBoxFundo: TScrollBox
    Width = 1021
    Height = 549
    inherited PanelCentral: TPanel
      Top = 61
      Width = 1017
      Height = 484
      inherited PanelBarra: TPanel
        Width = 1017
        Height = 54
        Align = alTop
        Color = 14536396
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 517
          Height = 54
          Align = alLeft
          Color = 16249066
          ParentColor = False
          TabOrder = 0
          object Label2: TLabel
            Left = 396
            Top = 14
            Width = 57
            Height = 13
            Caption = 'Data Base'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 9
            Top = 14
            Width = 76
            Height = 13
            Caption = 'Especialidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 173
            Top = 14
            Width = 65
            Height = 13
            Caption = 'Profissional'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComboEspecialidade: TRxDBLookupCombo
            Left = 6
            Top = 27
            Width = 161
            Height = 21
            DropDownCount = 8
            DisplayEmpty = 'Escolha uma Especialidade...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            LookupField = 'ESPEICOD'
            LookupDisplay = 'ESPEA60DESCR'
            LookupSource = DSSQLEspecialidade
            ParentFont = False
            TabOrder = 0
            OnExit = ComboEspecialidadeExit
          end
          object ComboProfissional: TRxDBLookupCombo
            Left = 169
            Top = 27
            Width = 223
            Height = 21
            DropDownCount = 8
            DisplayEmpty = 'Escolha um Profissional...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            LookupField = 'VENDICOD'
            LookupDisplay = 'VENDA60NOME'
            LookupSource = DSSQLProfissional
            ParentFont = False
            TabOrder = 1
          end
          object EditDataBase: TDateEdit
            Left = 394
            Top = 27
            Width = 89
            Height = 21
            DefaultToday = True
            DialogTitle = 'Escolha a Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 2
          end
          object BitBtn1: TBitBtn
            Left = 484
            Top = 25
            Width = 29
            Height = 25
            Hint = 'Filtrar a partir da data base...'
            ModalResult = 6
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BitBtn1Click
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
        end
        object GroupBox2: TGroupBox
          Left = 517
          Top = 0
          Width = 500
          Height = 54
          Align = alClient
          Caption = ' Configura'#231#245'es Gerais '
          Color = 16249066
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object CKHorariosLivres: TCheckBox
            Left = 10
            Top = 15
            Width = 162
            Height = 17
            Caption = 'Visualizar hor'#225'rios livres'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 0
          end
          object CKLivresdoDia: TCheckBox
            Left = 10
            Top = 31
            Width = 222
            Height = 17
            Caption = 'Visualizar hor'#225'rios livres do dia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
        end
      end
      object PageControlDadosCliente: TPageControl
        Left = 738
        Top = 54
        Width = 279
        Height = 430
        ActivePage = TabSheetConsulta
        Align = alRight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object TabSheetConsulta: TTabSheet
          Caption = '&1 Pesquisa'
          ImageIndex = 2
          object Label43: TLabel
            Left = 3
            Top = 127
            Width = 160
            Height = 13
            Caption = 'Procurar Titular pelo C'#243'digo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label44: TLabel
            Left = 3
            Top = 212
            Width = 78
            Height = 13
            Caption = 'Dependentes:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label45: TLabel
            Left = 4
            Top = 250
            Width = 69
            Height = 13
            Caption = 'Atendentes:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 4
            Top = 287
            Width = 176
            Height = 13
            Caption = 'Observa'#231#245'es Complementares:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 0
            Top = 41
            Width = 20
            Height = 13
            Caption = 'CPF'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label46: TLabel
            Left = 3
            Top = 3
            Width = 129
            Height = 13
            Caption = 'Informa'#231#245'es do Titular'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 150
            Top = 41
            Width = 16
            Height = 13
            Caption = 'RG'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 0
            Top = 24
            Width = 32
            Height = 13
            Caption = 'Nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label38: TLabel
            Left = 0
            Top = 60
            Width = 20
            Height = 13
            Caption = 'End'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label49: TLabel
            Left = 0
            Top = 78
            Width = 34
            Height = 13
            Caption = 'Bairro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label50: TLabel
            Left = 0
            Top = 96
            Width = 38
            Height = 13
            Caption = 'Cidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 7
            Top = 164
            Width = 154
            Height = 13
            Caption = 'Procurar Titular pelo Nome:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object EditProcuraTitular: TEdit
            Left = 2
            Top = 141
            Width = 164
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object ComboDependente: TRxDBLookupCombo
            Left = 2
            Top = 226
            Width = 266
            Height = 21
            DropDownCount = 8
            Ctl3D = False
            DisplayEmpty = 'Escolha um Dependente...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            LookupField = 'CLDPICOD'
            LookupDisplay = 'CLDPA60NOME'
            LookupSource = DSSQLDependente
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            OnExit = ComboDependenteExit
          end
          object ComboAtendente: TRxDBLookupCombo
            Left = 2
            Top = 264
            Width = 265
            Height = 21
            DropDownCount = 8
            Ctl3D = False
            DisplayEmpty = 'Escolha um Atendente...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            LookupField = 'USUAICOD'
            LookupDisplay = 'USUAA60LOGIN'
            LookupSource = DSSQLAtendente
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object MemoObs: TMemo
            Left = 2
            Top = 303
            Width = 267
            Height = 38
            Ctl3D = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Lines.Strings = (
              '')
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            WantReturns = False
          end
          object DBEdit26: TDBEdit
            Left = 38
            Top = 20
            Width = 232
            Height = 19
            AutoSize = False
            Color = 15461355
            Ctl3D = False
            DataField = 'CLIEA60RAZAOSOC'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit32: TDBEdit
            Left = 38
            Top = 38
            Width = 109
            Height = 19
            AutoSize = False
            Color = 15461355
            Ctl3D = False
            DataField = 'CLIEA11CPF'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit33: TDBEdit
            Left = 170
            Top = 38
            Width = 100
            Height = 19
            AutoSize = False
            Color = 15461355
            Ctl3D = False
            DataField = 'CLIEA10RG'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit34: TDBEdit
            Left = 38
            Top = 56
            Width = 232
            Height = 19
            AutoSize = False
            Color = 15461355
            Ctl3D = False
            DataField = 'CLIEA60ENDRES'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit35: TDBEdit
            Left = 38
            Top = 74
            Width = 232
            Height = 19
            AutoSize = False
            Color = 15461355
            Ctl3D = False
            DataField = 'CLIEA60BAIRES'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit36: TDBEdit
            Left = 38
            Top = 92
            Width = 232
            Height = 19
            AutoSize = False
            Color = 15461355
            Ctl3D = False
            DataField = 'CLIEA60CIDRES'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object ComboProcuraClienteNome: TRxDBLookupCombo
            Left = 1
            Top = 178
            Width = 266
            Height = 21
            DropDownCount = 8
            Ctl3D = False
            DisplayEmpty = 'Escolha um Titular...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            LookupField = 'CLIEA13ID'
            LookupDisplay = 'CLIEA60RAZAOSOC'
            LookupSource = DSSQLCliente
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnExit = ComboDependenteExit
          end
        end
        object TabSheetPrincipal: TTabSheet
          Caption = '&2 Principal'
          object Label3: TLabel
            Left = 0
            Top = 32
            Width = 52
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit1
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 0
            Top = 69
            Width = 34
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit2
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 0
            Top = 107
            Width = 38
            Height = 13
            Caption = 'Cidade'
            FocusControl = DBEdit4
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 0
            Top = 144
            Width = 21
            Height = 13
            Caption = 'Cep'
            FocusControl = DBEdit5
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 141
            Top = 144
            Width = 14
            Height = 13
            Caption = 'UF'
            FocusControl = DBEdit6
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 0
            Top = 182
            Width = 37
            Height = 13
            Caption = 'Fone 1'
            FocusControl = DBEdit7
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 135
            Top = 182
            Width = 37
            Height = 13
            Caption = 'Fone 2'
            FocusControl = DBEdit8
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 0
            Top = 218
            Width = 30
            Height = 13
            Caption = 'Email'
            FocusControl = DBEdit10
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 0
            Top = 257
            Width = 73
            Height = 13
            Caption = 'Observa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 2
            Top = -2
            Width = 37
            Height = 13
            Caption = 'Titular'
            FocusControl = DBEdit27
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 0
            Top = 46
            Width = 269
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CLIEA60ENDRES'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 0
            Top = 83
            Width = 269
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CLIEA60BAIRES'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 0
            Top = 120
            Width = 269
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CLIEA60CIDRES'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 0
            Top = 158
            Width = 133
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CLIEA8CEPRES'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit6: TDBEdit
            Left = 139
            Top = 158
            Width = 32
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CLIEA2UFRES'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit7: TDBEdit
            Left = 0
            Top = 196
            Width = 133
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CLIEA15FONE1'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit8: TDBEdit
            Left = 135
            Top = 196
            Width = 134
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CLIEA15FONE2'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit10: TDBEdit
            Left = 0
            Top = 232
            Width = 269
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CLIEA60EMAIL'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
          end
          object DBMemo1: TDBMemo
            Left = 0
            Top = 271
            Width = 269
            Height = 39
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = 'CLIETOBS1'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object BtnGravarTitular: TBitBtn
            Left = 55
            Top = 315
            Width = 75
            Height = 25
            Caption = '&Gravar'
            ModalResult = 6
            TabOrder = 9
            OnClick = BtnGravarTitularClick
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
          object BtnCancelTitular: TBitBtn
            Left = 129
            Top = 315
            Width = 75
            Height = 25
            Caption = '&Cancelar'
            TabOrder = 10
            OnClick = BtnCancelTitularClick
            Kind = bkCancel
          end
          object DBEdit27: TDBEdit
            Left = 0
            Top = 12
            Width = 269
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = 15461355
            Ctl3D = False
            DataField = 'CLIEA60RAZAOSOC'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
        end
        object TabSheet1: TTabSheet
          Caption = '&3 Dependente'
          ImageIndex = 2
          object Label16: TLabel
            Left = 1
            Top = 71
            Width = 111
            Height = 13
            Caption = 'Grau de Parentesco'
            FocusControl = DBEdit3
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 130
            Top = 108
            Width = 37
            Height = 13
            Caption = 'Fone 1'
            FocusControl = DBEdit12
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 1
            Top = 108
            Width = 66
            Height = 13
            Caption = 'Nascimento'
            FocusControl = DBEdit13
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 128
            Top = 145
            Width = 62
            Height = 13
            Caption = 'Identidade'
            FocusControl = DBEdit14
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 1
            Top = 145
            Width = 20
            Height = 13
            Caption = 'CPF'
            FocusControl = DBEdit15
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 1
            Top = 180
            Width = 35
            Height = 13
            Caption = 'E-mail'
            FocusControl = DBEdit11
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BtnRegistroAnterior: TSpeedButton
            Tag = 1
            Left = 216
            Top = 72
            Width = 26
            Height = 25
            Hint = 'Registro Anterior'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              8E060000424D8E06000000000000360400002800000018000000190000000100
              08000000000058020000130B0000130B0000000100000001000000000000C3D7
              C600E2EBE400FFFFFF00DDE8DF00F3F7F300D9E6DC00F1F6F200EEF3EF00F0F5
              F100F4F7F400121B1200DCE7DE00EDF3EE00EAF1EB00ACC7B100E8EFE900D5E3
              D700213224003059370049815400689B720076A7800073A47D0077A881007AAA
              83007DAC87005C9267004A6F5100447C4E006A9C730079A9840078A881006498
              70003F764900679A7100568C60003C70460063A76F0051885B002E58360000D8
              3C0000D83C0000D83C0000D83C0000D83C0000D83C0000D83C0000D83C0000D8
              3C0000D83C0000D83C0000D83C0000D83C0000D83C0000D83C0000D83C0000D8
              3C0000D83C0000D83C0000D83C0000D83C0000D83C0000D83C00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000292929292929
              2929292929292929292929292929292929292929292929292929292929292929
              2929292929292929292929292929292929292929292929292929292929292929
              2929292929292929292929292929292929292929292929292929292929292929
              2929292929292929292929292929292929292929292929292929292929292929
              2929292929292929292929292929292929292929292929292929000029292929
              2929292929292929292929292929292900002800292929292929292929292929
              292929292929000025262700292929292929292929292929292929290000221D
              2316240029292929292929292929292929290000131D2118161A1B0029292929
              292929292929292900001C1D1E1F16201A191B00292929292929292929290000
              131415161718191A191A1B002929292929292929292900000F0310110C020E08
              08080112292929292929292929292929000B0C030D0E0E080808010029292929
              29292929292929292929000006030708090A0100292929292929292929292929
              2929292900000403050501002929292929292929292929292929292929290000
              0203010029292929292929292929292929292929292929290000010029292929
              2929292929292929292929292929292929290000292929292929292929292929
              2929292929292929292929292929292929292929292929292929292929292929
              2929292929292929292929292929292929292929292929292929292929292929
              2929292929292929292929292929292929292929292929292929292929292929
              292929292929292929292929292929292929}
            Margin = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Spacing = 1
            OnClick = BtnRegistroAnteriorClick
          end
          object BtnProximoRegistro: TSpeedButton
            Tag = 2
            Left = 242
            Top = 72
            Width = 26
            Height = 25
            Cursor = crHandPoint
            Hint = 'Pr'#243'ximo Registro'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000130B0000130B0000000100000001000000000000DFEA
              E100FFFFFF00EFF4F000D1E0D400F3F7F300EBF2ED00CBDCCE00F4F7F400F0F5
              F100EEF3EF00EAF1EB00C5D8C900E3ECE500C7DACB00181818002B2B2B00E2EB
              E400DCE7DE00D5E3D700EDF3EE00ACC7B10090BB9D0080AC88007CAA830079A8
              850076A47E0078A784006C9B75004F81590034593A008FBB9A007AAA83007DAC
              87007BA882007CA986006D9C7500497C53004058440076A78000689874004070
              4B0087B390006B9A7400315E3B0054855D002F59370034653F0000D83C0000D8
              3C0000D83C0000D83C0000D83C0000D83C0000D83C0000D83C0000D83C0000D8
              3C0000D83C0000D83C0000D83C0000D83C0000D83C0000D83C00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000303030303030
              3030303030303030303030303030303030303030303030303030303030303030
              3030303030303030303030303030303030303030303030303030303030303030
              3030303030303030303030303030303030303030303030303030303030303030
              3030303030303030303030303030303030303030303030300000303030303030
              30303030303030303030303030303030002F0000303030303030303030303030
              303030303030303000182D2E0000303030303030303030303030303030303030
              002A272B252C000030303030303030303030303030303030001F212719282529
              00003030303030303030303030303030001F2021221B23242526000030303030
              3030303030303030001617181718191A1B1C1D1E000030303030303030303030
              10020A0A0A0B11121312141500003030303030303030303000020A0A0A0B0B0D
              030E0F00303030303030303030303030000208090A0B090C0000303030303030
              3030303030303030000205060307000030303030303030303030303030303030
              0002030400003030303030303030303030303030303030300001000030303030
              3030303030303030303030303030303000003030303030303030303030303030
              3030303030303030303030303030303030303030303030303030303030303030
              3030303030303030303030303030303030303030303030303030303030303030
              3030303030303030303030303030303030303030303030303030303030303030
              3030303030303030303030303030303030303030303030303030}
            Margin = 0
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Spacing = 1
            OnClick = BtnProximoRegistroClick
          end
          object Label11: TLabel
            Left = 0
            Top = 35
            Width = 69
            Height = 13
            Caption = 'Dependente'
            FocusControl = DBEdit9
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 2
            Top = -2
            Width = 37
            Height = 13
            Caption = 'Titular'
            FocusControl = DBEdit28
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 3
            Top = 218
            Width = 126
            Height = 13
            Caption = 'Status do Dependente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit3: TDBEdit
            Left = 1
            Top = 85
            Width = 207
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = 15461355
            Ctl3D = False
            DataField = 'CLDPA15PARENTESCO'
            DataSource = DSSQLDependente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit12: TDBEdit
            Left = 128
            Top = 122
            Width = 139
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CLDPA15FONE'
            DataSource = DSSQLDependente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit13: TDBEdit
            Left = 1
            Top = 122
            Width = 72
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = 15461355
            Ctl3D = False
            DataField = 'CLDPDNASC'
            DataSource = DSSQLDependente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit14: TDBEdit
            Left = 128
            Top = 159
            Width = 141
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = 15461355
            Ctl3D = False
            DataField = 'CLDPA10RG'
            DataSource = DSSQLDependente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit15: TDBEdit
            Left = 1
            Top = 159
            Width = 125
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = 15461355
            Ctl3D = False
            DataField = 'CLDPA11CPF'
            DataSource = DSSQLDependente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit11: TDBEdit
            Left = 1
            Top = 194
            Width = 269
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = 15461355
            Ctl3D = False
            DataField = 'CLDPA60EMAIL'
            DataSource = DSSQLDependente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object BtnGravarDependente: TBitBtn
            Left = 61
            Top = 262
            Width = 75
            Height = 25
            Caption = '&Gravar'
            ModalResult = 6
            TabOrder = 6
            OnClick = BtnGravarDependenteClick
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
          object BtnCancelDependente: TBitBtn
            Left = 135
            Top = 262
            Width = 75
            Height = 25
            Caption = '&Cancelar'
            TabOrder = 7
            OnClick = BtnCancelDependenteClick
            Kind = bkCancel
          end
          object DBEdit9: TDBEdit
            Left = 0
            Top = 49
            Width = 269
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = 15461355
            Ctl3D = False
            DataField = 'CLDPA60NOME'
            DataSource = DSSQLDependente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit28: TDBEdit
            Left = 0
            Top = 12
            Width = 269
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = 15461355
            Ctl3D = False
            DataField = 'CLIEA60RAZAOSOC'
            DataSource = DSSQLCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object ComboDependenteAutorizado: TRxDBComboBox
            Left = 2
            Top = 232
            Width = 263
            Height = 21
            Style = csDropDownList
            Color = 15461355
            Ctl3D = False
            DataField = 'CLDPCAUTORIZADO'
            DataSource = DSSQLDependente
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'Autorizado'
              'Bloqueado')
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 10
            TabStop = False
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 54
        Width = 738
        Height = 430
        Align = alClient
        BevelInner = bvSpace
        BevelOuter = bvSpace
        BorderWidth = 3
        Color = 12572888
        TabOrder = 1
        object GridAgendamento: TRxDBGrid
          Left = 5
          Top = 5
          Width = 728
          Height = 249
          Align = alClient
          Color = clWhite
          DataSource = DSSQLAgendamento
          FixedColor = 10053171
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawDataCell = GridAgendamentoDrawDataCell
          OnKeyDown = GridAgendamentoKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'AGENDMARCACAO'
              Title.Caption = 'Marca'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DiaMarcacao'
              Title.Caption = 'Dia'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PacienteAgendado'
              Title.Caption = 'Nome do Paciente'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 273
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Profissional'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 134
              Visible = True
            end>
        end
        object GroupBox11: TGroupBox
          Left = 5
          Top = 254
          Width = 728
          Height = 171
          Align = alBottom
          Caption = ' Dados da Consulta '
          Color = 16249066
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object Label24: TLabel
            Left = 8
            Top = 44
            Width = 69
            Height = 13
            Caption = 'Dependente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 331
            Top = 44
            Width = 60
            Height = 13
            Caption = 'Atendente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 209
            Top = 78
            Width = 67
            Height = 13
            Caption = 'Vlr.Consulta'
            FocusControl = DBEdit16
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 281
            Top = 78
            Width = 51
            Height = 13
            Caption = 'Vlr.Pagto'
            FocusControl = DBEdit17
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 352
            Top = 78
            Width = 63
            Height = 13
            Caption = 'Data Pagto'
            FocusControl = DBEdit20
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 333
            Top = 10
            Width = 37
            Height = 13
            Caption = 'Status'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 10
            Top = 112
            Width = 73
            Height = 13
            Caption = 'Observa'#231#245'es'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 420
            Top = 78
            Width = 60
            Height = 13
            Caption = 'Nro.Recibo'
            FocusControl = DBEdit22
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 8
            Top = 12
            Width = 37
            Height = 13
            Caption = 'Titular'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label48: TLabel
            Left = 8
            Top = 78
            Width = 157
            Height = 13
            Caption = 'Motivo de N'#227'o Atendimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit18: TDBEdit
            Left = 6
            Top = 58
            Width = 321
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = 'DependenteNome'
            DataSource = DSSQLAgendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit19: TDBEdit
            Left = 331
            Top = 58
            Width = 157
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = 'Atendente'
            DataSource = DSSQLAgendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit16: TDBEdit
            Left = 207
            Top = 92
            Width = 70
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = 'AGENN3VLRCONSULTA'
            DataSource = DSSQLAgendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit17: TDBEdit
            Left = 279
            Top = 92
            Width = 69
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = 'AGENN3VLRPAGO'
            DataSource = DSSQLAgendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit20: TDBEdit
            Left = 350
            Top = 92
            Width = 66
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = 'AGENDPAGO'
            DataSource = DSSQLAgendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object ComboStatus: TRxDBComboBox
            Left = 331
            Top = 24
            Width = 159
            Height = 21
            Style = csDropDownList
            Color = 15461355
            Ctl3D = False
            DataField = 'AGENCSTATUS'
            DataSource = DSSQLAgendamento
            EnableValues = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            Items.Strings = (
              '0 - *** LIVRE ***'
              '1 - Simples (Agendamento)'
              '2 - Dupla    (Agendamento)'
              '3 - Tripla    (Agendamento)'
              '4 - Simples (Atendido)'
              '5 - Dupla    (Atendido)'
              '6 - Tripla    (Atendido)'
              '7 - Simples (N'#227'o Atendido)'
              '8 - Dupla    (N'#227'o Atendido)'
              '9 - Tripla    (N'#227'o Atendido)'
              'F - Agenda Fechada')
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
            TabStop = False
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              'F')
          end
          object DBMemo2: TDBMemo
            Left = 6
            Top = 125
            Width = 485
            Height = 35
            Color = 15461355
            Ctl3D = False
            DataField = 'AGENA254OBS'
            DataSource = DSSQLAgendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit22: TDBEdit
            Left = 418
            Top = 92
            Width = 71
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = 'AGENINRORECIBO'
            DataSource = DSSQLAgendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit23: TDBEdit
            Left = 6
            Top = 25
            Width = 321
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = 'ClienteNome'
            DataSource = DSSQLAgendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit31: TDBEdit
            Left = 6
            Top = 92
            Width = 198
            Height = 19
            TabStop = False
            Color = 15461355
            Ctl3D = False
            DataField = 'MotivoNAtendDescr'
            DataSource = DSSQLAgendamento
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 1017
      Height = 61
      inherited PanelCabecalho: TPanel
        Width = 1017
        Height = 60
        inherited PanelNavigator: TPanel
          Top = 28
          Width = 1017
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 1017
            inherited BtnFecharTela: TSpeedButton
              Left = 922
              Top = 2
              Height = 27
            end
            object BtnSimples: TSpeedButton
              Tag = 3
              Left = 4
              Top = 2
              Width = 89
              Height = 27
              Cursor = crHandPoint
              Hint = 'Marcar Consulta Simples'
              Caption = '&Simples'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = BtnSimplesClick
            end
            object BtnDupla: TSpeedButton
              Tag = 3
              Left = 96
              Top = 2
              Width = 89
              Height = 27
              Cursor = crHandPoint
              Hint = 'Marcar Consulta Dupla'
              Caption = 'D&upla'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = BtnDuplaClick
            end
            object BtnTripla: TSpeedButton
              Tag = 3
              Left = 188
              Top = 2
              Width = 89
              Height = 27
              Cursor = crHandPoint
              Hint = 'Marcar Consulta Tripla'
              Caption = '&Tripla'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = BtnTriplaClick
            end
            object BtnAtendimento: TSpeedButton
              Tag = 3
              Left = 280
              Top = 2
              Width = 89
              Height = 27
              Cursor = crHandPoint
              Hint = 'Marcar com atendido....'
              Caption = '&Atendido'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = BtnAtendimentoClick
            end
            object BtNaoAtendido: TSpeedButton
              Tag = 3
              Left = 372
              Top = 2
              Width = 89
              Height = 27
              Cursor = crHandPoint
              Hint = 'Marcar com n'#227'o atendido....'
              Caption = '&N'#227'o Atendido'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = BtNaoAtendidoClick
            end
            object LabelDiversos: TRxSpeedButton
              Left = 483
              Top = 3
              Width = 72
              Height = 25
              Cursor = crHandPoint
              DropDownMenu = MenuDiversos
              Caption = '&Diversos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
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
          end
        end
      end
    end
  end
  object DSSQLAgendamento: TDataSource
    DataSet = SQLAgendamento
    Left = 326
    Top = 238
  end
  object TblCliente: TTable
    DatabaseName = 'DB'
    TableName = 'CLIENTE'
    Left = 354
    Top = 267
    object TblClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object TblClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblClienteCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblClienteCLIEA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblClienteCLIEA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object TblClienteCLIEA60ENDRES: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA60BAIRES: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object TblClienteCLIEA8CEPRES: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object TblClienteCLIEA60EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA60EMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object TblClienteCLIEA15FONEEMPRESA: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object TblClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
    end
    object TblClienteCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object TblClienteCLIEA10CODANT: TStringField
      DisplayLabel = 'C'#243'd.Antigo'
      FieldName = 'CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
    object TblClienteCLIETOBS1: TBlobField
      FieldName = 'CLIETOBS1'
      Size = 1
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from Cliente'
      'Where'
      '(%Valor)'
      'Order By CLIEA60RAZAOSOC')
    Macros = <
      item
        DataType = ftString
        Name = 'Valor'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 454
    Top = 2
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DBGESTAO.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DBGESTAO.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DBGESTAO.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DBGESTAO.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FAX: TStringField
      FieldName = 'CLIEA15FAX'
      Origin = 'DBGESTAO.CLIENTE.CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DBGESTAO.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DBGESTAO.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
      Origin = 'DBGESTAO.CLIENTE.CLIEDNASC'
    end
    object SQLClienteCLIEA60EMPRESA: TStringField
      FieldName = 'CLIEA60EMPRESA'
      Origin = 'DBGESTAO.CLIENTE.CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      Origin = 'DBGESTAO.CLIENTE.CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object SQLClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DBGESTAO.CLIENTE.MTBLICOD'
    end
    object SQLClienteCLIEA10CODANT: TStringField
      FieldName = 'CLIEA10CODANT'
      Origin = 'DBGESTAO.CLIENTE.CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
    object SQLClienteMotivoBloqueioDescr: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'MotivoBloqueioDescr'
      LookupDataSet = TblMotivoBloqueio
      LookupKeyFields = 'MTBLICOD'
      LookupResultField = 'MTBLA60DESCR'
      KeyFields = 'MTBLICOD'
      Size = 60
      Lookup = True
    end
    object SQLClienteCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIETOBS1: TBlobField
      FieldName = 'CLIETOBS1'
      Origin = 'DB.CLIENTE.CLIETOBS1'
      Size = 1
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 426
    Top = 2
  end
  object TblMotivoBloqueio: TTable
    DatabaseName = 'DB'
    TableName = 'MOTIVOBLOQUEIO'
    Left = 482
    Top = 2
    object TblMotivoBloqueioMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Required = True
    end
    object TblMotivoBloqueioMTBLA60DESCR: TStringField
      FieldName = 'MTBLA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLDependente: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLCliente
    RequestLive = True
    SQL.Strings = (
      'Select * from ClienteDependente where CLIEA13ID = :CLIEA13ID')
    Macros = <>
    Left = 554
    Top = 2
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLDependenteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDependenteCLDPICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Dependente'
      FieldName = 'CLDPICOD'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLDPICOD'
    end
    object SQLDependenteCLDPA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLDPA60NOME'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLDPA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLDependenteCLDPA15PARENTESCO: TStringField
      DisplayLabel = 'Grau de Parentesco'
      FieldName = 'CLDPA15PARENTESCO'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLDPA15PARENTESCO'
      FixedChar = True
      Size = 15
    end
    object SQLDependenteCLDPCAUTORIZADO: TStringField
      DisplayLabel = 'Autorizado'
      FieldName = 'CLDPCAUTORIZADO'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLDPCAUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object SQLDependenteCLDPA15FONE: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLDPA15FONE'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLDPA15FONE'
      FixedChar = True
      Size = 15
    end
    object SQLDependenteCLDPA60EMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'CLDPA60EMAIL'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLDPA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLDependenteCLDPDNASC: TDateTimeField
      DisplayLabel = 'Dt.Nascimento'
      FieldName = 'CLDPDNASC'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLDPDNASC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLDependenteCLDPA10RG: TStringField
      DisplayLabel = 'Identidade'
      FieldName = 'CLDPA10RG'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLDPA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLDependenteCLDPA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLDPA11CPF'
      Origin = 'DBGESTAO.CLIENTEDEPENDENTE.CLDPA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLDependenteIdade: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Idade'
      Calculated = True
    end
  end
  object DSSQLDependente: TDataSource
    DataSet = SQLDependente
    Left = 526
    Top = 2
  end
  object SQLAtendente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Usuario')
    Macros = <>
    Left = 626
    Top = 2
    object SQLAtendenteUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object SQLAtendenteUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLAtendente: TDataSource
    DataSet = SQLAtendente
    Left = 598
    Top = 2
  end
  object SQLEspecialidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Especialidade'
      'Order by ESPEA60DESCR')
    Macros = <>
    Left = 325
    Top = 2
    object SQLEspecialidadeESPEICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Especialidade'
      FieldName = 'ESPEICOD'
      Origin = 'DB.ESPECIALIDADE.ESPEICOD'
    end
    object SQLEspecialidadeESPEA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ESPEA60DESCR'
      Origin = 'DB.ESPECIALIDADE.ESPEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLEspecialidadeESPEN3VLRCONSULTA: TFloatField
      DisplayLabel = 'Valor Consulta'
      FieldName = 'ESPEN3VLRCONSULTA'
      Origin = 'DB.ESPECIALIDADE.ESPEN3VLRCONSULTA'
      DisplayFormat = '#,###.00'
    end
  end
  object DSSQLEspecialidade: TDataSource
    DataSet = SQLEspecialidade
    Left = 297
    Top = 2
  end
  object DSSQLAgendamentoConsulta: TDataSource
    DataSet = SQLAgendamentoConsulta
    Left = 597
    Top = 462
  end
  object SQLAgendamentoConsulta: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLCliente
    SQL.Strings = (
      'Select * from AGENDACONSULTA'
      'Where'
      '(%Cliente) and'
      '(%Dependente) and'
      '(%DataBase) and'
      '(%Status)'
      'order by %Ordem')
    Macros = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Dependente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataBase'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Status'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Ordem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 625
    Top = 462
    object SQLAgendamentoConsultaAGENICOD: TIntegerField
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDACONSULTA.AGENICOD'
    end
    object SQLAgendamentoConsultaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.AGENDACONSULTA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAgendamentoConsultaCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.AGENDACONSULTA.CLDPICOD'
    end
    object SQLAgendamentoConsultaPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.AGENDACONSULTA.PROFICOD'
    end
    object SQLAgendamentoConsultaAGENDMARCACAO: TDateTimeField
      FieldName = 'AGENDMARCACAO'
      Origin = 'DB.AGENDACONSULTA.AGENDMARCACAO'
    end
    object SQLAgendamentoConsultaAGENCSTATUS: TStringField
      FieldName = 'AGENCSTATUS'
      Origin = 'DB.AGENDACONSULTA.AGENCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLAgendamentoConsultaAGENINRORECIBO: TIntegerField
      FieldName = 'AGENINRORECIBO'
      Origin = 'DB.AGENDACONSULTA.AGENINRORECIBO'
    end
    object SQLAgendamentoConsultaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.AGENDACONSULTA.USUAICOD'
    end
    object SQLAgendamentoConsultaESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.AGENDACONSULTA.ESPEICOD'
    end
    object SQLAgendamentoConsultaAGENA254OBS: TStringField
      FieldName = 'AGENA254OBS'
      Origin = 'DB.AGENDACONSULTA.AGENA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLAgendamentoConsultaAGENICODAGRUP: TIntegerField
      FieldName = 'AGENICODAGRUP'
      Origin = 'DB.AGENDACONSULTA.AGENICODAGRUP'
    end
    object SQLAgendamentoConsultaAGENDDIGIT: TDateTimeField
      FieldName = 'AGENDDIGIT'
      Origin = 'DB.AGENDACONSULTA.AGENDDIGIT'
    end
    object SQLAgendamentoConsultaAGENN3VLRCONSULTA: TFloatField
      FieldName = 'AGENN3VLRCONSULTA'
      Origin = 'DB.AGENDACONSULTA.AGENN3VLRCONSULTA'
    end
    object SQLAgendamentoConsultaAGENN3VLRPAGO: TFloatField
      FieldName = 'AGENN3VLRPAGO'
      Origin = 'DB.AGENDACONSULTA.AGENN3VLRPAGO'
    end
    object SQLAgendamentoConsultaAGENDPAGO: TDateTimeField
      FieldName = 'AGENDPAGO'
      Origin = 'DB.AGENDACONSULTA.AGENDPAGO'
    end
    object SQLAgendamentoConsultaAGENIUSUATEND: TIntegerField
      FieldName = 'AGENIUSUATEND'
      Origin = 'DB.AGENDACONSULTA.AGENIUSUATEND'
    end
    object SQLAgendamentoConsultaAGENIQTDE: TIntegerField
      FieldName = 'AGENIQTDE'
      Origin = 'DB.AGENDACONSULTA.AGENIQTDE'
    end
    object SQLAgendamentoConsultaMONAICOD: TIntegerField
      FieldName = 'MONAICOD'
      Origin = 'DB.AGENDACONSULTA.MONAICOD'
    end
    object SQLAgendamentoConsultaProfissional: TStringField
      FieldKind = fkLookup
      FieldName = 'Profissional'
      LookupDataSet = TblProfissional
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'PROFICOD'
      Size = 30
      Lookup = True
    end
    object SQLAgendamentoConsultaClienteNome: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = TblCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 30
      Lookup = True
    end
    object SQLAgendamentoConsultaDependenteNome: TStringField
      DisplayLabel = 'Dependente'
      FieldKind = fkLookup
      FieldName = 'DependenteNome'
      LookupDataSet = TblClienteDependente
      LookupKeyFields = 'CLIEA13ID;CLDPICOD'
      LookupResultField = 'CLDPA60NOME'
      KeyFields = 'CLIEA13ID;CLDPICOD'
      Size = 30
      Lookup = True
    end
  end
  object TblClienteDependente: TTable
    DatabaseName = 'DB'
    TableName = 'CLIENTEDEPENDENTE'
    Left = 382
    Top = 267
    object TblClienteDependenteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object TblClienteDependenteCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Required = True
    end
    object TblClienteDependenteCLDPA60NOME: TStringField
      FieldName = 'CLDPA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblClienteDependenteCLDPA15PARENTESCO: TStringField
      FieldName = 'CLDPA15PARENTESCO'
      FixedChar = True
      Size = 15
    end
    object TblClienteDependenteCLDPCAUTORIZADO: TStringField
      FieldName = 'CLDPCAUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object TblClienteDependenteCLDPDNASC: TDateTimeField
      FieldName = 'CLDPDNASC'
    end
    object TblClienteDependenteCLDPA10RG: TStringField
      FieldName = 'CLDPA10RG'
      FixedChar = True
      Size = 10
    end
    object TblClienteDependenteCLDPA11CPF: TStringField
      FieldName = 'CLDPA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblClienteDependentePENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblClienteDependenteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object TblClienteDependenteCLDPA15FONE: TStringField
      FieldName = 'CLDPA15FONE'
      FixedChar = True
      Size = 15
    end
    object TblClienteDependenteCLDPA60EMAIL: TStringField
      FieldName = 'CLDPA60EMAIL'
      FixedChar = True
      Size = 60
    end
  end
  object TblAtendente: TTable
    DatabaseName = 'DB'
    TableName = 'USUARIO'
    Left = 382
    Top = 295
    object TblAtendenteUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Required = True
    end
    object TblAtendenteUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object TblProfissional: TTable
    DatabaseName = 'DB'
    TableName = 'VENDEDOR'
    Left = 354
    Top = 295
    object TblProfissionalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Required = True
    end
    object TblProfissionalVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblProfissionalESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
    end
  end
  object SQLProfissional: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Vendedor'
      'Where ESPEICOD = :Especialidade'
      'Order by VENDA60NOME')
    Macros = <>
    Left = 384
    Top = 2
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Especialidade'
        ParamType = ptUnknown
      end>
    object SQLProfissionalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLProfissionalVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLProfissionalESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.VENDEDOR.ESPEICOD'
    end
  end
  object DSSQLProfissional: TDataSource
    DataSet = SQLProfissional
    Left = 356
    Top = 2
  end
  object SQLAgendamento: TRxQuery
    OnCalcFields = SQLAgendamentoCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select'
      '*'
      'from'
      'AGENDACONSULTA'
      'where'
      'AGENCSTATUS <> '#39'7'#39' and'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Cliente) and'
      '(%Data)'
      ''
      'order by AGENDACONSULTA.AGENDMARCACAO')
    Macros = <
      item
        DataType = ftString
        Name = 'Especialidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Profissional'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 354
    Top = 238
    object SQLAgendamentoAGENICOD: TIntegerField
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDAMENTO.AGENICOD'
    end
    object SQLAgendamentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.AGENDAMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAgendamentoCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.AGENDAMENTO.CLDPICOD'
    end
    object SQLAgendamentoPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.AGENDAMENTO.PROFICOD'
    end
    object SQLAgendamentoAGENDMARCACAO: TDateTimeField
      DisplayLabel = 'Dt.Marca'#231#227'o'
      FieldName = 'AGENDMARCACAO'
      Origin = 'DB.AGENDAMENTO.AGENDMARCACAO'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object SQLAgendamentoAGENCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'AGENCSTATUS'
      Origin = 'DB.AGENDAMENTO.AGENCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLAgendamentoAGENINRORECIBO: TIntegerField
      DisplayLabel = 'Nro.Recibo'
      FieldName = 'AGENINRORECIBO'
      Origin = 'DB.AGENDAMENTO.AGENINRORECIBO'
    end
    object SQLAgendamentoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.AGENDAMENTO.USUAICOD'
    end
    object SQLAgendamentoESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.AGENDAMENTO.ESPEICOD'
    end
    object SQLAgendamentoAGENA254OBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'AGENA254OBS'
      Origin = 'DB.AGENDAMENTO.AGENA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLAgendamentoAGENDDIGIT: TDateTimeField
      DisplayLabel = 'Dt.Digita'#231#227'o'
      FieldName = 'AGENDDIGIT'
      Origin = 'DB.AGENDAMENTO.AGENDDIGIT'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLAgendamentoAGENICODAGRUP: TIntegerField
      DisplayLabel = 'C'#243'd.Agrup'
      FieldName = 'AGENICODAGRUP'
      Origin = 'DB.AGENDAMENTO.AGENICODAGRUP'
    end
    object SQLAgendamentoProfissional: TStringField
      FieldKind = fkLookup
      FieldName = 'Profissional'
      LookupDataSet = TblProfissional
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'PROFICOD'
      Size = 30
      Lookup = True
    end
    object SQLAgendamentoAtendente: TStringField
      FieldKind = fkLookup
      FieldName = 'Atendente'
      LookupDataSet = SQLAtendente
      LookupKeyFields = 'USUAICOD'
      LookupResultField = 'USUAA60LOGIN'
      KeyFields = 'USUAICOD'
      Size = 30
      Lookup = True
    end
    object SQLAgendamentoClienteNome: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = TblCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 30
      Lookup = True
    end
    object SQLAgendamentoDependenteNome: TStringField
      DisplayLabel = 'Dependente'
      FieldKind = fkLookup
      FieldName = 'DependenteNome'
      LookupDataSet = TblClienteDependente
      LookupKeyFields = 'CLIEA13ID;CLDPICOD'
      LookupResultField = 'CLDPA60NOME'
      KeyFields = 'CLIEA13ID;CLDPICOD'
      Size = 30
      Lookup = True
    end
    object SQLAgendamentoAGENN3VLRCONSULTA: TFloatField
      DisplayLabel = 'Vlr.Consulta'
      FieldName = 'AGENN3VLRCONSULTA'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRCONSULTA'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object SQLAgendamentoAGENN3VLRPAGO: TFloatField
      DisplayLabel = 'Vlr.Pagto'
      FieldName = 'AGENN3VLRPAGO'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRPAGO'
      DisplayFormat = '##0.00'
    end
    object SQLAgendamentoAGENDPAGO: TDateTimeField
      DisplayLabel = 'Data Pagto'
      FieldName = 'AGENDPAGO'
      Origin = 'DB.AGENDAMENTO.AGENDPAGO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object SQLAgendamentoPacienteAgendado: TStringField
      DisplayLabel = 'Paciente Agendado'
      FieldKind = fkCalculated
      FieldName = 'PacienteAgendado'
      Size = 30
      Calculated = True
    end
    object SQLAgendamentoDiaMarcacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'DiaMarcacao'
      Size = 3
      Calculated = True
    end
    object SQLAgendamentoAGENIUSUATEND: TIntegerField
      FieldName = 'AGENIUSUATEND'
      Origin = 'DB.AGENDAMENTO.AGENIUSUATEND'
    end
    object SQLAgendamentoEspecialidade: TStringField
      FieldKind = fkLookup
      FieldName = 'Especialidade'
      LookupDataSet = TblEspecialidade
      LookupKeyFields = 'ESPEICOD'
      LookupResultField = 'ESPEA60DESCR'
      KeyFields = 'ESPEICOD'
      Size = 30
      Lookup = True
    end
    object SQLAgendamentoAGENIQTDE: TIntegerField
      FieldName = 'AGENIQTDE'
      Origin = 'DB.AGENDAMENTO.AGENIQTDE'
    end
    object SQLAgendamentoMONAICOD: TIntegerField
      FieldName = 'MONAICOD'
      Origin = 'DB.AGENDAMENTO.MONAICOD'
    end
    object SQLAgendamentoMotivoNAtendDescr: TStringField
      FieldKind = fkLookup
      FieldName = 'MotivoNAtendDescr'
      LookupDataSet = TblMotivoNaoAtendimento
      LookupKeyFields = 'MONAICOD'
      LookupResultField = 'MONAA60DESCR'
      KeyFields = 'MONAICOD'
      Size = 30
      Lookup = True
    end
  end
  object FormStorage: TFormStorage
    StoredProps.Strings = (
      'CKHorariosLivres.Checked')
    StoredValues = <>
    Left = 735
    Top = 2
  end
  object MenuDiversos: TPopupMenu
    Left = 546
    Top = 44
    object MnCancelaSimples: TMenuItem
      Caption = '&Cancelamento de Consulta com Recibo'
      OnClick = MnCancelaSimplesClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object GerarRecibo1: TMenuItem
      Caption = 'Gerar Recibo'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MnReimprimirRecibo: TMenuItem
      Caption = '&Reimprimir Recibo'
      OnClick = MnReimprimirReciboClick
    end
    object MnReimprimirReciboCancelamento: TMenuItem
      Caption = 'Reimprimir Recibo Cancelado'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ExtratodoPaciente1: TMenuItem
      Caption = 'Extrato do Paciente'
      OnClick = ExtratodoPaciente1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MnHistoricoPaciente: TMenuItem
      Caption = '&Hist'#243'rico do Paciente'
      OnClick = MnHistoricoPacienteClick
    end
  end
  object DSSQLMotivo: TDataSource
    Left = 663
    Top = 2
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DSSQLAgendamento
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'BDEPipeline1'
    Left = 4
    Top = 2
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'AGENICOD'
      FieldName = 'AGENICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'CLDPICOD'
      FieldName = 'CLDPICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'PROFICOD'
      FieldName = 'PROFICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'AGENDMARCACAO'
      FieldName = 'AGENDMARCACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'AGENCSTATUS'
      FieldName = 'AGENCSTATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'AGENINRORECIBO'
      FieldName = 'AGENINRORECIBO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField8: TppField
      FieldAlias = 'USUAICOD'
      FieldName = 'USUAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'ESPEICOD'
      FieldName = 'ESPEICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField10: TppField
      FieldAlias = 'AGENA254OBS'
      FieldName = 'AGENA254OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField11: TppField
      FieldAlias = 'AGENDDIGIT'
      FieldName = 'AGENDDIGIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField12: TppField
      FieldAlias = 'AGENICODAGRUP'
      FieldName = 'AGENICODAGRUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField13: TppField
      FieldAlias = 'Profissional'
      FieldName = 'Profissional'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField14: TppField
      FieldAlias = 'Atendente'
      FieldName = 'Atendente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField15: TppField
      FieldAlias = 'ClienteNome'
      FieldName = 'ClienteNome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField16: TppField
      FieldAlias = 'DependenteNome'
      FieldName = 'DependenteNome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField17: TppField
      FieldAlias = 'AGENN3VLRCONSULTA'
      FieldName = 'AGENN3VLRCONSULTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField18: TppField
      FieldAlias = 'AGENN3VLRPAGO'
      FieldName = 'AGENN3VLRPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField19: TppField
      FieldAlias = 'AGENDPAGO'
      FieldName = 'AGENDPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField20: TppField
      FieldAlias = 'PacienteAgendado'
      FieldName = 'PacienteAgendado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField21: TppField
      FieldAlias = 'DiaMarcacao'
      FieldName = 'DiaMarcacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField22: TppField
      FieldAlias = 'AGENIUSUATEND'
      FieldName = 'AGENIUSUATEND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField23: TppField
      FieldAlias = 'Especialidade'
      FieldName = 'Especialidade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField24: TppField
      FieldAlias = 'AGENIQTDE'
      FieldName = 'AGENIQTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField25: TppField
      FieldAlias = 'MONAICOD'
      FieldName = 'MONAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField26: TppField
      FieldAlias = 'MotivoNAtendDescr'
      FieldName = 'MotivoNAtendDescr'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
  end
  object ppRecibo: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Copies = 2
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 139
    BeforePrint = ppReciboBeforePrint
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    ModalCancelDialog = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 67
    Top = 2
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 110331
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CAIXA DE ASSISTENCIA DOS ADVOGADOS DO RIO GRANDE DO SUL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 1323
        mmWidth = 174890
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'R E C I B O     Nro.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 12435
        mmWidth = 50800
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGENINRORECIBO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '######000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 71702
        mmTop = 12435
        mmWidth = 35560
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGENN3VLRPAGO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '(R$)###0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 172773
        mmTop = 12435
        mmWidth = 28575
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recebemos de '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 19315
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteNome'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 41275
        mmTop = 19315
        mmWidth = 92075
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Doc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134144
        mmTop = 19315
        mmWidth = 10160
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteCodigoAntigo'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 146315
        mmTop = 19315
        mmWidth = 47625
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'a importancia supra de'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 24606
        mmWidth = 55880
        BandType = 4
      end
      object Extenso: TppLabel
        UserName = 'Extenso'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'EXTENSO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 72496
        mmTop = 24606
        mmWidth = 129382
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'refernte a  consulta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 29898
        mmWidth = 50800
        BandType = 4
      end
      object DataImpressao: TppLabel
        UserName = 'DataImpressao'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 117211
        mmTop = 39688
        mmWidth = 72761
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '______________________________________'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 100806
        mmTop = 50800
        mmWidth = 96573
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CONSULTA PARA DIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 63500
        mmWidth = 43127
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGENDMARCACAO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'dd/mm/yyyy hh:mm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 60854
        mmTop = 63500
        mmWidth = 40640
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'COM O DR(A).'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 69850
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Profissional'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 69850
        mmWidth = 150548
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '- CANCELAMENTO OU TRANSFERENCIA DE HORARIOS SOMENTE COM 24 HORAS' +
          ' DE ANTECEDENCIA.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 9260
        mmLeft = 15610
        mmTop = 80963
        mmWidth = 175155
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Atendente'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 41804
        mmTop = 54769
        mmWidth = 56092
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '- PARA FINS DE IMPOSTO DE RENDA declare que o pagamento foi feit' +
          'o a Caixa de Assistencia dos Advogados do Rio Grande do Sul. Rua' +
          ' dos Andradas, 1261 - 13'#186' Andar.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 9260
        mmLeft = 15610
        mmTop = 90488
        mmWidth = 175155
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CNPJ: 87.093.092/0001-80'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 6350
        mmWidth = 174890
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SETOR DE MARCA'#199#195'O DE CONSULTAS MEDICO E ODONTOLOGICOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 100013
        mmWidth = 175155
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label103'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '* * *  A T E N '#199' '#195' O  * * *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 76465
        mmWidth = 175155
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'FONES: (051) 3287-7426 / (051) 3287-7429 / (051) 3287-7471 / (05' +
          '1) 3287-7458'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 104511
        mmWidth = 175419
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DependenteNome'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 102394
        mmTop = 63500
        mmWidth = 100277
        BandType = 4
      end
      object ppLb12Andar: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '12'#186' Andar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 39688
        mmWidth = 22860
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Especialidade'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 4233
        mmLeft = 72761
        mmTop = 29898
        mmWidth = 25400
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label105'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Atendente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 54769
        mmWidth = 25400
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Setor Financeiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 100806
        mmTop = 54769
        mmWidth = 96573
        BandType = 4
      end
    end
  end
  object ppExtrato: TppReport
    AutoStop = False
    DataPipeline = PipeAgendamentoConsulta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 200000
    PrinterSetup.mmPaperWidth = 80000
    PrinterSetup.PaperSize = 139
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppExtratoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 625
    Top = 490
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeAgendamentoConsulta'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 36513
      mmPrintPosition = 0
      object ppLbEmpresa: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 1058
        mmWidth = 11007
        BandType = 1
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Consultas Agendadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 11377
        mmWidth = 27093
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TITULAR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 17727
        mmWidth = 12700
        BandType = 1
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteNome'
        DataPipeline = PipeAgendamentoConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendamentoConsulta'
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 21167
        mmWidth = 16140
        BandType = 1
      end
      object ppDependente: TppDBText
        UserName = 'Dependente'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DependenteNome'
        DataPipeline = PipeAgendamentoConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendamentoConsulta'
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 29104
        mmWidth = 22225
        BandType = 1
      end
      object ppLabel22: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DEPENDENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 25665
        mmWidth = 20638
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '--------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 32544
        mmWidth = 37253
        BandType = 1
      end
      object ppEmpresaFone: TppLabel
        UserName = 'EmpresaFone'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5821
        mmTop = 4498
        mmWidth = 6138
        BandType = 1
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGENDMARCACAO'
        DataPipeline = PipeAgendamentoConsulta
        DisplayFormat = 'dd/mm/yy hh:mm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'PipeAgendamentoConsulta'
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 3704
        mmWidth = 26723
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dr(a).'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Profissional'
        DataPipeline = PipeAgendamentoConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendamentoConsulta'
        mmHeight = 3175
        mmLeft = 15610
        mmTop = 265
        mmWidth = 14393
        BandType = 4
      end
      object ppStatus: TppLabel
        OnPrint = ppStatusPrint
        UserName = 'Status'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 7144
        mmWidth = 7938
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 3704
        mmWidth = 5927
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '--------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 10848
        mmWidth = 37306
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
    end
  end
  object TblEspecialidade: TTable
    DatabaseName = 'DB'
    TableName = 'ESPECIALIDADE'
    Left = 382
    Top = 323
    object TblEspecialidadeESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Required = True
    end
    object TblEspecialidadeESPEA60DESCR: TStringField
      FieldName = 'ESPEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblEspecialidadeESPEN3VLRCONSULTA: TFloatField
      FieldName = 'ESPEN3VLRCONSULTA'
    end
  end
  object SQLAgendamentoTodos: TRxQuery
    OnCalcFields = SQLAgendamentoCalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from AGENDACONSULTA'
      'where'
      'AGENCSTATUS <> '#39'7'#39' and'
      '(%Especialidade) and'
      '(%Profissional) and'
      '(%Data)'
      'order by AGENDMARCACAO')
    Macros = <
      item
        DataType = ftString
        Name = 'Especialidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Profissional'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 353
    Top = 183
    object SQLAgendamentoTodosAGENICOD: TIntegerField
      FieldName = 'AGENICOD'
      Origin = 'DB.AGENDAMENTO.AGENICOD'
    end
    object SQLAgendamentoTodosCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.AGENDAMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAgendamentoTodosCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.AGENDAMENTO.CLDPICOD'
    end
    object SQLAgendamentoTodosPROFICOD: TIntegerField
      FieldName = 'PROFICOD'
      Origin = 'DB.AGENDAMENTO.PROFICOD'
    end
    object SQLAgendamentoTodosAGENDMARCACAO: TDateTimeField
      FieldName = 'AGENDMARCACAO'
      Origin = 'DB.AGENDAMENTO.AGENDMARCACAO'
    end
    object SQLAgendamentoTodosAGENCSTATUS: TStringField
      FieldName = 'AGENCSTATUS'
      Origin = 'DB.AGENDAMENTO.AGENCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLAgendamentoTodosAGENINRORECIBO: TIntegerField
      FieldName = 'AGENINRORECIBO'
      Origin = 'DB.AGENDAMENTO.AGENINRORECIBO'
    end
    object SQLAgendamentoTodosUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.AGENDAMENTO.USUAICOD'
    end
    object SQLAgendamentoTodosESPEICOD: TIntegerField
      FieldName = 'ESPEICOD'
      Origin = 'DB.AGENDAMENTO.ESPEICOD'
    end
    object SQLAgendamentoTodosAGENA254OBS: TStringField
      FieldName = 'AGENA254OBS'
      Origin = 'DB.AGENDAMENTO.AGENA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLAgendamentoTodosAGENICODAGRUP: TIntegerField
      FieldName = 'AGENICODAGRUP'
      Origin = 'DB.AGENDAMENTO.AGENICODAGRUP'
    end
    object SQLAgendamentoTodosAGENDDIGIT: TDateTimeField
      FieldName = 'AGENDDIGIT'
      Origin = 'DB.AGENDAMENTO.AGENDDIGIT'
    end
    object SQLAgendamentoTodosAGENN3VLRCONSULTA: TFloatField
      FieldName = 'AGENN3VLRCONSULTA'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRCONSULTA'
    end
    object SQLAgendamentoTodosAGENN3VLRPAGO: TFloatField
      FieldName = 'AGENN3VLRPAGO'
      Origin = 'DB.AGENDAMENTO.AGENN3VLRPAGO'
    end
    object SQLAgendamentoTodosAGENDPAGO: TDateTimeField
      FieldName = 'AGENDPAGO'
      Origin = 'DB.AGENDAMENTO.AGENDPAGO'
    end
    object SQLAgendamentoTodosAGENIUSUATEND: TIntegerField
      FieldName = 'AGENIUSUATEND'
      Origin = 'DB.AGENDAMENTO.AGENIUSUATEND'
    end
    object SQLAgendamentoTodosAGENIQTDE: TIntegerField
      FieldName = 'AGENIQTDE'
      Origin = 'DB.AGENDAMENTO.AGENIQTDE'
    end
    object SQLAgendamentoTodosMONAICOD: TIntegerField
      FieldName = 'MONAICOD'
      Origin = 'DB.AGENDAMENTO.MONAICOD'
    end
  end
  object DSSQLAgendamentoTodos: TDataSource
    DataSet = SQLAgendamentoTodos
    Left = 325
    Top = 183
  end
  object SQLConvenios: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Convenio where (%filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 736
    Top = 32
    object SQLConveniosCONVICOD: TIntegerField
      FieldName = 'CONVICOD'
      Origin = 'DBGESTAO.CONVENIO.CONVICOD'
    end
    object SQLConveniosCONVA06SIGLA: TStringField
      FieldName = 'CONVA06SIGLA'
      Origin = 'DBGESTAO.CONVENIO.CONVA06SIGLA'
      FixedChar = True
      Size = 6
    end
    object SQLConveniosCONVA60DESCR: TStringField
      FieldName = 'CONVA60DESCR'
      Origin = 'DBGESTAO.CONVENIO.CONVA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLConveniosCONVICONSULTALIVRE: TIntegerField
      FieldName = 'CONVICONSULTALIVRE'
      Origin = 'DBGESTAO.CONVENIO.CONVICONSULTALIVRE'
    end
  end
  object SQLMotivoNaoAtendimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from MotivoNaoAtend'
      'Order by MONAA60DESCR')
    Macros = <>
    Left = 664
    Top = 32
    object SQLMotivoNaoAtendimentoMONAICOD: TIntegerField
      FieldName = 'MONAICOD'
      Origin = 'DB.MOTIVONAOATEND.MONAICOD'
    end
    object SQLMotivoNaoAtendimentoMONAA60DESCR: TStringField
      FieldName = 'MONAA60DESCR'
      Origin = 'DB.MOTIVONAOATEND.MONAA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLMotivoNaoAtend: TDataSource
    DataSet = SQLMotivoNaoAtendimento
    Left = 636
    Top = 32
  end
  object TblMotivoNaoAtendimento: TTable
    DatabaseName = 'DB'
    TableName = 'MOTIVONAOATEND'
    Left = 411
    Top = 323
    object TblMotivoNaoAtendimentoMONAICOD: TIntegerField
      FieldName = 'MONAICOD'
      Required = True
    end
    object TblMotivoNaoAtendimentoMONAA60DESCR: TStringField
      FieldName = 'MONAA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object ppLembreteMarcacao: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 200000
    PrinterSetup.mmPaperWidth = 130000
    PrinterSetup.PaperSize = 139
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 136
    Top = 2
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppTitleBandLembrete: TppTitleBand
      BeforePrint = ppTitleBandLembreteBeforePrint
      mmBottomOffset = 0
      mmHeight = 44186
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGENDMARCACAO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = 'dd/mm/yyyy hh:mm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 32808
        mmTop = 23548
        mmWidth = 26670
        BandType = 1
      end
      object ppDBText33: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Profissional'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 29104
        mmWidth = 14393
        BandType = 1
      end
      object ppLabel70: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '--------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 33338
        mmWidth = 37253
        BandType = 1
      end
      object ppEmpresaNomeLembrete: TppLabel
        UserName = 'EmpresaNomeLembrete'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 5292
        mmWidth = 11007
        BandType = 1
      end
      object ppLabel79: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pr'#243'xima Consulta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 23548
        mmWidth = 22490
        BandType = 1
      end
      object ppFoneEmpresaLembrete: TppLabel
        UserName = 'LBEmpresa1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 8731
        mmWidth = 6085
        BandType = 1
      end
      object ppDBTextAss: TppDBText
        UserName = 'DBTextAss'
        CharWrap = True
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteNome'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 20638
        mmWidth = 16140
        BandType = 1
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 17198
        mmWidth = 9260
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '--------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 12171
        mmWidth = 37253
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 7673
        mmTop = 40746
        mmWidth = 847
        BandType = 1
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object PipeAgendamentoConsulta: TppBDEPipeline
    DataSource = DSSQLAgendamentoConsulta
    UserName = 'PipeAgendamentoConsulta'
    Left = 597
    Top = 490
    object PipeAgendamentoConsultappField1: TppField
      FieldAlias = 'AGENICOD'
      FieldName = 'AGENICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField2: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField3: TppField
      FieldAlias = 'CLDPICOD'
      FieldName = 'CLDPICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField4: TppField
      FieldAlias = 'PROFICOD'
      FieldName = 'PROFICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField5: TppField
      FieldAlias = 'AGENDMARCACAO'
      FieldName = 'AGENDMARCACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField6: TppField
      FieldAlias = 'AGENCSTATUS'
      FieldName = 'AGENCSTATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField7: TppField
      FieldAlias = 'AGENINRORECIBO'
      FieldName = 'AGENINRORECIBO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField8: TppField
      FieldAlias = 'USUAICOD'
      FieldName = 'USUAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField9: TppField
      FieldAlias = 'ESPEICOD'
      FieldName = 'ESPEICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField10: TppField
      FieldAlias = 'AGENA254OBS'
      FieldName = 'AGENA254OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField11: TppField
      FieldAlias = 'AGENICODAGRUP'
      FieldName = 'AGENICODAGRUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField12: TppField
      FieldAlias = 'AGENDDIGIT'
      FieldName = 'AGENDDIGIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField13: TppField
      FieldAlias = 'AGENN3VLRCONSULTA'
      FieldName = 'AGENN3VLRCONSULTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField14: TppField
      FieldAlias = 'AGENN3VLRPAGO'
      FieldName = 'AGENN3VLRPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField15: TppField
      FieldAlias = 'AGENDPAGO'
      FieldName = 'AGENDPAGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField16: TppField
      FieldAlias = 'AGENIUSUATEND'
      FieldName = 'AGENIUSUATEND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField17: TppField
      FieldAlias = 'AGENIQTDE'
      FieldName = 'AGENIQTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField18: TppField
      FieldAlias = 'MONAICOD'
      FieldName = 'MONAICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField19: TppField
      FieldAlias = 'Profissional'
      FieldName = 'Profissional'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField20: TppField
      FieldAlias = 'ClienteNome'
      FieldName = 'ClienteNome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object PipeAgendamentoConsultappField21: TppField
      FieldAlias = 'DependenteNome'
      FieldName = 'DependenteNome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
  end
  object ppHistConsulta: TppReport
    AutoStop = False
    DataPipeline = PipeAgendamentoConsulta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 200000
    PrinterSetup.mmPaperWidth = 80000
    PrinterSetup.PaperSize = 139
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppExtratoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 654
    Top = 490
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeAgendamentoConsulta'
    object ppTitleBand2: TppTitleBand
      BeforePrint = ppTitleBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 36513
      mmPrintPosition = 0
      object ppHistEmpresa: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 1058
        mmWidth = 11007
        BandType = 1
      end
      object ppLabel20: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Historico de Consultas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 11377
        mmWidth = 28046
        BandType = 1
      end
      object ppLabel21: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TITULAR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 17727
        mmWidth = 12700
        BandType = 1
      end
      object ppDBText9: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteNome'
        DataPipeline = PipeAgendamentoConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendamentoConsulta'
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 21167
        mmWidth = 16140
        BandType = 1
      end
      object ppDBText10: TppDBText
        UserName = 'Dependente'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DependenteNome'
        DataPipeline = PipeAgendamentoConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendamentoConsulta'
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 29104
        mmWidth = 22225
        BandType = 1
      end
      object ppLabel24: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DEPENDENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 25665
        mmWidth = 20638
        BandType = 1
      end
      object ppLabel25: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '--------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 32808
        mmWidth = 37306
        BandType = 1
      end
      object ppHistEmpresaFone: TppLabel
        UserName = 'EmpresaFone'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 4498
        mmWidth = 6085
        BandType = 1
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AGENDMARCACAO'
        DataPipeline = PipeAgendamentoConsulta
        DisplayFormat = 'dd/mm/yy hh:mm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'PipeAgendamentoConsulta'
        mmHeight = 3440
        mmLeft = 15081
        mmTop = 3704
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dr(a).'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 265
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Profissional'
        DataPipeline = PipeAgendamentoConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeAgendamentoConsulta'
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 265
        mmWidth = 28310
        BandType = 4
      end
      object ppStatusHistConsulta: TppLabel
        OnPrint = ppStatusHistConsultaPrint
        UserName = 'ppStatusHistConsulta'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppStatusHistConsulta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 7144
        mmWidth = 27093
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 3704
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '--------------------------------------------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 10848
        mmWidth = 37306
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
    end
  end
end
