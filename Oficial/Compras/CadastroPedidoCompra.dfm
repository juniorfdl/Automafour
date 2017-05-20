inherited FormCadastroPedidoCompra: TFormCadastroPedidoCompra
  Left = 467
  Top = 93
  Caption = 'Pedido de Compra'
  ClientHeight = 558
  ClientWidth = 780
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 780
    Height = 558
    inherited PanelCabecalho: TPanel
      Width = 778
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 778
        inherited Panel1: TPanel
          Width = 776
          inherited PanelNavigator: TPanel
            Width = 776
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 776
            end
          end
          inherited PanelLeft: TPanel
            Left = 319
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 778
      Height = 484
      inherited PanelBarra: TPanel
        Height = 484
        inherited Button3: TRxSpeedButton
          Tag = 3
          Caption = '&3 Itens'
          Visible = True
          OnClick = Button1Click
        end
        object Button4: TRxSpeedButton
          Tag = 3
          Left = 1
          Top = 73
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Financeiro'
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
        object Label39: TLabel
          Left = 22
          Top = 142
          Width = 91
          Height = 13
          Caption = 'Tot.Ped.Abertos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button5: TRxSpeedButton
          Tag = 3
          Left = 1
          Top = 96
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&5 Stat'#237'sticas'
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
        object EvDBNumEdit10: TEvDBNumEdit
          Left = 7
          Top = 156
          Width = 115
          Height = 19
          TabStop = False
          AutoHideCalculator = False
          BorderStyle = bsNone
          Color = 15461355
          Ctl3D = False
          DataField = 'TOTALPEDIDOS'
          DataSource = DSSQLTotalPedAbertos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
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
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 648
        Height = 484
        inherited Panel5: TPanel
          Width = 648
          Height = 484
          inherited PagePrincipal: TPageControl
            Width = 648
            Height = 402
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 66
                Width = 640
                Height = 310
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PDCPA13ID'
                    Width = 85
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Width = 52
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EmpresaLookup'
                    Width = 188
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FornecedorLookup'
                    Width = 239
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDCPDEMIS'
                    Title.Caption = 'Data Emiss'#227'o'
                    Width = 80
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDCPCSTATUS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDCPN2TOTITENS'
                    Title.Caption = 'Valor Total Produtos'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 640
                Height = 66
                inherited PanelBetween: TPanel
                  Width = 246
                  Height = 39
                  inherited AdvPanel1: TAdvPanel
                    Width = 246
                    Height = 39
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 246
                  Height = 39
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 246
                    Height = 39
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  Height = 39
                  inherited AdvPanelIndice: TAdvPanel
                    Height = 39
                    FullHeight = 0
                  end
                end
                object PanelPesquisa: TPanel
                  Left = 0
                  Top = 39
                  Width = 640
                  Height = 27
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 16249066
                  TabOrder = 3
                  TabStop = True
                  object BTNLocalizar: TSpeedButton
                    Left = 536
                    Top = 3
                    Width = 95
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
                  object Label20: TLabel
                    Left = 4
                    Top = 8
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
                  object ComboFornecedorConsulta: TRxDBLookupCombo
                    Left = 135
                    Top = 4
                    Width = 396
                    Height = 21
                    Hint = 
                      'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                      'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                    DropDownCount = 8
                    DisplayEmpty = 'Procura Fornecedor pela Raz'#227'o Social'
                    LookupField = 'FORNICOD'
                    LookupDisplay = 'FORNA60RAZAOSOC'
                    LookupSource = DSTblFornecedor
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                  end
                  object EditCNPJ: TMaskEdit
                    Left = 32
                    Top = 4
                    Width = 97
                    Height = 21
                    CharCase = ecUpperCase
                    TabOrder = 0
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Lines.Strings = (
                  'PEDIDOCOMPRAITEM'
                  'CONTASPAGAR')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 5
                Top = 5
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
              object Label5: TLabel
                Left = 4
                Top = 43
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
              object Label9: TLabel
                Left = 332
                Top = 198
                Width = 96
                Height = 13
                Caption = 'Previs'#227'o Entrega'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 473
                Top = 198
                Width = 117
                Height = 13
                Caption = 'Base p/Faturamento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 5
                Top = 159
                Width = 83
                Height = 13
                Caption = 'Valor Encargos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 134
                Top = 159
                Width = 62
                Height = 13
                Caption = 'Valor Frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 263
                Top = 159
                Width = 103
                Height = 13
                Caption = 'Desc. Promocional'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 392
                Top = 159
                Width = 57
                Height = 13
                Caption = 'Tipo Frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 4
                Top = 279
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
              object Label16: TLabel
                Left = 4
                Top = 236
                Width = 98
                Height = 13
                Caption = 'Nome Comprador'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 4
                Top = 80
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
              object BtnFornecedor: TSpeedButton
                Left = 615
                Top = 54
                Width = 24
                Height = 24
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
              object BtnTransportadora: TSpeedButton
                Left = 615
                Top = 92
                Width = 24
                Height = 24
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
              object Label18: TLabel
                Left = 331
                Top = 236
                Width = 89
                Height = 13
                Caption = 'Nome Vendedor'
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 3
                Top = 198
                Width = 144
                Height = 13
                Caption = 'Nro.Pedido no Fornecedor'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label19: TLabel
                Left = 4
                Top = 120
                Width = 84
                Height = 13
                Caption = 'Plano de Pagto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BtnPlanoPagto: TSpeedButton
                Left = 615
                Top = 132
                Width = 24
                Height = 24
                Hint = 'Acessa Planos de Pagamento'
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
                OnClick = BtnPlanoPagtoClick
              end
              object ComboTipoFrete: TRxDBComboBox
                Left = 391
                Top = 173
                Width = 218
                Height = 21
                Style = csDropDownList
                DataField = 'PDCPA5TIPOFRETE'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Emitente (CIF)'
                  'Destinat'#225'rio (FOB)')
                TabOrder = 7
                Values.Strings = (
                  'C'
                  'F')
              end
              object DBDateEdit1: TDBDateEdit
                Left = 331
                Top = 212
                Width = 136
                Height = 21
                DataField = 'PDCPDPREVENTREGA'
                DataSource = DSTemplate
                DefaultToday = True
                DialogTitle = 'Selecione a Data'
                NumGlyphs = 2
                TabOrder = 9
              end
              object DBEdit3: TDBEdit
                Left = 3
                Top = 252
                Width = 280
                Height = 21
                DataField = 'PDCPNOMECOMPRADOR'
                DataSource = DSTemplate
                TabOrder = 11
              end
              object DBDateEdit2: TDBDateEdit
                Left = 472
                Top = 212
                Width = 136
                Height = 21
                DataField = 'PDCPDBASEFAT'
                DataSource = DSTemplate
                DefaultToday = True
                DialogTitle = 'Selecione a Data'
                NumGlyphs = 2
                TabOrder = 10
              end
              object DBMemo1: TDBMemo
                Left = 3
                Top = 293
                Width = 608
                Height = 70
                DataField = 'PDCPA255OBS'
                DataSource = DSTemplate
                TabOrder = 13
              end
              object DBEdit12: TDBEdit
                Left = 330
                Top = 252
                Width = 280
                Height = 21
                DataField = 'PDCPNOMEVENDEDOR'
                DataSource = DSTemplate
                TabOrder = 12
              end
              object DBEdit7: TDBEdit
                Left = 3
                Top = 212
                Width = 146
                Height = 21
                DataField = 'PDCPA10NROFORN'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object EvDBNumEdit2: TEvDBNumEdit
                Left = 4
                Top = 173
                Width = 126
                Height = 21
                AutoHideCalculator = False
                DataField = 'PDCPN2VLRENCARGO'
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
                TabOrder = 4
              end
              object EvDBNumEdit3: TEvDBNumEdit
                Left = 133
                Top = 173
                Width = 126
                Height = 21
                AutoHideCalculator = False
                DataField = 'PDCPN2VLRFRETE'
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
              object EvDBNumEdit4: TEvDBNumEdit
                Left = 262
                Top = 173
                Width = 126
                Height = 21
                AutoHideCalculator = False
                DataField = 'PDCPN2DESCPROM'
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
              object ComboFornecedor: TRxDBLookupCombo
                Left = 3
                Top = 57
                Width = 607
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'FORNICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'FORNICOD'
                LookupDisplay = 'FORNICOD;FORNA14CGC;FORNA60RAZAOSOC'
                LookupDisplayIndex = 2
                LookupSource = DSTblFornecedor
                ParentFont = False
                TabOrder = 1
                OnExit = ComboFornecedorExit
                OnKeyDown = ComboFornecedorKeyDown
              end
              object ComboEmpresa: TRxDBLookupCombo
                Left = 3
                Top = 19
                Width = 608
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'EMPRICODDEST'
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
                TabOrder = 0
              end
              object ComboTransportadora: TRxDBLookupCombo
                Left = 3
                Top = 94
                Width = 607
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'TRANICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'TRANICOD'
                LookupDisplay = 'TRANICOD;TRANA60RAZAOSOC'
                LookupDisplayIndex = 1
                LookupSource = DSTblTransportadora
                ParentFont = False
                TabOrder = 2
                OnKeyDown = ComboTransportadoraKeyDown
              end
              object ComboPlanoPagamento: TRxDBLookupCombo
                Left = 3
                Top = 134
                Width = 607
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'PLPGICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'PLPGICOD'
                LookupDisplay = 'PLPGICOD;PLPGA60DESCR'
                LookupDisplayIndex = 1
                LookupSource = DSTblPlanoPagamento
                ParentFont = False
                TabOrder = 3
                OnKeyDown = ComboPlanoPagamentoKeyDown
              end
            end
            object TabStatisticas: TTabSheet
              Caption = 'Stat'#237'sticas'
              ImageIndex = 2
              object Label24: TLabel
                Left = 15
                Top = 115
                Width = 139
                Height = 16
                Caption = 'Vlr.Total Ped.Abertos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label25: TLabel
                Left = 15
                Top = 149
                Width = 159
                Height = 16
                Caption = 'Vlr.Total Ped.Encerrados'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label26: TLabel
                Left = 15
                Top = 183
                Width = 151
                Height = 16
                Caption = 'Vlr.Total Ped.Faturados'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 640
                Height = 26
                Align = alTop
                BevelOuter = bvNone
                Color = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Panel6: TPanel
                  Left = 288
                  Top = 23
                  Width = 352
                  Height = 3
                  Align = alRight
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 1
                end
                object Panel7: TPanel
                  Left = 0
                  Top = 0
                  Width = 640
                  Height = 23
                  Align = alTop
                  BevelOuter = bvNone
                  Color = 10053171
                  TabOrder = 0
                  object Label23: TLabel
                    Left = 0
                    Top = 0
                    Width = 426
                    Height = 25
                    Align = alLeft
                    Caption = '         ***     Estat'#237'sticas do Per'#237'odo    ***'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -21
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                end
              end
              object GroupBox1: TGroupBox
                Left = 9
                Top = 39
                Width = 232
                Height = 53
                Caption = ' Per'#237'odo para An'#225'lise '
                TabOrder = 1
                object Label21: TLabel
                  Left = 10
                  Top = 26
                  Width = 15
                  Height = 13
                  Caption = 'De'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 116
                  Top = 26
                  Width = 19
                  Height = 13
                  Caption = 'at'#233
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object De: TDateEdit
                  Left = 28
                  Top = 21
                  Width = 79
                  Height = 21
                  NumGlyphs = 2
                  TabOrder = 0
                end
                object Ate: TDateEdit
                  Left = 144
                  Top = 21
                  Width = 79
                  Height = 21
                  NumGlyphs = 2
                  TabOrder = 1
                end
              end
              object EvDBNumEdit7: TEvDBNumEdit
                Left = 196
                Top = 114
                Width = 115
                Height = 27
                TabStop = False
                AutoHideCalculator = False
                Color = 14737632
                Ctl3D = True
                DataField = 'TOTALPEDIDOS'
                DataSource = DSSQLTotalPedAbertos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -16
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
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
              end
              object EvDBNumEdit8: TEvDBNumEdit
                Left = 196
                Top = 147
                Width = 115
                Height = 27
                TabStop = False
                AutoHideCalculator = False
                Color = 14737632
                Ctl3D = True
                DataField = 'TOTALPEDIDOS'
                DataSource = dsSQLTotalPedEncerrados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -16
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
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
              end
              object EvDBNumEdit9: TEvDBNumEdit
                Left = 196
                Top = 180
                Width = 115
                Height = 27
                TabStop = False
                AutoHideCalculator = False
                Color = 14737632
                Ctl3D = True
                DataField = 'TOTALPEDIDOS'
                DataSource = dsSQLTotalPedFaturados
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -16
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
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
              end
              object BtCalc: TBitBtn
                Left = 247
                Top = 52
                Width = 100
                Height = 34
                Caption = '&Calcular'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                OnClick = BtCalcClick
                Glyph.Data = {
                  8E040000424D8E040000000000005600000028000000250000001B0000000100
                  080000000000380400000000000000000000080000000800000000000000FF00
                  000084840000FFFF000084008400C6C6C600FFFFFF00FFFFFF00060606060606
                  0606060606060606060606060606060606060606060606060606060606060677
                  7777060606060606060606060606060606060606060606060606060606060606
                  0606060606060677777706060606060606060606060606060606060606060606
                  0606060606060606060606060606060000000606060600000000000000000000
                  0000000000000000000000000000000000000006060606777177060606000104
                  01040104010401040104010401040104010401040104010401040100060606DD
                  DDD0060606000302020202020202020202020202020202020202020202020202
                  0202040006060677111706060600030202000000020000000200000002000000
                  0200000000000000020201000606067777770606060003020205050002050500
                  0205050002050500020705050505050002020400060606DDDDD0060606000302
                  02020500020705000207050002070500020707070707070002020100060606B7
                  B707060606000302020202020202020202020202020202020202020202020202
                  02020400060606DDDDD006060600030202000000020000000200000002000000
                  0200000002000000020201000606067771770606060003020205050002050500
                  0205050002050500020505000205050002020400060606B07777060606000302
                  0202050002070500020705000207050002070500020705000202010006060677
                  7177060606000302020202020202020202020202020202020202020202020202
                  020204000606060000D006060600030202000000020000000200000002000000
                  0200000002000000020201000606064DDDD00606060003020205050002050500
                  0205050002050500020505000205050002020400060606477177060606000302
                  02020500020705000207050002070500020705000207050002020100060606D4
                  4DD0060606000302020202020202020202020202020202020202020202020202
                  0202040006060677717706060600030202000303030303030303030303030303
                  0202020202020202020201000606060707700606060003020200070707070707
                  0707070707070703020202020202020202020400060606444DD0060606000302
                  020005050505050505050505050505030202020202020202020201000606067B
                  7B07060606000302020000000000000000000000000000000202020202020202
                  02020400060606DDDDD006060600030303030303030303030303030303030303
                  0303030303030303030302000606067771770606060600000000000000000000
                  0000000000000000000000000000000000000006060606077070060606060606
                  0606060606060606060606060606060606060606060606060606060606060677
                  7177060606060606060606060606060606060606060606060606060606060606
                  0606060606060677777706060606060606060606060606060606060606060606
                  060606060606060606060606060606DDDDD0}
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 648
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 648
            object LBCodPedido: TLabel
              Left = 9
              Top = 3
              Width = 54
              Height = 13
              Caption = 'ID Pedido'
              FocusControl = DbCodIntegrado
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 419
              Top = 3
              Width = 83
              Height = 13
              Caption = 'Total Produtos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 94
              Top = 3
              Width = 46
              Height = 13
              Caption = 'Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 196
              Top = 3
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
            object Label7: TLabel
              Left = 520
              Top = 3
              Width = 122
              Height = 13
              Caption = 'Total-Desc.Prom+Enc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 315
              Top = 3
              Width = 85
              Height = 13
              Caption = 'Total Desconto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DbCodIntegrado: TDBEdit
              Left = 5
              Top = 16
              Width = 83
              Height = 21
              Color = 16249066
              DataField = 'PDCPA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBDateEdit3: TDBDateEdit
              Left = 90
              Top = 16
              Width = 100
              Height = 21
              DataField = 'PDCPDEMIS'
              DataSource = DSTemplate
              DefaultToday = True
              DialogTitle = 'Selecione a Data'
              NumGlyphs = 2
              TabOrder = 1
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 192
              Top = 16
              Width = 117
              Height = 21
              Style = csDropDownList
              DataField = 'PDCPCSTATUS'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberto'
                'Encerrado'
                'Cancelado'
                'Faturado')
              TabOrder = 2
              Values.Strings = (
                'A'
                'E'
                'C'
                'F')
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 415
              Top = 16
              Width = 100
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'PDCPN2TOTITENS'
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
              ReadOnly = True
              TabOrder = 4
            end
            object EvDBNumEdit5: TEvDBNumEdit
              Left = 518
              Top = 16
              Width = 126
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'TotalCalc'
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
              ReadOnly = True
              TabOrder = 5
            end
            object EvDBNumEdit6: TEvDBNumEdit
              Left = 312
              Top = 16
              Width = 100
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'PDCPN3TOTDESC'
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
              ReadOnly = True
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnCancelarPedidodeCompra: TMenuItem
      Caption = '&Cancelar Pedido de Compra'
      OnClick = MnCancelarPedidodeCompraClick
    end
    object MnAlterarObs: TMenuItem
      Caption = 'Alterar Observa'#231#245'es'
      OnClick = MnAlterarObsClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object ImprimirPedidodeCompra1: TMenuItem
      Caption = 'Pedido de Compra'
      OnClick = ImprimirPedidodeCompra1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EtiquetasdeCodigodeBarras1: TMenuItem
      Caption = '&Etiquetas de C'#243'digo de Barras'
      OnClick = EtiquetasdeCodigodeBarras1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    AfterInsert = SQLTemplateAfterInsert
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From PedidoCompra Where (%MFiltro)')
    object SQLTemplatePDCPA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Pedido'
      FieldName = 'PDCPA13ID'
      Origin = 'DB.PEDIDOCOMPRA.PDCPA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePDCPICOD: TIntegerField
      Tag = 1
      FieldName = 'PDCPICOD'
      Origin = 'DB.PEDIDOCOMPRA.PDCPICOD'
      Visible = False
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Emp'
      FieldName = 'EMPRICOD'
      Origin = 'DB.PEDIDOCOMPRA.EMPRICOD'
    end
    object SQLTemplateEMPRICODDEST: TIntegerField
      DisplayLabel = 'C'#243'd.Emp.Dest.'
      FieldName = 'EMPRICODDEST'
      Origin = 'DB.PEDIDOCOMPRA.EMPRICODDEST'
    end
    object SQLTemplateFORNICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Fornec'
      FieldName = 'FORNICOD'
      Origin = 'DB.PEDIDOCOMPRA.FORNICOD'
    end
    object SQLTemplatePDCPDEMIS: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'PDCPDEMIS'
      Origin = 'DB.PEDIDOCOMPRA.PDCPDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePDCPCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'PDCPCSTATUS'
      Origin = 'DB.PEDIDOCOMPRA.PDCPCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDCPA10NROFORN: TStringField
      DisplayLabel = 'Nro.Pedido no Fornec'
      FieldName = 'PDCPA10NROFORN'
      Origin = 'DB.PEDIDOCOMPRA.PDCPA10NROFORN'
      FixedChar = True
      Size = 10
    end
    object SQLTemplatePDCPN2TOTITENS: TFloatField
      DisplayLabel = 'Total de Produtos'
      FieldName = 'PDCPN2TOTITENS'
      Origin = 'DB.PEDIDOCOMPRA.PDCPN2TOTITENS'
      DisplayFormat = 'R$ #,##0.00'
    end
    object SQLTemplatePDCPN3TOTDESC: TFloatField
      FieldName = 'PDCPN3TOTDESC'
      Origin = 'DB.PEDIDOCOMPRA.PDCPN3TOTDESC'
      DisplayFormat = 'R$ #,##0.00'
    end
    object SQLTemplatePDCPDPREVENTREGA: TDateTimeField
      DisplayLabel = 'Dt.Prev.Entrega'
      FieldName = 'PDCPDPREVENTREGA'
      Origin = 'DB.PEDIDOCOMPRA.PDCPDPREVENTREGA'
    end
    object SQLTemplatePDCPDBASEFAT: TDateTimeField
      FieldName = 'PDCPDBASEFAT'
      Origin = 'DB.PEDIDOCOMPRA.PDCPDBASEFAT'
    end
    object SQLTemplatePDCPN2VLRENCARGO: TFloatField
      FieldName = 'PDCPN2VLRENCARGO'
      Origin = 'DB.PEDIDOCOMPRA.PDCPN2VLRENCARGO'
    end
    object SQLTemplatePDCPN2VLRIPI: TFloatField
      FieldName = 'PDCPN2VLRIPI'
      Origin = 'DB.PEDIDOCOMPRA.PDCPN2VLRIPI'
    end
    object SQLTemplatePDCPN2DESCPROM: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'PDCPN2DESCPROM'
      Origin = 'DB.PEDIDOCOMPRA.PDCPN2DESCPROM'
    end
    object SQLTemplatePDCPN2VLRFRETE: TFloatField
      FieldName = 'PDCPN2VLRFRETE'
      Origin = 'DB.PEDIDOCOMPRA.PDCPN2VLRFRETE'
    end
    object SQLTemplatePDCPA5TIPOFRETE: TStringField
      DisplayLabel = 'Tipo Frete'
      FieldName = 'PDCPA5TIPOFRETE'
      Origin = 'DB.PEDIDOCOMPRA.PDCPA5TIPOFRETE'
      FixedChar = True
      Size = 5
    end
    object SQLTemplatePDCPA255OBS: TStringField
      FieldName = 'PDCPA255OBS'
      Origin = 'DB.PEDIDOCOMPRA.PDCPA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLTemplateTRANICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Transp'
      FieldName = 'TRANICOD'
      Origin = 'DB.PEDIDOCOMPRA.TRANICOD'
    end
    object SQLTemplatePDCPNOMECOMPRADOR: TStringField
      DisplayLabel = 'Comprador'
      FieldName = 'PDCPNOMECOMPRADOR'
      Origin = 'DB.PEDIDOCOMPRA.PDCPNOMECOMPRADOR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePDCPNOMEVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'PDCPNOMEVENDEDOR'
      Origin = 'DB.PEDIDOCOMPRA.PDCPNOMEVENDEDOR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOCOMPRA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOCOMPRA.REGISTRO'
    end
    object SQLTemplateTotalCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalCalc'
      DisplayFormat = 'R$ #,##0.00'
      Calculated = True
    end
    object SQLTemplatePLPGICOD: TIntegerField
      FieldName = 'PLPGICOD'
      Origin = 'DB.PEDIDOCOMPRA.PLPGICOD'
    end
    object SQLTemplatePlanoPagamentoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoPagamentoLookUp'
      LookupDataSet = TblPlanoPagamento
      LookupKeyFields = 'PLPGICOD'
      LookupResultField = 'PLPGA60DESCR'
      KeyFields = 'PLPGICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateDestinatario: TStringField
      FieldKind = fkCalculated
      FieldName = 'Destinatario'
      Size = 60
      Calculated = True
    end
    object SQLTemplateFornecedorLookup: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'FornecedorLookup'
      LookupDataSet = TblFornecedor
      LookupKeyFields = 'FORNICOD'
      LookupResultField = 'FORNA60RAZAOSOC'
      KeyFields = 'FORNICOD'
      Size = 30
      Lookup = True
    end
    object FornecedorUFLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'FornecedorUFLookUp'
      LookupDataSet = TblFornecedor
      LookupKeyFields = 'FORNICOD'
      LookupResultField = 'FORNA2UF'
      KeyFields = 'FORNICOD'
      Size = 2
      Lookup = True
    end
    object SQLTemplateEmpresaLookup: TStringField
      DisplayLabel = 'Empresa Destino'
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = TblEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICODDEST'
      Size = 60
      Lookup = True
    end
    object SQLTemplateEmpresaUFLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaUFLookUp'
      LookupDataSet = TblEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA2UF'
      KeyFields = 'EMPRICODDEST'
      Size = 2
      Lookup = True
    end
    object SQLTemplateTransportadoraLookup: TStringField
      DisplayLabel = 'Transportadora'
      FieldKind = fkLookup
      FieldName = 'TransportadoraLookup'
      LookupDataSet = TblTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA60RAZAOSOC'
      KeyFields = 'TRANICOD'
      Size = 60
      Lookup = True
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update PedidoCompra'
      'set'
      '  PDCPA13ID = :PDCPA13ID,'
      '  PDCPICOD = :PDCPICOD,'
      '  EMPRICOD = :EMPRICOD,'
      '  EMPRICODDEST = :EMPRICODDEST,'
      '  FORNICOD = :FORNICOD,'
      '  PDCPDEMIS = :PDCPDEMIS,'
      '  PDCPCSTATUS = :PDCPCSTATUS,'
      '  PDCPA10NROFORN = :PDCPA10NROFORN,'
      '  PDCPN2TOTITENS = :PDCPN2TOTITENS,'
      '  PDCPDPREVENTREGA = :PDCPDPREVENTREGA,'
      '  PDCPDBASEFAT = :PDCPDBASEFAT,'
      '  PDCPN2VLRENCARGO = :PDCPN2VLRENCARGO,'
      '  PDCPN2VLRIPI = :PDCPN2VLRIPI,'
      '  PDCPN2DESCPROM = :PDCPN2DESCPROM,'
      '  PDCPN2VLRFRETE = :PDCPN2VLRFRETE,'
      '  PDCPA5TIPOFRETE = :PDCPA5TIPOFRETE,'
      '  PDCPA255OBS = :PDCPA255OBS,'
      '  TRANICOD = :TRANICOD,'
      '  PDCPNOMECOMPRADOR = :PDCPNOMECOMPRADOR,'
      '  PDCPNOMEVENDEDOR = :PDCPNOMEVENDEDOR,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  PDCPA13ID = :OLD_PDCPA13ID')
    InsertSQL.Strings = (
      'insert into PedidoCompra'
      
        '  (PDCPA13ID, PDCPICOD, EMPRICOD, EMPRICODDEST, FORNICOD, PDCPDE' +
        'MIS, PDCPCSTATUS, '
      
        '   PDCPA10NROFORN, PDCPN2TOTITENS, PDCPDPREVENTREGA, PDCPDBASEFA' +
        'T, PDCPN2VLRENCARGO, '
      
        '   PDCPN2VLRIPI, PDCPN2DESCPROM, PDCPN2VLRFRETE, PDCPA5TIPOFRETE' +
        ', PDCPA255OBS, '
      
        '   TRANICOD, PDCPNOMECOMPRADOR, PDCPNOMEVENDEDOR, PENDENTE, REGI' +
        'STRO)'
      'values'
      
        '  (:PDCPA13ID, :PDCPICOD, :EMPRICOD, :EMPRICODDEST, :FORNICOD, :' +
        'PDCPDEMIS, '
      
        '   :PDCPCSTATUS, :PDCPA10NROFORN, :PDCPN2TOTITENS, :PDCPDPREVENT' +
        'REGA, :PDCPDBASEFAT, '
      
        '   :PDCPN2VLRENCARGO, :PDCPN2VLRIPI, :PDCPN2DESCPROM, :PDCPN2VLR' +
        'FRETE, '
      
        '   :PDCPA5TIPOFRETE, :PDCPA255OBS, :TRANICOD, :PDCPNOMECOMPRADOR' +
        ', :PDCPNOMEVENDEDOR, '
      '   :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from PedidoCompra'
      'where'
      '  PDCPA13ID = :OLD_PDCPA13ID')
  end
  inherited AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Left = 467
  end
  object TblImpressao: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'ImprPedidoCompra.DB'
    Left = 64
    Top = 317
    object TblImpressaoNumeroPedido: TStringField
      FieldName = 'NumeroPedido'
      Size = 13
    end
    object TblImpressaoDataEmissaoPedido: TDateField
      FieldName = 'DataEmissaoPedido'
    end
    object TblImpressaoNomeEmissor: TStringField
      FieldName = 'NomeEmissor'
      Size = 60
    end
    object TblImpressaoEnderecoEmissor: TStringField
      FieldName = 'EnderecoEmissor'
      Size = 60
    end
    object TblImpressaoBairroEmissor: TStringField
      FieldName = 'BairroEmissor'
      Size = 60
    end
    object TblImpressaoCidadeEmissor: TStringField
      FieldName = 'CidadeEmissor'
      Size = 60
    end
    object TblImpressaoEstadoEmissor: TStringField
      FieldName = 'EstadoEmissor'
      Size = 2
    end
    object TblImpressaoCGCEmissor: TStringField
      FieldName = 'CGCEmissor'
    end
    object TblImpressaoFoneEmissor: TStringField
      FieldName = 'FoneEmissor'
      Size = 15
    end
    object TblImpressaoFaxEmissor: TStringField
      FieldName = 'FaxEmissor'
      Size = 15
    end
    object TblImpressaoIEEmissor: TStringField
      FieldName = 'IEEmissor'
      Size = 15
    end
    object TblImpressaoEmailEmissor: TStringField
      FieldName = 'EmailEmissor'
      Size = 60
    end
    object TblImpressaoCepEmissor: TStringField
      FieldName = 'CepEmissor'
      Size = 8
    end
    object TblImpressaoCodigoFornecedor: TIntegerField
      FieldName = 'CodigoFornecedor'
    end
    object TblImpressaoNomeFornecedor: TStringField
      FieldName = 'NomeFornecedor'
      Size = 60
    end
    object TblImpressaoEnderecoFornecedor: TStringField
      FieldName = 'EnderecoFornecedor'
      Size = 60
    end
    object TblImpressaoBairroFornecedor: TStringField
      FieldName = 'BairroFornecedor'
      Size = 60
    end
    object TblImpressaoCidadeFornecedor: TStringField
      FieldName = 'CidadeFornecedor'
      Size = 60
    end
    object TblImpressaoUFFornecedor: TStringField
      FieldName = 'UFFornecedor'
      Size = 2
    end
    object TblImpressaoFoneFornecedor: TStringField
      FieldName = 'FoneFornecedor'
      Size = 15
    end
    object TblImpressaoFaxFornecedor: TStringField
      FieldName = 'FaxFornecedor'
      Size = 15
    end
    object TblImpressaoObservacaoPedido: TStringField
      FieldName = 'ObservacaoPedido'
      Size = 254
    end
    object TblImpressaoPrevisaoEntregaPedido: TDateField
      FieldName = 'PrevisaoEntregaPedido'
    end
    object TblImpressaoCodigoProduto: TIntegerField
      FieldName = 'CodigoProduto'
    end
    object TblImpressaoReferenciaProduto: TStringField
      FieldName = 'ReferenciaProduto'
    end
    object TblImpressaoDescricaoProduto: TStringField
      FieldName = 'DescricaoProduto'
      Size = 60
    end
    object TblImpressaoMarcaProduto: TStringField
      FieldName = 'MarcaProduto'
      Size = 30
    end
    object TblImpressaoCorProduto: TStringField
      FieldName = 'CorProduto'
      Size = 30
    end
    object TblImpressaoTamanhoProduto: TStringField
      FieldName = 'TamanhoProduto'
      Size = 5
    end
    object TblImpressaoVlrIPIProduto: TFloatField
      FieldName = 'VlrIPIProduto'
    end
    object TblImpressaoQuantidadeProduto: TFloatField
      FieldName = 'QuantidadeProduto'
    end
    object TblImpressaoVlrUnitarioProduto: TFloatField
      FieldName = 'VlrUnitarioProduto'
    end
    object TblImpressaoVlrEmbalProduto: TFloatField
      FieldName = 'VlrEmbalProduto'
    end
    object TblImpressaoVlrEncargos: TFloatField
      FieldName = 'VlrEncargos'
    end
    object TblImpressaoVlrFrete: TFloatField
      FieldName = 'VlrFrete'
    end
    object TblImpressaoVlrDescPromo: TFloatField
      FieldName = 'VlrDescPromo'
    end
    object TblImpressaoTipoFrete: TStringField
      FieldName = 'TipoFrete'
      Size = 5
    end
    object TblImpressaoNomeCompradorEmissor: TStringField
      FieldName = 'NomeCompradorEmissor'
      Size = 60
    end
    object TblImpressaoNomeVendedorFornecedor: TStringField
      FieldName = 'NomeVendedorFornecedor'
      Size = 60
    end
    object TblImpressaoNomeTransportadora: TStringField
      FieldName = 'NomeTransportadora'
      Size = 60
    end
    object TblImpressaoVencimentos: TMemoField
      FieldName = 'Vencimentos'
      BlobType = ftMemo
    end
    object TblImpressaoPlanoPgtoDescricao: TStringField
      FieldName = 'PlanoPgtoDescricao'
      Size = 60
    end
    object TblImpressaoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 5
    end
    object TblImpressaoEmailFornecedor: TStringField
      FieldName = 'EmailFornecedor'
      Size = 60
    end
    object TblImpressaoEmailVendedor: TStringField
      FieldName = 'EmailVendedor'
      Size = 60
    end
    object TblImpressaoVlrST: TFloatField
      FieldName = 'VlrST'
    end
  end
  object SQLPedidoCompraItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  PEDIDOCOMPRAITEM.PCITIPOS,'
      '  PEDIDOCOMPRAITEM.PCITN3CAPEMBAL,'
      '  PEDIDOCOMPRAITEM.PCITN3PERCDESC,'
      '  PEDIDOCOMPRAITEM.PCITN3PERICM,'
      '  PEDIDOCOMPRAITEM.PCITN3PERVIPI,'
      '  PEDIDOCOMPRAITEM.PCITN3QTDBONIF,'
      '  PEDIDOCOMPRAITEM.PCITN3QTDEMBAL,'
      '  PEDIDOCOMPRAITEM.PCITN3QTDENTR,'
      '  PEDIDOCOMPRAITEM.PCITN3VLRDESC,'
      '  PEDIDOCOMPRAITEM.PCITN3VLREMBAL,'
      '  PEDIDOCOMPRAITEM.PCITN3VLRICM,'
      '  PEDIDOCOMPRAITEM.PCITN3VLRST,'
      '  PEDIDOCOMPRAITEM.PCITN3VLRIPI,'
      '  PEDIDOCOMPRAITEM.PCITN3PERCST,'
      '  PEDIDOCOMPRAITEM.PCITN3VLRUNIT,'
      '  PEDIDOCOMPRAITEM.PDCPA13ID,'
      '  PEDIDOCOMPRAITEM.PRODICOD,'
      '  PEDIDOCOMPRA.PDCPDEMIS,'
      '  PEDIDOCOMPRA.FORNICOD,'
      '  PEDIDOCOMPRA.PDCPA255OBS,'
      '  PEDIDOCOMPRA.PDCPDPREVENTREGA,'
      '  PEDIDOCOMPRA.PDCPN2VLRFRETE,'
      '  PEDIDOCOMPRA.PDCPN2VLRENCARGO,'
      '  PEDIDOCOMPRA.PDCPN2DESCPROM,'
      '  PEDIDOCOMPRA.PDCPA5TIPOFRETE,'
      '  PEDIDOCOMPRA.PDCPNOMECOMPRADOR,'
      '  PEDIDOCOMPRA.PDCPNOMEVENDEDOR,'
      '  PEDIDOCOMPRA.TRANICOD,'
      '  EMPRESA.EMPRA14CGC,'
      '  EMPRESA.EMPRA20IE,'
      '  EMPRESA.EMPRA2UF,'
      '  EMPRESA.EMPRA20FONE,'
      '  EMPRESA.EMPRA20FAX,'
      '  EMPRESA.EMPRA60BAI,'
      '  EMPRESA.EMPRA60CID,'
      '  EMPRESA.EMPRA60EMAIL,'
      '  EMPRESA.EMPRA60END,'
      '  EMPRESA.EMPRA60RAZAOSOC,'
      '  EMPRESA.EMPRA8CEP,'
      '  FORNECEDOR.FORNA14CGC,'
      '  FORNECEDOR.FORNA15FAX,'
      '  FORNECEDOR.FORNA15FONE1,'
      '  FORNECEDOR.FORNA20IE,'
      '  FORNECEDOR.FORNA2UF,'
      '  FORNECEDOR.FORNA60BAI,'
      '  FORNECEDOR.FORNA60CID,'
      '  FORNECEDOR.FORNA60CONTATO,'
      '  FORNECEDOR.FORNA60END,'
      '  FORNECEDOR.FORNA60RAZAOSOC,'
      '  FORNECEDOR.FORNA60EMAIL,'
      '  PRODUTO.CORICOD,'
      '  PRODUTO.GRADICOD,'
      '  PRODUTO.GRTMICOD,'
      '  PRODUTO.MARCICOD,'
      '  PRODUTO.UNIDICOD,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODA60REFER'
      'FROM'
      
        ' (((PEDIDOCOMPRAITEM PEDIDOCOMPRAITEM inner join PRODUTO PRODUTO' +
        ' ON PEDIDOCOMPRAITEM.PRODICOD = PRODUTO.PRODICOD)'
      
        ' inner join PEDIDOCOMPRA PEDIDOCOMPRA ON PEDIDOCOMPRAITEM.PDCPA1' +
        '3ID = PEDIDOCOMPRA.PDCPA13ID)'
      
        ' left outer join FORNECEDOR FORNECEDOR ON PEDIDOCOMPRA.FORNICOD ' +
        '= FORNECEDOR.FORNICOD)'
      
        ' left outer join EMPRESA EMPRESA ON PEDIDOCOMPRA.EMPRICOD = EMPR' +
        'ESA.EMPRICOD'
      'where'
      '  (%MPedido)')
    Macros = <
      item
        DataType = ftString
        Name = 'MPedido'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 36
    Top = 317
    object SQLPedidoCompraItemPCITIPOS: TIntegerField
      FieldName = 'PCITIPOS'
    end
    object SQLPedidoCompraItemPCITN3CAPEMBAL: TFloatField
      FieldName = 'PCITN3CAPEMBAL'
    end
    object SQLPedidoCompraItemPCITN3PERCDESC: TFloatField
      FieldName = 'PCITN3PERCDESC'
    end
    object SQLPedidoCompraItemPCITN3PERICM: TFloatField
      FieldName = 'PCITN3PERICM'
    end
    object SQLPedidoCompraItemPCITN3PERVIPI: TFloatField
      FieldName = 'PCITN3PERVIPI'
    end
    object SQLPedidoCompraItemPCITN3QTDBONIF: TFloatField
      FieldName = 'PCITN3QTDBONIF'
    end
    object SQLPedidoCompraItemPCITN3QTDEMBAL: TFloatField
      FieldName = 'PCITN3QTDEMBAL'
    end
    object SQLPedidoCompraItemPCITN3QTDENTR: TFloatField
      FieldName = 'PCITN3QTDENTR'
    end
    object SQLPedidoCompraItemPCITN3VLRDESC: TFloatField
      FieldName = 'PCITN3VLRDESC'
    end
    object SQLPedidoCompraItemPCITN3VLREMBAL: TFloatField
      FieldName = 'PCITN3VLREMBAL'
    end
    object SQLPedidoCompraItemPCITN3VLRICM: TFloatField
      FieldName = 'PCITN3VLRICM'
    end
    object SQLPedidoCompraItemPCITN3VLRIPI: TFloatField
      FieldName = 'PCITN3VLRIPI'
    end
    object SQLPedidoCompraItemPCITN3VLRUNIT: TFloatField
      FieldName = 'PCITN3VLRUNIT'
    end
    object SQLPedidoCompraItemPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoCompraItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLPedidoCompraItemPDCPDEMIS: TDateTimeField
      FieldName = 'PDCPDEMIS'
    end
    object SQLPedidoCompraItemFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object SQLPedidoCompraItemPDCPA255OBS: TStringField
      FieldName = 'PDCPA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLPedidoCompraItemPDCPDPREVENTREGA: TDateTimeField
      FieldName = 'PDCPDPREVENTREGA'
    end
    object SQLPedidoCompraItemPDCPN2VLRFRETE: TFloatField
      FieldName = 'PDCPN2VLRFRETE'
    end
    object SQLPedidoCompraItemPDCPN2VLRENCARGO: TFloatField
      FieldName = 'PDCPN2VLRENCARGO'
    end
    object SQLPedidoCompraItemPDCPN2DESCPROM: TFloatField
      FieldName = 'PDCPN2DESCPROM'
    end
    object SQLPedidoCompraItemPDCPA5TIPOFRETE: TStringField
      FieldName = 'PDCPA5TIPOFRETE'
      FixedChar = True
      Size = 5
    end
    object SQLPedidoCompraItemPDCPNOMECOMPRADOR: TStringField
      FieldName = 'PDCPNOMECOMPRADOR'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemPDCPNOMEVENDEDOR: TStringField
      FieldName = 'PDCPNOMEVENDEDOR'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
    end
    object SQLPedidoCompraItemEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLPedidoCompraItemEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      FixedChar = True
    end
    object SQLPedidoCompraItemEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLPedidoCompraItemEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      FixedChar = True
    end
    object SQLPedidoCompraItemEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLPedidoCompraItemFORNA14CGC: TStringField
      FieldName = 'FORNA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLPedidoCompraItemFORNA15FAX: TStringField
      FieldName = 'FORNA15FAX'
      FixedChar = True
    end
    object SQLPedidoCompraItemFORNA15FONE1: TStringField
      FieldName = 'FORNA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLPedidoCompraItemFORNA20IE: TStringField
      FieldName = 'FORNA20IE'
      FixedChar = True
    end
    object SQLPedidoCompraItemFORNA2UF: TStringField
      FieldName = 'FORNA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLPedidoCompraItemFORNA60BAI: TStringField
      FieldName = 'FORNA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemFORNA60CID: TStringField
      FieldName = 'FORNA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemFORNA60CONTATO: TStringField
      FieldName = 'FORNA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      FixedChar = True
    end
    object SQLPedidoCompraItemFORNA60END: TStringField
      FieldName = 'FORNA60END'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemCORICOD: TIntegerField
      FieldName = 'CORICOD'
    end
    object SQLPedidoCompraItemGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
    end
    object SQLPedidoCompraItemGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
    end
    object SQLPedidoCompraItemMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
    end
    object SQLPedidoCompraItemPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
    end
    object SQLPedidoCompraItemFORNA60EMAIL: TStringField
      FieldName = 'FORNA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLPedidoCompraItemPCITN3VLRST: TFloatField
      FieldName = 'PCITN3VLRST'
    end
    object SQLPedidoCompraItemPCITN3PERCST: TFloatField
      FieldName = 'PCITN3PERCST'
    end
  end
  object ImpPedidoCompra: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    ProgressDialog = False
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
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.PrintSetupBtn = True
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
    Left = 438
    Top = 1
  end
  object TblFinanceiro: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'ImprPedidoCompraFin.DB'
    Left = 64
    Top = 345
    object TblFinanceiroNumeroPedido: TStringField
      FieldName = 'NumeroPedido'
      Size = 13
    end
    object TblFinanceiroDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object TblFinanceiroValorVencimento: TFloatField
      FieldName = 'ValorVencimento'
    end
  end
  object SQLFinanceiro: TRxQuery
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
    Left = 36
    Top = 345
    object SQLFinanceiroCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      Origin = 'DB.CONTASPAGAR.CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLFinanceiroCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
      Origin = 'DB.CONTASPAGAR.CTPGDVENC'
    end
    object SQLFinanceiroCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
      Origin = 'DB.CONTASPAGAR.CTPGN3VLR'
    end
    object SQLFinanceiroPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.CONTASPAGAR.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object TblFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Fornecedor'
      'Order By FORNA60RAZAOSOC')
    Macros = <>
    Left = 64
    Top = 233
    object TblFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'UNITGESTAO.FORNECEDOR.FORNICOD'
    end
    object TblFornecedorFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'UNITGESTAO.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblFornecedorFORNA14CGC: TStringField
      FieldName = 'FORNA14CGC'
      Origin = 'UNITGESTAO.FORNECEDOR.FORNA14CGC'
      EditMask = '##.###.###/####-##;0;_'
      FixedChar = True
      Size = 14
    end
    object TblFornecedorFORNA2UF: TStringField
      FieldName = 'FORNA2UF'
      Origin = 'UNITGESTAO.FORNECEDOR.FORNA2UF'
      FixedChar = True
      Size = 2
    end
  end
  object DSTblFornecedor: TDataSource
    DataSet = TblFornecedor
    Left = 93
    Top = 233
  end
  object TblEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Empresa')
    Macros = <>
    Left = 64
    Top = 204
  end
  object DSTblEmpresa: TDataSource
    DataSet = TblEmpresa
    Left = 93
    Top = 204
  end
  object TblTransportadora: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Transportadora'
      'Order By TRANA60RAZAOSOC')
    Macros = <>
    Left = 64
    Top = 262
  end
  object DSTblTransportadora: TDataSource
    DataSet = TblTransportadora
    Left = 93
    Top = 262
  end
  object TblPlanoPagamento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PlanoPagamento'
      'Order By PLPGA60DESCR')
    Macros = <>
    Left = 64
    Top = 291
  end
  object DSTblPlanoPagamento: TDataSource
    DataSet = TblPlanoPagamento
    Left = 93
    Top = 291
  end
  object SQLTotalPedAbertos: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      
        '  SUM(PDCPN2TOTITENS-PDCPN2DESCPROM+PDCPN2VLRENCARGO+PDCPN2VLRFR' +
        'ETE) AS TOTALPEDIDOS'
      'FROM'
      '  PEDIDOCOMPRA'
      'WHERE'
      '  PDCPCSTATUS = "A"  and (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 40
    Top = 459
    object SQLTotalPedAbertosTOTALPEDIDOS: TFloatField
      FieldName = 'TOTALPEDIDOS'
    end
  end
  object DSSQLTotalPedAbertos: TDataSource
    DataSet = SQLTotalPedAbertos
    Left = 68
    Top = 459
  end
  object SQLTotalPedEncerrados: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      
        '  SUM(PDCPN2TOTITENS-PDCPN2DESCPROM+PDCPN2VLRENCARGO+PDCPN2VLRFR' +
        'ETE) AS TOTALPEDIDOS'
      'FROM'
      '  PEDIDOCOMPRA'
      'WHERE'
      '  PDCPCSTATUS = "E"  and (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 40
    Top = 488
    object SQLTotalPedEncerradosTOTALPEDIDOS: TFloatField
      FieldName = 'TOTALPEDIDOS'
    end
  end
  object dsSQLTotalPedEncerrados: TDataSource
    DataSet = SQLTotalPedEncerrados
    Left = 68
    Top = 488
  end
  object SQLTotalPedFaturados: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      
        '  SUM(PDCPN2TOTITENS-PDCPN2DESCPROM+PDCPN2VLRENCARGO+PDCPN2VLRFR' +
        'ETE) AS TOTALPEDIDOS'
      'FROM'
      '  PEDIDOCOMPRA'
      'WHERE'
      '  PDCPCSTATUS = "F"  and (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 40
    Top = 517
    object SQLTotalPedFaturadosTOTALPEDIDOS: TFloatField
      FieldName = 'TOTALPEDIDOS'
    end
  end
  object dsSQLTotalPedFaturados: TDataSource
    DataSet = SQLTotalPedFaturados
    Left = 68
    Top = 517
  end
  object SQLTrocas: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      
        'Select * from MovimentoDiverso, MovimentoDiversoItem, Fornecedor' +
        ', Produto'
      'Where'
      '(%MFornecedor) and'
      'MovimentoDiversoItem.MOVDA13ID = MovimentoDiverso.MOVDA13ID and'
      'MovimentoDiverso.FORNICOD = Fornecedor.FORNICOD and'
      'MovimentoDiversoItem.PRODICOD = Produto.PRODICOD and'
      'MovimentoDiverso.MOVDCTROCA = "S" and'
      
        '(MovimentoDiverso.MOVDCTROCASTAT = "S" or MovimentoDiverso.MOVDC' +
        'TROCASTAT = "E")'
      'order by'
      'MovimentoDiverso.MOVDDMOVIMENTO')
    Macros = <
      item
        DataType = ftString
        Name = 'MFornecedor'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 69
    Top = 422
    object SQLTrocasMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTrocasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.MOVIMENTODIVERSO.EMPRICOD'
    end
    object SQLTrocasMOVDICOD: TIntegerField
      FieldName = 'MOVDICOD'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDICOD'
    end
    object SQLTrocasOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.MOVIMENTODIVERSO.OPESICOD'
    end
    object SQLTrocasMOVDDMOVIMENTO: TDateTimeField
      FieldName = 'MOVDDMOVIMENTO'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDDMOVIMENTO'
      DisplayFormat = 'dd/mm/yy'
    end
    object SQLTrocasMOVDA255OBS: TStringField
      FieldName = 'MOVDA255OBS'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLTrocasMOVDCCONLUIDO: TStringField
      FieldName = 'MOVDCCONLUIDO'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDCCONLUIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.MOVIMENTODIVERSO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.MOVIMENTODIVERSO.REGISTRO'
    end
    object SQLTrocasUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.MOVIMENTODIVERSO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.MOVIMENTODIVERSO.USUAICOD'
    end
    object SQLTrocasFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.MOVIMENTODIVERSO.FORNICOD'
    end
    object SQLTrocasMOVDCTROCA: TStringField
      FieldName = 'MOVDCTROCA'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDCTROCA'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTrocasMVDIIITEM: TIntegerField
      FieldName = 'MVDIIITEM'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasMVDIN3QTD: TFloatField
      FieldName = 'MVDIN3QTD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLTrocasMVDIN3VLRCUSTO: TFloatField
      FieldName = 'MVDIN3VLRCUSTO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3VLRCOMPRA: TFloatField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasTPFRICOD: TIntegerField
      FieldName = 'TPFRICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasFORNA60CONTATO: TStringField
      FieldName = 'FORNA60CONTATO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasFORNCFISJURID: TStringField
      FieldName = 'FORNCFISJURID'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasFORNA14CGC: TStringField
      FieldName = 'FORNA14CGC'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 14
    end
    object SQLTrocasFORNA20IE: TStringField
      FieldName = 'FORNA20IE'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
    end
    object SQLTrocasFORNA11CPF: TStringField
      FieldName = 'FORNA11CPF'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
    end
    object SQLTrocasFORNA10RG: TStringField
      FieldName = 'FORNA10RG'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 10
    end
    object SQLTrocasFORNA60END: TStringField
      FieldName = 'FORNA60END'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasFORNA60BAI: TStringField
      FieldName = 'FORNA60BAI'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasFORNA60CID: TStringField
      FieldName = 'FORNA60CID'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasFORNA2UF: TStringField
      FieldName = 'FORNA2UF'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 2
    end
    object SQLTrocasFORNA8CEP: TStringField
      FieldName = 'FORNA8CEP'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 8
    end
    object SQLTrocasFORNA15FONE1: TStringField
      FieldName = 'FORNA15FONE1'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasFORNA15FONE2: TStringField
      FieldName = 'FORNA15FONE2'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasFORNA15FAX: TStringField
      FieldName = 'FORNA15FAX'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
    end
    object SQLTrocasFORNA60EMAIL: TStringField
      FieldName = 'FORNA60EMAIL'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasFORNA60URL: TStringField
      FieldName = 'FORNA60URL'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasFORNTOBS: TStringField
      FieldName = 'FORNTOBS'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 254
    end
    object SQLTrocasFORNA30CODCONTABIL: TStringField
      FieldName = 'FORNA30CODCONTABIL'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLTrocasPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasRAMOICOD: TIntegerField
      FieldName = 'RAMOICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasSRAMICOD: TIntegerField
      FieldName = 'SRAMICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasFORNA30LOCCATALOG: TStringField
      FieldName = 'FORNA30LOCCATALOG'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLTrocasFORNCTEMCATALOG: TStringField
      FieldName = 'FORNCTEMCATALOG'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasFORNA15CODNOFORN: TStringField
      FieldName = 'FORNA15CODNOFORN'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasFORNCPERMITETROCA: TStringField
      FieldName = 'FORNCPERMITETROCA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasFORNDCAD: TDateTimeField
      FieldName = 'FORNDCAD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasREPRICOD: TIntegerField
      FieldName = 'REPRICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasFORNCSIMPLES: TStringField
      FieldName = 'FORNCSIMPLES'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasFORNA15CXPOSTAL: TStringField
      FieldName = 'FORNA15CXPOSTAL'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasPRODA30CODESTRUT: TStringField
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLTrocasPRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasPRODA15CODANT: TStringField
      FieldName = 'PRODA15CODANT'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasPRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLTrocasPRODICODBALANCA: TIntegerField
      FieldName = 'PRODICODBALANCA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODA15APAVIM: TStringField
      FieldName = 'PRODA15APAVIM'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasPRODA15RUA: TStringField
      FieldName = 'PRODA15RUA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasPRODA15PRATEL: TStringField
      FieldName = 'PRODA15PRATEL'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasCLFSICOD: TIntegerField
      FieldName = 'CLFSICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3PESOBRUTO: TFloatField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3PESOLIQ: TFloatField
      FieldName = 'PRODN3PESOLIQ'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3CAPACEMBAL: TFloatField
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODDCAD: TDateTimeField
      FieldName = 'PRODDCAD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODDULTALTER: TDateTimeField
      FieldName = 'PRODDULTALTER'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3VLRVENDAPROM: TFloatField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3VLRCUSTOMED: TFloatField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3PERCIPI: TFloatField
      FieldName = 'PRODN3PERCIPI'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3PERCMARGLUCR: TFloatField
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODCATIVO: TStringField
      FieldName = 'PRODCATIVO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasPRODCSERVICO: TStringField
      FieldName = 'PRODCSERVICO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasPRODCGERACOMIS: TStringField
      FieldName = 'PRODCGERACOMIS'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasPRODN2COMISVISTA: TFloatField
      FieldName = 'PRODN2COMISVISTA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN2COMISPRAZO: TFloatField
      FieldName = 'PRODN2COMISPRAZO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODDIMOBOLIZ: TDateTimeField
      FieldName = 'PRODDIMOBOLIZ'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODICODPAI: TIntegerField
      FieldName = 'PRODICODPAI'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODCTIPOBAIXA: TStringField
      FieldName = 'PRODCTIPOBAIXA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 5
    end
    object SQLTrocasPRODN3QTDEBAIXA: TFloatField
      FieldName = 'PRODN3QTDEBAIXA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODIORIGEM: TIntegerField
      FieldName = 'PRODIORIGEM'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODDULTATUALIZ: TDateTimeField
      FieldName = 'PRODDULTATUALIZ'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODA60DIMENSAO: TStringField
      FieldName = 'PRODA60DIMENSAO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 60
    end
    object SQLTrocasPRODISITTRIB: TIntegerField
      FieldName = 'PRODISITTRIB'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODITIPOPRODBALAN: TStringField
      FieldName = 'PRODITIPOPRODBALAN'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 15
    end
    object SQLTrocasPRODICODETIQBAL: TIntegerField
      FieldName = 'PRODICODETIQBAL'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODIDIASVALIDADE: TIntegerField
      FieldName = 'PRODIDIASVALIDADE'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3VLRCOMPRAMED: TFloatField
      FieldName = 'PRODN3VLRCOMPRAMED'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3DOLARCUSTO: TFloatField
      FieldName = 'PRODN3DOLARCUSTO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3DOLARCOMPRA: TFloatField
      FieldName = 'PRODN3DOLARCOMPRA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3DOLARVENDA: TFloatField
      FieldName = 'PRODN3DOLARVENDA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODBIMAGEM: TBlobField
      FieldName = 'PRODBIMAGEM'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      Size = 1
    end
    object SQLTrocasPRODCSUBSTRIB: TStringField
      FieldName = 'PRODCSUBSTRIB'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasPRODCTEMNROSERIE: TStringField
      FieldName = 'PRODCTEMNROSERIE'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasPRODA03GARANTIA: TStringField
      FieldName = 'PRODA03GARANTIA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 3
    end
    object SQLTrocasPRODA254COMPQUIMICA: TStringField
      FieldName = 'PRODA254COMPQUIMICA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 254
    end
    object SQLTrocasPRODCTIPO: TStringField
      FieldName = 'PRODCTIPO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 5
    end
    object SQLTrocasPRODN2PERCFRETE: TFloatField
      FieldName = 'PRODN2PERCFRETE'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN2PERDA: TFloatField
      FieldName = 'PRODN2PERDA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN2PIS: TFloatField
      FieldName = 'PRODN2PIS'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3ALTURA: TFloatField
      FieldName = 'PRODN3ALTURA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3COMPRIMENTO: TFloatField
      FieldName = 'PRODN3COMPRIMENTO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3DIMENTOTAL: TFloatField
      FieldName = 'PRODN3DIMENTOTAL'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3LARGURA: TFloatField
      FieldName = 'PRODN3LARGURA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODA30INF01ETQBARRAS: TStringField
      FieldName = 'PRODA30INF01ETQBARRAS'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLTrocasPRODA30INF02ETQBARRAS: TStringField
      FieldName = 'PRODA30INF02ETQBARRAS'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLTrocasCOLEICOD: TIntegerField
      FieldName = 'COLEICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN2PERCDESP: TFloatField
      FieldName = 'PRODN2PERCDESP'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN2PERCSUBST: TFloatField
      FieldName = 'PRODN2PERCSUBST'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3VLRTABFOR: TFloatField
      FieldName = 'PRODN3VLRTABFOR'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasDECRICOD: TIntegerField
      FieldName = 'DECRICOD'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3PERCMARGLUC2: TFloatField
      FieldName = 'PRODN3PERCMARGLUC2'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3PERCMGLVFIXA: TFloatField
      FieldName = 'PRODN3PERCMGLVFIXA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3PERCMGLAFIXA: TFloatField
      FieldName = 'PRODN3PERCMGLAFIXA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODDULTCOMPRA: TDateTimeField
      FieldName = 'PRODDULTCOMPRA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODDULTVENDA: TDateTimeField
      FieldName = 'PRODDULTVENDA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN2PERCDIFICM: TFloatField
      FieldName = 'PRODN2PERCDIFICM'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN3QTDULTCOMPRA: TFloatField
      FieldName = 'PRODN3QTDULTCOMPRA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODIPRINCIPAL: TIntegerField
      FieldName = 'PRODIPRINCIPAL'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODCPERMITETROCA: TStringField
      FieldName = 'PRODCPERMITETROCA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasPRODDPREVCOMPRA: TDateTimeField
      FieldName = 'PRODDPREVCOMPRA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODCCOFINS: TStringField
      FieldName = 'PRODCCOFINS'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasPRODCIMPRECEITA: TStringField
      FieldName = 'PRODCIMPRECEITA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasPRODA10MEDIDA: TStringField
      FieldName = 'PRODA10MEDIDA'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 10
    end
    object SQLTrocasPRODN3MULTIPLIC: TFloatField
      FieldName = 'PRODN3MULTIPLIC'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODN2DOSAGEM: TFloatField
      FieldName = 'PRODN2DOSAGEM'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODTEXTENDIDO: TStringField
      FieldName = 'PRODTEXTENDIDO'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      Size = 254
    end
    object SQLTrocasPRODTOBSCOMPLEM: TStringField
      FieldName = 'PRODTOBSCOMPLEM'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      Size = 254
    end
    object SQLTrocasPRODN3VLRVENDA2: TFloatField
      FieldName = 'PRODN3VLRVENDA2'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
    end
    object SQLTrocasPRODCIMPETIQCDBAR: TStringField
      FieldName = 'PRODCIMPETIQCDBAR'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 1
    end
    object SQLTrocasMOVDCTROCASTAT: TStringField
      FieldName = 'MOVDCTROCASTAT'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDCTROCASTAT'
      FixedChar = True
      Size = 1
    end
  end
  object dsSQLTrocas: TDataSource
    DataSet = SQLTrocas
    Left = 40
    Top = 422
  end
end
