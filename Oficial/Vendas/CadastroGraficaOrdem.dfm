inherited FormCadastroGraficaOrdem: TFormCadastroGraficaOrdem
  Left = 578
  Top = 44
  Caption = 'Ordens de Serviço'
  ClientHeight = 713
  ClientWidth = 834
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel [0]
    Left = 40
    Top = 28
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
  inherited ScrollBoxFundo: TScrollBox
    Width = 834
    Height = 713
    inherited PanelCabecalho: TPanel
      Width = 832
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 832
        inherited Panel1: TPanel
          Width = 830
          inherited PanelNavigator: TPanel
            Width = 830
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 830
            end
          end
          inherited PanelLeft: TPanel
            Left = 373
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 832
      Height = 639
      inherited PanelBarra: TPanel
        Height = 639
        inherited Button1: TRxSpeedButton
          Left = 2
          Top = 17
        end
        inherited Button2: TRxSpeedButton
          Left = 2
          Top = 40
        end
        inherited Button3: TRxSpeedButton
          Left = 2
          Top = 64
          Caption = ''
        end
        object GroupBox2: TGroupBox
          Left = 2
          Top = 92
          Width = 127
          Height = 185
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
          object Label13: TLabel
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
          object Label14: TLabel
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
          object Shape6: TShape
            Left = 15
            Top = 144
            Width = 25
            Height = 21
            Brush.Color = clYellow
          end
          object Label44: TLabel
            Left = 49
            Top = 149
            Width = 61
            Height = 13
            Caption = 'Parcialmente'
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
        Width = 702
        Height = 639
        inherited Panel5: TPanel
          Width = 702
          Height = 639
          inherited PagePrincipal: TPageControl
            Top = 155
            Width = 702
            Height = 484
            ActivePage = TabSheetDadosPrincipais
            TabOrder = 2
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 83
                Width = 694
                Height = 220
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                ParentCtl3D = False
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Cliente'
                    Width = 345
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
                    FieldName = 'ORDNUM'
                    Title.Alignment = taCenter
                    Title.Caption = 'Nº Ord'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Title.Alignment = taCenter
                    Width = 87
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRAZOENTR'
                    Title.Alignment = taCenter
                    Title.Caption = 'Prazo Entrega'
                    Width = 88
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VAL'
                    Title.Caption = 'R$ Valor'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ENTREGADO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Data Entrega'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDICOD'
                    Title.Caption = 'Vend.'
                    Width = 34
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 694
                Height = 83
                inherited PanelBetween: TPanel
                  Width = 300
                  Height = 41
                  inherited AdvPanel1: TAdvPanel
                    Width = 300
                    Height = 41
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 300
                  Height = 41
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 300
                    Height = 41
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  Height = 41
                  inherited AdvPanelIndice: TAdvPanel
                    Height = 41
                    FullHeight = 0
                  end
                end
                object PanelPesquisa: TPanel
                  Left = 0
                  Top = 41
                  Width = 694
                  Height = 42
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 12572888
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
                  object ComboBuscaCliente: TRxDBLookupCombo
                    Left = 3
                    Top = 12
                    Width = 310
                    Height = 21
                    Hint = 
                      'Esta é uma pesquisa avançada, os dados inclusos na pesquisa acim' +
                      'a não '#13#10'serão considerados na pesquisa atual...'
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
                    Left = 320
                    Top = 0
                    Width = 241
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
              inherited MemoDetalhes: TMemo
                Left = 1
                Top = 183
              end
              object TPanel
                Left = 0
                Top = 303
                Width = 694
                Height = 155
                Align = alBottom
                BevelOuter = bvNone
                Enabled = False
                ParentColor = True
                TabOrder = 3
                object Label8: TLabel
                  Left = 430
                  Top = 41
                  Width = 20
                  Height = 13
                  Caption = 'Qtd'
                  Color = 12572888
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 430
                  Top = 3
                  Width = 48
                  Height = 13
                  Caption = 'Formato'
                  Color = 12572888
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 2
                  Top = 41
                  Width = 136
                  Height = 13
                  Caption = 'Identificação do Serviço'
                  Color = 12572888
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 2
                  Top = 4
                  Width = 106
                  Height = 13
                  Caption = 'Descrição Principal'
                  Color = 12572888
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label42: TLabel
                  Left = 512
                  Top = 42
                  Width = 44
                  Height = 13
                  Caption = 'Largura'
                  Color = 12572888
                  FocusControl = DBEdit28
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object Label43: TLabel
                  Left = 593
                  Top = 41
                  Width = 35
                  Height = 13
                  Caption = 'Altura'
                  Color = 12572888
                  FocusControl = DBEdit29
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                end
                object DBEdit2: TDBEdit
                  Left = 430
                  Top = 57
                  Width = 78
                  Height = 21
                  BevelInner = bvNone
                  DataField = 'QUANTTOTAL'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit7: TDBEdit
                  Left = 430
                  Top = 19
                  Width = 240
                  Height = 21
                  BevelInner = bvNone
                  DataField = 'FORMATO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit16: TDBEdit
                  Left = 2
                  Top = 57
                  Width = 419
                  Height = 21
                  BevelInner = bvNone
                  DataField = 'SERVICO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object RxDBLookupCombo4: TRxDBLookupCombo
                  Left = 2
                  Top = 20
                  Width = 422
                  Height = 21
                  DropDownCount = 8
                  Ctl3D = True
                  DataField = 'ProdutoLookUp'
                  DataSource = DSTemplate
                  DisplayEmpty = 'Selecione um Produto'
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
                object DBMemo1: TDBMemo
                  Left = -1
                  Top = 108
                  Width = 670
                  Height = 45
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  BorderStyle = bsNone
                  DataField = 'OBS'
                  DataSource = DSTemplate
                  ParentColor = True
                  ReadOnly = True
                  TabOrder = 4
                end
                object DBEdit28: TDBEdit
                  Left = 511
                  Top = 57
                  Width = 78
                  Height = 21
                  DataField = 'LARGURA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object DBEdit29: TDBEdit
                  Left = 592
                  Top = 57
                  Width = 78
                  Height = 21
                  DataField = 'ALTURA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
                object DBCheckBox7: TDBCheckBox
                  Left = 3
                  Top = 83
                  Width = 51
                  Height = 15
                  Caption = 'Solto'
                  DataField = 'SOLTO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 7
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object DBCheckBox8: TDBCheckBox
                  Left = 65
                  Top = 83
                  Width = 59
                  Height = 15
                  Caption = 'Colado'
                  DataField = 'COLA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 8
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object DBCheckBox9: TDBCheckBox
                  Left = 131
                  Top = 83
                  Width = 71
                  Height = 15
                  Caption = 'Picotado'
                  DataField = 'PICOTE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 9
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object DBCheckBox10: TDBCheckBox
                  Left = 205
                  Top = 83
                  Width = 64
                  Height = 15
                  Caption = 'Gramp.'
                  DataField = 'GRAMPO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 10
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object DBCheckBox11: TDBCheckBox
                  Left = 272
                  Top = 83
                  Width = 60
                  Height = 15
                  Caption = 'Furado'
                  DataField = 'FURADO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 11
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object DBCheckBox12: TDBCheckBox
                  Left = 338
                  Top = 83
                  Width = 71
                  Height = 15
                  Caption = 'Plastific.'
                  DataField = 'PALTIFICADO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 12
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object DBCheckBox13: TDBCheckBox
                  Left = 412
                  Top = 83
                  Width = 76
                  Height = 15
                  Caption = 'Vernizado'
                  DataField = 'VERNIZADO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 13
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object DBCheckBox16: TDBCheckBox
                  Left = 498
                  Top = 83
                  Width = 80
                  Height = 15
                  Caption = 'Numerado'
                  DataField = 'NUMERADO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 14
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object DBCheckBox17: TDBCheckBox
                  Left = 601
                  Top = 83
                  Width = 68
                  Height = 15
                  Caption = 'Carbono'
                  DataField = 'CARBONO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 15
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label39: TLabel
                Left = 3
                Top = 360
                Width = 173
                Height = 13
                Caption = 'Observações Complementares'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object GroupBox1: TGroupBox
                Left = 0
                Top = 0
                Width = 694
                Height = 357
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label4: TLabel
                  Left = 11
                  Top = 48
                  Width = 69
                  Height = 13
                  Caption = 'Cód.Produto'
                  Color = 12572888
                  FocusControl = edtProdicod
                  ParentColor = False
                end
                object Label5: TLabel
                  Left = 102
                  Top = 47
                  Width = 106
                  Height = 13
                  Caption = 'Descrição Principal'
                  Color = 12572888
                  ParentColor = False
                end
                object btnProdutos: TSpeedButton
                  Left = 635
                  Top = 63
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
                  OnClick = btnProdutosClick
                end
                object Label20: TLabel
                  Left = 11
                  Top = 84
                  Width = 136
                  Height = 13
                  Caption = 'Identificação do Serviço'
                  Color = 12572888
                  ParentColor = False
                end
                object Label31: TLabel
                  Left = 545
                  Top = 85
                  Width = 70
                  Height = 13
                  Caption = '% Comissão'
                  Color = 12572888
                  ParentColor = False
                end
                object Label16: TLabel
                  Left = 11
                  Top = 9
                  Width = 79
                  Height = 13
                  Caption = 'Executado Em'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object btnExecutarem: TSpeedButton
                  Left = 635
                  Top = 24
                  Width = 21
                  Height = 21
                  Hint = 'Acessa Executado Em'
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
                  OnClick = btnExecutaremClick
                end
                object Label51: TLabel
                  Left = 425
                  Top = 85
                  Width = 86
                  Height = 13
                  Caption = 'Comissiona Por'
                  Color = 12572888
                  ParentColor = False
                end
                object edtProdicod: TDBEdit
                  Left = 11
                  Top = 63
                  Width = 85
                  Height = 21
                  DataField = 'PRODICOD'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  OnKeyDown = edtProdicodKeyDown
                end
                object DBEdit8: TDBEdit
                  Left = 11
                  Top = 100
                  Width = 406
                  Height = 21
                  DataField = 'SERVICO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object DBEdit25: TDBEdit
                  Left = 544
                  Top = 100
                  Width = 109
                  Height = 21
                  DataField = 'COMISSAO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
                object RxDBLookupCombo1: TRxDBLookupCombo
                  Left = 100
                  Top = 63
                  Width = 536
                  Height = 21
                  DropDownCount = 8
                  Ctl3D = True
                  DataField = 'PRODICOD'
                  DataSource = DSTemplate
                  DisplayEmpty = 'Selecione um Produto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'PRODICOD'
                  LookupDisplay = 'PRODA60DESCR'
                  LookupSource = DSSQLProduto
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                  OnKeyDown = edtProdicodKeyDown
                end
                object DBEdit5: TDBEdit
                  Left = 11
                  Top = 24
                  Width = 86
                  Height = 21
                  Ctl3D = True
                  DataField = 'TIPOSERVICO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  OnKeyDown = ComboExecutarEmKeyDown
                end
                object RxDBLookupCombo2: TRxDBLookupCombo
                  Left = 100
                  Top = 24
                  Width = 535
                  Height = 21
                  DropDownCount = 8
                  Ctl3D = True
                  DataField = 'TIPOSERVICO'
                  DataSource = DSTemplate
                  DisplayEmpty = 'Selecione um Tipo de Serviço'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'ORDEXEID'
                  LookupDisplay = 'ORDA25EXECUTAEM'
                  LookupSource = DSSQLExecutarem
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                  OnKeyDown = ComboExecutarEmKeyDown
                end
                object PageControl2: TPageControl
                  Left = 8
                  Top = 127
                  Width = 647
                  Height = 180
                  ActivePage = TabSheet1
                  TabOrder = 7
                  TabStop = False
                  object TabSheet1: TTabSheet
                    Caption = 'Impressões Gerais'
                    object Label10: TLabel
                      Left = 182
                      Top = 48
                      Width = 31
                      Height = 13
                      Caption = 'Papel'
                      Color = 12572888
                      FocusControl = DBEdit11
                      ParentColor = False
                    end
                    object Label18: TLabel
                      Left = 360
                      Top = 7
                      Width = 96
                      Height = 13
                      Caption = 'Cores Impressão'
                      Color = 12572888
                      FocusControl = DBEdit15
                      ParentColor = False
                    end
                    object Label21: TLabel
                      Left = 3
                      Top = 7
                      Width = 50
                      Height = 13
                      Caption = 'Nº Inicial'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object Label22: TLabel
                      Left = 95
                      Top = 7
                      Width = 42
                      Height = 13
                      Caption = 'Nº Final'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object Label23: TLabel
                      Left = 182
                      Top = 7
                      Width = 39
                      Height = 13
                      Caption = 'Nº Vias'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object Label26: TLabel
                      Left = 271
                      Top = 7
                      Width = 65
                      Height = 13
                      Caption = 'Quantidade'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object Label29: TLabel
                      Left = 3
                      Top = 48
                      Width = 48
                      Height = 13
                      Caption = 'Formato'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object Label37: TLabel
                      Left = 3
                      Top = 86
                      Width = 58
                      Height = 13
                      Caption = 'Tipo Impr.'
                      Color = 12572888
                      FocusControl = DBEdit11
                      ParentColor = False
                    end
                    object Label38: TLabel
                      Left = 182
                      Top = 86
                      Width = 44
                      Height = 13
                      Caption = 'Largura'
                      Color = 12572888
                      FocusControl = DBEdit21
                      ParentColor = False
                    end
                    object Label40: TLabel
                      Left = 271
                      Top = 86
                      Width = 35
                      Height = 13
                      Caption = 'Altura'
                      Color = 12572888
                      FocusControl = DBEdit26
                      ParentColor = False
                    end
                    object Label41: TLabel
                      Left = 360
                      Top = 86
                      Width = 63
                      Height = 13
                      Caption = 'Qtd. Talões'
                      Color = 12572888
                      FocusControl = DBEdit27
                      ParentColor = False
                    end
                    object DBEdit11: TDBEdit
                      Left = 182
                      Top = 63
                      Width = 451
                      Height = 21
                      DataField = 'CORDOPAPEL'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 6
                    end
                    object DBEdit15: TDBEdit
                      Left = 360
                      Top = 23
                      Width = 273
                      Height = 21
                      DataField = 'COREIMP'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 4
                    end
                    object CheckSolto: TDBCheckBox
                      Left = 3
                      Top = 131
                      Width = 51
                      Height = 15
                      Caption = 'Solto'
                      DataField = 'SOLTO'
                      DataSource = DSTemplate
                      TabOrder = 11
                      ValueChecked = 'T'
                      ValueUnchecked = 'F'
                    end
                    object DBCheckBox1: TDBCheckBox
                      Left = 56
                      Top = 131
                      Width = 59
                      Height = 15
                      Caption = 'Colado'
                      DataField = 'COLA'
                      DataSource = DSTemplate
                      TabOrder = 12
                      ValueChecked = 'T'
                      ValueUnchecked = 'F'
                    end
                    object DBCheckBox2: TDBCheckBox
                      Left = 120
                      Top = 131
                      Width = 71
                      Height = 15
                      Caption = 'Picotado'
                      DataField = 'PICOTE'
                      DataSource = DSTemplate
                      TabOrder = 13
                      ValueChecked = 'T'
                      ValueUnchecked = 'F'
                    end
                    object DBCheckBox3: TDBCheckBox
                      Left = 195
                      Top = 131
                      Width = 64
                      Height = 15
                      Caption = 'Gramp.'
                      DataField = 'GRAMPO'
                      DataSource = DSTemplate
                      TabOrder = 14
                      ValueChecked = 'T'
                      ValueUnchecked = 'F'
                    end
                    object DBCheckBox4: TDBCheckBox
                      Left = 263
                      Top = 131
                      Width = 60
                      Height = 15
                      Caption = 'Furado'
                      DataField = 'FURADO'
                      DataSource = DSTemplate
                      TabOrder = 15
                      ValueChecked = 'T'
                      ValueUnchecked = 'F'
                    end
                    object DBCheckBox5: TDBCheckBox
                      Left = 328
                      Top = 131
                      Width = 71
                      Height = 15
                      Caption = 'Plastific.'
                      DataField = 'PALTIFICADO'
                      DataSource = DSTemplate
                      TabOrder = 16
                      ValueChecked = 'T'
                      ValueUnchecked = 'F'
                    end
                    object DBCheckBox6: TDBCheckBox
                      Left = 400
                      Top = 131
                      Width = 76
                      Height = 15
                      Caption = 'Vernizado'
                      DataField = 'VERNIZADO'
                      DataSource = DSTemplate
                      TabOrder = 17
                      ValueChecked = 'T'
                      ValueUnchecked = 'F'
                    end
                    object DBEdit9: TDBEdit
                      Left = 3
                      Top = 23
                      Width = 87
                      Height = 21
                      DataField = 'NUMDE'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                    end
                    object DBEdit10: TDBEdit
                      Left = 94
                      Top = 23
                      Width = 85
                      Height = 21
                      DataField = 'NUMA'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      OnExit = DBEdit10Exit
                    end
                    object DBEdit12: TDBEdit
                      Left = 182
                      Top = 23
                      Width = 84
                      Height = 21
                      DataField = 'VIAS'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                    end
                    object DBEdit18: TDBEdit
                      Left = 271
                      Top = 23
                      Width = 85
                      Height = 21
                      DataField = 'QUANTTOTAL'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 3
                    end
                    object DBEdit23: TDBEdit
                      Left = 3
                      Top = 63
                      Width = 176
                      Height = 21
                      DataField = 'FORMATO'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 5
                    end
                    object DBCheckBox14: TDBCheckBox
                      Left = 480
                      Top = 131
                      Width = 80
                      Height = 15
                      Caption = 'Numerado'
                      DataField = 'NUMERADO'
                      DataSource = DSTemplate
                      TabOrder = 18
                      ValueChecked = 'T'
                      ValueUnchecked = 'F'
                    end
                    object DBCheckBox15: TDBCheckBox
                      Left = 565
                      Top = 131
                      Width = 68
                      Height = 15
                      Caption = 'Carbono'
                      DataField = 'CARBONO'
                      DataSource = DSTemplate
                      TabOrder = 19
                      ValueChecked = 'T'
                      ValueUnchecked = 'F'
                    end
                    object ComboTipoImpr: TRxDBComboBox
                      Left = 3
                      Top = 100
                      Width = 176
                      Height = 21
                      Style = csDropDownList
                      DataField = 'TIPOSERVIMP'
                      DataSource = DSTemplate
                      EnableValues = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ItemHeight = 13
                      Items.Strings = (
                        'Formulários'
                        'OffSet'
                        'Tipografia')
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = False
                      TabOrder = 7
                      Values.Strings = (
                        'F'
                        'O'
                        'T')
                    end
                    object DBEdit21: TDBEdit
                      Left = 182
                      Top = 100
                      Width = 84
                      Height = 21
                      DataField = 'LARGURA'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 8
                    end
                    object DBEdit26: TDBEdit
                      Left = 271
                      Top = 100
                      Width = 84
                      Height = 21
                      DataField = 'ALTURA'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 9
                    end
                    object DBEdit27: TDBEdit
                      Left = 360
                      Top = 100
                      Width = 84
                      Height = 21
                      DataField = 'QUANTTALOES'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 10
                    end
                  end
                  object TabSheet3: TTabSheet
                    Caption = 'Cadernos Personalizados'
                    ImageIndex = 1
                    object Label24: TLabel
                      Left = 3
                      Top = 13
                      Width = 65
                      Height = 13
                      Caption = 'Quantidade'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object Label25: TLabel
                      Left = 167
                      Top = 11
                      Width = 48
                      Height = 13
                      Caption = 'Formato'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object Label27: TLabel
                      Left = 3
                      Top = 48
                      Width = 66
                      Height = 13
                      Caption = 'Dados Capa'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object Label35: TLabel
                      Left = 3
                      Top = 83
                      Width = 68
                      Height = 13
                      Caption = 'Dados Miolo'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object Label36: TLabel
                      Left = 3
                      Top = 119
                      Width = 72
                      Height = 13
                      Caption = 'Acabamento'
                      Color = 12572888
                      FocusControl = DBEdit9
                      ParentColor = False
                    end
                    object DBEdit13: TDBEdit
                      Left = 77
                      Top = 7
                      Width = 85
                      Height = 21
                      DataField = 'QUANTTOTAL'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                    end
                    object DBEdit14: TDBEdit
                      Left = 219
                      Top = 7
                      Width = 176
                      Height = 21
                      DataField = 'FORMATO'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                    end
                    object DBEdit17: TDBEdit
                      Left = 77
                      Top = 43
                      Width = 556
                      Height = 21
                      DataField = 'CAPA'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                    end
                    object DBEdit19: TDBEdit
                      Left = 77
                      Top = 79
                      Width = 556
                      Height = 21
                      DataField = 'MIOLO'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 3
                    end
                    object DBEdit20: TDBEdit
                      Left = 77
                      Top = 116
                      Width = 556
                      Height = 21
                      DataField = 'ACABAMENTO'
                      DataSource = DSTemplate
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 4
                    end
                  end
                end
                object Panel4: TPanel
                  Left = 2
                  Top = 309
                  Width = 690
                  Height = 46
                  Align = alBottom
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 8
                  object Label30: TLabel
                    Left = 501
                    Top = 10
                    Width = 48
                    Height = 26
                    Caption = 'R$ Valor'#13#10' ====>'
                    Color = 12572888
                    FocusControl = DBEdit9
                    ParentColor = False
                  end
                  object Label7: TLabel
                    Left = 7
                    Top = 2
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
                  object DBText1: TDBText
                    Left = 140
                    Top = 0
                    Width = 65
                    Height = 17
                    DataField = 'PARCELASVARIAVEIS'
                    DataSource = DSTemplate
                  end
                  object DBEdit24: TDBEdit
                    Left = 555
                    Top = 10
                    Width = 99
                    Height = 27
                    DataField = 'VAL'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clRed
                    Font.Height = -16
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                  end
                  object DBEdit4: TDBEdit
                    Left = 7
                    Top = 16
                    Width = 58
                    Height = 21
                    Ctl3D = True
                    DataField = 'PARCELAS'
                    DataSource = DSTemplate
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    OnKeyDown = ComboExecutarEmKeyDown
                  end
                  object RxDBLookupCombo3: TRxDBLookupCombo
                    Left = 67
                    Top = 16
                    Width = 422
                    Height = 21
                    DropDownCount = 8
                    Ctl3D = True
                    DataField = 'PlanoRecebimentoLookUp'
                    DataSource = DSTemplate
                    DisplayEmpty = 'Selecione um Tipo de Serviço'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                  end
                end
                object RxDBComboBox1: TRxDBComboBox
                  Left = 421
                  Top = 99
                  Width = 108
                  Height = 21
                  Style = csDropDownList
                  Ctl3D = False
                  DataField = 'COMISSIONAPOR'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'Percentual'
                    'Valor')
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 5
                  TabStop = False
                  Values.Strings = (
                    'P'
                    'V')
                end
              end
              object DBMemo2: TDBMemo
                Left = 0
                Top = 376
                Width = 589
                Height = 51
                BevelInner = bvNone
                Ctl3D = False
                DataField = 'OBS'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 1
              end
              object BitBtn3: TBitBtn
                Left = 594
                Top = 375
                Width = 64
                Height = 52
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = OrdemdeServioAtual1Click
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF999697BDBBBC
                  9D9A9A898687FF00FFFF00FF979596C6C6C6D0CFCFAFACAC989596FF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF999697B7
                  B5B6F0EFEFF4F3F3AAA7A79D9A9A4241424644456E6C6D999797BCBBBBDAD9D9
                  E0E0E0C9C7C7A3A0A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9896
                  97A9A5A6E3E2E2FFFEFEFCFBFBEFEEEEA7A5A59E9C9C3332341212131C1C1D2A
                  2A2C4745476D6A6C9A9898C5C4C4E2E1E1D4D3D3959192FF00FFFF00FFFF00FF
                  FF00FF9A9899D8D5D5FCFBFBFBFAFAF8F7F7FBFAFAE7E5E6A3A0A0A3A0A0807F
                  805453543332341E1E1F1616171A1A1C29292B454445736F70918F8FFF00FFFF
                  00FFFF00FF8E8A8BC4C1C1F6F4F4FAF8F8F4F3F3F4F3F3E3E2E2B8B7B7989697
                  8986878C8A8A9A9798A5A1A39F9D9D878686605F603D3C3D2222231415162B2A
                  2C8A8788FF00FFFF00FFFF00FF8E8A8BEBEBEBF0F0F0EDEBEBD9D8D8B0ADAD96
                  9293A6A4A4C7C6C6A4A1A1928F8F8B88898884868B8989969293A19F9EA19F9F
                  918F906A696A5151528B8989FF00FFFF00FFFF00FF8E8A8BDEDDDDD0CFCFA7A5
                  A5939091A7A5A5CAC9CAD5D7D5DCDADAE1E0E0CCCACABAB7B7A7A5A59A97988F
                  8B8C8A8788898687918E8E9D9999A3A0A0918F8FFF00FFFF00FFFF00FF8E8A8B
                  9E9C9D939191A9A7A7C7C7C7D1D3D3CECECEC9C9C9E6E5E5F6F4F4F3F3F3EDEB
                  EBE0DEDECFCECEBFBDBDAFACACA19F9F9592928C8A8A8A8788868283FF00FFFF
                  00FFFF00FF8E8A8BAAA7A9C9C7C7CFCFCFCBCBCBCACACAC6C6C6DADADAF4F3F3
                  B5B2B4B6AAB4C4C1C2D8D7D7E1E1E1E2E2E2D9D9D9CECECEC1C0C0B4B2B2AAA7
                  A7928F90FF00FFFF00FFFF00FF8E8A8BCACACACCCCCCCACACACACACAC7C7C7D7
                  D7D7F4F3F3AFAAAC999E9866B06A9EA39D9995979C9A9AAAA9A9BBBABACCCBCB
                  D1D1D1D1D1D1CFCFCF9A9999FF00FFFF00FFFF00FFFF00FFADABACD0D0D0CCCE
                  CECECECEDEDEDEE3E2E2A4A1A1ABA9AAEEEEEDC7EDC9E5E9E5E0DDDEF8AF9AB0
                  ADAF9F9D9D9591929A9798ABA9A9ABA9AAA39FA0FF00FFFF00FFFF00FFFF00FF
                  FF00FFA19FA0BBBABACAC9C9B6B4B4999797BDBBBBF4F3F3F4F3F3F4EEF3EAE7
                  E7E5E3E3E2E2E2E1E1E1D9D9D9CECECEBFBFBF9592938F8B8CFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A8788A9A7A7D1D1D1BFBFBF989999
                  BABABAD3D1D1DEDDDDE1E0E0DEDEDEDCDCDCDDDDDDD7D7D7B5B5B5A7A4A5FF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9D9A9CF3F4F4F4
                  F3F2D9D5D4AAA7A7A7A9A9B4B7B8C7CBCCC9CCCCCCCECECCCCCCB6B5B6989697
                  A7A4A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFE9CECCFFE3D9FFDDCFFED5C7F8D3C6F3D1C6EDD1CAE6D4CFDED8D5D0
                  D0D0B8B7B8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFDDB4B0FFE0D3FFD8C9FFCFC0FFC7B5FFC0AAFFBA
                  A4FFB79FFCB099E5C5C1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDEB5B0FFE5D8FFD8C9FFCFC0
                  FFC9B7FEC1ADFEBBA5FFB49CF7A691FF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE6BFB8FF
                  E5D8FFD8C9FFCFC0FFC9B7FEC1ADFEBBA5FFB59DEBA08FFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFE1BDB8FFE2D5FFD8C9FFCFC0FFC9B7FEC1ADFEBBA5FFB59DF8AF9AFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFE1BDB8FFE0D3FFD8C9FFCFC0FFC9B7FEC1ADFFBB
                  A5F8AF9AF8AF9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0BAB5FFEDE2FFE0D3FFD8C9FFCFC0
                  FEC9B7FEC2ADFFBDA6F8AF9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE1BDB8FFF0E5FF
                  E5D8FFDECEFFD5C5FFCEBBFFC7B2EDAB9CF8AF9AFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9F
                  9DE1BDB8E0B7B2E0B5ADE0B1A9E0ACA5E0AAA0DDA39AF8AF9AFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                Layout = blGlyphTop
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 151
            Width = 702
            Height = 4
            TabOrder = 1
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 702
            Height = 151
            object Label1: TLabel
              Left = 6
              Top = 2
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
              Left = 103
              Top = 2
              Width = 66
              Height = 13
              Caption = 'Data / Hora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnVendedor: TSpeedButton
              Left = 405
              Top = 121
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
              OnClick = btnVendedorClick
            end
            object Label3: TLabel
              Left = 6
              Top = 107
              Width = 54
              Height = 13
              Caption = 'Vendedor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnCliente: TSpeedButton
              Left = 405
              Top = 56
              Width = 23
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
              Top = 43
              Width = 39
              Height = 13
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 321
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
            object Label6: TLabel
              Left = 214
              Top = 2
              Width = 79
              Height = 13
              Caption = 'Prazo Entrega'
              Color = 12572888
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label28: TLabel
              Left = 435
              Top = 108
              Width = 76
              Height = 13
              Caption = 'Local Entrega'
              Color = 12572888
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label45: TLabel
              Left = 432
              Top = 3
              Width = 160
              Height = 13
              Caption = 'Entrega em Multiplas Etapas'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText2: TDBText
              Left = 39
              Top = 79
              Width = 109
              Height = 14
              DataField = 'ClienteCNPJ'
              DataSource = DSTemplate
            end
            object DBText3: TDBText
              Left = 39
              Top = 92
              Width = 386
              Height = 13
              DataField = 'ClienteEndereco'
              DataSource = DSTemplate
            end
            object DBText4: TDBText
              Left = 190
              Top = 79
              Width = 237
              Height = 13
              DataField = 'ClienteCidade'
              DataSource = DSTemplate
            end
            object Label48: TLabel
              Left = 6
              Top = 79
              Width = 29
              Height = 13
              Caption = 'CNPJ:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label49: TLabel
              Left = 151
              Top = 79
              Width = 37
              Height = 13
              Caption = 'Cidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label50: TLabel
              Left = 6
              Top = 92
              Width = 26
              Height = 13
              Caption = 'End.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 18
              Width = 95
              Height = 24
              Color = 12572888
              DataField = 'ORDNUM'
              DataSource = DSTemplate
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 6
              Top = 122
              Width = 66
              Height = 21
              Ctl3D = True
              DataField = 'VENDICOD'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              OnKeyDown = DBEdit3KeyDown
            end
            object ComboStatus: TRxDBComboBox
              Left = 321
              Top = 17
              Width = 108
              Height = 24
              Style = csDropDownList
              Ctl3D = False
              DataField = 'STATUS'
              DataSource = DSTemplate
              EnableValues = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ItemHeight = 16
              Items.Strings = (
                'Aberta'
                'Cancelada'
                'Entregue'
                'Finalizada'
                'Pronta'
                'Parcialmente')
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              TabStop = False
              Values.Strings = (
                'A'
                'C'
                'E'
                'F'
                'P'
                'R')
            end
            object DBEdit22: TDBEdit
              Left = 434
              Top = 122
              Width = 226
              Height = 21
              DataField = 'LOCALENTR'
              DataSource = DSTemplate
              TabOrder = 7
            end
            object ComboCliente: TRxDBLookupCombo
              Left = 6
              Top = 57
              Width = 399
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
              TabOrder = 4
              OnKeyDown = ComboClienteKeyDown
            end
            object RxDBLookupComboVendedor: TRxDBLookupCombo
              Left = 76
              Top = 122
              Width = 329
              Height = 21
              DropDownCount = 8
              Ctl3D = True
              DataField = 'VENDICOD'
              DataSource = DSTemplate
              DisplayEmpty = 'Selecione um Vendedor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'VENDICOD'
              LookupDisplay = 'VENDA60NOME'
              LookupSource = DSSQLVendedor
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              OnKeyDown = DBEdit3KeyDown
            end
            object DBDateEdit1: TDBDateEdit
              Left = 103
              Top = 18
              Width = 107
              Height = 24
              DataField = 'DATA'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 1
            end
            object DBDateEdit2: TDBDateEdit
              Left = 212
              Top = 18
              Width = 107
              Height = 24
              DataField = 'PRAZOENTR'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              NumGlyphs = 2
              ParentFont = False
              TabOrder = 2
              OnExit = DBDateEdit2Exit
            end
            object DBGrid1: TDBGrid
              Left = 432
              Top = 18
              Width = 229
              Height = 86
              TabStop = False
              Ctl3D = False
              DataSource = DSSQLFinaliza
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              PopupMenu = PopEntrega
              TabOrder = 8
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DATA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Data'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOTAFISCAL'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nº NF'
                  Width = 69
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTIDADE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Quant.'
                  Width = 71
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object PnlEntrega: TPanel [2]
    Left = 276
    Top = 76
    Width = 281
    Height = 193
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 14594104
    TabOrder = 1
    Visible = False
    OnExit = PnlEntregaExit
    object Label46: TLabel
      Left = 26
      Top = 49
      Width = 27
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 26
      Top = 97
      Width = 74
      Height = 13
      Caption = 'Qtd Entregue'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 277
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
    object DBDateEdit3: TDBDateEdit
      Left = 26
      Top = 67
      Width = 145
      Height = 28
      DataField = 'ENTREGADO'
      DataSource = DSTemplate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnChange = DBDateEdit3Change
    end
    object BitBtn1: TBitBtn
      Left = 183
      Top = 106
      Width = 80
      Height = 40
      TabOrder = 3
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
      Left = 183
      Top = 62
      Width = 80
      Height = 40
      TabOrder = 4
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
    object DBEditQTDEntregue: TDBEdit
      Left = 26
      Top = 115
      Width = 145
      Height = 25
      DataField = 'QUANTIDADE'
      DataSource = DSSQLFinaliza
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object LabelvlrCobrar: TCurrencyEdit
      Left = 22
      Top = 152
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
      TabOrder = 5
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object AlterarStatusparaPRODUZIDOa1: TMenuItem
      Caption = 'Alterar Status para PRODUZIDO(a)'
      ShortCut = 16457
      OnClick = AlterarStatusparaPRODUZIDOa1Click
    end
    object InformarEntregadoServio1: TMenuItem
      Caption = 'Informar Data de &Entrega do Serviço'
      ShortCut = 16453
      OnClick = InformarEntregadoServio1Click
    end
    object FinalizarOrdemdeServio1: TMenuItem
      Caption = '&Finalizar Ordem de Serviço'
      ShortCut = 16454
      OnClick = FinalizarOrdemdeServio1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CancelarOrdemdeServioAtual1: TMenuItem
      Caption = '&Cancelar Ordem de Serviço Atual'
      OnClick = CancelarOrdemdeServioAtual1Click
    end
    object ReabirOrdemdeServioCancelada1: TMenuItem
      Caption = '&Alterar STATUS da Ordem Atual Para ABERTO'
      OnClick = ReabirOrdemdeServioCancelada1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object GerarNotaFiscal1: TMenuItem
      Caption = 'Gerar &Nota Fiscal Eletronica'
      OnClick = GerarNotaFiscal1Click
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object OrdemdeServioAtual1: TMenuItem
      Caption = '&Ordem de Serviço Atual'
      ShortCut = 16464
      OnClick = OrdemdeServioAtual1Click
    end
    object OrdensdeServioemSequencia1: TMenuItem
      Caption = 'Ordens de Serviço em Sequência'
      OnClick = OrdensdeServioemSequencia1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object RelatriodeOrdensListadas1: TMenuItem
      Caption = 'Relatorio de Ordens Listadas'
      OnClick = RelatriodeOrdensListadas1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    AfterCancel = SQLTemplateAfterCancel
    SQL.Strings = (
      'Select * From ORDENSGRAFICA  Where (%MFiltro)'
      '')
    object SQLTemplateORDNUM: TIntegerField
      Tag = 1
      DisplayLabel = 'N.Ordem'
      FieldName = 'ORDNUM'
      Origin = 'DB.ORDENSGRAFICA.ORDNUM'
      Required = True
    end
    object SQLTemplateDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'DB.ORDENSGRAFICA.DATA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object SQLTemplateVENDICOD: TIntegerField
      DisplayLabel = 'Cod.Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.ORDENSGRAFICA.VENDICOD'
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
    object SQLTemplatePRAZOENTR: TDateTimeField
      DisplayLabel = 'Dt.Entrega'
      FieldName = 'PRAZOENTR'
      Origin = 'DB.ORDENSGRAFICA.PRAZOENTR'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '99/99/9999'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.ORDENSGRAFICA.CLIEA13ID'
      OnChange = SQLTemplateCLIEA13IDChange
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'Cod.Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.ORDENSGRAFICA.PRODICOD'
    end
    object SQLTemplateSERVICO: TStringField
      FieldName = 'SERVICO'
      Origin = 'DB.ORDENSGRAFICA.SERVICO'
      Size = 100
    end
    object SQLTemplateNUMDE: TIntegerField
      FieldName = 'NUMDE'
      Origin = 'DB.ORDENSGRAFICA.NUMDE'
    end
    object SQLTemplateNUMA: TIntegerField
      FieldName = 'NUMA'
      Origin = 'DB.ORDENSGRAFICA.NUMA'
    end
    object SQLTemplateCOREIMP: TStringField
      FieldName = 'COREIMP'
      Origin = 'DB.ORDENSGRAFICA.COREIMP'
      Size = 40
    end
    object SQLTemplateNVIAS: TIntegerField
      FieldName = 'NVIAS'
      Origin = 'DB.ORDENSGRAFICA.NVIAS'
    end
    object SQLTemplateOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'DB.ORDENSGRAFICA.OBS'
      BlobType = ftMemo
      Size = 1
    end
    object SQLTemplateLARGURA: TFloatField
      FieldName = 'LARGURA'
      Origin = 'DB.ORDENSGRAFICA.LARGURA'
      Precision = 9
      Size = 2
    end
    object SQLTemplateALTURA: TFloatField
      FieldName = 'ALTURA'
      Origin = 'DB.ORDENSGRAFICA.ALTURA'
      Precision = 9
      Size = 2
    end
    object SQLTemplateQUANTTOTAL: TIntegerField
      FieldName = 'QUANTTOTAL'
      Origin = 'DB.ORDENSGRAFICA.QUANTTOTAL'
    end
    object SQLTemplatePAPEL: TStringField
      FieldName = 'PAPEL'
      Origin = 'DB.ORDENSGRAFICA.PAPEL'
      Size = 15
    end
    object SQLTemplateQUANTTALOES: TIntegerField
      FieldName = 'QUANTTALOES'
      Origin = 'DB.ORDENSGRAFICA.QUANTTALOES'
    end
    object SQLTemplateLOCALENTR: TStringField
      FieldName = 'LOCALENTR'
      Origin = 'DB.ORDENSGRAFICA.LOCALENTR'
      Size = 60
    end
    object SQLTemplateTIPOSERVIMP: TStringField
      FieldName = 'TIPOSERVIMP'
      Origin = 'DB.ORDENSGRAFICA.TIPOSERVIMP'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePICOTE: TStringField
      FieldName = 'PICOTE'
      Origin = 'DB.ORDENSGRAFICA.PICOTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateGRAMPO: TStringField
      FieldName = 'GRAMPO'
      Origin = 'DB.ORDENSGRAFICA.GRAMPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCOLA: TStringField
      FieldName = 'COLA'
      Origin = 'DB.ORDENSGRAFICA.COLA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateNUMERADO: TStringField
      FieldName = 'NUMERADO'
      Origin = 'DB.ORDENSGRAFICA.NUMERADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateSOLTO: TStringField
      FieldName = 'SOLTO'
      Origin = 'DB.ORDENSGRAFICA.SOLTO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFURADO: TStringField
      FieldName = 'FURADO'
      Origin = 'DB.ORDENSGRAFICA.FURADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePALTIFICADO: TStringField
      FieldName = 'PALTIFICADO'
      Origin = 'DB.ORDENSGRAFICA.PALTIFICADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCARBONO: TStringField
      FieldName = 'CARBONO'
      Origin = 'DB.ORDENSGRAFICA.CARBONO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFORMATO: TStringField
      FieldName = 'FORMATO'
      Origin = 'DB.ORDENSGRAFICA.FORMATO'
      Size = 15
    end
    object SQLTemplateENTREGADO: TDateTimeField
      FieldName = 'ENTREGADO'
      Origin = 'DB.ORDENSGRAFICA.ENTREGADO'
    end
    object SQLTemplateCOMISSAO: TSmallintField
      FieldName = 'COMISSAO'
      Origin = 'DB.ORDENSGRAFICA.COMISSAO'
      DisplayFormat = ',0.00'
    end
    object SQLTemplateVAL: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VAL'
      Origin = 'DB.ORDENSGRAFICA.VAL'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 2
    end
    object SQLTemplateIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Origin = 'DB.ORDENSGRAFICA.IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePARCELAS: TStringField
      FieldName = 'PARCELAS'
      Origin = 'DB.ORDENSGRAFICA.PARCELAS'
      OnChange = SQLTemplatePARCELASChange
      Size = 18
    end
    object SQLTemplateCORDOPAPEL: TStringField
      FieldName = 'CORDOPAPEL'
      Origin = 'DB.ORDENSGRAFICA.CORDOPAPEL'
      Size = 40
    end
    object SQLTemplateRESPONSAVEL: TIntegerField
      FieldName = 'RESPONSAVEL'
      Origin = 'DB.ORDENSGRAFICA.RESPONSAVEL'
    end
    object SQLTemplateVIAS: TStringField
      FieldName = 'VIAS'
      Origin = 'DB.ORDENSGRAFICA.VIAS'
      Size = 15
    end
    object SQLTemplateSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'DB.ORDENSGRAFICA.STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVendedorLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'VendedorLookUp'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateProdutoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ProdutoLookUp'
      LookupDataSet = SQLProduto
      LookupKeyFields = 'PRODICOD'
      LookupResultField = 'PRODA60DESCR'
      KeyFields = 'PRODICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateExecutaremLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ExecutaremLookUp'
      LookupDataSet = SQLExecutarem
      LookupKeyFields = 'ORDEXEID'
      LookupResultField = 'ORDA25EXECUTAEM'
      KeyFields = 'TIPOSERVICO'
      Size = 25
      Lookup = True
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
    object SQLTemplateClienteFone: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteFone'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA15FONE1'
      KeyFields = 'CLIEA13ID'
      Size = 15
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
    object SQLTemplateClienteCNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCNPJ'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA14CGC'
      KeyFields = 'CLIEA13ID'
      Size = 14
      Lookup = True
    end
    object SQLTemplateclienteIE: TStringField
      FieldKind = fkLookup
      FieldName = 'clienteIE'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA20IE'
      KeyFields = 'CLIEA13ID'
      Lookup = True
    end
    object SQLTemplateClienteFantasia: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteFantasia'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60NOMEFANT'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateClienteCep: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCep'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA8CEPRES'
      KeyFields = 'CLIEA13ID'
      Size = 8
      Lookup = True
    end
    object SQLTemplateVERNIZADO: TStringField
      FieldName = 'VERNIZADO'
      Origin = 'DB.ORDENSGRAFICA.VERNIZADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCAPA: TStringField
      FieldName = 'CAPA'
      Origin = 'DB.ORDENSGRAFICA.CAPA'
      Size = 254
    end
    object SQLTemplateMIOLO: TStringField
      FieldName = 'MIOLO'
      Origin = 'DB.ORDENSGRAFICA.MIOLO'
      Size = 254
    end
    object SQLTemplateACABAMENTO: TStringField
      FieldName = 'ACABAMENTO'
      Origin = 'DB.ORDENSGRAFICA.ACABAMENTO'
      Size = 254
    end
    object SQLTemplateTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'DB.ORDENSGRAFICA.TIPOSERVICO'
      OnChange = SQLTemplateTIPOSERVICOChange
    end
    object SQLTemplateTipoExecucao: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoExecucao'
      LookupDataSet = SQLExecutarem
      LookupKeyFields = 'ORDEXEID'
      LookupResultField = 'TIPOSERVICO'
      KeyFields = 'TIPOSERVICO'
      Size = 1
      Lookup = True
    end
    object SQLTemplatePARCELASVARIAVEIS: TStringField
      FieldName = 'PARCELASVARIAVEIS'
      Origin = 'DB.ORDENSGRAFICA.PARCELASVARIAVEIS'
    end
    object SQLTemplateCOMISSIONAPOR: TStringField
      FieldName = 'COMISSIONAPOR'
      Origin = 'DB.ORDENSGRAFICA.COMISSIONAPOR'
      OnChange = SQLTemplateCOMISSIONAPORChange
      FixedChar = True
      Size = 1
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  CLIEA13ID, CLIEA60RAZAOSOC, CLIEA60ENDRES, CLIEA60BAIRES, '
      '  CLIEA60CIDRES, CLIEA2UFRES, CLIEA11CPF, CLIEA10RG, CLIEA14CGC,'
      '  CLIEA20IE, CLIEA15FONE1,   CLIEA60NOMEFANT, CLIEA8CEPRES, '
      '  CLIETOBS2, CLIETOBS1,  MTBLICOD'
      'FROM'
      '  CLIENTE'
      'ORDER BY'
      '  CLIEA60RAZAOSOC')
    Macros = <>
    Left = 7
    Top = 367
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
    object SQLClienteCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIETOBS2: TBlobField
      FieldName = 'CLIETOBS2'
      Origin = 'DB.CLIENTE.CLIETOBS2'
      Size = 1
    end
    object SQLClienteCLIETOBS1: TBlobField
      FieldName = 'CLIETOBS1'
      Origin = 'DB.CLIENTE.CLIETOBS1'
      Size = 1
    end
    object SQLClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 35
    Top = 367
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 35
    Top = 395
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
    Left = 63
    Top = 395
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
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLExecutarem: TDataSource
    DataSet = SQLExecutarem
    Left = 91
    Top = 395
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 91
    Top = 367
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  *'
      'FROM'
      '  VENDEDOR'
      'ORDER BY'
      ' VENDA60NOME')
    Macros = <>
    Left = 63
    Top = 367
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDN2COMISV: TFloatField
      FieldName = 'VENDN2COMISV'
      Origin = 'DB.VENDEDOR.VENDN2COMISV'
      Precision = 15
      Size = 3
    end
    object SQLVendedorVENDN2COMISP: TFloatField
      FieldName = 'VENDN2COMISP'
      Origin = 'DB.VENDEDOR.VENDN2COMISP'
      Precision = 15
      Size = 3
    end
    object SQLVendedorVENDCTIPCOMIS: TStringField
      FieldName = 'VENDCTIPCOMIS'
      Origin = 'DB.VENDEDOR.VENDCTIPCOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorVENDCCOMISACRESC: TStringField
      FieldName = 'VENDCCOMISACRESC'
      Origin = 'DB.VENDEDOR.VENDCCOMISACRESC'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VENDEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VENDEDOR.REGISTRO'
    end
    object SQLVendedorVENDA60EMAIL: TStringField
      FieldName = 'VENDA60EMAIL'
      Origin = 'DB.VENDEDOR.VENDA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA5FISJURID: TStringField
      FieldName = 'VENDA5FISJURID'
      Origin = 'DB.VENDEDOR.VENDA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA14CGC: TStringField
      FieldName = 'VENDA14CGC'
      Origin = 'DB.VENDEDOR.VENDA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLVendedorVENDA20IE: TStringField
      FieldName = 'VENDA20IE'
      Origin = 'DB.VENDEDOR.VENDA20IE'
      FixedChar = True
    end
    object SQLVendedorVENDA11CPF: TStringField
      FieldName = 'VENDA11CPF'
      Origin = 'DB.VENDEDOR.VENDA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLVendedorVENDA10RG: TStringField
      FieldName = 'VENDA10RG'
      Origin = 'DB.VENDEDOR.VENDA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLVendedorVENDA60CONTATO: TStringField
      FieldName = 'VENDA60CONTATO'
      Origin = 'DB.VENDEDOR.VENDA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA15FONE1: TStringField
      FieldName = 'VENDA15FONE1'
      Origin = 'DB.VENDEDOR.VENDA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA15FONE2: TStringField
      FieldName = 'VENDA15FONE2'
      Origin = 'DB.VENDEDOR.VENDA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA15FAX: TStringField
      FieldName = 'VENDA15FAX'
      Origin = 'DB.VENDEDOR.VENDA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA60END: TStringField
      FieldName = 'VENDA60END'
      Origin = 'DB.VENDEDOR.VENDA60END'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA60BAI: TStringField
      FieldName = 'VENDA60BAI'
      Origin = 'DB.VENDEDOR.VENDA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA60CID: TStringField
      FieldName = 'VENDA60CID'
      Origin = 'DB.VENDEDOR.VENDA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA2UF: TStringField
      FieldName = 'VENDA2UF'
      Origin = 'DB.VENDEDOR.VENDA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLVendedorVENDA8CEP: TStringField
      FieldName = 'VENDA8CEP'
      Origin = 'DB.VENDEDOR.VENDA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLVendedorBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.VENDEDOR.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA5AGENCIA: TStringField
      FieldName = 'VENDA5AGENCIA'
      Origin = 'DB.VENDEDOR.VENDA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA10CONTA: TStringField
      FieldName = 'VENDA10CONTA'
      Origin = 'DB.VENDEDOR.VENDA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLVendedorVENDA60TITULAR: TStringField
      FieldName = 'VENDA60TITULAR'
      Origin = 'DB.VENDEDOR.VENDA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDDABERTCONTA: TDateTimeField
      FieldName = 'VENDDABERTCONTA'
      Origin = 'DB.VENDEDOR.VENDDABERTCONTA'
    end
    object SQLVendedorVENDA254OBS: TStringField
      FieldName = 'VENDA254OBS'
      Origin = 'DB.VENDEDOR.VENDA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLVendedorVENDA30CORE: TStringField
      FieldName = 'VENDA30CORE'
      Origin = 'DB.VENDEDOR.VENDA30CORE'
      FixedChar = True
      Size = 30
    end
    object SQLVendedorVENDA60RAZAOSOCIAL: TStringField
      FieldName = 'VENDA60RAZAOSOCIAL'
      Origin = 'DB.VENDEDOR.VENDA60RAZAOSOCIAL'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDIDIASVALFIDEL: TIntegerField
      FieldName = 'VENDIDIASVALFIDEL'
      Origin = 'DB.VENDEDOR.VENDIDIASVALFIDEL'
    end
    object SQLVendedorVENDN2PERCFIDEL: TFloatField
      FieldName = 'VENDN2PERCFIDEL'
      Origin = 'DB.VENDEDOR.VENDN2PERCFIDEL'
      Precision = 15
      Size = 2
    end
    object SQLVendedorVENDN2PERCIRRF: TFloatField
      FieldName = 'VENDN2PERCIRRF'
      Origin = 'DB.VENDEDOR.VENDN2PERCIRRF'
      Precision = 15
      Size = 2
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'Select * From PRODUTO ORDER BY PRODA60DESCR'
      '')
    Macros = <>
    Left = 7
    Top = 395
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDAPROM: TFloatField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
      Precision = 15
      Size = 3
    end
    object SQLProdutoPRODN3VLRVENDA2: TFloatField
      FieldName = 'PRODN3VLRVENDA2'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA2'
      Precision = 15
      Size = 3
    end
  end
  object SQLOperacaEstoque: TTable
    DatabaseName = 'DB'
    TableName = 'OPERACAOESTOQUE'
    Left = 13
    Top = 431
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
    Left = 42
    Top = 431
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Empresa')
    Macros = <>
    Left = 71
    Top = 431
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
    Left = 14
    Top = 460
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
      Precision = 15
      Size = 3
    end
    object SQLFinanceiroPLRCN2TXMULTA: TFloatField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLFinanceiroPLRCN2TXCRED: TFloatField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
      Precision = 15
      Size = 3
    end
    object SQLFinanceiroPLRCN2PERCDESC: TFloatField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLFinanceiroPLRCN2DESC: TFloatField
      FieldName = 'PLRCN2DESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2DESC'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 5
    end
    object SQLFinanceiroPLRCN5FATORPARC: TFloatField
      FieldName = 'PLRCN5FATORPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATORPARC'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 2
    end
  end
  object DSSQLFinanceiro: TDataSource
    DataSet = SQLFinanceiro
    Left = 42
    Top = 460
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
    OpcoesPreview.Preview = False
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
      '//--- Linha HP/Xerox padrão PCL ---//'
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
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 100
    Top = 432
  end
  object SQLFinaliza: TRxQuery
    Tag = 1
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM ORD_FINALIZA WHERE ORDNUM = :ORDNUM')
    Macros = <>
    Left = 691
    Top = 124
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORDNUM'
        ParamType = ptUnknown
        Size = 4
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
    object SQLFinalizaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'DB.ORD_FINALIZA.QUANTIDADE'
      OnChange = SQLFinalizaQUANTIDADEChange
    end
    object SQLFinalizaIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Origin = 'DB.ORD_FINALIZA.IMPRESSO'
      FixedChar = True
      Size = 1
    end
    object SQLFinalizaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      Origin = 'DB.ORD_FINALIZA.NOTAFISCAL'
    end
  end
  object DSSQLFinaliza: TDataSource
    DataSet = SQLFinaliza
    Left = 719
    Top = 124
  end
  object PopEntrega: TPopupMenu
    Left = 664
    Top = 124
    object N5: TMenuItem
      Caption = '-'
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir Registro de Entrega'
      OnClick = Excluir1Click
    end
    object N6: TMenuItem
      Caption = '-'
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
    Left = 14
    Top = 497
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
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalNOFIN2VLRICMS: TFloatField
      FieldName = 'NOFIN2VLRICMS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalNOFIN2BASCALCSUBS: TFloatField
      FieldName = 'NOFIN2BASCALCSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCSUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2BASCALCCIPI: TFloatField
      FieldName = 'NOFIN2BASCALCCIPI'
      Origin = 'DB.NOTAFISCAL.NOFIN2BASCALCCIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRIPI: TFloatField
      FieldName = 'NOFIN2VLRIPI'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRDESC: TFloatField
      FieldName = 'NOFIN2VLRDESC'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRFRETE: TFloatField
      FieldName = 'NOFIN2VLRFRETE'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRSEGURO: TFloatField
      FieldName = 'NOFIN2VLRSEGURO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSEGURO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLROUTRASDESP: TFloatField
      FieldName = 'NOFIN2VLROUTRASDESP'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLROUTRASDESP'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalNOFIN2VLRSERVICO: TFloatField
      FieldName = 'NOFIN2VLRSERVICO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSERVICO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRISSQN: TFloatField
      FieldName = 'NOFIN2VLRISSQN'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRISSQN'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRPRODUTO: TFloatField
      FieldName = 'NOFIN2VLRPRODUTO'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRPRODUTO'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRNOTA: TFloatField
      FieldName = 'NOFIN2VLRNOTA'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRNOTA'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN3PESLIQ: TFloatField
      FieldName = 'NOFIN3PESLIQ'
      Origin = 'DB.NOTAFISCAL.NOFIN3PESLIQ'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalNOFIN2VLRSUBS: TFloatField
      FieldName = 'NOFIN2VLRSUBS'
      Origin = 'DB.NOTAFISCAL.NOFIN2VLRSUBS'
      Precision = 15
      Size = 3
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
    Left = 71
    Top = 609
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
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRUNIT: TFloatField
      FieldName = 'NFITN2VLRUNIT'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRUNIT'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCDESC: TFloatField
      FieldName = 'NFITN2PERCDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRDESC: TFloatField
      FieldName = 'NFITN2VLRDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCICMS: TFloatField
      FieldName = 'NFITN2PERCICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCICMS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2BASEICMS: TFloatField
      FieldName = 'NFITN2BASEICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASEICMS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRICMS: TFloatField
      FieldName = 'NFITN2VLRICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRICMS'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalItemNFITN2PERCSUBS: TFloatField
      FieldName = 'NFITN2PERCSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCSUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2BASESUBS: TFloatField
      FieldName = 'NFITN2BASESUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASESUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRSUBS: TFloatField
      FieldName = 'NFITN2VLRSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRSUBS'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCIPI: TFloatField
      FieldName = 'NFITN2PERCIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRIPI: TFloatField
      FieldName = 'NFITN2VLRIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRIPI'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCISSQN: TFloatField
      FieldName = 'NFITN2PERCISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCISSQN'
      Precision = 15
      Size = 2
    end
    object SQLNotaFiscalItemNFITN2VLRISSQN: TFloatField
      FieldName = 'NFITN2VLRISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRISSQN'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRFRETE: TFloatField
      FieldName = 'NFITN2VLRFRETE'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2VLRLUCRO: TFloatField
      FieldName = 'NFITN2VLRLUCRO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRLUCRO'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN3TOTVEND: TFloatField
      FieldName = 'NFITN3TOTVEND'
      Origin = 'DB.NOTAFISCALITEM.NFITN3TOTVEND'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLNotaFiscalItemNFITN2PERCCOMIS: TFloatField
      FieldName = 'NFITN2PERCCOMIS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCCOMIS'
      Precision = 15
      Size = 3
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
    Left = 42
    Top = 525
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
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
    end
    object SQLNotaContasReceberCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
      Precision = 15
      Size = 3
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
    Left = 72
    Top = 525
  end
  object SQLBuscas: TRxQuery
    Tag = 2
    DatabaseName = 'DB'
    RequestLive = True
    Macros = <>
    Left = 71
    Top = 460
  end
  object SQLTransportadora: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Transportadora')
    Macros = <>
    Left = 14
    Top = 525
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
    Left = 14
    Top = 554
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
  object SQLPlano: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANORECEBIMENTO'
      'Where PLRCICOD=:PLRCICOD')
    Macros = <>
    Left = 42
    Top = 553
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
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCN2TXMULTA: TFloatField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCN2TXCRED: TFloatField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCN2PERCDESC: TFloatField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLPlanoPLRCN2DESC: TFloatField
      FieldName = 'PLRCN2DESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2DESC'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
  end
  object SQLPlanoParcela: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANORECEBIMENTOPARCELA'
      'Where PLRCICOD=:PLRCICOD')
    Macros = <>
    Left = 42
    Top = 582
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PLRCICOD'
        ParamType = ptUnknown
      end>
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
    Left = 14
    Top = 610
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
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      Precision = 15
      Size = 3
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
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      Precision = 15
      Size = 3
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      Precision = 15
      Size = 3
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
      DisplayLabel = 'Conta Crédito'
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
      Precision = 15
      Size = 3
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
      DisplayLabel = 'Histórico'
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberHTPDICOD: TIntegerField
      DisplayLabel = 'Cód. Hist. Padrão'
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
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM PORTADOR')
    Macros = <>
    Left = 71
    Top = 581
  end
  object SQLNumerarioPrazo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where NUMECVISTAPRAZO=''P'''
      'order by NUMEA30DESCR')
    Macros = <>
    Left = 73
    Top = 497
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO ')
    Macros = <>
    Left = 72
    Top = 553
  end
  object SQLTipoDoc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from TipoDocumento'
      'Order by TPDCA60DESCR')
    Macros = <>
    Left = 42
    Top = 610
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
  object SQLNumerarioVista: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO '
      'where NUMECVISTAPRAZO=''V'''
      'order by NUMEA30DESCR'
      '')
    Macros = <>
    Left = 42
    Top = 498
  end
  object SQLParcelasPrazoVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASPRAZOVENDATEMP')
    Macros = <>
    Left = 13
    Top = 583
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
      Size = 3
    end
    object SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NUMEICOD'
    end
    object SQLParcelasPrazoVendaTempNumerarioLookup: TStringField
      DisplayLabel = 'Numerário'
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
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 13
    Top = 638
  end
end
