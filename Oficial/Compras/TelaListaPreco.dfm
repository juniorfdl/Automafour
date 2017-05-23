inherited FormTelaListaPreco: TFormTelaListaPreco
  Left = 135
  Top = 150
  Width = 1154
  Height = 578
  Caption = 'Manuten'#231#227'o da Lista de Pre'#231'os - Notas Compras em Aberto'
  KeyPreview = False
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1138
    Height = 539
    inherited PanelCentral: TPanel
      Width = 1134
      Height = 455
      inherited PanelBarra: TPanel
        Width = 0
        Height = 455
      end
      object GroupProdFiltrados: TGroupBox
        Left = 0
        Top = 0
        Width = 1134
        Height = 455
        Align = alClient
        Caption = ' Produtos Filtrados '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object CtrlGridGrupos: TDBCtrlGrid
          Left = 2
          Top = 15
          Width = 1130
          Height = 438
          Align = alClient
          Color = 16249066
          DataSource = dsLista
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          PanelHeight = 73
          PanelWidth = 1113
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          TabOrder = 0
          TabStop = False
          RowCount = 6
          SelectedColor = 12572888
          ShowHint = False
          object Panel1: TPanel
            Left = 3
            Top = 2
            Width = 982
            Height = 83
            Color = 16249066
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBText1: TDBText
              Left = 5
              Top = 6
              Width = 39
              Height = 13
              DataField = 'PRODICOD'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBText4: TDBText
              Left = 52
              Top = 6
              Width = 347
              Height = 13
              DataField = 'DESCRICAO'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label5: TLabel
              Left = 408
              Top = 8
              Width = 62
              Height = 11
              Caption = 'ULT Compra'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 560
              Top = 8
              Width = 51
              Height = 11
              Caption = 'ULT Custo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 699
              Top = 8
              Width = 56
              Height = 11
              Caption = 'Vda Varejo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 151
              Top = 50
              Width = 57
              Height = 11
              Caption = 'Vlr Compra'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 224
              Top = 57
              Width = 16
              Height = 23
              Caption = '+'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 245
              Top = 50
              Width = 35
              Height = 11
              Caption = 'IPI  %'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 287
              Top = 57
              Width = 16
              Height = 23
              Caption = '+'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 302
              Top = 50
              Width = 55
              Height = 11
              Caption = 'Icms ST %'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 350
              Top = 57
              Width = 16
              Height = 23
              Caption = '+'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 370
              Top = 50
              Width = 42
              Height = 11
              Caption = 'Frete %'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 413
              Top = 57
              Width = 16
              Height = 23
              Caption = '+'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 429
              Top = 50
              Width = 49
              Height = 11
              Caption = 'Outras %'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 475
              Top = 56
              Width = 16
              Height = 23
              Caption = '+'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 487
              Top = 50
              Width = 56
              Height = 11
              Caption = 'Dif Icms %'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 600
              Top = 57
              Width = 16
              Height = 23
              Caption = '='
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 619
              Top = 50
              Width = 74
              Height = 11
              Caption = 'Vlr Novo Custo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 701
              Top = 50
              Width = 53
              Height = 11
              Caption = 'MG Varejo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 763
              Top = 50
              Width = 68
              Height = 11
              Caption = 'Venda Varejo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 844
              Top = 50
              Width = 54
              Height = 11
              Caption = 'MG Atacad'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 903
              Top = 50
              Width = 75
              Height = 11
              Caption = 'Venda Atacado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 836
              Top = 9
              Width = 63
              Height = 11
              Caption = 'Vda Atacado'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText2: TDBText
              Left = 706
              Top = 29
              Width = 271
              Height = 13
              DataField = 'FORNECEDOR'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label22: TLabel
              Left = 643
              Top = 29
              Width = 57
              Height = 11
              Caption = 'Fornecedor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 498
              Top = 29
              Width = 44
              Height = 11
              Caption = 'Nro Nota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText3: TDBText
              Left = 545
              Top = 29
              Width = 90
              Height = 13
              DataField = 'NRONF'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label24: TLabel
              Left = 307
              Top = 29
              Width = 54
              Height = 11
              Caption = 'Referencia'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText5: TDBText
              Left = 368
              Top = 29
              Width = 124
              Height = 13
              DataField = 'REFFABRIC'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBText6: TDBText
              Left = 230
              Top = 29
              Width = 70
              Height = 13
              DataField = 'UNIDADE'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label26: TLabel
              Left = 184
              Top = 29
              Width = 40
              Height = 11
              Caption = 'Unidade'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 555
              Top = 50
              Width = 38
              Height = 11
              Caption = 'Desc %'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 540
              Top = 56
              Width = 8
              Height = 23
              Caption = '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText7: TDBText
              Left = 105
              Top = 29
              Width = 71
              Height = 13
              DataField = 'QTDCOMPRA'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label29: TLabel
              Left = 51
              Top = 29
              Width = 50
              Height = 11
              Caption = 'Q.Compra'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit5: TDBEdit
              Left = 474
              Top = 5
              Width = 82
              Height = 19
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'VLRCOMPRAATUAL'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit6: TDBEdit
              Left = 615
              Top = 5
              Width = 82
              Height = 19
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'VLRCUSTOATUAL'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit7: TDBEdit
              Left = 758
              Top = 5
              Width = 76
              Height = 19
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'VLRVENDA1ATUAL'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit8: TDBEdit
              Left = 902
              Top = 5
              Width = 76
              Height = 19
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'VLRVENDA2ATUAL'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBCheckBox3: TDBCheckBox
              Left = 3
              Top = 62
              Width = 59
              Height = 17
              Caption = 'Remove'
              DataField = 'REMOVEITEM'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 66
              Top = 62
              Width = 79
              Height = 17
              Caption = 'Altera Pre'#231'o'
              DataField = 'ALTERAPRECO'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBEdit1: TDBEdit
              Left = 147
              Top = 61
              Width = 77
              Height = 19
              Color = 16249066
              DataField = 'VLRCOMPRA'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit9: TDBEdit
              Left = 240
              Top = 61
              Width = 47
              Height = 19
              Color = clWhite
              DataField = 'PERCIPIENTRADA'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnEnter = DBEdit9Enter
            end
            object DBEdit11: TDBEdit
              Left = 303
              Top = 60
              Width = 47
              Height = 19
              Color = clWhite
              DataField = 'PERCICMSST'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnEnter = DBEdit11Enter
            end
            object DBEdit12: TDBEdit
              Left = 366
              Top = 61
              Width = 47
              Height = 19
              Color = clWhite
              DataField = 'PERCFRETE'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
              OnEnter = DBEdit12Enter
            end
            object DBEdit13: TDBEdit
              Left = 428
              Top = 61
              Width = 47
              Height = 19
              Color = clWhite
              DataField = 'PERCOUTRAS'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnEnter = DBEdit13Enter
            end
            object DBEdit3: TDBEdit
              Left = 490
              Top = 61
              Width = 47
              Height = 19
              Color = clWhite
              DataField = 'PERCDIFICMS'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              OnEnter = DBEdit3Enter
            end
            object DBEdit2: TDBEdit
              Left = 615
              Top = 61
              Width = 82
              Height = 19
              TabStop = False
              Color = 16249066
              DataField = 'VLRCUSTO'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 13
            end
            object DBEdit14: TDBEdit
              Left = 698
              Top = 61
              Width = 60
              Height = 19
              DataField = 'PERCMGVAREJO'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 14
              OnEnter = DBEdit14Enter
            end
            object DBEdit16: TDBEdit
              Left = 759
              Top = 61
              Width = 75
              Height = 19
              DataField = 'VLRVENDA1'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 15
              OnEnter = DBEdit16Enter
              OnExit = DBEdit16Exit
            end
            object DBEdit15: TDBEdit
              Left = 841
              Top = 61
              Width = 60
              Height = 19
              DataField = 'PERCMGATACADO'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
            end
            object DBEdit17: TDBEdit
              Left = 902
              Top = 61
              Width = 76
              Height = 19
              DataField = 'VLRVENDA2'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
              OnEnter = DBEdit17Enter
              OnExit = DBEdit17Exit
            end
            object DBEdit4: TDBEdit
              Left = 550
              Top = 61
              Width = 47
              Height = 19
              Color = clWhite
              DataField = 'PERCDESC'
              DataSource = dsLista
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnEnter = DBEdit4Enter
            end
          end
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 1134
      inherited PanelCabecalho: TPanel
        Width = 1134
        inherited LabelTitulo: TLabel
          Top = -1
          Width = 612
          Caption = 'Manuten'#231#227'o da Lista de Pre'#231'os - Notas Compras em Aberto'
        end
        object LbEncargos: TLabel [1]
          Left = 765
          Top = 12
          Width = 86
          Height = 11
          Caption = '% Encargos Adm'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited PanelNavigator: TPanel
          Top = 26
          Width = 1134
          Height = 54
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 1134
            Height = 54
            inherited BtnFecharTela: TSpeedButton
              Left = 1049
              Height = 22
            end
            object btComprasVendas: TSpeedButton
              Left = 685
              Top = 3
              Width = 120
              Height = 22
              Hint = 'Acessa Produtos'
              Caption = 'Compras e Vendas'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btComprasVendasClick
            end
            object BTListaA: TSpeedButton
              Left = 5
              Top = 3
              Width = 81
              Height = 22
              Caption = 'Ver Lista=A'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = BTListaAClick
            end
            object BTListaE: TSpeedButton
              Left = 89
              Top = 3
              Width = 81
              Height = 22
              Caption = 'Ver Lista=E'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
                9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
                C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
                A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
                E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
                F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
                DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
                F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
                D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
                F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
                DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
                F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
                E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ParentFont = False
              OnClick = BTListaEClick
            end
            object BtnReajuste: TSpeedButton
              Left = 344
              Top = 3
              Width = 106
              Height = 22
              Caption = '&Reajustar Pre'#231'os'
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
              OnClick = BtnReajusteClick
            end
            object btnRemove: TSpeedButton
              Left = 453
              Top = 3
              Width = 105
              Height = 22
              Caption = 'Remover Item'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF0027A8DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0029ACDE0027A9DC0025A6DB00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF002BAFDF002DAEDF002BABDE0025A6DB00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF002BAFDF004FBCE7004CBAE60026A7DC0024A4DB00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF002BAFDF0084D3F20055BDE7002EAADE0024A4
                DB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF002DB2E00070CCEE0083D2F2007ECEF1004AB6
                E40024A5DB0022A2DA00FF00FF00FF00FF00FF00FF00FF00FF0038C2E70036C0
                E60035BDE50033BBE40031B8E3002FB6E20086D7F3002FB6EB004ABCEC0080CE
                F10051B9E6002CA8DD0023A2DA00FF00FF00FF00FF00FF00FF003AC4E80075DA
                F20093E6F80091E3F7008DE0F6008ADCF5008ADBF50088D7F40084D3F2007FCF
                F1007CCCF0007AC9EF0048B4E30023A3DA00209ED800FF00FF003BC7E9004FCD
                EC0098E9F9004AD5F30045CFF10040CAF00038C2EE0089D9F4002EB4E1002CB1
                E0002BAEDF0029ACDE0027A9DC0025A6DB0023A3DA00FF00FF00FF00FF003BC7
                E90080E1F5008EE6F80043D2F3003FCDF10039C7EF008CDCF50058C6EA002EB4
                E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003DC9
                EA005BD4EF0099EAF90047D6F40042D0F2003DCBF0006ED5F3007FD7F3004AC0
                E7002FB4E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF003DCAEA0093E9F90072E1F70045D4F30041CEF2003CC9F0008ADCF50070D0
                EF003DBBE4002FB5E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF003FCCEB0064D9F1009AEBFA0048D8F40044D3F3003FCEF1003AC8F0008CDC
                F50062CBED0031B8E300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF003FCCEB009AEDFA0099EBF90097E8F90094E5F80091E2F7008EDF
                F6008BDBF50056C7EB0031B8E300FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0040CEEC003FCCEB003ECBEA003CC9E9003BC7E9003AC4E80038C2
                E70036C0E60035BDE50033BBE40031B8E300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentFont = False
              OnClick = btnRemoveClick
            end
            object btnRemoveAll: TSpeedButton
              Left = 562
              Top = 3
              Width = 110
              Height = 22
              Caption = 'Remover Todos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF0027A8DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0029ACDE0027A9DC0025A6DB00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF002BAFDF002DAEDF002BABDE0025A6DB00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF002BAFDF004FBCE7004CBAE60026A7DC0024A4DB00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF002BAFDF0084D3F20055BDE7002EAADE0024A4
                DB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF002DB2E00070CCEE0083D2F2007ECEF1004AB6
                E40024A5DB0022A2DA00FF00FF00FF00FF00FF00FF00FF00FF0038C2E70036C0
                E60035BDE50033BBE40031B8E3002FB6E20086D7F3002FB6EB004ABCEC0080CE
                F10051B9E6002CA8DD0023A2DA00FF00FF00FF00FF00FF00FF003AC4E80075DA
                F20093E6F80091E3F7008DE0F6008ADCF5008ADBF50088D7F40084D3F2007FCF
                F1007CCCF0007AC9EF0048B4E30023A3DA00209ED800FF00FF003BC7E9004FCD
                EC0098E9F9004AD5F30045CFF10040CAF00038C2EE0089D9F4002EB4E1002CB1
                E0002BAEDF0029ACDE0027A9DC0025A6DB0023A3DA00FF00FF00FF00FF003BC7
                E90080E1F5008EE6F80043D2F3003FCDF10039C7EF008CDCF50058C6EA002EB4
                E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003DC9
                EA005BD4EF0099EAF90047D6F40042D0F2003DCBF0006ED5F3007FD7F3004AC0
                E7002FB4E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF003DCAEA0093E9F90072E1F70045D4F30041CEF2003CC9F0008ADCF50070D0
                EF003DBBE4002FB5E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF003FCCEB0064D9F1009AEBFA0048D8F40044D3F3003FCEF1003AC8F0008CDC
                F50062CBED0031B8E300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF003FCCEB009AEDFA0099EBF90097E8F90094E5F80091E2F7008EDF
                F6008BDBF50056C7EB0031B8E300FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0040CEEC003FCCEB003ECBEA003CC9E9003BC7E9003AC4E80038C2
                E70036C0E60035BDE50033BBE40031B8E300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentFont = False
              OnClick = btnRemoveAllClick
            end
            object SpeedButton1: TSpeedButton
              Left = 174
              Top = 3
              Width = 81
              Height = 22
              Caption = '&Criar Lista'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF0027A8DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0029ACDE0027A9DC0025A6DB00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF002BAFDF002DAEDF002BABDE0025A6DB00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF002BAFDF004FBCE7004CBAE60026A7DC0024A4DB00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF002BAFDF0084D3F20055BDE7002EAADE0024A4
                DB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF002DB2E00070CCEE0083D2F2007ECEF1004AB6
                E40024A5DB0022A2DA00FF00FF00FF00FF00FF00FF00FF00FF0038C2E70036C0
                E60035BDE50033BBE40031B8E3002FB6E20086D7F3002FB6EB004ABCEC0080CE
                F10051B9E6002CA8DD0023A2DA00FF00FF00FF00FF00FF00FF003AC4E80075DA
                F20093E6F80091E3F7008DE0F6008ADCF5008ADBF50088D7F40084D3F2007FCF
                F1007CCCF0007AC9EF0048B4E30023A3DA00209ED800FF00FF003BC7E9004FCD
                EC0098E9F9004AD5F30045CFF10040CAF00038C2EE0089D9F4002EB4E1002CB1
                E0002BAEDF0029ACDE0027A9DC0025A6DB0023A3DA00FF00FF00FF00FF003BC7
                E90080E1F5008EE6F80043D2F3003FCDF10039C7EF008CDCF50058C6EA002EB4
                E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003DC9
                EA005BD4EF0099EAF90047D6F40042D0F2003DCBF0006ED5F3007FD7F3004AC0
                E7002FB4E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF003DCAEA0093E9F90072E1F70045D4F30041CEF2003CC9F0008ADCF50070D0
                EF003DBBE4002FB5E100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF003FCCEB0064D9F1009AEBFA0048D8F40044D3F3003FCEF1003AC8F0008CDC
                F50062CBED0031B8E300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF003FCCEB009AEDFA0099EBF90097E8F90094E5F80091E2F7008EDF
                F6008BDBF50056C7EB0031B8E300FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0040CEEC003FCCEB003ECBEA003CC9E9003BC7E9003AC4E80038C2
                E70036C0E60035BDE50033BBE40031B8E300FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentFont = False
              OnClick = SpeedButton1Click
            end
            object ImpEtiquetas: TRxSpeedButton
              Left = 259
              Top = 3
              Width = 81
              Height = 22
              Cursor = crHandPoint
              DropDownMenu = PopupMenuImpressao
              Caption = 'Listagens'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
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
              GrayedInactive = False
              Layout = blGlyphLeft
              Margin = 0
              MarkDropDown = False
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label25: TLabel
              Left = 5
              Top = 31
              Width = 44
              Height = 11
              Caption = 'Nro Nota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label30: TLabel
              Left = 193
              Top = 30
              Width = 81
              Height = 13
              Caption = 'Data Recto &De'
              FocusControl = De
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label31: TLabel
              Left = 370
              Top = 30
              Width = 19
              Height = 13
              Caption = 'a&t'#233
              FocusControl = Ate
              Font.Charset = ANSI_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object EDTNF: TEdit
              Left = 50
              Top = 26
              Width = 90
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object De: TDateEdit
              Left = 278
              Top = 26
              Width = 90
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              NumGlyphs = 2
              ParentFont = False
              YearDigits = dyFour
              TabOrder = 1
            end
            object Ate: TDateEdit
              Left = 391
              Top = 26
              Width = 90
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              NumGlyphs = 2
              ParentFont = False
              YearDigits = dyFour
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  object dsLista: TDataSource
    DataSet = SQLLista
    OnDataChange = dsListaDataChange
    Left = 441
    Top = 8
  end
  object SQLLista: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from ListaPreco Where %MFiltro and %MNF and %MData'
      'Order by'
      '  FORNECEDOR, NRONF')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNF'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 469
    Top = 8
    object SQLListaLSPCICOD: TIntegerField
      FieldName = 'LSPCICOD'
      Origin = 'DB.LISTAPRECO.LSPCICOD'
    end
    object SQLListaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'DB.LISTAPRECO.DATA'
    end
    object SQLListaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'DB.LISTAPRECO.STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLListaALTERAPRECO: TStringField
      FieldName = 'ALTERAPRECO'
      Origin = 'DB.LISTAPRECO.ALTERAPRECO'
      FixedChar = True
      Size = 1
    end
    object SQLListaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.LISTAPRECO.PRODICOD'
    end
    object SQLListaDESCRICAO: TStringField
      DisplayWidth = 60
      FieldName = 'DESCRICAO'
      Origin = 'DB.LISTAPRECO.DESCRICAO'
      Size = 60
    end
    object SQLListaVLRCOMPRAATUAL: TFloatField
      FieldName = 'VLRCOMPRAATUAL'
      Origin = 'DB.LISTAPRECO.VLRCOMPRAATUAL'
      DisplayFormat = '#,##0.00000'
    end
    object SQLListaVLRCUSTOATUAL: TFloatField
      FieldName = 'VLRCUSTOATUAL'
      Origin = 'DB.LISTAPRECO.VLRCUSTOATUAL'
      DisplayFormat = '#,##0.00000'
    end
    object SQLListaVLRVENDA1ATUAL: TFloatField
      FieldName = 'VLRVENDA1ATUAL'
      Origin = 'DB.LISTAPRECO.VLRVENDA1ATUAL'
      DisplayFormat = '#,##0.00'
    end
    object SQLListaVLRVENDA2ATUAL: TFloatField
      FieldName = 'VLRVENDA2ATUAL'
      Origin = 'DB.LISTAPRECO.VLRVENDA2ATUAL'
      DisplayFormat = '#,##0.00'
    end
    object SQLListaPERCIPIENTRADA: TFloatField
      FieldName = 'PERCIPIENTRADA'
      Origin = 'DB.LISTAPRECO.PERCIPIENTRADA'
      OnChange = SQLListaPERCIPIENTRADAChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaPERCICMSST: TFloatField
      FieldName = 'PERCICMSST'
      Origin = 'DB.LISTAPRECO.PERCICMSST'
      OnChange = SQLListaPERCIPIENTRADAChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaPERCFRETE: TFloatField
      FieldName = 'PERCFRETE'
      Origin = 'DB.LISTAPRECO.PERCFRETE'
      OnChange = SQLListaPERCIPIENTRADAChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaPERCOUTRAS: TFloatField
      FieldName = 'PERCOUTRAS'
      Origin = 'DB.LISTAPRECO.PERCOUTRAS'
      OnChange = SQLListaPERCIPIENTRADAChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaPERCDIFICMS: TFloatField
      FieldName = 'PERCDIFICMS'
      Origin = 'DB.LISTAPRECO.PERCDIFICMS'
      OnChange = SQLListaPERCIPIENTRADAChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaPERCDESC: TFloatField
      FieldName = 'PERCDESC'
      Origin = 'DB.LISTAPRECO.PERCDESC'
      OnChange = SQLListaPERCIPIENTRADAChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaVLRCOMPRA: TFloatField
      FieldName = 'VLRCOMPRA'
      Origin = 'DB.LISTAPRECO.VLRCOMPRA'
      OnChange = SQLListaPERCIPIENTRADAChange
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
    end
    object SQLListaVLRCUSTO: TFloatField
      FieldName = 'VLRCUSTO'
      Origin = 'DB.LISTAPRECO.VLRCUSTO'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
    end
    object SQLListaPERCMGVAREJO: TFloatField
      FieldName = 'PERCMGVAREJO'
      Origin = 'DB.LISTAPRECO.PERCMGVAREJO'
      OnChange = SQLListaPERCIPIENTRADAChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaPERCMGATACADO: TFloatField
      FieldName = 'PERCMGATACADO'
      Origin = 'DB.LISTAPRECO.PERCMGATACADO'
      OnChange = SQLListaPERCIPIENTRADAChange
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaVLRVENDA1: TFloatField
      FieldName = 'VLRVENDA1'
      Origin = 'DB.LISTAPRECO.VLRVENDA1'
      OnChange = SQLListaVLRVENDA1Change
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaVLRVENDA2: TFloatField
      FieldName = 'VLRVENDA2'
      Origin = 'DB.LISTAPRECO.VLRVENDA2'
      OnChange = SQLListaVLRVENDA2Change
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
    end
    object SQLListaREMOVEITEM: TStringField
      FieldName = 'REMOVEITEM'
      Origin = 'DB.LISTAPRECO.REMOVEITEM'
      FixedChar = True
      Size = 1
    end
    object SQLListaNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.LISTAPRECO.NOCPA13ID'
      Size = 13
    end
    object SQLListaREFFABRIC: TStringField
      FieldName = 'REFFABRIC'
      Origin = 'DB.LISTAPRECO.REFFABRIC'
      Size = 30
    end
    object SQLListaNRONF: TStringField
      FieldName = 'NRONF'
      Origin = 'DB.LISTAPRECO.NRONF'
      Size = 15
    end
    object SQLListaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'DB.LISTAPRECO.FORNECEDOR'
      Size = 60
    end
    object SQLListaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'DB.LISTAPRECO.UNIDADE'
      Size = 5
    end
    object SQLListaQTDCOMPRA: TFloatField
      FieldName = 'QTDCOMPRA'
      Origin = 'DB.LISTAPRECO.QTDCOMPRA'
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
    end
  end
  object SQLPesquisa: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 553
    Top = 9
  end
  object TblEtiquetas: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'Etiquetas.db'
    Left = 625
    Top = 9
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
  object TblItenscomPrecosAlterados: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'ItensComprados.db'
    Left = 683
    Top = 9
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
    Left = 714
    Top = 9
  end
  object SQLCodBarras: TRxQuery
    DatabaseName = 'DB'
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
    Left = 654
    Top = 9
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
  object PopupMenuImpressao: TPopupMenu
    Left = 308
    Top = 4
    object EtiquetasGondolas: TMenuItem
      Caption = '&Etiquetas de Gondolas'
      OnClick = EtiquetasGondolasClick
    end
    object CircularPrecos: TMenuItem
      Caption = 'Circular de Pre'#231'os'
      OnClick = CircularPrecosClick
    end
    object ListagemConferencia: TMenuItem
      Caption = 'Listagem para Confer'#234'ncia de Entrada'
      OnClick = ListagemConferenciaClick
    end
  end
  object TblNotaCompraItem: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'NotaCompraItem.db'
    Left = 826
    Top = 9
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
  object SQLTeste: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 583
    Top = 9
  end
  object SQLProdutoPdvs: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from ProdutoPdvs'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 911
    Top = 9
  end
  object SQLProdutoAux: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from Produto'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 943
    Top = 9
  end
end
