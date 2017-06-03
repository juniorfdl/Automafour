inherited FormCadastroManutencaoCupom: TFormCadastroManutencaoCupom
  Tag = 1
  Left = 361
  Top = 109
  Caption = 'Manuten'#231#227'o de Cupom'
  ClientHeight = 542
  ClientWidth = 823
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 823
    Height = 542
    inherited PanelCabecalho: TPanel
      Width = 821
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 821
        inherited Panel1: TPanel
          Width = 819
          inherited PanelNavigator: TPanel
            Width = 819
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 819
              inherited LabelExcluir: TSpeedButton
                Visible = False
              end
            end
          end
          inherited PanelLeft: TPanel
            Left = 362
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 821
      Height = 468
      inherited PanelBarra: TPanel
        Height = 468
        inherited Button3: TRxSpeedButton
          Caption = '&3 Itens da Venda'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 691
        Height = 468
        inherited Panel5: TPanel
          Width = 691
          Height = 468
          inherited PagePrincipal: TPageControl
            Top = 83
            Width = 691
            Height = 385
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 683
                Height = 312
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CUPOA13ID'
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPODEMIS'
                    Width = 62
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ClienteLookup'
                    Width = 280
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2TOTITENS'
                    Width = 72
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2DESC'
                    Width = 56
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2ACRESC'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EmpresaLookup'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TerminalLookup'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PlanoLookup'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VendedorLookup'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOCSTATUS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOINRO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOCTIPOPADRAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2CONVTAXA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOINROORDCOMPRA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOA13IDTROCA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2VLRCOMISSAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOA20CODANT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPODCANC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2JUROATRAS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2MULTAATRAS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPODPAGTOCONSIG'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PENDENTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON3BONUSTROCA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPODENTREGA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPVDICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'USUAICODCANC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON3CREDTAXA'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 683
                inherited PanelBetween: TPanel
                  Width = 289
                  inherited AdvPanel1: TAdvPanel
                    Width = 289
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 289
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 289
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Left = 93
                Lines.Strings = (
                  'CUPOMITEM'
                  'CUPOMNUMERARIO'
                  'CONTASRECEBER')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 683
                Height = 249
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Label4: TLabel
                  Left = 8
                  Top = 4
                  Width = 55
                  Height = 13
                  Caption = 'ID Cliente'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 6
                  Top = 44
                  Width = 31
                  Height = 13
                  Caption = 'Plano'
                  FocusControl = DBEdit5
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 5
                  Top = 82
                  Width = 54
                  Height = 13
                  Caption = 'Vendedor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 316
                  Top = 81
                  Width = 52
                  Height = 13
                  Caption = 'Conv'#234'nio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 91
                  Top = 159
                  Width = 53
                  Height = 13
                  Caption = 'Desconto'
                  FocusControl = DBEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 178
                  Top = 159
                  Width = 59
                  Height = 13
                  Caption = 'Acr'#233'scimo'
                  FocusControl = DBEdit10
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 265
                  Top = 159
                  Width = 69
                  Height = 13
                  Caption = 'B'#244'nus Troca'
                  FocusControl = DBEdit11
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 353
                  Top = 159
                  Width = 61
                  Height = 13
                  Caption = 'Nro.Cupom'
                  FocusControl = DBEdit12
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label13: TLabel
                  Left = 480
                  Top = 159
                  Width = 67
                  Height = 13
                  Caption = 'Tipo Padr'#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 6
                  Top = 121
                  Width = 119
                  Height = 13
                  Caption = 'Opera'#231#227'o de Estoque'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 318
                  Top = 121
                  Width = 28
                  Height = 13
                  Caption = 'CFOP'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit4: TDBEdit
                  Left = 4
                  Top = 18
                  Width = 84
                  Height = 21
                  DataField = 'CLIEA13ID'
                  DataSource = DSTemplate
                  ReadOnly = True
                  TabOrder = 0
                end
                object ComboCliente: TRxDBLookupCombo
                  Left = 89
                  Top = 18
                  Width = 528
                  Height = 21
                  DropDownCount = 8
                  DataField = 'CLIEA13ID'
                  DataSource = DSTemplate
                  LookupField = 'CLIEA13ID'
                  LookupDisplay = 'CLIEA60RAZAOSOC'
                  LookupSource = DSSQLCliente
                  TabOrder = 1
                end
                object DBEdit5: TDBEdit
                  Left = 4
                  Top = 58
                  Width = 84
                  Height = 21
                  DataField = 'PLRCICOD'
                  DataSource = DSTemplate
                  ReadOnly = True
                  TabOrder = 2
                end
                object ComboPlano: TRxDBLookupCombo
                  Left = 89
                  Top = 58
                  Width = 528
                  Height = 21
                  DropDownCount = 8
                  DataField = 'PLRCICOD'
                  DataSource = DSTemplate
                  LookupField = 'PLRCICOD'
                  LookupDisplay = 'PLRCA60DESCR'
                  LookupSource = DSSQLPlanoRecebimento
                  ReadOnly = True
                  TabOrder = 3
                end
                object ComboVendedor: TRxDBLookupCombo
                  Left = 4
                  Top = 95
                  Width = 309
                  Height = 21
                  DropDownCount = 8
                  DataField = 'VENDICOD'
                  DataSource = DSTemplate
                  LookupField = 'VENDICOD'
                  LookupDisplay = 'VENDA60NOME'
                  LookupSource = DSSQLVendedor
                  TabOrder = 4
                end
                object RxDBLookupCombo5: TRxDBLookupCombo
                  Left = 314
                  Top = 95
                  Width = 303
                  Height = 21
                  DropDownCount = 8
                  DataField = 'CONVICOD'
                  DataSource = DSTemplate
                  LookupField = 'VENDICOD'
                  LookupDisplay = 'VENDA60NOME'
                  LookupSource = DSSQLVendedor
                  TabOrder = 5
                end
                object DBEdit9: TDBEdit
                  Left = 91
                  Top = 173
                  Width = 84
                  Height = 21
                  DataField = 'CUPON2DESC'
                  DataSource = DSTemplate
                  TabOrder = 8
                end
                object DBEdit10: TDBEdit
                  Left = 178
                  Top = 173
                  Width = 84
                  Height = 21
                  DataField = 'CUPON2ACRESC'
                  DataSource = DSTemplate
                  TabOrder = 9
                end
                object DBEdit11: TDBEdit
                  Left = 265
                  Top = 173
                  Width = 84
                  Height = 21
                  DataField = 'CUPON2ACRESC'
                  DataSource = DSTemplate
                  TabOrder = 10
                end
                object DBEdit12: TDBEdit
                  Left = 353
                  Top = 173
                  Width = 119
                  Height = 21
                  DataField = 'CUPOINRO'
                  DataSource = DSTemplate
                  TabOrder = 11
                end
                object ComboTipoPadrao: TRxDBComboBox
                  Left = 479
                  Top = 173
                  Width = 138
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CUPOCTIPOPADRAO'
                  DataSource = DSTemplate
                  Enabled = False
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    'DINHEIRO'
                    'CHEQUE VISTA'
                    'CHEQUE PRAZO'
                    'CREDI'#193'RIO'
                    'CONV'#202'NIO'
                    'CART'#195'O'
                    'RETORNO CONSIGNA'#199#195'O')
                  TabOrder = 12
                  Values.Strings = (
                    'DIN'
                    'CHQV'
                    'CHQP'
                    'CRD'
                    'CNV'
                    'CRT'
                    'RTC')
                end
                object ComboOperacaoEstoque: TRxDBLookupCombo
                  Left = 3
                  Top = 135
                  Width = 311
                  Height = 21
                  DropDownCount = 8
                  DataField = 'OPESICOD'
                  DataSource = DSTemplate
                  LookupField = 'OPESICOD'
                  LookupDisplay = 'OPESA60DESCR'
                  LookupSource = DSSQLOperacaoEstoque
                  TabOrder = 6
                end
                object ComboCFOP: TRxDBLookupCombo
                  Left = 315
                  Top = 135
                  Width = 302
                  Height = 21
                  DropDownCount = 8
                  DisplayAllFields = True
                  DataField = 'CFOPA5COD'
                  DataSource = DSTemplate
                  LookupField = 'CFOPA5COD'
                  LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                  LookupDisplayIndex = 1
                  LookupSource = DSSQLCFOP
                  TabOrder = 7
                end
              end
              object Panel6: TPanel
                Left = 0
                Top = 249
                Width = 683
                Height = 110
                Align = alClient
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 1
              end
            end
            object TabItens: TTabSheet
              Caption = 'Itens da Venda'
              ImageIndex = 2
              object DBGridItens: TDBGrid
                Left = 0
                Top = 122
                Width = 683
                Height = 237
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                Ctl3D = True
                DataSource = DSSQLCupomItem
                FixedColor = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColLines, dgRowLines]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = DBGridListaDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CPITIPOS'
                    Title.Caption = 'Seq'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 24
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Title.Caption = 'C'#243'd.'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 39
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITCSTATUS'
                    Title.Caption = 'ST'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DescricaoProduto'
                    Title.Caption = 'Descri'#231#227'o'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 278
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITN3QTD'
                    Title.Alignment = taCenter
                    Title.Caption = 'Qtde'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 53
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITN3VLRUNIT'
                    Title.Alignment = taCenter
                    Title.Caption = 'Vlr.Unit'#225'rio'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITN2DESC'
                    Title.Caption = 'Vlr.Desc Prod'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 76
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TotalItemCalc'
                    Title.Alignment = taCenter
                    Title.Caption = 'Total Item'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 68
                    Visible = True
                  end>
              end
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 683
                Height = 122
                Align = alTop
                BevelWidth = 3
                Color = 16249066
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Label14: TLabel
                  Left = 10
                  Top = 39
                  Width = 170
                  Height = 13
                  Caption = 'C'#243'digo / Descri'#231#227'o do Produto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 197
                  Top = 79
                  Width = 27
                  Height = 13
                  Caption = 'Qtde'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 120
                  Top = 79
                  Width = 63
                  Height = 13
                  Caption = 'Vlr.Unit'#225'rio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object AcessaProduto: TSpeedButton
                  Left = 94
                  Top = 52
                  Width = 24
                  Height = 22
                  Hint = 'Acessa Cadastro de Produtos'
                  Flat = True
                  Glyph.Data = {
                    E6000000424DE60000000000000076000000280000000E0000000E0000000100
                    0400000000007000000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                    DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                    DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                    DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                    DD00DDDDDDDDDDDDDD00}
                  OnClick = AcessaProdutoClick
                end
                object Label17: TLabel
                  Left = 248
                  Top = 79
                  Width = 45
                  Height = 13
                  Caption = 'Vlr.Desc'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 463
                  Top = 39
                  Width = 21
                  Height = 13
                  Caption = 'CST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 511
                  Top = 39
                  Width = 47
                  Height = 13
                  Caption = 'Aliquota'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEditQuantidade: TDBEdit
                  Left = 185
                  Top = 93
                  Width = 59
                  Height = 21
                  Ctl3D = True
                  DataField = 'CPITN3QTD'
                  DataSource = DSSQLCupomItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object DBEditUnitario: TDBEdit
                  Left = 119
                  Top = 93
                  Width = 63
                  Height = 21
                  Ctl3D = True
                  DataField = 'CPITN3VLRUNIT'
                  DataSource = DSSQLCupomItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object BTItemNovo: TBitBtn
                  Left = 451
                  Top = 87
                  Width = 62
                  Height = 28
                  Caption = 'Novo Item'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnClick = BTItemNovoClick
                end
                object BtItemGravar: TBitBtn
                  Left = 514
                  Top = 86
                  Width = 62
                  Height = 29
                  Caption = 'Gravar Item'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  OnClick = BtItemGravarClick
                end
                object BtItemExcluir: TBitBtn
                  Left = 577
                  Top = 86
                  Width = 62
                  Height = 29
                  Caption = 'Excluir Item'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  OnClick = BtItemExcluirClick
                end
                object Panel8: TPanel
                  Left = 3
                  Top = 3
                  Width = 677
                  Height = 33
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelInner = bvLowered
                  BevelOuter = bvNone
                  BevelWidth = 2
                  Caption = ' Lan'#231'amento de Itens'
                  Color = 10053171
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -21
                  Font.Name = 'Times New Roman'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 7
                end
                object EditCdProduto: TEdit
                  Left = 5
                  Top = 53
                  Width = 87
                  Height = 21
                  Hint = 'Informe o Codigo ou F2 para  abrir cadastro Produto'
                  CharCase = ecUpperCase
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                  OnExit = EditCdProdutoExit
                  OnKeyDown = EditCdProdutoKeyDown
                end
                object DBEdit6: TDBEdit
                  Left = 120
                  Top = 53
                  Width = 336
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'DescricaoProduto'
                  DataSource = DSSQLCupomItem
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
                object DBEditDesc: TDBEdit
                  Left = 247
                  Top = 93
                  Width = 63
                  Height = 21
                  Ctl3D = True
                  DataField = 'CPITN2DESC'
                  DataSource = DSSQLCupomItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object DBEdit15: TDBEdit
                  Left = 460
                  Top = 53
                  Width = 44
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CSTIcms'
                  DataSource = DSSQLCupomItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 9
                end
                object DBEdit16: TDBEdit
                  Left = 508
                  Top = 53
                  Width = 56
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'COITN2ICMSALIQ'
                  DataSource = DSSQLCupomItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 10
                end
              end
            end
            object TabFinanceiro: TTabSheet
              Caption = 'Financeiro'
              ImageIndex = 3
            end
          end
          inherited PanelMaster: TPanel
            Top = 42
            Width = 691
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 691
            Height = 42
            object Label1: TLabel
              Left = 9
              Top = 5
              Width = 13
              Height = 13
              Caption = 'ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 96
              Top = 5
              Width = 49
              Height = 13
              Caption = 'Empresa'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 336
              Top = 4
              Width = 50
              Height = 13
              Caption = 'Terminal'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 545
              Top = 4
              Width = 62
              Height = 13
              Caption = 'Total Itens'
              FocusControl = DBEdit8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 18
              Width = 84
              Height = 21
              Color = 16249066
              DataField = 'CUPOA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 95
              Top = 18
              Width = 25
              Height = 21
              Color = 16249066
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 335
              Top = 18
              Width = 26
              Height = 21
              Color = 16249066
              DataField = 'TERMICOD'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit13: TDBEdit
              Left = 123
              Top = 18
              Width = 209
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'EmpresaLookup'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit14: TDBEdit
              Left = 364
              Top = 18
              Width = 178
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'TerminalLookup'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit8: TDBEdit
              Left = 545
              Top = 18
              Width = 84
              Height = 21
              Color = 16249066
              DataField = 'CUPON2TOTITENS'
              DataSource = DSTemplate
              ReadOnly = True
              TabOrder = 5
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From CUPOM Where (%MFiltro)'
      'and (%MEmpresa)')
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
    object SQLTemplateCUPOA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empr.C'#243'digo'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOM.EMPRICOD'
      Visible = False
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Term.C'#243'digo'
      FieldName = 'TERMICOD'
      Origin = 'DB.CUPOM.TERMICOD'
      Visible = False
    end
    object SQLTemplateCUPOICOD: TIntegerField
      FieldName = 'CUPOICOD'
      Origin = 'DB.CUPOM.CUPOICOD'
      Visible = False
    end
    object SQLTemplateTerminalLookup: TStringField
      DisplayLabel = 'Terminal'
      FieldKind = fkLookup
      FieldName = 'TerminalLookup'
      LookupDataSet = SQLTerminal
      LookupKeyFields = 'TERMICOD'
      LookupResultField = 'TERMA60DESCR'
      KeyFields = 'TERMICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCUPODEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePLRCICOD: TIntegerField
      DisplayLabel = 'Plan.C'#243'digo'
      FieldName = 'PLRCICOD'
      Origin = 'DB.CUPOM.PLRCICOD'
      Visible = False
    end
    object SQLTemplatePlanoLookup: TStringField
      DisplayLabel = 'Plano'
      FieldKind = fkLookup
      FieldName = 'PlanoLookup'
      LookupDataSet = SQLPlanoRecebimento
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'PLRCICOD'
      Visible = False
      Lookup = True
    end
    object SQLTemplateVENDICOD: TIntegerField
      DisplayLabel = 'Vend.C'#243'digo'
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOM.VENDICOD'
      Visible = False
    end
    object SQLTemplateVendedorLookup: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'VendedorLookup'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCONVICOD: TIntegerField
      DisplayLabel = 'Conv.C'#243'digo'
      FieldName = 'CONVICOD'
      Origin = 'DB.CUPOM.CONVICOD'
      Visible = False
    end
    object SQLTemplateCUPOCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CUPOCSTATUS'
      Origin = 'DB.CUPOM.CUPOCSTATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCUPON2TOTITENS: TBCDField
      DisplayLabel = 'Total Itens'
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
      Visible = False
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPON2DESC: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
      Visible = False
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPON2ACRESC: TBCDField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'CUPON2ACRESC'
      Origin = 'DB.CUPOM.CUPON2ACRESC'
      Visible = False
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPON2TOTITENSRET: TBCDField
      FieldName = 'CUPON2TOTITENSRET'
      Origin = 'DB.CUPOM.CUPON2TOTITENSRET'
      Visible = False
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPOINRO: TIntegerField
      DisplayLabel = 'Nro.Cupom'
      FieldName = 'CUPOINRO'
      Origin = 'DB.CUPOM.CUPOINRO'
    end
    object SQLTemplateCUPOCTIPOPADRAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCUPON2CONVTAXA: TBCDField
      DisplayLabel = 'Tx.Conv.'
      FieldName = 'CUPON2CONVTAXA'
      Origin = 'DB.CUPOM.CUPON2CONVTAXA'
      Visible = False
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPOINROORDCOMPRA: TIntegerField
      FieldName = 'CUPOINROORDCOMPRA'
      Origin = 'DB.CUPOM.CUPOINROORDCOMPRA'
      Visible = False
    end
    object SQLTemplateCUPOA13IDTROCA: TStringField
      DisplayLabel = 'Origem Troca'
      FieldName = 'CUPOA13IDTROCA'
      Origin = 'DB.CUPOM.CUPOA13IDTROCA'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCUPON2VLRCOMISSAO: TBCDField
      FieldName = 'CUPON2VLRCOMISSAO'
      Origin = 'DB.CUPOM.CUPON2VLRCOMISSAO'
      Visible = False
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPOA20CODANT: TStringField
      DisplayLabel = 'Contrato Antigo'
      FieldName = 'CUPOA20CODANT'
      Origin = 'DB.CUPOM.CUPOA20CODANT'
      Visible = False
      FixedChar = True
    end
    object SQLTemplateCUPODCANC: TDateTimeField
      FieldName = 'CUPODCANC'
      Origin = 'DB.CUPOM.CUPODCANC'
      Visible = False
    end
    object SQLTemplateCUPON2JUROATRAS: TBCDField
      FieldName = 'CUPON2JUROATRAS'
      Origin = 'DB.CUPOM.CUPON2JUROATRAS'
      Visible = False
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPON2MULTAATRAS: TBCDField
      FieldName = 'CUPON2MULTAATRAS'
      Origin = 'DB.CUPOM.CUPON2MULTAATRAS'
      Visible = False
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPODPAGTOCONSIG: TDateTimeField
      FieldName = 'CUPODPAGTOCONSIG'
      Origin = 'DB.CUPOM.CUPODPAGTOCONSIG'
      Visible = False
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CUPOM.PENDENTE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CUPOM.REGISTRO'
      Visible = False
    end
    object SQLTemplateCUPON3BONUSTROCA: TBCDField
      DisplayLabel = 'B'#244'nus Troca'
      FieldName = 'CUPON3BONUSTROCA'
      Origin = 'DB.CUPOM.CUPON3BONUSTROCA'
      Visible = False
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPODENTREGA: TDateTimeField
      FieldName = 'CUPODENTREGA'
      Origin = 'DB.CUPOM.CUPODENTREGA'
      Visible = False
    end
    object SQLTemplateTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
      Origin = 'DB.CUPOM.TPVDICOD'
      Visible = False
    end
    object SQLTemplateUSUAICODCANC: TIntegerField
      FieldName = 'USUAICODCANC'
      Origin = 'DB.CUPOM.USUAICODCANC'
      Visible = False
    end
    object SQLTemplateCUPON3CREDTAXA: TBCDField
      DisplayLabel = 'Tx.Credi'#225'rio'
      FieldName = 'CUPON3CREDTAXA'
      Origin = 'DB.CUPOM.CUPON3CREDTAXA'
      Visible = False
      Precision = 15
      Size = 3
    end
    object SQLTemplateEmpresaLookup: TStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60NOMEFANT'
      KeyFields = 'EMPRICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteLookup: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkCalculated
      FieldName = 'ClienteLookup'
      Size = 60
      Calculated = True
    end
    object SQLTemplateOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.CUPOM.OPESICOD'
    end
    object SQLTemplateCFOPA5COD: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CUPOM.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update CUPOM'
      'set'
      '  CUPOA13ID = :CUPOA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  TERMICOD = :TERMICOD,'
      '  CUPOICOD = :CUPOICOD,'
      '  CUPODEMIS = :CUPODEMIS,'
      '  CLIEA13ID = :CLIEA13ID,'
      '  PLRCICOD = :PLRCICOD,'
      '  VENDICOD = :VENDICOD,'
      '  CONVICOD = :CONVICOD,'
      '  CUPOCSTATUS = :CUPOCSTATUS,'
      '  CUPON2TOTITENS = :CUPON2TOTITENS,'
      '  CUPON2DESC = :CUPON2DESC,'
      '  CUPON2ACRESC = :CUPON2ACRESC,'
      '  CUPON2TOTITENSRET = :CUPON2TOTITENSRET,'
      '  CUPOINRO = :CUPOINRO,'
      '  CUPOCTIPOPADRAO = :CUPOCTIPOPADRAO,'
      '  CUPON2CONVTAXA = :CUPON2CONVTAXA,'
      '  CUPOINROORDCOMPRA = :CUPOINROORDCOMPRA,'
      '  CUPOA13IDTROCA = :CUPOA13IDTROCA,'
      '  CUPON2VLRCOMISSAO = :CUPON2VLRCOMISSAO,'
      '  CUPOA20CODANT = :CUPOA20CODANT,'
      '  CUPODCANC = :CUPODCANC,'
      '  CUPON2JUROATRAS = :CUPON2JUROATRAS,'
      '  CUPON2MULTAATRAS = :CUPON2MULTAATRAS,'
      '  CUPODPAGTOCONSIG = :CUPODPAGTOCONSIG,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  CUPON3BONUSTROCA = :CUPON3BONUSTROCA,'
      '  CUPODENTREGA = :CUPODENTREGA,'
      '  TPVDICOD = :TPVDICOD,'
      '  USUAICODCANC = :USUAICODCANC,'
      '  CUPON3CREDTAXA = :CUPON3CREDTAXA'
      'where'
      '  CUPOA13ID = :OLD_CUPOA13ID')
    InsertSQL.Strings = (
      'insert into CUPOM'
      
        '  (CUPOA13ID, EMPRICOD, TERMICOD, CUPOICOD, CUPODEMIS, CLIEA13ID' +
        ', PLRCICOD, '
      
        '   VENDICOD, CONVICOD, CUPOCSTATUS, CUPON2TOTITENS, CUPON2DESC, ' +
        'CUPON2ACRESC, '
      
        '   CUPON2TOTITENSRET, CUPOINRO, CUPOCTIPOPADRAO, CUPON2CONVTAXA,' +
        ' CUPOINROORDCOMPRA, '
      
        '   CUPOA13IDTROCA, CUPON2VLRCOMISSAO, CUPOA20CODANT, CUPODCANC, ' +
        'CUPON2JUROATRAS, '
      
        '   CUPON2MULTAATRAS, CUPODPAGTOCONSIG, PENDENTE, REGISTRO, CUPON' +
        '3BONUSTROCA, '
      '   CUPODENTREGA, TPVDICOD, USUAICODCANC, CUPON3CREDTAXA)'
      'values'
      
        '  (:CUPOA13ID, :EMPRICOD, :TERMICOD, :CUPOICOD, :CUPODEMIS, :CLI' +
        'EA13ID, '
      
        '   :PLRCICOD, :VENDICOD, :CONVICOD, :CUPOCSTATUS, :CUPON2TOTITEN' +
        'S, :CUPON2DESC, '
      
        '   :CUPON2ACRESC, :CUPON2TOTITENSRET, :CUPOINRO, :CUPOCTIPOPADRA' +
        'O, :CUPON2CONVTAXA, '
      
        '   :CUPOINROORDCOMPRA, :CUPOA13IDTROCA, :CUPON2VLRCOMISSAO, :CUP' +
        'OA20CODANT, '
      
        '   :CUPODCANC, :CUPON2JUROATRAS, :CUPON2MULTAATRAS, :CUPODPAGTOC' +
        'ONSIG, '
      
        '   :PENDENTE, :REGISTRO, :CUPON3BONUSTROCA, :CUPODENTREGA, :TPVD' +
        'ICOD, :USUAICODCANC, '
      '   :CUPON3CREDTAXA)')
    DeleteSQL.Strings = (
      'delete from CUPOM'
      'where'
      '  CUPOA13ID = :OLD_CUPOA13ID')
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA')
    Macros = <>
    Left = 6
    Top = 365
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 34
    Top = 365
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL')
    Macros = <>
    Left = 6
    Top = 393
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 34
    Top = 393
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE')
    Macros = <>
    Left = 6
    Top = 421
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 34
    Top = 421
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTO')
    Macros = <>
    Left = 6
    Top = 449
  end
  object DSSQLPlanoRecebimento: TDataSource
    DataSet = SQLPlanoRecebimento
    Left = 34
    Top = 449
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from VENDEDOR')
    Macros = <>
    Left = 6
    Top = 477
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 34
    Top = 477
  end
  object SQLConvenio: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONVENIO')
    Macros = <>
    Left = 6
    Top = 505
  end
  object DSSQLConvenio: TDataSource
    DataSet = SQLConvenio
    Left = 34
    Top = 505
  end
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 35
    Top = 239
  end
  object SQLContasReceber: TRxQuery
    BeforeInsert = SQLContasReceberBeforeInsert
    BeforeDelete = SQLContasReceberBeforeDelete
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONTASRECEBER'
      'WHERE'
      'CUPOA13ID = :CUPOA13ID')
    Macros = <>
    Left = 7
    Top = 239
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLContasReceberEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCN2VLR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2DESCFIN: TBCDField
      DisplayLabel = 'Desc.'
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TXJURO: TBCDField
      DisplayLabel = 'Tx. Juro'
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TXMULTA: TBCDField
      DisplayLabel = 'Tx. Multa'
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Ult. Recbto.'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLContasReceberCTRCN2TOTREC: TBCDField
      DisplayLabel = 'Total Recebido'
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'OPESICOD,'
      'OPESA60DESCR'
      'FROM'
      'OPERACAOESTOQUE'
      'ORDER BY'
      'OPESA60DESCR')
    Macros = <>
    Left = 6
    Top = 337
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 34
    Top = 337
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CFOPA5COD,'
      'CFOPA60DESCR'
      'FROM'
      'CFOP'
      'ORDER BY'
      'CFOPA60DESCR')
    Macros = <>
    Left = 6
    Top = 309
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CFOP.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 34
    Top = 309
  end
  object SQLCupomItem: TRxQuery
    OnCalcFields = SQLCupomItemCalcFields
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'Select * From CUPOMITEM'
      'Where'
      'CUPOA13ID = :CUPOA13ID'
      'Order by  CPITIPOS asc')
    Macros = <>
    Left = 6
    Top = 189
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLCupomItemCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomItemCPITIPOS: TIntegerField
      FieldName = 'CPITIPOS'
      Origin = 'DB.CUPOMITEM.CPITIPOS'
    end
    object SQLCupomItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.CUPOMITEM.PRODICOD'
    end
    object SQLCupomItemDescricaoProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o Produto'
      FieldKind = fkCalculated
      FieldName = 'DescricaoProduto'
      Size = 60
      Calculated = True
    end
    object SQLCupomItemCPITCSTATUS: TStringField
      FieldName = 'CPITCSTATUS'
      Origin = 'DB.CUPOMITEM.CPITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomItemCPITN3QTD: TBCDField
      FieldName = 'CPITN3QTD'
      Origin = 'DB.CUPOMITEM.CPITN3QTD'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3QTDTROCA: TBCDField
      FieldName = 'CPITN3QTDTROCA'
      Origin = 'DB.CUPOMITEM.CPITN3QTDTROCA'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3VLRUNIT: TBCDField
      FieldName = 'CPITN3VLRUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3VLRCUSTUNIT: TBCDField
      FieldName = 'CPITN3VLRCUSTUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRCUSTUNIT'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN2DESC: TBCDField
      FieldName = 'CPITN2DESC'
      Origin = 'DB.CUPOMITEM.CPITN2DESC'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN3VLRUNITLUCR: TBCDField
      FieldName = 'CPITN3VLRUNITLUCR'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNITLUCR'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCOITN2ICMSALIQ: TBCDField
      FieldName = 'COITN2ICMSALIQ'
      Origin = 'DB.CUPOMITEM.COITN2ICMSALIQ'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOMITEM.VENDICOD'
    end
    object SQLCupomItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CUPOMITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCupomItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CUPOMITEM.REGISTRO'
    end
    object SQLCupomItemCPITN2VLRDESCSOBTOT: TBCDField
      FieldName = 'CPITN2VLRDESCSOBTOT'
      Origin = 'DB.CUPOMITEM.CPITN2VLRDESCSOBTOT'
      Precision = 15
      Size = 3
    end
    object SQLCupomItemCPITN2BASEICMS: TBCDField
      FieldName = 'CPITN2BASEICMS'
      Origin = 'DB.CUPOMITEM.CPITN2BASEICMS'
      Precision = 15
      Size = 2
    end
    object SQLCupomItemCPITN2VLRICMS: TBCDField
      FieldName = 'CPITN2VLRICMS'
      Origin = 'DB.CUPOMITEM.CPITN2VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLCupomItemCPITN2VLRQDEVERIAVENDER: TBCDField
      FieldName = 'CPITN2VLRQDEVERIAVENDER'
      Origin = 'DB.CUPOMITEM.CPITN2VLRQDEVERIAVENDER'
      Precision = 15
      Size = 2
    end
    object SQLCupomItemBOMBICOD: TIntegerField
      FieldName = 'BOMBICOD'
      Origin = 'DB.CUPOMITEM.BOMBICOD'
    end
    object SQLCupomItemEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOMITEM.EMPRICOD'
    end
    object SQLCupomItemENCERRANTE: TIntegerField
      FieldName = 'ENCERRANTE'
      Origin = 'DB.CUPOMITEM.ENCERRANTE'
    end
    object SQLCupomItemCPITTOBS: TStringField
      FieldName = 'CPITTOBS'
      Origin = 'DB.CUPOMITEM.CPITTOBS'
      Size = 60
    end
    object SQLCupomItemCPITN2VLRPIS: TBCDField
      FieldName = 'CPITN2VLRPIS'
      Origin = 'DB.CUPOMITEM.CPITN2VLRPIS'
      Precision = 15
      Size = 2
    end
    object SQLCupomItemCPITN2VLRCOFINS: TBCDField
      FieldName = 'CPITN2VLRCOFINS'
      Origin = 'DB.CUPOMITEM.CPITN2VLRCOFINS'
      Precision = 15
      Size = 2
    end
    object SQLCupomItemADICIONAIS: TStringField
      FieldName = 'ADICIONAIS'
      Origin = 'DB.CUPOMITEM.ADICIONAIS'
      Size = 30
    end
    object SQLCupomItemCPITN2IMPOSTOMED: TBCDField
      FieldName = 'CPITN2IMPOSTOMED'
      Origin = 'DB.CUPOMITEM.CPITN2IMPOSTOMED'
      Precision = 15
      Size = 2
    end
    object SQLCupomItemTotalItemCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItemCalc'
      EditFormat = '##0.00'
      Calculated = True
    end
    object SQLCupomItemCSTIcms: TStringField
      FieldKind = fkCalculated
      FieldName = 'CSTIcms'
      Size = 5
      Calculated = True
    end
  end
  object DSSQLCupomItem: TDataSource
    AutoEdit = False
    DataSet = SQLCupomItem
    Left = 35
    Top = 189
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 567
    Top = 2
  end
end
