inherited FormTelaBaixarDocumentosPagar: TFormTelaBaixarDocumentosPagar
  Left = 159
  Top = 111
  Width = 800
  Height = 572
  Caption = 'Baixa de documentos '#224' pagar'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 784
    Height = 534
    inherited PanelCentral: TPanel
      Top = 65
      Width = 780
      Height = 465
      inherited PanelBarra: TPanel
        Width = 0
        Height = 465
      end
      object PanelFundoBxDocREc: TPanel
        Left = 0
        Top = 0
        Width = 780
        Height = 465
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object PanelTopBxDocREc: TPanel
          Left = 0
          Top = 0
          Width = 780
          Height = 142
          Align = alTop
          BevelOuter = bvNone
          Color = 16249066
          TabOrder = 0
          object Label1: TLabel
            Left = 7
            Top = 7
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
            Left = 6
            Top = 46
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
          object Label3: TLabel
            Left = 5
            Top = 86
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
            Left = 95
            Top = 101
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
            Left = 211
            Top = 86
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
            Left = 489
            Top = 83
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
            Left = 614
            Top = 83
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
            Left = 249
            Top = 124
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
            Left = 449
            Top = 8
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
            Left = 447
            Top = 46
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
          object Label10: TLabel
            Left = 324
            Top = 86
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
          object Label11: TLabel
            Left = 323
            Top = 8
            Width = 87
            Height = 13
            Caption = 'Documento Nro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Data1: TDateEdit
            Left = 2
            Top = 99
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 4
          end
          object Data2: TDateEdit
            Left = 116
            Top = 99
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 5
          end
          object DtBaixa: TDateEdit
            Left = 207
            Top = 99
            Width = 90
            Height = 21
            NumGlyphs = 2
            TabOrder = 6
          end
          object ComboEmpresa: TRxDBLookupCombo
            Left = 2
            Top = 21
            Width = 313
            Height = 21
            DropDownCount = 8
            DisplayEmpty = 'Todas...'
            LookupField = 'EMPRICOD'
            LookupDisplay = 'EMPRA60RAZAOSOC'
            LookupSource = DSSQLEmpresa
            TabOrder = 0
          end
          object ComboFornecedor: TRxDBLookupCombo
            Left = 2
            Top = 59
            Width = 440
            Height = 21
            DropDownCount = 8
            LookupField = 'FORNICOD'
            LookupDisplay = 'FORNA60RAZAOSOC'
            LookupSource = DSSQLCliente
            TabOrder = 1
          end
          object TotalVenc: TCurrencyEdit
            Left = 488
            Top = 99
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
          object CheckVencimento: TCheckBox
            Left = 4
            Top = 123
            Width = 237
            Height = 17
            Caption = 'Desconsiderar per'#237'odo de vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object TotalSelecionado: TCurrencyEdit
            Left = 613
            Top = 99
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
            TabOrder = 9
          end
          object ComboPortador: TRxDBLookupCombo
            Left = 445
            Top = 21
            Width = 290
            Height = 21
            DropDownCount = 8
            LookupField = 'PORTICOD'
            LookupDisplay = 'PORTA60DESCR'
            LookupSource = DSSQLPortador
            TabOrder = 2
          end
          object ComboTipoDoc: TRxDBLookupCombo
            Left = 444
            Top = 59
            Width = 290
            Height = 21
            DropDownCount = 8
            LookupField = 'TPDCICOD'
            LookupDisplay = 'TPDCA60DESCR'
            LookupSource = DSSQLTipoDoc
            TabOrder = 3
          end
          object ValorPagto: TCurrencyEdit
            Left = 321
            Top = 99
            Width = 122
            Height = 21
            AutoSize = False
            TabOrder = 7
            OnExit = ValorPagtoExit
          end
          object EditDocumento: TEdit
            Left = 319
            Top = 21
            Width = 121
            Height = 21
            TabOrder = 11
          end
        end
        object Progress: TProgressBar
          Left = 0
          Top = 449
          Width = 780
          Height = 16
          Align = alBottom
          Smooth = True
          TabOrder = 1
        end
        object GroupLegenda: TGroupBox
          Left = 0
          Top = 412
          Width = 780
          Height = 37
          Align = alBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
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
        end
        object DBGridLista: TDBGrid
          Left = 0
          Top = 142
          Width = 780
          Height = 270
          Align = alClient
          BorderStyle = bsNone
          Color = 16249066
          DataSource = DSSQLRecebimentoTemp
          FixedColor = 10053171
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete]
          ParentFont = False
          TabOrder = 3
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
              FieldName = 'Emissao'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vencimento'
              ReadOnly = True
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FornecedorNome'
              ReadOnly = True
              Title.Caption = 'Fornecedor/Hist'#243'rico'
              Width = 195
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NF'
              Title.Caption = 'Nota Fiscal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Documento'
              ReadOnly = True
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Parcela'
              ReadOnly = True
              Width = 20
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'VlrVencto'
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'VlrJuros'
              Width = 40
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'VlrMulta'
              Width = 39
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'VlrDesc'
              Width = 37
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Baixar'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VlrPagto'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TipoDoc'
              ReadOnly = True
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Portador'
              ReadOnly = True
              Width = 134
              Visible = True
            end>
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 780
      Height = 65
      inherited PanelCabecalho: TPanel
        Width = 780
        Height = 65
        inherited PanelNavigator: TPanel
          Top = 33
          Width = 780
          object ButtonPagaEmite: TSpeedButton [0]
            Tag = 3
            Left = 331
            Top = 3
            Width = 139
            Height = 25
            Cursor = crHandPoint
            Hint = 'Fechar Tela'
            Caption = 'Baixar e Emitir &Recibo'
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
            OnClick = ButtonPagaEmiteClick
          end
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 780
            inherited BtnFecharTela: TSpeedButton
              Left = 698
            end
            object BtnBaixarDoc: TSpeedButton
              Tag = 3
              Left = 107
              Top = 3
              Width = 109
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
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
              Spacing = 10
              OnClick = BtnBaixarDocClick
            end
            object BtnBaixarDocIntegrado: TSpeedButton
              Tag = 3
              Left = 219
              Top = 3
              Width = 120
              Height = 25
              Cursor = crHandPoint
              Hint = 'Baixar Documentos'
              Caption = 'Baixar (&Integrado)'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
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
            object BtnSelecionarDoc: TSpeedButton
              Tag = 3
              Left = 4
              Top = 3
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
              Spacing = 10
              OnClick = BtnSelecionarDocClick
            end
          end
        end
      end
    end
  end
  object DSSQLRecebimentoTemp: TDataSource
    DataSet = TblPagtosTemp
    Left = 290
    Top = 5
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  FORNICOD, FORNA60RAZAOSOC'
      'from '
      '  FORNECEDOR'
      'order by '
      '  FORNA60RAZAOSOC')
    Macros = <>
    Left = 204
    Top = 5
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLFornecedor
    Left = 232
    Top = 5
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'Where (%MEmpresa)'
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
  object TblPagtosTemp: TTable
    BeforePost = TblPagtosTempBeforePost
    AfterPost = TblPagtosTempAfterPost
    DatabaseName = 'Easy_Temp'
    IndexName = 'Vencimento_Key'
    TableName = 'TblPagtosTemp'
    Left = 261
    Top = 5
    object TblPagtosTempCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object TblPagtosTempParcela: TIntegerField
      DisplayLabel = 'Prc.'
      FieldName = 'Parcela'
    end
    object TblPagtosTempFornecedorNome: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FornecedorNome'
      Size = 60
    end
    object TblPagtosTempDocumento: TStringField
      FieldName = 'Documento'
    end
    object TblPagtosTempVencimento: TDateTimeField
      DisplayLabel = 'Dt. Vencto.'
      FieldName = 'Vencimento'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblPagtosTempVlrVencto: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VlrVencto'
      DisplayFormat = '#,##0.00'
    end
    object TblPagtosTempVlrJuros: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'VlrJuros'
      DisplayFormat = '#,##0.00'
    end
    object TblPagtosTempVlrMulta: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'VlrMulta'
      DisplayFormat = '#,##0.00'
    end
    object TblPagtosTempVlrDesc: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'VlrDesc'
      DisplayFormat = '#,##0.00'
    end
    object TblPagtosTempVlrPagto: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'VlrPagto'
      DisplayFormat = '#,##0.00'
    end
    object TblPagtosTempPortador: TStringField
      FieldName = 'Portador'
      Size = 60
    end
    object TblPagtosTempTipoDoc: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'TipoDoc'
      Size = 60
    end
    object TblPagtosTempBaixar: TBooleanField
      FieldName = 'Baixar'
    end
    object TblPagtosTempFornecedorCod: TIntegerField
      FieldName = 'FornecedorCod'
    end
    object TblPagtosTempEmpresaCod: TIntegerField
      FieldName = 'EmpresaCod'
    end
    object TblPagtosTempDataPagto: TDateField
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'DataPagto'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblPagtosTempValorOriginal: TFloatField
      DisplayLabel = 'Valor Original'
      FieldName = 'ValorOriginal'
    end
    object TblPagtosTempEmissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Emissao'
      DisplayFormat = 'dd/mm/yy'
    end
    object TblPagtosTempNF: TStringField
      FieldName = 'NF'
      Size = 10
    end
  end
  object SQLContasPagar: TRxQuery
    Tag = 2
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  CONTASPAGAR.CTPGA13ID, '
      '  CONTASPAGAR.EMPRICOD, '
      '  CONTASPAGAR.CTPGDVENC, '
      '  CONTASPAGAR.CTPGDULTPAGTO, '
      '  CONTASPAGAR.CTPGA20DOCORIG, '
      '  CONTASPAGAR.NOCPA30NRO,'
      '  CONTASPAGAR.CTPGINROPARC, '
      '  CONTASPAGAR.FORNICOD,'
      '  FORNECEDOR.FORNA60RAZAOSOC, '
      '  CONTASPAGAR.CTPGN3VLR, '
      '  (CONTASPAGAR.CTPGN3VLR-CONTASPAGAR.CTPGN2TOTPAG) AS SALDO,'
      '  TIPODOCUMENTO.TPDCA60DESCR, '
      '  PORTADOR.PORTA60DESCR,'
      '  CONTASPAGAR.CTPGDTEMIS,'
      '  CONTASPAGAR.CTPGA254HIST'
      'from '
      '  CONTASPAGAR'
      
        '  left outer join PORTADOR on CONTASPAGAR.PORTICOD = PORTADOR.PO' +
        'RTICOD'
      
        '  left outer join FORNECEDOR on CONTASPAGAR.FORNICOD = FORNECEDO' +
        'R.FORNICOD'
      
        '  left outer join TIPODOCUMENTO on CONTASPAGAR.TPDCICOD = TIPODO' +
        'CUMENTO.TPDCICOD'
      'where'
      '  (%MEmpresa) and'
      '  (%MFornecedor) and'
      '  (%MData) and'
      '  (%MPortador) and'
      '  (%MTipoDoc) and'
      '  (%MDocumento) and'
      '  CONTASPAGAR.CTPGN3VLR > CONTASPAGAR.CTPGN2TOTPAG and'
      '  CONTASPAGAR.CTPGCPREVREAL = '#39'R'#39
      'order by '
      '  CONTASPAGAR.CTPGDVENC')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFornecedor'
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
        Name = 'MDocumento'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 322
    Top = 5
    object SQLContasPagarCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasPagarCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
    end
    object SQLContasPagarCTPGDULTPAGTO: TDateTimeField
      FieldName = 'CTPGDULTPAGTO'
    end
    object SQLContasPagarCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLContasPagarCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
    end
    object SQLContasPagarFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object SQLContasPagarFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
    end
    object SQLContasPagarSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasPagarTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasPagarPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarCTPGDTEMIS: TDateTimeField
      FieldName = 'CTPGDTEMIS'
    end
    object SQLContasPagarCTPGA254HIST: TStringField
      FieldName = 'CTPGA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasPagarNOCPA30NRO: TStringField
      FieldName = 'NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLPagamento: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PAGAMENTO'
      'where CTPGA13ID is null')
    Macros = <>
    Left = 356
    Top = 5
    object SQLPagamentoCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      Origin = 'DB.PAGAMENTO.CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPagamentoPAGAICOD: TIntegerField
      FieldName = 'PAGAICOD'
      Origin = 'DB.PAGAMENTO.PAGAICOD'
    end
    object SQLPagamentoPAGADPAGTO: TDateTimeField
      FieldName = 'PAGADPAGTO'
      Origin = 'DB.PAGAMENTO.PAGADPAGTO'
    end
    object SQLPagamentoPAGAN3VLRPAGTO: TFloatField
      FieldName = 'PAGAN3VLRPAGTO'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRPAGTO'
    end
    object SQLPagamentoPAGAN3VLRJURO: TFloatField
      FieldName = 'PAGAN3VLRJURO'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRJURO'
    end
    object SQLPagamentoPAGAN3VLRMULTA: TFloatField
      FieldName = 'PAGAN3VLRMULTA'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRMULTA'
    end
    object SQLPagamentoPAGAN3VLRDESC: TFloatField
      FieldName = 'PAGAN3VLRDESC'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRDESC'
    end
    object SQLPagamentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PAGAMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPagamentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PAGAMENTO.REGISTRO'
    end
    object SQLPagamentoPLCTA15CREDITO: TStringField
      FieldName = 'PLCTA15CREDITO'
      Origin = 'DB.PAGAMENTO.PLCTA15CREDITO'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODJUROCRED: TStringField
      FieldName = 'PLCTA15CODJUROCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODJUROCRED'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODMULTCRED: TStringField
      FieldName = 'PLCTA15CODMULTCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODMULTCRED'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODDESCCRED: TStringField
      FieldName = 'PLCTA15CODDESCCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODDESCCRED'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15DEBITO: TStringField
      FieldName = 'PLCTA15DEBITO'
      Origin = 'DB.PAGAMENTO.PLCTA15DEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODJURODEB: TStringField
      FieldName = 'PLCTA15CODJURODEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODJURODEB'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODMULTDEB: TStringField
      FieldName = 'PLCTA15CODMULTDEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODMULTDEB'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODDESCDEB: TStringField
      FieldName = 'PLCTA15CODDESCDEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODDESCDEB'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPAGAA254HISTORICO: TStringField
      FieldName = 'PAGAA254HISTORICO'
      Origin = 'DB.PAGAMENTO.PAGAA254HISTORICO'
      Size = 254
    end
    object SQLPagamentoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.PAGAMENTO.TPLQICOD'
    end
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'Easy_Temp'
    SQL.Strings = (
      'select '
      '  Sum(VlrPagto)  as Total '
      'from  %tabela')
    Macros = <
      item
        DataType = ftString
        Name = 'tabela'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 446
    Top = 5
    object SQLTotalTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object UpdateSQLPagamento: TUpdateSQL
    ModifySQL.Strings = (
      'update PAGAMENTO'
      'set'
      '  CTPGA13ID = :CTPGA13ID,'
      '  PAGAICOD = :PAGAICOD,'
      '  PAGADPAGTO = :PAGADPAGTO,'
      '  PAGAN3VLRPAGTO = :PAGAN3VLRPAGTO,'
      '  PAGAN3VLRJURO = :PAGAN3VLRJURO,'
      '  PAGAN3VLRMULTA = :PAGAN3VLRMULTA,'
      '  PAGAN3VLRDESC = :PAGAN3VLRDESC,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  CTPGA13ID = :OLD_CTPGA13ID and'
      '  PAGAICOD = :OLD_PAGAICOD')
    InsertSQL.Strings = (
      'insert into PAGAMENTO'
      '  (CTPGA13ID, PAGAICOD, PAGADPAGTO, PAGAN3VLRPAGTO, '
      'PAGAN3VLRJURO, PAGAN3VLRMULTA, '
      '   PAGAN3VLRDESC, PENDENTE, REGISTRO)'
      'values'
      '  (:CTPGA13ID, :PAGAICOD, :PAGADPAGTO, :PAGAN3VLRPAGTO, '
      ':PAGAN3VLRJURO, '
      '   :PAGAN3VLRMULTA, :PAGAN3VLRDESC, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from PAGAMENTO'
      'where'
      '  CTPGA13ID = :OLD_CTPGA13ID and'
      '  PAGAICOD = :OLD_PAGAICOD')
    Left = 384
    Top = 5
  end
  object FormStoragePagar: TFormStorage
    StoredProps.Strings = (
      'CheckVencimento.Checked')
    StoredValues = <>
    Left = 476
    Top = 5
  end
  object TableRecibo: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'ReciboTemp'
    Left = 556
    Top = 5
    object TableReciboRECIICOD: TAutoIncField
      FieldName = 'RECIICOD'
    end
    object TableReciboFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
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
  object DSTableRecibo: TDataSource
    DataSet = TableRecibo
    Left = 584
    Top = 5
  end
  object TableReciboConta: TTable
    OnNewRecord = TableReciboContaNewRecord
    DatabaseName = 'Easy_Temp'
    IndexFieldNames = 'RECIICOD'
    MasterFields = 'RECIICOD'
    MasterSource = DSTableRecibo
    TableName = 'ReciboContaTemp'
    Left = 612
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
  object DSQueryRecibo: TDataSource
    DataSet = QueryRecibo
    Left = 708
    Top = 5
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
    object QueryReciboContaRECODBAIXA: TDateTimeField
      FieldName = 'RECODBAIXA'
      Origin = 'DB.RECIBOCONTA.RECODBAIXA'
    end
    object QueryReciboContaRECON2VLRBAIXA: TFloatField
      FieldName = 'RECON2VLRBAIXA'
      Origin = 'DB.RECIBOCONTA.RECON2VLRBAIXA'
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
  end
  object SQLTotalSelecionado: TRxQuery
    DatabaseName = 'Easy_Temp'
    SQL.Strings = (
      'select '
      '  Sum(VlrPagto)  as Total '
      'from '
      ' %tabela'
      'where'
      '  Baixar = True')
    Macros = <
      item
        DataType = ftString
        Name = 'tabela'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLTotalSelecionadoTotal: TFloatField
      FieldName = 'Total'
    end
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
end
