inherited FormTelaBaixarDocumentosReceber: TFormTelaBaixarDocumentosReceber
  Left = 79
  Top = 101
  Width = 1197
  Height = 572
  Caption = 'Baixar Documentos '#224' Receber'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1181
    Height = 518
    inherited PanelCentral: TPanel
      Top = 67
      Width = 1177
      Height = 447
      inherited PanelBarra: TPanel
        Width = 0
        Height = 447
      end
      object PanelFundoBxDocREc: TPanel
        Left = 0
        Top = 0
        Width = 1177
        Height = 447
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object PanelTopBxDocREc: TPanel
          Left = 0
          Top = 0
          Width = 1177
          Height = 217
          Align = alTop
          BevelOuter = bvNone
          Color = 16249066
          TabOrder = 0
          object Label1: TLabel
            Left = 2
            Top = 5
            Width = 49
            Height = 13
            Caption = 'Empresa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 2
            Top = 43
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
          object Label3: TLabel
            Left = 4
            Top = 120
            Width = 130
            Height = 13
            Caption = 'Per'#237'odo de Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 97
            Top = 136
            Width = 19
            Height = 13
            Caption = 'at'#233
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 216
            Top = 121
            Width = 61
            Height = 13
            Caption = 'Data Baixa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 474
            Top = 118
            Width = 105
            Height = 13
            Caption = 'Total Vencimentos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 604
            Top = 118
            Width = 100
            Height = 13
            Caption = 'Total Selecionado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Mensagem: TLabel
            Left = 737
            Top = 23
            Width = 62
            Height = 13
            Caption = 'Mensagem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 2
            Top = 80
            Width = 50
            Height = 13
            Caption = 'Portador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 204
            Top = 80
            Width = 109
            Height = 13
            Caption = 'Tipo de Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 409
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
          object Label17: TLabel
            Left = 327
            Top = 121
            Width = 114
            Height = 13
            Caption = 'Valor do Pagamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object De: TDateEdit
            Left = 3
            Top = 134
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 2
          end
          object Ate: TDateEdit
            Left = 120
            Top = 134
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 3
          end
          object DtBaixa: TDateEdit
            Left = 214
            Top = 134
            Width = 90
            Height = 21
            DefaultToday = True
            NumGlyphs = 2
            TabOrder = 4
          end
          object ComboEmpresa: TRxDBLookupCombo
            Left = 2
            Top = 20
            Width = 593
            Height = 21
            DropDownCount = 8
            DisplayEmpty = 'Todas'
            LookupField = 'EMPRICOD'
            LookupDisplay = 'EMPRA60RAZAOSOC'
            LookupSource = DSSQLEmpresa
            TabOrder = 0
          end
          object ComboCliente: TRxDBLookupCombo
            Left = 2
            Top = 57
            Width = 593
            Height = 21
            DropDownCount = 8
            LookupField = 'CLIEA13ID'
            LookupDisplay = 'CLIEA60RAZAOSOC'
            LookupSource = DSSQLCliente
            TabOrder = 1
          end
          object TotalContas: TCurrencyEdit
            Left = 474
            Top = 134
            Width = 121
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 16249066
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object CheckVencimento: TCheckBox
            Left = 4
            Top = 158
            Width = 237
            Height = 17
            Caption = 'Desconsiderar per'#237'odo de vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = CheckVencimentoClick
          end
          object TotalContasSelecionadas: TCurrencyEdit
            Left = 604
            Top = 134
            Width = 121
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 16249066
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object ComboPortador: TRxDBLookupCombo
            Left = 2
            Top = 94
            Width = 200
            Height = 21
            DropDownCount = 8
            LookupField = 'PORTICOD'
            LookupDisplay = 'PORTA60DESCR'
            LookupSource = DSSQLPortador
            TabOrder = 9
          end
          object ComboTipoDoc: TRxDBLookupCombo
            Left = 204
            Top = 94
            Width = 200
            Height = 21
            DropDownCount = 8
            LookupField = 'TPDCICOD'
            LookupDisplay = 'TPDCA60DESCR'
            LookupSource = DSSQLTipoDoc
            TabOrder = 10
          end
          object RadioOrdem: TRadioGroup
            Left = 602
            Top = 14
            Width = 124
            Height = 101
            Caption = ' Ordenar Por'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemIndex = 2
            Items.Strings = (
              'Cliente'
              'Emiss'#227'o'
              'Vencimento'
              'Valor')
            ParentFont = False
            TabOrder = 11
          end
          object GroupBox1: TGroupBox
            Left = 2
            Top = 174
            Width = 724
            Height = 40
            Caption = 'Ao Baixar Substituir Por'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
            object Label10: TLabel
              Left = 4
              Top = 22
              Width = 50
              Height = 13
              Caption = 'Portador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 353
              Top = 22
              Width = 68
              Height = 13
              Caption = 'Tipo de Doc.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboPortadorBaixa: TRxDBLookupCombo
              Left = 56
              Top = 14
              Width = 290
              Height = 21
              DropDownCount = 8
              LookupField = 'PORTICOD'
              LookupDisplay = 'PORTA60DESCR'
              LookupSource = DSSQLPortador
              TabOrder = 0
            end
            object ComboTipoDocBaixa: TRxDBLookupCombo
              Left = 424
              Top = 14
              Width = 290
              Height = 21
              DropDownCount = 8
              LookupField = 'TPDCICOD'
              LookupDisplay = 'TPDCA60DESCR'
              LookupSource = DSSQLTipoDoc
              TabOrder = 1
            end
          end
          object ComboNumerario: TRxDBLookupCombo
            Left = 406
            Top = 94
            Width = 188
            Height = 21
            DropDownCount = 8
            LookupField = 'NUMEICOD'
            LookupDisplay = 'NUMEA30DESCR'
            LookupSource = DSSQLNumerario
            TabOrder = 13
          end
          object ValorPagto: TCurrencyEdit
            Left = 324
            Top = 134
            Width = 122
            Height = 21
            AutoSize = False
            TabOrder = 5
            OnExit = ValorPagtoExit
          end
          object CheckJuros: TCheckBox
            Left = 324
            Top = 160
            Width = 233
            Height = 17
            Caption = 'Calcular Juros Automaticamente'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 14
          end
          object TitulosNaoEncontrados: TMemo
            Left = 736
            Top = 48
            Width = 334
            Height = 165
            Lines.Strings = (
              'TitulosNaoEncontrados')
            TabOrder = 15
            Visible = False
          end
        end
        object GroupLegenda: TGroupBox
          Left = 0
          Top = 410
          Width = 1177
          Height = 37
          Align = alBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Shape1: TShape
            Left = 6
            Top = 12
            Width = 20
            Height = 20
            Brush.Color = clRed
          end
          object Label12: TLabel
            Left = 29
            Top = 19
            Width = 100
            Height = 13
            Caption = '- Contas Vencidas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 173
            Top = 19
            Width = 134
            Height = 13
            Caption = '- Contas Vencendo Hoje'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Shape2: TShape
            Left = 150
            Top = 12
            Width = 20
            Height = 20
            Brush.Color = clBlack
          end
          object Label14: TLabel
            Left = 350
            Top = 19
            Width = 99
            Height = 13
            Caption = '- Contas '#224' Vencer'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Shape3: TShape
            Left = 327
            Top = 12
            Width = 20
            Height = 20
            Brush.Color = clGreen
          end
          object Shape4: TShape
            Left = 464
            Top = 12
            Width = 20
            Height = 20
            Brush.Color = clMaroon
          end
          object Label15: TLabel
            Left = 487
            Top = 19
            Width = 108
            Height = 13
            Caption = '- Cr'#233'dito de Cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DBGridLista: TDBGrid
          Left = 0
          Top = 217
          Width = 1177
          Height = 193
          Align = alClient
          BorderStyle = bsNone
          DataSource = DSTblRecebimento
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete]
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGridListaCellClick
          OnColEnter = DBGridListaColEnter
          OnColExit = DBGridListaColExit
          OnDrawColumnCell = DBGridListaDrawColumnCell
          OnKeyDown = DBGridListaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'DtVencimento'
              ReadOnly = True
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClienteNome'
              ReadOnly = True
              Title.Caption = 'Cliente / Historico'
              Width = 248
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Documento'
              ReadOnly = True
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NroDuplicBanco'
              ReadOnly = True
              Title.Caption = 'Nosso Numero'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Parcela'
              ReadOnly = True
              Width = 26
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'Valor'
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'ValorJuro'
              Width = 47
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'ValorMulta'
              Width = 47
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'ValorDesconto'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Baixar'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorTotal'
              ReadOnly = True
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Emissao'
              ReadOnly = True
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorOriginal'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorADMCartoes'
              Title.Caption = 'Vlr Liq Cart'#245'es'
              Visible = True
            end>
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 1177
      Height = 67
      inherited PanelCabecalho: TPanel
        Width = 1177
        Height = 66
        inherited PanelNavigator: TPanel
          Top = 34
          Width = 1177
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 1177
            inherited BtnFecharTela: TSpeedButton
              Left = 1055
            end
            object BtnSelecionarDoc: TSpeedButton
              Tag = 3
              Left = 2
              Top = 4
              Width = 100
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Selecionar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                96040000424D9604000000000000360000002800000012000000140000000100
                18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
                B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
                A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
                00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
                9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
                E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
                B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
                0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
                86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
                B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
                000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
                9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
                E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
                B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
                9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
                A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
                869000000084A8B469869000000084A8B4698690000000698690546B73000000
                000000000000000000000000000000000000000099B7C069869000000084A8B4
                546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
                000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
                86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000AAC3CA698690000000000000
                0000000000000000000000000000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
                E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              Spacing = 3
              OnClick = BtnSelecionarDocClick
            end
            object BtnBaixarDocSimples: TSpeedButton
              Tag = 3
              Left = 106
              Top = 4
              Width = 100
              Height = 25
              Cursor = crHandPoint
              Hint = 'Baixar Documentos'
              Caption = '&Baixar (Simples)'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                92050000424D860900000000000036080000280000000C0000000E0000000100
                1000030000005001000000000000000000000001000000000000007C0000E003
                00001F00000000000000A7C2B300588C7000719D85004D7B620086AB9700436C
                56009EBDA2007497780084AC88004A765E006685690055886D00518268005080
                660056896D003E634F00FFFFFF00000000000000000000000000000000000000
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
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F00000C320000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B042
                B0420000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B0420A3687250000FF7F
                FF7FFF7FFF7FFF7FFF7F0000B042B0420932E9310000FF7FFF7FFF7FFF7FFF7F
                0000B042B0420C3200000A36A7290000FF7FFF7FFF7FFF7F0000B0424E3A0000
                0000C82D2A360000FF7FFF7FFF7F0000B042B04200000000FF7F00002A36A729
                0000FF7FFF7F0000F34E4E3A0000FF7FFF7F00006D422A360000FF7FFF7FFF7F
                00000000FF7FFF7FFF7FFF7F00006D42A7290000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F0000B04A2A360000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                6D42E92D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000014572A360000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7F}
              ParentFont = False
              Spacing = 3
              OnClick = BtnBaixarDocSimplesClick
            end
            object BtnBaixarDocIntegrado: TSpeedButton
              Tag = 3
              Left = 209
              Top = 4
              Width = 149
              Height = 25
              Cursor = crHandPoint
              Hint = 'Baixar Documentos'
              Caption = 'Baixar (&Integrado)'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                42010000424D4201000000000000760000002800000011000000110000000100
                040000000000CC00000000000000000000001000000010000000000000000000
                BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777700000007777777777777777700000007777777774F77777700000007777
                7777444F77777000000077777774444F777770000000700000444F44F7777000
                000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
                74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
                8777F07777774000000070FFFF00007777777000000070F88707077777777000
                000070FFFF007777777770000000700000077777777770000000777777777777
                777770000000}
              ParentFont = False
              Spacing = 3
              OnClick = BtnBaixarDocIntegradoClick
            end
            object ButtonBaixaEmite: TSpeedButton
              Tag = 3
              Left = 361
              Top = 4
              Width = 118
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = 'Baixar c/ &Recibo'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                FA0D0000424DFA11000000000000360800002800000019000000190000000100
                200000000000C409000000000000000000000001000000000000000000004000
                00006000000080000000A0000000C0000000E0000000FF000000008000004080
                00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
                000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
                000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
                40006000400080004000A0004000C0004000E0004000FF004000008040004080
                40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
                400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
                400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
                60006000600080006000A0006000C0006000E0006000FF006000008060004080
                60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
                600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
                600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
                80006000800080008000A0008000C0008000E0008000FF008000008080004080
                80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
                800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
                800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
                A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
                A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
                A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
                A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
                C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
                C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
                C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
                C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
                E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
                E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
                E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
                E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
                FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
                FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
                FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
                FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
                000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C0000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C0000000000000FFFF00FF000000FF000000FF000000FF000000FF00
                0000FF000000FF000000FF000000FF000000FF00000000FFFF0000000000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000A0000000A0000000A000
                0000C0C0C000C0C0C0000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
                FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
                000000000000000000000000000000000000000000000000000000000000FF00
                0000FF000000C0C0C000C0C0C0000000000000FFFF00FF000000FF000000FF00
                0000FF000000FF000000A0C0A000A0C0A000A0C0A000A0C0A000A0C0A00000C0
                A000A0C0A00000C0A00000C0A000A0C0A000A0C0A000A0C0A00000C0A000A0C0
                A00000000000FF000000C0C0C000C0C0C0000000000000FFFF0000FFFF0000FF
                FF0000FFFF00FFFF000000000000000000000000000000000000000000000000
                0000A0C0A00000C0A000A0C0A00000C0A000A0C0A00000C0A000A0C0A000A0C0
                A000A0C0A00000000000FF000000C0C0C000C0C0C0000000000000FFFF00FF00
                0000FF000000FF00000000FFFF0000000000FFFF0000A000000000000000E0FF
                E00000000000A0C0A000A0C0A00000C0A000A0C0A00000C0A000A0C0A000A0C0
                A00000C0A000A0C0A00000000000FF000000C0C0C000C0C0C000C0C0C0000000
                000000FFFF0000FFFF0000FFFF00000000000000000000C0A000FFFF0000A000
                00000000000000000000A0C0A00000C0A000A0C0A00000C0A000A0C0A00000C0
                A000A0C0A000A0C0A0000000000000000000A0000000C0C0C000C0C0C000C0C0
                C000C0C0C000000000000000000000000000C0C0C00000000000E0FFE000E0FF
                E000FFFF0000A0000000A0000000A0C0A000A0C0A000A0C0A000A0C0A00000C0
                A000A0C0A0000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
                000000C0A00000C0A000FFFF0000A000000000000000A0C0A00000C0A00000C0
                A000A0C0A00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C00000000000E0FFE00000C0A000FFFF0000A000000000000000A0C0
                A000A0C0A00000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C00000000000E0FFE00000C0A000FFFF0000A000
                0000A000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
                0000FFFF0000A0000000A0000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000FFFF0000A0000000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
                C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
              ParentFont = False
              Spacing = 3
              OnClick = ButtonBaixaEmiteClick
            end
            object SpeedButton1: TSpeedButton
              Tag = 3
              Left = 483
              Top = 4
              Width = 86
              Height = 25
              Cursor = crHandPoint
              Hint = 'Baixar Documentos'
              Caption = '&Pesquisar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                F6000000424DF60000000000000076000000280000000E000000100000000100
                04000000000080000000CE0E0000C40E00001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777700
                77007777777774EC0700770000004ECC000077877774ECC77000778FFF4ECC7F
                70007780087CC7FF7000787E70887FFF70008FE7E707FFFF70008EFE7E0FFFFF
                70008FEFE70FFFFF700078FEF0FFFFFF700077880FFFFFFF7000778FFFFFFF00
                0000778FFFFFFF0F8700778FFFFFFF0877007788888888877700}
              ParentFont = False
              Spacing = 3
              OnClick = SpeedButton1Click
            end
            object LabelImpressao: TRxSpeedButton
              Left = 575
              Top = 4
              Width = 83
              Height = 25
              Cursor = crHandPoint
              DropDownMenu = PopupImp
              Caption = 'I&mprimir'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
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
              Spacing = 3
              Transparent = True
              WordWrap = True
            end
            object labelRetornoCob: TRxSpeedButton
              Left = 675
              Top = 4
              Width = 185
              Height = 25
              Cursor = crHandPoint
              DropDownMenu = PopupRetornoCob
              Caption = 'Importar Retorno Cobran'#231'a'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84B094247240186A
                3624724084B094FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB9090907373736F
                6F6F6A6A6A3E684D278B5263B98C94D1B163B98C278B5280AD91FFFFFFFFFFFF
                DEDEDEA1A1A1A2A2A2C5C4C3D8D3D2D3CECDD2CDCC206E3D61B98A5FB986FEFE
                FE5FB88666BB8E1F6F3CFFFFFFAFAFAFB2B2B2D3D3D3E0DEDEC4BEBCBCB4B2B8
                B0AFB8B0AD307A4B9BD3B5FEFEFEFEFEFEFEFEFE94D1B1186A36FFFFFFA1A1A1
                EFEFEFDFDFDFD3D1D1BDB5B4BBB4B3BAB3B1B9B1B047875F8FD2B091D5B0FEFE
                FE64BB8B66BB8E1F6F3CFFFFFFA7A7A7E9E9E9DCDCDCD4D3D2BFB8B6BDB6B5BC
                B5B3BAB3B285A08B60AA8094D3B3B9E5CF69BA8E2C8E5680AD91FFFFFFAEAEAE
                EAEAEADCDCDCD6D4D4C0BAB8BFB8B7BDB7B53AA04136933698B2A059926E4E8D
                6549896199BDA6FFFFFFFFFFFFB4B4B4EBEBEBDDDDDDD8D7D7C2BCBAC1BAB9C0
                B9B89FC7A34FA855D6D2D07D7D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABA
                EBEBEBDEDEDED9D8D8C5BEBDC3BDBBC2BBBAC0BAB8BFB8B7D6D2D2838383FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFEBEBEBDFDFDFDCDBDBC6C0BF9190908E
                8E8E8C8C8C898989D8D4D38A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5
                EEEEEEE0E0E0DCDCDCC7C2C1C7C1C0C5C0BEC4BEBDC2BCBAD9D5D4909090FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFCACACAE8E8E8E8E8E8E1E0E0CAC5C397969695
                9494939292919090DAD6D5979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1
                D0D0D0DEDEDEE9E9E9CEC9C8CAC5C4C9C3C2C7C2C0C6C0C0DBD8D79D9D9DFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDCDCDCDBDBDBE5E2E2E0DDDBDE
                DBDBDEDBDADDDADAEDEBEBA4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFDFDFDFC9C9C9C3C3C3BFBFBFBABABAB5B5B5AFAFAFC7C7C7FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              GrayedInactive = False
              Layout = blGlyphLeft
              Margin = 0
              MarkDropDown = False
              ParentFont = False
              Spacing = 3
              Transparent = True
              WordWrap = True
            end
          end
        end
      end
    end
  end
  object Progress: TProgressBar [1]
    Left = 0
    Top = 518
    Width = 1181
    Height = 16
    Align = alBottom
    Smooth = True
    TabOrder = 1
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CR.CTRCA13ID,'
      '  CR.EMPRICOD,'
      '  CR.TERMICOD,'
      '  CR.CLIEA13ID,'
      '  CR.CTRCCSTATUS,'
      '  CR.CTRCINROPARC,'
      '  CR.CTRCDVENC,'
      '  CR.CTRCDEMIS,'
      '  CR.CTRCN2VLR,'
      '  (CR.CTRCN2VLR - CR.CTRCN2TOTREC) as Saldo,'
      '  CR.CTRCN2DESCFIN,'
      '  CR.CTRCN2TOTREC,'
      '  CR.CTRCDULTREC,'
      '  CR.PORTICOD,'
      '  CR.CTRCA5TIPOPADRAO,'
      '  CR.CUPOA13ID,'
      '  CL.CLIEA60RAZAOSOC,'
      '  CR.NOFIA13ID,'
      '  CR.CTRCA30NRODUPLICBANCO,'
      '  CR.CTRCCTIPOREGISTRO,'
      '  CR.CTRCA254HIST,'
      '  CR.CTRCN2TXJURO,'
      '  CR.CTRCA15NOSSONUMERO,'
      '  CR.CTRCN2TOTJUROREC,'
      '  CR.CTRCN2TOTMULTAREC'
      'from'
      '  CONTASRECEBER CR, CLIENTE CL'
      'where'
      '  %MData   and'
      '  ((CR.CTRCCSTATUS <> '#39'C'#39') or (CR.CTRCCSTATUS is null)) and'
      '  (CR.CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) and'
      
        '  (CR.CTRCN2TOTREC    < CR.CTRCN2VLR or CR.CTRCN2TOTREC is null)' +
        ' and'
      '   CR.CLIEA13ID =  CL.CLIEA13ID and'
      '  (%MEmpresa) and'
      '  (%MCliente) and'
      '  (%MPortador) and'
      '  (%MTipoDoc) and'
      '  (%MNumerario) and'
      '  (%MDocumento)'
      'Order By'
      ' %MOrdem'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPortador'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoDoc'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNumerario'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDocumento'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = 'CR.CTRCA13ID'
      end>
    Left = 264
    Top = 5
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
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
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
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Size = 13
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCA15NOSSONUMERO: TStringField
      FieldName = 'CTRCA15NOSSONUMERO'
      Size = 15
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
    end
  end
  object SQLCliente: TRxQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  CLIEA13ID, CLIEA60RAZAOSOC, CLIEA14CGC, CLIEA11CPF'
      'from '
      '  CLIENTE'
      'where'
      '  %Cliente'
      'order by '
      '  CLIEA60RAZAOSOC')
    Macros = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 204
    Top = 5
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
    object SQLClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLClienteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 232
    Top = 5
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'where (%MEmpresa)'
      'order by EMPRA60RAZAOSOC')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 146
    Top = 5
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 174
    Top = 5
  end
  object TblRecebimento: TTable
    BeforePost = TblRecebimentoBeforePost
    AfterPost = TblRecebimentoAfterPost
    DatabaseName = 'Easy_Temp'
    TableName = 'ContasRecebimento.DB'
    Left = 383
    Top = 6
    object TblRecebimentoBaixar: TBooleanField
      FieldName = 'Baixar'
    end
    object TblRecebimentoCTRCA13ID: TStringField
      DisplayLabel = 'Conta Receber'
      FieldName = 'CTRCA13ID'
      Size = 13
    end
    object TblRecebimentoCLIEA13ID: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object TblRecebimentoDtVencimento: TDateTimeField
      DisplayLabel = 'Dt. Vcto'
      FieldName = 'DtVencimento'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TblRecebimentoClienteNome: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'ClienteNome'
      Size = 60
    end
    object TblRecebimentoParcela: TIntegerField
      DisplayLabel = 'Prc.'
      FieldName = 'Parcela'
    end
    object TblRecebimentoValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoValorJuro: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Juros'
      FieldName = 'ValorJuro'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
    end
    object TblRecebimentoValorMulta: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Multa'
      FieldName = 'ValorMulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
    end
    object TblRecebimentoValorDesconto: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Desc.'
      FieldName = 'ValorDesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
    end
    object TblRecebimentoValorTotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'ValorTotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoDocumento: TStringField
      FieldName = 'Documento'
      Size = 30
    end
    object TblRecebimentoEmissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Emissao'
    end
    object TblRecebimentoNroDuplicBanco: TStringField
      DisplayLabel = 'Nro. Duplic. Banco'
      FieldName = 'NroDuplicBanco'
      Size = 30
    end
    object TblRecebimentoValorOriginal: TFloatField
      DisplayLabel = 'Valor Original'
      FieldName = 'ValorOriginal'
      DisplayFormat = '#,##0.00'
    end
    object TblRecebimentoTipoRegistro: TStringField
      FieldName = 'TipoRegistro'
      Size = 1
    end
    object TblRecebimentoValorADMCartoes: TFloatField
      FieldName = 'ValorADMCartoes'
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
    end
  end
  object DSTblRecebimento: TDataSource
    DataSet = TblRecebimento
    Left = 355
    Top = 6
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'Easy_Temp'
    SQL.Strings = (
      'select '
      '  Sum(ValorTotal)  as Total '
      'from %tabela')
    Macros = <
      item
        DataType = ftString
        Name = 'tabela'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 444
    Top = 6
    object SQLTotalTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object SQLRecebimento: TRxQuery
    Tag = 1
    BeforePost = SQLRecebimentoBeforePost
    OnPostError = SQLRecebimentoPostError
    DatabaseName = 'DB'
    DataSource = DSTblRecebimento
    RequestLive = True
    SQL.Strings = (
      'select * from '
      'RECEBIMENTO'
      'where'
      'CTRCA13ID is null')
    Macros = <>
    Left = 292
    Top = 5
    object SQLRecebimentoCTRCA13ID: TStringField
      Tag = 1
      FieldName = 'CTRCA13ID'
      Origin = 'UNITGESTAO.RECEBIMENTO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoRECEICOD: TIntegerField
      Tag = 1
      FieldName = 'RECEICOD'
      Origin = 'UNITGESTAO.RECEBIMENTO.RECEICOD'
    end
    object SQLRecebimentoRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
      Origin = 'UNITGESTAO.RECEBIMENTO.RECEDRECTO'
    end
    object SQLRecebimentoRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'UNITGESTAO.RECEBIMENTO.RECEN2VLRRECTO'
    end
    object SQLRecebimentoRECEN2VLRJURO: TFloatField
      FieldName = 'RECEN2VLRJURO'
      Origin = 'UNITGESTAO.RECEBIMENTO.RECEN2VLRJURO'
    end
    object SQLRecebimentoRECEN2VLRMULTA: TFloatField
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'UNITGESTAO.RECEBIMENTO.RECEN2VLRMULTA'
    end
    object SQLRecebimentoRECEN2DESC: TFloatField
      FieldName = 'RECEN2DESC'
      Origin = 'UNITGESTAO.RECEBIMENTO.RECEN2DESC'
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
      Origin = 'UNITGESTAO.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
      Origin = 'UNITGESTAO.RECEBIMENTO.TERMICODREC'
    end
    object SQLRecebimentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'UNITGESTAO.RECEBIMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'UNITGESTAO.RECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'UNITGESTAO.RECEBIMENTO.REGISTRO'
    end
    object SQLRecebimentoRECEN2MULTACOBR: TFloatField
      FieldName = 'RECEN2MULTACOBR'
      Origin = 'UNITGESTAO.RECEBIMENTO.RECEN2MULTACOBR'
    end
    object SQLRecebimentoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.RECEBIMENTO.TERMICOD'
    end
    object SQLRecebimentoRECEA30HIST: TStringField
      FieldName = 'RECEA30HIST'
      Origin = 'DB.RECEBIMENTO.RECEA30HIST'
      FixedChar = True
      Size = 30
    end
    object SQLRecebimentoPLCTA15CREDITO: TStringField
      FieldName = 'PLCTA15CREDITO'
      Origin = 'DB.RECEBIMENTO.PLCTA15CREDITO'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15DEBITO: TStringField
      FieldName = 'PLCTA15DEBITO'
      Origin = 'DB.RECEBIMENTO.PLCTA15DEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODJUROCRED: TStringField
      FieldName = 'PLCTA15CODJUROCRED'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODJUROCRED'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODMULTCRED: TStringField
      FieldName = 'PLCTA15CODMULTCRED'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODMULTCRED'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODDESCCRED: TStringField
      FieldName = 'PLCTA15CODDESCCRED'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODDESCCRED'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODJURODEB: TStringField
      FieldName = 'PLCTA15CODJURODEB'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODJURODEB'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODMULTDEB: TStringField
      FieldName = 'PLCTA15CODMULTDEB'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODMULTDEB'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODDESCDEB: TStringField
      FieldName = 'PLCTA15CODDESCDEB'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODDESCDEB'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoRECEA254HISTORICO: TStringField
      FieldName = 'RECEA254HISTORICO'
      Origin = 'DB.RECEBIMENTO.RECEA254HISTORICO'
      Size = 254
    end
    object SQLRecebimentoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.RECEBIMENTO.TPLQICOD'
    end
    object SQLRecebimentoRECEDDATAMOV: TDateTimeField
      FieldName = 'RECEDDATAMOV'
      Origin = 'DB.RECEBIMENTO.RECEDDATAMOV'
    end
    object SQLRecebimentoCTRCA13IDCREDITO: TStringField
      FieldName = 'CTRCA13IDCREDITO'
      Origin = 'DB.RECEBIMENTO.CTRCA13IDCREDITO'
      FixedChar = True
      Size = 13
    end
  end
  object DSSQLRecebimento: TDataSource
    DataSet = SQLRecebimento
    Left = 320
    Top = 5
  end
  object FormStorage: TFormStorage
    Options = []
    StoredProps.Strings = (
      'CheckVencimento.Checked'
      'ComboEmpresa.LookupDisplay'
      'Ate.Enabled'
      'De.Enabled'
      'CheckJuros.Checked')
    StoredValues = <>
    Left = 475
    Top = 6
  end
  object TimerList1: TRxTimerList
    Left = 506
    Top = 6
  end
  object TableRecibo: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'ReciboTemp'
    Left = 596
    Top = 5
    object TableReciboRECIICOD: TAutoIncField
      FieldName = 'RECIICOD'
    end
    object TableReciboCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECIBO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TableReciboRECIN2VLRBRUTO: TFloatField
      FieldName = 'RECIN2VLRBRUTO'
      Origin = 'DB.RECIBO.RECIN2VLRBRUTO'
    end
    object TableReciboRECIN2VLRIRRF: TFloatField
      FieldName = 'RECIN2VLRIRRF'
      Origin = 'DB.RECIBO.RECIN2VLRIRRF'
    end
    object TableReciboRECIN2VLRLIQUIDO: TFloatField
      FieldName = 'RECIN2VLRLIQUIDO'
      Origin = 'DB.RECIBO.RECIN2VLRLIQUIDO'
    end
    object TableReciboRECIDEMISSAO: TDateTimeField
      FieldName = 'RECIDEMISSAO'
      Origin = 'DB.RECIBO.RECIDEMISSAO'
    end
    object TableReciboRECITOBS: TStringField
      FieldName = 'RECITOBS'
      Origin = 'DB.RECIBO.RECITOBS'
      Size = 255
    end
  end
  object QueryRecibo: TRxQuery
    Tag = 3
    BeforePost = QueryReciboBeforePost
    OnNewRecord = QueryReciboNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM RECIBO WHERE RECIA13ID IS NULL')
    Macros = <>
    Left = 680
    Top = 5
    object QueryReciboRECIA13ID: TStringField
      Tag = 2
      FieldName = 'RECIA13ID'
      Origin = 'DB.RECIBO.RECIA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryReciboEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.RECIBO.EMPRICOD'
    end
    object QueryReciboTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.RECIBO.TERMICOD'
    end
    object QueryReciboRECIICOD: TIntegerField
      Tag = 1
      FieldName = 'RECIICOD'
      Origin = 'DB.RECIBO.RECIICOD'
    end
    object QueryReciboCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECIBO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryReciboFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.RECIBO.FORNICOD'
    end
    object QueryReciboFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.RECIBO.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryReciboRECIN2VLRBRUTO: TFloatField
      FieldName = 'RECIN2VLRBRUTO'
      Origin = 'DB.RECIBO.RECIN2VLRBRUTO'
    end
    object QueryReciboRECIN2VLRIRRF: TFloatField
      FieldName = 'RECIN2VLRIRRF'
      Origin = 'DB.RECIBO.RECIN2VLRIRRF'
    end
    object QueryReciboRECIN2VLRLIQUIDO: TFloatField
      FieldName = 'RECIN2VLRLIQUIDO'
      Origin = 'DB.RECIBO.RECIN2VLRLIQUIDO'
    end
    object QueryReciboRECIDEMISSAO: TDateTimeField
      FieldName = 'RECIDEMISSAO'
      Origin = 'DB.RECIBO.RECIDEMISSAO'
    end
    object QueryReciboRECITOBS: TStringField
      FieldName = 'RECITOBS'
      Origin = 'DB.RECIBO.RECITOBS'
      Size = 255
    end
    object QueryReciboREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.RECIBO.REGISTRO'
    end
    object QueryReciboPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.RECIBO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object QueryReciboRECICTIPO: TStringField
      FieldName = 'RECICTIPO'
      Origin = 'DB.RECIBO.RECICTIPO'
      FixedChar = True
      Size = 1
    end
  end
  object QueryReciboConta: TRxQuery
    Tag = 1
    BeforePost = QueryReciboContaBeforePost
    OnNewRecord = QueryReciboContaNewRecord
    DatabaseName = 'DB'
    DataSource = DSQueryRecibo
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM RECIBOCONTA WHERE'
      'RECIA13ID IS NULL AND'
      'RECIA13ID=:RECIA13ID')
    Macros = <>
    Left = 736
    Top = 5
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RECIA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object QueryReciboContaRECIA13ID: TStringField
      Tag = 1
      FieldName = 'RECIA13ID'
      Origin = 'DB.RECIBOCONTA.RECIA13ID'
      FixedChar = True
      Size = 13
    end
    object QueryReciboContaRECOICOD: TIntegerField
      Tag = 1
      FieldName = 'RECOICOD'
      Origin = 'DB.RECIBOCONTA.RECOICOD'
    end
    object QueryReciboContaRECOA13DOCORIGEM: TStringField
      FieldName = 'RECOA13DOCORIGEM'
      Origin = 'DB.RECIBOCONTA.RECOA13DOCORIGEM'
      FixedChar = True
      Size = 13
    end
    object QueryReciboContaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.RECIBOCONTA.REGISTRO'
    end
    object QueryReciboContaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.RECIBOCONTA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object QueryReciboContaRECODBAIXA: TDateTimeField
      FieldName = 'RECODBAIXA'
      Origin = 'DB.RECIBOCONTA.RECODBAIXA'
    end
    object QueryReciboContaRECON2VLRBAIXA: TFloatField
      FieldName = 'RECON2VLRBAIXA'
      Origin = 'DB.RECIBOCONTA.RECON2VLRBAIXA'
    end
  end
  object DSQueryRecibo: TDataSource
    DataSet = QueryRecibo
    Left = 708
    Top = 5
  end
  object DSTableRecibo: TDataSource
    DataSet = TableRecibo
    Left = 624
    Top = 5
  end
  object TableReciboConta: TTable
    OnNewRecord = TableReciboContaNewRecord
    DatabaseName = 'Easy_Temp'
    IndexFieldNames = 'RECIICOD'
    MasterFields = 'RECIICOD'
    MasterSource = DSTableRecibo
    TableName = 'ReciboContaTemp'
    Left = 652
    Top = 5
    object TableReciboContaRECIICOD: TIntegerField
      FieldName = 'RECIICOD'
    end
    object TableReciboContaRECOICOD: TAutoIncField
      FieldName = 'RECOICOD'
    end
    object TableReciboContaRECOA13DOCORIGEM: TStringField
      FieldName = 'RECOA13DOCORIGEM'
      Origin = 'DB.RECIBOCONTA.RECOA13DOCORIGEM'
      FixedChar = True
      Size = 13
    end
    object TableReciboContaRECON2VLRBAIXA: TFloatField
      FieldName = 'RECON2VLRBAIXA'
      Origin = 'DB.RECIBOCONTA.RECON2VLRBAIXA'
    end
    object TableReciboContaRECODBAIXA: TDateTimeField
      FieldName = 'RECODBAIXA'
      Origin = 'DB.RECIBOCONTA.RECODBAIXA'
    end
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
    WindowState = wsMaximized
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
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
    Left = 536
    Top = 5
  end
  object PopupImp: TPopupMenu
    Left = 641
    Top = 51
    object odos1: TMenuItem
      Caption = '&Todos'
      OnClick = odos1Click
    end
    object Selecionados1: TMenuItem
      Caption = '&Selecionados'
      OnClick = Selecionados1Click
    end
  end
  object TblImpContasReceber: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'BaixaContasReceber'
    Left = 564
    Top = 5
    object TblImpContasReceberCTRCA13ID: TStringField
      DisplayLabel = 'Conta Receber'
      FieldName = 'CTRCA13ID'
      Size = 13
    end
    object TblImpContasReceberCLIEA13ID: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object TblImpContasReceberDtVencimento: TDateTimeField
      DisplayLabel = 'Dt. Vcto'
      FieldName = 'DtVencimento'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TblImpContasReceberClienteNome: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'ClienteNome'
      Size = 60
    end
    object TblImpContasReceberParcela: TIntegerField
      DisplayLabel = 'Prc.'
      FieldName = 'Parcela'
    end
    object TblImpContasReceberValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object TblImpContasReceberValorJuro: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Juros'
      FieldName = 'ValorJuro'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
    end
    object TblImpContasReceberValorMulta: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Multa'
      FieldName = 'ValorMulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
    end
    object TblImpContasReceberValorDesconto: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Desc.'
      FieldName = 'ValorDesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
      currency = True
    end
    object TblImpContasReceberValorTotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'ValorTotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '###0.00'
    end
    object TblImpContasReceberBaixar: TBooleanField
      FieldName = 'Baixar'
    end
    object TblImpContasReceberDocumento: TStringField
      FieldName = 'Documento'
      Size = 30
    end
    object TblImpContasReceberEmissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Emissao'
    end
    object TblImpContasReceberNroDuplicBanco: TStringField
      DisplayLabel = 'Nro. Duplic. Banco'
      FieldName = 'NroDuplicBanco'
      Size = 30
    end
  end
  object BatchMove: TBatchMove
    Left = 564
    Top = 33
  end
  object SQLTotalSelecionado: TRxQuery
    DatabaseName = 'Easy_Temp'
    SQL.Strings = (
      'select '
      '  Sum(ValorTotal)  as Total'
      'from '
      '  %tabela'
      'where'
      '  Baixar = True')
    Macros = <
      item
        DataType = ftString
        Name = 'tabela'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 411
    Top = 7
    object SQLTotalSelecionadoTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'PORTICOD,'
      'PORTA60DESCR'
      'FROM'
      'PORTADOR'
      'ORDER BY'
      'PORTA60DESCR')
    Macros = <>
    Left = 90
    Top = 5
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 118
    Top = 5
  end
  object SQLTipoDoc: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'TPDCICOD,'
      'TPDCA60DESCR'
      'FROM'
      'TIPODOCUMENTO'
      'ORDER BY'
      'TPDCA60DESCR')
    Left = 34
    Top = 5
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
  object DSSQLTipoDoc: TDataSource
    DataSet = SQLTipoDoc
    Left = 62
    Top = 5
  end
  object SQLNumerario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO'
      
        'where NUMECATIVO = '#39'S'#39' and NUMEA5TIPO <> '#39'CHQ'#39' and NUMEA5TIPO <>' +
        ' '#39'CHQV'#39' and NUMEA5TIPO <> '#39'CHQP'#39' and NUMEA5TIPO <> '#39'DIN'#39
      'order by NUMEA30DESCR')
    Left = 499
    Top = 157
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
    object SQLNumerarioNUMEN2TAXAADM: TFloatField
      FieldName = 'NUMEN2TAXAADM'
      Origin = 'DB.NUMERARIO.NUMEN2TAXAADM'
    end
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLNumerario
    Left = 527
    Top = 157
  end
  object PopupRetornoCob: TPopupMenu
    Left = 849
    Top = 43
    object mnBanrisul: TMenuItem
      Caption = 'Banrisul'
      OnClick = mnBanrisulClick
    end
    object mnSicredi: TMenuItem
      Caption = 'Sicredi'
      OnClick = mnSicrediClick
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Todos Arquivos *.*|*.*'
    InitialDir = 'C:\'
    Options = [ofHideReadOnly, ofShowHelp, ofFileMustExist, ofShareAware, ofNoNetworkButton, ofEnableSizing]
    Title = 'Anexar Arquivo'
    Left = 880
    Top = 42
  end
end
