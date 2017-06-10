inherited FormCadastroMecOrdem: TFormCadastroMecOrdem
  Left = 296
  Top = 24
  Caption = 'Ordens de Servi'#231'o'
  ClientHeight = 651
  ClientWidth = 842
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 842
    Height = 651
    inherited PanelCabecalho: TPanel
      Width = 840
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 840
        inherited Panel1: TPanel
          Width = 838
          inherited PanelNavigator: TPanel
            Width = 838
            object RxSpeedButton1: TRxSpeedButton [0]
              Left = 580
              Top = 3
              Width = 95
              Height = 25
              DropDownMenu = MenuRelatorio
              Caption = 'Relat'#243'rios'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
                00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
                8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
                8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
                8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
                03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
                03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
                33333337FFFF7733333333300000033333333337777773333333}
              Layout = blGlyphLeft
              NumGlyphs = 2
              ParentFont = False
              Transparent = True
            end
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 838
              inherited BtnFecharTela: TSpeedButton
                Left = 756
              end
              inherited LabelRetornar: TSpeedButton
                Left = 667
              end
            end
          end
          inherited PanelLeft: TPanel
            Left = 381
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 840
      Height = 577
      inherited PanelBarra: TPanel
        Height = 577
        inherited Button3: TRxSpeedButton
          Caption = '&3 Pe'#231'as e Servi'#231'os'
          Visible = True
          OnClick = Button3Click
        end
        object GroupBox2: TGroupBox
          Left = 2
          Top = 80
          Width = 127
          Height = 149
          Caption = '  Legenda  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Shape1: TShape
            Left = 15
            Top = 24
            Width = 25
            Height = 21
            Brush.Color = clBlack
          end
          object Label3: TLabel
            Left = 49
            Top = 28
            Width = 31
            Height = 13
            Caption = 'Aberta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape2: TShape
            Left = 15
            Top = 72
            Width = 25
            Height = 21
            Brush.Color = clGreen
          end
          object Label21: TLabel
            Left = 49
            Top = 76
            Width = 43
            Height = 13
            Caption = 'Entregue'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape4: TShape
            Left = 15
            Top = 96
            Width = 25
            Height = 21
            Brush.Color = clNavy
          end
          object Label32: TLabel
            Left = 49
            Top = 100
            Width = 47
            Height = 13
            Caption = 'Finalizada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape5: TShape
            Left = 15
            Top = 48
            Width = 25
            Height = 21
            Brush.Color = clRed
          end
          object Label33: TLabel
            Left = 49
            Top = 124
            Width = 31
            Height = 13
            Caption = 'Pronto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Shape3: TShape
            Left = 15
            Top = 120
            Width = 25
            Height = 21
            Brush.Color = clMaroon
          end
          object Label34: TLabel
            Left = 49
            Top = 52
            Width = 51
            Height = 13
            Caption = 'Cancelada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 710
        Height = 577
        inherited Panel5: TPanel
          Width = 710
          Height = 577
          inherited PagePrincipal: TPageControl
            Top = 128
            Width = 710
            Height = 449
            ActivePage = TabSheetDadosPrincipais
            TabOrder = 2
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 89
                Width = 702
                Height = 334
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ORDID'
                    Width = 55
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Title.Caption = 'Data'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Cliente'
                    Width = 236
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'STATUS'
                    Title.Caption = 'St'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Entrega'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORTOTAL'
                    Title.Caption = 'R$ Total'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ORDA50VEICULO'
                    Title.Caption = 'Ve'#237'culo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ORITN2VLRPRODUTO'
                    Title.Caption = 'R$ Itens'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ORITN2VLRSERVICO'
                    Title.Caption = 'R$ Servi'#231'os'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 702
                inherited PanelBetween: TPanel
                  Width = 308
                  inherited AdvPanel1: TAdvPanel
                    Width = 308
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 308
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 308
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
              object PanelPesquisa: TPanel
                Left = 0
                Top = 47
                Width = 702
                Height = 42
                Align = alTop
                BevelOuter = bvNone
                Color = 16249066
                TabOrder = 3
                TabStop = True
                object BTNLocalizar: TSpeedButton
                  Left = 564
                  Top = 5
                  Width = 66
                  Height = 32
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
                object Label22: TLabel
                  Left = 4
                  Top = 0
                  Width = 39
                  Height = 13
                  Caption = 'Cliente'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboBuscaCliente: TRxDBLookupCombo
                  Left = 3
                  Top = 15
                  Width = 310
                  Height = 21
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                    'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                  DropDownCount = 8
                  DisplayEmpty = 'Procura por Nome do Cliente...'
                  LookupField = 'CLIEA13ID'
                  LookupDisplay = 'CLIEA60RAZAOSOC'
                  LookupSource = DSSQLCliente
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
                object RadioStatus: TRadioGroup
                  Left = 321
                  Top = 0
                  Width = 234
                  Height = 39
                  Caption = '  Status  '
                  Columns = 5
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ItemIndex = 1
                  Items.Strings = (
                    '*'
                    'A'
                    'C'
                    'E'
                    'F')
                  ParentFont = False
                  TabOrder = 1
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              OnEnter = TabSheetDadosPrincipaisEnter
              object GroupBox1: TGroupBox
                Left = 0
                Top = 0
                Width = 702
                Height = 143
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label4: TLabel
                  Left = 12
                  Top = 7
                  Width = 73
                  Height = 13
                  Caption = 'Placa Ve'#237'culo'
                  Color = 16249066
                  FocusControl = edtPlaca
                  ParentColor = False
                end
                object Label5: TLabel
                  Left = 103
                  Top = 6
                  Width = 126
                  Height = 13
                  Caption = 'Ve'#237'culo / Equipamento'
                  Color = 16249066
                  ParentColor = False
                end
                object Label6: TLabel
                  Left = 12
                  Top = 50
                  Width = 55
                  Height = 13
                  Caption = 'Ano/Mod.'
                  Color = 12572888
                  FocusControl = DBEdit7
                  ParentColor = False
                end
                object Label7: TLabel
                  Left = 331
                  Top = 50
                  Width = 70
                  Height = 13
                  Caption = 'Combust'#237'vel'
                  Color = 16249066
                  ParentColor = False
                end
                object Label8: TLabel
                  Left = 449
                  Top = 51
                  Width = 55
                  Height = 13
                  Caption = 'Qtd Litros'
                  Color = 16249066
                  FocusControl = DBEdit9
                  ParentColor = False
                end
                object Label9: TLabel
                  Left = 514
                  Top = 51
                  Width = 88
                  Height = 13
                  Caption = 'Km / Hor'#237'metro'
                  Color = 16249066
                  FocusControl = DBEdit10
                  ParentColor = False
                end
                object Label10: TLabel
                  Left = 103
                  Top = 50
                  Width = 19
                  Height = 13
                  Caption = 'Cor'
                  Color = 16249066
                  FocusControl = DBEdit11
                  ParentColor = False
                end
                object BtnVeiculos: TSpeedButton
                  Left = 584
                  Top = 21
                  Width = 21
                  Height = 21
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
                  OnClick = BtnVeiculosClick
                end
                object Label18: TLabel
                  Left = 203
                  Top = 50
                  Width = 35
                  Height = 13
                  Caption = 'Marca'
                  Color = 16249066
                  FocusControl = DBEdit15
                  ParentColor = False
                end
                object Label13: TLabel
                  Left = 294
                  Top = 92
                  Width = 99
                  Height = 13
                  Caption = 'Garantia (meses)'
                  FocusControl = DBEdit13
                end
                object Label14: TLabel
                  Left = 398
                  Top = 92
                  Width = 102
                  Height = 13
                  Caption = 'R$ Valor Estimado'
                  FocusControl = DBEdit14
                end
                object Label11: TLabel
                  Left = 12
                  Top = 92
                  Width = 73
                  Height = 13
                  Caption = 'Prev.Entrega'
                  Color = 16249066
                  FocusControl = DBEdit8
                  ParentColor = False
                end
                object Label12: TLabel
                  Left = 149
                  Top = 92
                  Width = 74
                  Height = 13
                  Caption = 'Data Entrega'
                  Color = 16249066
                  FocusControl = DBEdit12
                  ParentColor = False
                end
                object Label20: TLabel
                  Left = 514
                  Top = 92
                  Width = 79
                  Height = 13
                  Caption = 'R$ Valor Total'
                  FocusControl = DBEdit18
                end
                object edtPlaca: TDBEdit
                  Left = 12
                  Top = 22
                  Width = 85
                  Height = 21
                  DataField = 'PLACA'
                  DataSource = DSTemplate
                  TabOrder = 0
                  OnExit = edtPlacaExit
                  OnKeyDown = edtPlacaKeyDown
                end
                object DBEdit7: TDBEdit
                  Left = 12
                  Top = 66
                  Width = 85
                  Height = 21
                  DataField = 'ANO_MODELO'
                  DataSource = DSTemplate
                  TabOrder = 2
                end
                object DBEdit9: TDBEdit
                  Left = 449
                  Top = 67
                  Width = 56
                  Height = 21
                  DataField = 'LITROS'
                  DataSource = DSTemplate
                  TabOrder = 6
                end
                object DBEdit10: TDBEdit
                  Left = 512
                  Top = 66
                  Width = 97
                  Height = 21
                  DataField = 'KM_ENTRADA'
                  DataSource = DSTemplate
                  TabOrder = 7
                end
                object DBEdit11: TDBEdit
                  Left = 103
                  Top = 66
                  Width = 94
                  Height = 21
                  DataField = 'ORDA10COR'
                  DataSource = DSTemplate
                  TabOrder = 3
                end
                object DBComboBox1: TDBComboBox
                  Left = 331
                  Top = 66
                  Width = 110
                  Height = 21
                  DataField = 'COMBUSTIVEL'
                  DataSource = DSTemplate
                  ItemHeight = 13
                  Items.Strings = (
                    '1 - Alcool'
                    '2 - Diesel'
                    '3 - Flex'
                    '4 - Gasolina'
                    '5 - GNV')
                  TabOrder = 5
                end
                object DBComboBoxVeiculo: TDBComboBox
                  Left = 103
                  Top = 22
                  Width = 479
                  Height = 21
                  CharCase = ecUpperCase
                  DataField = 'ORDA50VEICULO'
                  DataSource = DSTemplate
                  ItemHeight = 13
                  TabOrder = 1
                  OnChange = DBComboBoxVeiculoChange
                  OnExit = DBComboBoxVeiculoExit
                end
                object DBEdit15: TDBEdit
                  Left = 203
                  Top = 66
                  Width = 121
                  Height = 21
                  DataField = 'MARCAA30'
                  DataSource = DSTemplate
                  TabOrder = 4
                end
                object DBEdit13: TDBEdit
                  Left = 292
                  Top = 108
                  Width = 101
                  Height = 21
                  DataField = 'GARANTIA'
                  DataSource = DSTemplate
                  TabOrder = 10
                end
                object DBEdit14: TDBEdit
                  Left = 399
                  Top = 108
                  Width = 109
                  Height = 21
                  DataField = 'VALOR'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 11
                end
                object DBEdit8: TDBEdit
                  Left = 12
                  Top = 108
                  Width = 132
                  Height = 21
                  DataField = 'DATA_ENTREGA'
                  DataSource = DSTemplate
                  TabOrder = 8
                end
                object DBEdit12: TDBEdit
                  Left = 149
                  Top = 108
                  Width = 138
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  DataField = 'FINALIZADO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 9
                end
                object DBEdit18: TDBEdit
                  Left = 513
                  Top = 108
                  Width = 94
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  DataField = 'VALORTOTAL'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 12
                end
              end
              object PageControl1: TPageControl
                Left = 0
                Top = 143
                Width = 702
                Height = 120
                ActivePage = TabSheet1
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object TabSheet1: TTabSheet
                  Caption = '&Problemas'
                  object DBMemo1: TDBMemo
                    Left = 0
                    Top = 0
                    Width = 694
                    Height = 92
                    Align = alClient
                    Ctl3D = True
                    DataField = 'PROBLEMA'
                    DataSource = DSTemplate
                    ParentCtl3D = False
                    TabOrder = 0
                  end
                end
                object TabSheet2: TTabSheet
                  Caption = '&Observa'#231#245'es'
                  ImageIndex = 1
                  object DBMemo2: TDBMemo
                    Left = 0
                    Top = 0
                    Width = 694
                    Height = 92
                    Align = alClient
                    Ctl3D = True
                    DataField = 'OBS_ENTREGA'
                    DataSource = DSTemplate
                    ParentCtl3D = False
                    TabOrder = 0
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = '&Acess'#243'rios'
                  ImageIndex = 2
                  object DBMemo3: TDBMemo
                    Left = 0
                    Top = 0
                    Width = 694
                    Height = 92
                    Align = alClient
                    Ctl3D = True
                    DataField = 'ACESSORIOS'
                    DataSource = DSTemplate
                    ParentCtl3D = False
                    TabOrder = 0
                  end
                end
              end
              object MemoImpressao: TMemo
                Left = 624
                Top = 20
                Width = 64
                Height = 29
                ScrollBars = ssVertical
                TabOrder = 2
                Visible = False
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 118
            Width = 710
            Height = 10
            TabOrder = 1
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 710
            Height = 118
            object Label1: TLabel
              Left = 6
              Top = 6
              Width = 69
              Height = 13
              Caption = 'Num. Ordem'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 80
              Top = 7
              Width = 113
              Height = 13
              Caption = 'Data / Hora Entrada'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnCliente: TSpeedButton
              Left = 592
              Top = 60
              Width = 21
              Height = 21
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
              OnClick = BtnClienteClick
            end
            object Label15: TLabel
              Left = 6
              Top = 47
              Width = 39
              Height = 13
              Caption = 'Cliente'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 213
              Top = 7
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
            object Label23: TLabel
              Left = 322
              Top = 7
              Width = 104
              Height = 13
              Caption = 'Forma Pagamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText1: TDBText
              Left = 321
              Top = 42
              Width = 41
              Height = 13
              AutoSize = True
              DataField = 'PARCELASVARIAVEIS'
              DataSource = DSTemplate
            end
            object Label17: TLabel
              Left = 473
              Top = 6
              Width = 141
              Height = 13
              Caption = 'Reincidente da Ordem N'#176
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 21
              Width = 71
              Height = 21
              Color = 16249066
              DataField = 'ORDID'
              DataSource = DSTemplate
              Enabled = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 80
              Top = 21
              Width = 128
              Height = 21
              DataField = 'DATA'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object ComboCliente: TRxDBLookupCombo
              Left = 80
              Top = 61
              Width = 511
              Height = 21
              DropDownCount = 8
              Ctl3D = True
              DataField = 'Cliente'
              DataSource = DSTemplate
              DisplayEmpty = 'Selecione um Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              OnKeyDown = DBEdit6KeyDown
            end
            object DBEdit19: TDBEdit
              Left = 6
              Top = 89
              Width = 267
              Height = 19
              Color = 16249066
              Ctl3D = False
              DataField = 'ClienteEndereco'
              DataSource = DSTemplate
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit20: TDBEdit
              Left = 276
              Top = 89
              Width = 149
              Height = 19
              Color = 16249066
              Ctl3D = False
              DataField = 'ClienteBairro'
              DataSource = DSTemplate
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
            end
            object DBEdit16: TDBEdit
              Left = 429
              Top = 89
              Width = 157
              Height = 19
              Color = 16249066
              Ctl3D = False
              DataField = 'ClienteCidade'
              DataSource = DSTemplate
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
            end
            object ComboStatus: TRxDBComboBox
              Left = 213
              Top = 21
              Width = 104
              Height = 21
              Style = csDropDownList
              Ctl3D = False
              DataField = 'STATUS'
              DataSource = DSTemplate
              Enabled = False
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberta'
                'Cancelada'
                'Entregue'
                'Finalizada')
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
              TabStop = False
              Values.Strings = (
                'A'
                'C'
                'E'
                'F')
            end
            object DBEdit17: TDBEdit
              Left = 590
              Top = 88
              Width = 23
              Height = 19
              Color = 16249066
              Ctl3D = False
              DataField = 'ClienteUF'
              DataSource = DSTemplate
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
            end
            object DBEdit3: TDBEdit
              Left = 320
              Top = 21
              Width = 144
              Height = 21
              Color = clBtnFace
              Ctl3D = True
              DataField = 'PlanoRecebimentoLookUp'
              DataSource = DSTemplate
              Enabled = False
              ParentCtl3D = False
              TabOrder = 3
            end
            object DBEdit6: TDBEdit
              Left = 6
              Top = 61
              Width = 71
              Height = 21
              Color = 16249066
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              Enabled = False
              TabOrder = 10
            end
            object DBEdit4: TDBEdit
              Left = 470
              Top = 20
              Width = 156
              Height = 21
              DataField = 'ORDREINCIDENTE'
              DataSource = DSTemplate
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  object PnlEntrega: TPanel [1]
    Left = 134
    Top = 309
    Width = 437
    Height = 149
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 14594104
    TabOrder = 1
    Visible = False
    OnExit = PnlEntregaExit
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 433
      Height = 38
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Informe Data da Entrega'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel8: TPanel
      Left = 336
      Top = 40
      Width = 99
      Height = 107
      Align = alRight
      BevelOuter = bvNone
      Color = 14594104
      TabOrder = 2
      object BitBtn1: TBitBtn
        Left = 11
        Top = 41
        Width = 80
        Height = 54
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          02030000424D0203000000000000360100002800000013000000170000000100
          080000000000CC010000C30E0000C30E000040000000000000001C3404002434
          1C00242424001C3C0400243C0C00244404002C5C04003C5C240044543C005C5C
          54005C5C5C00646464006C6C6C0054743C007474740044840400747C74007C7C
          7C0084848400449404006C8C540054AC0400000000008C8C8C008C948C009494
          94009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC040074F404007CFC
          040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC240094EC3C0094FC
          2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC5400ACFC6400B4FC
          6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCCAC00BCC4B400BCCC
          B400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0C0003F3F3F3F3F3F
          191717193F3F3F3F3F3F3F3F3F003F3F3F3F3F1712111112193F3F3F3F3F3F3F
          3F003F3F3F3F19120E0C0C0E123F3F3F3F3F3F3F3F003F3F3F3F120E0C0B0B0C
          11173F3F3F3F3F3F3F003F3F3F17110C0B0A0A0B0E123F3F3F3F3F3F3F003F3F
          3F12140702010B0B0C11173F3F3F3F3F3F003F3F3F181E1E0F03100C0C0E1219
          3F3F3F3F3F003F3F3F2422231F06080C0C0C11173F3F3F3F3F003F3F2B212223
          221305170C0C0E11173F3F3F3F003F3521222323231E06090E0C0C0E12193F3F
          3F003F2B2223272726221304180E0C0C0E123F3F3F003F2926252A2F2F261F06
          08110E0C0E11173F3F0038302D232C39332E23150311110E0C0E11173F003F39
          2E28383F37312A220F0117110E0E0E1219003F3F373F3F3F3F3A30261E060917
          110E0E1117003F3F3F3F3F3F3F3F322E2315030C1712111217003F3F3F3F3F3F
          3F3F37342D2313001819171719003F3F3F3F3F3F3F3F3F3B342E231300193F3F
          3F003F3F3F3F3F3F3F3F3F3F3C3330230F011D3F3F003F3F3F3F3F3F3F3F3F3F
          3F393E31250F0D3F3F003F3F3F3F3F3F3F3F3F3F3F3F383D312320353F003F3F
          3F3F3F3F3F3F3F3F3F3F3F3F3C2A23363F003F3F3F3F3F3F3F3F3F3F3F3F3F3F
          3F3F373F3F00}
      end
      object BitBtn2: TBitBtn
        Left = 11
        Top = 9
        Width = 80
        Height = 25
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC000000CE0E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777778888887
          777770000000777885555558877770000000778555DDDD555877700000007D55
          DD7777555587700000007D5577777855558770000000D55877778555D5587000
          0000D5877778555D7D5870000000D587778555D77D5870000000D58778555D77
          7D5870000000D5878555D7777D5870000000D558555D7777D558700000007D55
          55D77777D587700000007D555877778555877000000077D55588885558777000
          0000777DD555555DD7777000000077777DDDDDD7777770000000777777777777
          777770000000}
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 40
      Width = 334
      Height = 107
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 334
        Height = 109
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = 14594104
        TabOrder = 0
        object Label46: TLabel
          Left = 8
          Top = 7
          Width = 27
          Height = 13
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 8
          Top = 58
          Width = 126
          Height = 13
          Caption = 'Plano de Recebimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBDateEdit3: TDBDateEdit
          Left = 8
          Top = 23
          Width = 145
          Height = 28
          DataField = 'FINALIZADO'
          DataSource = DSTemplate
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object LabelvlrCobrar: TCurrencyEdit
          Left = 170
          Top = 20
          Width = 145
          Height = 29
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object LookUpPlano: TRxDBLookupCombo
          Left = 8
          Top = 72
          Width = 317
          Height = 21
          DropDownCount = 8
          Ctl3D = True
          DataField = 'PlanoRecebimentoLookUp'
          DataSource = DSTemplate
          DisplayEmpty = 'Selecione um Tipo de Servi'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 109
        Width = 334
        Height = 120
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = 14594104
        TabOrder = 1
        Visible = False
        object CheckPercentual: TRadioButton
          Left = 12
          Top = 19
          Width = 141
          Height = 17
          Caption = 'Percentual'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = CheckPercentualClick
        end
        object CheckValor: TRadioButton
          Left = 12
          Top = 47
          Width = 141
          Height = 17
          Caption = 'R$ Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edtDescto: TCurrencyEdit
          Left = 164
          Top = 19
          Width = 157
          Height = 45
          AutoSize = False
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object ConcluirOrdem1: TMenuItem
      Caption = 'Informar &Conclus'#227'o do Servi'#231'o'
      OnClick = ConcluirOrdem1Click
    end
    object InformarEntregadoVeiculoEquipamento1: TMenuItem
      Caption = 'Informar &Entrega do Veiculo / Equipamento'
      OnClick = InformarEntregadoVeiculoEquipamento1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object AplicarDesconto1: TMenuItem
      Caption = 'Aplicar &Desconto ( Percentual / Valor )'
      OnClick = AplicarDesconto1Click
    end
    object CancelarOrdemdeServio1: TMenuItem
      Caption = 'Cancela&r Ordem de Servi'#231'o'
      OnClick = CancelarOrdemdeServio1Click
    end
    object FinalizareEmitirNotaFiscal1: TMenuItem
      Caption = '&Finalizar e Emitir Nota Fiscal'
      OnClick = FinalizareEmitirNotaFiscal1Click
    end
    object ExclurirRegistrodeFinalizao1: TMenuItem
      Caption = 'Exclurir Registro de Finaliza'#231#227'o'
      OnClick = ExclurirRegistrodeFinalizao1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AlterarStatusparaABERTO1: TMenuItem
      Caption = 'Alterar Status para ABERTO'
      OnClick = AlterarStatusparaABERTO1Click
    end
    object MnRemoverIfemdasplacas: TMenuItem
      Caption = 'Remover Ifem das placas'
      OnClick = MnRemoverIfemdasplacasClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object impOrdemdeServioA4: TMenuItem
      Caption = 'Ordem de Servi'#231'o Atual (A4)'
      OnClick = impOrdemdeServioA4Click
    end
    object impOrdemdeServioBobina: TMenuItem
      Caption = 'Ordem de Servi'#231'o Bobina'
      OnClick = impOrdemdeServioBobinaClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object RelatoriodeOrdensListadas1: TMenuItem
      Caption = 'Relat'#243'rio de Ordens Listadas'
      OnClick = RelatoriodeOrdensListadas1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    AfterCancel = SQLTemplateAfterCancel
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From ORD_MECANICA Where (%MFiltro)')
    object SQLTemplateORDID: TIntegerField
      Tag = 1
      DisplayLabel = 'N.Ordem'
      FieldName = 'ORDID'
      Origin = 'DB.ORD_MECANICA.ORDID'
      Required = True
      Visible = False
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'Cod.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.ORD_MECANICA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCliente: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateORDREINCIDENTE: TIntegerField
      FieldName = 'ORDREINCIDENTE'
      Origin = 'DB.ORD_MECANICA.ORDREINCIDENTE'
    end
    object SQLTemplateDATA: TDateTimeField
      DisplayLabel = 'Data '
      FieldName = 'DATA'
      Origin = 'DB.ORD_MECANICA.DATA'
    end
    object SQLTemplateACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      Origin = 'DB.ORD_MECANICA.ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object SQLTemplatePROBLEMA: TMemoField
      FieldName = 'PROBLEMA'
      Origin = 'DB.ORD_MECANICA.PROBLEMA'
      BlobType = ftMemo
      Size = 1
    end
    object SQLTemplateVALOR: TFloatField
      DisplayLabel = 'R$ Valor'
      FieldName = 'VALOR'
      Origin = 'DB.ORD_MECANICA.VALOR'
    end
    object SQLTemplateFINALIZADO: TDateTimeField
      FieldName = 'FINALIZADO'
      Origin = 'DB.ORD_MECANICA.FINALIZADO'
    end
    object SQLTemplateKM_ENTRADA: TIntegerField
      DisplayLabel = 'Km Entrega'
      FieldName = 'KM_ENTRADA'
      Origin = 'DB.ORD_MECANICA.KM_ENTRADA'
    end
    object SQLTemplateCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'DB.ORD_MECANICA.COMBUSTIVEL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateLITROS: TSmallintField
      FieldName = 'LITROS'
      Origin = 'DB.ORD_MECANICA.LITROS'
    end
    object SQLTemplateORDA10COR: TStringField
      FieldName = 'ORDA10COR'
      Origin = 'DB.ORD_MECANICA.ORDA10COR'
      Size = 10
    end
    object SQLTemplateDATA_ENTREGA: TDateTimeField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DATA_ENTREGA'
      Origin = 'DB.ORD_MECANICA.DATA_ENTREGA'
    end
    object SQLTemplateOBS_ENTREGA: TMemoField
      FieldName = 'OBS_ENTREGA'
      Origin = 'DB.ORD_MECANICA.OBS_ENTREGA'
      BlobType = ftMemo
      Size = 1
    end
    object SQLTemplateSOLUCAO: TMemoField
      FieldName = 'SOLUCAO'
      Origin = 'DB.ORD_MECANICA.SOLUCAO'
      BlobType = ftMemo
      Size = 1
    end
    object SQLTemplateGARANTIA: TSmallintField
      FieldName = 'GARANTIA'
      Origin = 'DB.ORD_MECANICA.GARANTIA'
    end
    object SQLTemplateCDUSU: TSmallintField
      FieldName = 'CDUSU'
      Origin = 'DB.ORD_MECANICA.CDUSU'
    end
    object SQLTemplateClienteEndereco: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEndereco'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60ENDRES'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteEnderecoNro: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEnderecoNro'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA5NROENDRES'
      KeyFields = 'CLIEA13ID'
      Size = 5
      Lookup = True
    end
    object SQLTemplateClienteBairro: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteBairro'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60BAIRES'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCidade'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateMARCAA30: TStringField
      FieldName = 'MARCAA30'
      Origin = 'DB.ORD_MECANICA.MARCAA30'
      Size = 30
    end
    object SQLTemplateORDA50VEICULO: TStringField
      DisplayLabel = 'Veiculo Modelo'
      FieldName = 'ORDA50VEICULO'
      Origin = 'DB.ORD_MECANICA.ORDA50VEICULO'
      Size = 50
    end
    object SQLTemplateANO_MODELO: TStringField
      FieldName = 'ANO_MODELO'
      Origin = 'DB.ORD_MECANICA.ANO_MODELO'
      Size = 10
    end
    object SQLTemplateSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'DB.ORD_MECANICA.STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateClienteUF: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteUF'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA2UFRES'
      KeyFields = 'CLIEA13ID'
      Size = 2
      Lookup = True
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.ORD_MECANICA.EMPRICOD'
    end
    object SQLTemplateEmpresaLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCliFornEmpLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCliFornEmpEnderecoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpEnderecoLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCliFornEmpEstadoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpEstadoLookUp'
      Visible = False
      Size = 2
      Calculated = True
    end
    object SQLTemplateCliFornEmpBairroLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpBairroLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCliFornEmpCEPLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpCEPLookUp'
      Visible = False
      Size = 8
      Calculated = True
    end
    object SQLTemplateCliFornEmpCGCCPFLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpCGCCPFLookUp'
      Visible = False
      Size = 14
      Calculated = True
    end
    object SQLTemplateCliFornEmpIERGLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpIERGLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateCliFornEmpCidadeLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpCidadeLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCliFornEmpTabelaPrecoLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpTabelaPrecoLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateCliFornEmpFoneLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'CliFornEmpFoneLookUp'
      Visible = False
      Calculated = True
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
    object SQLTemplateORITN2VLRPRODUTO: TFloatField
      FieldName = 'ORITN2VLRPRODUTO'
      Origin = 'DB.ORD_MECANICA.ORITN2VLRPRODUTO'
    end
    object SQLTemplateORITN2VLRSERVICO: TFloatField
      FieldName = 'ORITN2VLRSERVICO'
      Origin = 'DB.ORD_MECANICA.ORITN2VLRSERVICO'
    end
    object SQLTemplateORITN2VLRDESC: TFloatField
      FieldName = 'ORITN2VLRDESC'
      Origin = 'DB.ORD_MECANICA.ORITN2VLRDESC'
    end
    object SQLTemplatePLACA: TStringField
      DisplayLabel = 'Placa Nro'
      DisplayWidth = 15
      FieldName = 'PLACA'
      Origin = 'DB.ORD_MECANICA.PLACA'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateVALORTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VALORTOTAL'
      Calculated = True
    end
    object SQLTemplatePARCELAS: TStringField
      FieldName = 'PARCELAS'
      Origin = 'DB.ORD_MECANICA.PARCELAS'
      OnChange = SQLTemplatePARCELASChange
      Size = 18
    end
    object SQLTemplatePARCELASVARIAVEIS: TStringField
      FieldName = 'PARCELASVARIAVEIS'
      Origin = 'DB.ORD_MECANICA.PARCELASVARIAVEIS'
    end
    object SQLTemplatePlanoRecebimentoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoRecebimentoLookUp'
      LookupDataSet = SQLFinanceiro
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'PARCELAS'
      Size = 60
      Lookup = True
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  CLIEA13ID, CLIEA60RAZAOSOC, CLIEA60ENDRES, CLIEA60BAIRES, '
      '  CLIEA60CIDRES, CLIEA2UFRES, CLIEA11CPF, CLIEA10RG, CLIEA14CGC,'
      '  CLIEA20IE, CLIEA5NROENDRES '
      'FROM'
      '  CLIENTE'
      'ORDER BY'
      '  CLIEA60RAZAOSOC')
    Macros = <>
    Left = 15
    Top = 284
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA5NROENDRES: TStringField
      FieldName = 'CLIEA5NROENDRES'
      Origin = 'DB.CLIENTE.CLIEA5NROENDRES'
      Size = 5
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
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 44
    Top = 284
  end
  object DSSQLVeiculos: TDataSource
    DataSet = SQLVeiculos
    Left = 44
    Top = 312
  end
  object SQLExecutarem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '* '
      'From'
      'ORD_EXECUTAREM'
      'Order by'
      'ORDA25executaem'
      '')
    Macros = <>
    Left = 72
    Top = 312
    object SQLExecutaremORDEXEID: TIntegerField
      FieldName = 'ORDEXEID'
      Origin = 'DB.ORD_EXECUTAREM.ORDEXEID'
    end
    object SQLExecutaremORDA25EXECUTAEM: TStringField
      FieldName = 'ORDA25EXECUTAEM'
      Origin = 'DB.ORD_EXECUTAREM.ORDA25EXECUTAEM'
      Size = 25
    end
    object SQLExecutaremTIPOSERVICO: TStringField
      FieldName = 'TIPOSERVICO'
      Origin = 'DB.ORD_EXECUTAREM.TIPOSERVICO'
      Size = 1
    end
  end
  object DSSQLExecutarem: TDataSource
    DataSet = SQLExecutarem
    Left = 100
    Top = 312
  end
  object SQLVeiculos: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'Select * From VEICULOSCLIENTE where CLIEA13ID = :CLIEA13ID'
      '')
    Macros = <>
    Left = 15
    Top = 312
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLVeiculosVICLICODVEICULO: TIntegerField
      FieldName = 'VICLICODVEICULO'
      Origin = 'DB.VEICULOSCLIENTE.VICLICODVEICULO'
    end
    object SQLVeiculosVICLA15PLACA: TStringField
      FieldName = 'VICLA15PLACA'
      Origin = 'DB.VEICULOSCLIENTE.VICLA15PLACA'
      Size = 15
    end
    object SQLVeiculosCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.VEICULOSCLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVeiculosVICLA40MODELO: TStringField
      FieldName = 'VICLA40MODELO'
      Origin = 'DB.VEICULOSCLIENTE.VICLA40MODELO'
      Size = 40
    end
    object SQLVeiculosVOCLA20ESPECIE: TStringField
      FieldName = 'VOCLA20ESPECIE'
      Origin = 'DB.VEICULOSCLIENTE.VOCLA20ESPECIE'
    end
    object SQLVeiculosVICLA1ATIVO: TStringField
      FieldName = 'VICLA1ATIVO'
      Origin = 'DB.VEICULOSCLIENTE.VICLA1ATIVO'
      Size = 1
    end
    object SQLVeiculosVICLDDATAINC: TDateTimeField
      FieldName = 'VICLDDATAINC'
      Origin = 'DB.VEICULOSCLIENTE.VICLDDATAINC'
    end
    object SQLVeiculosVICLA10FROTA: TStringField
      FieldName = 'VICLA10FROTA'
      Origin = 'DB.VEICULOSCLIENTE.VICLA10FROTA'
      Size = 10
    end
    object SQLVeiculosVICLA15COR: TStringField
      FieldName = 'VICLA15COR'
      Origin = 'DB.VEICULOSCLIENTE.VICLA15COR'
      Size = 15
    end
    object SQLVeiculosVICLA1COMBUSTIVEL: TStringField
      FieldName = 'VICLA1COMBUSTIVEL'
      Origin = 'DB.VEICULOSCLIENTE.VICLA1COMBUSTIVEL'
      Size = 1
    end
    object SQLVeiculosVICLA25MARCA: TStringField
      FieldName = 'VICLA25MARCA'
      Origin = 'DB.VEICULOSCLIENTE.VICLA25MARCA'
      Size = 25
    end
    object SQLVeiculosVICLIPLRCPREFERENCIAL: TIntegerField
      FieldName = 'VICLIPLRCPREFERENCIAL'
      Origin = 'DB.VEICULOSCLIENTE.VICLIPLRCPREFERENCIAL'
    end
    object SQLVeiculosVICLN2KMATUAL: TFloatField
      FieldName = 'VICLN2KMATUAL'
      Origin = 'DB.VEICULOSCLIENTE.VICLN2KMATUAL'
    end
    object SQLVeiculosVICLA9ANOMODELO: TStringField
      FieldName = 'VICLA9ANOMODELO'
      Origin = 'DB.VEICULOSCLIENTE.VICLA9ANOMODELO'
      Size = 9
    end
    object SQLVeiculosREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VEICULOSCLIENTE.REGISTRO'
    end
    object SQLVeiculosPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VEICULOSCLIENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVeiculosVEICA60PLRCOPCIONAIS: TStringField
      FieldName = 'VEICA60PLRCOPCIONAIS'
      Origin = 'DB.VEICULOSCLIENTE.VEICA60PLRCOPCIONAIS'
      Size = 60
    end
  end
  object SQLOperacaEstoque: TTable
    DatabaseName = 'DB'
    TableName = 'OPERACAOESTOQUE'
    Left = 15
    Top = 340
    object SQLOperacaEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Required = True
    end
    object SQLOperacaEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaEstoqueSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaEstoqueCFOPA5CODDENTROUF: TStringField
      FieldName = 'CFOPA5CODDENTROUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaEstoqueCFOPA5CODFORAUF: TStringField
      FieldName = 'CFOPA5CODFORAUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaEstoqueOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaEstoqueOPESCORIGEMDESTINO: TStringField
      FieldName = 'OPESCORIGEMDESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaEstoquePENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaEstoqueREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLOperacaEstoqueOPESA18CAMPOIMP: TStringField
      FieldName = 'OPESA18CAMPOIMP'
      FixedChar = True
      Size = 18
    end
    object SQLOperacaEstoqueOPESCCALCIPI: TStringField
      FieldName = 'OPESCCALCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaEstoqueOPESCCALCICMS: TStringField
      FieldName = 'OPESCCALCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaEstoquePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLOperacaEstoqueOPESCGERAFINANCEIRO: TStringField
      FieldName = 'OPESCGERAFINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaEstoquePLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLOperacaEstoquePLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
  end
  object DSTblOperacaoEstoque: TDataSource
    AutoEdit = False
    DataSet = SQLOperacaEstoque
    Left = 44
    Top = 340
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Empresa')
    Macros = <>
    Left = 72
    Top = 340
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
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
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
  end
  object RDprint: TRDprint
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
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
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
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = False
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
    Left = 444
  end
  object SQLFinaliza: TRxQuery
    Tag = 1
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ORD_MEC_FINALIZA WHERE ORDNUM = :ORDID')
    Macros = <>
    Left = 23
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ORDID'
        ParamType = ptUnknown
      end>
    object SQLFinalizaORDNUM: TIntegerField
      FieldName = 'ORDNUM'
      Origin = 'DB.ORD_FINALIZA.ORDNUM'
    end
    object SQLFinalizaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'DB.ORD_FINALIZA.DATA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999;0;_'
    end
    object SQLFinalizaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Origin = 'DB.ORD_FINALIZA.NOTAFISCAL'
    end
  end
  object SQLNumerarioPrazo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where NUMECVISTAPRAZO='#39'P'#39
      'order by NUMEA30DESCR')
    Macros = <>
    Left = 77
    Top = 473
  end
  object SQLNumerarioVista: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where NUMECVISTAPRAZO='#39'V'#39
      'order by NUMEA30DESCR'
      '')
    Macros = <>
    Left = 46
    Top = 474
  end
  object SQLTransportadora: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Transportadora')
    Macros = <>
    Left = 18
    Top = 501
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
    object SQLTransportadoraTRANA60END: TStringField
      FieldName = 'TRANA60END'
      Origin = 'DB.TRANSPORTADORA.TRANA60END'
      FixedChar = True
      Size = 60
    end
    object SQLTransportadoraTRANA60BAI: TStringField
      FieldName = 'TRANA60BAI'
      Origin = 'DB.TRANSPORTADORA.TRANA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLTransportadoraTRANA60CID: TStringField
      FieldName = 'TRANA60CID'
      Origin = 'DB.TRANSPORTADORA.TRANA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLTransportadoraTRANA8CEP: TStringField
      FieldName = 'TRANA8CEP'
      Origin = 'DB.TRANSPORTADORA.TRANA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLTransportadoraTRANA2UF: TStringField
      FieldName = 'TRANA2UF'
      Origin = 'DB.TRANSPORTADORA.TRANA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTransportadoraTRANA14CGC: TStringField
      FieldName = 'TRANA14CGC'
      Origin = 'DB.TRANSPORTADORA.TRANA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLTransportadoraTRANA15IE: TStringField
      FieldName = 'TRANA15IE'
      Origin = 'DB.TRANSPORTADORA.TRANA15IE'
      FixedChar = True
      Size = 15
    end
  end
  object SQLNotaContasReceber: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'CONTASRECEBER'
      'Where'
      '(%Filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 46
    Top = 501
    object SQLNotaContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLNotaContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLNotaContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLNotaContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLNotaContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLNotaContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLNotaContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLNotaContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLNotaContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLNotaContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLNotaContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
    end
    object SQLNotaContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLNotaContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLNotaContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLNotaContasReceberCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
    end
    object SQLNotaContasReceberCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
    end
    object SQLNotaContasReceberCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
    end
    object SQLNotaContasReceberCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
    end
    object SQLNotaContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLNotaContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLNotaContasReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLNotaContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLNotaContasReceberPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaContasReceberREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLNotaContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLNotaContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLNotaContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLNotaContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLNotaContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLNotaContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLNotaContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLNotaContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLNotaContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLNotaContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLNotaContasReceberFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCCTEMREGRECEBER: TStringField
      FieldName = 'CTRCCTEMREGRECEBER'
      Origin = 'DB.CONTASRECEBER.CTRCCTEMREGRECEBER'
      FixedChar = True
      Size = 1
    end
    object SQLNotaContasReceberCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      Origin = 'DB.CONTASRECEBER.COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCDENVIOCOBRANCA: TDateTimeField
      FieldName = 'CTRCDENVIOCOBRANCA'
      Origin = 'DB.CONTASRECEBER.CTRCDENVIOCOBRANCA'
    end
    object SQLNotaContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLNotaContasReceberDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLNotaContasReceberHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLNotaContasReceberPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLNotaContasReceberCONTA13ID: TStringField
      FieldName = 'CONTA13ID'
      Origin = 'DB.CONTASRECEBER.CONTA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaContasReceberCTRCA13CTRCAIDCHQ: TStringField
      FieldName = 'CTRCA13CTRCAIDCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA13CTRCAIDCHQ'
      Size = 13
    end
  end
  object SQLIcmsUF: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From ICMSUF'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 76
    Top = 501
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO ')
    Macros = <>
    Left = 76
    Top = 529
  end
  object SQLPlano: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANORECEBIMENTO'
      'Where PLRCICOD=:PLRCICOD')
    Macros = <>
    Left = 46
    Top = 529
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PLRCICOD'
        ParamType = ptUnknown
      end>
    object SQLPlanoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoPLRCN2TXJURO: TFloatField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
    end
    object SQLPlanoPLRCN2TXMULTA: TFloatField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
    end
    object SQLPlanoPLRCN2TXCRED: TFloatField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
    end
    object SQLPlanoPLRCN2PERCDESC: TFloatField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
    end
    object SQLPlanoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLPlanoPLRCDFIXDVENC: TIntegerField
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLPlanoPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoPLRCN2PERCENTR: TFloatField
      FieldName = 'PLRCN2PERCENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCENTR'
    end
    object SQLPlanoPLRCN2DESC: TFloatField
      FieldName = 'PLRCN2DESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2DESC'
    end
    object SQLPlanoPLRCCATIVO: TStringField
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLPlanoPLRCN2PERCACRESC: TFloatField
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
    end
  end
  object SQLSerieNF: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From Serie'
      'Where (%Empresa) and  (%Serie)')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 18
    Top = 530
    object SQLSerieNFSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLSerieNFSERIINRONF: TIntegerField
      FieldName = 'SERIINRONF'
      Origin = 'DB.SERIE.SERIINRONF'
    end
    object SQLSerieNFEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.SERIE.EMPRICOD'
    end
    object SQLSerieNFSERIA100PATHEXEIMP: TStringField
      FieldName = 'SERIA100PATHEXEIMP'
      Origin = 'DB.SERIE.SERIA100PATHEXEIMP'
      FixedChar = True
      Size = 100
    end
    object SQLSerieNFPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLSerieNFREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SERIE.REGISTRO'
    end
  end
  object SQLParcelasPrazoVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASPRAZOVENDATEMP')
    Macros = <>
    Left = 17
    Top = 559
    object SQLParcelasPrazoVendaTempTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TERMICOD'
    end
    object SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField
      FieldName = 'DATAVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.DATAVENCTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField
      FieldName = 'NROPARCELA'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NROPARCELA'
      DisplayFormat = '000'
    end
    object SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField
      FieldName = 'VALORVENCTO'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.VALORVENCTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NUMEICOD'
    end
    object SQLParcelasPrazoVendaTempNumerarioLookup: TStringField
      DisplayLabel = 'Numer'#225'rio'
      FieldKind = fkLookup
      FieldName = 'NumerarioLookup'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA30DESCR'
      KeyFields = 'NUMEICOD'
      Size = 30
      Lookup = True
    end
    object SQLParcelasPrazoVendaTempTipoPadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoPadrao'
      LookupDataSet = SQLNumerario
      LookupKeyFields = 'NUMEICOD'
      LookupResultField = 'NUMEA5TIPO'
      KeyFields = 'NUMEICOD'
      Size = 5
      Lookup = True
    end
  end
  object SQLPlanoParcela: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANORECEBIMENTOPARCELA'
      'Where PLRCICOD=:PLRCICOD')
    Macros = <>
    Left = 46
    Top = 558
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PLRCICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM PORTADOR')
    Macros = <>
    Left = 75
    Top = 557
  end
  object SQLNotaFiscalItem: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM NOTAFISCALITEM'
      'Where (%Filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 75
    Top = 585
    object SQLNotaFiscalItemNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.NOTAFISCALITEM.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalItemNFITIITEM: TIntegerField
      FieldName = 'NFITIITEM'
      Origin = 'DB.NOTAFISCALITEM.NFITIITEM'
    end
    object SQLNotaFiscalItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTAFISCALITEM.PRODICOD'
    end
    object SQLNotaFiscalItemNFITN3QUANT: TFloatField
      FieldName = 'NFITN3QUANT'
      Origin = 'DB.NOTAFISCALITEM.NFITN3QUANT'
    end
    object SQLNotaFiscalItemNFITN2VLRUNIT: TFloatField
      FieldName = 'NFITN2VLRUNIT'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRUNIT'
    end
    object SQLNotaFiscalItemNFITN2PERCDESC: TFloatField
      FieldName = 'NFITN2PERCDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCDESC'
    end
    object SQLNotaFiscalItemNFITN2VLRDESC: TFloatField
      FieldName = 'NFITN2VLRDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRDESC'
    end
    object SQLNotaFiscalItemNFITN2PERCICMS: TFloatField
      FieldName = 'NFITN2PERCICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCICMS'
    end
    object SQLNotaFiscalItemNFITN2BASEICMS: TFloatField
      FieldName = 'NFITN2BASEICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASEICMS'
    end
    object SQLNotaFiscalItemNFITN2VLRICMS: TFloatField
      FieldName = 'NFITN2VLRICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRICMS'
    end
    object SQLNotaFiscalItemNFITN2PERCSUBS: TFloatField
      FieldName = 'NFITN2PERCSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCSUBS'
    end
    object SQLNotaFiscalItemNFITN2BASESUBS: TFloatField
      FieldName = 'NFITN2BASESUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASESUBS'
    end
    object SQLNotaFiscalItemNFITN2VLRSUBS: TFloatField
      FieldName = 'NFITN2VLRSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRSUBS'
    end
    object SQLNotaFiscalItemNFITN2PERCIPI: TFloatField
      FieldName = 'NFITN2PERCIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCIPI'
    end
    object SQLNotaFiscalItemNFITN2VLRIPI: TFloatField
      FieldName = 'NFITN2VLRIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRIPI'
    end
    object SQLNotaFiscalItemNFITN2PERCISSQN: TFloatField
      FieldName = 'NFITN2PERCISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCISSQN'
    end
    object SQLNotaFiscalItemNFITN2VLRISSQN: TFloatField
      FieldName = 'NFITN2VLRISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRISSQN'
    end
    object SQLNotaFiscalItemNFITN2VLRFRETE: TFloatField
      FieldName = 'NFITN2VLRFRETE'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRFRETE'
    end
    object SQLNotaFiscalItemNFITN2VLRLUCRO: TFloatField
      FieldName = 'NFITN2VLRLUCRO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRLUCRO'
    end
    object SQLNotaFiscalItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTAFISCALITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTAFISCALITEM.REGISTRO'
    end
    object SQLNotaFiscalItemNFITN2PERCREDUCAO: TFloatField
      FieldName = 'NFITN2PERCREDUCAO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCREDUCAO'
    end
    object SQLNotaFiscalItemNFITN3TOTVEND: TFloatField
      FieldName = 'NFITN3TOTVEND'
      Origin = 'DB.NOTAFISCALITEM.NFITN3TOTVEND'
    end
    object SQLNotaFiscalItemPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.NOTAFISCALITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalItemPVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
      Origin = 'DB.NOTAFISCALITEM.PVITIITEM'
    end
    object SQLNotaFiscalItemNFITN3QUANTVEND: TFloatField
      FieldName = 'NFITN3QUANTVEND'
      Origin = 'DB.NOTAFISCALITEM.NFITN3QUANTVEND'
    end
    object SQLNotaFiscalItemNFITN2PERCCOMIS: TFloatField
      FieldName = 'NFITN2PERCCOMIS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCCOMIS'
    end
    object SQLNotaFiscalItemCPITICPOS: TIntegerField
      FieldName = 'CPITICPOS'
      Origin = 'DB.NOTAFISCALITEM.CPITICPOS'
    end
    object SQLNotaFiscalItemCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.NOTAFISCALITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalItemLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTAFISCALITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalItemNFITA254OBS: TStringField
      FieldName = 'NFITA254OBS'
      Origin = 'DB.NOTAFISCALITEM.NFITA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLNotaFiscalItemNFITICST: TIntegerField
      FieldName = 'NFITICST'
      Origin = 'DB.NOTAFISCALITEM.NFITICST'
    end
  end
  object SQLTipoDoc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from TipoDocumento'
      'Order by TPDCA60DESCR')
    Macros = <>
    Left = 46
    Top = 586
    object SQLTipoDocTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
    end
    object SQLTipoDocTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLContasReceber: TRxQuery
    Tag = 3
    BeforePost = SQLContasReceberBeforePost
    OnNewRecord = SQLContasReceberNewRecord
    OnPostError = SQLContasReceberPostError
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'CONTASRECEBER'
      'Where'
      'NOFIA13ID=:NOFIA13ID'
      'order by'
      'CTRCICOD ')
    Macros = <>
    Left = 18
    Top = 586
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'NOFIA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPLCTA15COD: TStringField
      DisplayLabel = 'Conta Cr'#233'dito'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLContasReceberPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
    end
    object SQLContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Size = 13
    end
    object SQLContasReceberCTRCA254HIST: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberHTPDICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Hist. Padr'#227'o'
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLContasReceberPLCTA15CODDEBITO: TStringField
      DisplayLabel = 'Conta Debito'
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCEMITIDOBOLETO: TStringField
      FieldName = 'CTRCCEMITIDOBOLETO'
      Origin = 'DB.CONTASRECEBER.CTRCCEMITIDOBOLETO'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 17
    Top = 614
  end
  object SQLBuscas: TRxQuery
    Tag = 2
    DatabaseName = 'DB'
    RequestLive = True
    Macros = <>
    Left = 77
    Top = 445
  end
  object DSSQLFinanceiro: TDataSource
    DataSet = SQLFinanceiro
    Left = 48
    Top = 445
  end
  object SQLFinanceiro: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  *'
      'FROM'
      ' PLANORECEBIMENTO'
      'ORDER BY'
      ' PLRCA60DESCR')
    Macros = <>
    Left = 20
    Top = 445
    object SQLFinanceiroPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLFinanceiroPLRCA60DESCR: TStringField
      FieldName = 'PLRCA60DESCR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLFinanceiroPLRCN2TXJURO: TFloatField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
    end
    object SQLFinanceiroPLRCN2TXMULTA: TFloatField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
    end
    object SQLFinanceiroPLRCN2TXCRED: TFloatField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
    end
    object SQLFinanceiroPLRCN2PERCDESC: TFloatField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
    end
    object SQLFinanceiroPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLFinanceiroPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLFinanceiroPLRCDFIXDVENC: TIntegerField
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLFinanceiroPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLFinanceiroPLRCN2PERCENTR: TFloatField
      FieldName = 'PLRCN2PERCENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCENTR'
    end
    object SQLFinanceiroPLRCN2DESC: TFloatField
      FieldName = 'PLRCN2DESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2DESC'
    end
    object SQLFinanceiroPLRCCATIVO: TStringField
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLFinanceiroPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLFinanceiroREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLFinanceiroPLRCN2PERCACRESC: TFloatField
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
    end
    object SQLFinanceiroPLRCCIMPDESCRNF: TStringField
      FieldName = 'PLRCCIMPDESCRNF'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCIMPDESCRNF'
      FixedChar = True
      Size = 1
    end
    object SQLFinanceiroPLRCN5FATOR: TFloatField
      FieldName = 'PLRCN5FATOR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATOR'
    end
    object SQLFinanceiroPLRCN5FATORPARC: TFloatField
      FieldName = 'PLRCN5FATORPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATORPARC'
    end
    object SQLFinanceiroPLRCFATCASH: TStringField
      FieldName = 'PLRCFATCASH'
      Origin = 'DB.PLANORECEBIMENTO.PLRCFATCASH'
      FixedChar = True
      Size = 1
    end
    object SQLFinanceiroPLRCN2PERCJURDIA: TFloatField
      FieldName = 'PLRCN2PERCJURDIA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCJURDIA'
    end
  end
  object SQLNotaFiscal: TRxQuery
    Tag = 2
    BeforePost = SQLNotaFiscalBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from NotaFiscal')
    Macros = <>
    Left = 18
    Top = 473
    object SQLNotaFiscalNOFIA13ID: TStringField
      Tag = 2
      FieldName = 'NOFIA13ID'
      Origin = 'DB.NOTAFISCAL.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTAFISCAL.EMPRICOD'
    end
    object SQLNotaFiscalNOFIICOD: TIntegerField
      Tag = 1
      FieldName = 'NOFIICOD'
      Origin = 'DB.NOTAFISCAL.NOFIICOD'
    end
    object SQLNotaFiscalEMPRICODDEST: TIntegerField
      FieldName = 'EMPRICODDEST'
      Origin = 'DB.NOTAFISCAL.EMPRICODDEST'
    end
    object SQLNotaFiscalCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.NOTAFISCAL.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTAFISCAL.FORNICOD'
    end
    object SQLNotaFiscalSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.NOTAFISCAL.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalNOFIINUMERO: TIntegerField
      FieldName = 'NOFIINUMERO'
      Origin = 'DB.NOTAFISCAL.NOFIINUMERO'
    end
    object SQLNotaFiscalNOFICSTATUS: TStringField
      FieldName = 'NOFICSTATUS'
      Origin = 'DB.NOTAFISCAL.NOFICSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalNOFIDEMIS: TDateTimeField
      FieldName = 'NOFIDEMIS'
      Origin = 'DB.NOTAFISCAL.NOFIDEMIS'
    end
    object SQLNotaFiscalCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.NOTAFISCAL.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaFiscalOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTAFISCAL.OPESICOD'
    end
    object SQLNotaFiscalNOFIN2BASCALCICMS: TFloatField
      FieldName = 'NOFIN2BASCALCICMS'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCICMS'
    end
    object SQLNotaFiscalNOFIN2VLRICMS: TFloatField
      FieldName = 'NOFIN2VLRICMS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRICMS'
    end
    object SQLNotaFiscalNOFIN2BASCALCSUBS: TFloatField
      FieldName = 'NOFIN2BASCALCSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCSUBS'
    end
    object SQLNotaFiscalNOFIN2BASCALCCIPI: TFloatField
      FieldName = 'NOFIN2BASCALCCIPI'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCCIPI'
    end
    object SQLNotaFiscalNOFIN2VLRIPI: TFloatField
      FieldName = 'NOFIN2VLRIPI'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRIPI'
    end
    object SQLNotaFiscalNOFIN2VLRDESC: TFloatField
      FieldName = 'NOFIN2VLRDESC'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRDESC'
    end
    object SQLNotaFiscalNOFIN2VLRFRETE: TFloatField
      FieldName = 'NOFIN2VLRFRETE'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRFRETE'
    end
    object SQLNotaFiscalNOFIN2VLRSEGURO: TFloatField
      FieldName = 'NOFIN2VLRSEGURO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSEGURO'
    end
    object SQLNotaFiscalNOFIN2VLROUTRASDESP: TFloatField
      FieldName = 'NOFIN2VLROUTRASDESP'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLROUTRASDESP'
    end
    object SQLNotaFiscalNOFIN2VLRSERVICO: TFloatField
      FieldName = 'NOFIN2VLRSERVICO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSERVICO'
    end
    object SQLNotaFiscalNOFIN2VLRISSQN: TFloatField
      FieldName = 'NOFIN2VLRISSQN'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRISSQN'
    end
    object SQLNotaFiscalNOFIN2VLRPRODUTO: TFloatField
      FieldName = 'NOFIN2VLRPRODUTO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRPRODUTO'
    end
    object SQLNotaFiscalNOFIN2VLRNOTA: TFloatField
      FieldName = 'NOFIN2VLRNOTA'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRNOTA'
    end
    object SQLNotaFiscalNOFICFRETEPORCONTA: TStringField
      FieldName = 'NOFICFRETEPORCONTA'
      Origin = 'DB.NOTAFISCAL.NOFICFRETEPORCONTA'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.NOTAFISCAL.TRANICOD'
    end
    object SQLNotaFiscalNOFIN3QUANT: TFloatField
      FieldName = 'NOFIN3QUANT'
      Origin = 'DB.NOTAFISCAL.NOFIN3QUANT'
    end
    object SQLNotaFiscalNOFIA15MARCA: TStringField
      FieldName = 'NOFIA15MARCA'
      Origin = 'DB.NOTAFISCAL.NOFIA15MARCA'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalNOFIN3PESBRUT: TFloatField
      FieldName = 'NOFIN3PESBRUT'
      Origin = 'DB.NOTAFISCAL.NOFIN3PESBRUT'
    end
    object SQLNotaFiscalNOFIN3PESLIQ: TFloatField
      FieldName = 'NOFIN3PESLIQ'
      Origin = 'DB.NOTAFISCAL.NOFIN3PESLIQ'
    end
    object SQLNotaFiscalNOFIA8PLACAVEIC: TStringField
      FieldName = 'NOFIA8PLACAVEIC'
      Origin = 'DB.NOTAFISCAL.NOFIA8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLNotaFiscalPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.NOTAFISCAL.PLRCICOD'
    end
    object SQLNotaFiscalPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.NOTAFISCAL.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTAFISCAL.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTAFISCAL.REGISTRO'
    end
    object SQLNotaFiscalNOFIN2VLRDESCPROM: TFloatField
      FieldName = 'NOFIN2VLRDESCPROM'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRDESCPROM'
    end
    object SQLNotaFiscalNOFIINROTALAO: TIntegerField
      FieldName = 'NOFIINROTALAO'
      Origin = 'DB.NOTAFISCAL.NOFIINROTALAO'
    end
    object SQLNotaFiscalPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.NOTAFISCAL.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.NOTAFISCAL.VENDICOD'
    end
    object SQLNotaFiscalPDVDA60OBS: TStringField
      FieldName = 'PDVDA60OBS'
      Origin = 'DB.NOTAFISCAL.PDVDA60OBS'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalNOFIA20ESPECIE: TStringField
      FieldName = 'NOFIA20ESPECIE'
      Origin = 'DB.NOTAFISCAL.NOFIA20ESPECIE'
      FixedChar = True
    end
    object SQLNotaFiscalNOFIA30COMPRADOR: TStringField
      FieldName = 'NOFIA30COMPRADOR'
      Origin = 'DB.NOTAFISCAL.NOFIA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalNOFIA30NROPEDCOMP: TStringField
      FieldName = 'NOFIA30NROPEDCOMP'
      Origin = 'DB.NOTAFISCAL.NOFIA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLNotaFiscalNOFIN2VLRICMSFRETE: TFloatField
      FieldName = 'NOFIN2VLRICMSFRETE'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRICMSFRETE'
    end
    object SQLNotaFiscalNOFIN2VLRSUBS: TFloatField
      FieldName = 'NOFIN2VLRSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSUBS'
    end
    object SQLNotaFiscalCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.NOTAFISCAL.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNOFIA13IDCONSIGNADA: TStringField
      FieldName = 'NOFIA13IDCONSIGNADA'
      Origin = 'DB.NOTAFISCAL.NOFIA13IDCONSIGNADA'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.NOTAFISCAL.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalCUPOA13IDCUPNEG: TStringField
      FieldName = 'CUPOA13IDCUPNEG'
      Origin = 'DB.NOTAFISCAL.CUPOA13IDCUPNEG'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNOFIDCANCEL: TDateTimeField
      FieldName = 'NOFIDCANCEL'
      Origin = 'DB.NOTAFISCAL.NOFIDCANCEL'
    end
    object SQLNotaFiscalPLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.NOTAFISCAL.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalPLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.NOTAFISCAL.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object SQLNotaFiscalUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.NOTAFISCAL.USUAICOD'
    end
    object SQLNotaFiscalUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.NOTAFISCAL.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLNotaFiscalROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.NOTAFISCAL.ROTAICOD'
    end
    object SQLNotaFiscalNOFIAOBSCORPONF: TStringField
      FieldName = 'NOFIAOBSCORPONF'
      Origin = 'DB.NOTAFISCAL.NOFIAOBSCORPONF'
      FixedChar = True
      Size = 200
    end
    object SQLNotaFiscalVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.NOTAFISCAL.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaFiscalNOFICEXPCONTABIL: TStringField
      FieldName = 'NOFICEXPCONTABIL'
      Origin = 'DB.NOTAFISCAL.NOFICEXPCONTABIL'
      FixedChar = True
      Size = 1
    end
    object SQLNotaFiscalTransportadoraLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraLookup'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA60RAZAOSOC'
      KeyFields = 'TRANICOD'
      Size = 60
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraCGCLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraCGCLookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA14CGC'
      KeyFields = 'TRANICOD'
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraEnderecoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraEnderecoLookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA60END'
      KeyFields = 'TRANICOD'
      Size = 60
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraCidadeLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraCidadeLookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA60CID'
      KeyFields = 'TRANICOD'
      Size = 60
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraEstadoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraEstadoLookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA2UF'
      KeyFields = 'TRANICOD'
      Size = 2
      Lookup = True
    end
    object SQLNotaFiscalTransportadoraIELookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TransportadoraIELookUp'
      LookupDataSet = SQLTransportadora
      LookupKeyFields = 'TRANICOD'
      LookupResultField = 'TRANA15IE'
      KeyFields = 'TRANICOD'
      Lookup = True
    end
    object SQLNotaFiscalNOFIDSAIDAENTRADA: TDateTimeField
      FieldName = 'NOFIDSAIDAENTRADA'
      Origin = 'DB.NOTAFISCAL.NOFIDSAIDAENTRADA'
    end
    object SQLNotaFiscalNOFIA255OBS: TMemoField
      FieldName = 'NOFIA255OBS'
      Origin = 'DB.NOTAFISCAL.NOFIA255OBS'
      BlobType = ftMemo
      Size = 1
    end
    object SQLNotaFiscalNOFICFINALIDADE: TStringField
      FieldName = 'NOFICFINALIDADE'
      Origin = 'DB.NOTAFISCAL.NOFICFINALIDADE'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLFinaliza: TDataSource
    DataSet = SQLFinaliza
    Left = 51
    Top = 412
  end
  object SQLConfigOrdem: TRxQuery
    Tag = 1
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONFIGORDEM ')
    Macros = <>
    Left = 23
    Top = 384
    object SQLConfigOrdemEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONFIGORDEM.EMPRICOD'
    end
    object SQLConfigOrdemOP_SAIDA: TIntegerField
      FieldName = 'OP_SAIDA'
      Origin = 'DB.CONFIGORDEM.OP_SAIDA'
    end
    object SQLConfigOrdemOP_ENTRADA: TIntegerField
      FieldName = 'OP_ENTRADA'
      Origin = 'DB.CONFIGORDEM.OP_ENTRADA'
    end
    object SQLConfigOrdemOP_EMITENOTA: TIntegerField
      FieldName = 'OP_EMITENOTA'
      Origin = 'DB.CONFIGORDEM.OP_EMITENOTA'
    end
  end
  object MenuRelatorio: TPopupMenu
    Left = 481
    Top = 1
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object MenuItem3: TMenuItem
      Caption = 'Ordens de Servi'#231'o em BRANCO'
      OnClick = OrdensdeServioemBRANCO1Click
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object MenuItem5: TMenuItem
      Caption = 'Relat'#243'rio de Ordens Listadas'
      OnClick = RelatoriodeOrdensListadas1Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Relat'#243'rio de Servi'#231'os x Mec'#226'nico'
      OnClick = RelatoriodeServiosPorMecanico1Click
    end
    object MenuItem7: TMenuItem
      Caption = 'Relat'#243'rio de Servi'#231'os x Execu'#231#227'o'
      OnClick = RelatoriodeServiosxExecuo1Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Relat'#243'rio de Servi'#231#245's x Tipo de Servi'#231'o'
      OnClick = MenuItem8Click
    end
    object MenuItem9: TMenuItem
      Caption = '-'
    end
    object MenuItem10: TMenuItem
      Caption = 'Relat'#243'rio de Pe'#231'as Utilizadas'
      OnClick = MenuItem10Click
    end
  end
  object SQLOrdItens: TQuery
    DatabaseName = 'DB'
    Filtered = True
    SQL.Strings = (
      'SELECT'
      'O.*,'
      'P.PRODA60DESCR,'
      'P.PRODA60REFER,'
      'P.PRODCSERVICO '
      'FROM'
      'ORD_MEC_ITENS O '
      'LEFT OUTER JOIN PRODUTO P ON O.PRODICOD = P.PRODICOD'
      'WHERE'
      'O.ORDID = :MFiltro'
      '')
    Left = 100
    Top = 340
    ParamData = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptUnknown
        Value = '102'
      end>
    object SQLOrdItensORDITENSID: TIntegerField
      FieldName = 'ORDITENSID'
      Origin = 'DB.ORD_MEC_ITENS.ORDITENSID'
    end
    object SQLOrdItensORDID: TIntegerField
      FieldName = 'ORDID'
      Origin = 'DB.ORD_MEC_ITENS.ORDID'
    end
    object SQLOrdItensGRUPO_SERVICO: TIntegerField
      FieldName = 'GRUPO_SERVICO'
      Origin = 'DB.ORD_MEC_ITENS.GRUPO_SERVICO'
    end
    object SQLOrdItensGARANTIA: TStringField
      FieldName = 'GARANTIA'
      Origin = 'DB.ORD_MEC_ITENS.GARANTIA'
      Size = 3
    end
    object SQLOrdItensPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.ORD_MEC_ITENS.PRODICOD'
    end
    object SQLOrdItensORITN3QUANT: TFloatField
      FieldName = 'ORITN3QUANT'
      Origin = 'DB.ORD_MEC_ITENS.ORITN3QUANT'
    end
    object SQLOrdItensORITN2VLRUNIT: TFloatField
      FieldName = 'ORITN2VLRUNIT'
      Origin = 'DB.ORD_MEC_ITENS.ORITN2VLRUNIT'
    end
    object SQLOrdItensORITN2PERCDESC: TFloatField
      FieldName = 'ORITN2PERCDESC'
      Origin = 'DB.ORD_MEC_ITENS.ORITN2PERCDESC'
    end
    object SQLOrdItensORITN3TOTVEND: TFloatField
      FieldName = 'ORITN3TOTVEND'
      Origin = 'DB.ORD_MEC_ITENS.ORITN3TOTVEND'
    end
    object SQLOrdItensORITA254OBS: TStringField
      FieldName = 'ORITA254OBS'
      Origin = 'DB.ORD_MEC_ITENS.ORITA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLOrdItensORMCTIPOSERVICOID: TIntegerField
      FieldName = 'ORMCTIPOSERVICOID'
      Origin = 'DB.ORD_MEC_ITENS.ORMCTIPOSERVICOID'
    end
    object SQLOrdItensIDMECANICO: TIntegerField
      FieldName = 'IDMECANICO'
      Origin = 'DB.ORD_MEC_ITENS.IDMECANICO'
    end
    object SQLOrdItensORITN2PERCCOMIS: TFloatField
      FieldName = 'ORITN2PERCCOMIS'
      Origin = 'DB.ORD_MEC_ITENS.ORITN2PERCCOMIS'
    end
    object SQLOrdItensORITN3TEMPO: TFloatField
      FieldName = 'ORITN3TEMPO'
      Origin = 'DB.ORD_MEC_ITENS.ORITN3TEMPO'
    end
    object SQLOrdItensPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOrdItensPRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLOrdItensPRODCSERVICO: TStringField
      FieldName = 'PRODCSERVICO'
      Origin = 'DB.PRODUTO.PRODCSERVICO'
      FixedChar = True
      Size = 1
    end
    object SQLOrdItensORITN2VLRDESC: TFloatField
      FieldName = 'ORITN2VLRDESC'
      Origin = 'DB.ORD_MEC_ITENS.ORITN2VLRDESC'
    end
  end
  object ACBrPosPrinter: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    CortaPapel = False
    ControlePorta = True
    Left = 517
    Top = 1
  end
end
