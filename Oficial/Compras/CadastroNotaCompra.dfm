inherited FormCadastroNotaCompra: TFormCadastroNotaCompra
  Left = 267
  Top = 56
  Caption = 'Nota de Entrada'
  ClientHeight = 579
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 579
    inherited PanelCabecalho: TPanel
      Height = 71
      inherited ScrollBoxPanelCabecalho: TScrollBox
        inherited Panel1: TPanel
          Height = 71
          inherited PanelNavigator: TPanel
            Top = 39
          end
          inherited PanelLeft: TPanel
            Height = 24
          end
          object ProgressBar: TProgressBar
            Left = 0
            Top = 24
            Width = 885
            Height = 15
            Align = alBottom
            TabOrder = 2
            Visible = False
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Top = 71
      Height = 506
      inherited PanelBarra: TPanel
        Height = 506
        inherited Button3: TRxSpeedButton
          Tag = 3
          Top = 73
          Caption = '&4 Itens'
          Visible = True
          OnClick = Button1Click
        end
        object Button4: TRxSpeedButton
          Tag = 3
          Left = 1
          Top = 50
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&3 Financeiro'
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
        object Button6: TRxSpeedButton
          Tag = 4
          Left = 1
          Top = 119
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&6 Frete'
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
        object Button5: TRxSpeedButton
          Tag = 4
          Left = 1
          Top = 96
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&5 Mov. de Produtos'
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
      end
      inherited PanelFundoDados: TPanel
        Height = 506
        inherited Panel5: TPanel
          Height = 506
          inherited PagePrincipal: TPageControl
            Top = 122
            Height = 384
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 90
                Height = 268
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'EMPRICODDESTCOMPRA'
                    Title.Caption = 'Filial'
                    Width = 26
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'NOCPCSTATUS'
                    Title.Caption = 'ST'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPDEMISSAO'
                    Title.Caption = 'Emiss'#227'o'
                    Width = 59
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPDRECEBIMENTO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPA5SERIE'
                    Width = 32
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPA30NRO'
                    Width = 48
                    Visible = True
                  end
                  item
                    Alignment = taRightJustify
                    Expanded = False
                    FieldName = 'Cod_FornEmprCli'
                    Title.Caption = 'C'#243'digo'
                    Width = 41
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Descr_FornEmprCli'
                    Title.Caption = 'Fornecedor / Empresa / Cliente'
                    Width = 185
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPN3TOTITENS'
                    Title.Caption = 'Total Itens'
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPN3VLRTOTNOTA'
                    Width = 76
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Height = 90
                inherited PanelBetween: TPanel
                  Height = 54
                  inherited AdvPanel1: TAdvPanel
                    Height = 54
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Height = 54
                  inherited AdvPanelEditProcura: TAdvPanel
                    Height = 54
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  Height = 54
                  inherited AdvPanelIndice: TAdvPanel
                    Height = 54
                    FullHeight = 0
                    inherited ComboOrdem: TComboBox
                      Width = 126
                    end
                  end
                end
                object PanelPesquisa: TPanel
                  Left = 0
                  Top = 54
                  Width = 749
                  Height = 36
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 16249066
                  TabOrder = 3
                  TabStop = True
                  object BTNLocalizar: TSpeedButton
                    Left = 554
                    Top = 11
                    Width = 103
                    Height = 22
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
                    OnClick = BTNLocalizarClick
                  end
                  object Label40: TLabel
                    Left = 62
                    Top = -2
                    Width = 25
                    Height = 13
                    Caption = 'Cnpj'
                    FocusControl = ComboOrdem
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label42: TLabel
                    Left = 10
                    Top = -1
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
                  object Label43: TLabel
                    Left = 168
                    Top = -2
                    Width = 64
                    Height = 13
                    Caption = 'Fornecedor'
                    FocusControl = ComboOrdem
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object ComboFornecedorConsulta: TRxDBLookupCombo
                    Left = 160
                    Top = 12
                    Width = 388
                    Height = 21
                    Hint = 
                      'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                      'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                    DropDownCount = 8
                    DisplayEmpty = 'Selecione um Fornecedor...'
                    LookupField = 'FORNICOD'
                    LookupDisplay = 'FORNA60RAZAOSOC'
                    LookupSource = DSSQLFornecedor
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                  end
                  object EditCNPJ: TMaskEdit
                    Left = 59
                    Top = 12
                    Width = 97
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 1
                  end
                  object EditFilial: TMaskEdit
                    Left = 3
                    Top = 12
                    Width = 54
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 0
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Left = 10
                Top = 168
                Lines.Strings = (
                  'NOTACOMPRAITEM'
                  'CONTASPAGAR')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label10: TLabel
                Left = 171
                Top = 1
                Width = 76
                Height = 13
                Caption = 'Data Emiss'#227'o'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 325
                Top = 1
                Width = 63
                Height = 13
                Caption = 'Data Recto'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 3
                Top = 2
                Width = 102
                Height = 13
                Caption = 'Pedido de Compra'
                FocusControl = DBEditPC
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label23: TLabel
                Left = 4
                Top = 266
                Width = 73
                Height = 13
                Caption = 'Observa'#231#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BtnPedidos: TSpeedButton
                Left = 142
                Top = 14
                Width = 24
                Height = 24
                Hint = 'Acessa Pedidos de Compra'
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
                ParentShowHint = False
                ShowHint = True
                OnClick = BtnPedidosClick
              end
              object Label14: TLabel
                Left = 86
                Top = 196
                Width = 47
                Height = 13
                Caption = 'Vlr ICMS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 249
                Top = 196
                Width = 50
                Height = 13
                Caption = 'Vlr Subst'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label18: TLabel
                Left = 4
                Top = 231
                Width = 58
                Height = 13
                Caption = 'Vlr Seguro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label19: TLabel
                Left = 87
                Top = 231
                Width = 56
                Height = 13
                Caption = 'Vlr Outras'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label20: TLabel
                Left = 331
                Top = 196
                Width = 35
                Height = 13
                Caption = 'Vlr IPI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 413
                Top = 196
                Width = 45
                Height = 13
                Caption = 'Vlr Desc'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label22: TLabel
                Left = 412
                Top = 231
                Width = 78
                Height = 13
                Caption = '% ICMS Frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label30: TLabel
                Left = 167
                Top = 196
                Width = 62
                Height = 13
                Caption = 'Base Subst'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 4
                Top = 196
                Width = 59
                Height = 13
                Caption = 'Base ICMS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 496
                Top = 196
                Width = 48
                Height = 13
                Caption = 'Vlr Frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label26: TLabel
                Left = 478
                Top = 1
                Width = 74
                Height = 13
                Caption = 'Tipo de Frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 167
                Top = 231
                Width = 55
                Height = 13
                Caption = 'Vlr Isento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 496
                Top = 231
                Width = 52
                Height = 13
                Caption = 'Vlr Fundo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label39: TLabel
                Left = 331
                Top = 231
                Width = 56
                Height = 13
                Caption = 'Vlr Outras'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object DBEdit9: TDBDateEdit
                Left = 169
                Top = 15
                Width = 150
                Height = 21
                DataField = 'NOCPDEMISSAO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 1
                YearDigits = dyFour
              end
              object DBEdit10: TDBDateEdit
                Left = 323
                Top = 15
                Width = 150
                Height = 21
                DataField = 'NOCPDRECEBIMENTO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 2
                YearDigits = dyFour
                OnExit = DBEdit10Exit
              end
              object DBEditPC: TDBEdit
                Left = 1
                Top = 16
                Width = 139
                Height = 21
                DataField = 'PDCPA13ID'
                DataSource = DSTemplate
                TabOrder = 0
                OnKeyDown = DBEditPCKeyDown
              end
              object DBMemoObs: TDBMemo
                Left = 1
                Top = 280
                Width = 648
                Height = 72
                BevelWidth = 0
                DataField = 'NOCPA254OBS'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 19
              end
              object GroupBox1: TGroupBox
                Left = 1
                Top = 38
                Width = 649
                Height = 155
                Caption = ' Controles '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                object Label24: TLabel
                  Left = 7
                  Top = 12
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
                object LBFornEmpr: TLabel
                  Left = 8
                  Top = 48
                  Width = 64
                  Height = 13
                  Caption = 'Fornecedor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object BtnFornecedor: TSpeedButton
                  Left = 622
                  Top = 61
                  Width = 23
                  Height = 21
                  Hint = 'Acessa Fornecedores'
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
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = BtnFornecedorClick
                end
                object Label27: TLabel
                  Left = 7
                  Top = 83
                  Width = 89
                  Height = 13
                  Caption = 'Transportadora'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object BtnTransportadora: TSpeedButton
                  Left = 621
                  Top = 97
                  Width = 23
                  Height = 21
                  Hint = 'Acessa Transportadoras'
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
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = BtnTransportadoraClick
                end
                object BtnPlanoContas: TSpeedButton
                  Left = 620
                  Top = 131
                  Width = 23
                  Height = 21
                  Hint = 'Acessa Plano de Contas'
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
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = BtnPlanoContasClick
                end
                object Label9: TLabel
                  Left = 7
                  Top = 118
                  Width = 84
                  Height = 13
                  Caption = 'Conta Despesa'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboOperacaoEstoque: TRxDBLookupCombo
                  Left = 4
                  Top = 26
                  Width = 615
                  Height = 21
                  DropDownCount = 8
                  DataField = 'OPESICOD'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'OPESICOD'
                  LookupDisplay = 'OPESICOD;OPESA60DESCR'
                  LookupDisplayIndex = 1
                  LookupSource = DSSQLOperacaoEstoque
                  ParentFont = False
                  TabOrder = 0
                end
                object ComboFornecedor: TRxDBLookupCombo
                  Left = 4
                  Top = 61
                  Width = 616
                  Height = 21
                  DropDownCount = 8
                  DisplayAllFields = True
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupDisplay = 'CLIEA60RAZAOSOC'
                  ParentFont = False
                  TabOrder = 1
                  OnKeyDown = ComboFornecedorKeyDown
                end
                object ComboTransportadora: TRxDBLookupCombo
                  Left = 4
                  Top = 97
                  Width = 615
                  Height = 21
                  DropDownCount = 8
                  DataField = 'TRANICOD'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'TRANICOD'
                  LookupDisplay = 'TRANA60RAZAOSOC'
                  LookupSource = DSSQLTransportadora
                  ParentFont = False
                  TabOrder = 2
                  OnKeyDown = ComboTransportadoraKeyDown
                end
                object ComboPlanoContas: TRxDBLookupCombo
                  Left = 3
                  Top = 132
                  Width = 614
                  Height = 21
                  DropDownCount = 8
                  DataField = 'PLCTA15COD'
                  DataSource = DSTemplate
                  DisplayEmpty = '...'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'PLCTA15COD'
                  LookupDisplay = 'PLCTA60DESCR'
                  LookupSource = DSSQLPlanoContas
                  ParentFont = False
                  TabOrder = 3
                  OnKeyDown = ComboPlanoContasKeyDown
                end
              end
              object DBEdit13: TEvDBNumEdit
                Left = 83
                Top = 209
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLRICMS'
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
                TabOrder = 6
              end
              object DBEdit15: TEvDBNumEdit
                Left = 247
                Top = 209
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLRICMSSUB'
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
                TabOrder = 8
              end
              object DBEdit17: TEvDBNumEdit
                Left = 1
                Top = 244
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLRSEGURO'
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
                TabOrder = 13
              end
              object DBEdit18: TEvDBNumEdit
                Left = 83
                Top = 244
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLROUTRADESP'
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
                TabOrder = 14
                OnExit = DBEdit11Exit
              end
              object DBEdit19: TEvDBNumEdit
                Left = 329
                Top = 209
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLRIPI'
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
                TabOrder = 9
                OnExit = DBEdit11Exit
              end
              object DBEdit20: TEvDBNumEdit
                Left = 411
                Top = 209
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLRDESC'
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
                TabOrder = 10
                OnExit = DBEdit11Exit
              end
              object DBEdit21: TEvDBNumEdit
                Left = 411
                Top = 244
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3PERCICMSFRET'
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
                TabOrder = 17
              end
              object DBEdit22: TEvDBNumEdit
                Left = 165
                Top = 209
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLRBCICMSSUB'
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
                TabOrder = 7
              end
              object DBEdit14: TEvDBNumEdit
                Left = 1
                Top = 209
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLRBASCALICM'
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
                TabOrder = 5
              end
              object DBEdit16: TEvDBNumEdit
                Left = 494
                Top = 209
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLRFRETE'
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
                OnExit = DBEdit11Exit
              end
              object ComboFrete: TRxDBComboBox
                Left = 476
                Top = 15
                Width = 141
                Height = 21
                Style = csDropDownList
                DataField = 'NOCPA5TIPOFRETE'
                DataSource = DSTemplate
                EnableValues = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemHeight = 13
                Items.Strings = (
                  'Emitente (CIF)'
                  'Destinat'#225'rio (FOB)')
                ParentFont = False
                TabOrder = 3
                Values.Strings = (
                  'C'
                  'F')
              end
              object EvDBNumEdit2: TEvDBNumEdit
                Left = 165
                Top = 244
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN3VLRISENTO'
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
                TabOrder = 15
              end
              object EvDBNumEdit3: TEvDBNumEdit
                Left = 493
                Top = 244
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'EMPRN2VLRFUNDOPROMO'
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
                TabOrder = 18
              end
              object EvDBNumEdit4: TEvDBNumEdit
                Left = 329
                Top = 244
                Width = 80
                Height = 21
                AutoHideCalculator = False
                DataField = 'NOCPN2VLROUTRAS'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
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
                TabOrder = 16
                Visible = False
              end
              object DBCheckFreteManual: TDBCheckBox
                Left = 581
                Top = 210
                Width = 100
                Height = 17
                Caption = 'Frete Manual'
                DataField = 'NOCPCFRETEMANUAL'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 12
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object TabMovEstoque: TTabSheet
              Caption = 'MovEstoque'
              ImageIndex = 3
              object DBGrid1: TDBGrid
                Left = 0
                Top = 0
                Width = 749
                Height = 357
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSSQLMovEstoque
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
                OnDblClick = DBGridListaDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Width = 53
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPDRECEBIMENTO'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MVESDMOV'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPESA60DESCR'
                    Width = 183
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookup'
                    Width = 298
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60REFER'
                    Width = 134
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPDEMISSAO'
                    Width = 71
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 122
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 122
            object Label2: TLabel
              Left = 107
              Top = 45
              Width = 22
              Height = 13
              Caption = 'Ano'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 147
              Top = 46
              Width = 29
              Height = 13
              Caption = 'S'#233'rie'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 195
              Top = 45
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 261
              Top = 45
              Width = 37
              Height = 13
              Caption = 'Status'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 364
              Top = 45
              Width = 76
              Height = 13
              Caption = 'Vlr Total Prod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 543
              Top = 45
              Width = 76
              Height = 13
              Caption = 'Vlr Total Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 449
              Top = 45
              Width = 88
              Height = 13
              Caption = 'Total Desc.Prod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 391
              Top = 82
              Width = 70
              Height = 13
              Caption = 'Data Cancel.'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label36: TLabel
              Left = 507
              Top = 82
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label38: TLabel
              Left = 11
              Top = 46
              Width = 42
              Height = 13
              Caption = 'ID Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label41: TLabel
              Left = 12
              Top = 83
              Width = 159
              Height = 13
              Caption = 'Empresa Destino da Compra'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label44: TLabel
              Left = 12
              Top = 5
              Width = 123
              Height = 13
              Caption = 'Chave de Acesso NF-e'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 105
              Top = 59
              Width = 34
              Height = 21
              DataField = 'NOCPA4ANO'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 193
              Top = 59
              Width = 63
              Height = 21
              Hint = 
                'Campo Numerico! Nao use pontos, virgulas,  nem Zeros a  Esquerda' +
                '!'
              DataField = 'NOCPA30NRO'
              DataSource = DSTemplate
              TabOrder = 3
              OnExit = DBEdit4Exit
            end
            object ComboStatus: TRxDBComboBox
              Left = 259
              Top = 59
              Width = 100
              Height = 21
              Style = csDropDownList
              DataField = 'NOCPCSTATUS'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberta'
                'Pre'#231'os Alterados'
                'Encerrada'
                'Cancelada')
              TabOrder = 4
              Values.Strings = (
                'A'
                'P'
                'E'
                'C')
            end
            object DBEdit11: TEvDBNumEdit
              Left = 362
              Top = 59
              Width = 85
              Height = 21
              AutoHideCalculator = False
              DataField = 'NOCPN3TOTITENS'
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
              TabOrder = 5
              OnExit = DBEdit11Exit
            end
            object DBEdit12: TEvDBNumEdit
              Left = 541
              Top = 59
              Width = 85
              Height = 21
              AutoHideCalculator = False
              DataField = 'NOCPN3VLRTOTNOTA'
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
              TabOrder = 7
              OnEnter = DBEdit12Enter
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 451
              Top = 59
              Width = 86
              Height = 21
              AutoHideCalculator = False
              DataField = 'NOCPN3TOTDESC'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
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
              TabOrder = 6
              OnExit = DBEdit11Exit
            end
            object DBEdit6: TDBEdit
              Left = 389
              Top = 96
              Width = 111
              Height = 21
              Color = 16249066
              Ctl3D = True
              DataField = 'NOCPDCANCELAMENTO'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
            end
            object DBEdit7: TDBEdit
              Left = 505
              Top = 96
              Width = 122
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'USUAA60LOGIN'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
            end
            object DBEdit1: TDBEdit
              Left = 9
              Top = 60
              Width = 93
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'NOCPA13ID'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 11
            end
            object ComboEmpresa: TRxDBLookupCombo
              Left = 8
              Top = 96
              Width = 379
              Height = 21
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'EMPRICODDESTCOMPRA'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRICOD;EMPRA60RAZAOSOC'
              LookupDisplayIndex = 1
              LookupSource = DSTblEmpresa
              ParentFont = False
              TabOrder = 8
            end
            object DBEdit3: TDBEdit
              Left = 8
              Top = 19
              Width = 617
              Height = 21
              DataField = 'NOFIA44CHAVEACESSO'
              DataSource = DSTemplate
              TabOrder = 0
              OnExit = DBEdit3Exit
            end
            object DBEdit5: TDBEdit
              Left = 144
              Top = 59
              Width = 45
              Height = 21
              DataField = 'NOCPA5SERIE'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object CancelarNotadeCompra1: TMenuItem
      Caption = '&Cancelar Nota de Compra'
      OnClick = FormCadastroPedidoCompraCancelarNotadeCompra1Click
    end
    object MnEncerrarNotaSequencia: TMenuItem
      Caption = 'Encerrar Notas em Sequencia Status=A'
      OnClick = MnEncerrarNotaSequenciaClick
    end
    object MnApresentarMediaCompras: TMenuItem
      Caption = 'Encerrar Notas em Sequencia  Status=P'
      OnClick = MnApresentarMediaComprasClick
    end
    object MnAtualizaProdSemEncerrarNotas: TMenuItem
      Caption = 'Atualizar Ficha de Produtos em Sequencia sem Encerrar as Notas'
      OnClick = MnAtualizaProdSemEncerrarNotasClick
    end
    object MnReabrirNotaCancelada: TMenuItem
      Caption = 'Reabrir Nota Cancelada'
      OnClick = MnReabrirNotaCanceladaClick
    end
    object SomenteparaAjustes1: TMenuItem
      Caption = '-------- Somente para Ajustes  -------------'
      Enabled = False
    end
    object ReabrirNotaEncerradanomovimentestoque1: TMenuItem
      Caption = 'Reabrir Nota Encerrada - (N'#227'o Moviment Estoque)'
      OnClick = ReabrirNotaEncerradanomovimentestoque1Click
    end
    object FecharNotaAbertaNoMovimentaEstoque1: TMenuItem
      Caption = 'Fechar Nota Aberta - (N'#227'o Movimenta Estoque)'
      OnClick = FecharNotaAbertaNoMovimentaEstoque1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MnRecalcularFretenosItens: TMenuItem
      Caption = 'Recalcular Frete nos Itens'
      OnClick = MnRecalcularFretenosItensClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object EtiquetasdeCodigodeBarras1: TMenuItem
      Caption = '&Etiquetas de Codigo de Barras'
      OnClick = EtiquetasdeCodigodeBarras1Click
    end
    object MnADMListConfEntrada: TMenuItem
      Caption = 'Listagem para Confer'#234'ncia de Entrada'
      OnClick = MnADMListConfEntradaClick
    end
    object MnListProdutosaltpreco: TMenuItem
      Caption = 
        'Listagem de Produtos que sofreram altera'#231#227'o de pre'#231'o pelas notas' +
        ' fiscais'
      OnClick = MnListProdutosaltprecoClick
    end
    object EtiquetasGondolaProdutoPrecoAlterado: TMenuItem
      Caption = 
        'Etiquetas para Gondola de produtos que sofreram altera'#231#227'o de pre' +
        #231'o'
      OnClick = EtiquetasGondolaProdutoPrecoAlteradoClick
    end
    object MnListagemdeProdutosDigitados: TMenuItem
      Caption = 'Listagem Geral de Produtos Digitados'
      OnClick = MnListagemdeProdutosDigitadosClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    AfterInsert = SQLTemplateAfterInsert
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From NOTACOMPRA Where (%MFiltro)')
    object SQLTemplateNOCPA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa Lancto'
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTACOMPRA.EMPRICOD'
    end
    object SQLTemplateNOCPICOD: TIntegerField
      Tag = 1
      FieldName = 'NOCPICOD'
      Origin = 'DB.NOTACOMPRA.NOCPICOD'
    end
    object SQLTemplateFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTACOMPRA.FORNICOD'
      OnChange = SQLTemplateFORNICODChange
    end
    object SQLTemplateNOCPA4ANO: TStringField
      FieldName = 'NOCPA4ANO'
      Origin = 'DB.NOTACOMPRA.NOCPA4ANO'
      FixedChar = True
      Size = 4
    end
    object SQLTemplateNOCPA5SERIE: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'NOCPA5SERIE'
      Origin = 'DB.NOTACOMPRA.NOCPA5SERIE'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateNOCPA30NRO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Numero NF'
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateNOCPCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'NOCPCSTATUS'
      Origin = 'DB.NOTACOMPRA.NOCPCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDCPA13ID: TStringField
      DisplayLabel = 'ID.Pedido Compra'
      FieldName = 'PDCPA13ID'
      Origin = 'DB.NOTACOMPRA.PDCPA13ID'
      OnChange = SQLTemplatePDCPA13IDChange
      FixedChar = True
      Size = 13
    end
    object SQLTemplateOPESICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd.Opera'#231#227'o'
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTACOMPRA.OPESICOD'
    end
    object SQLTemplateOperacaoEstoqueLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'OperacaoEstoqueLookUp'
      LookupDataSet = SQLOperacaoEstoque
      LookupKeyFields = 'OPESICOD'
      LookupResultField = 'OPESA60DESCR'
      KeyFields = 'OPESICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateNOCPDCANCELAMENTO: TDateTimeField
      DisplayLabel = 'Dt.Cancelamento'
      FieldName = 'NOCPDCANCELAMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDCANCELAMENTO'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePLPGICOD: TIntegerField
      FieldName = 'PLPGICOD'
      Origin = 'DB.NOTACOMPRA.PLPGICOD'
      OnChange = SQLTemplatePLPGICODChange
    end
    object SQLTemplatePlanoPagamentoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoPagamentoLookUp'
      LookupDataSet = SQLPlanoPagamento
      LookupKeyFields = 'PLPGICOD'
      LookupResultField = 'PLPGA60DESCR'
      KeyFields = 'PLPGICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.NOTACOMPRA.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateNOCPDEMISSAO: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'NOCPDEMISSAO'
      Origin = 'DB.NOTACOMPRA.NOCPDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplateNOCPDRECEBIMENTO: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Dt.Recto'
      FieldName = 'NOCPDRECEBIMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDRECEBIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplateNOCPN3TOTITENS: TFloatField
      DisplayLabel = 'Total Produtos'
      FieldName = 'NOCPN3TOTITENS'
      Origin = 'DB.NOTACOMPRA.NOCPN3TOTITENS'
    end
    object SQLTemplateNOCPN3VLRTOTNOTA: TFloatField
      DisplayLabel = 'Total Nota'
      FieldName = 'NOCPN3VLRTOTNOTA'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRTOTNOTA'
    end
    object SQLTemplateNOCPN3VLRBASCALICM: TFloatField
      FieldName = 'NOCPN3VLRBASCALICM'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBASCALICM'
    end
    object SQLTemplateNOCPN3VLRICMS: TFloatField
      FieldName = 'NOCPN3VLRICMS'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMS'
    end
    object SQLTemplateNOCPN3VLRBCICMSSUB: TFloatField
      FieldName = 'NOCPN3VLRBCICMSSUB'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBCICMSSUB'
    end
    object SQLTemplateNOCPN3VLRICMSSUB: TFloatField
      FieldName = 'NOCPN3VLRICMSSUB'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMSSUB'
    end
    object SQLTemplateNOCPN3VLRFRETE: TFloatField
      FieldName = 'NOCPN3VLRFRETE'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRFRETE'
    end
    object SQLTemplateNOCPN3VLRSEGURO: TFloatField
      FieldName = 'NOCPN3VLRSEGURO'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRSEGURO'
    end
    object SQLTemplateNOCPN3VLROUTRADESP: TFloatField
      FieldName = 'NOCPN3VLROUTRADESP'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLROUTRADESP'
    end
    object SQLTemplateNOCPN3VLRIPI: TFloatField
      FieldName = 'NOCPN3VLRIPI'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRIPI'
    end
    object SQLTemplateNOCPN3VLRDESC: TFloatField
      FieldName = 'NOCPN3VLRDESC'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRDESC'
    end
    object SQLTemplateCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.NOTACOMPRA.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateNOCPN3PERCICMSFRET: TFloatField
      FieldName = 'NOCPN3PERCICMSFRET'
      Origin = 'DB.NOTACOMPRA.NOCPN3PERCICMSFRET'
    end
    object SQLTemplateTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.NOTACOMPRA.TRANICOD'
    end
    object SQLTemplateTransportadoraLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraLookup'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA60RAZAOSOC'
      KeyFields = 'TRANICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateNOCPA5TIPOFRETE: TStringField
      FieldName = 'NOCPA5TIPOFRETE'
      Origin = 'DB.NOTACOMPRA.NOCPA5TIPOFRETE'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateNOCPN3TOTDESC: TFloatField
      FieldName = 'NOCPN3TOTDESC'
      Origin = 'DB.NOTACOMPRA.NOCPN3TOTDESC'
    end
    object SQLTemplateNOCPN3SOMAITENS: TFloatField
      FieldName = 'NOCPN3SOMAITENS'
      Origin = 'DB.NOTACOMPRA.NOCPN3SOMAITENS'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTACOMPRA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
    end
    object SQLTemplateFornecedorUFLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'FornecedorUFLookUp'
      LookupDataSet = SQLFornecedor
      LookupKeyFields = 'FORNICOD'
      LookupResultField = 'FORNA2UF'
      KeyFields = 'FORNICOD'
      Size = 2
      Lookup = True
    end
    object SQLTemplateEmpresaUFLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaUFLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA2UF'
      KeyFields = 'EMPRICOD'
      Size = 2
      Lookup = True
    end
    object SQLTemplateContaLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ContaLookUp'
      LookupDataSet = SQLPlanoContas
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15COD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateEmpresaLookup: TStringField
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
    object SQLTemplateNOCPA254OBS: TMemoField
      FieldName = 'NOCPA254OBS'
      Origin = 'DB.NOTACOMPRA.NOCPA254OBS'
      BlobType = ftMemo
      Size = 256
    end
    object SQLTemplateEMPRICODDEST: TIntegerField
      DisplayLabel = 'Empresa Destino'
      FieldName = 'EMPRICODDEST'
      Origin = 'DB.NOTACOMPRA.EMPRICODDEST'
    end
    object SQLTemplateDescr_FornEmprCli: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descr_FornEmprCli'
      Size = 60
      Calculated = True
    end
    object SQLTemplateCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.NOTACOMPRA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.NOTACOMPRA.USUAA60LOGIN'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCod_FornEmprCli: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cod_FornEmprCli'
      Size = 13
      Calculated = True
    end
    object SQLTemplateCliFornEmpEstadoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpEstadoLookUp'
      Size = 2
      Calculated = True
    end
    object SQLTemplateNOCPN3VLRISENTO: TFloatField
      FieldName = 'NOCPN3VLRISENTO'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRISENTO'
    end
    object SQLTemplateEMPRN2VLRFUNDOPROMO: TFloatField
      FieldName = 'EMPRN2VLRFUNDOPROMO'
      Origin = 'DB.NOTACOMPRA.EMPRN2VLRFUNDOPROMO'
    end
    object SQLTemplateNOCPN2VLROUTRAS: TFloatField
      FieldName = 'NOCPN2VLROUTRAS'
      Origin = 'DB.NOTACOMPRA.NOCPN2VLROUTRAS'
    end
    object SQLTemplateEMPRICODDESTCOMPRA: TIntegerField
      FieldName = 'EMPRICODDESTCOMPRA'
      Origin = 'DB.NOTACOMPRA.EMPRICODDESTCOMPRA'
    end
    object SQLTemplatePLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.NOTACOMPRA.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.NOTACOMPRA.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateNOCPCEXPCONTABIL: TStringField
      FieldName = 'NOCPCEXPCONTABIL'
      Origin = 'DB.NOTACOMPRA.NOCPCEXPCONTABIL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateNOCPN3VLRCOFINS: TFloatField
      FieldName = 'NOCPN3VLRCOFINS'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRCOFINS'
    end
    object SQLTemplateNOFIA15PROTOCOLO: TStringField
      FieldName = 'NOFIA15PROTOCOLO'
      Origin = 'DB.NOTACOMPRA.NOFIA15PROTOCOLO'
      Size = 15
    end
    object SQLTemplateNOFIA44CHAVEACESSO: TStringField
      DisplayLabel = 'Chave NFe'
      FieldName = 'NOFIA44CHAVEACESSO'
      Origin = 'DB.NOTACOMPRA.NOFIA44CHAVEACESSO'
      Size = 44
    end
    object SQLTemplateNOFIA5CODRETORNO: TStringField
      FieldName = 'NOFIA5CODRETORNO'
      Origin = 'DB.NOTACOMPRA.NOFIA5CODRETORNO'
      Size = 5
    end
    object SQLTemplateNOFITRETORNO: TStringField
      FieldName = 'NOFITRETORNO'
      Origin = 'DB.NOTACOMPRA.NOFITRETORNO'
      Size = 100
    end
    object SQLTemplateNOCPN3VLRPIS: TFloatField
      FieldName = 'NOCPN3VLRPIS'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRPIS'
    end
    object SQLTemplateNOCPCFRETEMANUAL: TStringField
      FieldName = 'NOCPCFRETEMANUAL'
      Origin = 'DB.NOTACOMPRA.NOCPCFRETEMANUAL'
      Size = 1
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Empresa')
    Macros = <>
    Left = 32
    Top = 274
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
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Fornecedor'
      'order by FORNA60RAZAOSOC')
    Macros = <>
    Left = 32
    Top = 302
    object SQLFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFornecedorFORNA2UF: TStringField
      FieldName = 'FORNA2UF'
      Origin = 'DB.FORNECEDOR.FORNA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLFornecedorFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA14CGC: TStringField
      FieldName = 'FORNA14CGC'
      Origin = 'DB.FORNECEDOR.FORNA14CGC'
      EditMask = '##.###.###/####-##;0;_'
      FixedChar = True
      Size = 14
    end
  end
  object SQLPlanoPagamento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANOPAGAMENTO')
    Macros = <>
    Left = 32
    Top = 358
    object SQLPlanoPagamentoPLPGICOD: TIntegerField
      FieldName = 'PLPGICOD'
      Origin = 'DB.PLANOPAGAMENTO.PLPGICOD'
    end
    object SQLPlanoPagamentoPLPGA60DESCR: TStringField
      FieldName = 'PLPGA60DESCR'
      Origin = 'DB.PLANOPAGAMENTO.PLPGA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTransportadora: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Transportadora')
    Macros = <>
    Left = 32
    Top = 330
    object SQLTransportadoraTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.TRANSPORTADORA.TRANICOD'
    end
    object SQLTransportadoraTRANA60RAZAOSOC: TStringField
      FieldName = 'TRANA60RAZAOSOC'
      Origin = 'DB.TRANSPORTADORA.TRANA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From OPERACAOESTOQUE'
      'where'
      'OPESCENTRADASAIDA <> '#39'S'#39
      'and '
      'OPESCORIGEMDESTINO = '#39'F'#39
      'order by OPESA60DESCR')
    Macros = <>
    Left = 32
    Top = 386
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
    object SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'DB.OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField
      FieldName = 'OPESCORIGEMDESTINO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCORIGEMDESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField
      FieldName = 'CFOPA5CODDENTROUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODDENTROUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField
      FieldName = 'CFOPA5CODFORAUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODFORAUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField
      FieldName = 'OPESCGERAFINANCEIRO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCGERAFINANCEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPlanoContas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '* '
      'From '
      'PLANODECONTAS'
      'where  '
      'PLCTCANALSINT = '#39'A'#39' '
      'and'
      'PLCTCTIPOSALDO = '#39'D'#39' '
      ''
      'order by PLCTA60DESCR')
    Macros = <>
    Left = 32
    Top = 414
    object SQLPlanoContasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLNotaCompraItens: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'NOTACOMPRAITEM.*,'
      'PRODUTO.PRODA60DESCR,'
      'PRODUTO.PRODA60REFER'
      'FROM'
      'NOTACOMPRAITEM'
      
        'LEFT OUTER JOIN PRODUTO ON NOTACOMPRAITEM.PRODICOD = PRODUTO.PRO' +
        'DICOD'
      'WHERE'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 4
    Top = 358
    object SQLNotaCompraItensNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRAITEM.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraItensNOCIIITEM: TIntegerField
      FieldName = 'NOCIIITEM'
      Origin = 'DB.NOTACOMPRAITEM.NOCIIITEM'
    end
    object SQLNotaCompraItensPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTACOMPRAITEM.PRODICOD'
    end
    object SQLNotaCompraItensNOCIN3QTDBONIF: TFloatField
      FieldName = 'NOCIN3QTDBONIF'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDBONIF'
    end
    object SQLNotaCompraItensNOCIN3CAPEMBAL: TFloatField
      FieldName = 'NOCIN3CAPEMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3CAPEMBAL'
    end
    object SQLNotaCompraItensNOCIN3QTDEMBAL: TFloatField
      FieldName = 'NOCIN3QTDEMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDEMBAL'
    end
    object SQLNotaCompraItensNOCIN3QTDEPED: TFloatField
      FieldName = 'NOCIN3QTDEPED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDEPED'
    end
    object SQLNotaCompraItensNOCIN3TOTPED: TFloatField
      FieldName = 'NOCIN3TOTPED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3TOTPED'
    end
    object SQLNotaCompraItensNOCIN3VLRDESC: TFloatField
      FieldName = 'NOCIN3VLRDESC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRDESC'
    end
    object SQLNotaCompraItensNOCIN3PERCDESC: TFloatField
      FieldName = 'NOCIN3PERCDESC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCDESC'
    end
    object SQLNotaCompraItensNOCIN3VLRICMS: TFloatField
      FieldName = 'NOCIN3VLRICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRICMS'
    end
    object SQLNotaCompraItensNOCIN3PERCICMS: TFloatField
      FieldName = 'NOCIN3PERCICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCICMS'
    end
    object SQLNotaCompraItensNOCIN3VLRSUBST: TFloatField
      FieldName = 'NOCIN3VLRSUBST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRSUBST'
    end
    object SQLNotaCompraItensNOCIN3VLRIPI: TFloatField
      FieldName = 'NOCIN3VLRIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRIPI'
    end
    object SQLNotaCompraItensNOCIN3PERCIPI: TFloatField
      FieldName = 'NOCIN3PERCIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCIPI'
    end
    object SQLNotaCompraItensNOCIN3VLRCUSTOMED: TFloatField
      FieldName = 'NOCIN3VLRCUSTOMED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRCUSTOMED'
    end
    object SQLNotaCompraItensNOCIN3VLRFRETE: TFloatField
      FieldName = 'NOCIN3VLRFRETE'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRFRETE'
    end
    object SQLNotaCompraItensPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.NOTACOMPRAITEM.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraItensPCITIPOS: TIntegerField
      FieldName = 'PCITIPOS'
      Origin = 'DB.NOTACOMPRAITEM.PCITIPOS'
    end
    object SQLNotaCompraItensPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTACOMPRAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaCompraItensREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTACOMPRAITEM.REGISTRO'
    end
    object SQLNotaCompraItensLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTACOMPRAITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaCompraItensNOCIN2ITENSENVIADOS: TFloatField
      FieldName = 'NOCIN2ITENSENVIADOS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2ITENSENVIADOS'
    end
    object SQLNotaCompraItensNOCIN2VLRCOMISSAO: TFloatField
      FieldName = 'NOCIN2VLRCOMISSAO'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRCOMISSAO'
    end
    object SQLNotaCompraItensPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraItensPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLNotaCompraItensNOCIN2FATOR199: TFloatField
      FieldName = 'NOCIN2FATOR199'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2FATOR199'
    end
    object SQLNotaCompraItensNOCIN2MGVENDA: TFloatField
      FieldName = 'NOCIN2MGVENDA'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2MGVENDA'
    end
    object SQLNotaCompraItensNOCIN2QTDENF: TFloatField
      FieldName = 'NOCIN2QTDENF'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2QTDENF'
    end
    object SQLNotaCompraItensNOCIN2VLRVENDA: TFloatField
      FieldName = 'NOCIN2VLRVENDA'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRVENDA'
    end
    object SQLNotaCompraItensNOCIN2MGVENDA2: TFloatField
      FieldName = 'NOCIN2MGVENDA2'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2MGVENDA2'
    end
    object SQLNotaCompraItensNOCIN2VLRVENDA2: TFloatField
      FieldName = 'NOCIN2VLRVENDA2'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRVENDA2'
    end
    object SQLNotaCompraItensNOCIN2PERCDESP: TFloatField
      FieldName = 'NOCIN2PERCDESP'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCDESP'
    end
    object SQLNotaCompraItensNOCIN2PERCDIFICM: TFloatField
      FieldName = 'NOCIN2PERCDIFICM'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCDIFICM'
    end
    object SQLNotaCompraItensNOCIN2PERCSUBST: TFloatField
      FieldName = 'NOCIN2PERCSUBST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCSUBST'
    end
    object SQLNotaCompraItensNOCICALTPRECO: TStringField
      FieldName = 'NOCICALTPRECO'
      Origin = 'DB.NOTACOMPRAITEM.NOCICALTPRECO'
      FixedChar = True
      Size = 1
    end
    object SQLNotaCompraItensCFOPA5CODAUX: TStringField
      FieldName = 'CFOPA5CODAUX'
      Origin = 'DB.NOTACOMPRAITEM.CFOPA5CODAUX'
      FixedChar = True
      Size = 5
    end
    object SQLNotaCompraItensNOCA3CSTCOFINS: TStringField
      FieldName = 'NOCA3CSTCOFINS'
      Origin = 'DB.NOTACOMPRAITEM.NOCA3CSTCOFINS'
      Size = 3
    end
    object SQLNotaCompraItensNOCIA3CSTICMS: TStringField
      FieldName = 'NOCIA3CSTICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIA3CSTICMS'
      Size = 3
    end
    object SQLNotaCompraItensNOCA3CSTIPI: TStringField
      FieldName = 'NOCA3CSTIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCA3CSTIPI'
      Size = 3
    end
    object SQLNotaCompraItensNOCA3CSTPIS: TStringField
      FieldName = 'NOCA3CSTPIS'
      Origin = 'DB.NOTACOMPRAITEM.NOCA3CSTPIS'
      Size = 3
    end
    object SQLNotaCompraItensNOCIN2BASECOFINS: TFloatField
      FieldName = 'NOCIN2BASECOFINS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2BASECOFINS'
    end
    object SQLNotaCompraItensNOCIN2BASEISS: TFloatField
      FieldName = 'NOCIN2BASEISS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2BASEISS'
      Precision = 9
    end
    object SQLNotaCompraItensNOCIN2BASEPIS: TFloatField
      FieldName = 'NOCIN2BASEPIS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2BASEPIS'
    end
    object SQLNotaCompraItensNOCIN2PCREDSN: TFloatField
      FieldName = 'NOCIN2PCREDSN'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PCREDSN'
      Precision = 9
    end
    object SQLNotaCompraItensNOCIN2PERCCOFINS: TFloatField
      FieldName = 'NOCIN2PERCCOFINS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCCOFINS'
      Precision = 9
    end
    object SQLNotaCompraItensNOCIN2PERCISS: TFloatField
      FieldName = 'NOCIN2PERCISS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCISS'
      Precision = 9
    end
    object SQLNotaCompraItensNOCIN2PERCPIS: TFloatField
      FieldName = 'NOCIN2PERCPIS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PERCPIS'
      Precision = 9
    end
    object SQLNotaCompraItensNOCIN2PMVAST: TFloatField
      FieldName = 'NOCIN2PMVAST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PMVAST'
      Precision = 9
    end
    object SQLNotaCompraItensNOCIN2PREDBC: TFloatField
      FieldName = 'NOCIN2PREDBC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PREDBC'
      Precision = 9
    end
    object SQLNotaCompraItensNOCIN2PREDBCST: TFloatField
      FieldName = 'NOCIN2PREDBCST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2PREDBCST'
      Precision = 9
    end
    object SQLNotaCompraItensNOCIN2VBC: TFloatField
      FieldName = 'NOCIN2VBC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VBC'
    end
    object SQLNotaCompraItensNOCIN2VBCIPI: TFloatField
      FieldName = 'NOCIN2VBCIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VBCIPI'
    end
    object SQLNotaCompraItensNOCIN2VBCST: TFloatField
      FieldName = 'NOCIN2VBCST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VBCST'
    end
    object SQLNotaCompraItensNOCIN2VBCSTRET: TFloatField
      FieldName = 'NOCIN2VBCSTRET'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VBCSTRET'
    end
    object SQLNotaCompraItensNOCIN2VCREDICMSSN: TFloatField
      FieldName = 'NOCIN2VCREDICMSSN'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VCREDICMSSN'
    end
    object SQLNotaCompraItensNOCIN2VICMSSTRET: TFloatField
      FieldName = 'NOCIN2VICMSSTRET'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VICMSSTRET'
    end
    object SQLNotaCompraItensNOCIN2VLRCOFINS: TFloatField
      FieldName = 'NOCIN2VLRCOFINS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRCOFINS'
    end
    object SQLNotaCompraItensNOCIN2VLRDESPESAS: TFloatField
      FieldName = 'NOCIN2VLRDESPESAS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRDESPESAS'
    end
    object SQLNotaCompraItensNOCIN2VLRISS: TFloatField
      FieldName = 'NOCIN2VLRISS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRISS'
    end
    object SQLNotaCompraItensNOCIN2VLRPIS: TFloatField
      FieldName = 'NOCIN2VLRPIS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRPIS'
    end
    object SQLNotaCompraItensNOCIN2VLRSEGURO: TFloatField
      FieldName = 'NOCIN2VLRSEGURO'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRSEGURO'
    end
    object SQLNotaCompraItensNOCN4COFINSQTD: TFloatField
      FieldName = 'NOCN4COFINSQTD'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4COFINSQTD'
    end
    object SQLNotaCompraItensNOCN4COFINSREAL: TFloatField
      FieldName = 'NOCN4COFINSREAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4COFINSREAL'
    end
    object SQLNotaCompraItensNOCN4PISQTD: TFloatField
      FieldName = 'NOCN4PISQTD'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4PISQTD'
    end
    object SQLNotaCompraItensNOCN4PISREAL: TFloatField
      FieldName = 'NOCN4PISREAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4PISREAL'
    end
    object SQLNotaCompraItensNOCN4QTDIPI: TFloatField
      FieldName = 'NOCN4QTDIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4QTDIPI'
    end
    object SQLNotaCompraItensNOCN4UNDIPI: TFloatField
      FieldName = 'NOCN4UNDIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCN4UNDIPI'
    end
    object SQLNotaCompraItensNOCIN3VLREMBAL: TFloatField
      DisplayWidth = 15
      FieldName = 'NOCIN3VLREMBAL'
      DisplayFormat = ',0.0000000'
    end
    object SQLNotaCompraItensNOCIN3VLRUNIT: TFloatField
      DisplayWidth = 15
      FieldName = 'NOCIN3VLRUNIT'
      DisplayFormat = ',0.0000000'
    end
    object SQLNotaCompraItensNOCIN3PERCFRETE: TFloatField
      FieldName = 'NOCIN3PERCFRETE'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCFRETE'
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From '
      '  PRODUTO '
      'Where '
      '  PRODICOD = :PRODICOD')
    Macros = <>
    Left = 4
    Top = 386
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLEstoqueAtual: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      
        '   S.PRODICOD,SUM(S.PSLDN3QTDE) as QTDEATUAL,SUM(S.PSLDN3QTDE*P.' +
        'PRODN3VLRCUSTOMED) as CUSTOATUAL,'
      '   SUM(S.PSLDN3QTDE*P.PRODN3VLRCOMPRAMED) as COMPRAATUAL'
      'from '
      '  PRODUTO P,PRODUTOSALDO S'
      'Where '
      '  P.PRODICOD=S.PRODICOD and'
      '  S.PRODICOD=:PRODICOD and'
      '  S.EMPRICOD=:EMPRICOD'
      'group by '
      '  S.PRODICOD')
    Macros = <>
    Left = 4
    Top = 414
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'EMPRICOD'
        ParamType = ptUnknown
      end>
    object SQLEstoqueAtualPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object SQLEstoqueAtualQTDEATUAL: TFloatField
      FieldName = 'QTDEATUAL'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
    end
    object SQLEstoqueAtualCUSTOATUAL: TFloatField
      FieldName = 'CUSTOATUAL'
    end
    object SQLEstoqueAtualCOMPRAATUAL: TFloatField
      FieldName = 'COMPRAATUAL'
    end
  end
  object SQLAtualizaItemPedido: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Update '
      '  PEDIDOCOMPRAITEM'
      'set '
      '  PCITN3QTDENTR = PCITN3QTDENTR - :QtdePed'
      'Where'
      '  PDCPA13ID=:PDCPA13ID and'
      '  PCITIPOS=:PCITIPOS'
      ' ')
    Macros = <>
    Left = 4
    Top = 274
    ParamData = <
      item
        DataType = ftBCD
        Name = 'QtdePed'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftString
        Name = 'PDCPA13ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PCITIPOS'
        ParamType = ptUnknown
      end>
  end
  object SQLNotaParcelas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '    SUM(CTPGN3VLR) as SOMA'
      'From '
      '   CONTASPAGAR'
      'Where'
      '   NOCPA13ID=:NOCPA13ID')
    Macros = <>
    Left = 4
    Top = 302
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOCPA13ID'
        ParamType = ptUnknown
      end>
  end
  object AtualizaContasPagarPC: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Update '
      '    CONTASPAGAR'
      'set'
      '    NOCPA13ID=:NOCPA13ID %MConta'
      'Where '
      '    PDCPA13ID=:PDCPA13ID')
    Macros = <
      item
        DataType = ftString
        Name = 'MConta'
        ParamType = ptInput
      end>
    Left = 4
    Top = 330
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOCPA13ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PDCPA13ID'
        ParamType = ptUnknown
      end>
  end
  object SQLPedidoCompra: TRxQuery
    BeforeDelete = SQLPedidoCompraBeforeDelete
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From PedidoCompra Where PDCPA13ID=:PDCPA13ID')
    Macros = <>
    Left = 4
    Top = 246
    ParamData = <
      item
        DataType = ftString
        Name = 'PDCPA13ID'
        ParamType = ptUnknown
      end>
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 60
    Top = 386
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 60
    Top = 302
  end
  object DSSQLTransportadora: TDataSource
    DataSet = SQLTransportadora
    Left = 60
    Top = 330
  end
  object DSSQLPlanoPagto: TDataSource
    DataSet = SQLPlanoPagamento
    Left = 60
    Top = 358
  end
  object DSSQLPlanoContas: TDataSource
    DataSet = SQLPlanoContas
    Left = 60
    Top = 414
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 60
    Top = 274
  end
  object SQLParcelas: TRxQuery
    Tag = 2
    CachedUpdates = True
    BeforePost = SQLParcelasBeforePost
    AfterPost = SQLParcelasAfterPost
    OnNewRecord = SQLParcelasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONTASPAGAR WHERE'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 32
    Top = 442
    object SQLParcelasCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      Origin = 'DB.CONTASPAGAR.CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASPAGAR.EMPRICOD'
    end
    object SQLParcelasCTPGICOD: TIntegerField
      FieldName = 'CTPGICOD'
      Origin = 'DB.CONTASPAGAR.CTPGICOD'
    end
    object SQLParcelasFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.CONTASPAGAR.FORNICOD'
    end
    object SQLParcelasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASPAGAR.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLParcelasCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      Origin = 'DB.CONTASPAGAR.CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLParcelasCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
      Origin = 'DB.CONTASPAGAR.CTPGINROPARC'
    end
    object SQLParcelasCTPGDTEMIS: TDateTimeField
      FieldName = 'CTPGDTEMIS'
      Origin = 'DB.CONTASPAGAR.CTPGDTEMIS'
    end
    object SQLParcelasCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
      Origin = 'DB.CONTASPAGAR.CTPGDVENC'
    end
    object SQLParcelasCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
      Origin = 'DB.CONTASPAGAR.CTPGN3VLR'
    end
    object SQLParcelasTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASPAGAR.TPDCICOD'
    end
    object SQLParcelasCTPGA5TIPOPADRAO: TStringField
      FieldName = 'CTPGA5TIPOPADRAO'
      Origin = 'DB.CONTASPAGAR.CTPGA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLParcelasNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.CONTASPAGAR.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASPAGAR.PORTICOD'
    end
    object SQLParcelasCTPGDULTPAGTO: TDateTimeField
      FieldName = 'CTPGDULTPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGDULTPAGTO'
    end
    object SQLParcelasCTPGN2TOTPAG: TFloatField
      FieldName = 'CTPGN2TOTPAG'
      Origin = 'DB.CONTASPAGAR.CTPGN2TOTPAG'
    end
    object SQLParcelasCTPGN3JUROPAGTO: TFloatField
      FieldName = 'CTPGN3JUROPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3JUROPAGTO'
    end
    object SQLParcelasCTPGN3MULTAPAGTO: TFloatField
      FieldName = 'CTPGN3MULTAPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3MULTAPAGTO'
    end
    object SQLParcelasCTPGN3DESCPAGTO: TFloatField
      FieldName = 'CTPGN3DESCPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3DESCPAGTO'
    end
    object SQLParcelasCTPGN2DESCPROMO: TFloatField
      FieldName = 'CTPGN2DESCPROMO'
      Origin = 'DB.CONTASPAGAR.CTPGN2DESCPROMO'
    end
    object SQLParcelasPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.CONTASPAGAR.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasCTPGCPREVREAL: TStringField
      FieldName = 'CTPGCPREVREAL'
      Origin = 'DB.CONTASPAGAR.CTPGCPREVREAL'
      FixedChar = True
      Size = 1
    end
    object SQLParcelasCTPGN3TXJURO: TFloatField
      FieldName = 'CTPGN3TXJURO'
      Origin = 'DB.CONTASPAGAR.CTPGN3TXJURO'
    end
    object SQLParcelasCTPGN3TXMULTA: TFloatField
      FieldName = 'CTPGN3TXMULTA'
      Origin = 'DB.CONTASPAGAR.CTPGN3TXMULTA'
    end
    object SQLParcelasPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASPAGAR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLParcelasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASPAGAR.REGISTRO'
    end
    object SQLParcelasCTPGA254HIST: TStringField
      FieldName = 'CTPGA254HIST'
      Origin = 'DB.CONTASPAGAR.CTPGA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLParcelasNOCPA30NRO: TStringField
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.CONTASPAGAR.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLParcelasCQEMA13ID: TStringField
      FieldName = 'CQEMA13ID'
      Origin = 'DB.CONTASPAGAR.CQEMA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLParcelasHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASPAGAR.HTPDICOD'
    end
    object SQLParcelasPLCTA15CODCREDITO: TStringField
      FieldName = 'PLCTA15CODCREDITO'
      Origin = 'DB.CONTASPAGAR.PLCTA15CODCREDITO'
      FixedChar = True
      Size = 15
    end
    object SQLParcelasCTPGDRECBTO: TDateTimeField
      FieldName = 'CTPGDRECBTO'
      Origin = 'DB.CONTASPAGAR.CTPGDRECBTO'
    end
  end
  object DSSQLParcelas: TDataSource
    DataSet = SQLParcelas
    Left = 4
    Top = 442
  end
  object SQLVeiculo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from veiculo')
    Macros = <>
    Left = 4
    Top = 498
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 32
    Top = 498
  end
  object TblNotaCompra: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'NotaCompra.db'
    Left = 437
    Top = 1
    object TblNotaCompraNOCPA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object TblNotaCompraNOCPA4ANO: TStringField
      DisplayLabel = 'Ano'
      FieldName = 'NOCPA4ANO'
      Origin = 'DB.NOTACOMPRA.NOCPA4ANO'
      FixedChar = True
      Size = 4
    end
    object TblNotaCompraNOCPA5SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'NOCPA5SERIE'
      Origin = 'DB.NOTACOMPRA.NOCPA5SERIE'
      FixedChar = True
      Size = 5
    end
    object TblNotaCompraNOCPA30NRO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object TblNotaCompraNOCPCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'NOCPCSTATUS'
      Origin = 'DB.NOTACOMPRA.NOCPCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblNotaCompraNOCPDCANCELAMENTO: TDateTimeField
      DisplayLabel = 'Data Cancelamento'
      FieldName = 'NOCPDCANCELAMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDCANCELAMENTO'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TblNotaCompraNOCPDEMISSAO: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'NOCPDEMISSAO'
      Origin = 'DB.NOTACOMPRA.NOCPDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TblNotaCompraNOCPDRECEBIMENTO: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Data Recto'
      FieldName = 'NOCPDRECEBIMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDRECEBIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TblNotaCompraNOCPN3TOTITENS: TFloatField
      DisplayLabel = 'Total Produtos'
      FieldName = 'NOCPN3TOTITENS'
      Origin = 'DB.NOTACOMPRA.NOCPN3TOTITENS'
    end
    object TblNotaCompraNOCPN3VLRTOTNOTA: TFloatField
      DisplayLabel = 'Total Nota'
      FieldName = 'NOCPN3VLRTOTNOTA'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRTOTNOTA'
    end
    object TblNotaCompraNOCPN3VLRBASCALICM: TFloatField
      DisplayLabel = 'Base Calc. ICMS'
      FieldName = 'NOCPN3VLRBASCALICM'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBASCALICM'
    end
    object TblNotaCompraNOCPN3VLRICMS: TFloatField
      DisplayLabel = 'Valor ICMS'
      FieldName = 'NOCPN3VLRICMS'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMS'
    end
    object TblNotaCompraNOCPN3VLRBCICMSSUB: TFloatField
      DisplayLabel = 'Valor Base Calc. ICMS Sub'
      FieldName = 'NOCPN3VLRBCICMSSUB'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBCICMSSUB'
    end
    object TblNotaCompraNOCPN3VLRICMSSUB: TFloatField
      DisplayLabel = 'Valor ICMS Sub.'
      FieldName = 'NOCPN3VLRICMSSUB'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMSSUB'
    end
    object TblNotaCompraNOCPN3VLRFRETE: TFloatField
      DisplayLabel = 'Valor Frete'
      FieldName = 'NOCPN3VLRFRETE'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRFRETE'
    end
    object TblNotaCompraNOCPN3VLRSEGURO: TFloatField
      DisplayLabel = 'Valor Seguro'
      FieldName = 'NOCPN3VLRSEGURO'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRSEGURO'
    end
    object TblNotaCompraNOCPN3VLROUTRADESP: TFloatField
      DisplayLabel = 'Outras Desp.'
      FieldName = 'NOCPN3VLROUTRADESP'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLROUTRADESP'
    end
    object TblNotaCompraNOCPN3VLRIPI: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'NOCPN3VLRIPI'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRIPI'
    end
    object TblNotaCompraNOCPN3VLRDESC: TFloatField
      DisplayLabel = 'Desc. Promocional'
      FieldName = 'NOCPN3VLRDESC'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRDESC'
    end
    object TblNotaCompraCFOPA5COD: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CFOPA5COD'
      Origin = 'DB.NOTACOMPRA.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object TblNotaCompraNOCPN3PERCICMSFRET: TFloatField
      DisplayLabel = '% ICMS Frete'
      FieldName = 'NOCPN3PERCICMSFRET'
      Origin = 'DB.NOTACOMPRA.NOCPN3PERCICMSFRET'
    end
    object TblNotaCompraNOCPA5TIPOFRETE: TStringField
      FieldName = 'NOCPA5TIPOFRETE'
      Origin = 'DB.NOTACOMPRA.NOCPA5TIPOFRETE'
      FixedChar = True
      Size = 5
    end
    object TblNotaCompraNOCPN3TOTDESC: TFloatField
      FieldName = 'NOCPN3TOTDESC'
      Origin = 'DB.NOTACOMPRA.NOCPN3TOTDESC'
    end
    object TblNotaCompraNOCPN3SOMAITENS: TFloatField
      FieldName = 'NOCPN3SOMAITENS'
      Origin = 'DB.NOTACOMPRA.NOCPN3SOMAITENS'
    end
    object TblNotaCompraNOCPA254OBS: TMemoField
      FieldName = 'NOCPA254OBS'
      Origin = 'DB.NOTACOMPRA.NOCPA254OBS'
      BlobType = ftMemo
      Size = 240
    end
    object TblNotaCompraEMPRICODDEST: TIntegerField
      DisplayLabel = 'Empresa Origem'
      FieldName = 'EMPRICODDEST'
      Origin = 'DB.NOTACOMPRA.EMPRICODDEST'
    end
    object TblNotaCompraUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.NOTACOMPRA.USUAA60LOGIN'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object TblNotaCompraOperacaoEstoqueLookup: TStringField
      FieldName = 'OperacaoEstoqueLookup'
      Size = 60
    end
    object TblNotaCompraPlanoPagamentoLookup: TStringField
      FieldName = 'PlanoPagamentoLookup'
      Size = 60
    end
    object TblNotaCompraTransportadoraLookup: TStringField
      FieldName = 'TransportadoraLookup'
      Size = 60
    end
    object TblNotaCompraDescr_FornEmprCli: TStringField
      FieldName = 'Descr_FornEmprCli'
      Size = 60
    end
    object TblNotaCompraEmpresaLookup: TStringField
      FieldName = 'EmpresaLookup'
      Size = 60
    end
  end
  object TblNotaCompraItem: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'NotaCompraItem.db'
    Left = 465
    Top = 1
    object TblNotaCompraItemNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRAITEM.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblNotaCompraItemNOCIIITEM: TIntegerField
      FieldName = 'NOCIIITEM'
      Origin = 'DB.NOTACOMPRAITEM.NOCIIITEM'
    end
    object TblNotaCompraItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTACOMPRAITEM.PRODICOD'
    end
    object TblNotaCompraItemNOCIN3QTDBONIF: TFloatField
      FieldName = 'NOCIN3QTDBONIF'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDBONIF'
    end
    object TblNotaCompraItemNOCIN3CAPEMBAL: TFloatField
      FieldName = 'NOCIN3CAPEMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3CAPEMBAL'
    end
    object TblNotaCompraItemNOCIN3QTDEMBAL: TFloatField
      FieldName = 'NOCIN3QTDEMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDEMBAL'
    end
    object TblNotaCompraItemNOCIN3QTDEPED: TFloatField
      FieldName = 'NOCIN3QTDEPED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3QTDEPED'
    end
    object TblNotaCompraItemNOCIN3TOTPED: TFloatField
      FieldName = 'NOCIN3TOTPED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3TOTPED'
    end
    object TblNotaCompraItemNOCIN3VLREMBAL: TFloatField
      FieldName = 'NOCIN3VLREMBAL'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLREMBAL'
    end
    object TblNotaCompraItemNOCIN3VLRUNIT: TFloatField
      FieldName = 'NOCIN3VLRUNIT'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRUNIT'
    end
    object TblNotaCompraItemNOCIN3VLRDESC: TFloatField
      FieldName = 'NOCIN3VLRDESC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRDESC'
    end
    object TblNotaCompraItemNOCIN3PERCDESC: TFloatField
      FieldName = 'NOCIN3PERCDESC'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCDESC'
    end
    object TblNotaCompraItemNOCIN3VLRICMS: TFloatField
      FieldName = 'NOCIN3VLRICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRICMS'
    end
    object TblNotaCompraItemNOCIN3PERCICMS: TFloatField
      FieldName = 'NOCIN3PERCICMS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCICMS'
    end
    object TblNotaCompraItemNOCIN3VLRSUBST: TFloatField
      FieldName = 'NOCIN3VLRSUBST'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRSUBST'
    end
    object TblNotaCompraItemNOCIN3VLRIPI: TFloatField
      FieldName = 'NOCIN3VLRIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRIPI'
    end
    object TblNotaCompraItemNOCIN3PERCIPI: TFloatField
      FieldName = 'NOCIN3PERCIPI'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3PERCIPI'
    end
    object TblNotaCompraItemNOCIN3VLRCUSTOMED: TFloatField
      FieldName = 'NOCIN3VLRCUSTOMED'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRCUSTOMED'
    end
    object TblNotaCompraItemNOCIN3VLRFRETE: TFloatField
      FieldName = 'NOCIN3VLRFRETE'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN3VLRFRETE'
    end
    object TblNotaCompraItemPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.NOTACOMPRAITEM.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblNotaCompraItemPCITIPOS: TIntegerField
      FieldName = 'PCITIPOS'
      Origin = 'DB.NOTACOMPRAITEM.PCITIPOS'
    end
    object TblNotaCompraItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTACOMPRAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblNotaCompraItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTACOMPRAITEM.REGISTRO'
    end
    object TblNotaCompraItemLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTACOMPRAITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object TblNotaCompraItemNOCIN2ITENSENVIADOS: TFloatField
      FieldName = 'NOCIN2ITENSENVIADOS'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2ITENSENVIADOS'
    end
    object TblNotaCompraItemNOCIN2VLRCOMISSAO: TFloatField
      FieldName = 'NOCIN2VLRCOMISSAO'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRCOMISSAO'
    end
    object TblNotaCompraItemPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblNotaCompraItemPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object TblNotaCompraItemNOCIN2VLRVENDA2: TFloatField
      FieldName = 'NOCIN2VLRVENDA2'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRVENDA2'
    end
    object TblNotaCompraItemNOCIN2MGVENDA2: TFloatField
      FieldName = 'NOCIN2MGVENDA2'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2MGVENDA2'
    end
    object TblNotaCompraItemNOCIN2VLRVENDA: TFloatField
      FieldName = 'NOCIN2VLRVENDA'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2VLRVENDA'
    end
    object TblNotaCompraItemNOCIN2QTDENF: TFloatField
      FieldName = 'NOCIN2QTDENF'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2QTDENF'
    end
    object TblNotaCompraItemNOCIN2MGVENDA: TFloatField
      FieldName = 'NOCIN2MGVENDA'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2MGVENDA'
    end
    object TblNotaCompraItemNOCIN2FATOR199: TFloatField
      FieldName = 'NOCIN2FATOR199'
      Origin = 'DB.NOTACOMPRAITEM.NOCIN2FATOR199'
    end
    object TblNotaCompraItemNOCICALTPRECO: TStringField
      FieldName = 'NOCICALTPRECO'
      Origin = 'DB.NOTACOMPRAITEM.NOCICALTPRECO'
      Size = 1
    end
  end
  object BatchMove: TBatchMove
    Mode = batCopy
    Left = 521
    Top = 1
  end
  object TblNotaCompraParcelas: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'NotaCompraParcelas.db'
    Left = 493
    Top = 1
    object TblNotaCompraParcelasNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.CONTASPAGAR.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblNotaCompraParcelasCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      Origin = 'DB.CONTASPAGAR.CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object TblNotaCompraParcelasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASPAGAR.EMPRICOD'
    end
    object TblNotaCompraParcelasCTPGICOD: TIntegerField
      FieldName = 'CTPGICOD'
      Origin = 'DB.CONTASPAGAR.CTPGICOD'
    end
    object TblNotaCompraParcelasFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.CONTASPAGAR.FORNICOD'
    end
    object TblNotaCompraParcelasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASPAGAR.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object TblNotaCompraParcelasCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      Origin = 'DB.CONTASPAGAR.CTPGA20DOCORIG'
      FixedChar = True
    end
    object TblNotaCompraParcelasCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
      Origin = 'DB.CONTASPAGAR.CTPGINROPARC'
    end
    object TblNotaCompraParcelasCTPGDTEMIS: TDateTimeField
      FieldName = 'CTPGDTEMIS'
      Origin = 'DB.CONTASPAGAR.CTPGDTEMIS'
    end
    object TblNotaCompraParcelasCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
      Origin = 'DB.CONTASPAGAR.CTPGDVENC'
    end
    object TblNotaCompraParcelasCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
      Origin = 'DB.CONTASPAGAR.CTPGN3VLR'
    end
    object TblNotaCompraParcelasTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASPAGAR.TPDCICOD'
    end
    object TblNotaCompraParcelasCTPGA5TIPOPADRAO: TStringField
      FieldName = 'CTPGA5TIPOPADRAO'
      Origin = 'DB.CONTASPAGAR.CTPGA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object TblNotaCompraParcelasPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASPAGAR.PORTICOD'
    end
    object TblNotaCompraParcelasCTPGDULTPAGTO: TDateTimeField
      FieldName = 'CTPGDULTPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGDULTPAGTO'
    end
    object TblNotaCompraParcelasCTPGN2TOTPAG: TFloatField
      FieldName = 'CTPGN2TOTPAG'
      Origin = 'DB.CONTASPAGAR.CTPGN2TOTPAG'
    end
    object TblNotaCompraParcelasCTPGN3JUROPAGTO: TFloatField
      FieldName = 'CTPGN3JUROPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3JUROPAGTO'
    end
    object TblNotaCompraParcelasCTPGN3MULTAPAGTO: TFloatField
      FieldName = 'CTPGN3MULTAPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3MULTAPAGTO'
    end
    object TblNotaCompraParcelasCTPGN3DESCPAGTO: TFloatField
      FieldName = 'CTPGN3DESCPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3DESCPAGTO'
    end
    object TblNotaCompraParcelasCTPGN2DESCPROMO: TFloatField
      FieldName = 'CTPGN2DESCPROMO'
      Origin = 'DB.CONTASPAGAR.CTPGN2DESCPROMO'
    end
    object TblNotaCompraParcelasPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.CONTASPAGAR.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblNotaCompraParcelasCTPGCPREVREAL: TStringField
      FieldName = 'CTPGCPREVREAL'
      Origin = 'DB.CONTASPAGAR.CTPGCPREVREAL'
      FixedChar = True
      Size = 1
    end
    object TblNotaCompraParcelasCTPGN3TXJURO: TFloatField
      FieldName = 'CTPGN3TXJURO'
      Origin = 'DB.CONTASPAGAR.CTPGN3TXJURO'
    end
    object TblNotaCompraParcelasCTPGN3TXMULTA: TFloatField
      FieldName = 'CTPGN3TXMULTA'
      Origin = 'DB.CONTASPAGAR.CTPGN3TXMULTA'
    end
    object TblNotaCompraParcelasPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASPAGAR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblNotaCompraParcelasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASPAGAR.REGISTRO'
    end
    object TblNotaCompraParcelasCTPGA254HIST: TStringField
      FieldName = 'CTPGA254HIST'
      Origin = 'DB.CONTASPAGAR.CTPGA254HIST'
      FixedChar = True
      Size = 254
    end
    object TblNotaCompraParcelasNOCPA30NRO: TStringField
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.CONTASPAGAR.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object TblNotaCompraParcelasCQEMA13ID: TStringField
      FieldName = 'CQEMA13ID'
      Origin = 'DB.CONTASPAGAR.CQEMA13ID'
      FixedChar = True
      Size = 13
    end
    object TblNotaCompraParcelasHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASPAGAR.HTPDICOD'
    end
    object TblNotaCompraParcelasPLCTA15CODCREDITO: TStringField
      FieldName = 'PLCTA15CODCREDITO'
      Origin = 'DB.CONTASPAGAR.PLCTA15CODCREDITO'
      FixedChar = True
      Size = 15
    end
    object TblNotaCompraParcelasCTPGDRECBTO: TDateTimeField
      FieldName = 'CTPGDRECBTO'
      Origin = 'DB.CONTASPAGAR.CTPGDRECBTO'
    end
  end
  object SQLMovEstoque: TRxQuery
    OnCalcFields = SQLMovEstoqueCalcFields
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select'
      'movimentoestoque.empricod,'
      'movimentoestoque.mvesdmov,'
      'operacaoestoque.opesa60descr,'
      'movimentoestoque.prodicod,'
      'produto.proda60refer,'
      'produto.proda60codbar,'
      'notacompra.NOCPDEMISSAO,'
      'notacompra.nocpdrecebimento'
      'from'
      'movimentoestoque'
      
        'left outer join produto on movimentoestoque.prodicod = produto.p' +
        'rodicod'
      
        'left outer join operacaoestoque on movimentoestoque.opesicod = o' +
        'peracaoestoque.opesicod'
      
        'left outer join notacompra on movimentoestoque.nocpa13id = notac' +
        'ompra.nocpa13id'
      'where'
      'movimentoestoque.nocpa13id = :NOCPA13ID'
      'order by'
      'movimentoestoque.prodicod'
      '')
    Macros = <>
    Left = 32
    Top = 246
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'NOCPA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLMovEstoqueEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
    end
    object SQLMovEstoqueMVESDMOV: TDateTimeField
      DisplayLabel = 'Data Mov.'
      FieldName = 'MVESDMOV'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLMovEstoqueOPESA60DESCR: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovEstoquePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODICOD'
    end
    object SQLMovEstoquePRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLMovEstoquePRODA60CODBAR: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLMovEstoqueNOCPDEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o NF'
      FieldName = 'NOCPDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLMovEstoqueNOCPDRECEBIMENTO: TDateTimeField
      DisplayLabel = 'Recbto. NF'
      FieldName = 'NOCPDRECEBIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLMovEstoqueProdutoLookup: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 100
      Calculated = True
    end
  end
  object DSSQLMovEstoque: TDataSource
    DataSet = SQLMovEstoque
    Left = 60
    Top = 246
  end
  object RDPrintRelDep: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Nota Compra - Conferencia'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Invisivel
    OpcoesPreview.BotaoLer = Invisivel
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'Vanderlei Matte'
    RegistroUsuario.SerieProduto = 'SINGLE-1206/01012'
    RegistroUsuario.AutorizacaoKey = 'WUKQ-4652-CKDL-2083-NXEO'
    About = 'RDprint 4.0d - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Nota Compra - Conferencia'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Grafico
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 549
    Top = 1
  end
  object TblItenscomPrecosAlterados: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'ItensComprados.db'
    Left = 609
    Top = 1
    object TblItenscomPrecosAlteradosCDBarras: TStringField
      FieldName = 'CDBarras'
      Size = 15
    end
    object TblItenscomPrecosAlteradosNOCICALTPRECO: TStringField
      FieldName = 'NOCICALTPRECO'
      Size = 1
    end
    object TblItenscomPrecosAlteradosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblItenscomPrecosAlteradosNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Size = 13
    end
    object TblItenscomPrecosAlteradosPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblItenscomPrecosAlteradosQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object TblItenscomPrecosAlteradosVLRVENDA: TFloatField
      FieldName = 'VLRVENDA'
    end
  end
  object SQLCodBarras: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'Select * From ProdutoBarras'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 639
    Top = 1
    object SQLCodBarrasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOBARRAS.PRODICOD'
    end
    object SQLCodBarrasPRBAA15BARRAS: TStringField
      FieldName = 'PRBAA15BARRAS'
      Origin = 'DB.PRODUTOBARRAS.PRBAA15BARRAS'
      FixedChar = True
      Size = 15
    end
  end
  object TblEtiquetas: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'Etiquetas.db'
    Left = 673
    Top = 1
    object TblEtiquetasContador: TAutoIncField
      FieldName = 'Contador'
      ReadOnly = True
    end
    object TblEtiquetasProdutoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ProdutoCodigo'
    end
    object TblEtiquetasCodigoBarras: TStringField
      DisplayLabel = 'Barras'
      FieldName = 'CodigoBarras'
    end
    object TblEtiquetasREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
      Size = 60
    end
    object TblEtiquetasDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 60
    end
    object TblEtiquetasPreco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'Preco'
      DisplayFormat = '#,##0.00'
    end
    object TblEtiquetasTamanho: TStringField
      DisplayLabel = 'Tam.'
      FieldName = 'Tamanho'
      Size = 5
    end
    object TblEtiquetasDescricaoReduzida: TStringField
      DisplayLabel = 'Descri'#231#227'o Reduzida'
      FieldName = 'DescricaoReduzida'
      Size = 30
    end
    object TblEtiquetasCodigoEstrut: TStringField
      DisplayLabel = 'Estrututurado'
      FieldName = 'CodigoEstrut'
      Size = 30
    end
    object TblEtiquetasMarca: TStringField
      FieldName = 'Marca'
      Size = 15
    end
    object TblEtiquetasDtUltEntr: TDateField
      DisplayLabel = #218'lt.Entrada'
      FieldName = 'DtUltEntr'
    end
    object TblEtiquetasCustFant: TStringField
      FieldName = 'CustFant'
      Size = 10
    end
    object TblEtiquetasParcPlanos: TMemoField
      FieldName = 'ParcPlanos'
      BlobType = ftMemo
      Size = 240
    end
    object TblEtiquetasCor: TStringField
      FieldName = 'Cor'
      Size = 30
    end
    object TblEtiquetasQuant: TIntegerField
      DisplayLabel = 'Quant.'
      FieldName = 'Quant'
    end
    object TblEtiquetasProdutoCodigoAntigo: TStringField
      DisplayLabel = 'C'#243'd.Antigo'
      FieldName = 'ProdutoCodigoAntigo'
      Size = 15
    end
    object TblEtiquetasLote: TStringField
      FieldName = 'Lote'
      Size = 30
    end
    object TblEtiquetasPrateleira: TStringField
      FieldName = 'Prateleira'
      Size = 60
    end
    object TblEtiquetasPavimento: TStringField
      FieldName = 'Pavimento'
      Size = 60
    end
    object TblEtiquetasRua: TStringField
      FieldName = 'Rua'
      Size = 60
    end
    object TblEtiquetasDimensao: TStringField
      FieldName = 'Dimensao'
      Size = 60
    end
    object TblEtiquetasInfo01EtqBarras: TStringField
      FieldName = 'Info01EtqBarras'
      Size = 30
    end
    object TblEtiquetasInfo02EtqBarras: TStringField
      FieldName = 'Info02EtqBarras'
      Size = 30
    end
    object TblEtiquetasUnidade: TStringField
      FieldName = 'Unidade'
      Size = 5
    end
  end
  object TblEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Empresa')
    Macros = <>
    Left = 31
    Top = 217
  end
  object DSTblEmpresa: TDataSource
    DataSet = TblEmpresa
    Left = 60
    Top = 217
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 70
    Top = 501
    object cdsProdutosPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object cdsProdutosQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
  end
end
