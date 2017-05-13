inherited FormCadastroEmpresa: TFormCadastroEmpresa
  Top = 79
  Caption = 'Cadastro de Empresas'
  ClientHeight = 612
  ClientWidth = 829
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 829
    Height = 612
    inherited PanelCabecalho: TPanel
      Width = 827
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 827
        inherited Panel1: TPanel
          Width = 825
          inherited PanelNavigator: TPanel
            Width = 825
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 825
            end
          end
          inherited PanelLeft: TPanel
            Left = 368
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 827
      Height = 538
      inherited PanelBarra: TPanel
        Height = 538
        inherited Button3: TRxSpeedButton
          Caption = '&3 Custos'
          OnClick = Button3Click
        end
        object SpeedButton5: TSpeedButton
          Tag = 1
          Left = 5
          Top = 226
          Width = 60
          Height = 36
          Cursor = crHandPoint
          Hint = 'Capturar Imagem'
          AllowAllUp = True
          Caption = 'Capturar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            62050000424D62050000000000003604000028000000120000000F0000000100
            0800000000002C010000CE0E0000D80E00000001000000000000000000004000
            000080000000FF000000002000004020000080200000FF200000004000004040
            000080400000FF400000006000004060000080600000FF600000008000004080
            000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
            000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
            200080002000FF002000002020004020200080202000FF202000004020004040
            200080402000FF402000006020004060200080602000FF602000008020004080
            200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
            200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
            400080004000FF004000002040004020400080204000FF204000004040004040
            400080404000FF404000006040004060400080604000FF604000008040004080
            400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
            400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
            600080006000FF006000002060004020600080206000FF206000004060004040
            600080406000FF406000006060004060600080606000FF606000008060004080
            600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
            600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
            800080008000FF008000002080004020800080208000FF208000004080004040
            800080408000FF408000006080004060800080608000FF608000008080004080
            800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
            800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
            A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
            A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
            A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
            A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
            C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
            C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
            C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
            C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
            FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
            FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
            FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
            FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFF92000092FFFFFFFFFFFFFF0000FFFF9200000000000000
            000000000092FFFF0000FFFF0092920000929292920000929200FFFF0000FFFF
            0092920092929292929200929200FFFF0000FFFF0092920092FE929292920092
            9200FFFF0000FFFF00929200921FFE92929200929200FFFF0000FFFF00FEFE00
            00929292920000FEFE00FFFF0000FFFF00FEFEFE000000000000FEFEFE00FFFF
            0000FFFF0000000000000000000000000000FFFF0000FFFFFF0000FF9200FEFE
            0092FF0000FFFFFF0000FFFFFFFFFFFFFF92000092FFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000}
          Layout = blGlyphTop
          Margin = 0
          ParentFont = False
          Spacing = 1
          OnClick = SpeedButton5Click
        end
        object SpeedButton11: TSpeedButton
          Tag = 1
          Left = 66
          Top = 226
          Width = 60
          Height = 36
          Cursor = crHandPoint
          Hint = 'Remover a Foto'
          AllowAllUp = True
          Caption = 'Remover'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            46050000424D460500000000000036040000280000000F000000110000000100
            08000000000010010000CE0E0000C40E00000001000000000000000000008080
            8000000080000080800000800000808000008000000080008000408080004040
            0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
            FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
            80008000FF004080FF00C0DCC000F0CAA6003F3F5F003F3F7F003F3F9F003F3F
            BF003F3FDF003F3FFF003F5F3F003F5F5F003F5F7F003F5F9F003F5FBF003F5F
            DF003F5FFF003F7F3F003F7F5F003F7F7F003F7F9F003F7FBF003F7FDF003F7F
            FF003F9F3F003F9F5F003F9F7F003F9F9F003F9FBF003F9FDF003F9FFF003FBF
            3F003FBF5F003FBF7F003FBF9F003FBFBF003FBFDF003FBFFF003FDF3F003FDF
            5F003FDF7F003FDF9F003FDFBF003FDFDF003FDFFF003FFF3F003FFF5F003FFF
            7F003FFF9F003FFFBF003FFFDF003FFFFF005F3F3F005F3F5F005F3F7F005F3F
            9F005F3FBF005F3FDF005F3FFF005F5F3F005F5F5F005F5F7F005F5F9F005F5F
            BF005F5FDF005F5FFF005F7F3F005F7F5F005F7F7F005F7F9F005F7FBF005F7F
            DF005F7FFF005F9F3F005F9F5F005F9F7F005F9F9F005F9FBF005F9FDF005F9F
            FF005FBF3F005FBF5F005FBF7F005FBF9F005FBFBF005FBFDF005FBFFF005FDF
            3F005FDF5F005FDF7F005FDF9F005FDFBF005FDFDF005FDFFF005FFF3F005FFF
            5F005FFF7F005FFF9F005FFFBF005FFFDF005FFFFF007F3F3F007F3F5F007F3F
            7F007F3F9F007F3FBF007F3FDF007F3FFF007F5F3F007F5F5F007F5F7F007F5F
            9F007F5FBF007F5FDF007F5FFF007F7F3F007F7F5F007F7F7F007F7F9F007F7F
            BF007F7FDF007F7FFF007F9F3F007F9F5F007F9F7F007F9F9F007F9FBF007F9F
            DF007F9FFF007FBF3F007FBF5F007FBF7F007FBF9F007FBFBF007FBFDF007FBF
            FF007FDF3F007FDF5F007FDF7F007FDF9F007FDFBF007FDFDF007FDFFF007FFF
            3F007FFF5F007FFF7F007FFF9F007FFFBF007FFFDF007FFFFF009F3F3F009F3F
            5F009F3F7F009F3F9F009F3FBF009F3FDF009F3FFF009F5F3F009F5F5F009F5F
            7F009F5F9F009F5FBF009F5FDF009F5FFF009F7F3F009F7F5F009F7F7F009F7F
            9F009F7FBF009F7FDF009F7FFF009F9F3F009F9F5F009F9F7F009F9F9F009F9F
            BF009F9FDF009F9FFF009FBF3F009FBF5F009FBF7F009FBF9F009FBFBF009FBF
            DF009FBFFF009FDF3F009FDF5F009FDF7F009FDF9F009FDFBF009FDFDF009FDF
            FF009FFF3F009FFF5F009FFF7F009FFF9F009FFFBF009FFFDF009FFFFF00BF3F
            3F00BF3F5F00BF3F7F00BF3F9F00BF3FBF00BF3FDF00BF3FFF00BF5F3F00BF5F
            5F00BF5F7F00BF5F9F00BF5FBF00BF5FDF00BF5FFF00BF7F3F00BF7F5F00BF7F
            7F00BF7F9F00BF7FBF00BF7FDF00BF7FFF00BF9F3F00BF9F5F00BF9F7F00BF9F
            9F00BF9FBF00BF9FDF00BF9FFF00BFBF3F00BFBF5F00BFBF7F00030303030303
            0303030303030303030003030303030303030000000003030300030303030303
            00000F0F0101000303000303030300000F0F0F0F010100030300030300000F0F
            100F0F0F0101000303000303010F0F101010100F0101010003000303010F100F
            100F100F01010100030003010F0F100F0F0F0F0F01010100030003010F101010
            0F10100F01010100030003010F0F100F0F10100F01010101000003010F0F0F10
            100E0E0E0E0101010000010F0F0F0F0E0E010F0F0F0E0E010000010F0F0E0E00
            01010F0F0F0F0E0E0000010E0E010100010F0F0F0E0E0101030001010E0E0100
            0F0F0E0E010103030300030301010E010E0E0101030303030300030303030101
            01010303030303030300}
          Layout = blGlyphTop
          Margin = 0
          ParentFont = False
          Spacing = 1
          OnClick = SpeedButton11Click
        end
        object ButtomContador: TRxSpeedButton
          Tag = 2
          Left = 2
          Top = 73
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Dados Contador'
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
          OnClick = ButtomContadorClick
        end
        object ButtonDadosNfe: TRxSpeedButton
          Tag = 2
          Left = 2
          Top = 96
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&5 Dados NF-e'
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
          OnClick = ButtonDadosNfeClick
        end
        object GroupBoxFOTO: TGroupBox
          Left = 3
          Top = 262
          Width = 125
          Height = 107
          Caption = 'Logotipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object ImageProduto: TImage
            Left = 2
            Top = 15
            Width = 121
            Height = 90
            Align = alClient
            Center = True
            Stretch = True
            Transparent = True
          end
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 697
        Height = 538
        inherited Panel5: TPanel
          Width = 697
          Height = 538
          inherited PagePrincipal: TPageControl
            Top = 68
            Width = 697
            Height = 470
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 689
                Height = 397
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Width = 47
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA60RAZAOSOC'
                    Width = 279
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA60NOMEFANT'
                    Width = 281
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRCMATRIZFILIAL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA20FONE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA20FAX'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA60END'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA60BAI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA60CID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA2UF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA8CEP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRCFISJURID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA14CGC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA20IE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA11CPF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA10RG'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA60EMAIL'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRA60URL'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 689
                inherited PanelBetween: TPanel
                  Width = 295
                  inherited AdvPanel1: TAdvPanel
                    Width = 295
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 295
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 295
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
                Lines.Strings = (
                  'PRODUTOSALDO'
                  'EMPRESACUSTO')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 7
                Top = 4
                Width = 27
                Height = 13
                Caption = 'CNPJ'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 196
                Top = 4
                Width = 103
                Height = 13
                Caption = 'Inscri'#231#227'o Estadual'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 119
                Top = 40
                Width = 52
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEditEnd
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 7
                Top = 113
                Width = 14
                Height = 13
                Caption = 'UF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 6
                Top = 75
                Width = 34
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 187
                Top = 75
                Width = 38
                Height = 13
                Caption = 'Cidade'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 374
                Top = 4
                Width = 67
                Height = 13
                Caption = 'Matriz/Filial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 48
                Top = 113
                Width = 27
                Height = 13
                Caption = 'Fone'
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 188
                Top = 113
                Width = 20
                Height = 13
                Caption = 'Fax'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 6
                Top = 148
                Width = 30
                Height = 13
                Caption = 'Email'
                FocusControl = DBEdit13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 326
                Top = 148
                Width = 22
                Height = 13
                Caption = 'URL'
                FocusControl = DBEdit14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 6
                Top = 184
                Width = 113
                Height = 13
                Caption = 'Informa'#231#245'es ao SPC'
                FocusControl = DBEdit15
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 6
                Top = 40
                Width = 21
                Height = 13
                Caption = 'Cep'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object AcessaProfissao: TSpeedButton
                Left = 93
                Top = 52
                Width = 21
                Height = 21
                Hint = 'Acessa Profiss'#227'o'
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
                OnClick = AcessaProfissaoClick
              end
              object Label17: TLabel
                Left = 326
                Top = 113
                Width = 79
                Height = 13
                Caption = 'C'#243'digo na EAN'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label18: TLabel
                Left = 6
                Top = 260
                Width = 200
                Height = 13
                Caption = 'Contato Responsavel pela empresa'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label19: TLabel
                Left = 6
                Top = 223
                Width = 142
                Height = 13
                Caption = 'Registro Junta Comercial'
                FocusControl = DBEdit16
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 327
                Top = 184
                Width = 108
                Height = 13
                Caption = 'Inscri'#231#227'o Municipal'
                FocusControl = DBEdit17
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label31: TLabel
                Left = 410
                Top = 75
                Width = 71
                Height = 13
                Caption = 'Cd p/Estado '
                FocusControl = DBEdit27
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label32: TLabel
                Left = 485
                Top = 75
                Width = 91
                Height = 13
                Caption = 'Cd.Cidade p/NFe'
                FocusControl = DBEdit28
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label33: TLabel
                Left = 527
                Top = 40
                Width = 44
                Height = 13
                Caption = 'N'#250'mero'
                FocusControl = DBEditEnd
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label34: TLabel
                Left = 158
                Top = 223
                Width = 104
                Height = 13
                Caption = 'Dt.Reg.Junta Com.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label35: TLabel
                Left = 289
                Top = 260
                Width = 95
                Height = 13
                Caption = 'CPF Responsavel'
                FocusControl = DBEdit30
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label36: TLabel
                Left = 399
                Top = 260
                Width = 108
                Height = 13
                Caption = 'Cargo Responsavel'
                FocusControl = DBEdit31
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 288
                Top = 221
                Width = 143
                Height = 13
                Caption = 'Codigo Regime Tributario'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label41: TLabel
                Left = 497
                Top = 222
                Width = 83
                Height = 13
                Caption = 'Trib. ICMS (%)'
                FocusControl = DBEdit35
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label50: TLabel
                Left = 6
                Top = 299
                Width = 181
                Height = 13
                Caption = 'Tipo de Atividade (SPED FISCAL)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label51: TLabel
                Left = 286
                Top = 295
                Width = 113
                Height = 13
                Caption = 'CNAE Fiscal Principal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit4: TDBEdit
                Left = 3
                Top = 17
                Width = 187
                Height = 21
                DataField = 'EMPRA14CGC'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 192
                Top = 17
                Width = 177
                Height = 21
                DataField = 'EMPRA20IE'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEditEnd: TDBEdit
                Left = 115
                Top = 53
                Width = 406
                Height = 21
                DataField = 'EMPRA60END'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit9: TDBEdit
                Left = 3
                Top = 88
                Width = 178
                Height = 21
                DataField = 'EMPRA60BAI'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit10: TDBEdit
                Left = 183
                Top = 88
                Width = 223
                Height = 21
                DataField = 'EMPRA60CID'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object DBEdit12: TDBEdit
                Left = 43
                Top = 126
                Width = 139
                Height = 21
                DataField = 'EMPRA20FONE'
                DataSource = DSTemplate
                TabOrder = 11
              end
              object ComboMatrizFilial: TRxDBComboBox
                Left = 371
                Top = 17
                Width = 233
                Height = 21
                Style = csDropDownList
                DataField = 'EMPRCMATRIZFILIAL'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Matriz'
                  'Filial')
                TabOrder = 2
                Values.Strings = (
                  'M'
                  'F')
              end
              object DBEdit11: TDBEdit
                Left = 184
                Top = 126
                Width = 137
                Height = 21
                DataField = 'EMPRA20FAX'
                DataSource = DSTemplate
                TabOrder = 12
              end
              object DBEdit13: TDBEdit
                Left = 3
                Top = 161
                Width = 318
                Height = 21
                DataField = 'EMPRA60EMAIL'
                DataSource = DSTemplate
                TabOrder = 14
              end
              object DBEdit14: TDBEdit
                Left = 323
                Top = 161
                Width = 280
                Height = 21
                DataField = 'EMPRA60URL'
                DataSource = DSTemplate
                TabOrder = 15
              end
              object DBEdit15: TDBEdit
                Left = 3
                Top = 197
                Width = 318
                Height = 21
                DataField = 'EMPRA100INFSPC'
                DataSource = DSTemplate
                TabOrder = 16
              end
              object DBEdit7: TDBEdit
                Left = 3
                Top = 53
                Width = 88
                Height = 21
                DataField = 'EMPRA8CEP'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit6: TDBEdit
                Left = 323
                Top = 126
                Width = 280
                Height = 21
                DataField = 'EMPRA15CODEAN'
                DataSource = DSTemplate
                TabOrder = 13
              end
              object ComboUF: TRxDBComboBox
                Left = 3
                Top = 126
                Width = 39
                Height = 21
                Style = csDropDownList
                DataField = 'EMPRA2UF'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'MT'
                  'RJ'
                  'RN'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO')
                TabOrder = 10
                Values.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'MT'
                  'RJ'
                  'RN'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO')
              end
              object DBEdit8: TDBEdit
                Left = 3
                Top = 273
                Width = 275
                Height = 21
                DataField = 'EMPRA60CONTATO'
                DataSource = DSTemplate
                TabOrder = 22
              end
              object DBEdit16: TDBEdit
                Left = 3
                Top = 236
                Width = 150
                Height = 21
                DataField = 'EMPRA15REGJUNTA'
                DataSource = DSTemplate
                TabOrder = 18
              end
              object DBEdit17: TDBEdit
                Left = 324
                Top = 197
                Width = 279
                Height = 21
                DataField = 'EMPRA20IMUNIC'
                DataSource = DSTemplate
                TabOrder = 17
              end
              object DBEdit27: TDBEdit
                Left = 407
                Top = 88
                Width = 73
                Height = 21
                DataField = 'EMPRIUFCODFED'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit28: TDBEdit
                Left = 482
                Top = 88
                Width = 120
                Height = 21
                DataField = 'EMPRIMUNICODFED'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit29: TDBEdit
                Left = 524
                Top = 53
                Width = 78
                Height = 21
                DataField = 'EMPRIENDNRO'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBDateEdit2: TDBDateEdit
                Left = 155
                Top = 236
                Width = 123
                Height = 21
                DataField = 'EMPRDREGJUNTA'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 19
              end
              object DBEdit30: TDBEdit
                Left = 286
                Top = 273
                Width = 107
                Height = 21
                DataField = 'EMPRA20CPFRESP'
                DataSource = DSTemplate
                TabOrder = 23
              end
              object DBEdit31: TDBEdit
                Left = 396
                Top = 273
                Width = 208
                Height = 21
                DataField = 'EMPRA40CARGORESP'
                DataSource = DSTemplate
                TabOrder = 24
              end
              object ComboCRT: TRxDBComboBox
                Left = 285
                Top = 234
                Width = 208
                Height = 21
                Style = csDropDownList
                DataField = 'EMPRA3CRT'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  '1 - Simples Nacional'
                  '2 - Simples Nacional, Exc.Rec.Bruta'
                  '3 - Regime Normal ')
                TabOrder = 20
                Values.Strings = (
                  '1'
                  '2'
                  '3')
                OnChange = ComboCRTChange
              end
              object DBEdit35: TDBEdit
                Left = 498
                Top = 235
                Width = 107
                Height = 21
                DataField = 'EMPRN2CREDICMS'
                DataSource = DSTemplate
                TabOrder = 21
              end
              object ComboTipoAtividade: TRxDBComboBox
                Left = 3
                Top = 312
                Width = 278
                Height = 21
                Style = csDropDownList
                DataField = 'EMPRIATIVIDADE'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  '0 - Industrial ou Equiparado a Industrial'
                  '1 - Outros')
                TabOrder = 25
                Values.Strings = (
                  '0'
                  '1')
                OnChange = ComboCRTChange
              end
              object DBEdit43: TDBEdit
                Left = 286
                Top = 310
                Width = 319
                Height = 21
                DataField = 'CNAEFISCAL'
                DataSource = DSTemplate
                TabOrder = 26
              end
            end
            object TabSheetContador: TTabSheet
              Caption = 'Contador'
              ImageIndex = 3
              object Label37: TLabel
                Left = 6
                Top = 37
                Width = 207
                Height = 13
                Caption = 'Contador Responsavel pela empresa'
                FocusControl = DBEdit32
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label38: TLabel
                Left = 7
                Top = 74
                Width = 20
                Height = 13
                Caption = 'CPF'
                FocusControl = DBEdit33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label39: TLabel
                Left = 289
                Top = 74
                Width = 27
                Height = 13
                Caption = 'CNPJ'
                FocusControl = DBEdit34
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label42: TLabel
                Left = 15
                Top = 7
                Width = 261
                Height = 19
                Caption = 'Dados do Contador da Empresa:'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label43: TLabel
                Left = 6
                Top = 111
                Width = 52
                Height = 13
                Caption = 'Endereco'
                FocusControl = DBEdit36
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label44: TLabel
                Left = 289
                Top = 111
                Width = 34
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit37
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label45: TLabel
                Left = 6
                Top = 187
                Width = 27
                Height = 13
                Caption = 'Fone'
                FocusControl = DBEdit38
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label46: TLabel
                Left = 289
                Top = 187
                Width = 20
                Height = 13
                Caption = 'Fax'
                FocusControl = DBEdit39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label47: TLabel
                Left = 6
                Top = 149
                Width = 100
                Height = 13
                Caption = 'Cod Municipio NFe'
                FocusControl = DBEdit40
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label48: TLabel
                Left = 289
                Top = 149
                Width = 44
                Height = 13
                Caption = 'Cod CEP'
                FocusControl = DBEdit41
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label49: TLabel
                Left = 289
                Top = 37
                Width = 22
                Height = 13
                Caption = 'CRC'
                FocusControl = DBEdit42
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label67: TLabel
                Left = 6
                Top = 227
                Width = 30
                Height = 13
                Caption = 'Email'
                FocusControl = DBEdit44
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit32: TDBEdit
                Left = 3
                Top = 50
                Width = 280
                Height = 21
                DataField = 'EMPRA60CONTADOR'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit33: TDBEdit
                Left = 4
                Top = 87
                Width = 280
                Height = 21
                DataField = 'EMPRA20CPFCONTADOR'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit34: TDBEdit
                Left = 287
                Top = 87
                Width = 315
                Height = 21
                DataField = 'EMPRA14CNPJCONTADOR'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object DBEdit36: TDBEdit
                Left = 3
                Top = 124
                Width = 280
                Height = 21
                DataField = 'EMPRA60ENDCONTADOR'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit37: TDBEdit
                Left = 286
                Top = 124
                Width = 317
                Height = 21
                DataField = 'EMPRA60BAICONTADOR'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit38: TDBEdit
                Left = 3
                Top = 200
                Width = 280
                Height = 21
                DataField = 'EMPRA10FONECONTADOR'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit39: TDBEdit
                Left = 287
                Top = 200
                Width = 316
                Height = 21
                DataField = 'EMPRA10FAXCONTADOR'
                DataSource = DSTemplate
                TabOrder = 10
              end
              object DBEdit40: TDBEdit
                Left = 3
                Top = 162
                Width = 280
                Height = 21
                DataField = 'EMPRA7CODMUNCONTADOR'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit41: TDBEdit
                Left = 287
                Top = 162
                Width = 316
                Height = 21
                DataField = 'EMPRA8CEPCONTADOR'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit42: TDBEdit
                Left = 287
                Top = 50
                Width = 315
                Height = 21
                DataField = 'EMPRA15CRCCONTADOR'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit44: TDBEdit
                Left = 3
                Top = 240
                Width = 280
                Height = 21
                DataField = 'EMPRA150CONTADOREMAIL'
                DataSource = DSTemplate
                TabOrder = 5
              end
            end
            object tsNFE: TTabSheet
              Caption = 'tsNFE'
              ImageIndex = 4
              object rgpLayout: TcxDBRadioGroup
                Left = 378
                Top = 2
                Caption = 'Layout Danfe'
                DataBinding.DataField = 'EMPRIFORMAEMISDANFE'
                DataBinding.DataSource = DSTemplate
                Properties.Items = <
                  item
                    Caption = 'Retrato'
                    Value = '0'
                  end
                  item
                    Caption = 'Paisagem'
                    Value = '1'
                  end>
                TabOrder = 0
                Height = 64
                Width = 121
              end
              object rgpEmissao: TcxDBRadioGroup
                Left = 504
                Top = 2
                Caption = 'Emiss'#227'o NF-e'
                DataBinding.DataField = 'EMPRIFORMAEMISNFE'
                DataBinding.DataSource = DSTemplate
                Properties.Columns = 2
                Properties.Items = <
                  item
                    Caption = 'Normal'
                    Value = '0'
                  end
                  item
                    Caption = 'Conting'#234'ncia'
                    Value = '1'
                  end
                  item
                    Caption = 'SCAN'
                    Value = '2'
                  end
                  item
                    Caption = 'DPEC'
                    Value = '3'
                  end
                  item
                    Caption = 'FSDA'
                    Value = '4'
                  end>
                TabOrder = 1
                Height = 64
                Width = 177
              end
              object gbxCertif: TcxGroupBox
                Left = 2
                Top = 2
                Caption = 'Certificado Digital'
                TabOrder = 2
                Height = 63
                Width = 371
                object Label53: TLabel
                  Left = 241
                  Top = 18
                  Width = 35
                  Height = 13
                  Caption = 'Senha'
                  FocusControl = cxDBTextEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label52: TLabel
                  Left = 10
                  Top = 18
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
                object cxDBTextEdit2: TcxDBTextEdit
                  Left = 242
                  Top = 31
                  DataBinding.DataField = 'EMPRA35CERTIFSENHA'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 1
                  Width = 116
                end
                object cxDBButtonEdit2: TcxDBButtonEdit
                  Left = 10
                  Top = 31
                  DataBinding.DataField = 'EMPRA100CERTIFSERIE'
                  DataBinding.DataSource = DSTemplate
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
                  TabOrder = 0
                  Width = 225
                end
              end
              object gbxLocais: TcxGroupBox
                Left = 2
                Top = 65
                Caption = 'Parametriza'#231#227'o de Locais e Diret'#243'rios'
                TabOrder = 3
                Height = 143
                Width = 371
                object Label54: TLabel
                  Left = 12
                  Top = 18
                  Width = 76
                  Height = 13
                  Caption = 'Arquivos XML'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label55: TLabel
                  Left = 12
                  Top = 58
                  Width = 131
                  Height = 13
                  Caption = 'Arquivos Danfe em PDF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label56: TLabel
                  Left = 12
                  Top = 98
                  Width = 85
                  Height = 13
                  Caption = 'Logotipo Danfe'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object cxDBButtonEdit1: TcxDBButtonEdit
                  Left = 12
                  Top = 32
                  DataBinding.DataField = 'EMPRA100CAMINHOXML'
                  DataBinding.DataSource = DSTemplate
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  TabOrder = 0
                  Width = 349
                end
                object cxDBButtonEdit3: TcxDBButtonEdit
                  Left = 12
                  Top = 72
                  DataBinding.DataField = 'EMPRA100CAMINHODANFES'
                  DataBinding.DataSource = DSTemplate
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  TabOrder = 1
                  Width = 349
                end
                object cxDBButtonEdit4: TcxDBButtonEdit
                  Left = 12
                  Top = 112
                  DataBinding.DataField = 'EMPRA100CAMINHOLOGO'
                  DataBinding.DataSource = DSTemplate
                  Properties.Buttons = <
                    item
                      Default = True
                      Kind = bkEllipsis
                    end>
                  Properties.OnButtonClick = cxDBButtonEdit4PropertiesButtonClick
                  TabOrder = 2
                  Width = 349
                end
              end
              object gbxConfigProxy: TcxGroupBox
                Left = 2
                Top = 209
                Caption = 'Configura'#231#245'es de Proxy'
                TabOrder = 4
                Height = 54
                Width = 679
                object Label57: TLabel
                  Left = 15
                  Top = 15
                  Width = 26
                  Height = 13
                  Caption = 'Host'
                  FocusControl = cxDBTextEdit1
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label58: TLabel
                  Left = 339
                  Top = 14
                  Width = 31
                  Height = 13
                  Caption = 'Porta'
                  FocusControl = cxDBSpinEdit1
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label59: TLabel
                  Left = 403
                  Top = 14
                  Width = 43
                  Height = 13
                  Caption = 'Usu'#225'rio'
                  FocusControl = cxDBTextEdit3
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label60: TLabel
                  Left = 539
                  Top = 14
                  Width = 35
                  Height = 13
                  Caption = 'Senha'
                  FocusControl = cxDBTextEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object cxDBTextEdit1: TcxDBTextEdit
                  Left = 10
                  Top = 27
                  DataBinding.DataField = 'EMPRA100PROXYHOST'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 0
                  Width = 321
                end
                object cxDBSpinEdit1: TcxDBSpinEdit
                  Left = 339
                  Top = 27
                  DataBinding.DataField = 'EMPRIPROXYPORTA'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 1
                  Width = 57
                end
                object cxDBTextEdit3: TcxDBTextEdit
                  Left = 403
                  Top = 27
                  DataBinding.DataField = 'EMPRA50PROXYUSUARIO'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 2
                  Width = 129
                end
                object cxDBTextEdit4: TcxDBTextEdit
                  Left = 539
                  Top = 27
                  DataBinding.DataField = 'EMPRA50PROXYSENHA'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 3
                  Width = 129
                end
              end
              object gbxConfgEmail: TcxGroupBox
                Left = 2
                Top = 319
                Caption = 'Configura'#231#245'es para Envio de Danfe por E-mail'
                TabOrder = 6
                Height = 114
                Width = 679
                object Label61: TLabel
                  Left = 17
                  Top = 20
                  Width = 26
                  Height = 13
                  Caption = 'Host'
                  FocusControl = cxDBTextEdit5
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label62: TLabel
                  Left = 343
                  Top = 19
                  Width = 31
                  Height = 13
                  Caption = 'Porta'
                  FocusControl = cxDBSpinEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label63: TLabel
                  Left = 410
                  Top = 20
                  Width = 43
                  Height = 13
                  Caption = 'Usu'#225'rio'
                  FocusControl = cxDBTextEdit6
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label64: TLabel
                  Left = 545
                  Top = 19
                  Width = 35
                  Height = 13
                  Caption = 'Senha'
                  FocusControl = cxDBTextEdit7
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label65: TLabel
                  Left = 143
                  Top = 20
                  Width = 183
                  Height = 13
                  Caption = 'Exemplos de Porta: 25, 465, 587, 995'
                  FocusControl = cxDBSpinEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label68: TLabel
                  Left = 17
                  Top = 56
                  Width = 102
                  Height = 13
                  Caption = 'Email Enviar Copia'
                  FocusControl = cxDBTextEdit5
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object BtnEmailTeste: TSpeedButton
                  Tag = 3
                  Left = 566
                  Top = 62
                  Width = 102
                  Height = 30
                  Cursor = crHandPoint
                  Hint = 'Fechar Tela'
                  Caption = '&Email'
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
                  OnClick = BtnEmailTesteClick
                end
                object lbStatusEmail: TLabel
                  Left = 589
                  Top = -1
                  Width = 80
                  Height = 16
                  Alignment = taRightJustify
                  Caption = 'Status email'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object Label20: TLabel
                  Left = 17
                  Top = 95
                  Width = 608
                  Height = 16
                  Alignment = taCenter
                  Caption = 
                    'gmail error abra o link e ative-> https://www.google.com/setting' +
                    's/security/lesssecureapps'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                end
                object cxDBTextEdit5: TcxDBTextEdit
                  Left = 11
                  Top = 32
                  DataBinding.DataField = 'EMPRA50EMAILHOST'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 0
                  Width = 319
                end
                object cxDBSpinEdit2: TcxDBSpinEdit
                  Left = 338
                  Top = 32
                  DataBinding.DataField = 'EMPRIEMAILPORTA'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 1
                  Width = 57
                end
                object cxDBTextEdit6: TcxDBTextEdit
                  Left = 402
                  Top = 32
                  DataBinding.DataField = 'EMPRA75EMAILUSUARIO'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 2
                  Width = 129
                end
                object cxDBTextEdit7: TcxDBTextEdit
                  Left = 538
                  Top = 32
                  DataBinding.DataField = 'EMPRA50EMAILSENHA'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 3
                  Width = 131
                end
                object cxDBCheckBox2: TcxDBCheckBox
                  Left = 440
                  Top = 69
                  Caption = 'Conexao Segura SSL'
                  DataBinding.DataField = 'EMPRA1SSL'
                  DataBinding.DataSource = DSTemplate
                  Properties.DisplayChecked = 'S'
                  Properties.DisplayUnchecked = 'N'
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 4
                  Width = 123
                end
                object cxDBTextEdit8: TcxDBTextEdit
                  Left = 11
                  Top = 69
                  DataBinding.DataField = 'EMPRA60EMAILCOPIA'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 5
                  Width = 318
                end
                object cxDBCheckBox3: TcxDBCheckBox
                  Left = 334
                  Top = 69
                  Caption = 'Autentica'#231#227'o TSL'
                  DataBinding.DataField = 'EMPRA1TSL'
                  DataBinding.DataSource = DSTemplate
                  Properties.DisplayChecked = 'S'
                  Properties.DisplayUnchecked = 'N'
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 6
                  Width = 106
                end
              end
              object cxDBRadioGroup1: TcxDBRadioGroup
                Left = 378
                Top = 67
                Caption = 'Ambiente NF-e'
                DataBinding.DataField = 'EMPRIWSAMBIENTE'
                DataBinding.DataSource = DSTemplate
                Properties.Items = <
                  item
                    Caption = 'Ambiente de Produ'#231#227'o (Usu'#225'rio Final)'
                    Value = '0'
                  end
                  item
                    Caption = 'Ambiente de Homologa'#231#227'o (Testes)'
                    Value = '1'
                  end>
                TabOrder = 7
                Height = 77
                Width = 303
              end
              object cxGroupBox1: TcxGroupBox
                Left = 378
                Top = 145
                Caption = 'WebService'
                TabOrder = 8
                Height = 63
                Width = 303
                object Label66: TLabel
                  Left = 10
                  Top = 18
                  Width = 14
                  Height = 13
                  Caption = 'UF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object cxDBComboBox1: TcxDBComboBox
                  Left = 8
                  Top = 32
                  DataBinding.DataField = 'EMPRA2WSUF'
                  DataBinding.DataSource = DSTemplate
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'AC'
                    'AL'
                    'AP'
                    'AM'
                    'BA'
                    'CE'
                    'DF'
                    'ES'
                    'GO'
                    'MA'
                    'MT'
                    'MS'
                    'MG'
                    'PA'
                    'PB'
                    'PR'
                    'PE'
                    'PI'
                    'RJ'
                    'RN'
                    'RS'
                    'RO'
                    'RR'
                    'SC'
                    'SP'
                    'SE'
                    'TO')
                  TabOrder = 0
                  Width = 49
                end
                object cxDBCheckBox1: TcxDBCheckBox
                  Left = 80
                  Top = 31
                  Caption = 'Exibir Mensagens de Processamento'
                  DataBinding.DataField = 'EMPRA1VISUALIZAMSG'
                  DataBinding.DataSource = DSTemplate
                  Properties.DisplayChecked = 'S'
                  Properties.DisplayUnchecked = 'N'
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  TabOrder = 1
                  Width = 209
                end
              end
              object gbxToken: TcxGroupBox
                Left = 2
                Top = 266
                Caption = ' Token/CSC '
                TabOrder = 5
                Height = 47
                Width = 680
                object Label22: TLabel
                  Left = 128
                  Top = 23
                  Width = 62
                  Height = 13
                  Caption = 'Token/CSC'
                  FocusControl = cxDBTextEdit9
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label23: TLabel
                  Left = 16
                  Top = 22
                  Width = 13
                  Height = 13
                  Caption = 'id.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object cxDBTextEdit9: TcxDBTextEdit
                  Left = 195
                  Top = 19
                  DataBinding.DataField = 'TOKEN'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 1
                  Width = 472
                end
                object cxDBTextEdit10: TcxDBTextEdit
                  Left = 36
                  Top = 18
                  DataBinding.DataField = 'IDTOKEN'
                  DataBinding.DataSource = DSTemplate
                  TabOrder = 0
                  Width = 83
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 57
            Width = 697
            Height = 11
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 697
            Height = 57
            object Label1: TLabel
              Left = 3
              Top = 3
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 52
              Top = 3
              Width = 71
              Height = 13
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 341
              Top = 3
              Width = 83
              Height = 13
              Caption = 'Nome Fantasia'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 2
              Top = 16
              Width = 44
              Height = 21
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 48
              Top = 16
              Width = 289
              Height = 21
              DataField = 'EMPRA60RAZAOSOC'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 340
              Top = 16
              Width = 341
              Height = 21
              DataField = 'EMPRA60NOMEFANT'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object ImpPreVenda: TDBCheckBox
              Left = 49
              Top = 41
              Width = 276
              Height = 12
              Caption = 'Trabalha com Lucro Real'
              Ctl3D = False
              DataField = 'EMPRCLUCROREAL'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'select * from EMPRESA where (%MFiltro)')
    object SQLTemplateEMPRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
      Visible = False
    end
    object SQLTemplateEMPRA60RAZAOSOC: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateEMPRA60NOMEFANT: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateEMPRCMATRIZFILIAL: TStringField
      DisplayLabel = 'Matriz/Filial'
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'DB.EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateEMPRA20FONE: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Fone'
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLTemplateEMPRA20FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLTemplateEMPRA60END: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateEMPRA60BAI: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Bairro'
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateEMPRA60CID: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Cidade'
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateEMPRA2UF: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Uf'
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateEMPRA8CEP: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Cep'
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateEMPRA14CGC: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Cgc'
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      EditMask = '##.###.###/####-##;0;_'
      FixedChar = True
      Size = 14
    end
    object SQLTemplateEMPRA20IE: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLTemplateEMPRA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'EMPRA11CPF'
      Origin = 'DB.EMPRESA.EMPRA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLTemplateEMPRA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'EMPRA10RG'
      Origin = 'DB.EMPRESA.EMPRA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateEMPRA60EMAIL: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Email'
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateEMPRA60URL: TStringField
      DisplayLabel = 'URL'
      FieldName = 'EMPRA60URL'
      Origin = 'DB.EMPRESA.EMPRA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EMPRESA.REGISTRO'
    end
    object SQLTemplateEMPRCFISJURID: TStringField
      DisplayLabel = 'F'#237'sica / Jur'#237'dica'
      FieldName = 'EMPRCFISJURID'
      Origin = 'DB.EMPRESA.EMPRCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateEMPRA100INFSPC: TStringField
      DisplayLabel = 'Inf. ao SPC'
      FieldName = 'EMPRA100INFSPC'
      Origin = 'DB.EMPRESA.EMPRA100INFSPC'
      FixedChar = True
      Size = 100
    end
    object SQLTemplateEMPRA15CODEAN: TStringField
      DisplayLabel = 'C'#243'd. EAN'
      FieldName = 'EMPRA15CODEAN'
      Origin = 'DB.EMPRESA.EMPRA15CODEAN'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateEMPRBLOGOTIPO: TBlobField
      FieldName = 'EMPRBLOGOTIPO'
      Origin = 'DB.EMPRESA.EMPRBLOGOTIPO'
      Size = 1
    end
    object SQLTemplateEMPRCLUCROREAL: TStringField
      FieldName = 'EMPRCLUCROREAL'
      Origin = 'DB.EMPRESA.EMPRCLUCROREAL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateEMPRN2VLRFUNDOPROMO: TBCDField
      FieldName = 'EMPRN2VLRFUNDOPROMO'
      Origin = 'DB.EMPRESA.EMPRN2VLRFUNDOPROMO'
      Precision = 15
      Size = 2
    end
    object SQLTemplateEMPRA20IMUNIC: TStringField
      FieldName = 'EMPRA20IMUNIC'
      Origin = 'DB.EMPRESA.EMPRA20IMUNIC'
      FixedChar = True
    end
    object SQLTemplateEMPRIUFCODFED: TIntegerField
      FieldName = 'EMPRIUFCODFED'
      Origin = 'DB.EMPRESA.EMPRIUFCODFED'
    end
    object SQLTemplateEMPRIMUNICODFED: TIntegerField
      FieldName = 'EMPRIMUNICODFED'
      Origin = 'DB.EMPRESA.EMPRIMUNICODFED'
    end
    object SQLTemplateEMPRIENDNRO: TIntegerField
      ConstraintErrorMessage = '1'
      FieldName = 'EMPRIENDNRO'
      Origin = 'DB.EMPRESA.EMPRIENDNRO'
    end
    object SQLTemplateEMPRA20CPFCONTADOR: TStringField
      FieldName = 'EMPRA20CPFCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA20CPFCONTADOR'
    end
    object SQLTemplateEMPRA60CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'EMPRA60CONTATO'
      Origin = 'DB.EMPRESA.EMPRA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateEMPRA20CPFRESP: TStringField
      FieldName = 'EMPRA20CPFRESP'
      Origin = 'DB.EMPRESA.EMPRA20CPFRESP'
    end
    object SQLTemplateEMPRA40CARGOCONT: TStringField
      FieldName = 'EMPRA40CARGOCONT'
      Origin = 'DB.EMPRESA.EMPRA40CARGOCONT'
      Size = 40
    end
    object SQLTemplateEMPRA40CARGORESP: TStringField
      FieldName = 'EMPRA40CARGORESP'
      Origin = 'DB.EMPRESA.EMPRA40CARGORESP'
      Size = 40
    end
    object SQLTemplateEMPRA60CONTADOR: TStringField
      FieldName = 'EMPRA60CONTADOR'
      Origin = 'DB.EMPRESA.EMPRA60CONTADOR'
      Size = 60
    end
    object SQLTemplateEMPRA15REGJUNTA: TStringField
      FieldName = 'EMPRA15REGJUNTA'
      Origin = 'DB.EMPRESA.EMPRA15REGJUNTA'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateEMPRDREGJUNTA: TDateTimeField
      FieldName = 'EMPRDREGJUNTA'
      Origin = 'DB.EMPRESA.EMPRDREGJUNTA'
    end
    object SQLTemplateEMPRA3CRT: TStringField
      FieldName = 'EMPRA3CRT'
      Origin = 'DB.EMPRESA.EMPRA3CRT'
      Size = 3
    end
    object SQLTemplateEMPRA30CRC: TStringField
      FieldName = 'EMPRA30CRC'
      Origin = 'DB.EMPRESA.EMPRA30CRC'
      Size = 30
    end
    object SQLTemplateEMPRN2CREDICMS: TBCDField
      FieldName = 'EMPRN2CREDICMS'
      Origin = 'DB.EMPRESA.EMPRN2CREDICMS'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateEMPRA15CRCCONTADOR: TStringField
      FieldName = 'EMPRA15CRCCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA15CRCCONTADOR'
      Size = 15
    end
    object SQLTemplateEMPRA14CNPJCONTADOR: TStringField
      FieldName = 'EMPRA14CNPJCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA14CNPJCONTADOR'
      Size = 14
    end
    object SQLTemplateEMPRA8CEPCONTADOR: TStringField
      FieldName = 'EMPRA8CEPCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA8CEPCONTADOR'
      Size = 8
    end
    object SQLTemplateEMPRA60ENDCONTADOR: TStringField
      FieldName = 'EMPRA60ENDCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA60ENDCONTADOR'
      Size = 60
    end
    object SQLTemplateEMPRA60BAICONTADOR: TStringField
      FieldName = 'EMPRA60BAICONTADOR'
      Origin = 'DB.EMPRESA.EMPRA60BAICONTADOR'
      Size = 60
    end
    object SQLTemplateEMPRA10FONECONTADOR: TStringField
      FieldName = 'EMPRA10FONECONTADOR'
      Origin = 'DB.EMPRESA.EMPRA10FONECONTADOR'
      Size = 10
    end
    object SQLTemplateEMPRA10FAXCONTADOR: TStringField
      FieldName = 'EMPRA10FAXCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA10FAXCONTADOR'
      Size = 10
    end
    object SQLTemplateEMPRA7CODMUNCONTADOR: TStringField
      FieldName = 'EMPRA7CODMUNCONTADOR'
      Origin = 'DB.EMPRESA.EMPRA7CODMUNCONTADOR'
      Size = 7
    end
    object SQLTemplateEMPRIATIVIDADE: TIntegerField
      FieldName = 'EMPRIATIVIDADE'
      Origin = 'DB.EMPRESA.EMPRIATIVIDADE'
    end
    object SQLTemplateCNAEFISCAL: TStringField
      FieldName = 'CNAEFISCAL'
      Size = 15
    end
    object SQLTemplateEMPRA100CERTIFSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'EMPRA100CERTIFSERIE'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA100CERTIFSERIE'
      Size = 100
    end
    object SQLTemplateEMPRA35CERTIFSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'EMPRA35CERTIFSENHA'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA35CERTIFSENHA'
      Size = 35
    end
    object SQLTemplateEMPRIFORMAEMISDANFE: TIntegerField
      DisplayLabel = 'Layout Emiss'#227'o'
      FieldName = 'EMPRIFORMAEMISDANFE'
      Origin = 'UNITGESTAO.EMPRESA.EMPRIFORMAEMISDANFE'
    end
    object SQLTemplateEMPRIFORMAEMISNFE: TIntegerField
      DisplayLabel = 'Forma Emiss'#227'o'
      FieldName = 'EMPRIFORMAEMISNFE'
      Origin = 'UNITGESTAO.EMPRESA.EMPRIFORMAEMISNFE'
    end
    object SQLTemplateEMPRA100CAMINHOLOGO: TStringField
      DisplayLabel = 'Logotipo'
      FieldName = 'EMPRA100CAMINHOLOGO'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA100CAMINHOLOGO'
      Size = 100
    end
    object SQLTemplateEMPRA100CAMINHOXML: TStringField
      DisplayLabel = 'Diret'#243'rio XML'
      FieldName = 'EMPRA100CAMINHOXML'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA100CAMINHOXML'
      Size = 100
    end
    object SQLTemplateEMPRA100CAMINHODANFES: TStringField
      DisplayLabel = 'Diret'#243'rio Danfes'
      FieldName = 'EMPRA100CAMINHODANFES'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA100CAMINHODANFES'
      Size = 100
    end
    object SQLTemplateEMPRA2WSUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'EMPRA2WSUF'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA2WSUF'
      Size = 2
    end
    object SQLTemplateEMPRIWSAMBIENTE: TIntegerField
      DisplayLabel = 'Ambiente'
      FieldName = 'EMPRIWSAMBIENTE'
      Origin = 'UNITGESTAO.EMPRESA.EMPRIWSAMBIENTE'
    end
    object SQLTemplateEMPRA1VISUALIZAMSG: TStringField
      DisplayLabel = 'Visualizar Mensagens'
      FieldName = 'EMPRA1VISUALIZAMSG'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA1VISUALIZAMSG'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateEMPRA100PROXYHOST: TStringField
      DisplayLabel = 'Host'
      FieldName = 'EMPRA100PROXYHOST'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA100PROXYHOST'
      Size = 100
    end
    object SQLTemplateEMPRIPROXYPORTA: TIntegerField
      DisplayLabel = 'Porta'
      FieldName = 'EMPRIPROXYPORTA'
      Origin = 'UNITGESTAO.EMPRESA.EMPRIPROXYPORTA'
    end
    object SQLTemplateEMPRA50PROXYUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'EMPRA50PROXYUSUARIO'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA50PROXYUSUARIO'
      Size = 50
    end
    object SQLTemplateEMPRA50PROXYSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'EMPRA50PROXYSENHA'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA50PROXYSENHA'
      Size = 50
    end
    object SQLTemplateEMPRA50EMAILHOST: TStringField
      DisplayLabel = 'Host'
      FieldName = 'EMPRA50EMAILHOST'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA50EMAILHOST'
      Size = 50
    end
    object SQLTemplateEMPRIEMAILPORTA: TIntegerField
      DisplayLabel = 'Porta'
      FieldName = 'EMPRIEMAILPORTA'
      Origin = 'UNITGESTAO.EMPRESA.EMPRIEMAILPORTA'
    end
    object SQLTemplateEMPRA75EMAILUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'EMPRA75EMAILUSUARIO'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA75EMAILUSUARIO'
      Size = 75
    end
    object SQLTemplateEMPRA50EMAILSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'EMPRA50EMAILSENHA'
      Origin = 'UNITGESTAO.EMPRESA.EMPRA50EMAILSENHA'
      Size = 50
    end
    object SQLTemplateEMPRA150CONTADOREMAIL: TStringField
      FieldName = 'EMPRA150CONTADOREMAIL'
      Origin = 'DB.EMPRESA.EMPRA150CONTADOREMAIL'
      Size = 150
    end
    object SQLTemplateEMPRA1SSL: TStringField
      FieldName = 'EMPRA1SSL'
      Origin = 'DB.EMPRESA.EMPRA1SSL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateEMPRA60EMAILCOPIA: TStringField
      FieldName = 'EMPRA60EMAILCOPIA'
      Origin = 'DB.EMPRESA.EMPRA60EMAILCOPIA'
      Size = 60
    end
    object SQLTemplateEMPRA1TSL: TStringField
      FieldName = 'EMPRA1TSL'
      Origin = 'DB.EMPRESA.EMPRA1TSL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateIDTOKEN: TStringField
      FieldName = 'IDTOKEN'
      Origin = 'DB.EMPRESA.IDTOKEN'
      Size = 30
    end
    object SQLTemplateTOKEN: TStringField
      FieldName = 'TOKEN'
      Origin = 'DB.EMPRESA.TOKEN'
      Size = 60
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update EMPRESA'
      'set'
      '  EMPRICOD = :EMPRICOD,'
      '  EMPRA60RAZAOSOC = :EMPRA60RAZAOSOC,'
      '  EMPRA60NOMEFANT = :EMPRA60NOMEFANT,'
      '  EMPRCMATRIZFILIAL = :EMPRCMATRIZFILIAL,'
      '  EMPRA20FONE = :EMPRA20FONE,'
      '  EMPRA20FAX = :EMPRA20FAX,'
      '  EMPRA60END = :EMPRA60END,'
      '  EMPRA60BAI = :EMPRA60BAI,'
      '  EMPRA60CID = :EMPRA60CID,'
      '  EMPRA2UF = :EMPRA2UF,'
      '  EMPRA8CEP = :EMPRA8CEP,'
      '  EMPRCFISJURID = :EMPRCFISJURID,'
      '  EMPRA14CGC = :EMPRA14CGC,'
      '  EMPRA20IE = :EMPRA20IE,'
      '  EMPRA11CPF = :EMPRA11CPF,'
      '  EMPRA10RG = :EMPRA10RG,'
      '  EMPRA60EMAIL = :EMPRA60EMAIL,'
      '  EMPRA60URL = :EMPRA60URL,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD')
    InsertSQL.Strings = (
      'insert into EMPRESA'
      '  (EMPRICOD, EMPRA60RAZAOSOC, EMPRA60NOMEFANT, '
      'EMPRCMATRIZFILIAL, EMPRA20FONE, '
      '   EMPRA20FAX, EMPRA60END, EMPRA60BAI, EMPRA60CID, EMPRA2UF, '
      'EMPRA8CEP, '
      '   EMPRCFISJURID, EMPRA14CGC, EMPRA20IE, EMPRA11CPF, EMPRA10RG, '
      'EMPRA60EMAIL, '
      '   EMPRA60URL, PENDENTE, REGISTRO)'
      'values'
      '  (:EMPRICOD, :EMPRA60RAZAOSOC, :EMPRA60NOMEFANT, '
      ':EMPRCMATRIZFILIAL, :EMPRA20FONE, '
      
        '   :EMPRA20FAX, :EMPRA60END, :EMPRA60BAI, :EMPRA60CID, :EMPRA2UF' +
        ', '
      ':EMPRA8CEP, '
      
        '   :EMPRCFISJURID, :EMPRA14CGC, :EMPRA20IE, :EMPRA11CPF, :EMPRA1' +
        '0RG, '
      ':EMPRA60EMAIL, '
      '   :EMPRA60URL, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from EMPRESA'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD')
  end
  object SQLProdutoSaldo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'INSERT'
      'INTO'
      'PRODUTOSALDO'
      '(EMPRICOD,'
      'PRODICOD,'
      'PSLDN3QTDE,'
      'PSLDN3QTDMIN,'
      'PSLDN3QTDMAX,'
      'PENDENTE,'
      'REGISTRO)'
      'VALUES'
      '(:EMPRICOD,'
      ':PRODICOD,'
      ':PSLDN3QTDE,'
      ':PSLDN3QTDMIN,'
      ':PSLDN3QTDMAX,'
      ':PENDENTE,'
      ':REGISTRO)'
      '')
    UpdateObject = UpdateSQLProdutoSaldo
    Macros = <>
    Left = 29
    Top = 435
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PSLDN3QTDE'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PSLDN3QTDMIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PSLDN3QTDMAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'PENDENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'REGISTRO'
        ParamType = ptUnknown
      end>
    object SQLProdutoSaldoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object SQLProdutoSaldoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object SQLProdutoSaldoPSLDN3QTDE: TBCDField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoPSLDN3QTDMIN: TBCDField
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoPSLDN3QTDMAX: TBCDField
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
      Precision = 15
      Size = 3
    end
    object SQLProdutoSaldoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSALDO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoSaldoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSALDO.REGISTRO'
    end
  end
  object UpdateSQLProdutoSaldo: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTOSALDO'
      'set'
      '  EMPRICOD = :EMPRICOD,'
      '  PRODICOD = :PRODICOD,'
      '  PSLDN3QTDE = :PSLDN3QTDE,'
      '  PSLDN3QTDMIN = :PSLDN3QTDMIN,'
      '  PSLDN3QTDMAX = :PSLDN3QTDMAX,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD')
    InsertSQL.Strings = (
      'insert into PRODUTOSALDO'
      
        '  (EMPRICOD, PRODICOD, PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX, P' +
        'ENDENTE, '
      '   REGISTRO)'
      'values'
      
        '  (:EMPRICOD, :PRODICOD, :PSLDN3QTDE, :PSLDN3QTDMIN, :PSLDN3QTDM' +
        'AX, :PENDENTE, '
      '   :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from PRODUTOSALDO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD')
    Left = 69
    Top = 225
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PRODUTO')
    Macros = <>
    Left = 69
    Top = 256
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
  end
  object PictureDialog: TOpenPictureDialog
    Filter = 'Bitmap(*.bmp)|*.bmp|CompuServe GIF Image (*.gif)|*.gif'
    Left = 48
    Top = 368
  end
  object dlgOpen: TOpenPictureDialog
    Title = 'Selecione'
    Left = 616
  end
  object ACBrMail: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    OnMailProcess = ACBrMailMailProcess
    OnAfterMailProcess = ACBrMailAfterMailProcess
    OnMailException = ACBrMailMailException
    Left = 493
    Top = 2
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ValidarDigest = False
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.SalvarApenasNFeProcessadas = True
    Configuracoes.Arquivos.PathNFe = 'c:\easy2solutions\nfce\'
    Configuracoes.Arquivos.PathInu = 'c:\easy2solutions\nfce\'
    Configuracoes.Arquivos.PathEvento = 'c:\easy2solutions\nfce\'
    Configuracoes.WebServices.UF = 'RS'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.Tentativas = 3
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 530
    Top = 2
  end
end
