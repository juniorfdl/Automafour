inherited FormTelaReajustePreco: TFormTelaReajustePreco
  Left = 315
  Top = 110
  Width = 1006
  Height = 556
  Caption = 'Assistente para Reajuste de Pre'#231'os'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 990
    Height = 517
    inherited PanelCentral: TPanel
      Width = 986
      Height = 433
      inherited PanelBarra: TPanel
        Height = 433
      end
      object PagePrincipal: TPageControl
        Left = 130
        Top = 0
        Width = 856
        Height = 433
        ActivePage = TabReajuste
        Align = alClient
        TabHeight = 1
        TabOrder = 1
        TabPosition = tpBottom
        TabWidth = 1
        object TabReajuste: TTabSheet
          Caption = 'Reajuste'
          object GroupFiltro: TGroupBox
            Left = 99
            Top = 50
            Width = 419
            Height = 217
            Hint = 
              'Voc'#234' s'#243' pode usar este filtro se n'#227'o tiver nenhum produto seleci' +
              'onado no filtro "Produto" !'
            Caption = 'Filtrar Por'
            Color = 16249066
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            object Label5: TLabel
              Left = 5
              Top = 15
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
              Left = 5
              Top = 54
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
              Left = 5
              Top = 94
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
            object Label8: TLabel
              Left = 211
              Top = 15
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
              Left = 211
              Top = 54
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
              Left = 211
              Top = 94
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
            object Label1: TLabel
              Left = 6
              Top = 134
              Width = 90
              Height = 13
              Caption = 'Tabela de Pre'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 7
              Top = 173
              Width = 19
              Height = 13
              Caption = 'Cor'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object FiltroGrupo: TRxDBLookupCombo
              Left = 5
              Top = 30
              Width = 204
              Height = 21
              DropDownCount = 8
              LookupField = 'GRUPICOD'
              LookupDisplay = 'GRUPA60DESCR'
              LookupSource = DSSQLGrupo
              TabOrder = 0
              OnClick = FiltroGrupoClick
            end
            object FiltroSubGrupo: TRxDBLookupCombo
              Left = 5
              Top = 69
              Width = 204
              Height = 21
              DropDownCount = 8
              LookupField = 'SUBGICOD'
              LookupDisplay = 'SUBGA60DESCR'
              LookupSource = DSSQLSubGrupo
              TabOrder = 1
              OnClick = FiltroSubGrupoClick
            end
            object FiltroVariacao: TRxDBLookupCombo
              Left = 5
              Top = 109
              Width = 205
              Height = 21
              DropDownCount = 8
              LookupField = 'VARIICOD'
              LookupDisplay = 'VARIA60DESCR'
              LookupSource = DSSQLVariacao
              TabOrder = 2
            end
            object FiltroMarca: TRxDBLookupCombo
              Left = 211
              Top = 30
              Width = 204
              Height = 21
              DropDownCount = 8
              LookupField = 'MARCICOD'
              LookupDisplay = 'MARCA60DESCR'
              LookupSource = DSSQLMarca
              TabOrder = 3
            end
            object FiltroGrade: TRxDBLookupCombo
              Left = 211
              Top = 69
              Width = 204
              Height = 21
              DropDownCount = 8
              LookupField = 'GRADICOD'
              LookupDisplay = 'GRADA30DESCR'
              LookupSource = DSSQLGrade
              TabOrder = 4
            end
            object FiltroUnidade: TRxDBLookupCombo
              Left = 211
              Top = 109
              Width = 205
              Height = 21
              DropDownCount = 8
              LookupField = 'UNIDICOD'
              LookupDisplay = 'UNIDA5DESCR'
              LookupSource = DSSQLUnidade
              TabOrder = 5
            end
            object FiltroTabelaPreco: TRxDBLookupCombo
              Left = 5
              Top = 149
              Width = 410
              Height = 21
              DropDownCount = 8
              LookupField = 'TPRCICOD'
              LookupDisplay = 'TPRCA60DESCR'
              LookupSource = DSSQLTabelaPreco
              TabOrder = 6
            end
            object FiltroCor: TRxDBLookupCombo
              Left = 5
              Top = 188
              Width = 410
              Height = 21
              DropDownCount = 8
              LookupField = 'CORICOD'
              LookupDisplay = 'CORA30DESCR'
              LookupSource = DSSQLCor
              TabOrder = 7
            end
          end
          object GroupBoxTipoReajuste: TGroupBox
            Left = 99
            Top = 1
            Width = 224
            Height = 49
            Caption = ' Reajustar  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object TipoReajuste: TComboBox
              Left = 8
              Top = 17
              Width = 208
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 0
              OnChange = TipoReajusteChange
              Items.Strings = (
                'Pre'#231'os'
                'Margem de Lucro Igual'
                'Pre'#231'o Compra $'
                'Pre'#231'o Compra %'
                'Pre'#231'o Custo $'
                'Pre'#231'o Custo %'
                'Pre'#231'o Venda Varejo em $'
                'Pre'#231'o Venda Varejo em %'
                'Apenas Compra '
                'Apenas Custo'
                'Promo'#231#227'o $'
                'Promo'#231#227'o %'
                'Arredondar Pre'#231'o de Venda Varejo'
                'Pre'#231'o Venda Atacado em %'
                'Apenas Margem de Lucro Fixo')
            end
          end
          object GroupBoxPercentual: TGroupBox
            Left = 332
            Top = 1
            Width = 186
            Height = 50
            Caption = 'Para'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object LTipo: TLabel
              Left = 83
              Top = 8
              Width = 29
              Height = 13
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Percentual: TCurrencyEdit
              Left = 83
              Top = 23
              Width = 98
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              TabOrder = 0
            end
            object RadioGroupMaisMenos: TRadioGroup
              Left = 6
              Top = 13
              Width = 73
              Height = 33
              Columns = 2
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ItemIndex = 0
              Items.Strings = (
                '+'
                '-')
              ParentFont = False
              TabOrder = 1
            end
          end
          object GroupGrade: TGroupBox
            Left = 99
            Top = 269
            Width = 419
            Height = 46
            Hint = 
              'Voc'#234' s'#243' pode usar este filtro se n'#227'o tiver nenhum produto seleci' +
              'onado no filtro "Produto" !'
            Caption = 'Codigo Principal da Grade do Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 3
            object EditGrade: TEdit
              Left = 8
              Top = 16
              Width = 101
              Height = 21
              TabOrder = 0
              OnExit = EditGradeExit
            end
            object EditDesc: TEdit
              Left = 113
              Top = 16
              Width = 300
              Height = 21
              Color = 16249066
              Ctl3D = True
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object EditGradeCodigo: TEdit
              Left = 8
              Top = 32
              Width = 101
              Height = 21
              TabOrder = 2
              Visible = False
            end
          end
          object GroupBoxPromocao: TGroupBox
            Left = 271
            Top = 316
            Width = 248
            Height = 43
            Caption = 'Per'#237'odo de Validade da Promo'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object Label3: TLabel
              Left = 6
              Top = 21
              Width = 14
              Height = 13
              Caption = 'de'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 123
              Top = 20
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
            object DtaInicio: TDateEdit
              Left = 23
              Top = 17
              Width = 97
              Height = 21
              NumGlyphs = 2
              TabOrder = 0
            end
            object DtaFim: TDateEdit
              Left = 146
              Top = 16
              Width = 95
              Height = 21
              NumGlyphs = 2
              TabOrder = 1
            end
          end
          object GroupBox1: TGroupBox
            Left = 98
            Top = 316
            Width = 170
            Height = 43
            Caption = 'Referencia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object ComboProdutoDescricao: TRxDBLookupCombo
              Left = 7
              Top = 16
              Width = 157
              Height = 21
              DropDownCount = 8
              LookupField = 'PRODA60REFER'
              LookupDisplay = 'PRODA60REFER'
              LookupSource = DSSQLProdutoDescricao
              TabOrder = 0
              OnExit = ComboProdutoDescricaoExit
              OnKeyDown = ComboProdutoDescricaoKeyDown
            end
          end
        end
        object TabItens: TTabSheet
          Caption = 'Itens'
          ImageIndex = 1
          object PanelItens: TPanel
            Left = 0
            Top = 0
            Width = 848
            Height = 425
            Align = alClient
            Color = 15461355
            TabOrder = 0
            object DBGridLista: TDBGrid
              Left = 1
              Top = 42
              Width = 846
              Height = 382
              Align = alClient
              BorderStyle = bsNone
              Color = clWhite
              DataSource = DSQueryReajuste
              FixedColor = 10053171
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'PRODICOD'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODA60DESCR'
                  Width = 237
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODA60CODBAR'
                  Width = 98
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODA60REFER'
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODN3VLRCOMPRA'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODN3VLRCUSTO'
                  Width = 59
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODN3PERCMGLVFIXA'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODN3PERCMARGLUCR'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PRODN3VLRVENDA'
                  Visible = True
                end>
            end
            object PanelCabItens: TPanel
              Left = 1
              Top = 1
              Width = 846
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              Color = 16249066
              TabOrder = 1
              object BtnImprimir: TSpeedButton
                Left = 189
                Top = 11
                Width = 107
                Height = 25
                Caption = '&Imprimir Itens'
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  76060000424D7606000000000000360400002800000018000000180000000100
                  08000000000040020000130B0000130B00000001000000010000000000000606
                  060026262600272727002D2D2D002E2E2E002F2F2F0031313100333333003434
                  340035353500363636003737370038383800393939003A3A3A003B3B3B003C3C
                  3C003E3E3E003F3F3F003F3F4000404040004141410042424200434444004545
                  4500464646004747470048484800494949004A4A4A004B4B4B004D4D4D004E4E
                  4E004F4F4F004C4F5000505050005454540055555500585858005B5B5B005C5E
                  5F005E5E5E006060600061616100636363006062640060636400646464006666
                  660067676700696969006E6E6E006F6F6F007070700071717100727272007B7B
                  7B007B7D7D007F7F7F0081838400868686008D8D8D0090929200959595009999
                  9900989A9A009E9E9E009EA2A500A0A0A000A1A1A100A2A2A200A3A3A300A5A5
                  A500A6A6A600A7A7A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
                  AD00AFAFAF00B1B1B100B2B2B200B3B3B300B0B3B500B2B3B500B4B4B400B6B6
                  B600B7B7B700BBBBBB00BBBCBC00BEBEBE00C3C3C300C3C5C500C6C6C600C7C9
                  CB00C6CBCD00C9C9C900CBCBCB00CECECE00D2D2D200D5D5D500DBDBDB00D9DC
                  DD00D8DDDE00D9DEDF00DCE0E200DDE1E300DEE2E300DFE3E400E0E0E000E1E1
                  E100E2E2E200E0E4E500E1E5E600E2E6E700E5E5E500E3E7E800E5E8E900E6E9
                  EA00E7E9EA00E8E8E800E9E9E900E8EAEB00EAEAEA00EBEBEB00E9EBEC00EAEC
                  ED00EBEDEE00EDEDED00ECEEEF00EEEEEE00EFEFEF00EDEFF000EEF0F100EFF1
                  F100F0F0F000F0F2F200F1F3F300F2F2F200F3F3F300F2F4F400F3F4F500F4F4
                  F400F4F5F600F5F6F700F6F6F600F6F7F700F6F7F800F9FAFA00FAFAFA00BEBE
                  BE00000000000000000000000000000000000000000000000000000000000000
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
                  0000000000000000000000000000000000000000000000000000999999999999
                  9999999999999999999999999999999999999999999999999999999999999999
                  9999999999999999999999999999999999999999999999999999999999999999
                  9999999999999999999999999900000000009999999999999999999999999999
                  99990000001C36380F1200999999999999999999999999000000162826303735
                  15070C000099999999999999990000202426221A19212C390E10040A09009999
                  999999990028281F1A1E2B3D4745433B0C0F11080E1100009999999900311B2D
                  48514F4D4B49403908020F11130F0A00999999990033465A58544E4745416670
                  5E17060A1215100099999999005553524D4C4D6676868A7B8D681B0E110D1600
                  9999999900504E4C5B718E838D867F7E7B7C6716030B0F0099999999003E5A7F
                  9894918D8A85833F2E232F18321D050099999999990000647C837C725729293C
                  566A62142A3400009999999999999900006559423A8079756F6C6B5C00009999
                  99999999999999999900014A8B87817A77736D69279999999999999999999999
                  99999904928C88827D78746E6100999999999999999999999999990060938F89
                  848079756F440099999999999999999999999999009796908B885F1A00000099
                  9999999999999999999999999900956325000099999999999999999999999999
                  9999999999990000999999999999999999999999999999999999999999999999
                  9999999999999999999999999999999999999999999999999999999999999999
                  9999999999999999999999999999999999999999999999999999}
                ParentFont = False
                OnClick = BtnImprimirClick
              end
              object BtnVoltar: TSpeedButton
                Left = 296
                Top = 11
                Width = 107
                Height = 25
                Caption = 'Voltar '
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Glyph.Data = {
                  A2010000424DA2010000000000003600000028000000090000000D0000000100
                  1800000000006C010000EE0E0000EE0E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF2B0100FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF3A0401491413FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF4D21
                  013D0502764442FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF774C16551F03390200
                  451919FFFFFFFFFFFF00FFFFFFFFFFFF8E493C7A4D1B541C0335010023010013
                  01011F000000FFFFFFA162608C463C7745195E20093D02002001000E00001400
                  0000431514743836924942AA7248924832550A082E020014000015000000FFFF
                  FF571D1BA45D58D59774B1634F5C0B093A02002000001D010000FFFFFFFFFFFF
                  591A19B072589346365407054605032E020120020000FFFFFFFFFFFFFFFFFF4D
                  190A6320144F0907661C19FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF3B09
                  014405049D4C48FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F0504
                  CC7774FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF893936FF
                  FFFFFFFFFF00}
                ParentFont = False
                OnClick = BtnVoltarClick
              end
              object Progress: TProgressBar
                Left = 411
                Top = 19
                Width = 150
                Height = 16
                TabOrder = 0
                Visible = False
              end
            end
          end
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 986
      inherited PanelCabecalho: TPanel
        Width = 986
        inherited PanelNavigator: TPanel
          Width = 986
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 986
            inherited BtnFecharTela: TSpeedButton
              Left = 672
            end
            object BtnOk: TSpeedButton
              Left = 3
              Top = 3
              Width = 75
              Height = 25
              Caption = '&Reajustar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                DE040000424DDE0400000000000036040000280000000C0000000E0000000100
                080000000000A8000000130B0000130B0000000100000001000000000000A7C2
                B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
                88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
                FF00000000000000000000000000000000000000000000000000000000000000
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
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000111111111100
                11111111111111111111000B0011111111111111110009090011111111111111
                1100090F10001111111111110009090D0E0011111111110009090B000C060011
                11111100090800000A0200111111000909000011000206001111000708001111
                0003020011111100001111111100030600111111111111111100050200111111
                1111111111110003040011111111111111110001020011111111111111111100
                0011}
              ParentFont = False
              OnClick = BtnOkClick
            end
            object BtnVisualizar: TSpeedButton
              Left = 78
              Top = 3
              Width = 107
              Height = 25
              Caption = '&Visualizar Itens'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                E6000000424DE60000000000000076000000280000000E0000000E0000000100
                0400000000007000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                DD00DD82000700DDDD00D80777700DDDDD00D07887772DDDDD00D08887770DDD
                DD00D08F88770DDDDD00D078F8872DDDDD00D80788708DDDDD00DD800028DDDD
                DD00DDDDDDDDDDDDDD00}
              ParentFont = False
              OnClick = BtnVisualizarClick
            end
          end
        end
      end
    end
  end
  object DSSQLGrupo: TDataSource
    DataSet = SQLGrupo
    Left = 400
    Top = 5
  end
  object SQLGrupo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from GRUPO '
      'order by GRUPA60DESCR')
    Macros = <>
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
    DataSet = SQLSubGrupo
    Left = 458
    Top = 5
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
  object SQLProduto: TRxQuery
    BeforePost = SQLProdutoBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  PRODUTO'
      'where'
      '  PRODICOD=:PRODICOD')
    Macros = <>
    Left = 370
    Top = 5
    ParamData = <
      item
        DataType = ftString
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
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
    object SQLProdutoPRODN3PERCMGLVFIXA: TFloatField
      FieldName = 'PRODN3PERCMGLVFIXA'
      Origin = 'DB.PRODUTO.PRODN3PERCMGLVFIXA'
    end
    object SQLProdutoPRODN3PERCMARGLUCR: TFloatField
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUCR'
    end
    object SQLProdutoPRODN3VLRVENDAPROM: TFloatField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
    end
    object SQLProdutoPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutoPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
    object SQLProdutoPRODN3VLRCUSTOMED: TFloatField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
    end
    object SQLProdutoPRODN3VLRCOMPRAMED: TFloatField
      FieldName = 'PRODN3VLRCOMPRAMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRAMED'
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
    object SQLProdutoPRODN3VLRVENDA2: TFloatField
      FieldName = 'PRODN3VLRVENDA2'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA2'
    end
    object SQLProdutoPRODN3PERCMGLAFIXA: TFloatField
      FieldName = 'PRODN3PERCMGLAFIXA'
      Origin = 'DB.PRODUTO.PRODN3PERCMGLAFIXA'
    end
    object SQLProdutoPRODN3PERCMARGLUC2: TFloatField
      FieldName = 'PRODN3PERCMARGLUC2'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUC2'
    end
  end
  object QueryReajuste: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From'
      '         Produto'
      'Where'
      '         (%MGrupo) AND'
      '         (%MSubGrupo) AND'
      '         (%MVariacao) AND'
      '         (%MUnidade)  AND'
      '         (%MMarca)  AND'
      '         (%MCor)  AND'
      '         (%MReferencia) AND'
      '         (%MGrade)  AND'
      '         (%MTamanho)')
    UpdateObject = UpdateSQLProduto
    Macros = <
      item
        DataType = ftString
        Name = 'MGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSubGrupo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MVariacao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MUnidade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MMarca'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MReferencia'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MGrade'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTamanho'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 338
    Top = 5
    object QueryReajustePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Interno'
      FieldName = 'PRODICOD'
    end
    object QueryReajustePRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'PRODA60DESCR'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object QueryReajustePRODA60CODBAR: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldKind = fkLookup
      FieldName = 'PRODA60CODBAR'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60CODBAR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object QueryReajustePRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldKind = fkLookup
      FieldName = 'PRODA60REFER'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60REFER'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object QueryReajustePRODN3VLRVENDA: TFloatField
      DisplayLabel = 'Vlr. Venda'
      FieldKind = fkLookup
      FieldName = 'PRODN3VLRVENDA'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODN3VLRVENDA'
      KeyFields = 'PRODICOD'
      DisplayFormat = '#,##0.00'
      Lookup = True
    end
    object QueryReajustePRODN3VLRCOMPRA: TFloatField
      DisplayLabel = 'Vlr. Compra'
      FieldKind = fkLookup
      FieldName = 'PRODN3VLRCOMPRA'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODN3VLRCOMPRA'
      KeyFields = 'PRODICOD'
      DisplayFormat = '#,##0.00'
      Lookup = True
    end
    object QueryReajustePRODN3VLRCUSTO: TFloatField
      DisplayLabel = 'Vlr. Custo'
      FieldKind = fkLookup
      FieldName = 'PRODN3VLRCUSTO'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODN3VLRCUSTO'
      KeyFields = 'PRODICOD'
      DisplayFormat = '#,##0.00'
      Lookup = True
    end
    object QueryReajustePRODN3PERCMARGLUCR: TFloatField
      DisplayLabel = '% Mg Lucro Real'
      FieldKind = fkLookup
      FieldName = 'PRODN3PERCMARGLUCR'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODN3PERCMARGLUCR'
      KeyFields = 'PRODICOD'
      DisplayFormat = '#0.00'
      Lookup = True
    end
    object QueryReajustePRODN3PERCMGLVFIXA: TFloatField
      DisplayLabel = '% Mg Fixa'
      FieldKind = fkLookup
      FieldName = 'PRODN3PERCMGLVFIXA'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODN3PERCMGLVFIXA'
      KeyFields = 'PRODICOD'
      DisplayFormat = '#0.00'
      Lookup = True
    end
  end
  object DSSQLCor: TDataSource
    DataSet = SQLCor
    Left = 574
    Top = 33
  end
  object SQLCor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from COR'
      'order by CORA30DESCR')
    Macros = <>
    Left = 602
    Top = 33
    object SQLCorCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLTabelaPreco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TABELAPRECO'
      'order by TPRCA60DESCR')
    Macros = <>
    Left = 660
    Top = 33
    object SQLTabelaPrecoTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.TABELAPRECO.TPRCICOD'
    end
    object SQLTabelaPrecoTPRCA60DESCR: TStringField
      FieldName = 'TPRCA60DESCR'
      Origin = 'DB.TABELAPRECO.TPRCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLTabelaPreco: TDataSource
    DataSet = SQLTabelaPreco
    Left = 632
    Top = 33
  end
  object SQLProdutoGrade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PRODUTO')
    Macros = <>
    Left = 370
    Top = 36
    object SQLProdutoGradePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoGradePRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoGradePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGradePRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGradePRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGradePRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
    end
    object SQLProdutoGradePRODN3VLRCOMPRA: TFloatField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
    end
    object SQLProdutoGradePRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
    end
    object SQLProdutoGradePRODN3VLRCUSTOMED: TFloatField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
    end
    object SQLProdutoGradePRODN3PERCMGLVFIXA: TFloatField
      FieldName = 'PRODN3PERCMGLVFIXA'
      Origin = 'DB.PRODUTO.PRODN3PERCMGLVFIXA'
    end
    object SQLProdutoGradePRODN3PERCMARGLUCR: TFloatField
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUCR'
    end
    object SQLProdutoGradePRODN3PERCMGLAFIXA: TFloatField
      FieldName = 'PRODN3PERCMGLAFIXA'
      Origin = 'DB.PRODUTO.PRODN3PERCMGLAFIXA'
    end
    object SQLProdutoGradePRODN3PERCMARGLUC2: TFloatField
      FieldName = 'PRODN3PERCMARGLUC2'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUC2'
    end
  end
  object UpdateSQLProduto: TUpdateSQL
    Left = 337
    Top = 36
  end
  object SQLProdutoTabelaPreco: TRxQuery
    AfterPost = SQLProdutoTabelaPrecoAfterPost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From TABELAPRECOPRODUTO'
      'Where '
      'TPRCICOD=:TPRCICOD and PRODICOD=:PRODICOD')
    UpdateObject = UpdateSQLTabelaPrecoProduto
    Macros = <>
    Left = 434
    Top = 36
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TPRCICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
    object SQLProdutoTabelaPrecoTPCPN3VLRVENDA: TFloatField
      FieldName = 'TPCPN3VLRVENDA'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDA'
    end
    object SQLProdutoTabelaPrecoTPCPN3MARGLUCR: TFloatField
      FieldName = 'TPCPN3MARGLUCR'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3MARGLUCR'
    end
    object SQLProdutoTabelaPrecoTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
      Origin = 'DB.TABELAPRECOPRODUTO.TPRCICOD'
    end
    object SQLProdutoTabelaPrecoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.TABELAPRECOPRODUTO.PRODICOD'
    end
    object SQLProdutoTabelaPrecoTPCPN3VLRVENDAPROM: TFloatField
      FieldName = 'TPCPN3VLRVENDAPROM'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPN3VLRVENDAPROM'
    end
    object SQLProdutoTabelaPrecoTPCPDINIPROMO: TDateTimeField
      FieldName = 'TPCPDINIPROMO'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPDINIPROMO'
    end
    object SQLProdutoTabelaPrecoTPCPDFIMPROMO: TDateTimeField
      FieldName = 'TPCPDFIMPROMO'
      Origin = 'DB.TABELAPRECOPRODUTO.TPCPDFIMPROMO'
    end
    object SQLProdutoTabelaPrecoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TABELAPRECOPRODUTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoTabelaPrecoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TABELAPRECOPRODUTO.REGISTRO'
    end
    object SQLProdutoTabelaPrecoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.TABELAPRECOPRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
  end
  object UpdateSQLTabelaPrecoProduto: TUpdateSQL
    Left = 401
    Top = 36
  end
  object SQLProdutoReajuste: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  PRODUTOREAJUSTE'
      'where'
      '  PRODICOD = :PRODICOD')
    Macros = <>
    Left = 251
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLProdutoReajustePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOREAJUSTE.PRODICOD'
    end
    object SQLProdutoReajustePRRJICOD: TIntegerField
      FieldName = 'PRRJICOD'
      Origin = 'DB.PRODUTOREAJUSTE.PRRJICOD'
    end
    object SQLProdutoReajustePRRJDREAJUSTE: TDateTimeField
      DisplayLabel = 'Data Reajuste'
      FieldName = 'PRRJDREAJUSTE'
      Origin = 'DB.PRODUTOREAJUSTE.PRRJDREAJUSTE'
    end
    object SQLProdutoReajustePRRJN2VLRCOMPRA: TFloatField
      DisplayLabel = 'Valor Compra'
      FieldName = 'PRRJN2VLRCOMPRA'
      Origin = 'DB.PRODUTOREAJUSTE.PRRJN2VLRCOMPRA'
    end
    object SQLProdutoReajustePRRJN2MARGEM: TFloatField
      DisplayLabel = 'Margem Lucro'
      FieldName = 'PRRJN2MARGEM'
      Origin = 'DB.PRODUTOREAJUSTE.PRRJN2MARGEM'
    end
    object SQLProdutoReajustePRRJVLRVENDA: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'PRRJVLRVENDA'
      Origin = 'DB.PRODUTOREAJUSTE.PRRJVLRVENDA'
    end
  end
  object DSSQLProdutoReajuste: TDataSource
    AutoEdit = False
    DataSet = SQLProdutoReajuste
    Left = 279
    Top = 5
  end
  object SQLProdutoDescricao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      'PRODA60REFER, PRODIAGRUPGRADE'
      'from '
      'PRODUTO'
      'where'
      'PRODA60REFER <> '#39#39
      'Group By'
      'PRODA60REFER, PRODIAGRUPGRADE')
    Macros = <>
    Left = 464
    Top = 36
    object SQLProdutoDescricaoPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoDescricaoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
  end
  object DSSQLProdutoDescricao: TDataSource
    DataSet = SQLProdutoDescricao
    Left = 494
    Top = 36
  end
  object Timer: TTimer
    Interval = 500
    OnTimer = TimerTimer
    Left = 525
    Top = 36
  end
  object DSQueryReajuste: TDataSource
    AutoEdit = False
    DataSet = QueryReajuste
    Left = 310
    Top = 5
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\UnitGestao Oficial\Relatorios\Vendas Por Periodo.rpt'
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
    Left = 152
    Top = 12
  end
  object TblItens: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'ListProdReajPrecos.db'
    Left = 180
    Top = 12
    object TblItensPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Interno'
      FieldName = 'PRODICOD'
    end
    object TblItensPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
    end
    object TblItensPRODA60CODBAR: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'PRODA60CODBAR'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60CODBAR'
      KeyFields = 'PRODICOD'
      Size = 60
    end
    object TblItensPRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRODA60REFER'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60REFER'
      KeyFields = 'PRODICOD'
      Size = 60
    end
    object TblItensPRODN3VLRVENDA: TFloatField
      DisplayLabel = 'Vlr. Venda'
      FieldName = 'PRODN3VLRVENDA'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODN3VLRVENDA'
      KeyFields = 'PRODICOD'
      EditFormat = '#,##0.00'
    end
    object TblItensPRODN3VLRCOMPRA: TFloatField
      DisplayLabel = 'Vlr. Compra'
      FieldName = 'PRODN3VLRCOMPRA'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODN3VLRCOMPRA'
      KeyFields = 'PRODICOD'
      EditFormat = '#,##0.00'
    end
    object TblItensPRODN3VLRCUSTO: TFloatField
      DisplayLabel = 'Vlr. Custo'
      FieldName = 'PRODN3VLRCUSTO'
      LookupDataSet = SQLProdutoGrade
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODN3VLRCUSTO'
      KeyFields = 'PRODICOD'
      EditFormat = '#,##0.00'
    end
  end
  object BatchMove: TBatchMove
    Destination = TblItens
    Source = QueryReajuste
    Left = 208
    Top = 12
  end
end
