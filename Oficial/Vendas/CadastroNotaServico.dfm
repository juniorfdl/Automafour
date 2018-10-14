inherited FormCadastroNotaServico: TFormCadastroNotaServico
  Left = 44
  Top = 16
  Caption = 'Nota Fiscal de Servi'#231'os(RPS/NFS-e)'
  ClientHeight = 646
  ClientWidth = 1253
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1253
    Height = 646
    inherited PanelCabecalho: TPanel
      Width = 1251
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 1251
        inherited Panel1: TPanel
          Width = 1249
          inherited PanelNavigator: TPanel
            Width = 1249
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 1249
            end
          end
          inherited PanelLeft: TPanel
            Left = 792
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 1251
      Height = 572
      inherited PanelBarra: TPanel
        Height = 572
      end
      inherited PanelFundoDados: TPanel
        Width = 1121
        Height = 572
        inherited Panel5: TPanel
          Width = 1121
          Height = 572
          inherited PagePrincipal: TPageControl
            Top = 44
            Width = 1121
            Height = 528
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 1113
                Height = 455
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO_NOTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUMERO_RPS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERIE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TIPO'
                    Title.Caption = 'Tipo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_EMISSAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CODIGO_VERIFICACAO'
                    Title.Caption = 'C'#243'digo Verifica'#231#227'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'STATUS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UF_PRESTACAO'
                    Title.Caption = 'UF Presta'#231#227'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MUNICIPIO_PRESTACAO'
                    Title.Caption = 'Munic'#237'pio Presta'#231#227'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_SERVICO'
                    Title.Caption = 'Valor do Servi'#231'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_DEDUCAO'
                    Title.Caption = 'Valor Dedu'#231#227'o'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OUTRAS_RETENCOES'
                    Title.Caption = 'Outras Reten'#231#245'es'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ALIQUOTA_ISS'
                    Title.Caption = 'Al'#237'quota ISS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BASE_CALCULO_ISS'
                    Title.Caption = 'Base C'#225'lculo ISS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_ISS'
                    Title.Caption = 'Valor Iss'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_PIS'
                    Title.Caption = 'Valor Pis'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_COFINS'
                    Title.Caption = 'Valor Cofins'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_INSS'
                    Title.Caption = 'Valor Inss'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_IRPJ'
                    Title.Caption = 'Valor IRPJ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_CSSL'
                    Title.Caption = 'Valor CSSL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR_TOTAL'
                    Title.Caption = 'Valor Total'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 1113
                inherited PanelBetween: TPanel
                  Width = 719
                  inherited AdvPanel1: TAdvPanel
                    Width = 719
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 719
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 719
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object GroupBox1: TGroupBox
                Left = 0
                Top = 332
                Width = 1113
                Height = 93
                Align = alTop
                Caption = 'Descri'#231#227'o dos Servi'#231'os Prestados'
                TabOrder = 0
                object DBMemo1: TDBMemo
                  Left = 2
                  Top = 15
                  Width = 1109
                  Height = 76
                  Align = alClient
                  DataField = 'DESCRICAO_SERVICO'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
              end
              object GroupBox2: TGroupBox
                Left = 0
                Top = 0
                Width = 1113
                Height = 213
                Align = alTop
                Caption = 'Dados da NFSe / Tomador de Servi'#231'o'
                TabOrder = 1
                object Label14: TLabel
                  Left = 9
                  Top = 17
                  Width = 42
                  Height = 13
                  Caption = 'ID Nota'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 419
                  Top = 17
                  Width = 29
                  Height = 13
                  Caption = 'S'#233'rie'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 195
                  Top = 19
                  Width = 74
                  Height = 13
                  Caption = 'N'#250'mero NFSe'
                  FocusControl = DBEdit10
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 93
                  Top = 19
                  Width = 76
                  Height = 13
                  Caption = 'Data Emiss'#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 472
                  Top = 17
                  Width = 37
                  Height = 13
                  Caption = 'Status'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 307
                  Top = 19
                  Width = 69
                  Height = 13
                  Caption = 'N'#250'mero RPS'
                  FocusControl = DBEdit11
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 663
                  Top = 17
                  Width = 138
                  Height = 13
                  Caption = 'C'#243'digo verifica'#231#227'o NFS-e'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 7
                  Top = 58
                  Width = 83
                  Height = 13
                  Caption = 'C'#243'digo Servi'#231'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 471
                  Top = 58
                  Width = 192
                  Height = 13
                  Caption = 'C'#243'digo de Tributa'#231#227'o no Munic'#237'pio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object btnConsultaCliente: TSpeedButton
                  Left = 107
                  Top = 110
                  Width = 20
                  Height = 20
                  Hint = 'Acessa Clientes'
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
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnConsultaClienteClick
                end
                object Label23: TLabel
                  Left = 7
                  Top = 96
                  Width = 80
                  Height = 13
                  Caption = 'C'#243'digo Cliente'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label24: TLabel
                  Left = 133
                  Top = 96
                  Width = 160
                  Height = 13
                  Caption = 'Raz'#227'o Social/Nome Fantasia'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label25: TLabel
                  Left = 573
                  Top = 96
                  Width = 27
                  Height = 13
                  Caption = 'CNPJ'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label26: TLabel
                  Left = 7
                  Top = 167
                  Width = 67
                  Height = 13
                  Caption = 'Oberva'#231#245'es'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label13: TLabel
                  Left = 7
                  Top = 132
                  Width = 142
                  Height = 13
                  Caption = 'Condi'#231#245'es de Pagamento'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label28: TLabel
                  Left = 307
                  Top = 132
                  Width = 110
                  Height = 13
                  Caption = 'Local de Tributa'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label29: TLabel
                  Left = 581
                  Top = 132
                  Width = 192
                  Height = 13
                  Caption = 'Munic'#237'pio da Presta'#231#227'o de Servi'#231'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label30: TLabel
                  Left = 516
                  Top = 132
                  Width = 14
                  Height = 13
                  Caption = 'UF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object btnConsultaServico: TSpeedButton
                  Left = 107
                  Top = 72
                  Width = 20
                  Height = 20
                  Hint = 'Acessa Clientes'
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
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnConsultaServicoClick
                end
                object Label31: TLabel
                  Left = 134
                  Top = 58
                  Width = 100
                  Height = 13
                  Caption = 'Descri'#231#227'o Servi'#231'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit9: TDBEdit
                  Left = 7
                  Top = 31
                  Width = 81
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'ID'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object RxDBLookupCombo3: TRxDBLookupCombo
                  Left = 419
                  Top = 32
                  Width = 48
                  Height = 20
                  DropDownCount = 8
                  Ctl3D = True
                  DataField = 'SERIE'
                  DataSource = DSTemplate
                  LookupField = 'SERIA5COD'
                  LookupDisplay = 'SERIA5COD'
                  LookupSource = DSSQLSerie
                  ParentCtl3D = False
                  TabOrder = 4
                end
                object DBEdit10: TDBEdit
                  Tag = 1
                  Left = 195
                  Top = 31
                  Width = 107
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'NUMERO_NOTA'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object DBDateEdit1: TDBDateEdit
                  Left = 93
                  Top = 31
                  Width = 97
                  Height = 21
                  DataField = 'DATA_EMISSAO'
                  DataSource = DSTemplate
                  NumGlyphs = 2
                  TabOrder = 1
                end
                object DBEdit11: TDBEdit
                  Left = 307
                  Top = 31
                  Width = 107
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'NUMERO_RPS'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object DBEdit12: TDBEdit
                  Left = 472
                  Top = 31
                  Width = 186
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'STATUS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
                object DBEdit13: TDBEdit
                  Left = 663
                  Top = 31
                  Width = 153
                  Height = 21
                  CharCase = ecUpperCase
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CODIGO_VERIFICACAO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 6
                end
                object RxDBLookupCombo5: TRxDBLookupCombo
                  Left = 471
                  Top = 73
                  Width = 347
                  Height = 20
                  DropDownCount = 8
                  Ctl3D = True
                  DataField = 'ID_TRIBUTACAO'
                  DataSource = DSTemplate
                  LookupField = 'ID'
                  LookupDisplay = 'SUBITEM'
                  LookupSource = DSSQLTributacao
                  ParentCtl3D = False
                  TabOrder = 9
                end
                object DBEdit14: TDBEdit
                  Left = 6
                  Top = 110
                  Width = 100
                  Height = 21
                  DataField = 'CLIEA13ID'
                  DataSource = DSTemplate
                  TabOrder = 10
                  OnKeyDown = DBEdit14KeyDown
                end
                object DBEdit15: TDBEdit
                  Left = 132
                  Top = 110
                  Width = 436
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'NomeClienteLookUp'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 11
                end
                object DBEdit16: TDBEdit
                  Left = 573
                  Top = 110
                  Width = 242
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'DocumentoClienteLookUp'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 12
                end
                object RxDBLookupCombo1: TRxDBLookupCombo
                  Left = 7
                  Top = 147
                  Width = 296
                  Height = 20
                  DropDownCount = 8
                  Ctl3D = True
                  DataField = 'PLRCICOD'
                  DataSource = DSTemplate
                  LookupField = 'PLRCICOD'
                  LookupDisplay = 'PLRCA60DESCR'
                  LookupSource = DSSQLPlanoRecebimento
                  ParentCtl3D = False
                  TabOrder = 13
                end
                object RxDBLookupCombo4: TRxDBLookupCombo
                  Left = 581
                  Top = 147
                  Width = 235
                  Height = 20
                  DropDownCount = 8
                  Ctl3D = True
                  DataField = 'MUNICIPIO_PRESTACAO'
                  DataSource = DSTemplate
                  LookupField = 'NOME'
                  LookupDisplay = 'NOME'
                  LookupSource = DSSQLCidade
                  ParentCtl3D = False
                  TabOrder = 16
                end
                object RxDBComboBox1: TRxDBComboBox
                  Left = 305
                  Top = 146
                  Width = 208
                  Height = 21
                  Style = csDropDownList
                  DataField = 'LOCAL_TRIBUTACAO'
                  DataSource = DSTemplate
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    '1 - Tributa'#231#227'o no munic'#237'pio'
                    '2 - Tributa'#231#227'o fora do munic'#237'pio'
                    '3 - Isen'#231#227'o'
                    '4 - Imune'
                    '5 - Exigibilidade suspensa por decis'#227'o judicial'
                    '6 - Exigilibidade suspensa por procedimento adm')
                  TabOrder = 14
                  Values.Strings = (
                    '1'
                    '2'
                    '3'
                    '4'
                    '5'
                    '6')
                end
                object DBEdit28: TDBEdit
                  Left = 6
                  Top = 72
                  Width = 100
                  Height = 21
                  DataField = 'ID_SERVICO'
                  DataSource = DSTemplate
                  TabOrder = 7
                  OnKeyDown = DBEdit14KeyDown
                end
                object DBEdit29: TDBEdit
                  Left = 132
                  Top = 72
                  Width = 335
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'NomeServicoLookUP'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 8
                end
                object dbedtUF: TDBEdit
                  Left = 516
                  Top = 146
                  Width = 57
                  Height = 21
                  Ctl3D = True
                  DataField = 'UF_PRESTACAO'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 15
                end
                object DBMemo2: TDBMemo
                  Left = 7
                  Top = 179
                  Width = 1103
                  Height = 23
                  DataField = 'OBS'
                  DataSource = DSTemplate
                  TabOrder = 17
                end
              end
              object GroupBox3: TGroupBox
                Left = 0
                Top = 425
                Width = 1113
                Height = 73
                Align = alTop
                Caption = 'Totais'
                TabOrder = 2
                object GroupBox5: TGroupBox
                  Left = 13
                  Top = 19
                  Width = 157
                  Height = 45
                  Caption = 'Valor dos Servi'#231'os'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object DBEdit22: TDBEdit
                    Left = 11
                    Top = 15
                    Width = 138
                    Height = 24
                    Color = cl3DDkShadow
                    Ctl3D = True
                    DataField = 'VALOR_SERVICO'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindow
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentCtl3D = False
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object GroupBox6: TGroupBox
                  Left = 175
                  Top = 19
                  Width = 157
                  Height = 45
                  Caption = 'Valor do ISS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  object DBEdit24: TDBEdit
                    Left = 11
                    Top = 15
                    Width = 138
                    Height = 24
                    Color = cl3DDkShadow
                    Ctl3D = True
                    DataField = 'VALOR_ISS'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindow
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentCtl3D = False
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object GroupBox7: TGroupBox
                  Left = 498
                  Top = 19
                  Width = 157
                  Height = 45
                  Caption = 'Dedu'#231#245'es'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  object DBEdit25: TDBEdit
                    Left = 11
                    Top = 15
                    Width = 138
                    Height = 24
                    Color = cl3DDkShadow
                    Ctl3D = True
                    DataField = 'NUMERO_RPS'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindow
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentCtl3D = False
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object GroupBox8: TGroupBox
                  Left = 336
                  Top = 19
                  Width = 157
                  Height = 45
                  Caption = 'Valor Reten'#231#245'es'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                  object DBEdit26: TDBEdit
                    Left = 11
                    Top = 15
                    Width = 138
                    Height = 24
                    Color = cl3DDkShadow
                    Ctl3D = True
                    DataField = 'NUMERO_RPS'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindow
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentCtl3D = False
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object GroupBox9: TGroupBox
                  Left = 660
                  Top = 19
                  Width = 157
                  Height = 45
                  Caption = 'Valor L'#237'quido da Nota'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 4
                  object DBEdit27: TDBEdit
                    Left = 11
                    Top = 15
                    Width = 138
                    Height = 24
                    Color = cl3DDkShadow
                    Ctl3D = True
                    DataField = 'NUMERO_RPS'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindow
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentCtl3D = False
                    ParentFont = False
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
              end
              object GroupBox4: TGroupBox
                Left = 0
                Top = 213
                Width = 1113
                Height = 119
                Align = alTop
                Caption = 'Valores / Impostos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                object Label1: TLabel
                  Left = 7
                  Top = 15
                  Width = 91
                  Height = 13
                  Caption = 'Valor do Servi'#231'o'
                  FocusControl = DBEdit1
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 122
                  Top = 15
                  Width = 87
                  Height = 13
                  Caption = 'Valor Dedu'#231#245'es'
                  FocusControl = DBEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 236
                  Top = 15
                  Width = 85
                  Height = 13
                  Caption = 'Valor Desconto'
                  FocusControl = DBEdit3
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label4: TLabel
                  Left = 351
                  Top = 15
                  Width = 101
                  Height = 13
                  Caption = 'Outras Reten'#231#245'es'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 466
                  Top = 15
                  Width = 92
                  Height = 13
                  Caption = 'Al'#237'quota ISS(%)'
                  FocusControl = DBEdit5
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 580
                  Top = 15
                  Width = 92
                  Height = 13
                  Caption = 'Base C'#225'lculo ISS'
                  FocusControl = DBEdit6
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 695
                  Top = 15
                  Width = 51
                  Height = 13
                  Caption = 'Valor ISS'
                  FocusControl = DBEdit7
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 7
                  Top = 53
                  Width = 51
                  Height = 13
                  Caption = 'Valor PIS'
                  FocusControl = DBEdit8
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 122
                  Top = 53
                  Width = 72
                  Height = 13
                  Caption = 'Valor COFINS'
                  FocusControl = DBEdit17
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 236
                  Top = 53
                  Width = 58
                  Height = 13
                  Caption = 'Valor INSS'
                  FocusControl = DBEdit19
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 351
                  Top = 53
                  Width = 58
                  Height = 13
                  Caption = 'Valor IRPJ'
                  FocusControl = DBEdit20
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 466
                  Top = 53
                  Width = 59
                  Height = 13
                  Caption = 'Valor CSSL'
                  FocusControl = DBEdit21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label27: TLabel
                  Left = 582
                  Top = 53
                  Width = 90
                  Height = 13
                  Caption = 'Valor Total Nota'
                  FocusControl = DBEdit23
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit1: TDBEdit
                  Left = 7
                  Top = 27
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'VALOR_SERVICO'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 0
                end
                object DBEdit2: TDBEdit
                  Left = 122
                  Top = 27
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'VALOR_DEDUCAO'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 1
                end
                object DBEdit3: TDBEdit
                  Left = 236
                  Top = 27
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  ParentCtl3D = False
                  TabOrder = 2
                end
                object DBEdit4: TDBEdit
                  Left = 351
                  Top = 27
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'OUTRAS_RETENCOES'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 3
                end
                object DBEdit5: TDBEdit
                  Left = 466
                  Top = 27
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'ALIQUOTA_ISS'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 4
                end
                object DBEdit6: TDBEdit
                  Left = 580
                  Top = 27
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'BASE_CALCULO_ISS'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 5
                end
                object DBEdit7: TDBEdit
                  Left = 695
                  Top = 27
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'VALOR_ISS'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 6
                end
                object DBEdit8: TDBEdit
                  Left = 7
                  Top = 65
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'VALOR_PIS'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 7
                end
                object DBEdit17: TDBEdit
                  Left = 122
                  Top = 65
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'VALOR_COFINS'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 8
                end
                object DBEdit19: TDBEdit
                  Left = 236
                  Top = 65
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'VALOR_INSS'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 9
                end
                object DBEdit20: TDBEdit
                  Left = 351
                  Top = 65
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'VALOR_IRPJ'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 10
                end
                object DBEdit21: TDBEdit
                  Left = 466
                  Top = 65
                  Width = 112
                  Height = 21
                  Ctl3D = True
                  DataField = 'VALOR_CSSL'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  TabOrder = 11
                end
                object DBEdit23: TDBEdit
                  Left = 582
                  Top = 65
                  Width = 112
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'VALOR_TOTAL'
                  DataSource = DSTemplate
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 12
                end
                object chkPIS_RETIDO: TDBCheckBox
                  Left = 7
                  Top = 90
                  Width = 97
                  Height = 17
                  Caption = 'PIS Retido'
                  DataField = 'PIS_RETIDO'
                  DataSource = DSTemplate
                  TabOrder = 14
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkCOFINS_RETIDO: TDBCheckBox
                  Left = 122
                  Top = 90
                  Width = 97
                  Height = 17
                  Caption = 'COFINS Retido'
                  DataField = 'COFINS_RETIDO'
                  DataSource = DSTemplate
                  TabOrder = 15
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkINSS_RETIDO: TDBCheckBox
                  Left = 236
                  Top = 90
                  Width = 97
                  Height = 17
                  Caption = 'INSS Retido'
                  DataField = 'INSS_RETIDO'
                  DataSource = DSTemplate
                  TabOrder = 16
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkIRPJ_RETIDO: TDBCheckBox
                  Left = 351
                  Top = 90
                  Width = 97
                  Height = 17
                  Caption = 'IRPJ Retido'
                  DataField = 'IRPJ_RETIDO'
                  DataSource = DSTemplate
                  TabOrder = 17
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkCSSL_RETIDO: TDBCheckBox
                  Left = 466
                  Top = 90
                  Width = 97
                  Height = 17
                  Caption = 'CSSL Retido'
                  DataField = 'CSSL_RETIDO'
                  DataSource = DSTemplate
                  TabOrder = 18
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkISS_RETIDO: TDBCheckBox
                  Left = 695
                  Top = 52
                  Width = 97
                  Height = 17
                  Caption = 'ISS Retido'
                  DataField = 'ISS_RETIDO'
                  DataSource = DSTemplate
                  TabOrder = 13
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 22
            Width = 1121
            Height = 22
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 1121
            Height = 22
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    AfterInsert = SQLTemplateAfterInsert
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From NOTASERVICO Where (%MFiltro)')
    object SQLTemplateID: TIntegerField
      Tag = 1
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'DB.NOTASERVICO.ID'
    end
    object SQLTemplateNUMERO_NOTA: TIntegerField
      DisplayLabel = 'N'#250'mero Nota'
      FieldName = 'NUMERO_NOTA'
      Origin = 'DB.NOTASERVICO.NUMERO_NOTA'
    end
    object SQLTemplateNUMERO_RPS: TIntegerField
      DisplayLabel = 'N'#250'mero RPS'
      FieldName = 'NUMERO_RPS'
      Origin = 'DB.NOTASERVICO.NUMERO_RPS'
    end
    object SQLTemplateSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = 'DB.NOTASERVICO.SERIE'
      Size = 10
    end
    object SQLTemplateTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'DB.NOTASERVICO.TIPO'
      Size = 3
    end
    object SQLTemplateDATA_EMISSAO: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMISSAO'
      Origin = 'DB.NOTASERVICO.DATA_EMISSAO'
    end
    object SQLTemplateCODIGO_VERIFICACAO: TStringField
      FieldName = 'CODIGO_VERIFICACAO'
      Origin = 'DB.NOTASERVICO.CODIGO_VERIFICACAO'
      Size = 25
    end
    object SQLTemplateSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'DB.NOTASERVICO.STATUS'
      Size = 5
    end
    object SQLTemplateID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      Origin = 'DB.NOTASERVICO.ID_SERVICO'
    end
    object SQLTemplateCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.NOTASERVICO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.NOTASERVICO.PLRCICOD'
    end
    object SQLTemplateLOCAL_TRIBUTACAO: TIntegerField
      FieldName = 'LOCAL_TRIBUTACAO'
      Origin = 'DB.NOTASERVICO.LOCAL_TRIBUTACAO'
    end
    object SQLTemplateUF_PRESTACAO: TStringField
      FieldName = 'UF_PRESTACAO'
      Origin = 'DB.NOTASERVICO.UF_PRESTACAO'
      OnChange = SQLTemplateUF_PRESTACAOChange
      Size = 10
    end
    object SQLTemplateMUNICIPIO_PRESTACAO: TStringField
      FieldName = 'MUNICIPIO_PRESTACAO'
      Origin = 'DB.NOTASERVICO.MUNICIPIO_PRESTACAO'
      Size = 50
    end
    object SQLTemplateVALOR_SERVICO: TFloatField
      FieldName = 'VALOR_SERVICO'
      Origin = 'DB.NOTASERVICO.VALOR_SERVICO'
      OnChange = SQLTemplateVALOR_SERVICOChange
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateVALOR_DEDUCAO: TFloatField
      FieldName = 'VALOR_DEDUCAO'
      Origin = 'DB.NOTASERVICO.VALOR_DEDUCAO'
      OnChange = SQLTemplateVALOR_DEDUCAOChange
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateOUTRAS_RETENCOES: TFloatField
      FieldName = 'OUTRAS_RETENCOES'
      Origin = 'DB.NOTASERVICO.OUTRAS_RETENCOES'
      OnChange = SQLTemplateOUTRAS_RETENCOESChange
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
      Origin = 'DB.NOTASERVICO.ALIQUOTA_ISS'
      OnChange = SQLTemplateALIQUOTA_ISSChange
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateBASE_CALCULO_ISS: TFloatField
      FieldName = 'BASE_CALCULO_ISS'
      Origin = 'DB.NOTASERVICO.BASE_CALCULO_ISS'
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
      Origin = 'DB.NOTASERVICO.VALOR_ISS'
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateVALOR_PIS: TFloatField
      FieldName = 'VALOR_PIS'
      Origin = 'DB.NOTASERVICO.VALOR_PIS'
      OnChange = SQLTemplateVALOR_PISChange
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateVALOR_COFINS: TFloatField
      FieldName = 'VALOR_COFINS'
      Origin = 'DB.NOTASERVICO.VALOR_COFINS'
      OnChange = SQLTemplateVALOR_COFINSChange
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateVALOR_INSS: TFloatField
      FieldName = 'VALOR_INSS'
      Origin = 'DB.NOTASERVICO.VALOR_INSS'
      OnChange = SQLTemplateVALOR_INSSChange
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateVALOR_IRPJ: TFloatField
      FieldName = 'VALOR_IRPJ'
      Origin = 'DB.NOTASERVICO.VALOR_IRPJ'
      OnChange = SQLTemplateVALOR_IRPJChange
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateVALOR_CSSL: TFloatField
      FieldName = 'VALOR_CSSL'
      Origin = 'DB.NOTASERVICO.VALOR_CSSL'
      OnChange = SQLTemplateVALOR_CSSLChange
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplatePIS_RETIDO: TStringField
      FieldName = 'PIS_RETIDO'
      Origin = 'DB.NOTASERVICO.PIS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCOFINS_RETIDO: TStringField
      FieldName = 'COFINS_RETIDO'
      Origin = 'DB.NOTASERVICO.COFINS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateINSS_RETIDO: TStringField
      FieldName = 'INSS_RETIDO'
      Origin = 'DB.NOTASERVICO.INSS_RETIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateIRPJ_RETIDO: TStringField
      FieldName = 'IRPJ_RETIDO'
      Origin = 'DB.NOTASERVICO.IRPJ_RETIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCSSL_RETIDO: TStringField
      FieldName = 'CSSL_RETIDO'
      Origin = 'DB.NOTASERVICO.CSSL_RETIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateISS_RETIDO: TStringField
      FieldName = 'ISS_RETIDO'
      Origin = 'DB.NOTASERVICO.ISS_RETIDO'
      OnChange = SQLTemplateISS_RETIDOChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Origin = 'DB.NOTASERVICO.VALOR_TOTAL'
      DisplayFormat = '#.##0.00'
    end
    object SQLTemplateDESCRICAO_SERVICO: TBlobField
      FieldName = 'DESCRICAO_SERVICO'
      Origin = 'DB.NOTASERVICO.DESCRICAO_SERVICO'
      Size = 1
    end
    object SQLTemplateOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'DB.NOTASERVICO.OBS'
      Size = 1
    end
    object SQLTemplateNomeClienteLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeClienteLookUp'
      Size = 100
      Calculated = True
    end
    object SQLTemplateDocumentoClienteLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'DocumentoClienteLookUp'
      Calculated = True
    end
    object SQLTemplateID_TRIBUTACAO: TIntegerField
      FieldName = 'ID_TRIBUTACAO'
      Origin = 'DB.NOTASERVICO.ID_TRIBUTACAO'
      OnChange = SQLTemplateID_TRIBUTACAOChange
    end
    object SQLTemplateNomeServicoLookUP: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeServicoLookUP'
      Size = 10
      Calculated = True
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTASERVICO.EMPRICOD'
    end
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANORECEBIMENTO'
      'Where PLRCFATCASH <> '#39'C'#39
      'ORDER BY PLRCA60DESCR')
    Macros = <>
    Left = 1087
    Top = 270
    object SQLPlanoRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoRecebimentoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoRecebimentoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCFATCASH: TStringField
      FieldName = 'PLRCFATCASH'
      Origin = 'DB.PLANORECEBIMENTO.PLRCFATCASH'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLPlanoRecebimento: TDataSource
    AutoEdit = False
    DataSet = SQLPlanoRecebimento
    Left = 1120
    Top = 270
  end
  object SQLTributacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TRIBUTACAO_NFSE')
    Macros = <>
    Left = 1087
    Top = 230
    object SQLTributacaoID: TIntegerField
      FieldName = 'ID'
      Origin = 'DB.TRIBUTACAO_NFSE.ID'
    end
    object SQLTributacaoCODIGO_TRIBUTACAO: TStringField
      FieldName = 'CODIGO_TRIBUTACAO'
      Origin = 'DB.TRIBUTACAO_NFSE.CODIGO_TRIBUTACAO'
      Size = 15
    end
    object SQLTributacaoSUBITEM: TStringField
      FieldName = 'SUBITEM'
      Origin = 'DB.TRIBUTACAO_NFSE.SUBITEM'
      Size = 10
    end
    object SQLTributacaoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = 'DB.TRIBUTACAO_NFSE.ALIQUOTA'
    end
    object SQLTributacaoDESCRICAO_SERVICO: TStringField
      FieldName = 'DESCRICAO_SERVICO'
      Origin = 'DB.TRIBUTACAO_NFSE.DESCRICAO_SERVICO'
      Size = 100
    end
  end
  object DSSQLTributacao: TDataSource
    AutoEdit = False
    DataSet = SQLTributacao
    Left = 1120
    Top = 230
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 1120
    Top = 198
  end
  object SQLSerie: TRxQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From SERIE'
      'Where (%mEmpresa) and SERIA2TIPONOTA = '#39'S'#39)
    Macros = <
      item
        DataType = ftString
        Name = 'mEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 1084
    Top = 198
    object SQLSerieSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLSerieSERIINRONF: TIntegerField
      FieldName = 'SERIINRONF'
      Origin = 'DB.SERIE.SERIINRONF'
    end
    object SQLSeriePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSerieREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SERIE.REGISTRO'
    end
    object SQLSerieSERIA100PATHEXEIMP: TStringField
      FieldName = 'SERIA100PATHEXEIMP'
      Origin = 'DB.SERIE.SERIA100PATHEXEIMP'
      FixedChar = True
      Size = 100
    end
    object SQLSerieEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.SERIE.EMPRICOD'
    end
    object SQLSerieSERIA2TIPONOTA: TStringField
      FieldName = 'SERIA2TIPONOTA'
      Origin = 'DB.SERIE.SERIA2TIPONOTA'
      FixedChar = True
      Size = 2
    end
  end
  object SQLEstado: TRxQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT distinct(SIGLA) FROM CIDADE')
    Macros = <>
    Left = 1092
    Top = 350
    object SQLEstadoSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'DB.CIDADE.SIGLA'
      Size = 2
    end
  end
  object SQLCidade: TRxQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CIDADE WHERE SIGLA = :SIGLA')
    Macros = <>
    Left = 1092
    Top = 382
    ParamData = <
      item
        DataType = ftString
        Name = 'SIGLA'
        ParamType = ptInput
      end>
  end
  object DSSQLCidade: TDataSource
    AutoEdit = False
    DataSet = SQLCidade
    Left = 1128
    Top = 382
  end
end
