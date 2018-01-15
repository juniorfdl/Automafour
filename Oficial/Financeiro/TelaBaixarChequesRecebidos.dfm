inherited FormTelaBaixarChequesRecebidos: TFormTelaBaixarChequesRecebidos
  Left = 492
  Top = 225
  Width = 831
  Height = 457
  Caption = 'Baixar Cheques Recebidos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 815
    Height = 419
    inherited PanelCentral: TPanel
      Width = 811
      Height = 335
      inherited PanelBarra: TPanel
        Width = 811
        Height = 256
        Align = alTop
        object Label1: TLabel
          Left = 380
          Top = 4
          Width = 39
          Height = 13
          Caption = '&Cliente'
          FocusControl = ComboCliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 380
          Top = 40
          Width = 50
          Height = 13
          Caption = '&Portador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 6
          Top = 40
          Width = 49
          Height = 13
          Caption = '&Situa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 6
          Top = 3
          Width = 49
          Height = 13
          Caption = '&Empresa'
          FocusControl = ComboEmpresa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboPortador: TRxDBLookupCombo
          Left = 377
          Top = 53
          Width = 370
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PORTICOD'
          LookupDisplay = 'PORTA60DESCR'
          LookupSource = DSSQLPortador
          ParentFont = False
          TabOrder = 3
        end
        object ComboAlinea: TRxDBLookupCombo
          Left = 3
          Top = 53
          Width = 370
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'ALINICOD'
          LookupDisplay = 'ALINA30DESCR'
          LookupSource = DSSQLAlinea
          ParentFont = False
          TabOrder = 2
        end
        object ComboCliente: TRxDBLookupCombo
          Left = 377
          Top = 17
          Width = 370
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          ParentFont = False
          TabOrder = 1
        end
        object ComboEmpresa: TRxDBLookupCombo
          Left = 3
          Top = 17
          Width = 370
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'EMPRICOD'
          LookupDisplay = 'EMPRA60NOMEFANT'
          LookupSource = DSSQLEmpresa
          ParentFont = False
          TabOrder = 0
        end
        object RadioData: TRadioGroup
          Left = 3
          Top = 74
          Width = 163
          Height = 51
          Caption = '&Data'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Vencto'
            'Emiss'#227'o'
            'Dep'#243'sito')
          ParentFont = False
          TabOrder = 4
        end
        object GroupPeriodo: TGroupBox
          Left = 168
          Top = 74
          Width = 584
          Height = 51
          TabOrder = 5
          object Label3: TLabel
            Left = 5
            Top = 11
            Width = 130
            Height = 13
            Caption = 'Per'#237'odo de &Vencimento'
            FocusControl = GroupPeriodo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 92
            Top = 28
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
            Left = 209
            Top = 11
            Width = 117
            Height = 13
            Caption = 'Data Baixa/Dep'#243'sito'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 470
            Top = 11
            Width = 61
            Height = 13
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object De: TDateEdit
            Left = 3
            Top = 24
            Width = 87
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 0
          end
          object Ate: TDateEdit
            Left = 113
            Top = 24
            Width = 87
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
          end
          object DtBaixa: TDateEdit
            Left = 206
            Top = 24
            Width = 119
            Height = 21
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 2
          end
          object TotalCheque: TCurrencyEdit
            Left = 468
            Top = 24
            Width = 106
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 14536396
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object GroupPadrao: TGroupBox
            Left = 332
            Top = 10
            Width = 130
            Height = 37
            Caption = '&Padr'#227'o '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object Padrao1: TRadioButton
              Left = 4
              Top = 16
              Width = 65
              Height = 17
              Caption = 'Baixado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object Padrao2: TRadioButton
              Left = 69
              Top = 16
              Width = 59
              Height = 17
              Caption = 'Aberto'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              TabStop = True
            end
          end
        end
        object GroupBanco: TGroupBox
          Left = 141
          Top = 164
          Width = 612
          Height = 89
          Caption = '&Informa'#231#245'es para Baixa(s) dos Cheque(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Visible = False
          object Label7: TLabel
            Left = 7
            Top = 15
            Width = 110
            Height = 13
            Caption = 'Opera'#231#227'o Bancaria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 8
            Top = 51
            Width = 86
            Height = 13
            Caption = 'Conta Corrente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 303
            Top = 14
            Width = 51
            Height = 13
            Caption = 'Hist'#243'rico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComboOperacaoBanco: TRxDBLookupCombo
            Left = 4
            Top = 28
            Width = 292
            Height = 21
            DropDownCount = 8
            LookupField = 'OPBCICOD'
            LookupDisplay = 'OPBCA60DESCR'
            LookupSource = DSSQLOperacaoBanco
            TabOrder = 0
          end
          object ComboContaCorrente: TRxDBLookupCombo
            Left = 4
            Top = 64
            Width = 292
            Height = 21
            DropDownCount = 8
            LookupField = 'CTCRICOD'
            LookupDisplay = 'CTCRA60TITULAR'
            LookupSource = DSSQLContaCorrente
            TabOrder = 1
          end
          object MemoHist: TMemo
            Left = 301
            Top = 27
            Width = 305
            Height = 58
            ScrollBars = ssVertical
            TabOrder = 2
          end
        end
        object GroupSituacao: TGroupBox
          Left = 141
          Top = 125
          Width = 611
          Height = 39
          Caption = ' Nova &Situa'#231#227'o do Cheque e Novo Portador '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          object ComboStatus: TRxDBLookupCombo
            Left = 4
            Top = 14
            Width = 292
            Height = 21
            DropDownCount = 8
            DisplayEmpty = 'Informe a nova Situa'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'ALINICOD'
            LookupDisplay = 'ALINA30DESCR'
            LookupSource = DSSQLStatusCheque
            ParentFont = False
            TabOrder = 0
          end
          object ComboPortadorNovo: TRxDBLookupCombo
            Left = 300
            Top = 13
            Width = 304
            Height = 21
            DropDownCount = 8
            DisplayEmpty = 'Informe o novo Portador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'PORTICOD'
            LookupDisplay = 'PORTA60DESCR'
            LookupSource = DSSQLPortadorNovo
            ParentFont = False
            TabOrder = 1
          end
        end
        object RadioMovimento: TRadioGroup
          Left = 4
          Top = 125
          Width = 135
          Height = 128
          Caption = '&Movimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Depositar'
            'Quitar'
            'Depositar e Quitar')
          ParentFont = False
          TabOrder = 6
          OnClick = RadioMovimentoClick
        end
      end
      object DBGridLista: TDBGrid
        Left = 0
        Top = 256
        Width = 811
        Height = 79
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
        TabOrder = 1
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
            FieldName = 'ClienteNome'
            ReadOnly = True
            Width = 206
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtVencimento'
            ReadOnly = True
            Title.Caption = 'Dt.Vcto.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Banco'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cheque'
            ReadOnly = True
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            ReadOnly = True
            Width = 57
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'ValorJuro'
            Width = 50
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'ValorMulta'
            Width = 50
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'ValorDesconto'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Baixar'
            Width = 38
            Visible = True
          end
          item
            Color = clWhite
            Expanded = False
            FieldName = 'Deposito'
            Title.Caption = 'Dep'#243'sito'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorTotal'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Parcela'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Alinea'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Portador'
            ReadOnly = True
            Visible = True
          end>
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 811
      inherited PanelCabecalho: TPanel
        Width = 811
        inherited PanelNavigator: TPanel
          Width = 811
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 811
            object BtnBaixarDoc: TSpeedButton
              Tag = 3
              Left = 154
              Top = 3
              Width = 123
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Baixar Cheques'
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
              Spacing = 10
              OnClick = BtnBaixarDocClick
            end
            object BtnSelecionarDoc: TSpeedButton
              Tag = 3
              Left = 2
              Top = 3
              Width = 147
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Selecionar Cheques'
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
              Spacing = 10
              OnClick = BtnSelecionarDocClick
            end
          end
        end
      end
    end
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
      '  CR.CTRCN2VLR,'
      '  CR.CTRCN2DESCFIN,'
      '  CR.CTRCN2TOTREC,'
      '  CR.CTRCDULTREC,'
      '  CR.PORTICOD,'
      '  CR.CTRCA5TIPOPADRAO,'
      '  CR.CUPOA13ID,'
      '  CR.BANCA5CODCHQ,'
      '  CR.CTRCA10AGENCIACHQ,'
      '  CR.CTRCA15CONTACHQ,'
      '  CR.CTRCA15NROCHQ,'
      '  CR.CTRCA60TITULARCHQ,'
      '  CR.CTRCA20CGCCPFCHQ,'
      '  CR.CTRCDDEPOSCHQ,'
      '  CR.ALINICOD,'
      '  CL.CLIEA60RAZAOSOC,'
      '  PT.PORTA60DESCR,'
      '  AL.ALINA30DESCR'
      'from'
      '  CONTASRECEBER CR'
      '  left outer join PORTADOR PT on CR.PORTICOD  = PT.PORTICOD'
      '  left outer join ALINEA AL   on CR.ALINICOD  = AL.ALINICOD'
      '  left outer join CLIENTE CL  on CR.CLIEA13ID = CL.CLIEA13ID'
      'where'
      '  %MFiltro and'
      '  %MData   and'
      '  CR.CTRCCSTATUS      <> '#39'C'#39' and'
      
        '  (CR.CTRCA5TIPOPADRAO = '#39'CHQ'#39' or CR.CTRCA5TIPOPADRAO = '#39'CHQV'#39' o' +
        'r CR.CTRCA5TIPOPADRAO = '#39'CHQP'#39')  and'
      
        '  (CR.CTRCN2TOTREC    < CR.CTRCN2VLR or CR.CTRCN2TOTREC is null)' +
        ' and'
      '  (%MCliente) and'
      '  (%MPortador) and'
      '  (%MAlinea) and'
      '  (%Tipo)'
      'Order By'
      'CR.CTRCDVENC DESC'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
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
        Name = 'MAlinea'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 248
    Top = 16
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'UNITGESTAO.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'UNITGESTAO.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'UNITGESTAO.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'UNITGESTAO.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'UNITGESTAO.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'UNITGESTAO.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'UNITGESTAO.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'UNITGESTAO.CONTASRECEBER.ALINICOD'
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'UNITGESTAO.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'UNITGESTAO.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberALINA30DESCR: TStringField
      FieldName = 'ALINA30DESCR'
      Origin = 'UNITGESTAO.ALINEA.ALINA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLRecebimento: TRxQuery
    Tag = 1
    BeforePost = SQLRecebimentoBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from '
      'RECEBIMENTO'
      'where'
      'CTRCA13ID is null')
    Macros = <>
    Left = 304
    Top = 16
    object SQLRecebimentoRECEICOD: TIntegerField
      FieldName = 'RECEICOD'
      Origin = 'DB.RECEBIMENTO.RECEICOD'
    end
    object SQLRecebimentoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'UNITGESTAO.RECEBIMENTO.CTRCA13ID'
      FixedChar = True
      Size = 13
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
    object SQLRecebimentoRECEDDATAMOV: TDateTimeField
      FieldName = 'RECEDDATAMOV'
      Origin = 'DB.RECEBIMENTO.RECEDDATAMOV'
    end
    object SQLRecebimentoRECEA254HISTORICO: TStringField
      FieldName = 'RECEA254HISTORICO'
      Origin = 'DB.RECEBIMENTO.RECEA254HISTORICO'
      Size = 254
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CLIEA13ID,CLIEA60RAZAOSOC from CLIENTE'
      'Order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 364
    Top = 16
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
  end
  object TblRecebimento: TTable
    AfterPost = TblRecebimentoAfterPost
    OnNewRecord = TblRecebimentoNewRecord
    DatabaseName = 'Easy_Temp'
    TableName = 'ChequeRecebimento.DB'
    Left = 220
    Top = 16
    object TblRecebimentoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblRecebimentoCLIEA13ID: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object TblRecebimentoDtVencimento: TDateTimeField
      DisplayLabel = 'Dt. VCto'
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
      FieldName = 'Parcela'
    end
    object TblRecebimentoValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoValorJuro: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'ValorJuro'
      OnChange = TblRecebimentoValorJuroChange
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoValorMulta: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'ValorMulta'
      OnChange = TblRecebimentoValorMultaChange
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoValorDesconto: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'ValorDesconto'
      OnChange = TblRecebimentoValorDescontoChange
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoValorTotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'ValorTotal'
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
    end
    object TblRecebimentoBanco: TStringField
      FieldName = 'Banco'
      Size = 5
    end
    object TblRecebimentoAgencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'Agencia'
      Size = 10
    end
    object TblRecebimentoConta: TStringField
      FieldName = 'Conta'
      Size = 15
    end
    object TblRecebimentoCheque: TStringField
      FieldName = 'Cheque'
      Size = 15
    end
    object TblRecebimentoDeposito: TDateField
      DisplayLabel = 'Dt. Dep'#243'sito'
      FieldName = 'Deposito'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TblRecebimentoAlinea: TStringField
      DisplayLabel = 'Al'#237'nea'
      FieldName = 'Alinea'
      Size = 30
    end
    object TblRecebimentoPortador: TStringField
      FieldName = 'Portador'
      Size = 60
    end
    object TblRecebimentoBaixar: TBooleanField
      FieldName = 'Baixar'
    end
  end
  object DSTblRecebimento: TDataSource
    DataSet = TblRecebimento
    OnDataChange = DSTblRecebimentoDataChange
    Left = 192
    Top = 16
  end
  object DSSQLRecebimento: TDataSource
    DataSet = SQLRecebimento
    Left = 276
    Top = 16
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select PORTICOD,PORTA60DESCR from PORTADOR')
    Macros = <>
    Left = 420
    Top = 16
  end
  object SQLAlinea: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ALINICOD,ALINA30DESCR from ALINEA')
    Macros = <>
    Left = 476
    Top = 16
    object SQLAlineaALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.ALINEA.ALINICOD'
    end
    object SQLAlineaALINA30DESCR: TStringField
      FieldName = 'ALINA30DESCR'
      Origin = 'DB.ALINEA.ALINA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 336
    Top = 16
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 392
    Top = 16
  end
  object DSSQLAlinea: TDataSource
    DataSet = SQLAlinea
    Left = 448
    Top = 16
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'where (%MEmpresa)'
      'order by EMPRA60NOMEFANT')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 504
    Top = 16
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 532
    Top = 16
  end
  object SQLTotalCheque: TRxQuery
    DatabaseName = 'Easy_Temp'
    SQL.Strings = (
      'select '
      '  Sum(ValorTotal)  as Total '
      'from '
      '  ChequeRecebimento.DB')
    Macros = <>
    Left = 567
    Top = 16
    object SQLTotalChequeTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object SQLOperacaoBanco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select OPBCICOD, OPBCA60DESCR From OperacaoBanco'
      'where'
      'OPBCCTIPO = '#39'C'#39
      'Order By OPBCA60DESCR')
    Macros = <>
    Left = 624
    Top = 16
    object SQLOperacaoBancoOPBCICOD: TIntegerField
      FieldName = 'OPBCICOD'
      Origin = 'DB.OPERACAOBANCO.OPBCICOD'
    end
    object SQLOperacaoBancoOPBCA60DESCR: TStringField
      FieldName = 'OPBCA60DESCR'
      Origin = 'DB.OPERACAOBANCO.OPBCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLStatusCheque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select ALINICOD, ALINA30DESCR from'
      'ALINEA'
      'Order By'
      'ALINA30DESCR')
    Macros = <>
    Left = 624
    Top = 88
    object SQLStatusChequeALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.ALINEA.ALINICOD'
    end
    object SQLStatusChequeALINA30DESCR: TStringField
      FieldName = 'ALINA30DESCR'
      Origin = 'DB.ALINEA.ALINA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLOperacaoBanco: TDataSource
    DataSet = SQLOperacaoBanco
    Left = 596
    Top = 16
  end
  object DSSQLStatusCheque: TDataSource
    DataSet = SQLStatusCheque
    Left = 596
    Top = 88
  end
  object SQLContaCorrente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CTCRICOD, CTCRA60TITULAR from'
      'ContaCorrente')
    Macros = <>
    Left = 625
    Top = 56
    object SQLContaCorrenteCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.CONTACORRENTE.CTCRICOD'
    end
    object SQLContaCorrenteCTCRA60TITULAR: TStringField
      FieldName = 'CTCRA60TITULAR'
      Origin = 'DB.CONTACORRENTE.CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLContaCorrente: TDataSource
    DataSet = SQLContaCorrente
    Left = 597
    Top = 56
  end
  object DSSQLPortadorNovo: TDataSource
    DataSet = SQLPortadorNovo
    Left = 596
    Top = 128
  end
  object SQLPortadorNovo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select PORTICOD,PORTA60DESCR from PORTADOR'
      'Order  by PORTA60DESCR')
    Macros = <>
    Left = 624
    Top = 128
    object SQLPortadorNovoPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.PORTADOR.PORTICOD'
    end
    object SQLPortadorNovoPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
