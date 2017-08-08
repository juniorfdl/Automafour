inherited FormTelaImpressaoDuplicata: TFormTelaImpressaoDuplicata
  Left = 361
  Top = 123
  Width = 847
  Height = 507
  Caption = 'Emiss'#227'o de Boletos e Duplicatas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 831
    Height = 468
    inherited PanelCentral: TPanel
      Width = 827
      Height = 384
      inherited PanelBarra: TPanel
        Width = 827
        Height = 255
        Align = alTop
        Color = 16249066
        Font.Color = clBlack
        object Label2: TLabel
          Left = 9
          Top = 44
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
        object Label4: TLabel
          Left = 326
          Top = 133
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
        object Label9: TLabel
          Left = 690
          Top = 131
          Width = 29
          Height = 13
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 577
          Top = 131
          Width = 73
          Height = 13
          Caption = 'Nro. Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 9
          Top = 82
          Width = 117
          Height = 13
          Caption = 'Selecione o Portador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 236
          Top = 82
          Width = 141
          Height = 13
          Caption = 'Mostrar Boletos Emitidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 401
          Top = 80
          Width = 129
          Height = 13
          Caption = 'Ordem para impress'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 10
          Top = 7
          Width = 218
          Height = 13
          Caption = 'Boletos Laser - Escolha Conta Corrente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object De: TDateEdit
          Left = 230
          Top = 129
          Width = 90
          Height = 21
          DefaultToday = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 5
        end
        object Ate: TDateEdit
          Left = 354
          Top = 129
          Width = 90
          Height = 21
          DefaultToday = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 6
        end
        object ComboCliente: TRxDBLookupCombo
          Left = 6
          Top = 57
          Width = 526
          Height = 21
          DropDownCount = 8
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          TabOrder = 1
        end
        object TotalContasReceber: TCurrencyEdit
          Left = 723
          Top = 127
          Width = 94
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16249066
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object PanelIntrucoes: TPanel
          Left = 0
          Top = 170
          Width = 827
          Height = 85
          Align = alBottom
          Color = 16249066
          TabOrder = 7
          object Label8: TLabel
            Left = 14
            Top = 5
            Width = 60
            Height = 13
            Caption = 'Instru'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 548
            Top = 45
            Width = 118
            Height = 13
            Caption = 'Layout de impress'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object MemoInst: TMemo
            Left = 79
            Top = 3
            Width = 458
            Height = 77
            TabOrder = 0
          end
          object ckImprimeMesReferencia: TCheckBox
            Left = 545
            Top = 11
            Width = 242
            Height = 17
            Caption = 'Imprimir Mes Anterior como Referencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object cbxLayOut: TComboBox
            Left = 545
            Top = 59
            Width = 138
            Height = 21
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 2
            Text = 'Fatura'
            OnChange = cbxLayOutChange
            Items.Strings = (
              'Fatura'
              'Carne')
          end
        end
        object EditParcelas: TEdit
          Left = 654
          Top = 127
          Width = 31
          Height = 21
          Color = 16249066
          TabOrder = 8
        end
        object RadioPeriodo: TRadioGroup
          Left = 6
          Top = 116
          Width = 214
          Height = 34
          Caption = 'Per'#237'odo'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Emiss'#227'o'
            'Vencimento')
          ParentFont = False
          TabOrder = 4
        end
        object ComboPortador: TRxDBLookupCombo
          Left = 5
          Top = 95
          Width = 216
          Height = 21
          DropDownCount = 8
          LookupField = 'PORTICOD'
          LookupDisplay = 'PORTA60DESCR'
          LookupSource = DSSQLPortador
          TabOrder = 2
        end
        object ComboEmitidos: TComboBox
          Left = 232
          Top = 95
          Width = 151
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 3
          Text = 'N'#227'o'
          Items.Strings = (
            'Sim'
            'N'#227'o'
            'Todos')
        end
        object ComboOrdem: TComboBox
          Left = 398
          Top = 93
          Width = 135
          Height = 21
          ItemHeight = 13
          ItemIndex = 1
          TabOrder = 10
          Text = 'N'#250'mero da Duplicata'
          Items.Strings = (
            'Nome de Cliente'
            'N'#250'mero da Duplicata')
        end
        object ComboContaCorrente: TRxDBLookupCombo
          Left = 6
          Top = 20
          Width = 731
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          LookupField = 'CTCRICOD'
          LookupDisplay = 'CTCRA60TITULAR;CTCRA15NUMERO'
          LookupSource = DSSQLContaCorrente
          TabOrder = 0
        end
        object radioTipoImpressao: TRadioGroup
          Left = 543
          Top = 80
          Width = 275
          Height = 34
          Caption = ' Tipo Impress'#227'o '
          Columns = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Imprimir'
            'Gerar PDF'
            'PDF + Email')
          ParentFont = False
          TabOrder = 11
        end
        object CheckEndCob: TCheckBox
          Left = 557
          Top = 59
          Width = 242
          Height = 17
          Caption = 'Usar Endere'#231'o de Cobran'#231'a do Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object ckSemLote: TCheckBox
          Left = 17
          Top = 153
          Width = 173
          Height = 17
          Caption = 'Filtrar Sem Lote Remessa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
      end
      object DBGridLista: TDBGrid
        Left = 0
        Top = 255
        Width = 827
        Height = 129
        Hint = 
          'Clique com o bot'#227'o direito do mouse para visualizar outras fun'#231#245 +
          'es...'
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSSQLContasReceber
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        ParentFont = False
        ParentShowHint = False
        PopupMenu = MenuOptions
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'CLIEA13ID'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60RAZAOSOC'
            Width = 298
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60NOMEFANT'
            Width = 236
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCDEMIS'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCDVENC'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCA15NOSSONUMERO'
            Title.Caption = 'Nosso Numero'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCINROPARC'
            Title.Caption = 'Parc.'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCN2VLR'
            Title.Alignment = taRightJustify
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTRCN2DESCFIN'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA14CGC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA20IE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA11CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA10RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FONE1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FONE2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA15FAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60ENDRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60BAIRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60CIDRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA2UFRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA8CEPRES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60ENDCOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60BAICOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60CIDCOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA2UFCOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA8CEPCOB'
            Visible = True
          end>
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 827
      inherited PanelCabecalho: TPanel
        Width = 827
        object lbStatusEmail: TLabel [1]
          Left = 669
          Top = 30
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'Status email'
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Visible = False
        end
        inherited PanelNavigator: TPanel
          Width = 827
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 827
            inherited BtnFecharTela: TSpeedButton
              Left = 673
            end
            object ButtonImp: TRxSpeedButton
              Left = 193
              Top = 3
              Width = 177
              Height = 25
              DropDownMenu = MenuImp
              MenuPosition = dmpRight
              Caption = 'Gerar Documentos'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                06020000424D0602000000000000760000002800000019000000190000000100
                0400000000009001000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777777777000000077777777777777777777777770000000777777777777
                7777777777777000000077777777777777777777777770000000777777777777
                7777777777777000000077777777777777777777777770000000770000000000
                00007777777770000000770BBBBBBBBBBBB07777777770000000770BBBBBBBBB
                BBB07777777770000000770BCCCCCCCCCCB07777774440000000770BBBBBBBBB
                BBB00000000CC0000000770BCCCCC777773733777370C0000000770BBBBE0000
                007373737770C0000000770BCCCB0E40F07737377370C00000007770BBB003E4
                00737373770040000000777700070FFE44777737007770000000777777770033
                E407337077777000000077777777770F3E407707777770000000777777777770
                F3E44077777770000000777777777777000E4477777770000000777777777777
                7777E47777777000000077777777777777777777777770000000777777777777
                7777777777777000000077777777777777777777777770000000777777777777
                77777777777770000000}
              Layout = blGlyphLeft
              ParentFont = False
              Spacing = 7
              Transparent = True
            end
            object BtnSelecionarDoc: TSpeedButton
              Tag = 3
              Left = 2
              Top = 3
              Width = 175
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Filtrar Contas A Receber '
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
            object BtnGeraRemessa: TSpeedButton
              Left = 386
              Top = 3
              Width = 152
              Height = 25
              Caption = '&Gerar Remessa Banco'
              Flat = True
              Glyph.Data = {
                66010000424D6601000000000000760000002800000014000000140000000100
                040000000000F000000000000000000000001000000010000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888800008888888888888888888800008880000000000000000800008880
                FFFFFFFFFFFFFF0800008880FFFFF4444444FF0800008800FFFFFFFFFFFFFF08
                00008800FFFFF4444444FF0800008800FFFFFFFFFFFFFF0800008000FFFFFFFF
                FFF99F0800008000F4444FFFFFF99F0800008000FFFFFFFFFFFFFF0800008000
                00000000000000080000800F4444FFFFFF99F0880000800FFFFFFFFFFFFFF088
                000080000000000000000088000080F4444FFFFFF99F0888000080FFFFFFFFFF
                FFFF088800008000000000000000088800008888888888888888888800008888
                88888888888888880000}
              OnClick = BtnGeraRemessaClick
            end
          end
        end
        object FileList: TFileListBox
          Left = 539
          Top = 12
          Width = 62
          Height = 20
          ItemHeight = 13
          Mask = '*.rpt'
          TabOrder = 1
          Visible = False
        end
      end
    end
  end
  object SQLContasReceber: TRxQuery
    CachedUpdates = True
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
      '  (CR.CTRCN2VLR - CR.CTRCN2DESCFIN) as ValorTotal,'
      '  CR.CTRCN2DESCFIN,'
      '  CR.CTRCN2TOTREC,'
      '  CR.CTRCDULTREC,'
      '  CR.PORTICOD,'
      '  CR.CTRCA5TIPOPADRAO,'
      '  CR.CUPOA13ID,'
      '  CR.NOFIA13ID,'
      '  CR.CTRCA30NRODUPLICBANCO,'
      '  CR.CTRCDEMIS,'
      '  CR.DUPLA13ID,'
      '  CR.CTRCA15NOSSONUMERO,'
      '  CR.CTRCA254HIST,'
      '  CL.CLIEA14CGC,'
      '  CL.CLIEA20IE,'
      '  CL.CLIEA11CPF,'
      '  CL.CLIEA10RG,'
      '  CL.CLIEA60RAZAOSOC,'
      '  CL.CLIEA60NOMEFANT,'
      '  CL.CLIEA15FONE1,'
      '  CL.CLIEA15FONE2,'
      '  CL.CLIEA15FAX,'
      '  CL.CLIEA60ENDRES,'
      '  CL.CLIEA60BAIRES,'
      '  CL.CLIEA60CIDRES,'
      '  CL.CLIEA2UFRES,'
      '  CL.CLIEA8CEPRES,'
      '  CL.CLIEA60ENDCOB,'
      '  CL.CLIEA60BAICOB,'
      '  CL.CLIEA60CIDCOB,'
      '  CL.CLIEA2UFCOB,'
      '  CL.CLIEA8CEPCOB,'
      '  CL.CLIEA60EMAIL,'
      '  CL.CLIEA5NROENDRES'
      'from'
      '  CONTASRECEBER CR'
      '  LEFT OUTER JOIN CLIENTE CL ON CR.CLIEA13ID = CL.CLIEA13ID'
      'where'
      '  ((CR.CTRCCSTATUS <> '#39'C'#39') or (CR.CTRCCSTATUS is null)) and'
      '  (CR.CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) and'
      '  ((Not CR.CUPOA13ID IS NULL) or'
      '   (Not CR.NOFIA13ID IS NULL) or'
      '   (Not CR.CTRCA13ID IS NULL) or'
      '   (CR.DUPLA13ID is not null))and'
      
        '  (CR.CTRCN2TOTREC < CR.CTRCN2VLR or CR.CTRCN2TOTREC is null) an' +
        'd'
      '   CR.CLIEA13ID =  CL.CLIEA13ID and'
      '  (%MEmpresa) and'
      '  (%CampoData between %DataInicial and %DataFinal) and'
      '  (%MCliente) and'
      '  (%MPortador) and'
      '  (%MSemLote) and'
      '  (%MEmitidos)'
      'order by'
      '  %MOrdem   ')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal'
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
        Name = 'MSemLote'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmitidos'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 400
    Top = 16
    object SQLContasReceberCTRCA13ID: TStringField
      DisplayLabel = 'ID'
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      DisplayFormat = 'dd/mm/yy'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'CTRCN2DESCFIN'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberNOFIA13ID: TStringField
      DisplayLabel = 'ID NF'
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      DisplayLabel = 'Nro Duplicata'
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      DisplayFormat = 'dd/mm/yy'
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60NOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA14CGC: TStringField
      DisplayLabel = 'CGC'
      FieldName = 'CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLContasReceberCLIEA20IE: TStringField
      DisplayLabel = 'IE'
      FieldName = 'CLIEA20IE'
      FixedChar = True
    end
    object SQLContasReceberCLIEA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCLIEA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCLIEA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCLIEA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCLIEA15FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCLIEA60ENDRES: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60BAIRES: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60CIDRES: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLContasReceberCLIEA8CEPRES: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLContasReceberCLIEA60ENDCOB: TStringField
      DisplayLabel = 'End. Cob.'
      FieldName = 'CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60BAICOB: TStringField
      DisplayLabel = 'Bairro Cob.'
      FieldName = 'CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60CIDCOB: TStringField
      DisplayLabel = 'Cidade Cob.'
      FieldName = 'CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA2UFCOB: TStringField
      DisplayLabel = 'UF Cob.'
      FieldName = 'CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object SQLContasReceberCLIEA8CEPCOB: TStringField
      DisplayLabel = 'Cep Cob.'
      FieldName = 'CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object SQLContasReceberVALORTOTAL: TFloatField
      DisplayLabel = 'Vlr. L'#237'quido'
      FieldName = 'VALORTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCA15NOSSONUMERO: TStringField
      FieldName = 'CTRCA15NOSSONUMERO'
      Size = 15
    end
    object SQLContasReceberCLIEA5NROENDRES: TStringField
      FieldName = 'CLIEA5NROENDRES'
      Size = 5
    end
    object SQLContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '  CLIEA13ID,'
      '  CLIEA60RAZAOSOC'
      'from'
      '  CLIENTE'
      'order by'
      '  CLIEA60RAZAOSOC')
    Macros = <>
    Left = 340
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
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA where %filtro')
    Macros = <
      item
        DataType = ftString
        Name = 'filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 281
    Top = 16
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
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
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
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
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
    object SQLEmpresaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EMPRESA.REGISTRO'
    end
    object SQLEmpresaEMPRA100INFSPC: TStringField
      FieldName = 'EMPRA100INFSPC'
      Origin = 'DB.EMPRESA.EMPRA100INFSPC'
      FixedChar = True
      Size = 100
    end
    object SQLEmpresaEMPRA15CODEAN: TStringField
      FieldName = 'EMPRA15CODEAN'
      Origin = 'DB.EMPRESA.EMPRA15CODEAN'
      FixedChar = True
      Size = 15
    end
    object SQLEmpresaEMPRBLOGOTIPO: TBlobField
      FieldName = 'EMPRBLOGOTIPO'
      Origin = 'DB.EMPRESA.EMPRBLOGOTIPO'
      Size = 1
    end
  end
  object DSSQLContasReceber: TDataSource
    AutoEdit = False
    DataSet = SQLContasReceber
    Left = 428
    Top = 16
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 368
    Top = 16
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 309
    Top = 16
  end
  object TblDuplicatas: TTable
    BeforeEdit = TblDuplicatasBeforeEdit
    DatabaseName = 'Easy_Temp'
    TableName = 'Duplicatas.DB'
    Left = 225
    Top = 16
    object TblDuplicatasEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblDuplicatasCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblDuplicatasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object TblDuplicatasCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object TblDuplicatasCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      FixedChar = True
    end
    object TblDuplicatasCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblDuplicatasCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object TblDuplicatasCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60NOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      Size = 60
    end
    object TblDuplicatasCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblDuplicatasCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblDuplicatasCLIEA15FAX: TStringField
      FieldName = 'CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object TblDuplicatasCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA5NROENDRES: TStringField
      FieldName = 'CLIEA5NROENDRES'
      Size = 5
    end
    object TblDuplicatasCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object TblDuplicatasCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object TblDuplicatasCLIEA60ENDCOB: TStringField
      FieldName = 'CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60BAICOB: TStringField
      FieldName = 'CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA60CIDCOB: TStringField
      FieldName = 'CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasCLIEA2UFCOB: TStringField
      FieldName = 'CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object TblDuplicatasCLIEA8CEPCOB: TStringField
      FieldName = 'CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object TblDuplicatasNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object TblDuplicatasCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      DisplayFormat = '#,##0.00'
    end
    object TblDuplicatasCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      DisplayFormat = '#,##0.00'
    end
    object TblDuplicatasCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblDuplicatasCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object TblDuplicatasCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblDuplicatasCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object TblDuplicatasExtensoLin1: TStringField
      FieldName = 'ExtensoLin1'
      Size = 100
    end
    object TblDuplicatasExtensoLin2: TStringField
      FieldName = 'ExtensoLin2'
      Size = 100
    end
    object TblDuplicatasEndPagto: TStringField
      FieldName = 'EndPagto'
      Size = 60
    end
    object TblDuplicatasLocPagto: TStringField
      FieldName = 'LocPagto'
      Size = 240
    end
    object TblDuplicatasNumeroParcelas: TIntegerField
      FieldName = 'NumeroParcelas'
    end
    object TblDuplicatasTotalDocumento: TFloatField
      FieldName = 'TotalDocumento'
      DisplayFormat = '#,##0.00'
    end
    object TblDuplicatasInstrucoes: TStringField
      FieldName = 'Instrucoes'
      Size = 255
    end
    object TblDuplicatasDocumentos: TStringField
      FieldName = 'Documentos'
      Size = 254
    end
    object TblDuplicatasAVALA60RAZAOSOC: TStringField
      FieldName = 'AVALA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblDuplicatasNumeroDocParc: TStringField
      FieldName = 'NumeroDocParc'
      Size = 60
    end
    object TblDuplicatasNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 5
    end
  end
  object FormStorage: TFormStorage
    StoredProps.Strings = (
      'ComboOrdem.ItemIndex'
      'RadioPeriodo.ItemIndex'
      'radioTipoImpressao.ItemIndex'
      'cbxLayOut.ItemIndex'
      'ckImprimeMesReferencia.Checked'
      'De.Text'
      'Ate.Text'
      'MemoInst.Lines'
      'ComboEmitidos.ItemIndex')
    StoredValues = <>
    Left = 464
    Top = 16
  end
  object SQLTotais: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  Sum(CR.CTRCN2VLR) as TotalDocumento,'
      '  Count(CR.CTRCA13ID) as NroParcelas,'
      '  CR.CTRCA30NRODUPLICBANCO'
      'from'
      '  CONTASRECEBER CR, CLIENTE CL'
      'where'
      '  (%CampoData between %DataInicial and %DataFinal) and'
      '  ((CR.CTRCCSTATUS <> '#39'C'#39') or (CR.CTRCCSTATUS is null)) and'
      '  (CR.CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) and'
      
        '  ((Not CR.CUPOA13ID IS NULL) or (Not CR.NOFIA13ID IS NULL)or (C' +
        'R.CTRCA13ID is not null))  and'
      
        '  (CR.CTRCN2TOTREC < CR.CTRCN2VLR or CR.CTRCN2TOTREC is null) an' +
        'd'
      '   CR.CLIEA13ID =  CL.CLIEA13ID and'
      '  (%MEmpresa) and'
      '  (%MCliente) and'
      '  (%MSemLote) and'
      '  (%MPortador)'
      'Group By'
      '  CR.CTRCA30NRODUPLICBANCO')
    Macros = <
      item
        DataType = ftString
        Name = 'CampoData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DataFinal'
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
        Name = 'MSemLote'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPortador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 496
    Top = 16
    object SQLTotaisTOTALDOCUMENTO: TFloatField
      FieldName = 'TOTALDOCUMENTO'
    end
    object SQLTotaisNROPARCELAS: TIntegerField
      FieldName = 'NROPARCELAS'
    end
    object SQLTotaisCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
  end
  object MenuImp: TPopupMenu
    Left = 192
    Top = 16
    object MnBloquetosLaser: TMenuItem
      Caption = 'Boletos'
      OnClick = MnBloquetosLaserClick
    end
    object CarnePagamentoAvulso1: TMenuItem
      Caption = 'Carne Pagamento Avulso'
      OnClick = CarnePagamentoAvulso1Click
    end
    object DuplicatasMercantil1: TMenuItem
      Caption = 'Duplicata Mercantil'
      OnClick = DuplicatasMercantil1Click
    end
    object MnDuplicatas: TMenuItem
      Caption = 'Duplicata de Servi'#231'o'
      OnClick = MnDuplicatasClick
    end
  end
  object MenuOptions: TPopupMenu
    Left = 288
    Top = 368
    object Excluirregistroselecionado1: TMenuItem
      Caption = 'Excluir registro selecionado'
      OnClick = Excluirregistroselecionado1Click
    end
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PORTICOD, PORTA60DESCR FROM PORTADOR')
    Macros = <>
    Left = 614
    Top = 16
    object SQLPortadorPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.PORTADOR.PORTICOD'
    end
    object SQLPortadorPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 642
    Top = 16
  end
  object PipelEmpresa: TppDBPipeline
    DataSource = DSSQLEmpresa
    UserName = 'PipelEmpresa'
    Left = 640
    Top = 97
    object PipelEmpresappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PipelEmpresappField2: TppField
      FieldAlias = 'EMPRA60RAZAOSOC'
      FieldName = 'EMPRA60RAZAOSOC'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object PipelEmpresappField3: TppField
      FieldAlias = 'EMPRA60NOMEFANT'
      FieldName = 'EMPRA60NOMEFANT'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object PipelEmpresappField4: TppField
      FieldAlias = 'EMPRCMATRIZFILIAL'
      FieldName = 'EMPRCMATRIZFILIAL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object PipelEmpresappField5: TppField
      FieldAlias = 'EMPRA20FONE'
      FieldName = 'EMPRA20FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object PipelEmpresappField6: TppField
      FieldAlias = 'EMPRA20FAX'
      FieldName = 'EMPRA20FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object PipelEmpresappField7: TppField
      FieldAlias = 'EMPRA60END'
      FieldName = 'EMPRA60END'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object PipelEmpresappField8: TppField
      FieldAlias = 'EMPRA60BAI'
      FieldName = 'EMPRA60BAI'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
    object PipelEmpresappField9: TppField
      FieldAlias = 'EMPRA60CID'
      FieldName = 'EMPRA60CID'
      FieldLength = 60
      DisplayWidth = 60
      Position = 8
    end
    object PipelEmpresappField10: TppField
      FieldAlias = 'EMPRA2UF'
      FieldName = 'EMPRA2UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object PipelEmpresappField11: TppField
      FieldAlias = 'EMPRA8CEP'
      FieldName = 'EMPRA8CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
    object PipelEmpresappField12: TppField
      FieldAlias = 'EMPRCFISJURID'
      FieldName = 'EMPRCFISJURID'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object PipelEmpresappField13: TppField
      FieldAlias = 'EMPRA14CGC'
      FieldName = 'EMPRA14CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 12
    end
    object PipelEmpresappField14: TppField
      FieldAlias = 'EMPRA20IE'
      FieldName = 'EMPRA20IE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object PipelEmpresappField15: TppField
      FieldAlias = 'EMPRA11CPF'
      FieldName = 'EMPRA11CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 14
    end
    object PipelEmpresappField16: TppField
      FieldAlias = 'EMPRA10RG'
      FieldName = 'EMPRA10RG'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object PipelEmpresappField17: TppField
      FieldAlias = 'EMPRA60EMAIL'
      FieldName = 'EMPRA60EMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 16
    end
    object PipelEmpresappField18: TppField
      FieldAlias = 'EMPRA60URL'
      FieldName = 'EMPRA60URL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object PipelEmpresappField19: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 18
    end
    object PipelEmpresappField20: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 19
    end
    object PipelEmpresappField21: TppField
      FieldAlias = 'EMPRA100INFSPC'
      FieldName = 'EMPRA100INFSPC'
      FieldLength = 100
      DisplayWidth = 100
      Position = 20
    end
    object PipelEmpresappField22: TppField
      FieldAlias = 'EMPRA15CODEAN'
      FieldName = 'EMPRA15CODEAN'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object PipelEmpresappField23: TppField
      FieldAlias = 'EMPRBLOGOTIPO'
      FieldName = 'EMPRBLOGOTIPO'
      FieldLength = 1
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 22
      Searchable = False
      Sortable = False
    end
  end
  object PipeDuplicatas: TppDBPipeline
    DataSource = DSTblDuplicatas
    UserName = 'PipeDuplicatas'
    Left = 640
    Top = 125
  end
  object ReportDuplicatasServico: TppReport
    AutoStop = False
    DataPipeline = PipeDuplicatas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    BeforePrint = ReportDuplicatasServicoBeforePrint
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ReportDuplicatasServicoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 668
    Top = 125
    Version = '10.06'
    mmColumnWidth = 209650
    DataPipelineName = 'PipeDuplicatas'
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 132821
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 128588
        mmLeft = 265
        mmTop = 3969
        mmWidth = 200025
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 13229
        mmLeft = 529
        mmTop = 43921
        mmWidth = 164571
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 40481
        mmTop = 44186
        mmWidth = 26988
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 52917
        mmWidth = 39952
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 11113
        mmLeft = 25665
        mmTop = 101600
        mmWidth = 174096
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 39952
        mmLeft = 25665
        mmTop = 62442
        mmWidth = 174096
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Pen.Width = 2
        mmHeight = 13494
        mmLeft = 131763
        mmTop = 43921
        mmWidth = 33602
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 39952
        mmLeft = 88371
        mmTop = 4233
        mmWidth = 111390
        BandType = 4
      end
      object NomeCli: TppDBText
        UserName = 'NomeCli'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 64029
        mmWidth = 27771
        BandType = 4
      end
      object EnderCli: TppDBText
        UserName = 'EnderCli'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60ENDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 69321
        mmWidth = 72761
        BandType = 4
      end
      object BairroCli: TppDBText
        UserName = 'BairroCli'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60BAIRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 145257
        mmTop = 69321
        mmWidth = 53181
        BandType = 4
      end
      object DtaVenc: TppDBText
        UserName = 'DtaVenc'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCDVENC'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 138907
        mmTop = 52123
        mmWidth = 15663
        BandType = 4
      end
      object DtaDoc: TppDBText
        UserName = 'DtaDoc'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCDEMIS'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 123825
        mmTop = 37571
        mmWidth = 15663
        BandType = 4
      end
      object Valor1: TppDBText
        UserName = 'Valor1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalDocumento'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 1852
        mmTop = 52123
        mmWidth = 22521
        BandType = 4
      end
      object CepCli: TppDBText
        UserName = 'CepCli'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA8CEPRES'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#####-###;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 152665
        mmTop = 74613
        mmWidth = 16764
        BandType = 4
      end
      object CidaCli: TppDBText
        UserName = 'CidaCli'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60CIDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 74613
        mmWidth = 59531
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60RAZAOSOC'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 90488
        mmTop = 6085
        mmWidth = 52239
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60END'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 98161
        mmTop = 10319
        mmWidth = 24469
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60BAI'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 100806
        mmTop = 14552
        mmWidth = 19219
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA8CEP'
        DataPipeline = PipelEmpresa
        DisplayFormat = '00000\-999;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 169598
        mmTop = 14552
        mmWidth = 12361
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60CID'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 102129
        mmTop = 18785
        mmWidth = 22183
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA2UF'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 174096
        mmTop = 18785
        mmWidth = 3895
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 90223
        mmTop = 23019
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA14CGC'
        DataPipeline = PipelEmpresa
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 100013
        mmTop = 27252
        mmWidth = 24553
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA20IE'
        DataPipeline = PipelEmpresa
        DisplayFormat = '000/9999999;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 104246
        mmTop = 31485
        mmWidth = 16764
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DATA DA EMISS'#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 90223
        mmTop = 37571
        mmWidth = 33073
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VALOR TOTAL NF R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 44450
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#218'MERO E SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 42069
        mmTop = 44450
        mmWidth = 21960
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 18785
        mmLeft = 164836
        mmTop = 43921
        mmWidth = 34925
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 44715
        mmWidth = 18521
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4000
        mmLeft = 67469
        mmTop = 52917
        mmWidth = 35000
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DUPLICATA VALOR R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 67998
        mmTop = 44450
        mmWidth = 29898
        BandType = 4
      end
      object Valor2: TppDBText
        UserName = 'Valor2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCN2VLR'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4057
        mmLeft = 68527
        mmTop = 52123
        mmWidth = 29898
        BandType = 4
      end
      object NumDoc: TppDBText
        UserName = 'NumDoc'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCA30NRODUPLICBANCO'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3979
        mmLeft = 42863
        mmTop = 52123
        mmWidth = 21960
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#186' DE ORDEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 106627
        mmTop = 44450
        mmWidth = 17727
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PARA USO DA INST. FINANCEIRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 165365
        mmTop = 44450
        mmWidth = 33867
        BandType = 4
      end
      object UfCli: TppDBText
        UserName = 'UfCli'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA2UFRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4057
        mmLeft = 132027
        mmTop = 74613
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NOME DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 64294
        mmWidth = 25135
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 69586
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MUNIC'#205'PIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 74877
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PRA'#199'A DE PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 80433
        mmWidth = 24077
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 85725
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CNPJ / CIC N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 91281
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ESTADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 74877
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 74877
        mmWidth = 5821
        BandType = 4
      end
      object CgcCli: TppDBText
        UserName = 'CgcCli'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA14CGC'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 91017
        mmWidth = 22013
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 64294
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 69586
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 74877
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 80433
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 85725
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 91281
        mmWidth = 2381
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 10583
        mmLeft = 25665
        mmTop = 102129
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VALOR POR EXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10583
        mmLeft = 25665
        mmTop = 102129
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DATA DO ACEITE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 126207
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ASSINATURA DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 124884
        mmWidth = 35190
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 124090
        mmWidth = 94986
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'CgcCli1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtensoLin1'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 51329
        mmTop = 102923
        mmWidth = 147902
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtensoLin2'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 51329
        mmTop = 107686
        mmWidth = 48768
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'CidaCli1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LocPagto'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 80169
        mmWidth = 14901
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'CgcCli2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA11CPF'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 59267
        mmTop = 91017
        mmWidth = 21251
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA20IE'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 146315
        mmTop = 91017
        mmWidth = 17526
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'INSC. ESTADUAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 91281
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '      /      /            '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 62177
        mmTop = 126207
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA20FONE'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 23019
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NumeroDocParc'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 102923
        mmTop = 52123
        mmWidth = 28575
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'End.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 10319
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 14552
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 18785
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C.G.C:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 27252
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insc.Est.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 31485
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 14552
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 18785
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Reconhe'#231'o(emos) a exalitidade desta duplicata de PRESTA'#199#195'O DE SE' +
          'RVI'#199'OS, na import'#226'ncia acima que pagarei(emos) '#224' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 112713
        mmWidth = 174096
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fax :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 130969
        mmTop = 23019
        mmWidth = 6435
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA20FAX'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3175
        mmLeft = 138907
        mmTop = 23019
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EndPagto'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58473
        mmTop = 85725
        mmWidth = 15494
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'BAIRRO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 132292
        mmTop = 69586
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AVALISTA/FIADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 96309
        mmWidth = 25188
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 96044
        mmWidth = 2381
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AVALA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3704
        mmLeft = 58208
        mmTop = 96044
        mmWidth = 84931
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60RAZAOSOC'
        DataPipeline = PipelEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 2910
        mmLeft = 25665
        mmTop = 115623
        mmWidth = 89165
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ', ou a sua ordem na pra'#231'a e vencimento indicados.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2822
        mmLeft = 137054
        mmTop = 115623
        mmWidth = 62706
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NOTAS FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 1852
        mmTop = 58208
        mmWidth = 21336
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape9'
        mmHeight = 50271
        mmLeft = 2646
        mmTop = 62442
        mmWidth = 21696
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = True
        DataField = 'Documentos'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 49213
        mmLeft = 3175
        mmTop = 62971
        mmWidth = 20638
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppImageServico: TppImage
        UserName = 'ppImageServico'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 35983
        mmLeft = 5821
        mmTop = 6350
        mmWidth = 77258
        BandType = 4
      end
    end
  end
  object DSTblDuplicatas: TDataSource
    DataSet = TblDuplicatas
    Left = 253
    Top = 16
  end
  object ReportDuplicataMercantil: TppReport
    AutoStop = False
    DataPipeline = PipeDuplicatas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    BeforePrint = ReportDuplicataMercantilBeforePrint
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ReportDuplicataMercantilPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 668
    Top = 97
    Version = '10.06'
    mmColumnWidth = 209650
    DataPipelineName = 'PipeDuplicatas'
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 132821
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 128588
        mmLeft = 265
        mmTop = 3969
        mmWidth = 200025
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape4'
        mmHeight = 13229
        mmLeft = 529
        mmTop = 43921
        mmWidth = 164571
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 40481
        mmTop = 44186
        mmWidth = 26988
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 52917
        mmWidth = 39952
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape8'
        mmHeight = 11113
        mmLeft = 25665
        mmTop = 101600
        mmWidth = 174096
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape7'
        mmHeight = 39952
        mmLeft = 25665
        mmTop = 62442
        mmWidth = 174096
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape6'
        Pen.Width = 2
        mmHeight = 13494
        mmLeft = 131763
        mmTop = 43921
        mmWidth = 33602
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape3'
        mmHeight = 39952
        mmLeft = 88371
        mmTop = 4233
        mmWidth = 111390
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'NomeCli'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4022
        mmLeft = 58208
        mmTop = 64029
        mmWidth = 56557
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'EnderCli'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60ENDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 69321
        mmWidth = 72761
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'BairroCli'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60BAIRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 145257
        mmTop = 69321
        mmWidth = 53181
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DtaVenc'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCDVENC'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 138907
        mmTop = 52123
        mmWidth = 17526
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DtaDoc'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCDEMIS'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 123825
        mmTop = 37571
        mmWidth = 17526
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'Valor1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalDocumento'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 52123
        mmWidth = 8763
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'CepCli'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA8CEPRES'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#####-###;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4022
        mmLeft = 152665
        mmTop = 74613
        mmWidth = 16764
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'CidaCli'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60CIDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 74613
        mmWidth = 59531
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60RAZAOSOC'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 90488
        mmTop = 6085
        mmWidth = 52239
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60END'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 98161
        mmTop = 10319
        mmWidth = 24469
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60BAI'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 100806
        mmTop = 14552
        mmWidth = 19219
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA8CEP'
        DataPipeline = PipelEmpresa
        DisplayFormat = '00000\-999;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 169598
        mmTop = 14552
        mmWidth = 12361
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60CID'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 102129
        mmTop = 18785
        mmWidth = 22183
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA2UF'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 174096
        mmTop = 18785
        mmWidth = 3895
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fone :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 90223
        mmTop = 23019
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA14CGC'
        DataPipeline = PipelEmpresa
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 100013
        mmTop = 27252
        mmWidth = 24553
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA20IE'
        DataPipeline = PipelEmpresa
        DisplayFormat = '000/9999999;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3302
        mmLeft = 104246
        mmTop = 31485
        mmWidth = 16764
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DATA DA EMISS'#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 90223
        mmTop = 37571
        mmWidth = 33073
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VALOR TOTAL NF R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 44450
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel45: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#218'MERO E SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 42069
        mmTop = 44450
        mmWidth = 21960
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape5'
        mmHeight = 18785
        mmLeft = 164836
        mmTop = 43921
        mmWidth = 34925
        BandType = 4
      end
      object ppLabel46: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 132557
        mmTop = 44715
        mmWidth = 18521
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4000
        mmLeft = 67469
        mmTop = 52917
        mmWidth = 35000
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DUPLICATA VALOR R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 67998
        mmTop = 44450
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'Valor2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCN2VLR'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4057
        mmLeft = 68527
        mmTop = 52123
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'NumDoc'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCA30NRODUPLICBANCO'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3979
        mmLeft = 42863
        mmTop = 52123
        mmWidth = 21960
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#186' DE ORDEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 106363
        mmTop = 44450
        mmWidth = 17727
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PARA USO DA INST. FINANCEIRA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 165365
        mmTop = 44450
        mmWidth = 33867
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'UfCli'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA2UFRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4057
        mmLeft = 132027
        mmTop = 74613
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NOME DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 64294
        mmWidth = 25135
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 69586
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MUNIC'#205'PIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 74877
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PRA'#199'A DE PAGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 80433
        mmWidth = 24077
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 85725
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel55: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CNPJ / CIC N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 26988
        mmTop = 91281
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel56: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ESTADO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 74877
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel57: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 74877
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'CgcCli'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA14CGC'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '##.###.###/####-##;0;_'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 91017
        mmWidth = 22013
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 64294
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel59: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 69586
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel60: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 74877
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel61: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 80433
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel62: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 85725
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel63: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 91281
        mmWidth = 2381
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 10583
        mmLeft = 25665
        mmTop = 102129
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel64: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VALOR POR EXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 10583
        mmLeft = 25665
        mmTop = 102129
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel65: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DATA DO ACEITE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 37571
        mmTop = 126207
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel66: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ASSINATURA DO SACADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 134144
        mmTop = 124884
        mmWidth = 35190
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 124090
        mmWidth = 94986
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'CgcCli1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtensoLin1'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 51329
        mmTop = 102923
        mmWidth = 147902
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ExtensoLin2'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3969
        mmLeft = 51329
        mmTop = 107686
        mmWidth = 147902
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'CidaCli1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LocPagto'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58208
        mmTop = 80169
        mmWidth = 14901
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'CgcCli2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA11CPF'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4022
        mmLeft = 59267
        mmTop = 91017
        mmWidth = 21421
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA20IE'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 12cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 146315
        mmTop = 91017
        mmWidth = 17526
        BandType = 4
      end
      object ppLabel67: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'INSC. ESTADUAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 91281
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel68: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '      /      /            '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 62177
        mmTop = 126207
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA20FONE'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 23019
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NumeroDocParc'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 102923
        mmTop = 52123
        mmWidth = 28310
        BandType = 4
      end
      object ppLabel69: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'End.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 10319
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel70: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 14552
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel71: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 18785
        mmWidth = 10848
        BandType = 4
      end
      object ppLabel72: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C.G.C:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 27252
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel73: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insc.Est.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 90223
        mmTop = 31485
        mmWidth = 12965
        BandType = 4
      end
      object ppLabel74: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 14552
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel75: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 161661
        mmTop = 18785
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel76: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Reconhe'#231'o(emos) a exalitidade desta duplicata MERCANTIL, na impo' +
          'rt'#226'ncia acima que pagarei(emos) '#224' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3175
        mmLeft = 25665
        mmTop = 112713
        mmWidth = 174096
        BandType = 4
      end
      object ppLabel77: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fax :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 130969
        mmTop = 23019
        mmWidth = 6435
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA20FAX'
        DataPipeline = PipelEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 3175
        mmLeft = 138907
        mmTop = 23019
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EndPagto'
        DataPipeline = PipeDuplicatas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4064
        mmLeft = 58473
        mmTop = 85725
        mmWidth = 15494
        BandType = 4
      end
      object ppLabel78: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'BAIRRO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 132292
        mmTop = 69586
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel79: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AVALISTA/FIADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 96309
        mmWidth = 25188
        BandType = 4
      end
      object ppLabel80: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 96044
        mmWidth = 2381
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AVALA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 3704
        mmLeft = 58208
        mmTop = 96044
        mmWidth = 84931
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EMPRA60RAZAOSOC'
        DataPipeline = PipelEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'PipelEmpresa'
        mmHeight = 2910
        mmLeft = 25665
        mmTop = 115623
        mmWidth = 89165
        BandType = 4
      end
      object ppLabel81: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ', ou a sua ordem na pra'#231'a e vencimento indicados.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2822
        mmLeft = 137054
        mmTop = 115623
        mmWidth = 62706
        BandType = 4
      end
      object ppLabel82: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NOTAS FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 1852
        mmTop = 58208
        mmWidth = 21336
        BandType = 4
      end
      object ppShape16: TppShape
        UserName = 'Shape9'
        mmHeight = 50271
        mmLeft = 2646
        mmTop = 62442
        mmWidth = 21696
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo1'
        ForceJustifyLastLine = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = True
        DataField = 'Documentos'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 49213
        mmLeft = 3175
        mmTop = 62971
        mmWidth = 20638
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppImageMercantil: TppImage
        UserName = 'ppImageMercantil'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 34660
        mmLeft = 4498
        mmTop = 6879
        mmWidth = 80433
        BandType = 4
      end
    end
  end
  object DSSQLContaCorrente: TDataSource
    AutoEdit = False
    DataSet = SQLContaCorrente
    Left = 722
    Top = 16
  end
  object SQLContaCorrente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CONTACORRENTE'
      'WHERE (CTCRA15CEDENTECOD <> '#39#39') AND (%Filtro)')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 694
    Top = 16
    object SQLContaCorrenteCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.CONTACORRENTE.CTCRICOD'
    end
    object SQLContaCorrenteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CONTACORRENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLContaCorrenteCTCRA15AGENCIA: TStringField
      FieldName = 'CTCRA15AGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15NUMERO: TStringField
      FieldName = 'CTCRA15NUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA60TITULAR: TStringField
      FieldName = 'CTCRA60TITULAR'
      Origin = 'DB.CONTACORRENTE.CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLContaCorrenteCTCRDABERTURA: TDateTimeField
      FieldName = 'CTCRDABERTURA'
      Origin = 'DB.CONTACORRENTE.CTCRDABERTURA'
    end
    object SQLContaCorrenteCTCRN2LIMITE: TFloatField
      FieldName = 'CTCRN2LIMITE'
      Origin = 'DB.CONTACORRENTE.CTCRN2LIMITE'
    end
    object SQLContaCorrenteCTCRN2SALDOATUAL: TFloatField
      FieldName = 'CTCRN2SALDOATUAL'
      Origin = 'DB.CONTACORRENTE.CTCRN2SALDOATUAL'
    end
    object SQLContaCorrenteTMBCICOD: TIntegerField
      FieldName = 'TMBCICOD'
      Origin = 'DB.CONTACORRENTE.TMBCICOD'
    end
    object SQLContaCorrentePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTACORRENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContaCorrenteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTACORRENTE.REGISTRO'
    end
    object SQLContaCorrenteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTACORRENTE.EMPRICOD'
    end
    object SQLContaCorrenteCTCRDULTALTSALDO: TDateTimeField
      FieldName = 'CTCRDULTALTSALDO'
      Origin = 'DB.CONTACORRENTE.CTCRDULTALTSALDO'
    end
    object SQLContaCorrenteCTCRA30CODCONTABIL: TStringField
      FieldName = 'CTCRA30CODCONTABIL'
      Origin = 'DB.CONTACORRENTE.CTCRA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
    object SQLContaCorrenteCTCRA15CEDENTECOD: TStringField
      FieldName = 'CTCRA15CEDENTECOD'
      Origin = 'DB.CONTACORRENTE.CTCRA15CEDENTECOD'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15CEDENTEDIGCOD: TStringField
      FieldName = 'CTCRA15CEDENTEDIGCOD'
      Origin = 'DB.CONTACORRENTE.CTCRA15CEDENTEDIGCOD'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15DIGAGENCIA: TStringField
      FieldName = 'CTCRA15DIGAGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15DIGAGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15DIGCONTA: TStringField
      FieldName = 'CTCRA15DIGCONTA'
      Origin = 'DB.CONTACORRENTE.CTCRA15DIGCONTA'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15CARTEIRACOD: TStringField
      FieldName = 'CTCRA15CARTEIRACOD'
      Origin = 'DB.CONTACORRENTE.CTCRA15CARTEIRACOD'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15DIGBANCO: TStringField
      FieldName = 'CTCRA15DIGBANCO'
      Origin = 'DB.CONTACORRENTE.CTCRA15DIGBANCO'
      Size = 15
    end
    object SQLContaCorrenteCTCRA15POSTO: TStringField
      FieldName = 'CTCRA15POSTO'
      Origin = 'DB.CONTACORRENTE.CTCRA15POSTO'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRINOSSONUMERO: TIntegerField
      FieldName = 'CTCRINOSSONUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRINOSSONUMERO'
    end
    object SQLContaCorrenteCTCRA150LOGOBANCO: TStringField
      FieldName = 'CTCRA150LOGOBANCO'
      Origin = 'DB.CONTACORRENTE.CTCRA150LOGOBANCO'
      Size = 150
    end
    object SQLContaCorrenteLOTEREMESSABANCO: TIntegerField
      FieldName = 'LOTEREMESSABANCO'
      Origin = 'DB.CONTACORRENTE.LOTEREMESSABANCO'
    end
  end
  object ACBrBoleto1: TACBrBoleto
    MAIL = ACBrMail1
    Banco.Numero = 41
    Banco.TamanhoMaximoNossoNum = 8
    Banco.TipoCobranca = cobBanrisul
    Banco.OrientacoesBanco.Strings = (
      'SAC       BANRISUL - 0800 646 1515'
      'OUVIDORIA BANRISUL - 0800 644 2200')
    Cedente.TipoInscricao = pJuridica
    Cedente.UF = 'RS'
    DirArqRemessa = 'c:\'
    NumeroArquivo = 0
    ImprimirMensagemPadrao = False
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Left = 320
    Top = 95
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    ACBrBoleto = ACBrBoleto1
    DirLogo = 'Bmp\Bancos\Colorido'
    MostrarPreview = False
    MostrarSetup = False
    SoftwareHouse = 'Gerado pelo sistema Easy2Solutions 51 8411.0414'
    Left = 354
    Top = 95
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    ReadingConfirmation = True
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    OnBeforeMailProcess = ACBrMail1BeforeMailProcess
    OnMailProcess = ACBrMail1MailProcess
    OnAfterMailProcess = ACBrMail1AfterMailProcess
    OnMailException = ACBrMail1MailException
    Left = 392
    Top = 95
  end
  object ReportCarneAvulso: TppReport
    AutoStop = False
    DataPipeline = PipeDuplicatas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ReportCarneAvulsoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 712
    Top = 97
    Version = '10.06'
    mmColumnWidth = 203650
    DataPipelineName = 'PipeDuplicatas'
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      mmBottomOffset = 0
      mmHeight = 81227
      mmPrintPosition = 0
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 78052
        mmLeft = 59796
        mmTop = 3175
        mmWidth = 265
        BandType = 4
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 9790
        mmTop = 24871
        mmWidth = 18373
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCDVENC'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 10054
        mmTop = 29369
        mmWidth = 17526
        BandType = 4
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 9790
        mmTop = 34660
        mmWidth = 26924
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCN2VLR'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 10054
        mmTop = 39158
        mmWidth = 46302
        BandType = 4
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 9790
        mmTop = 44450
        mmWidth = 14859
        BandType = 4
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mora / Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 31485
        mmTop = 44715
        mmWidth = 19473
        BandType = 4
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 9790
        mmTop = 55298
        mmWidth = 22352
        BandType = 4
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ID Controle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 30956
        mmTop = 24871
        mmWidth = 17738
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCA13ID'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 31221
        mmTop = 29369
        mmWidth = 25315
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7673
        mmTop = 54240
        mmWidth = 51594
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7673
        mmTop = 33867
        mmWidth = 193411
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7673
        mmTop = 43921
        mmWidth = 51858
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7938
        mmTop = 65617
        mmWidth = 51594
        BandType = 4
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dados Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 9790
        mmTop = 66675
        mmWidth = 22013
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4498
        mmLeft = 8467
        mmTop = 71173
        mmWidth = 49477
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 7938
        mmTop = 24077
        mmWidth = 192882
        BandType = 4
      end
      object ppEmpresa2: TppLabel
        UserName = 'Empresa2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CARNE DE PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7535
        mmLeft = 65352
        mmTop = 7938
        mmWidth = 75057
        BandType = 4
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 179652
        mmTop = 24871
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCDVENC'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 179917
        mmTop = 29369
        mmWidth = 17526
        BandType = 4
      end
      object ppLabel92: TppLabel
        UserName = 'Label92'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ID Contas Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 65088
        mmTop = 24871
        mmWidth = 29887
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCA13ID'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 65352
        mmTop = 29369
        mmWidth = 25315
        BandType = 4
      end
      object ppLabel93: TppLabel
        UserName = 'Label93'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Dados Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 65088
        mmTop = 39158
        mmWidth = 22013
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 63765
        mmTop = 43656
        mmWidth = 88636
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60ENDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 63765
        mmTop = 48683
        mmWidth = 70644
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA5NROENDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4498
        mmLeft = 135996
        mmTop = 48683
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60BAIRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 63765
        mmTop = 53711
        mmWidth = 88636
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60CIDRES'
        DataPipeline = PipeDuplicatas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 63765
        mmTop = 58738
        mmWidth = 88636
        BandType = 4
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 162454
        mmTop = 34660
        mmWidth = 26924
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText63'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCN2VLR'
        DataPipeline = PipeDuplicatas
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PipeDuplicatas'
        mmHeight = 4191
        mmLeft = 162719
        mmTop = 39158
        mmWidth = 33073
        BandType = 4
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 162454
        mmTop = 44450
        mmWidth = 14859
        BandType = 4
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Mora / Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 180446
        mmTop = 44715
        mmWidth = 19473
        BandType = 4
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor Cobrado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 162454
        mmTop = 55298
        mmWidth = 22352
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 161661
        mmTop = 54240
        mmWidth = 39158
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 161661
        mmTop = 43921
        mmWidth = 39423
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 161396
        mmTop = 65617
        mmWidth = 39952
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 54769
        mmLeft = 160867
        mmTop = 25135
        mmWidth = 265
        BandType = 4
      end
      object pEmpresaNome: TppLabel
        UserName = 'Label901'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 7535
        mmLeft = 8996
        mmTop = 7408
        mmWidth = 26755
        BandType = 4
      end
    end
  end
end
