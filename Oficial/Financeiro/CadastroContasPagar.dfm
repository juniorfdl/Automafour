inherited FormCadastroContasPagar: TFormCadastroContasPagar
  Left = 251
  Top = 75
  Caption = 'Cadastro de Documentos '#224' Pagar'
  ClientHeight = 568
  ClientWidth = 977
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 977
    Height = 568
    inherited PanelCabecalho: TPanel
      Width = 975
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 975
        inherited Panel1: TPanel
          Width = 973
          inherited PanelNavigator: TPanel
            Width = 973
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 973
            end
          end
          inherited PanelLeft: TPanel
            Left = 516
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 975
      Height = 494
      inherited PanelBarra: TPanel
        Height = 494
      end
      inherited PanelFundoDados: TPanel
        Width = 845
        Height = 494
        inherited Panel5: TPanel
          Width = 845
          Height = 494
          inherited PagePrincipal: TPageControl
            Top = 225
            Width = 845
            Height = 269
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 94
                Width = 837
                Height = 61
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Title.Caption = 'Filial'
                    Width = 27
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FornecedorCalcField'
                    Title.Caption = 'Nome / Raz'#195#163'o Social'
                    Width = 190
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPA30NRO'
                    Width = 61
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGA20DOCORIG'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGINROPARC'
                    Title.Caption = 'Parc'
                    Width = 26
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGDTEMIS'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGDVENC'
                    Title.Caption = 'Vencto'
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3VLR'
                    Width = 80
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TipoDocumentoCalc'
                    Title.Caption = 'Tipo Documento'
                    Width = 115
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PortadorCalc'
                    Title.Caption = 'Portador'
                    Width = 122
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGDULTPAGTO'
                    Title.Caption = 'Dt.Ult.Pgto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3JUROPAGTO'
                    Title.Caption = 'Juros Pago'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3MULTAPAGTO'
                    Title.Caption = 'Multa Pago'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3DESCPAGTO'
                    Title.Caption = 'Desc. Pago'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPA13ID'
                    Title.Caption = 'ID Nota'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BARRAS'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 837
                Height = 42
                inherited PanelBetween: TPanel
                  Width = 443
                  Height = 42
                  inherited AdvPanel1: TAdvPanel
                    Width = 443
                    Height = 42
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 443
                  Height = 42
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 443
                    Height = 42
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  Height = 42
                  inherited AdvPanelIndice: TAdvPanel
                    Height = 42
                    FullHeight = 0
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Top = 126
                Width = 76
                Height = 35
                Lines.Strings = (
                  'PAGAMENTO')
              end
              object PanelPesquisa: TPanel
                Left = 0
                Top = 42
                Width = 837
                Height = 52
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 3
                TabStop = True
                object SpeedButton1: TSpeedButton
                  Left = 620
                  Top = 4
                  Width = 95
                  Height = 22
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados da pesquisa tradicional s' +
                    'er'#227'o ignorados...'
                  Caption = '&Localizar'
                  Flat = True
                  Glyph.Data = {
                    F6000000424DF60000000000000076000000280000000E000000100000000100
                    04000000000080000000CE0E0000C40E00001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777700
                    77007777777774EC0700770000004ECC000077877774ECC77000778FFF4ECC7F
                    70007780087CC7FF7000787E70887FFF70008FE7E707FFFF70008EFE7E0FFFFF
                    70008FEFE70FFFFF700078FEF0FFFFFF700077880FFFFFFF7000778FFFFFFF00
                    0000778FFFFFFF0F8700778FFFFFFF0877007788888888877700}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton1Click
                end
                object SpeedButton2: TSpeedButton
                  Left = 620
                  Top = 26
                  Width = 95
                  Height = 22
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados da pesquisa tradicional s' +
                    'er'#227'o ignorados...'
                  Caption = 'Limpar &Pesquisa'
                  Flat = True
                  Glyph.Data = {
                    0E010000424D0E01000000000000360000002800000008000000090000000100
                    180000000000D8000000130B0000130B00000000000000000000BFBFBFBFBFBF
                    BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF290404340403BFBFBFBFBFBFBFBF
                    BFBFBFBF2F02001C0000BFBFBF330403692824BFBFBFBFBFBF661614390301BF
                    BFBFBFBFBFBFBFBF3D05047C4229CB7B6A9E4542BFBFBFBFBFBFBFBFBFBFBFBF
                    BFBFBF4F1A0BA05548BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4307053F0D045316
                    0DA0514FBFBFBFBFBFBFBFBFBFA9584F984B48BFBFBFBFBFBF6D2A29853532BF
                    BFBFCC6D6ACE786ABFBFBFBFBFBFBFBFBFBFBFBF5F18166A1816BFBFBFBFBFBF
                    BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton2Click
                end
                object Label42: TLabel
                  Left = 8
                  Top = 10
                  Width = 25
                  Height = 13
                  Caption = 'Filial'
                  FocusControl = ComboOrdem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboFornecedor: TRxDBLookupCombo
                  Left = 69
                  Top = 3
                  Width = 274
                  Height = 21
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados da pesquisa tradicional s' +
                    'er'#227'o ignorados...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um Fornecedor (Nome Fantasia)'
                  LookupField = 'FORNICOD'
                  LookupDisplay = 'FORNA60NOMEFANT'
                  LookupSource = DSSQLFornecedor
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnKeyDown = ComboFornecedorKeyDown
                end
                object ComboConta: TRxDBLookupCombo
                  Left = 344
                  Top = 3
                  Width = 274
                  Height = 21
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados da pesquisa tradicional s' +
                    'er'#227'o ignorados...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione uma conta do plano de contas'
                  LookupField = 'PLCTA15COD'
                  LookupDisplay = 'PLCTA60DESCR'
                  LookupSource = DSSQLConta
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  OnKeyDown = ComboFornecedorKeyDown
                end
                object ComboTipoDoc: TRxDBLookupCombo
                  Left = 69
                  Top = 27
                  Width = 274
                  Height = 21
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados da pesquisa tradicional s' +
                    'er'#227'o ignorados...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um Tipo de Documento'
                  LookupField = 'TPDCICOD'
                  LookupDisplay = 'TPDCA60DESCR'
                  LookupSource = dsSQLTipoDocumento
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  OnKeyDown = ComboFornecedorKeyDown
                end
                object ComboPortador: TRxDBLookupCombo
                  Left = 344
                  Top = 27
                  Width = 274
                  Height = 21
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados da pesquisa tradicional s' +
                    'er'#227'o ignorados...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um Portador...'
                  LookupField = 'PORTICOD'
                  LookupDisplay = 'PORTA60DESCR'
                  LookupSource = DSSQLPortador
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                  OnKeyDown = ComboFornecedorKeyDown
                end
                object EditFilial: TMaskEdit
                  Left = 3
                  Top = 26
                  Width = 54
                  Height = 21
                  CharCase = ecUpperCase
                  TabOrder = 4
                end
              end
              object Panel6: TPanel
                Left = 0
                Top = 155
                Width = 837
                Height = 88
                Align = alBottom
                Color = 12572888
                TabOrder = 4
                object GroupBox2: TGroupBox
                  Left = 1
                  Top = 1
                  Width = 835
                  Height = 86
                  Align = alClient
                  Caption = ' Hist'#243'rico de Pagamentos do titulo selecionado  '
                  Color = 16249066
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  object DBGrid2: TDBGrid
                    Left = 2
                    Top = 15
                    Width = 831
                    Height = 69
                    Hint = 
                      'Para ver maiores detalhes sobre um pagamento d'#234' um duplo clique ' +
                      'sobre o registro...'
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DataSource = DSSQLPagamento
                    FixedColor = 10053171
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    ParentFont = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWhite
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = [fsBold]
                    OnCellClick = DBGrid1CellClick
                    OnDrawColumnCell = DBGrid1DrawColumnCell
                    OnDblClick = DBGrid1DblClick
                    OnKeyDown = DBGrid1KeyDown
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'PAGADPAGTO'
                        Width = 61
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'VlrTotal'
                        Width = 68
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'PAGAN3VLRJURO'
                        Width = 54
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'PAGAN3VLRMULTA'
                        Width = 53
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'PAGAN3VLRDESC'
                        Width = 50
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TipoLiquida'#231#227'oCalc'
                        Title.Caption = 'Liquida'#231#227'o'
                        Width = 98
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'PAGAA254HISTORICO'
                        Width = 166
                        Visible = True
                      end
                      item
                        Expanded = False
                        Visible = True
                      end>
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object GroupBox1: TGroupBox
                Left = 0
                Top = 79
                Width = 837
                Height = 164
                Align = alClient
                Caption = ' Hist'#243'rico de Pagamentos '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object DBGrid1: TDBGrid
                  Left = 2
                  Top = 15
                  Width = 833
                  Height = 147
                  Hint = 
                    'Para ver maiores detalhes sobre um pagamento d'#234' um duplo clique ' +
                    'sobre o registro...'
                  Align = alClient
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSSQLPagamento
                  FixedColor = 10053171
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWhite
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = [fsBold]
                  OnCellClick = DBGrid1CellClick
                  OnDrawColumnCell = DBGrid1DrawColumnCell
                  OnDblClick = DBGrid1DblClick
                  OnKeyDown = DBGrid1KeyDown
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'PAGADPAGTO'
                      Width = 69
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VlrTotal'
                      Width = 68
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'PAGAN3VLRJURO'
                      Width = 54
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'PAGAN3VLRMULTA'
                      Width = 55
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'PAGAN3VLRDESC'
                      Width = 53
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TipoLiquida'#231#227'oCalc'
                      Title.Caption = 'Liquida'#231#227'o'
                      Width = 97
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'PAGAA254HISTORICO'
                      Width = 188
                      Visible = True
                    end
                    item
                      Expanded = False
                      Visible = True
                    end>
                end
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 837
                Height = 79
                Align = alTop
                ParentColor = True
                TabOrder = 0
                object Label13: TLabel
                  Left = 120
                  Top = 5
                  Width = 50
                  Height = 13
                  Caption = 'Hist'#243'rico'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 8
                  Top = 5
                  Width = 93
                  Height = 13
                  Caption = 'Hist'#243'rico Padr'#227'o'
                  FocusControl = DBEditHistoricoPadrao
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object BtnHistorico: TSpeedButton
                  Left = 94
                  Top = 18
                  Width = 21
                  Height = 21
                  Hint = 'Acessa Hist'#243'ricos Padr'#245'es'
                  Flat = True
                  Glyph.Data = {
                    9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                    18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                    0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                    48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                    0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                    FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                    7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                    B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                    FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                    00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                    EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                    FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                    00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                    B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                    0000}
                  OnClick = BtnHistoricoClick
                end
                object Label18: TLabel
                  Left = 7
                  Top = 39
                  Width = 60
                  Height = 13
                  Caption = 'Total Pago'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object MemoHistorico: TDBMemo
                  Left = 116
                  Top = 18
                  Width = 517
                  Height = 55
                  DataField = 'CTPGA254HIST'
                  DataSource = DSTemplate
                  MaxLength = 254
                  TabOrder = 1
                end
                object DBEditHistoricoPadrao: TDBEdit
                  Left = 5
                  Top = 18
                  Width = 88
                  Height = 21
                  DataField = 'HTPDICOD'
                  DataSource = DSTemplate
                  TabOrder = 0
                  OnExit = DBEditHistoricoPadraoExit
                  OnKeyDown = DBEditHistoricoPadraoKeyDown
                end
                object EvDBNumEdit3: TEvDBNumEdit
                  Left = 4
                  Top = 52
                  Width = 109
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Color = 16249066
                  DataField = 'CTPGN2TOTPAG'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    E6020000424DE60200000000000042000000280000001A0000000D0000000100
                    100003000000A402000000000000000000000000000000000000007C0000E003
                    00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                    EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                    EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                    FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                    FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                    FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                    FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                    FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                    EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                    FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                    070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                    EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                    FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                    FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                    FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                    FF5EFF5EFF5EFF5EFF5E}
                  ParentFont = False
                  TabOrder = 2
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 219
            Width = 845
            Height = 6
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 845
            Height = 219
            object Label1: TLabel
              Left = 109
              Top = 2
              Width = 49
              Height = 13
              Caption = 'Empresa'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaEmpresa: TSpeedButton
              Left = 185
              Top = 15
              Width = 21
              Height = 21
              Hint = 'Acessa Empresa'
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              OnClick = RetornaEmpresaClick
            end
            object Label2: TLabel
              Left = 11
              Top = 38
              Width = 141
              Height = 13
              Caption = 'Fornecedor / Funcion'#225'rio'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaFornecedor: TSpeedButton
              Left = 452
              Top = 50
              Width = 21
              Height = 21
              Hint = 'Acessa Cliente'
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              OnClick = RetornaFornecedorClick
            end
            object Label3: TLabel
              Left = 78
              Top = 73
              Width = 123
              Height = 13
              Caption = 'Documento           Parc'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 214
              Top = 73
              Width = 62
              Height = 13
              Caption = 'Dt.Emiss'#227'o'
              FocusControl = DBDateEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 305
              Top = 73
              Width = 55
              Height = 13
              Caption = 'Dt.Vencto'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 404
              Top = 73
              Width = 29
              Height = 13
              Caption = 'Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 487
              Top = 73
              Width = 45
              Height = 13
              Caption = 'Vlr.Desc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 10
              Top = 73
              Width = 60
              Height = 13
              Caption = 'Nota Fiscal'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 492
              Top = 38
              Width = 24
              Height = 13
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 559
              Top = 73
              Width = 62
              Height = 13
              Caption = 'Dt. Recbto.'
              FocusControl = DBDateEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 11
              Top = 2
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 475
              Top = 108
              Width = 134
              Height = 13
              Caption = 'Compet'#234'ncia M'#234's    Ano'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 10
              Top = 108
              Width = 92
              Height = 13
              Caption = 'Tipo Documento'
              FocusControl = DBEdit9
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 241
              Top = 108
              Width = 50
              Height = 13
              Caption = 'Portador'
              FocusControl = DBEdit11
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaTipoDocumento: TSpeedButton
              Left = 211
              Top = 121
              Width = 21
              Height = 21
              Hint = 'Acessa Cliente'
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              OnClick = RetornaTipoDocumentoClick
            end
            object RetornaPortador: TSpeedButton
              Left = 441
              Top = 121
              Width = 21
              Height = 21
              Hint = 'Acessa Cliente'
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              OnClick = RetornaPortadorClick
            end
            object Label7: TLabel
              Left = 10
              Top = 184
              Width = 151
              Height = 13
              Caption = 'Codigo de Barras do Boleto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 10
              Top = 146
              Width = 90
              Height = 13
              Caption = 'Plano de Contas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaPlanoContas: TSpeedButton
              Left = 97
              Top = 159
              Width = 21
              Height = 20
              Hint = 'Acessa Empresa'
              Flat = True
              Glyph.Data = {
                9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              OnClick = RetornaPlanoContasClick
            end
            object DBEdit1: TDBEdit
              Left = 106
              Top = 15
              Width = 78
              Height = 21
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              TabOrder = 1
              OnKeyDown = DBEdit1KeyDown
            end
            object DBEdit33: TDBEdit
              Left = 208
              Top = 15
              Width = 438
              Height = 21
              TabStop = False
              AutoSize = False
              Color = 16249066
              DataField = 'EmpresaCalcField'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 51
              Width = 66
              Height = 21
              DataField = 'FORNICOD'
              DataSource = DSTemplate
              TabOrder = 3
              OnKeyDown = DBEdit2KeyDown
            end
            object DBEdit3: TDBEdit
              Left = 76
              Top = 86
              Width = 97
              Height = 21
              DataField = 'CTPGA20DOCORIG'
              DataSource = DSTemplate
              TabOrder = 7
              OnExit = DBEdit3Exit
            end
            object DBDateEdit1: TDBDateEdit
              Left = 211
              Top = 86
              Width = 90
              Height = 21
              DataField = 'CTPGDTEMIS'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 9
              YearDigits = dyFour
            end
            object DBEdit4: TDBDateEdit
              Left = 303
              Top = 86
              Width = 90
              Height = 21
              DataField = 'CTPGDVENC'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 10
              YearDigits = dyFour
              OnExit = DBEdit4Exit
            end
            object DBEdit5: TDBEdit
              Left = 175
              Top = 86
              Width = 28
              Height = 21
              DataField = 'CTPGINROPARC'
              DataSource = DSTemplate
              TabOrder = 8
            end
            object EvDBNumEdit2: TEvDBNumEdit
              Left = 485
              Top = 86
              Width = 65
              Height = 21
              AutoHideCalculator = False
              DataField = 'CTPGN2DESCPROMO'
              DataSource = DSTemplate
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              TabOrder = 12
            end
            object DBEdit13: TDBEdit
              Left = 8
              Top = 86
              Width = 66
              Height = 21
              DataField = 'NOCPA30NRO'
              DataSource = DSTemplate
              TabOrder = 6
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 489
              Top = 51
              Width = 155
              Height = 21
              Style = csDropDownList
              DataField = 'CTPGCPREVREAL'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Prevista'
                'Realizada'
                'Pedido Compra')
              TabOrder = 5
              Values.Strings = (
                'P'
                'R'
                'C')
            end
            object DBDateEdit2: TDBDateEdit
              Left = 556
              Top = 86
              Width = 90
              Height = 21
              DataField = 'CTPGDRECBTO'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 13
              YearDigits = dyFour
            end
            object DBEdit16: TDBEdit
              Left = 8
              Top = 15
              Width = 94
              Height = 21
              DataField = 'CTPGA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 402
              Top = 86
              Width = 81
              Height = 21
              AutoHideCalculator = False
              DataField = 'CTPGN3VLR'
              DataSource = DSTemplate
              Glyph.Data = {
                E6020000424DE60200000000000042000000280000001A0000000D0000000100
                100003000000A402000000000000000000000000000000000000007C0000E003
                00001F000000FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF1CEF1C
                EF1CEF1CEF1CEF1CEF1CEF1CEF1CEF1CFF5EFF5EFF5EFF7FEF3DEF3DEF3DEF3D
                EF3DEF3DEF3DEF3DEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1CFF5EFF5EFF5EFF7F
                FF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2C
                FF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EEF3DFF5EFF5EFF5EFF02FF2CFF02FF7FFF02FF7FFF02FF7FFF2CEF1C
                FF5EFF5EFF5EFF7FFF5EEF3DFF7FEF3DFF7FEF3DFF7FFF5EEF3DFF5EFF5EFF5E
                FF02FF2CFF2CFF2CFF2CFF2CFF2CFF2CFF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5EFF5EFF5EFF02FF2C0700FF5EFF5EFF5E
                FF5EFF5EFF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DFF7FFF7FFF7FFF7FFF7FFF5E
                EF3DFF5EFF5EFF5EFF02FF2C0700FF7FFF7FFF7FFF7FFF5EFF2CEF1CFF5EFF5E
                FF5EFF7FFF5EEF3DFF5EFF5EFF5EFF5EFF7FFF5EEF3DFF5EFF5EFF5EFF02FF2C
                070007000700070007000700FF2CEF1CFF5EFF5EFF5EFF7FFF5EEF3DEF3DEF3D
                EF3DEF3DEF3DFF5EEF3DFF5EFF5EFF5EFF02FF2CFF2CFF2CFF2CFF2CFF2CFF2C
                FF2CEF1CFF5EFF5EFF5EFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EEF3DFF5E
                FF5EFF5EFF02FF02FF02FF02FF02FF02FF02FF02FF02EF1CFF5EFF5EFF5EFF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5EFF5E
                FF5EFF5EFF5EFF5EFF5E}
              TabOrder = 11
            end
            object ComboFornec: TRxDBLookupCombo
              Left = 76
              Top = 51
              Width = 375
              Height = 21
              Cursor = crHandPoint
              DropDownCount = 8
              DataField = 'FORNICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'FORNICOD'
              LookupDisplay = 'FORNA60NOMEFANT'
              LookupDisplayIndex = 1
              LookupSource = DSSQLFornecedor
              TabOrder = 4
              OnExit = ComboFornecExit
              OnKeyDown = ComboFornecKeyDown
            end
            object ComboCompetenciaMes: TRxDBComboBox
              Left = 471
              Top = 121
              Width = 112
              Height = 21
              Style = csDropDownList
              DataField = 'CTPGA2MESCOMP'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Janeiro'
                'Fevereio'
                'Mar'#231'o'
                'Abril'
                'Maio'
                'Junho'
                'Julho'
                'Agosto'
                'Setembro'
                'Outubro'
                'Novembro'
                'Dezembro')
              TabOrder = 18
              Values.Strings = (
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
            object ComboAno: TRxDBComboBox
              Left = 583
              Top = 121
              Width = 62
              Height = 21
              DataField = 'CTPGA4ANOCOMP'
              DataSource = DSTemplate
              EnableValues = False
              ItemHeight = 13
              Items.Strings = (
                '2020'
                '2019'
                '2018'
                '2017'
                '2016'
                '2015'
                '2014'
                '2013'
                '2012'
                '2011'
                '2010'
                '2009'
                '2008'
                '2007'
                '2006'
                '2005'
                '2004'
                '2003'
                '2002'
                '2001'
                '2000')
              TabOrder = 19
              Values.Strings = (
                '2020'
                '2019'
                '2018'
                '2017'
                '2016'
                '2015'
                '2014'
                '2013'
                '2012'
                '2011'
                '2010'
                '2009'
                '2008'
                '2007'
                '2006'
                '2005'
                '2004'
                '2003'
                '2002'
                '2001'
                '2000')
            end
            object ComboPortadorCadastro: TRxDBLookupCombo
              Left = 269
              Top = 121
              Width = 170
              Height = 22
              DropDownCount = 8
              DataField = 'PORTICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'PORTICOD'
              LookupDisplay = 'PORTA60DESCR'
              LookupSource = DSSQLPortador
              ParentFont = False
              TabOrder = 17
              OnKeyDown = ComboPortadorCadastroKeyDown
            end
            object DBEdit11: TDBEdit
              Left = 238
              Top = 121
              Width = 29
              Height = 21
              DataField = 'PORTICOD'
              DataSource = DSTemplate
              TabOrder = 16
              OnKeyDown = DBEdit11KeyDown
            end
            object ComboTipoDocCadastro: TRxDBLookupCombo
              Left = 39
              Top = 121
              Width = 170
              Height = 21
              DropDownCount = 8
              DataField = 'TPDCICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'TPDCICOD'
              LookupDisplay = 'TPDCA60DESCR'
              LookupSource = dsSQLTipoDocumento
              ParentFont = False
              TabOrder = 15
              OnKeyDown = ComboTipoDocCadastroKeyDown
            end
            object DBEdit9: TDBEdit
              Left = 8
              Top = 121
              Width = 29
              Height = 21
              DataField = 'TPDCICOD'
              DataSource = DSTemplate
              TabOrder = 14
              OnKeyDown = DBEdit9KeyDown
            end
            object DBEdit14: TDBEdit
              Left = 8
              Top = 159
              Width = 88
              Height = 21
              DataField = 'PLCTA15COD'
              DataSource = DSTemplate
              TabOrder = 20
              OnKeyDown = DBEdit14KeyDown
            end
            object DBEdit15: TDBEdit
              Left = 120
              Top = 160
              Width = 524
              Height = 18
              TabStop = False
              AutoSize = False
              BorderStyle = bsNone
              DataField = 'ContaCalcField'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              TabOrder = 21
            end
            object dbBarras: TDBEdit
              Left = 8
              Top = 197
              Width = 636
              Height = 21
              DataField = 'BARRAS'
              DataSource = DSTemplate
              TabOrder = 22
              OnExit = DBEdit3Exit
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object Gerarparcelasapartirdodocumentoatual1: TMenuItem
      Caption = 'Replicar Lan'#231'amento(s)'
      OnClick = Gerarparcelasapartirdodocumentoatual1Click
    end
    object MnAssistentedeLanamentos: TMenuItem
      Caption = 'Assistente Para Lan'#231'amentos M'#250'ltiplos'
      OnClick = MnAssistentedeLanamentosClick
    end
    object MostrarLancSemPlanoContas: TMenuItem
      Caption = 'Verifica Lan'#231'amentos sem plano de contas'
      OnClick = MostrarLancSemPlanoContasClick
    end
    object MnColocaMesEmissaoNaCompetenciaMes: TMenuItem
      Caption = 'Coloca M'#234's de Emiss'#227'o na Compet'#234'ncia M'#234's'
      OnClick = MnColocaMesEmissaoNaCompetenciaMesClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    AfterInsert = SQLTemplateAfterInsert
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'CONTASPAGAR'
      'Where'
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
    object SQLTemplateCTPGA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'CTPGA13ID'
      Origin = 'DB.CONTASPAGAR.CTPGA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Empresa Lacto'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASPAGAR.EMPRICOD'
    end
    object SQLTemplateCTPGICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Interno'
      FieldName = 'CTPGICOD'
      Origin = 'DB.CONTASPAGAR.CTPGICOD'
    end
    object SQLTemplateFORNICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd.Fornecedor'
      FieldName = 'FORNICOD'
      Origin = 'DB.CONTASPAGAR.FORNICOD'
    end
    object SQLTemplateFornecedorCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'FornecedorCalcField'
      Size = 60
      Calculated = True
    end
    object SQLTemplateEmpresaCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmpresaCalcField'
      Size = 60
      Calculated = True
    end
    object SQLTemplatePLCTA15COD: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASPAGAR.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateContaCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'ContaCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
      Origin = 'DB.CONTASPAGAR.CTPGINROPARC'
    end
    object SQLTemplateCTPGDTEMIS: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CTPGDTEMIS'
      Origin = 'DB.CONTASPAGAR.CTPGDTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTPGA20DOCORIG: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Doc.Origem'
      FieldName = 'CTPGA20DOCORIG'
      Origin = 'DB.CONTASPAGAR.CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLTemplateCTPGDVENC: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Dt.Vencto'
      FieldName = 'CTPGDVENC'
      Origin = 'DB.CONTASPAGAR.CTPGDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateTPDCICOD: TIntegerField
      ConstraintErrorMessage = '1'
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASPAGAR.TPDCICOD'
    end
    object SQLTemplateCTPGA5TIPOPADRAO: TStringField
      FieldName = 'CTPGA5TIPOPADRAO'
      Origin = 'DB.CONTASPAGAR.CTPGA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.CONTASPAGAR.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTPGDULTPAGTO: TDateTimeField
      FieldName = 'CTPGDULTPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGDULTPAGTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTPGN3JUROPAGTO: TFloatField
      FieldName = 'CTPGN3JUROPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3JUROPAGTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCTPGN3MULTAPAGTO: TFloatField
      FieldName = 'CTPGN3MULTAPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3MULTAPAGTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCTPGN3DESCPAGTO: TFloatField
      FieldName = 'CTPGN3DESCPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3DESCPAGTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplatePORTICOD: TIntegerField
      ConstraintErrorMessage = '1'
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASPAGAR.PORTICOD'
    end
    object SQLTemplatePDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.CONTASPAGAR.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASPAGAR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASPAGAR.REGISTRO'
    end
    object SQLTemplateCTPGN2TOTPAG: TFloatField
      DisplayLabel = 'Tot.Pago'
      FieldName = 'CTPGN2TOTPAG'
      Origin = 'DB.CONTASPAGAR.CTPGN2TOTPAG'
    end
    object SQLTemplateCTPGN2DESCPROMO: TFloatField
      FieldName = 'CTPGN2DESCPROMO'
      Origin = 'DB.CONTASPAGAR.CTPGN2DESCPROMO'
    end
    object SQLTemplateCTPGCPREVREAL: TStringField
      DisplayLabel = 'Prevista/Realizada'
      FieldName = 'CTPGCPREVREAL'
      Origin = 'DB.CONTASPAGAR.CTPGCPREVREAL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCTPGN3TXJURO: TFloatField
      FieldName = 'CTPGN3TXJURO'
      Origin = 'DB.CONTASPAGAR.CTPGN3TXJURO'
    end
    object SQLTemplateCTPGN3TXMULTA: TFloatField
      FieldName = 'CTPGN3TXMULTA'
      Origin = 'DB.CONTASPAGAR.CTPGN3TXMULTA'
    end
    object SQLTemplateCTPGA254HIST: TStringField
      FieldName = 'CTPGA254HIST'
      Origin = 'DB.CONTASPAGAR.CTPGA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateNOCPA30NRO: TStringField
      DisplayLabel = 'Numero NF'
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.CONTASPAGAR.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASPAGAR.HTPDICOD'
      OnChange = SQLTemplateHTPDICODChange
    end
    object SQLTemplateHistoricoPadraoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'HistoricoPadraoCalcField'
      Visible = False
      Size = 100
      Calculated = True
    end
    object SQLTemplatePLCTA15CODCREDITO: TStringField
      FieldName = 'PLCTA15CODCREDITO'
      Origin = 'DB.CONTASPAGAR.PLCTA15CODCREDITO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateContaCreditoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'ContaCreditoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTPGDRECBTO: TDateTimeField
      DisplayLabel = 'Dt. Recbto.'
      FieldName = 'CTPGDRECBTO'
      Origin = 'DB.CONTASPAGAR.CTPGDRECBTO'
    end
    object SQLTemplateCTPGN3VLR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CTPGN3VLR'
      Origin = 'DB.CONTASPAGAR.CTPGN3VLR'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCQEMA13ID: TStringField
      FieldName = 'CQEMA13ID'
      Origin = 'DB.CONTASPAGAR.CQEMA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTPGA2MESCOMP: TStringField
      FieldName = 'CTPGA2MESCOMP'
      Origin = 'DB.CONTASPAGAR.CTPGA2MESCOMP'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCTPGA4ANOCOMP: TStringField
      FieldName = 'CTPGA4ANOCOMP'
      Origin = 'DB.CONTASPAGAR.CTPGA4ANOCOMP'
      FixedChar = True
      Size = 4
    end
    object SQLTemplateTipoDocumentoCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoDocumentoCalc'
      Size = 30
      Calculated = True
    end
    object SQLTemplatePortadorCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'PortadorCalc'
      Size = 30
      Calculated = True
    end
    object SQLTemplateBARRAS: TStringField
      DisplayLabel = 'Codigo Barras'
      FieldName = 'BARRAS'
      Origin = 'DB.CONTASPAGAR.BARRAS'
      Size = 254
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update CONTASPAGAR'
      'set'
      '  CTPGA13ID = :CTPGA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  CTPGICOD = :CTPGICOD,'
      '  FORNICOD = :FORNICOD,'
      '  PLCTA15COD = :PLCTA15COD,'
      '  CTPGINROPARC = :CTPGINROPARC,'
      '  CTPGDVENC = :CTPGDVENC,'
      '  CTPGN3VLR = :CTPGN3VLR,'
      '  TPDCICOD = :TPDCICOD,'
      '  CTPGN3TXJURO = :CTPGN3TXJURO,'
      '  CTPGN3TXMULTA = :CTPGN3TXMULTA,'
      '  CTPGA5TIPOPADRAO = :CTPGA5TIPOPADRAO,'
      '  NOCPA13ID = :NOCPA13ID,'
      '  CTPGDULTPAGTO = :CTPGDULTPAGTO,'
      '  CTPGN3JUROPAGTO = :CTPGN3JUROPAGTO,'
      '  CTPGN3MULTAPAGTO = :CTPGN3MULTAPAGTO,'
      '  CTPGN3DESCPAGTO = :CTPGN3DESCPAGTO,'
      '  PDCPA13ID = :PDCPA13ID,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  CTPGA20DOCORIG = :CTPGA20DOCORIG,'
      '  CTPGDTEMIS = :CTPGDTEMIS,'
      '  CTPGN2TOTPAG = :CTPGN2TOTPAG,'
      '  PORTICOD = :PORTICOD,'
      '  CTPGN2DESCPROMO = :CTPGN2DESCPROMO,'
      '  CTPGCPREVREAL = :CTPGCPREVREAL'
      'where'
      '  CTPGA13ID = :OLD_CTPGA13ID')
    InsertSQL.Strings = (
      'insert into CONTASPAGAR'
      
        '  (CTPGA13ID, EMPRICOD, CTPGICOD, FORNICOD, PLCTA15COD, CTPGINRO' +
        'PARC, CTPGDVENC, '
      
        '   CTPGN3VLR, TPDCICOD, CTPGN3TXJURO, CTPGN3TXMULTA, CTPGA5TIPOP' +
        'ADRAO, '
      
        '   NOCPA13ID, CTPGDULTPAGTO, CTPGN3JUROPAGTO, CTPGN3MULTAPAGTO, ' +
        'CTPGN3DESCPAGTO, '
      
        '   PDCPA13ID, PENDENTE, REGISTRO, CTPGA20DOCORIG, CTPGDTEMIS, CT' +
        'PGN2TOTPAG, '
      '   PORTICOD, CTPGN2DESCPROMO, CTPGCPREVREAL)'
      'values'
      
        '  (:CTPGA13ID, :EMPRICOD, :CTPGICOD, :FORNICOD, :PLCTA15COD, :CT' +
        'PGINROPARC, '
      
        '   :CTPGDVENC, :CTPGN3VLR, :TPDCICOD, :CTPGN3TXJURO, :CTPGN3TXMU' +
        'LTA, :CTPGA5TIPOPADRAO, '
      
        '   :NOCPA13ID, :CTPGDULTPAGTO, :CTPGN3JUROPAGTO, :CTPGN3MULTAPAG' +
        'TO, :CTPGN3DESCPAGTO, '
      
        '   :PDCPA13ID, :PENDENTE, :REGISTRO, :CTPGA20DOCORIG, :CTPGDTEMI' +
        'S, :CTPGN2TOTPAG, '
      '   :PORTICOD, :CTPGN2DESCPROMO, :CTPGCPREVREAL)')
    DeleteSQL.Strings = (
      'delete from CONTASPAGAR'
      'where'
      '  CTPGA13ID = :OLD_CTPGA13ID')
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 439
    Top = 1
  end
  object SQLPagamento: TRxQuery
    OnCalcFields = SQLPagamentoCalcFields
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  PAGAMENTO'
      'where '
      '  CTPGA13ID = :CTPGA13ID'
      'order by '
      '  PAGADPAGTO')
    Macros = <>
    Left = 468
    Top = 1
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTPGA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLPagamentoCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      Origin = 'DB.PAGAMENTO.CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPagamentoPAGAICOD: TIntegerField
      FieldName = 'PAGAICOD'
      Origin = 'DB.PAGAMENTO.PAGAICOD'
    end
    object SQLPagamentoPAGADPAGTO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'PAGADPAGTO'
      Origin = 'DB.PAGAMENTO.PAGADPAGTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLPagamentoPAGAN3VLRJURO: TFloatField
      DisplayLabel = 'Vlr.Juros'
      FieldName = 'PAGAN3VLRJURO'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRJURO'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoPAGAN3VLRMULTA: TFloatField
      DisplayLabel = 'Vlr.Multa'
      FieldName = 'PAGAN3VLRMULTA'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRMULTA'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoPAGAN3VLRDESC: TFloatField
      DisplayLabel = 'Vlr.Desc'
      FieldName = 'PAGAN3VLRDESC'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRDESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoVlrTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VlrTotal'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLPagamentoPLCTA15CREDITO: TStringField
      FieldName = 'PLCTA15CREDITO'
      Origin = 'DB.PAGAMENTO.PLCTA15CREDITO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CREDITOLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CREDITOLookup'
      LookupDataSet = SQLConta
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CREDITO'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODJUROCRED: TStringField
      FieldName = 'PLCTA15CODJUROCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODJUROCRED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODJUROCREDLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODJUROCREDLookup'
      LookupDataSet = SQLConta
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODJUROCRED'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODMULTCRED: TStringField
      FieldName = 'PLCTA15CODMULTCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODMULTCRED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODMULTCREDLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODMULTCREDLookup'
      LookupDataSet = SQLConta
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODMULTCRED'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODDESCCRED: TStringField
      FieldName = 'PLCTA15CODDESCCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODDESCCRED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODDESCCREDLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODDESCCREDLookup'
      LookupDataSet = SQLConta
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODDESCCRED'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15DEBITO: TStringField
      FieldName = 'PLCTA15DEBITO'
      Origin = 'DB.PAGAMENTO.PLCTA15DEBITO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15DEBITOLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15DEBITOLookup'
      LookupDataSet = SQLConta
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15DEBITO'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODJURODEB: TStringField
      FieldName = 'PLCTA15CODJURODEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODJURODEB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODJURODEBLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODJURODEBLookup'
      LookupDataSet = SQLConta
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODJURODEB'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODMULTDEB: TStringField
      FieldName = 'PLCTA15CODMULTDEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODMULTDEB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODMULTDEBLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODMULTDEBLookup'
      LookupDataSet = SQLConta
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODMULTDEB'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODDESCDEB: TStringField
      FieldName = 'PLCTA15CODDESCDEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODDESCDEB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODDESCDEBLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODDESCDEBLookup'
      LookupDataSet = SQLConta
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODDESCDEB'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPAGAA254HISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'PAGAA254HISTORICO'
      Origin = 'DB.PAGAMENTO.PAGAA254HISTORICO'
      Size = 254
    end
    object SQLPagamentoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.PAGAMENTO.TPLQICOD'
    end
    object SQLPagamentoTipoLiquidacaoCalc: TStringField
      DisplayLabel = 'Tipo de Liquida'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'TipoLiquida'#231#227'oCalc'
      Size = 60
      Calculated = True
    end
    object SQLPagamentoPAGAN3VLRPAGTO: TFloatField
      FieldName = 'PAGAN3VLRPAGTO'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRPAGTO'
    end
  end
  object DSSQLPagamento: TDataSource
    AutoEdit = False
    DataSet = SQLPagamento
    Left = 496
    Top = 1
  end
  object SQLEspelhoNovoLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONTASPAGAR'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 528
    Top = 1
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT FORNICOD, FORNA60NOMEFANT FROM FORNECEDOR'
      'ORDER BY FORNA60NOMEFANT')
    Macros = <>
    Left = 72
    Top = 200
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 44
    Top = 200
  end
  object SQLConta: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANODECONTAS Where '
      'PLCTCANALSINT = '#39'A'#39)
    Macros = <>
    Left = 72
    Top = 256
  end
  object DSSQLConta: TDataSource
    DataSet = SQLConta
    Left = 44
    Top = 256
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 44
    Top = 284
  end
  object dsSQLTipoDocumento: TDataSource
    DataSet = SQLTipoDocumento
    Left = 44
    Top = 228
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select TPDCICOD,TPDCA60DESCR '
      'From TipoDocumento'
      'Order By TPDCA60DESCR')
    Macros = <>
    Left = 72
    Top = 228
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select PORTICOD,PORTA60DESCR '
      'From PORTADOR'
      'Order By PORTA60DESCR')
    Macros = <>
    Left = 72
    Top = 284
  end
end
