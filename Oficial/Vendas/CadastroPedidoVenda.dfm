inherited FormCadastroPedidoVenda: TFormCadastroPedidoVenda
  Left = 183
  Top = 69
  Caption = 'Or'#231'amentos e Pedidos de Venda'
  ClientHeight = 519
  ClientWidth = 928
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 928
    Height = 519
    inherited PanelCabecalho: TPanel
      Width = 926
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 926
        inherited Panel1: TPanel
          Width = 924
          inherited PanelNavigator: TPanel
            Width = 924
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 924
              inherited BtnFecharTela: TSpeedButton
                Left = 846
              end
            end
          end
          inherited PanelLeft: TPanel
            Left = 467
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 926
      Height = 445
      inherited PanelBarra: TPanel
        Height = 445
        inherited Button1: TRxSpeedButton
          Caption = '1 Consulta'
        end
        inherited Button2: TRxSpeedButton
          Caption = '2 Dados Principais'
        end
        inherited Button3: TRxSpeedButton
          Tag = 3
          Caption = '3 Itens da Venda'
          WordWrap = True
          Visible = True
          OnClick = Button1Click
        end
        object LbVendedorAtual: TLabel
          Left = 5
          Top = 190
          Width = 122
          Height = 17
          AutoSize = False
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbRotaAtual: TLabel
          Left = 5
          Top = 207
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Rota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbDataEntrega: TLabel
          Left = 5
          Top = 273
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbTranspAtual: TLabel
          Left = 5
          Top = 224
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Transp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbVeiculo: TLabel
          Left = 5
          Top = 241
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object LbEmissao: TLabel
          Left = 5
          Top = 257
          Width = 122
          Height = 16
          AutoSize = False
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
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
          Caption = '4 Parcelas'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
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
          WordWrap = True
          OnClick = Button1Click
        end
        object RadioConsultaCodigo: TRadioGroup
          Left = 3
          Top = 109
          Width = 125
          Height = 76
          Caption = ' Consultar por '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'ID Cliente'
            'C'#243'd.Antigo'
            'Rota+Seq Di'#225'ria')
          ParentFont = False
          TabOrder = 0
        end
        object RadioImpressao: TRadioGroup
          Left = 3
          Top = 297
          Width = 125
          Height = 58
          Caption = 'Impress'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Com Valores'
            'Sem Valores')
          ParentFont = False
          TabOrder = 1
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 796
        Height = 445
        inherited Panel5: TPanel
          Width = 796
          Height = 445
          inherited PagePrincipal: TPageControl
            Top = 222
            Width = 796
            Height = 223
            ActivePage = TabItens
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 75
                Width = 788
                Height = 122
                Columns = <
                  item
                    Alignment = taCenter
                    ButtonStyle = cbsEllipsis
                    Expanded = False
                    FieldName = 'PDVDCTIPO'
                    PickList.Strings = (
                      'P=Pedido'
                      'O=Or'#231'amento')
                    Width = 25
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERIA5COD'
                    Width = 30
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDVDA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDVDINROTALAO'
                    Title.Caption = 'Nro.Ped. Tal'#227'o'
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'PDVDCSTATUS'
                    Title.Caption = 'ST'
                    Width = 16
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'PDVDDEMISSAO'
                    Width = 58
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIENTENOME'
                    Title.Caption = 'Cliente'
                    Width = 267
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDVDN2TOTPROD'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PDVDN2TOTPED'
                    Width = 71
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 788
                Height = 41
                inherited PanelBetween: TPanel
                  Width = 394
                  Height = 41
                  inherited AdvPanel1: TAdvPanel
                    Width = 394
                    Height = 41
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 394
                  Height = 41
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 394
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
              end
              inherited MemoDetalhes: TMemo
                Top = 280
                Height = 35
                Lines.Strings = (
                  'PEDIDOVENDAITEM'
                  'CONTASRECEBER')
              end
              object PanelPesquisa: TPanel
                Left = 0
                Top = 41
                Width = 788
                Height = 34
                Align = alTop
                BevelOuter = bvNone
                Color = 16249066
                TabOrder = 3
                TabStop = True
                object BTNLocalizar: TSpeedButton
                  Left = 215
                  Top = 10
                  Width = 68
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
                object GroupConsultaSituacao: TGroupBox
                  Left = 2
                  Top = -1
                  Width = 207
                  Height = 33
                  Caption = ' Situa'#231#227'o'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object RdAbertos: TRadioButton
                    Left = 5
                    Top = 13
                    Width = 68
                    Height = 17
                    Caption = 'Ab+Enc'
                    Checked = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    TabStop = True
                  end
                  object RdFaturado: TRadioButton
                    Left = 67
                    Top = 13
                    Width = 39
                    Height = 17
                    Caption = 'Fat'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                  end
                  object RdCanc: TRadioButton
                    Left = 106
                    Top = 13
                    Width = 48
                    Height = 17
                    Caption = 'Canc'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                  end
                  object RdPend: TRadioButton
                    Left = 155
                    Top = 13
                    Width = 48
                    Height = 17
                    Caption = 'Pend'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label27: TLabel
                Left = 3
                Top = 2
                Width = 74
                Height = 13
                Caption = 'Data Entrega'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 117
                Top = 2
                Width = 63
                Height = 13
                Caption = 'Comprador'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 73
                Top = 38
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
              object Label20: TLabel
                Left = 174
                Top = 38
                Width = 48
                Height = 13
                Caption = 'Vlr.Frete'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label25: TLabel
                Left = 5
                Top = 74
                Width = 131
                Height = 13
                Caption = 'Observa'#231#245'es do Pedido'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LBPlaca: TLabel
                Left = 6
                Top = 38
                Width = 30
                Height = 13
                Caption = 'Placa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 349
                Top = 38
                Width = 72
                Height = 13
                Caption = 'Pedido Tal'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label31: TLabel
                Left = 261
                Top = 38
                Width = 69
                Height = 13
                Caption = 'Outras Desp'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 470
                Top = 38
                Width = 79
                Height = 13
                Caption = 'Vlr.Montagem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 560
                Top = 38
                Width = 85
                Height = 13
                Caption = 'Vlr.Impermeab'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DateEntrega: TDBDateEdit
                Left = 2
                Top = 15
                Width = 108
                Height = 20
                DataField = 'PDVDDENTREGA'
                DataSource = DSTemplate
                Ctl3D = True
                NumGlyphs = 2
                ParentCtl3D = False
                TabOrder = 0
              end
              object DBEdit9: TDBEdit
                Left = 114
                Top = 15
                Width = 228
                Height = 21
                Ctl3D = True
                DataField = 'PDVDA30COMPRADOR'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 1
              end
              object ComboTipoFrete: TRxDBComboBox
                Left = 70
                Top = 51
                Width = 98
                Height = 21
                Style = csDropDownList
                Ctl3D = True
                DataField = 'PDVDCTIPOFRETE'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'CIF - Emitente'
                  'FOB - Destinat'#225'rio')
                ParentCtl3D = False
                TabOrder = 3
                Values.Strings = (
                  'C'
                  'F')
              end
              object dbFrete: TDBEdit
                Left = 171
                Top = 51
                Width = 85
                Height = 21
                Ctl3D = True
                DataField = 'PDVDN2VLRFRETE'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
              end
              object DBMemo1: TDBMemo
                Left = 2
                Top = 88
                Width = 642
                Height = 96
                BevelWidth = 0
                Ctl3D = True
                DataField = 'PDVDTOBS'
                DataSource = DSTemplate
                ParentCtl3D = False
                ScrollBars = ssVertical
                TabOrder = 9
              end
              object DBEditPlaca: TDBEdit
                Left = 3
                Top = 51
                Width = 64
                Height = 21
                Ctl3D = True
                DataField = 'PDVD8PLACAVEIC'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit8: TDBEdit
                Left = 347
                Top = 51
                Width = 85
                Height = 21
                Ctl3D = True
                DataField = 'PDVDINROTALAO'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 6
              end
              object DBEdit13: TDBEdit
                Left = 259
                Top = 51
                Width = 85
                Height = 21
                Ctl3D = True
                DataField = 'PDVDN2VLROUTRASDESP'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 5
              end
              object DBEdit11: TDBEdit
                Left = 469
                Top = 51
                Width = 85
                Height = 21
                Ctl3D = True
                DataField = 'PDVDN2VLRMONTAGEM'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit12: TDBEdit
                Left = 560
                Top = 51
                Width = 85
                Height = 21
                Ctl3D = True
                DataField = 'PDVDN2VLRIMPERMEAB'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 8
              end
            end
            object TabItens: TTabSheet
              Caption = 'Itens'
              ImageIndex = 2
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 788
                Height = 114
                Align = alTop
                BevelWidth = 3
                Color = 16249066
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label13: TLabel
                  Left = 6
                  Top = 31
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
                  Left = 404
                  Top = 31
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
                object AcessaProduto: TSpeedButton
                  Left = 54
                  Top = 44
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
                object Label9: TLabel
                  Left = 465
                  Top = 31
                  Width = 46
                  Height = 13
                  Caption = 'Unidade'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label30: TLabel
                  Left = 495
                  Top = 74
                  Width = 85
                  Height = 13
                  Caption = 'Valor Desconto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEditQuantidade: TDBEdit
                  Left = 394
                  Top = 45
                  Width = 52
                  Height = 21
                  Ctl3D = True
                  DataField = 'PVITN3QUANT'
                  DataSource = DSSQLPedidoVendaItem
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
                object DBEditUnitario: TDBEdit
                  Left = 547
                  Top = 45
                  Width = 66
                  Height = 21
                  Ctl3D = True
                  DataField = 'PVITN2VLRUNIT'
                  DataSource = DSSQLPedidoVendaItem
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
                object BTItemNovo: TBitBtn
                  Left = 658
                  Top = 30
                  Width = 125
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
                  Left = 658
                  Top = 57
                  Width = 62
                  Height = 29
                  Caption = 'Gravar Item'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnClick = BtItemGravarClick
                end
                object BtItemExcluir: TBitBtn
                  Left = 721
                  Top = 57
                  Width = 62
                  Height = 29
                  Caption = 'Excluir Item'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  OnClick = BtItemExcluirClick
                end
                object Panel7: TPanel
                  Left = 3
                  Top = 3
                  Width = 782
                  Height = 27
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelInner = bvLowered
                  BevelOuter = bvNone
                  BevelWidth = 2
                  Color = clBlack
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -21
                  Font.Name = 'Times New Roman'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 9
                  object AdvOfficeStatusBar1: TAdvOfficeStatusBar
                    Left = 2
                    Top = 2
                    Width = 778
                    Height = 23
                    AnchorHint = False
                    Align = alClient
                    Panels = <
                      item
                        AppearanceStyle = psLight
                        DateFormat = 'mm/dd/yyyy'
                        Progress.BackGround = clNone
                        Progress.Indication = piPercentage
                        Progress.Min = 0
                        Progress.Max = 100
                        Progress.Position = 0
                        Progress.Level0Color = clLime
                        Progress.Level0ColorTo = 14811105
                        Progress.Level1Color = clYellow
                        Progress.Level1ColorTo = 13303807
                        Progress.Level2Color = 5483007
                        Progress.Level2ColorTo = 11064319
                        Progress.Level3Color = clRed
                        Progress.Level3ColorTo = 13290239
                        Progress.Level1Perc = 70
                        Progress.Level2Perc = 90
                        Progress.BorderColor = clBlack
                        Progress.ShowBorder = False
                        Progress.Stacked = False
                        TimeFormat = 'hh:mm:ss'
                        Width = 50
                      end>
                    SimplePanel = False
                    SizeGrip = False
                    URLColor = clBlue
                    Styler = AdvOfficeStatusBarOfficeStyler1
                    Version = '1.3.0.2'
                    object SaldoAtual: TLabel
                      Left = 669
                      Top = 2
                      Width = 10
                      Height = 19
                      Alignment = taRightJustify
                      Caption = '0'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -16
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      Transparent = True
                    end
                    object LSaldo: TLabel
                      Left = 501
                      Top = 5
                      Width = 78
                      Height = 13
                      Caption = 'Estoque Atual'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      Transparent = True
                    end
                    object DBText1: TDBText
                      Left = 375
                      Top = 5
                      Width = 52
                      Height = 13
                      DataField = 'PDVDN2PERCMIX'
                      DataSource = DSTemplate
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      Transparent = True
                    end
                    object Label16: TLabel
                      Left = 421
                      Top = 5
                      Width = 13
                      Height = 13
                      Caption = '%'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      Transparent = True
                    end
                    object Label14: TLabel
                      Left = 314
                      Top = 5
                      Width = 52
                      Height = 13
                      Caption = 'Mix Total'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = [fsBold]
                      ParentFont = False
                      Transparent = True
                    end
                    object LblNomeSistema: TRxLabel
                      Left = 8
                      Top = 0
                      Width = 165
                      Height = 23
                      Caption = 'Lan'#231'amento de Itens'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -19
                      Font.Name = 'Impact'
                      Font.Style = []
                      ParentFont = False
                      ShadowColor = 15195349
                      ShadowPos = spRightBottom
                      Transparent = True
                    end
                  end
                end
                object EditCdProduto: TEdit
                  Left = 5
                  Top = 45
                  Width = 48
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
                object DBEditObs: TDBEdit
                  Left = 5
                  Top = 89
                  Width = 388
                  Height = 21
                  Ctl3D = True
                  DataField = 'PDVDA255OBS1'
                  DataSource = DSSQLPedidoVendaItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 6
                end
                object ComboUnidade: TRxDBLookupCombo
                  Left = 447
                  Top = 45
                  Width = 99
                  Height = 21
                  DropDownCount = 8
                  Ctl3D = True
                  DataField = 'UNIDICOD'
                  DataSource = DSSQLPedidoVendaItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'UNIDICOD'
                  LookupDisplay = 'UNIDA15DESCR'
                  LookupSource = dsSQLUnidade2
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object DBEdit14: TDBEdit
                  Left = 80
                  Top = 45
                  Width = 312
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'DescricaoProduto'
                  DataSource = DSSQLPedidoVendaItem
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
                object ckObsItens: TCheckBox
                  Left = 5
                  Top = 76
                  Width = 121
                  Height = 11
                  TabStop = False
                  Caption = 'Usar Observa'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 5
                  OnClick = ckObsItensClick
                end
                object DBEditBonificacao: TDBEdit
                  Left = 395
                  Top = 89
                  Width = 93
                  Height = 21
                  Ctl3D = True
                  DataField = 'PVITN3QTDBONIF'
                  DataSource = DSSQLPedidoVendaItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 12
                end
                object ckBonificacao: TCheckBox
                  Left = 395
                  Top = 76
                  Width = 96
                  Height = 11
                  TabStop = False
                  Caption = 'Q.Bonifica'#231#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 11
                  OnClick = ckBonificacaoClick
                end
                object btCalcMix: TBitBtn
                  Left = 658
                  Top = 86
                  Width = 125
                  Height = 22
                  Caption = 'Calcular Mix'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 13
                  OnClick = btCalcMixClick
                end
                object ckVendaUnit: TCheckBox
                  Left = 547
                  Top = 32
                  Width = 57
                  Height = 11
                  TabStop = False
                  Caption = 'V.Unit'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 14
                  OnClick = ckVendaUnitClick
                end
                object DBEdit1: TDBEdit
                  Left = 493
                  Top = 89
                  Width = 93
                  Height = 21
                  Ctl3D = True
                  DataField = 'PVITN2VLRDESC'
                  DataSource = DSSQLPedidoVendaItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 15
                end
              end
              object DBGridItens: TDBGrid
                Left = 0
                Top = 114
                Width = 788
                Height = 83
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                Ctl3D = True
                DataSource = DSSQLPedidoVendaItem
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
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = DBGridListaDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PVITIITEM'
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
                    Width = 45
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN3QUANT'
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
                    FieldName = 'DescricaoProduto'
                    Title.Caption = 'Descri'#231#227'o'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 281
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UnidadeLookup'
                    Title.Caption = 'Unidade'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 51
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN2VLRUNIT'
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
                    FieldName = 'PVITN2PERCDESC'
                    Title.Caption = '%Desc'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 46
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN2VLRDESC'
                    Title.Caption = 'Vlr.Desc'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 63
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TotalItemLiq'
                    Title.Caption = 'V.Unit Liq'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN3TOTVENDITEM'
                    Title.Alignment = taCenter
                    Title.Caption = 'Total Item'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PVITN3QTDBONIF'
                    Title.Caption = 'Qtde. Bonif.'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODCMIX'
                    Title.Caption = 'Mix'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODN3PESOBRUTO'
                    Title.Caption = 'Peso'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CdBarras'
                    Title.Caption = 'Cod Barras'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWhite
                    Title.Font.Height = -11
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Visible = True
                  end>
              end
            end
            object TabFinanceiro: TTabSheet
              Caption = 'Financeiro'
              ImageIndex = 3
              object Panel8: TPanel
                Left = 0
                Top = 0
                Width = 788
                Height = 197
                Align = alClient
                BevelWidth = 3
                Color = 16249066
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label22: TLabel
                  Left = 10
                  Top = 42
                  Width = 42
                  Height = 13
                  Caption = 'Parcela'
                  FocusControl = EditParc
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label23: TLabel
                  Left = 66
                  Top = 42
                  Width = 67
                  Height = 13
                  Caption = 'Vencimento'
                  FocusControl = DTVencto
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label26: TLabel
                  Left = 184
                  Top = 42
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
                object Label28: TLabel
                  Left = 9
                  Top = 80
                  Width = 59
                  Height = 13
                  Caption = 'Numer'#225'rio'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label29: TLabel
                  Left = 9
                  Top = 120
                  Width = 208
                  Height = 13
                  Caption = 'Observa'#231#227'o para o Contas a Receber'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Panel9: TPanel
                  Left = 3
                  Top = 3
                  Width = 782
                  Height = 30
                  Align = alTop
                  Alignment = taLeftJustify
                  BevelInner = bvLowered
                  BevelOuter = bvNone
                  BevelWidth = 2
                  Color = 10053171
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -21
                  Font.Name = 'Times New Roman'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object AdvOfficeStatusBar2: TAdvOfficeStatusBar
                    Left = 2
                    Top = 2
                    Width = 778
                    Height = 26
                    AnchorHint = False
                    Align = alClient
                    Panels = <
                      item
                        AppearanceStyle = psLight
                        DateFormat = 'mm/dd/yyyy'
                        Progress.BackGround = clNone
                        Progress.Indication = piPercentage
                        Progress.Min = 0
                        Progress.Max = 100
                        Progress.Position = 0
                        Progress.Level0Color = clLime
                        Progress.Level0ColorTo = 14811105
                        Progress.Level1Color = clYellow
                        Progress.Level1ColorTo = 13303807
                        Progress.Level2Color = 5483007
                        Progress.Level2ColorTo = 11064319
                        Progress.Level3Color = clRed
                        Progress.Level3ColorTo = 13290239
                        Progress.Level1Perc = 70
                        Progress.Level2Perc = 90
                        Progress.BorderColor = clBlack
                        Progress.ShowBorder = False
                        Progress.Stacked = False
                        TimeFormat = 'hh:mm:ss'
                        Width = 50
                      end>
                    SimplePanel = False
                    SizeGrip = False
                    URLColor = clBlue
                    Styler = AdvOfficeStatusBarOfficeStyler1
                    Version = '1.3.0.2'
                    object RxLabel1: TRxLabel
                      Left = 8
                      Top = 2
                      Width = 195
                      Height = 23
                      Caption = 'Lan'#231'amento de Parcelas'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clBlack
                      Font.Height = -19
                      Font.Name = 'Impact'
                      Font.Style = []
                      ParentFont = False
                      ShadowColor = 15195349
                      ShadowPos = spRightBottom
                      Transparent = True
                    end
                  end
                end
                object EditParc: TDBEdit
                  Left = 7
                  Top = 55
                  Width = 48
                  Height = 21
                  DataField = 'CTRCINROPARC'
                  DataSource = DSSQLContasReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object DTVencto: TDBDateEdit
                  Left = 62
                  Top = 55
                  Width = 110
                  Height = 21
                  Cursor = crHandPoint
                  DataField = 'CTRCDVENC'
                  DataSource = DSSQLContasReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  NumGlyphs = 2
                  ParentFont = False
                  TabOrder = 3
                end
                object EvDBNumEdit5: TEvDBNumEdit
                  Left = 179
                  Top = 55
                  Width = 132
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'CTRCN2VLR'
                  DataSource = DSSQLContasReceber
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
                  TabOrder = 4
                end
                object ComboNumerario: TRxDBLookupCombo
                  Left = 59
                  Top = 93
                  Width = 253
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DataField = 'NUMEICOD'
                  DataSource = DSSQLContasReceber
                  DisplayEmpty = '...'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  LookupField = 'NUMEICOD'
                  LookupDisplay = 'NUMEA30DESCR'
                  LookupDisplayIndex = 1
                  LookupSource = DSSQLNumerario
                  ParentFont = False
                  TabOrder = 6
                end
                object DBEdit18: TDBEdit
                  Left = 5
                  Top = 93
                  Width = 51
                  Height = 21
                  DataField = 'NUMEICOD'
                  DataSource = DSSQLContasReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object BTParcNovo: TBitBtn
                  Left = 316
                  Top = 92
                  Width = 50
                  Height = 22
                  Caption = 'Novo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnClick = BTParcNovoClick
                end
                object BtParcGravar: TBitBtn
                  Left = 366
                  Top = 92
                  Width = 50
                  Height = 22
                  Caption = 'Gravar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  OnClick = BtParcGravarClick
                end
                object BtParcExcluir: TBitBtn
                  Left = 416
                  Top = 92
                  Width = 50
                  Height = 22
                  Caption = 'Excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                  OnClick = BtParcExcluirClick
                end
                object DBGrid2: TDBGrid
                  Left = 469
                  Top = 33
                  Width = 316
                  Height = 161
                  TabStop = False
                  Align = alRight
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSSQLContasReceber
                  FixedColor = 10053171
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines]
                  ParentFont = False
                  TabOrder = 10
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWhite
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = [fsBold]
                  OnDrawColumnCell = DBGridListaDrawColumnCell
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'CTRCINROPARC'
                      ReadOnly = True
                      Title.Caption = 'Parc'
                      Width = 30
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CTRCDVENC'
                      Title.Caption = 'Dt.Vencto'
                      Width = 59
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CTRCN2VLR'
                      Title.Caption = 'Valor'
                      Width = 81
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Numerario'
                      Title.Caption = 'Numer'#225'rio'
                      Width = 108
                      Visible = True
                    end>
                end
                object DBMemo2: TDBMemo
                  Left = 4
                  Top = 133
                  Width = 456
                  Height = 48
                  BevelWidth = 0
                  Ctl3D = True
                  DataField = 'CTRCA254HIST'
                  DataSource = DSSQLContasReceber
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 8
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 222
            Width = 796
            Height = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 796
            Height = 222
            object Label2: TLabel
              Left = 10
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
            object Label3: TLabel
              Left = 97
              Top = 3
              Width = 24
              Height = 13
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 192
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
            object Label5: TLabel
              Left = 261
              Top = 3
              Width = 66
              Height = 13
              Caption = 'Vlr Tot Prod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 339
              Top = 3
              Width = 74
              Height = 13
              Caption = 'Vlr Desc Prod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 485
              Top = 3
              Width = 64
              Height = 13
              Caption = 'Vlr Tot. Ped'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 423
              Top = 3
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
            object Label8: TLabel
              Left = 146
              Top = 3
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
            object Label32: TLabel
              Left = 566
              Top = 3
              Width = 23
              Height = 13
              Caption = 'Imp'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 628
              Top = 3
              Width = 59
              Height = 13
              Caption = 'Peso Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 716
              Top = 3
              Width = 48
              Height = 13
              Caption = 'Validade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBDateEdit
              Left = 6
              Top = 16
              Width = 86
              Height = 20
              DataField = 'PDVDDEMISSAO'
              DataSource = DSTemplate
              Ctl3D = True
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 0
              YearDigits = dyFour
            end
            object ComboTipo: TRxDBComboBox
              Left = 94
              Top = 16
              Width = 47
              Height = 21
              Style = csDropDownList
              Ctl3D = True
              DataField = 'PDVDCTIPO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Ped'
                'Or'#231)
              ParentCtl3D = False
              TabOrder = 1
              Values.Strings = (
                'P'
                'O')
            end
            object Combostatus: TRxDBComboBox
              Left = 189
              Top = 16
              Width = 69
              Height = 21
              Style = csDropDownList
              Ctl3D = True
              DataField = 'PDVDCSTATUS'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberto'
                'Encerrado'
                'Cancelado'
                'Faturado'
                'Orig.Parcial'
                'Pendente')
              ParentCtl3D = False
              TabOrder = 3
              Values.Strings = (
                'A'
                'E'
                'C'
                'F'
                'P'
                'T')
            end
            object ComboSerie: TRxDBLookupCombo
              Left = 143
              Top = 16
              Width = 44
              Height = 20
              DropDownCount = 8
              Ctl3D = True
              DataField = 'SERIA5COD'
              DataSource = DSTemplate
              LookupField = 'SERIA5COD'
              LookupDisplay = 'SERIA5COD'
              LookupSource = DSSQLSerie
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit16: TDBEdit
              Left = 420
              Top = 16
              Width = 63
              Height = 21
              Ctl3D = True
              DataField = 'PDVDN2VLRDESCPROM'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit3: TDBEdit
              Left = 260
              Top = 16
              Width = 74
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'PDVDN2TOTPROD'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit4: TDBEdit
              Left = 337
              Top = 16
              Width = 80
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'PDVDN2VLRDESC'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit5: TDBEdit
              Left = 485
              Top = 16
              Width = 77
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'PDVDN2TOTPED'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
            end
            object GroupCliente: TGroupBox
              Left = 0
              Top = 37
              Width = 796
              Height = 62
              Align = alBottom
              Caption = ' Dados do Cliente '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              object BtnCliente: TSpeedButton
                Left = 501
                Top = 13
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
              object BTNRecalcularPedido: TSpeedButton
                Left = 659
                Top = 10
                Width = 110
                Height = 25
                Caption = '&Recalcular'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Glyph.Data = {
                  5A010000424D5A01000000000000760000002800000012000000130000000100
                  040000000000E4000000CE0E0000C40E00001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777778877777
                  7777770000007777844877777777770000007778444487777777770000007784
                  4444487777777700000078444C4444877777770000007444C4C4448777777700
                  00007C4C444C444877777700000078C44444C4448777770000008444C4444C44
                  487777000000444C7C4448C4448777000000C4C777C4448C4448770000007C77
                  777C4448C4448700000077777777C4448C4487000000777777777C4448C44700
                  00007777777777C4448C7700000077777777777C444877000000777777777777
                  C448770000007777777777777C447700000077777777777777C777000000}
                ParentFont = False
                OnClick = BTNRecalcularPedidoClick
              end
              object Label1: TLabel
                Left = 225
                Top = 40
                Width = 31
                Height = 13
                Caption = 'email'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label19: TLabel
                Left = 6
                Top = 40
                Width = 27
                Height = 13
                Caption = 'Fone'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit6: TDBEdit
                Left = 6
                Top = 14
                Width = 100
                Height = 21
                Ctl3D = True
                DataField = 'CLIEA13ID'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                OnExit = DBEdit6Exit
                OnKeyDown = DBEdit6KeyDown
              end
              object ComboTipoPrecoVenda: TRxDBComboBox
                Left = 527
                Top = 14
                Width = 119
                Height = 21
                Style = csDropDownList
                Ctl3D = False
                DataField = 'CLIECTPPRCVENDA'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Varejo'
                  'Atacado 1'
                  'Atacado 2'
                  'Atacado 3')
                ParentCtl3D = False
                TabOrder = 2
                Values.Strings = (
                  'V'
                  'A1'
                  'A2'
                  'A3')
              end
              object DBEditNomeCliente: TDBEdit
                Left = 114
                Top = 14
                Width = 383
                Height = 21
                Ctl3D = True
                DataField = 'CLIENTENOME'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
                OnKeyDown = DBEditNomeClienteKeyDown
              end
              object DBEdit19: TDBEdit
                Left = 261
                Top = 37
                Width = 383
                Height = 21
                CharCase = ecLowerCase
                Ctl3D = True
                DataField = 'CLIENTEEMAIL'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
                OnExit = DBEdit6Exit
                OnKeyDown = DBEdit6KeyDown
              end
              object DBEdit20: TDBEdit
                Left = 42
                Top = 37
                Width = 178
                Height = 21
                Ctl3D = True
                DataField = 'CLIENTEFONE'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 4
                OnExit = DBEdit6Exit
                OnKeyDown = DBEdit6KeyDown
              end
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 565
              Top = 16
              Width = 62
              Height = 21
              Style = csDropDownList
              Ctl3D = True
              DataField = 'PDVDCIMPORTADO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ParentCtl3D = False
              TabOrder = 8
              Values.Strings = (
                'S'
                'N')
            end
            object GrupoVendedorRota: TGroupBox
              Left = 0
              Top = 99
              Width = 796
              Height = 41
              Align = alBottom
              Caption = 
                ' Vendedor                                                       ' +
                '                            Rota '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
              object DBEdit15: TDBEdit
                Left = 6
                Top = 15
                Width = 37
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
                TabOrder = 0
              end
              object ComboVendedor: TRxDBLookupCombo
                Left = 45
                Top = 16
                Width = 256
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'VENDICOD'
                DataSource = DSTemplate
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
                TabOrder = 1
              end
              object DBEdit7: TDBEdit
                Left = 311
                Top = 15
                Width = 37
                Height = 21
                Ctl3D = True
                DataField = 'ROTAICOD'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
              end
              object ComboRota: TRxDBLookupCombo
                Left = 351
                Top = 16
                Width = 298
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'ROTAICOD'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'ROTAICOD'
                LookupDisplay = 'ROTAA60NOME'
                LookupSource = DSSQLRota
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 3
              end
            end
            object GrupoPlanoTransp: TGroupBox
              Left = 0
              Top = 181
              Width = 796
              Height = 41
              Align = alBottom
              Caption = 
                ' Transportadora                                                 ' +
                '                                   Motorista '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
              object BtnTransportadora: TSpeedButton
                Left = 306
                Top = 14
                Width = 22
                Height = 21
                Hint = 'Acesso ao Cadastro de Transportadoras'
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
              object DBEdit10: TDBEdit
                Left = 6
                Top = 14
                Width = 37
                Height = 21
                Ctl3D = True
                DataField = 'TRANICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 0
              end
              object ComboTransp: TRxDBLookupCombo
                Left = 46
                Top = 15
                Width = 256
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'TRANICOD'
                DataSource = DSTemplate
                LookupField = 'TRANICOD'
                LookupDisplay = 'TRANA60RAZAOSOC'
                LookupSource = DSSQLTransportadora
                ParentCtl3D = False
                TabOrder = 1
              end
              object ComboVeiculo: TRxDBLookupCombo
                Left = 352
                Top = 15
                Width = 296
                Height = 20
                DropDownCount = 8
                DisplayAllFields = True
                Ctl3D = True
                DataField = 'VEICA13ID'
                DataSource = DSTemplate
                LookupField = 'VEICA13ID'
                LookupDisplay = 'VEICA3OMOTORISTA;VEICA7PLACA'
                LookupSource = DSSQLVeiculo
                ParentCtl3D = False
                TabOrder = 2
                OnExit = ComboVeiculoExit
              end
            end
            object GroupPlano: TGroupBox
              Left = 0
              Top = 140
              Width = 796
              Height = 41
              Align = alBottom
              Caption = ' Novo Plano de Recebimento '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 11
              object ComboPlanoRecto: TRxDBLookupCombo
                Left = 45
                Top = 16
                Width = 603
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'PLRCICOD'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'PLRCICOD'
                LookupDisplay = 'PLRCA60DESCR'
                LookupSource = DSSQLPlanoRecebimento
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit17: TDBEdit
                Left = 6
                Top = 15
                Width = 37
                Height = 21
                Ctl3D = True
                DataField = 'PLRCICOD'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object DBEdit21: TDBEdit
              Left = 628
              Top = 16
              Width = 81
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'PESOTOTAL'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 13
            end
            object DBDateEdit1: TDBDateEdit
              Left = 712
              Top = 16
              Width = 84
              Height = 21
              DataField = 'DATA_VALIDADE'
              DataSource = DSTemplate
              Ctl3D = True
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 14
              YearDigits = dyFour
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnCancelarPedidodeVenda: TMenuItem
      Caption = '&Cancelar Pedido de Venda'
      OnClick = MnCancelarPedidodeVendaClick
    end
    object MnCalcularFinanceiro: TMenuItem
      Caption = '&Calcular Financeiro'
      Visible = False
    end
    object mnGerarOS: TMenuItem
      Caption = 'Gerar OS'
      Visible = False
      OnClick = mnGerarOSClick
    end
    object MnTrrocarVendedoreRotaPadrao: TMenuItem
      Caption = 'Trocar dados padr'#245'es para digita'#231#227'o dos Pedidos'
      OnClick = MnTrrocarVendedoreRotaPadraoClick
    end
    object MnTrocarStatusdoPedidoparaFaturado: TMenuItem
      Caption = 'Trocar Status do Pedido para Faturado'
      OnClick = MnTrocarStatusdoPedidoparaFaturadoClick
    end
    object MnTrocarStatusdoPedidoparaAberto: TMenuItem
      Caption = 'Trocar Status do Pedido para Aberto'
      OnClick = MnTrocarStatusdoPedidoparaAbertoClick
    end
    object MNGerarPedidoParcial: TMenuItem
      Caption = 'Gerar Pedido com Entrega Parcial'
      OnClick = MNGerarPedidoParcialClick
    end
    object MnIgualarSaldoaEntregarcomoSaldoPedido: TMenuItem
      Caption = 'Igualar Saldo a Entregar com o Saldo Pedido'
      OnClick = MnIgualarSaldoaEntregarcomoSaldoPedidoClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CorrigeNomesdeClientesVazios1: TMenuItem
      Caption = 'Corrige Nomes de Clientes Vazios'
      OnClick = CorrigeNomesdeClientesVazios1Click
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object ImprimirPedidodeVenda1: TMenuItem
      Caption = 'Or'#231'amento / Pedido  Atual'
      OnClick = ImprimirPedidodeVenda1Click
    end
    object MnVisualizarPedidoOrcamentoAtual: TMenuItem
      Caption = 'Visualizar Pedido / Or'#231'amento Atual'
      OnClick = MnVisualizarPedidoOrcamentoAtualClick
    end
    object MnPedidoOramentoemSequencia: TMenuItem
      Caption = 'Pedido / Or'#231'amento em Sequencia'
      OnClick = MnPedidoOramentoemSequenciaClick
    end
    object PedidoOramentocomComposioCabecalho: TMenuItem
      Caption = 'Pedido / Or'#231'amento com Composi'#231#227'o - Com cabe'#231'alho'
    end
    object PedidoOramentocomComposicaoSemcabealho: TMenuItem
      Caption = 'Pedido / Or'#231'amento com Composi'#231#227'o - Sem cabe'#231'alho'
    end
    object OrdemdeServio1: TMenuItem
      Caption = '&Ordem de Servi'#231'o'
      OnClick = OrdemdeServio1Click
    end
    object EtiquetasdeCdigodeBarras1: TMenuItem
      Caption = '&Etiquetas de C'#243'digo de Barras'
      OnClick = EtiquetasdeCdigodeBarras1Click
    end
    object PedidoEspecialPic1: TMenuItem
      Caption = 'Pedido Especial - Pic'
    end
    object PedidoTotais1: TMenuItem
      Caption = 'Pedido Totais'
      OnClick = PedidoTotais1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    SQL.Strings = (
      'Select * From PEDIDOVENDA Where (%MFiltro) and (%MSituacao)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSituacao'
        ParamType = ptInput
        Value = '0=0'
      end>
    object SQLTemplatePDVDA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Pedido'
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDA.PDVDA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PEDIDOVENDA.EMPRICOD'
    end
    object SQLTemplatePDVDICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PDVDICOD'
      Origin = 'DB.PEDIDOVENDA.PDVDICOD'
    end
    object SQLTemplateVENDICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.PEDIDOVENDA.VENDICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PEDIDOVENDA.CLIEA13ID'
      OnChange = SQLTemplateCLIEA13IDChange
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTRANICOD: TIntegerField
      DisplayLabel = 'Transportadora'
      FieldName = 'TRANICOD'
      Origin = 'DB.PEDIDOVENDA.TRANICOD'
    end
    object SQLTemplatePLRCICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Plano'
      FieldName = 'PLRCICOD'
      Origin = 'DB.PEDIDOVENDA.PLRCICOD'
    end
    object SQLTemplatePDVDDEMISSAO: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'PDVDDEMISSAO'
      Origin = 'DB.PEDIDOVENDA.PDVDDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplatePDVDN2VLRFRETE: TFloatField
      DisplayLabel = 'Vlr Frete'
      FieldName = 'PDVDN2VLRFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRFRETE'
      OnChange = SQLTemplatePDVDN2VLRDESCPROMChange
    end
    object SQLTemplatePDVDA30NROPEDCOMP: TStringField
      FieldName = 'PDVDA30NROPEDCOMP'
      Origin = 'DB.PEDIDOVENDA.PDVDA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePDVDA30COMPRADOR: TStringField
      DisplayLabel = 'Comprador'
      FieldName = 'PDVDA30COMPRADOR'
      Origin = 'DB.PEDIDOVENDA.PDVDA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePDVDCTIPO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo'
      FieldName = 'PDVDCTIPO'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDCSTATUS: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Status'
      FieldName = 'PDVDCSTATUS'
      Origin = 'DB.PEDIDOVENDA.PDVDCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDN2VLRDESC: TFloatField
      DisplayLabel = 'Vlr Desconto'
      FieldName = 'PDVDN2VLRDESC'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESC'
      OnChange = SQLTemplatePDVDN2VLRDESCPROMChange
    end
    object SQLTemplatePDVDN2TOTPROD: TFloatField
      DisplayLabel = 'Tot Produtos'
      FieldName = 'PDVDN2TOTPROD'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPROD'
      Visible = False
      OnChange = SQLTemplatePDVDN2VLRDESCPROMChange
    end
    object SQLTemplatePDVDN2TOTPED: TFloatField
      DisplayLabel = 'Tot. Pedido'
      FieldName = 'PDVDN2TOTPED'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPED'
      Visible = False
    end
    object SQLTemplatePDVDTOBS: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PDVDTOBS'
      Origin = 'DB.PEDIDOVENDA.PDVDTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDA.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDN2VLRDESCPROM: TFloatField
      FieldName = 'PDVDN2VLRDESCPROM'
      OnChange = SQLTemplatePDVDN2VLRDESCPROMChange
    end
    object SQLTemplatePDVDINROTALAO: TIntegerField
      DisplayLabel = 'Nro.Pedido Tal'#227'o'
      FieldName = 'PDVDINROTALAO'
      Origin = 'DB.PEDIDOVENDA.PDVDINROTALAO'
    end
    object SQLTemplatePDVDCTIPOFRETE: TStringField
      FieldName = 'PDVDCTIPOFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDDENTREGA: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Entrega'
      FieldName = 'PDVDDENTREGA'
      Origin = 'DB.PEDIDOVENDA.PDVDDENTREGA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplateEmpresaLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaLookUp'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateVendedorLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'VendedorLookUp'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePlanoRecebimentoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PlanoRecebimentoLookUp'
      LookupDataSet = SQLPlanoRecebimento
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'PLRCICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplatePDVDN2PERCFAT: TFloatField
      DisplayLabel = '% '#192' Faturar'
      FieldName = 'PDVDN2PERCFAT'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCFAT'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplatePDVDN2PERCOMIS: TFloatField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'PDVDN2PERCOMIS'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCOMIS'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateUSUAA60LOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.PEDIDOVENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.PEDIDOVENDA.ROTAICOD'
    end
    object SQLTemplatePDVDCIMPORTADO: TStringField
      FieldName = 'PDVDCIMPORTADO'
      Origin = 'DB.PEDIDOVENDA.PDVDCIMPORTADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateSERIA5COD: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIA5COD'
      Origin = 'DB.PEDIDOVENDA.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.PEDIDOVENDA.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateNOFIAOBSCORPONF: TStringField
      FieldName = 'NOFIAOBSCORPONF'
      Origin = 'DB.PEDIDOVENDA.NOFIAOBSCORPONF'
      FixedChar = True
      Size = 200
    end
    object SQLTemplatePDVD8PLACAVEIC: TStringField
      FieldName = 'PDVD8PLACAVEIC'
      Origin = 'DB.PEDIDOVENDA.PDVD8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLTemplatePDVDA15NROPEDPALM: TStringField
      FieldName = 'PDVDA15NROPEDPALM'
      Origin = 'DB.PEDIDOVENDA.PDVDA15NROPEDPALM'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.PEDIDOVENDA.OPESICOD'
    end
    object SQLTemplatePDVDN2VLROUTRASDESP: TFloatField
      FieldName = 'PDVDN2VLROUTRASDESP'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLROUTRASDESP'
    end
    object SQLTemplatePDVDN2VLRIMPERMEAB: TFloatField
      FieldName = 'PDVDN2VLRIMPERMEAB'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRIMPERMEAB'
    end
    object SQLTemplatePDVDN2VLRMONTAGEM: TFloatField
      FieldName = 'PDVDN2VLRMONTAGEM'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRMONTAGEM'
    end
    object SQLTemplatePDVDN2PERCMIX: TFloatField
      FieldName = 'PDVDN2PERCMIX'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCMIX'
      DisplayFormat = '##0.00'
    end
    object SQLTemplateCLIECTPPRCVENDA: TStringField
      FieldName = 'CLIECTPPRCVENDA'
      Origin = 'DB.PEDIDOVENDA.CLIECTPPRCVENDA'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCLIENTENOME: TStringField
      DisplayLabel = 'Nome Orcamento'
      FieldName = 'CLIENTENOME'
      Origin = 'DB.PEDIDOVENDA.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIENTEFONE: TStringField
      DisplayLabel = 'Fone Orcamento'
      FieldName = 'CLIENTEFONE'
      Origin = 'DB.PEDIDOVENDA.CLIENTEFONE'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCLIENTEEMAIL: TStringField
      DisplayLabel = 'Email Orcamento'
      FieldName = 'CLIENTEEMAIL'
      Origin = 'DB.PEDIDOVENDA.CLIENTEEMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePESOTOTAL: TFloatField
      FieldName = 'PESOTOTAL'
      Origin = 'DB.PEDIDOVENDA.PESOTOTAL'
    end
    object SQLTemplateDATA_VALIDADE: TDateTimeField
      FieldName = 'DATA_VALIDADE'
      Origin = 'DB.PEDIDOVENDA.DATA_VALIDADE'
    end
    object SQLTemplateTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PEDIDOVENDA.TERMICOD'
    end
  end
  object SQLEmpresa: TTable
    DatabaseName = 'DB'
    TableName = 'EMPRESA'
    Left = 867
    Top = 164
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 830
    Top = 430
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '* '
      'From'
      'Vendedor')
    Macros = <>
    Left = 802
    Top = 430
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
    end
    object SQLVendedorVENDN2COMISP: TFloatField
      FieldName = 'VENDN2COMISP'
      Origin = 'DB.VENDEDOR.VENDN2COMISP'
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
    end
    object SQLVendedorVENDN2PERCIRRF: TFloatField
      FieldName = 'VENDN2PERCIRRF'
      Origin = 'DB.VENDEDOR.VENDN2PERCIRRF'
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 830
    Top = 459
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  CLIEA13ID, CLIEA60RAZAOSOC, CLIECTPPRCVENDA '
      'FROM'
      '  CLIENTE'
      'ORDER BY'
      '  CLIEA60RAZAOSOC')
    Macros = <>
    Left = 802
    Top = 459
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
    object SQLClienteCLIECTPPRCVENDA: TStringField
      FieldName = 'CLIECTPPRCVENDA'
      Origin = 'DB.CLIENTE.CLIECTPPRCVENDA'
      FixedChar = True
      Size = 1
    end
  end
  object FormStorage1: TFormStorage
    StoredProps.Strings = (
      'RadioConsultaCodigo.ItemIndex')
    StoredValues = <>
    Left = 448
    Top = 1
  end
  object SQLRota: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ROTA'
      'Order by ROTAA60NOME')
    Macros = <>
    Left = 785
    Top = 164
    object SQLRotaROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.ROTA.ROTAICOD'
    end
    object SQLRotaROTAA60NOME: TStringField
      FieldName = 'ROTAA60NOME'
      Origin = 'DB.ROTA.ROTAA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLRota: TDataSource
    DataSet = SQLRota
    Left = 813
    Top = 164
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PlanoRecebimento'
      'Order by PLRCA60DESCR')
    Macros = <>
    Left = 856
    Top = 220
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
    object SQLPlanoRecebimentoPLRCN2TXJURO: TFloatField
      FieldName = 'PLRCN2TXJURO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXJURO'
    end
    object SQLPlanoRecebimentoPLRCN2TXMULTA: TFloatField
      FieldName = 'PLRCN2TXMULTA'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXMULTA'
    end
    object SQLPlanoRecebimentoPLRCN2TXCRED: TFloatField
      FieldName = 'PLRCN2TXCRED'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2TXCRED'
    end
    object SQLPlanoRecebimentoPLRCN2PERCDESC: TFloatField
      FieldName = 'PLRCN2PERCDESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCDESC'
    end
    object SQLPlanoRecebimentoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLPlanoRecebimentoPLRCDFIXDVENC: TIntegerField
      FieldName = 'PLRCDFIXDVENC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCDFIXDVENC'
    end
    object SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCN2PERCENTR: TFloatField
      FieldName = 'PLRCN2PERCENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCENTR'
    end
    object SQLPlanoRecebimentoPLRCN2DESC: TFloatField
      FieldName = 'PLRCN2DESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2DESC'
    end
    object SQLPlanoRecebimentoPLRCCATIVO: TStringField
      FieldName = 'PLRCCATIVO'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANORECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANORECEBIMENTO.REGISTRO'
    end
    object SQLPlanoRecebimentoPLRCCIMPDESCRNF: TStringField
      FieldName = 'PLRCCIMPDESCRNF'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCIMPDESCRNF'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCN5FATOR: TFloatField
      FieldName = 'PLRCN5FATOR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATOR'
    end
    object SQLPlanoRecebimentoPLRCN5FATORPARC: TFloatField
      FieldName = 'PLRCN5FATORPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN5FATORPARC'
    end
    object SQLPlanoRecebimentoPLRCN2PERCACRESC: TFloatField
      FieldName = 'PLRCN2PERCACRESC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCN2PERCACRESC'
    end
  end
  object DSSQLPlanoRecebimento: TDataSource
    DataSet = SQLPlanoRecebimento
    Left = 885
    Top = 220
  end
  object SQLPedidoVendaItem: TRxQuery
    OnCalcFields = SQLPedidoVendaItemCalcFields
    OnNewRecord = SQLPedidoVendaItemNewRecord
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'Select * From PEDIDOVENDAITEM  '
      'Where'
      'PDVDA13ID = :PDVDA13ID '
      'Order by  PVITIITEM asc')
    Macros = <>
    Left = 65
    Top = 428
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLPedidoVendaItemPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaItemPVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITIITEM'
    end
    object SQLPedidoVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PEDIDOVENDAITEM.PRODICOD'
      OnChange = SQLPedidoVendaItemPRODICODChange
    end
    object SQLPedidoVendaItemPVITN2VLRUNIT: TFloatField
      FieldName = 'PVITN2VLRUNIT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRUNIT'
      OnChange = SQLPedidoVendaItemPVITN2VLRUNITChange
    end
    object SQLPedidoVendaItemPVITN3QUANT: TFloatField
      FieldName = 'PVITN3QUANT'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANT'
      OnChange = SQLPedidoVendaItemUNIDICODChange
    end
    object SQLPedidoVendaItemPVITN3QTDBONIF: TFloatField
      FieldName = 'PVITN3QTDBONIF'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QTDBONIF'
    end
    object SQLPedidoVendaItemPVITN2PERCDESC: TFloatField
      FieldName = 'PVITN2PERCDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCDESC'
    end
    object SQLPedidoVendaItemPVITN2VLRDESC: TFloatField
      FieldName = 'PVITN2VLRDESC'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2VLRDESC'
    end
    object SQLPedidoVendaItemPVITN3QUANTVEND: TFloatField
      FieldName = 'PVITN3QUANTVEND'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3QUANTVEND'
    end
    object SQLPedidoVendaItemPVITN2PERCCOMIS: TFloatField
      FieldName = 'PVITN2PERCCOMIS'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN2PERCCOMIS'
    end
    object SQLPedidoVendaItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDAITEM.REGISTRO'
    end
    object SQLPedidoVendaItemPVITN3TOTVENDITEM: TFloatField
      FieldName = 'PVITN3TOTVENDITEM'
      Origin = 'DB.PEDIDOVENDAITEM.PVITN3TOTVENDITEM'
    end
    object SQLPedidoVendaItemPDVDA255OBS1: TStringField
      FieldName = 'PDVDA255OBS1'
      Origin = 'DB.PEDIDOVENDAITEM.PDVDA255OBS1'
      FixedChar = True
      Size = 255
    end
    object SQLPedidoVendaItemUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PEDIDOVENDAITEM.UNIDICOD'
      OnChange = SQLPedidoVendaItemUNIDICODChange
    end
    object SQLPedidoVendaItemUnidadeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadeLookup'
      LookupDataSet = SQLUnidade
      LookupKeyFields = 'UNIDICOD'
      LookupResultField = 'UNIDA5DESCR'
      KeyFields = 'UNIDICOD'
      Size = 15
      Lookup = True
    end
    object SQLPedidoVendaItemDescricaoProduto: TStringField
      DisplayLabel = 'Descri'#231#227'o Produto'
      FieldKind = fkCalculated
      FieldName = 'DescricaoProduto'
      Size = 60
      Calculated = True
    end
    object SQLPedidoVendaItemPRODCMIX: TStringField
      FieldName = 'PRODCMIX'
      Origin = 'DB.PEDIDOVENDAITEM.PRODCMIX'
      FixedChar = True
      Size = 1
    end
    object SQLPedidoVendaItemTotalItemLiq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItemLiq'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object SQLPedidoVendaItemPRODN3PESOBRUTO: TFloatField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.PEDIDOVENDAITEM.PRODN3PESOBRUTO'
    end
    object SQLPedidoVendaItemCdBarras: TStringField
      FieldKind = fkCalculated
      FieldName = 'CdBarras'
      Calculated = True
    end
  end
  object DSSQLPedidoVendaItem: TDataSource
    DataSet = SQLPedidoVendaItem
    OnStateChange = DSSQLPedidoVendaItemStateChange
    Left = 94
    Top = 428
  end
  object SQLPedidoItens: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'Select * From PEDIDOVENDAITEM '
      'Where PDVDA13ID = :PDVDA13ID ')
    Macros = <>
    Left = 417
    Top = 464
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
  end
  object SQLSerie: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Serie')
    Macros = <>
    Left = 785
    Top = 192
    object SQLSerieSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLSerie: TDataSource
    DataSet = SQLSerie
    Left = 813
    Top = 192
  end
  object SQLTransportadora: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Transportadora')
    Macros = <>
    Left = 785
    Top = 220
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
  object DSSQLTransportadora: TDataSource
    DataSet = SQLTransportadora
    Left = 813
    Top = 220
  end
  object SQLVeiculo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Veiculo')
    Macros = <>
    Left = 785
    Top = 248
    object SQLVeiculoVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.VEICULO.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVeiculoVEICA7PLACA: TStringField
      FieldName = 'VEICA7PLACA'
      Origin = 'DB.VEICULO.VEICA7PLACA'
      FixedChar = True
      Size = 7
    end
    object SQLVeiculoVEICA60DESCR: TStringField
      FieldName = 'VEICA60DESCR'
      Origin = 'DB.VEICULO.VEICA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLVeiculoVEICA3OMOTORISTA: TStringField
      FieldName = 'VEICA3OMOTORISTA'
      Origin = 'DB.VEICULO.VEICA3OMOTORISTA'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLVeiculo: TDataSource
    DataSet = SQLVeiculo
    Left = 813
    Top = 248
  end
  object SQLContasReceber: TRxQuery
    Tag = 3
    BeforePost = SQLContasReceberBeforePost
    OnCalcFields = SQLContasReceberCalcFields
    OnNewRecord = SQLContasReceberNewRecord
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'CONTASRECEBER'
      'Where'
      'PDVDA13ID = :PDVDA13ID'
      'order by'
      'CTRCICOD ')
    Macros = <>
    Left = 683
    Top = 463
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'PDVDA13ID'
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
    object SQLContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
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
    object SQLContasReceberPLCTA15COD: TStringField
      DisplayLabel = 'Conta Cr'#233'dito'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
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
    object SQLContasReceberNumerario: TStringField
      FieldKind = fkCalculated
      FieldName = 'Numerario'
      Size = 30
      Calculated = True
    end
  end
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 711
    Top = 463
  end
  object DSSQLObsNota: TDataSource
    DataSet = SQLObsNota
    Left = 164
    Top = 465
  end
  object SQLObsNota: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From OBSNF')
    Macros = <>
    Left = 136
    Top = 465
    object SQLObsNotaOBSNICOD: TIntegerField
      FieldName = 'OBSNICOD'
      Origin = 'DB.OBSNF.OBSNICOD'
    end
    object SQLObsNotaNOFIA50DESC: TStringField
      FieldName = 'NOFIA50DESC'
      Origin = 'DB.OBSNF.NOFIA50DESC'
      Size = 50
    end
    object SQLObsNotaOBSNA255DESC: TMemoField
      FieldName = 'OBSNA255DESC'
      Origin = 'DB.OBSNF.OBSNA255DESC'
      BlobType = ftMemo
      Size = 1
    end
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    Macros = <>
    Left = 528
    Top = 2
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 567
    Top = 2
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
    OpcoesPreview.CaptionPreview = 'Impressao Pedido'
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
    Acentuacao = SemAcento
    CaptionSetup = 'Setup'
    TitulodoRelatorio = 'Impressao Prevenda'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
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
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 100
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S12cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 66
    Top = 472
  end
  object dsSQLUnidade2: TDataSource
    DataSet = SQLUnidade2
    Left = 613
    Top = 463
  end
  object SQLUnidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Unidade')
    Macros = <>
    Left = 552
    Top = 464
    object SQLUnidadeUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
    end
    object SQLUnidadeUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLUnidadeUNIDA15DESCR: TStringField
      FieldName = 'UNIDA15DESCR'
      Origin = 'DB.UNIDADE.UNIDA15DESCR'
      FixedChar = True
      Size = 15
    end
    object SQLUnidadeUNIDN3FATORCONV: TFloatField
      FieldName = 'UNIDN3FATORCONV'
      Origin = 'DB.UNIDADE.UNIDN3FATORCONV'
    end
  end
  object SQLUnidade2: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Unidade'
      'Where '
      '%Filtro')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 585
    Top = 463
    object SQLUnidade2UNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
    end
    object SQLUnidade2UNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLUnidade2UNIDA15DESCR: TStringField
      FieldName = 'UNIDA15DESCR'
      Origin = 'DB.UNIDADE.UNIDA15DESCR'
      FixedChar = True
      Size = 15
    end
    object SQLUnidade2UNIDCFRAC: TStringField
      FieldName = 'UNIDCFRAC'
      Origin = 'DB.UNIDADE.UNIDCFRAC'
      FixedChar = True
      Size = 1
    end
    object SQLUnidade2UNIDN3FATORCONV: TFloatField
      FieldName = 'UNIDN3FATORCONV'
      Origin = 'DB.UNIDADE.UNIDN3FATORCONV'
    end
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM NUMERARIO'
      'WHERE '
      '(NUMEA5TIPO = '#39'CRT'#39') or'
      '(NUMEA5TIPO = '#39'CHQV'#39') or'
      '(NUMEA5TIPO = '#39'CHQP'#39') or'
      '(NUMEA5TIPO = '#39'CRD'#39')')
    Macros = <>
    Left = 886
    Top = 248
    object SQLNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioNUMECVISTAPRAZO: TStringField
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMECATIVO: TStringField
      FieldName = 'NUMECATIVO'
      Origin = 'DB.NUMERARIO.NUMECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLNumerario
    Left = 858
    Top = 248
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
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
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
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
    Left = 744
    Top = 48
  end
end
