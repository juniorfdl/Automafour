inherited FormCadastroCupom: TFormCadastroCupom
  Left = -8
  Top = -8
  Caption = 'Cupons'
  ClientHeight = 706
  ClientWidth = 1366
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1366
    Height = 706
    inherited PanelCabecalho: TPanel
      Width = 1364
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 1364
        inherited Panel1: TPanel
          Width = 1362
          inherited PanelNavigator: TPanel
            Width = 1362
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 1362
              inherited LabelExcluir: TSpeedButton
                Enabled = False
              end
              inherited LabelCancelar: TSpeedButton
                Enabled = False
              end
              inherited LabelGravar: TSpeedButton
                Enabled = False
              end
              inherited LabelAlterar: TSpeedButton
                Enabled = False
              end
              inherited LabelNovo: TSpeedButton
                Enabled = False
              end
            end
          end
          inherited PanelLeft: TPanel
            Left = 905
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 1364
      Height = 632
      inherited PanelBarra: TPanel
        Height = 632
        inherited Button3: TRxSpeedButton
          Caption = '&3 Dados Financeiros'
          WordWrap = True
          Visible = True
          OnClick = Button1Click
        end
        object Button4: TRxSpeedButton
          Tag = 2
          Left = 1
          Top = 73
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Cheques'
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
          WordWrap = True
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 1234
        Height = 632
        inherited Panel5: TPanel
          Width = 1234
          Height = 632
          inherited PagePrincipal: TPageControl
            Top = 106
            Width = 1234
            Height = 526
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 1226
                Height = 297
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CUPOA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'StatusCalcField'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'STNFE'
                    Title.Caption = 'Retorno SEFAZ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOINRO'
                    Width = 54
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPODEMIS'
                    Width = 58
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MESAICOD'
                    Width = 34
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DISPICOD'
                    Title.Caption = 'Display Nro'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOCLEVAR'
                    Title.Caption = 'P/Levar'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA13ID'
                    Width = 81
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ClienteLookup'
                    Width = 215
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TotalGeral'
                    Title.Caption = 'Total'
                    Width = 49
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2ACRESC'
                    Width = 48
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PLRCICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CONVICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2DESC'
                    Width = 43
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOCTIPOPADRAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2CONVTAXA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOA13IDTROCA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOA20CODANT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPODCANC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2JUROATRAS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPON2MULTAATRAS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPODPAGTOCONSIG'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PENDENTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TERMICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOICOD'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 1226
                inherited PanelBetween: TPanel
                  Width = 832
                  inherited AdvPanel1: TAdvPanel
                    Width = 832
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 832
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 832
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
                Top = 78
              end
              object DBGrid4: TDBGrid
                Left = 0
                Top = 344
                Width = 1226
                Height = 156
                Align = alBottom
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSSQLCupomItem
                FixedColor = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                OnDrawColumnCell = DBGridListaDrawColumnCell
                OnDblClick = DBGridListaDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CPITIPOS'
                    Title.Caption = 'Seq'
                    Width = 26
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITCSTATUS'
                    Title.Caption = 'ST'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Width = 42
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODA60DESCR'
                    Width = 404
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITN3VLRUNIT'
                    Width = 52
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITN3QTD'
                    Width = 60
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITN3QTDTROCA'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Title.Caption = 'Qtd.Troca'
                    Width = 60
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'M3_COMPRI'
                    Title.Caption = 'M3_Comprimento'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'M3_ESPESSURA'
                    Title.Caption = 'M3_Espessura'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'M3_LARGURA'
                    Title.Caption = 'M3_Largura'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITN2DESC'
                    Title.Caption = 'Vlr.Desc'
                    Width = 49
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VLRTOTALITEM'
                    Width = 80
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPITTOBS'
                    Title.Caption = 'Complemento'
                    Width = 415
                    Visible = True
                  end>
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label6: TLabel
                Left = 8
                Top = 41
                Width = 31
                Height = 13
                Caption = 'Plano'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 237
                Top = 41
                Width = 54
                Height = 13
                Caption = 'Vendedor'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 8
                Top = 77
                Width = 52
                Height = 13
                Caption = 'Conv'#234'nio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 237
                Top = 77
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
              object Label10: TLabel
                Left = 9
                Top = 4
                Width = 59
                Height = 13
                Caption = 'Acr'#233'scimo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 176
                Top = 4
                Width = 69
                Height = 13
                Caption = 'B'#244'nus Troca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 7
                Top = 112
                Width = 122
                Height = 13
                Caption = 'Cupom Cancelado por'
                FocusControl = DBEdit15
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 86
                Top = 4
                Width = 73
                Height = 13
                Caption = 'Tx.Cred/Tele'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 8
                Top = 151
                Width = 73
                Height = 13
                Caption = 'Observa'#231#245'es'
                FocusControl = DBEdit15
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label25: TLabel
                Left = 236
                Top = 112
                Width = 73
                Height = 13
                Caption = 'Cupom Fiscal'
                FocusControl = DBEdit21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 252
                Top = 4
                Width = 97
                Height = 13
                Caption = 'Data de Quita'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label16: TLabel
                Left = 361
                Top = 3
                Width = 98
                Height = 13
                Caption = 'Usu'#225'rio da Venda'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label44: TLabel
                Left = 388
                Top = 112
                Width = 72
                Height = 13
                Caption = 'Levar p Casa'
                FocusControl = DBEdit41
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label48: TLabel
                Left = 315
                Top = 112
                Width = 63
                Height = 13
                Caption = 'Display Nro'
                FocusControl = DBEdit44
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit5: TDBEdit
                Left = 5
                Top = 54
                Width = 226
                Height = 21
                BevelWidth = 0
                Color = 16249066
                Ctl3D = True
                DataField = 'PlanoLookup'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 3
              end
              object DBEdit6: TDBEdit
                Left = 234
                Top = 54
                Width = 226
                Height = 21
                BevelWidth = 0
                Color = 16249066
                Ctl3D = True
                DataField = 'VendedorLookup'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 4
              end
              object DBEdit7: TDBEdit
                Left = 5
                Top = 90
                Width = 226
                Height = 21
                BevelWidth = 0
                Color = 16249066
                Ctl3D = True
                DataField = 'ConvenioLookup'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 5
              end
              object DBEdit8: TDBEdit
                Left = 234
                Top = 90
                Width = 226
                Height = 21
                BevelWidth = 0
                Color = 16249066
                Ctl3D = True
                DataField = 'StatusCalcField'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 6
              end
              object DBEdit9: TDBEdit
                Left = 6
                Top = 17
                Width = 73
                Height = 21
                BevelWidth = 0
                Color = 16249066
                Ctl3D = True
                DataField = 'CUPON2ACRESC'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 0
              end
              object DBEdit11: TDBEdit
                Left = 174
                Top = 17
                Width = 73
                Height = 21
                BevelWidth = 0
                Color = 16249066
                Ctl3D = True
                DataField = 'CUPON3BONUSTROCA'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 2
              end
              object DBEdit15: TDBEdit
                Left = 5
                Top = 126
                Width = 123
                Height = 21
                Color = 16249066
                Ctl3D = True
                DataField = 'UsuarioCancLookup'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 7
              end
              object DBEdit13: TDBEdit
                Left = 83
                Top = 17
                Width = 85
                Height = 21
                BevelWidth = 0
                Color = 16249066
                Ctl3D = True
                DataField = 'CUPON3CREDTAXA'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 1
              end
              object RxDBRichEdit1: TDBMemo
                Left = 5
                Top = 165
                Width = 456
                Height = 42
                TabStop = False
                Alignment = taCenter
                BevelOuter = bvNone
                BevelKind = bkFlat
                Color = 16249066
                Ctl3D = True
                DataField = 'CUPOV254OBS'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 9
              end
              object GroupDadosCartao: TGroupBox
                Left = 487
                Top = 4
                Width = 170
                Height = 177
                Caption = 'Dados Venda Cart'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
                object Label21: TLabel
                  Left = 11
                  Top = 19
                  Width = 89
                  Height = 13
                  Caption = 'Data Transa'#231#227'o'
                  FocusControl = DBEdit17
                end
                object Label22: TLabel
                  Left = 11
                  Top = 58
                  Width = 89
                  Height = 13
                  Caption = 'Hora Transa'#231#227'o'
                  FocusControl = DBEdit18
                end
                object Label23: TLabel
                  Left = 10
                  Top = 97
                  Width = 77
                  Height = 13
                  Caption = 'NSU Provedor'
                  FocusControl = DBEdit19
                end
                object Label24: TLabel
                  Left = 10
                  Top = 136
                  Width = 86
                  Height = 13
                  Caption = 'NSU Institui'#231#227'o'
                  FocusControl = DBEdit20
                end
                object DBEdit17: TDBEdit
                  Left = 8
                  Top = 32
                  Width = 150
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CUPOA30DATACARTAO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit18: TDBEdit
                  Left = 8
                  Top = 71
                  Width = 150
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CUPOA30HORACARTAO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit19: TDBEdit
                  Left = 8
                  Top = 110
                  Width = 150
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CUPOA30NSUPROVEDOR'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit20: TDBEdit
                  Left = 8
                  Top = 149
                  Width = 150
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CUPOA30NSUINSTITUICAO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                end
              end
              object DBEdit21: TDBEdit
                Left = 234
                Top = 126
                Width = 77
                Height = 21
                Color = 16249066
                Ctl3D = True
                DataField = 'CUPOINRO'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 8
              end
              object GroupBox5: TGroupBox
                Left = 485
                Top = 182
                Width = 172
                Height = 160
                Caption = 'Impostos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
                object Label36: TLabel
                  Left = 9
                  Top = 15
                  Width = 59
                  Height = 13
                  Caption = 'Base ICMS'
                  FocusControl = DBEdit27
                end
                object Label37: TLabel
                  Left = 10
                  Top = 50
                  Width = 50
                  Height = 13
                  Caption = 'Vlr. ICMS'
                  FocusControl = DBEdit28
                end
                object Label45: TLabel
                  Left = 9
                  Top = 87
                  Width = 83
                  Height = 13
                  Caption = 'Valor Total PIS'
                  FocusControl = DBEdit42
                end
                object Label46: TLabel
                  Left = 10
                  Top = 122
                  Width = 104
                  Height = 13
                  Caption = 'Valor Total COFINS'
                  FocusControl = DBEdit43
                end
                object DBEdit27: TDBEdit
                  Left = 6
                  Top = 28
                  Width = 157
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CUPON2BASEICMS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit28: TDBEdit
                  Left = 6
                  Top = 63
                  Width = 157
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CUPON2VLRICMS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit42: TDBEdit
                  Left = 6
                  Top = 100
                  Width = 157
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CUPON2VLRPIS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit43: TDBEdit
                  Left = 6
                  Top = 135
                  Width = 157
                  Height = 21
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CUPON2VLRCOFINS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                end
              end
              object DBDateEdit2: TDBDateEdit
                Left = 250
                Top = 17
                Width = 104
                Height = 20
                DataField = 'CUPODQUITACAO'
                DataSource = DSTemplate
                Color = 16249066
                Ctl3D = True
                NumGlyphs = 2
                ParentCtl3D = False
                TabOrder = 12
              end
              object GroupBox6: TGroupBox
                Left = 2
                Top = 211
                Width = 478
                Height = 65
                Caption = ' Dados Cliente Venda '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 13
                object DBEdit12: TDBEdit
                  Left = 5
                  Top = 14
                  Width = 226
                  Height = 21
                  BevelWidth = 0
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CLIENTENOME'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit14: TDBEdit
                  Left = 234
                  Top = 14
                  Width = 239
                  Height = 21
                  BevelWidth = 0
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CLIENTEENDE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit30: TDBEdit
                  Left = 5
                  Top = 38
                  Width = 105
                  Height = 21
                  BevelWidth = 0
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CLIENTECNPJ'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit34: TDBEdit
                  Left = 234
                  Top = 38
                  Width = 140
                  Height = 21
                  BevelWidth = 0
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CLIENTECIDA'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 3
                end
                object DBEdit36: TDBEdit
                  Left = 377
                  Top = 38
                  Width = 96
                  Height = 21
                  BevelWidth = 0
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CLIENTEFONE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 4
                end
                object DBEdit45: TDBEdit
                  Left = 113
                  Top = 38
                  Width = 119
                  Height = 21
                  BevelWidth = 0
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CLIENTEBAIRRO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 5
                end
              end
              object DBEdit35: TDBEdit
                Left = 131
                Top = 126
                Width = 100
                Height = 21
                Color = 16249066
                Ctl3D = True
                DataField = 'CUPODCANC'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 14
              end
              object DBEdit37: TDBEdit
                Left = 358
                Top = 16
                Width = 104
                Height = 21
                TabStop = False
                BevelWidth = 0
                Color = 16249066
                Ctl3D = True
                DataField = 'UsuarioNome'
                DataSource = DSTemplate
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 15
              end
              object DBEdit41: TDBEdit
                Left = 387
                Top = 126
                Width = 74
                Height = 21
                Color = 16249066
                Ctl3D = True
                DataField = 'CUPOCLEVAR'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 16
              end
              object DBEdit44: TDBEdit
                Left = 314
                Top = 126
                Width = 69
                Height = 21
                Color = 16249066
                Ctl3D = True
                DataField = 'DISPICOD'
                DataSource = DSTemplate
                ParentCtl3D = False
                TabOrder = 17
              end
              object GroupBox7: TGroupBox
                Left = 3
                Top = 276
                Width = 478
                Height = 65
                Caption = ' Dados Cupom Eletronico '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 18
                object Label26: TLabel
                  Left = 8
                  Top = 17
                  Width = 35
                  Height = 13
                  Caption = 'Chave'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label27: TLabel
                  Left = 8
                  Top = 40
                  Width = 54
                  Height = 13
                  Caption = 'Protocolo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label28: TLabel
                  Left = 243
                  Top = 41
                  Width = 117
                  Height = 13
                  Caption = 'Codigo Retorno NFCe'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit22: TDBEdit
                  Left = 64
                  Top = 15
                  Width = 409
                  Height = 21
                  BevelWidth = 0
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'CHAVEACESSO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit24: TDBEdit
                  Left = 65
                  Top = 38
                  Width = 167
                  Height = 21
                  BevelWidth = 0
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'PROTOCOLO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit29: TDBEdit
                  Left = 368
                  Top = 38
                  Width = 103
                  Height = 21
                  BevelWidth = 0
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'STNFE'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
              end
            end
            object TabSheetDadosFinanceiros: TTabSheet
              Caption = 'Dados Financeiros'
              ImageIndex = 2
              object GroupBox1: TGroupBox
                Left = 0
                Top = 123
                Width = 660
                Height = 224
                Align = alClient
                Caption = ' '#192' PRAZO '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object GroupBox3: TGroupBox
                  Left = 2
                  Top = 15
                  Width = 656
                  Height = 122
                  Align = alTop
                  Caption = ' Contas '#224' &Receber '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object DBGrid1: TDBGrid
                    Left = 2
                    Top = 15
                    Width = 652
                    Height = 105
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
                    Options = [dgTitles, dgColumnResize, dgColLines, dgConfirmDelete, dgCancelOnExit]
                    ParentFont = False
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWhite
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = [fsBold]
                    OnDrawColumnCell = DBGridListaDrawColumnCell
                    OnDblClick = DBGridListaDblClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'CTRCINROPARC'
                        Title.Alignment = taCenter
                        Width = 21
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'CTRCDVENC'
                        Title.Alignment = taCenter
                        Width = 71
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NumerarioLookup'
                        Title.Alignment = taCenter
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2VLR'
                        Title.Alignment = taCenter
                        Width = 60
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'CTRCDULTREC'
                        Title.Alignment = taCenter
                        Width = 65
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2TOTREC'
                        Title.Alignment = taCenter
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'SALDO'
                        Title.Alignment = taCenter
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2TOTJUROREC'
                        Title.Alignment = taCenter
                        Width = 50
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2TOTMULTAREC'
                        Title.Alignment = taCenter
                        Width = 50
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCN2TOTDESCREC'
                        Title.Alignment = taCenter
                        Width = 50
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CTRCA5TIPOPADRAO'
                        Title.Caption = 'Tipo Padr'#227'o'
                        Visible = True
                      end>
                  end
                end
                object GroupBox4: TGroupBox
                  Left = 2
                  Top = 137
                  Width = 656
                  Height = 85
                  Align = alClient
                  Caption = '  Recebimen&tos '
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  object DBGrid3: TDBGrid
                    Left = 2
                    Top = 15
                    Width = 652
                    Height = 68
                    Align = alClient
                    BorderStyle = bsNone
                    Color = clWhite
                    DataSource = DSSQLRecebimento
                    FixedColor = 10053171
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    Options = [dgTitles, dgColumnResize, dgColLines, dgConfirmDelete, dgCancelOnExit]
                    ParentFont = False
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWhite
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = [fsBold]
                    OnDrawColumnCell = DBGridListaDrawColumnCell
                    OnDblClick = DBGridListaDblClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'RECEDRECTO'
                        Title.Alignment = taCenter
                        Width = 63
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEN2VLRRECTO'
                        Title.Alignment = taCenter
                        Width = 55
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEN2VLRJURO'
                        Title.Alignment = taCenter
                        Width = 45
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEN2VLRMULTA'
                        Title.Alignment = taCenter
                        Width = 45
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEN2DESC'
                        Title.Alignment = taCenter
                        Width = 45
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'EMPRICODREC'
                        Title.Alignment = taCenter
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEA30HIST'
                        Width = 296
                        Visible = True
                      end>
                  end
                end
              end
              object GroupBox2: TGroupBox
                Left = 0
                Top = 0
                Width = 660
                Height = 123
                Align = alTop
                Caption = ' '#192' &VISTA '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object DBGrid2: TDBGrid
                  Left = 2
                  Top = 15
                  Width = 327
                  Height = 106
                  Align = alLeft
                  BorderStyle = bsNone
                  Color = clWhite
                  DataSource = DSSQLCupomNumerario
                  FixedColor = 10053171
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWhite
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = [fsBold]
                  OnDrawColumnCell = DBGridListaDrawColumnCell
                  OnDblClick = DBGridListaDblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'NumerarioLookup'
                      Title.Alignment = taCenter
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'CPNMN2VLR'
                      Title.Alignment = taCenter
                      Visible = True
                    end>
                end
              end
            end
            object TabSheetCheques: TTabSheet
              Caption = 'Cheques'
              ImageIndex = 4
              object DBGrid5: TDBGrid
                Left = 0
                Top = 0
                Width = 1226
                Height = 500
                Align = alClient
                BorderStyle = bsNone
                Color = clWhite
                DataSource = DSSQLCheques
                FixedColor = 10053171
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWhite
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                OnDrawColumnCell = DBGridListaDrawColumnCell
                OnDblClick = DBGridListaDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Width = 36
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BANCA5CODCHQ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA10AGENCIACHQ'
                    Width = 50
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA15CONTACHQ'
                    Width = 73
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA15NROCHQ'
                    Width = 73
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2VLR'
                    Width = 77
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCINROPARC'
                    Width = 22
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDEMIS'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDVENC'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDDEPOSCHQ'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA60TITULARCHQ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA20CGCCPFCHQ'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SALDO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUPOA13ID'
                    Visible = True
                  end>
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 80
            Width = 1234
            Height = 26
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 1234
            Height = 80
            object Label1: TLabel
              Left = 11
              Top = 3
              Width = 55
              Height = 13
              Caption = 'ID Cupom'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 112
              Top = 3
              Width = 107
              Height = 13
              Caption = 'Cliente Cadastrado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 431
              Top = 40
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
            object Label5: TLabel
              Left = 530
              Top = 39
              Width = 67
              Height = 13
              Caption = 'Tipo Padr'#227'o'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 253
              Top = 39
              Width = 62
              Height = 13
              Caption = 'Desc. Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 171
              Top = 39
              Width = 62
              Height = 13
              Caption = 'Total Itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 336
              Top = 39
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
            object Label19: TLabel
              Left = 89
              Top = 39
              Width = 63
              Height = 13
              Caption = 'Desc. Itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 7
              Top = 39
              Width = 63
              Height = 13
              Caption = 'Total Bruto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label39: TLabel
              Left = 429
              Top = 3
              Width = 86
              Height = 13
              Caption = 'Cod.Autorizado'
              FocusControl = DBEdit38
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 530
              Top = 3
              Width = 79
              Height = 13
              Caption = 'Origem Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 16
              Width = 97
              Height = 21
              Color = 16249066
              Ctl3D = True
              DataField = 'CUPOA13ID'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 0
            end
            object DBEdit2: TDBDateEdit
              Left = 426
              Top = 53
              Width = 101
              Height = 21
              TabStop = False
              DataField = 'CUPODEMIS'
              DataSource = DSTemplate
              Color = 16249066
              Ctl3D = True
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 530
              Top = 53
              Width = 129
              Height = 21
              Color = 16249066
              Ctl3D = True
              DataField = 'TipoPadraoCalcField'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 3
            end
            object DBLookupComboBox1: TDBEdit
              Left = 108
              Top = 16
              Width = 315
              Height = 21
              BevelWidth = 0
              Color = 16249066
              Ctl3D = True
              DataField = 'ClienteLookup'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 1
            end
            object DBEdit10: TDBEdit
              Left = 253
              Top = 53
              Width = 80
              Height = 21
              BevelWidth = 0
              Color = 16249066
              Ctl3D = True
              DataField = 'CUPON2DESC'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 4
            end
            object DBEdit16: TDBEdit
              Left = 171
              Top = 53
              Width = 80
              Height = 21
              BevelWidth = 0
              Color = 16249066
              Ctl3D = True
              DataField = 'CUPON2TOTITENS'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 5
            end
            object DBEdit3: TEvDBNumEdit
              Left = 336
              Top = 53
              Width = 87
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              Ctl3D = True
              DataField = 'TotalGeral'
              DataSource = DSTemplate
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C00D00FFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0874BFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0000BFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C00203FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C02929}
              ParentCtl3D = False
              TabOrder = 6
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 89
              Top = 53
              Width = 80
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              Ctl3D = True
              DataField = 'CUPON2DESCITENS'
              DataSource = DSTemplate
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C00D00FFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0874BFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0000BFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C00203FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C02929}
              ParentCtl3D = False
              TabOrder = 7
            end
            object EvDBNumEdit2: TEvDBNumEdit
              Left = 7
              Top = 53
              Width = 80
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              Ctl3D = True
              DataField = 'TotalBruto'
              DataSource = DSTemplate
              Glyph.Data = {
                46040000424D460400000000000036000000280000001A0000000D0000000100
                1800000000001004000000000000000000000000000000000000FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C00D00FFC0C080404080404080404080404080404080404080
                4040804040804040804040FFC0C0FFC0C0FFC0C0FFFFFF808080808080808080
                808080808080808080808080808080808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C0874BFFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060FFC000FFFFFFFFC000FFFFFFFF
                C000FFFFFFFF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                808080FFFFFF808080FFFFFFFFC0C0808080FFC0C0FFC0C00000FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF4060400000FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060400000FFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0808080FFC0C0FFC0C0FFC0C0FFC0C0FFFFFFFFC0C080
                8080FFC0C0FFC0C00000FFC0C0FFC000FF406040000040000040000040000040
                0000400000FF4060804040FFC0C0FFC0C0FFC0C0FFFFFFFFC0C0808080808080
                808080808080808080808080FFC0C0808080FFC0C0FFC0C02929FFC0C0FFC000
                FF4060FF4060FF4060FF4060FF4060FF4060FF4060FF4060804040FFC0C0FFC0
                C0FFC0C0FFFFFFFFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C080
                8080FFC0C0FFC0C0000BFFC0C0FFC000FFC000FFC000FFC000FFC000FFC000FF
                C000FFC000FFC000804040FFC0C0FFC0C0FFC0C0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0FFC0C00203FFC0C0FFC0C0
                FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0
                C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FFC0C0FF
                C0C0FFC0C0FFC0C02929}
              ParentCtl3D = False
              TabOrder = 8
            end
            object DBEdit38: TDBEdit
              Left = 427
              Top = 16
              Width = 96
              Height = 21
              Color = 16249066
              Ctl3D = True
              DataField = 'CLDPICOD'
              DataSource = DSTemplate
              ParentCtl3D = False
              TabOrder = 9
            end
            object ComboOrigemVenda: TRxDBComboBox
              Left = 528
              Top = 15
              Width = 129
              Height = 21
              Style = csDropDownList
              Color = 16249066
              Ctl3D = True
              DataField = 'ORIGEMVENDA'
              DataSource = DSTemplate
              EnableValues = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ItemHeight = 13
              Items.Strings = (
                'Normal'
                'Pr'#233'-Vendas/Mesas'
                'Tele')
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
              TabStop = False
              Values.Strings = (
                'C'
                'P'
                'Tele')
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object CancelarCupom: TMenuItem
      Caption = 'Cancelar Venda (Cupom Fiscal ou NFCe)'
      OnClick = CancelarCupomClick
    end
    object MnadmRetransmitirNFCe: TMenuItem
      Caption = 'Retransmitir NFCe (em Contingencia)'
      OnClick = MnadmRetransmitirNFCeClick
    end
    object CorrigeProblemaCadterm603para661: TMenuItem
      Caption = 'Corrige Problema Cad term 603 para 66'
      Visible = False
      OnClick = CorrigeProblemaCadterm603para661Click
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object CupomEletronicoNFCe1: TMenuItem
      Caption = 'Cupom Eletronico (NFCe)'
      OnClick = CupomEletronicoNFCe1Click
    end
    object MnReimprimirvendaatual: TMenuItem
      Caption = 'PreVenda'
      OnClick = MnReimprimirvendaatualClick
    end
    object CarneAvulso1: TMenuItem
      Caption = 'Carne Avulso'
    end
    object MnEtiquetaAdesivaFabricacao: TMenuItem
      Caption = 'Etiqueta Adesiva Fabrica'#231#227'o'
      OnClick = MnEtiquetaAdesivaFabricacaoClick
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From CUPOM Where (%MFiltro)'
      'and (%MEmpresa)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    object SQLTemplateCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOM.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Terminal'
      FieldName = 'TERMICOD'
      Origin = 'DB.CUPOM.TERMICOD'
    end
    object SQLTemplateCUPOICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Cupom'
      FieldName = 'CUPOICOD'
      Origin = 'DB.CUPOM.CUPOICOD'
    end
    object SQLTemplateCUPODEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateClienteLookup: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkCalculated
      FieldName = 'ClienteLookup'
      LookupDataSet = SQLCliente
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60RAZAOSOC'
      KeyFields = 'CLIEA13ID'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplatePLRCICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Plano'
      FieldName = 'PLRCICOD'
      Origin = 'DB.CUPOM.PLRCICOD'
    end
    object SQLTemplatePlanoLookup: TStringField
      DisplayLabel = 'Plano'
      FieldKind = fkLookup
      FieldName = 'PlanoLookup'
      LookupDataSet = SQLPlano
      LookupKeyFields = 'PLRCICOD'
      LookupResultField = 'PLRCA60DESCR'
      KeyFields = 'PLRCICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateVENDICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOM.VENDICOD'
    end
    object SQLTemplateVendedorLookup: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'VendedorLookup'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCONVICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Conv'#234'nio'
      FieldName = 'CONVICOD'
      Origin = 'DB.CUPOM.CONVICOD'
    end
    object SQLTemplateConvenioLookup: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldKind = fkLookup
      FieldName = 'ConvenioLookup'
      LookupDataSet = SQLConvenio
      LookupKeyFields = 'CONVICOD'
      LookupResultField = 'CONVA60DESCR'
      KeyFields = 'CONVICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCUPOCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'CUPOCSTATUS'
      Origin = 'DB.CUPOM.CUPOCSTATUS'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCUPON2TOTITENS: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPON2DESC: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPON2ACRESC: TFloatField
      DisplayLabel = 'Acr'#233'sc.'
      FieldName = 'CUPON2ACRESC'
      Origin = 'DB.CUPOM.CUPON2ACRESC'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPON2TOTITENSRET: TFloatField
      DisplayLabel = 'Valor Retorno'
      FieldName = 'CUPON2TOTITENSRET'
      Origin = 'DB.CUPOM.CUPON2TOTITENSRET'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPOINRO: TIntegerField
      DisplayLabel = 'Cupom ou NFCe Nro'
      FieldName = 'CUPOINRO'
      Origin = 'DB.CUPOM.CUPOINRO'
      Visible = False
      DisplayFormat = '000000'
    end
    object SQLTemplateCUPOCTIPOPADRAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateTipoPadraoCalcField: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'TipoPadraoCalcField'
      Visible = False
      Size = 10
      Calculated = True
    end
    object SQLTemplateCUPON2CONVTAXA: TFloatField
      DisplayLabel = 'Tx.Conv.'
      FieldName = 'CUPON2CONVTAXA'
      Origin = 'DB.CUPOM.CUPON2CONVTAXA'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPOINROORDCOMPRA: TIntegerField
      FieldName = 'CUPOINROORDCOMPRA'
      Origin = 'DB.CUPOM.CUPOINROORDCOMPRA'
    end
    object SQLTemplateCUPOA13IDTROCA: TStringField
      DisplayLabel = 'Doc.Troca'
      FieldName = 'CUPOA13IDTROCA'
      Origin = 'DB.CUPOM.CUPOA13IDTROCA'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCUPON2VLRCOMISSAO: TFloatField
      FieldName = 'CUPON2VLRCOMISSAO'
      Origin = 'DB.CUPOM.CUPON2VLRCOMISSAO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPOA20CODANT: TStringField
      DisplayLabel = 'C'#243'd.Antigo'
      FieldName = 'CUPOA20CODANT'
      Origin = 'DB.CUPOM.CUPOA20CODANT'
      FixedChar = True
    end
    object SQLTemplateCUPODCANC: TDateTimeField
      DisplayLabel = 'Dt.Canc.'
      FieldName = 'CUPODCANC'
      Origin = 'DB.CUPOM.CUPODCANC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCUPON2JUROATRAS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'CUPON2JUROATRAS'
      Origin = 'DB.CUPOM.CUPON2JUROATRAS'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPON2MULTAATRAS: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'CUPON2MULTAATRAS'
      Origin = 'DB.CUPOM.CUPON2MULTAATRAS'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPODPAGTOCONSIG: TDateTimeField
      FieldName = 'CUPODPAGTOCONSIG'
      Origin = 'DB.CUPOM.CUPODPAGTOCONSIG'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.CUPOM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.CUPOM.REGISTRO'
    end
    object SQLTemplateStatusCalcField: TStringField
      DisplayLabel = 'Status'
      FieldKind = fkCalculated
      FieldName = 'StatusCalcField'
      Visible = False
      Size = 15
      Calculated = True
    end
    object SQLTemplateCUPON3BONUSTROCA: TFloatField
      DisplayLabel = 'B'#244'nus Troca'
      FieldName = 'CUPON3BONUSTROCA'
      Origin = 'DB.CUPOM.CUPON3BONUSTROCA'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateTotalGeral: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalGeral'
      Visible = False
      Calculated = True
    end
    object SQLTemplateUSUAICODCANC: TIntegerField
      FieldName = 'USUAICODCANC'
      Origin = 'DB.CUPOM.USUAICODCANC'
    end
    object SQLTemplateUsuarioCancLookup: TStringField
      DisplayLabel = 'Cupom Cancelado por'
      FieldKind = fkLookup
      FieldName = 'UsuarioCancLookup'
      LookupDataSet = SQLUsuario
      LookupKeyFields = 'USUAICOD'
      LookupResultField = 'USUAA60LOGIN'
      KeyFields = 'USUAICODCANC'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplateCUPON3CREDTAXA: TFloatField
      FieldName = 'CUPON3CREDTAXA'
      Origin = 'DB.CUPOM.CUPON3CREDTAXA'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPOCCONSIG: TStringField
      DisplayLabel = 'Consig.'
      FieldName = 'CUPOCCONSIG'
      Origin = 'DB.CUPOM.CUPOCCONSIG'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCUPOV254OBS: TStringField
      DisplayLabel = 'Obs da Venda'
      FieldName = 'CUPOV254OBS'
      Origin = 'DB.CUPOM.CUPOV254OBS'
      Size = 254
    end
    object SQLTemplateCUPON2DESCITENS: TFloatField
      FieldName = 'CUPON2DESCITENS'
      Origin = 'DB.CUPOM.CUPON2DESCITENS'
    end
    object SQLTemplateTotalBruto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalBruto'
      Calculated = True
    end
    object SQLTemplateCUPODENTREGA: TDateTimeField
      FieldName = 'CUPODENTREGA'
      Origin = 'DB.CUPOM.CUPODENTREGA'
    end
    object SQLTemplateTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
      Origin = 'DB.CUPOM.TPVDICOD'
    end
    object SQLTemplateCUPOA30DATACARTAO: TStringField
      DisplayLabel = 'Data Transa'#231#227'o'
      FieldName = 'CUPOA30DATACARTAO'
      Origin = 'DB.CUPOM.CUPOA30DATACARTAO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCUPOA30HORACARTAO: TStringField
      DisplayLabel = 'Hora Transa'#231#227'o'
      FieldName = 'CUPOA30HORACARTAO'
      Origin = 'DB.CUPOM.CUPOA30HORACARTAO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCUPOA30NSUPROVEDOR: TStringField
      DisplayLabel = 'NSU Provedor'
      FieldName = 'CUPOA30NSUPROVEDOR'
      Origin = 'DB.CUPOM.CUPOA30NSUPROVEDOR'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCUPOA30NSUINSTITUICAO: TStringField
      DisplayLabel = 'NSU Institui'#231#227'o'
      FieldName = 'CUPOA30NSUINSTITUICAO'
      Origin = 'DB.CUPOM.CUPOA30NSUINSTITUICAO'
      Visible = False
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCATCA13ID: TStringField
      FieldName = 'CATCA13ID'
      Origin = 'DB.CUPOM.CATCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCUPON2BASEICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'CUPON2BASEICMS'
      Origin = 'DB.CUPOM.CUPON2BASEICMS'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPON2VLRICMS: TFloatField
      DisplayLabel = 'Vlr. ICMS'
      FieldName = 'CUPON2VLRICMS'
      Origin = 'DB.CUPOM.CUPON2VLRICMS'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CUPOM.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCUPODQUITACAO: TDateTimeField
      DisplayLabel = 'Data de Quita'#231#227'o'
      FieldName = 'CUPODQUITACAO'
      Origin = 'DB.CUPOM.CUPODQUITACAO'
      Visible = False
    end
    object SQLTemplateCLIENTENOME: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'CLIENTENOME'
      Origin = 'DB.CUPOM.CLIENTENOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIENTECNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CLIENTECNPJ'
      Origin = 'DB.CUPOM.CLIENTECNPJ'
      FixedChar = True
    end
    object SQLTemplateCLIENTEENDE: TStringField
      DisplayLabel = 'Endereco'
      FieldName = 'CLIENTEENDE'
      Origin = 'DB.CUPOM.CLIENTEENDE'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLIENTECIDA: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLIENTECIDA'
      Origin = 'DB.CUPOM.CLIENTECIDA'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCLIENTEFONE: TStringField
      FieldName = 'CLIENTEFONE'
      Origin = 'DB.CUPOM.CLIENTEFONE'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateUSUAICODVENDA: TIntegerField
      FieldName = 'USUAICODVENDA'
      Origin = 'DB.CUPOM.USUAICODVENDA'
    end
    object SQLTemplateUsuarioNome: TStringField
      FieldKind = fkLookup
      FieldName = 'UsuarioNome'
      LookupDataSet = SQLUsuario
      LookupKeyFields = 'USUAICOD'
      LookupResultField = 'USUAA60LOGIN'
      KeyFields = 'USUAICODVENDA'
      Lookup = True
    end
    object SQLTemplateCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.CUPOM.CLDPICOD'
    end
    object SQLTemplateCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CUPOM.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCUPOA13IDCUPNEG: TStringField
      FieldName = 'CUPOA13IDCUPNEG'
      Origin = 'DB.CUPOM.CUPOA13IDCUPNEG'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.CUPOM.OPESICOD'
    end
    object SQLTemplatePLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.CUPOM.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.CUPOM.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCUPOA8PLACAVEIC: TStringField
      FieldName = 'CUPOA8PLACAVEIC'
      Origin = 'DB.CUPOM.CUPOA8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateORIGEMVENDA: TStringField
      FieldName = 'ORIGEMVENDA'
      Origin = 'DB.CUPOM.ORIGEMVENDA'
      Size = 5
    end
    object SQLTemplateTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = 'DB.CUPOM.TROCO'
    end
    object SQLTemplateDISPICOD: TIntegerField
      DisplayLabel = 'Display'
      FieldName = 'DISPICOD'
      Origin = 'DB.CUPOM.DISPICOD'
    end
    object SQLTemplateCUPOCLEVAR: TStringField
      FieldName = 'CUPOCLEVAR'
      Origin = 'DB.CUPOM.CUPOCLEVAR'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCUPON2VLRPIS: TFloatField
      FieldName = 'CUPON2VLRPIS'
      Origin = 'DB.CUPOM.CUPON2VLRPIS'
    end
    object SQLTemplateCUPON2VLRCOFINS: TFloatField
      FieldName = 'CUPON2VLRCOFINS'
      Origin = 'DB.CUPOM.CUPON2VLRCOFINS'
    end
    object SQLTemplateCONTAICOD: TIntegerField
      FieldName = 'CONTAICOD'
      Origin = 'DB.CUPOM.CONTAICOD'
    end
    object SQLTemplateMESAICOD: TIntegerField
      DisplayLabel = 'Mesa'
      FieldName = 'MESAICOD'
      Origin = 'DB.CUPOM.MESAICOD'
    end
    object SQLTemplateCLIENTEBAIRRO: TStringField
      FieldName = 'CLIENTEBAIRRO'
      Origin = 'DB.CUPOM.CLIENTEBAIRRO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCHAVEACESSO: TStringField
      DisplayLabel = 'Chave NFCe'
      FieldName = 'CHAVEACESSO'
      Origin = 'DB.CUPOM.CHAVEACESSO'
      Size = 44
    end
    object SQLTemplatePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'DB.CUPOM.PROTOCOLO'
      Size = 15
    end
    object SQLTemplateSTNFE: TStringField
      FieldName = 'STNFE'
      Origin = 'DB.CUPOM.STNFE'
      Size = 5
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE')
    Macros = <>
    Left = 16
    Top = 312
  end
  object SQLPlano: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PLANORECEBIMENTO')
    Macros = <>
    Left = 44
    Top = 312
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from VENDEDOR')
    Macros = <>
    Left = 16
    Top = 340
  end
  object SQLConvenio: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONVENIO')
    Macros = <>
    Left = 44
    Top = 340
  end
  object SQLCupomNumerario: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  CUPOMNUMERARIO'
      'where'
      '  CUPOA13ID = :CUPOA13ID')
    Macros = <>
    Left = 16
    Top = 368
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLCupomNumerarioCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMNUMERARIO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioNUMEICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Numer'#225'rio'
      FieldName = 'NUMEICOD'
      Origin = 'DB.CUPOMNUMERARIO.NUMEICOD'
    end
    object SQLCupomNumerarioNumerarioLookup: TStringField
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
    object SQLCupomNumerarioCPNMN2VLR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CPNMN2VLR'
      Origin = 'DB.CUPOMNUMERARIO.CPNMN2VLR'
      DisplayFormat = '#,##0.00'
    end
    object SQLCupomNumerarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CUPOMNUMERARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCupomNumerarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CUPOMNUMERARIO.REGISTRO'
    end
  end
  object DSSQLCupomNumerario: TDataSource
    DataSet = SQLCupomNumerario
    Left = 44
    Top = 368
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO')
    Macros = <>
    Left = 16
    Top = 284
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select '
      '  CTRCA13ID,'
      '  CTRCINROPARC,'
      '  CTRCDVENC,'
      '  CTRCN2VLR,'
      '  NUMEICOD,'
      '  (CTRCN2VLR - CTRCN2TOTREC) as SALDO,'
      '  CTRCDULTREC,'
      '  CTRCN2TOTREC,'
      '  CTRCN2TOTJUROREC,'
      '  CTRCN2TOTMULTAREC,'
      '  CTRCN2TOTDESCREC,'
      '  EMPRICODULTREC,'
      '  CUPOA13ID,'
      '  CTRCA5TIPOPADRAO,'
      '  CTRCN2TXMULTA,'
      '  CTRCN2TXJURO'
      'from '
      '  CONTASRECEBER'
      'where'
      '  CUPOA13ID = :CUPOA13ID and'
      '  CTRCA5TIPOPADRAO <> ''CHQ'''
      'order by '
      '   CTRCINROPARC')
    Macros = <>
    Left = 16
    Top = 396
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      DisplayLabel = 'Prc'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberNumerarioLookup: TStringField
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
    object SQLContasReceberSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Dt.'#218'lt.Rec.'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      DisplayLabel = 'Vlr.Rec.'
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      DisplayLabel = 'Empr.'#218'lt.Rec.'
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object Tipo: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCN2TXMULTA: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      DisplayFormat = '#,##0.00'
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      DisplayLabel = 'Juro'
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      DisplayFormat = '#,##0.00'
    end
  end
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 44
    Top = 396
  end
  object SQLRecebimento: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLContasReceber
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  RECEBIMENTO'
      'where'
      '  CTRCA13ID = :CTRCA13ID'
      'order by'
      '  RECEDRECTO, RECEICOD')
    Macros = <>
    Left = 16
    Top = 424
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLRecebimentoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.RECEBIMENTO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoRECEICOD: TIntegerField
      FieldName = 'RECEICOD'
      Origin = 'DB.RECEBIMENTO.RECEICOD'
    end
    object SQLRecebimentoRECEDRECTO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'RECEDRECTO'
      Origin = 'DB.RECEBIMENTO.RECEDRECTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLRecebimentoRECEN2VLRRECTO: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoRECEN2VLRJURO: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoRECEN2VLRMULTA: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoRECEN2DESC: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoRECEA30HIST: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'RECEA30HIST'
      Origin = 'DB.RECEBIMENTO.RECEA30HIST'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLRecebimento: TDataSource
    DataSet = SQLRecebimento
    Left = 44
    Top = 424
  end
  object SQLCupomItem: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select'
      '  CUPOMITEM.CUPOA13ID,'
      '  CUPOMITEM.CPITIPOS,'
      '  CUPOMITEM.PRODICOD,'
      '  CUPOMITEM.CPITN3VLRUNIT,'
      '  CUPOMITEM.CPITN3QTD,'
      
        '  (CUPOMITEM.CPITN3VLRUNIT * CUPOMITEM.CPITN3QTD) as VLRTOTALITE' +
        'M,'
      '  CUPOMITEM.VENDICOD,'
      '  PRODUTO.PRODA60DESCR,'
      '  PRODUTO.PRODN2ALIQPIS,'
      '  PRODUTO.PRODN2ALIQCOFINS,'
      '  CUPOMITEM.CPITN2DESC,'
      '  CUPOMITEM.CPITN2BASEICMS,'
      '  CUPOMITEM.COITN2ICMSALIQ,'
      '  CUPOMITEM.CPITN2VLRICMS,'
      '  CUPOMITEM.CPITN3QTDTROCA,'
      '  CUPOMITEM.CPITTOBS,'
      '  CUPOMITEM.CPITCSTATUS,'
      '  CUPOMITEM.M3_LARGURA,'
      '  CUPOMITEM.M3_COMPRI,'
      '  CUPOMITEM.M3_ESPESSURA'
      'from'
      
        '  (CUPOMITEM CUPOMITEM inner join PRODUTO PRODUTO on CUPOMITEM.P' +
        'RODICOD = PRODUTO.PRODICOD)'
      'where'
      '  CUPOMITEM.CUPOA13ID = :CUPOA13ID')
    Macros = <>
    Left = 44
    Top = 284
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLCupomItemCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomItemCPITIPOS: TIntegerField
      FieldName = 'CPITIPOS'
      Origin = 'DB.CUPOMITEM.CPITIPOS'
    end
    object SQLCupomItemCPITCSTATUS: TStringField
      FieldName = 'CPITCSTATUS'
      Origin = 'DB.CUPOMITEM.CPITCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomItemPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODICOD'
    end
    object SQLCupomItemPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCupomItemCPITN3QTD: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'CPITN3QTD'
    end
    object SQLCupomItemCPITN3VLRUNIT: TFloatField
      DisplayLabel = 'Vlr.Unit.'
      FieldName = 'CPITN3VLRUNIT'
    end
    object SQLCupomItemVLRTOTALITEM: TFloatField
      DisplayLabel = 'Vlr.Total'
      FieldName = 'VLRTOTALITEM'
    end
    object SQLCupomItemVENDICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Vend.'
      FieldName = 'VENDICOD'
    end
    object SQLCupomItemCPITN2DESC: TFloatField
      FieldName = 'CPITN2DESC'
      Origin = 'DB.CUPOMITEM.CPITN2DESC'
    end
    object SQLCupomItemCPITN2BASEICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'CPITN2BASEICMS'
      Origin = 'DB.CUPOMITEM.CPITN2BASEICMS'
    end
    object SQLCupomItemCPITN2VLRICMS: TFloatField
      DisplayLabel = 'Vlr. ICMS'
      FieldName = 'CPITN2VLRICMS'
      Origin = 'DB.CUPOMITEM.CPITN2VLRICMS'
    end
    object SQLCupomItemCPITN3QTDTROCA: TFloatField
      FieldName = 'CPITN3QTDTROCA'
      Origin = 'DB.CUPOMITEM.CPITN3QTDTROCA'
    end
    object SQLCupomItemCPITTOBS: TStringField
      FieldName = 'CPITTOBS'
      Origin = 'DB.CUPOMITEM.CPITTOBS'
      Size = 60
    end
    object SQLCupomItemCOITN2ICMSALIQ: TFloatField
      FieldName = 'COITN2ICMSALIQ'
      Origin = 'DB.CUPOMITEM.COITN2ICMSALIQ'
    end
    object SQLCupomItemM3_LARGURA: TFloatField
      FieldName = 'M3_LARGURA'
      Origin = 'DB.CUPOMITEM.M3_LARGURA'
      Precision = 9
    end
    object SQLCupomItemM3_COMPRI: TFloatField
      FieldName = 'M3_COMPRI'
      Origin = 'DB.CUPOMITEM.M3_COMPRI'
      Precision = 9
    end
    object SQLCupomItemM3_ESPESSURA: TFloatField
      FieldName = 'M3_ESPESSURA'
      Origin = 'DB.CUPOMITEM.M3_ESPESSURA'
      Precision = 9
    end
  end
  object DSSQLCupomItem: TDataSource
    AutoEdit = False
    DataSet = SQLCupomItem
    Left = 72
    Top = 284
  end
  object SQLUsuario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO')
    Macros = <>
    Left = 16
    Top = 452
  end
  object SQLCheques: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select * from CONTASRECEBER where '
      'CUPOA13ID = :CUPOA13ID and CTRCA5TIPOPADRAO = '#39'CHQ'#39
      ''
      'union all'
      ''
      'select * from CONTASRECEBER where '
      'CUPOA13ID = :CUPOA13ID and CTRCA5TIPOPADRAO = '#39'CHQP'#39
      ''
      'union all'
      ''
      'select * from CONTASRECEBER where '
      'CUPOA13ID = :CUPOA13ID and CTRCA5TIPOPADRAO = '#39'CHQV'#39)
    Macros = <>
    Left = 16
    Top = 480
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
        Size = 14
      end
      item
        DataType = ftFixedChar
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
      end>
    object SQLChequesCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequesEMPRICOD: TIntegerField
      DisplayLabel = 'Empr.'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLChequesCTRCINROPARC: TIntegerField
      DisplayLabel = 'Prc'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLChequesCTRCDVENC: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLChequesCTRCN2VLR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
    end
    object SQLChequesNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLChequesCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Dt.'#218'lt.Rec.'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLChequesCTRCN2TOTREC: TFloatField
      DisplayLabel = 'Vlr.Rec.'
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLChequesCTRCN2TOTJUROREC: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLChequesCTRCN2TOTMULTAREC: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLChequesCTRCN2TOTDESCREC: TFloatField
      DisplayLabel = 'Desc.'
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLChequesEMPRICODULTREC: TIntegerField
      DisplayLabel = 'Empr.'#218'lt.Rec.'
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLChequesCUPOA13ID: TStringField
      DisplayLabel = 'Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequesCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLChequesCTRCN2TXMULTA: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      DisplayFormat = '#,##0.00'
    end
    object SQLChequesCTRCN2TXJURO: TFloatField
      DisplayLabel = 'Juro'
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      DisplayFormat = '#,##0.00'
    end
    object SQLChequesBANCA5CODCHQ: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLChequesCTRCA10AGENCIACHQ: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLChequesCTRCA15CONTACHQ: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLChequesCTRCA15NROCHQ: TStringField
      DisplayLabel = 'Nro.Cheque'
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLChequesCTRCA60TITULARCHQ: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLChequesCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLChequesCTRCDDEPOSCHQ: TDateTimeField
      DisplayLabel = 'Dep'#243'sito'
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLChequesCTRCDEMIS: TDateTimeField
      DisplayLabel = 'Digita'#231#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object DSSQLCheques: TDataSource
    DataSet = SQLCheques
    Left = 44
    Top = 480
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT TERMICOD, TERMA60DESCR FROM TERMINAL')
    Macros = <>
    Left = 16
    Top = 510
    object SQLTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLDependente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CLIEA13ID,CLDPICOD, CLDPA60NOME FROM CLIENTEDEPENDENTE')
    Macros = <>
    Left = 44
    Top = 510
    object SQLDependenteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEDEPENDENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDependenteCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPICOD'
    end
    object SQLDependenteCLDPA60NOME: TStringField
      FieldName = 'CLDPA60NOME'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object SQLDadosVenda: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'SELECT * FROM TELEENTREGA WHERE'
      'CUPOA13ID = :CUPOA13ID')
    Macros = <>
    Left = 16
    Top = 256
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CUPOA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLDadosVendaTELEA13ID: TStringField
      FieldName = 'TELEA13ID'
      Origin = 'DB.TELEENTREGA.TELEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDadosVendaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TELEENTREGA.EMPRICOD'
    end
    object SQLDadosVendaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TELEENTREGA.TERMICOD'
    end
    object SQLDadosVendaTELEICOD: TIntegerField
      FieldName = 'TELEICOD'
      Origin = 'DB.TELEENTREGA.TELEICOD'
    end
    object SQLDadosVendaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.TELEENTREGA.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDadosVendaNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.TELEENTREGA.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDadosVendaPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.TELEENTREGA.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDadosVendaTELEDENTRPREV: TDateTimeField
      FieldName = 'TELEDENTRPREV'
      Origin = 'DB.TELEENTREGA.TELEDENTRPREV'
    end
    object SQLDadosVendaTELEDENTRPREV1: TDateTimeField
      FieldName = 'TELEDENTRPREV1'
      Origin = 'DB.TELEENTREGA.TELEDENTRPREV1'
    end
    object SQLDadosVendaTELEDENTRPREV2: TDateTimeField
      FieldName = 'TELEDENTRPREV2'
      Origin = 'DB.TELEENTREGA.TELEDENTRPREV2'
    end
    object SQLDadosVendaTELEDENTRREAL: TDateTimeField
      FieldName = 'TELEDENTRREAL'
      Origin = 'DB.TELEENTREGA.TELEDENTRREAL'
    end
    object SQLDadosVendaTELEA60SOLICITANTE: TStringField
      FieldName = 'TELEA60SOLICITANTE'
      Origin = 'DB.TELEENTREGA.TELEA60SOLICITANTE'
      FixedChar = True
      Size = 60
    end
    object SQLDadosVendaTELEA60ENTRPARANOME: TStringField
      FieldName = 'TELEA60ENTRPARANOME'
      Origin = 'DB.TELEENTREGA.TELEA60ENTRPARANOME'
      FixedChar = True
      Size = 60
    end
    object SQLDadosVendaTELEA60ENTRPARAEND: TStringField
      FieldName = 'TELEA60ENTRPARAEND'
      Origin = 'DB.TELEENTREGA.TELEA60ENTRPARAEND'
      FixedChar = True
      Size = 60
    end
    object SQLDadosVendaTELEA60ENTRPARABAI: TStringField
      FieldName = 'TELEA60ENTRPARABAI'
      Origin = 'DB.TELEENTREGA.TELEA60ENTRPARABAI'
      FixedChar = True
      Size = 60
    end
    object SQLDadosVendaTELEA60ENTRPARACID: TStringField
      FieldName = 'TELEA60ENTRPARACID'
      Origin = 'DB.TELEENTREGA.TELEA60ENTRPARACID'
      FixedChar = True
      Size = 60
    end
    object SQLDadosVendaTELEA2ENTRPARAUF: TStringField
      FieldName = 'TELEA2ENTRPARAUF'
      Origin = 'DB.TELEENTREGA.TELEA2ENTRPARAUF'
      FixedChar = True
      Size = 2
    end
    object SQLDadosVendaTELEA15ENTRPARAFONE: TStringField
      FieldName = 'TELEA15ENTRPARAFONE'
      Origin = 'DB.TELEENTREGA.TELEA15ENTRPARAFONE'
      FixedChar = True
      Size = 15
    end
    object SQLDadosVendaTELEA60RECPORNOME: TStringField
      FieldName = 'TELEA60RECPORNOME'
      Origin = 'DB.TELEENTREGA.TELEA60RECPORNOME'
      FixedChar = True
      Size = 60
    end
    object SQLDadosVendaTELEADREC: TDateTimeField
      FieldName = 'TELEADREC'
      Origin = 'DB.TELEENTREGA.TELEADREC'
    end
    object SQLDadosVendaTELEA1016MENSG: TMemoField
      FieldName = 'TELEA1016MENSG'
      Origin = 'DB.TELEENTREGA.TELEA1016MENSG'
      BlobType = ftMemo
      Size = 1016
    end
    object SQLDadosVendaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TELEENTREGA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLDadosVendaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TELEENTREGA.REGISTRO'
    end
    object SQLDadosVendaTPVDICOD: TIntegerField
      FieldName = 'TPVDICOD'
      Origin = 'DB.TELEENTREGA.TPVDICOD'
    end
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 200000
    PrinterSetup.mmPaperWidth = 130000
    PrinterSetup.PaperSize = 139
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 690
    Top = 1
    Version = '10.06'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 53446
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUPOA13ID'
        DataPipeline = BDEPipeCab
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3598
        mmLeft = 40111
        mmTop = 11113
        mmWidth = 17992
        BandType = 1
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Controle:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 11113
        mmWidth = 22860
        BandType = 1
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VendedorLookup'
        DataPipeline = BDEPipeCab
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3598
        mmLeft = 32544
        mmTop = 15875
        mmWidth = 24342
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 15610
        mmWidth = 22860
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Plano:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 20108
        mmWidth = 15240
        BandType = 1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PlanoLookup'
        DataPipeline = BDEPipeCab
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3598
        mmLeft = 32544
        mmTop = 20108
        mmWidth = 18669
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 26194
        mmWidth = 20320
        BandType = 1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteLookup'
        DataPipeline = BDEPipeCab
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 30692
        mmWidth = 62971
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '----------------------------------------------------------------' +
          '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6879
        mmTop = 37571
        mmWidth = 70908
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cod.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6879
        mmTop = 41275
        mmWidth = 6703
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 41275
        mmWidth = 14288
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Qtde.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 44979
        mmWidth = 6879
        BandType = 1
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Preco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 31192
        mmTop = 44979
        mmWidth = 8326
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 69056
        mmTop = 44979
        mmWidth = 7197
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Desc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 50006
        mmTop = 44979
        mmWidth = 8128
        BandType = 1
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '----------------------------------------------------------------' +
          '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6879
        mmTop = 48683
        mmWidth = 70908
        BandType = 1
      end
      object ppLBEmpresa: TppLabel
        UserName = 'LBEmpresa'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 6879
        mmTop = 529
        mmWidth = 69850
        BandType = 1
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REGISTRO'
        DataPipeline = BDEPipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3598
        mmLeft = 7144
        mmTop = 6085
        mmWidth = 16510
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODA60DESCR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3704
        mmLeft = 20638
        mmTop = 0
        mmWidth = 46302
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODICOD'
        DisplayFormat = '#####00000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3598
        mmLeft = 7144
        mmTop = 0
        mmWidth = 17060
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CPITN3QTD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 3598
        mmLeft = 7144
        mmTop = 3704
        mmWidth = 17907
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CPITN3VLRUNIT'
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 14933
        mmTop = 3704
        mmWidth = 24807
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CPITN2DESC'
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 38513
        mmTop = 3704
        mmWidth = 20066
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VLRTOTALITEM'
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 52324
        mmTop = 3704
        mmWidth = 23834
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29369
      mmPrintPosition = 0
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Geral.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 4763
        mmWidth = 19262
        BandType = 7
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUPON2TOTITENS'
        DataPipeline = BDEPipeCab
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3704
        mmLeft = 47361
        mmTop = 4763
        mmWidth = 28840
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          '----------------------------------------------------------------' +
          '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6615
        mmTop = 0
        mmWidth = 70908
        BandType = 7
      end
      object ppSubNumerario: TppSubReport
        UserName = 'SubNumerario'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppBDEPipeNumerario'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 14288
        mmWidth = 130000
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppBDEPipeNumerario
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 200000
          PrinterSetup.mmPaperWidth = 130000
          PrinterSetup.PaperSize = 139
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'ppBDEPipeNumerario'
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CPNMN2VLR'
              DataPipeline = ppBDEPipeNumerario
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeNumerario'
              mmHeight = 3598
              mmLeft = 56621
              mmTop = 265
              mmWidth = 19516
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NumerarioLookup'
              DataPipeline = ppBDEPipeNumerario
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppBDEPipeNumerario'
              mmHeight = 3598
              mmLeft = 17664
              mmTop = 265
              mmWidth = 25400
              BandType = 4
            end
          end
        end
      end
      object ppSubPrazo: TppSubReport
        UserName = 'SubPrazo'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppBDEPipeCReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8996
        mmWidth = 130000
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppBDEPipeCReceber
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 200000
          PrinterSetup.mmPaperWidth = 130000
          PrinterSetup.PaperSize = 139
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'ppBDEPipeCReceber'
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NumerarioLookup'
              DataPipeline = ppBDEPipeCReceber
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppBDEPipeCReceber'
              mmHeight = 3598
              mmLeft = 19844
              mmTop = 265
              mmWidth = 25400
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CTRCN2VLR'
              DataPipeline = ppBDEPipeCReceber
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppBDEPipeCReceber'
              mmHeight = 3598
              mmLeft = 57150
              mmTop = 265
              mmWidth = 19008
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
          end
        end
      end
    end
  end
  object BDEPipeCab: TppBDEPipeline
    DataSource = DSTemplate
    CloseDataSource = True
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'BDEPipeCab'
    Left = 576
    Top = 1
    object BDEPipeCabppField1: TppField
      FieldAlias = 'CUPOA13ID'
      FieldName = 'CUPOA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField2: TppField
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField3: TppField
      FieldAlias = 'TERMICOD'
      FieldName = 'TERMICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField4: TppField
      FieldAlias = 'CUPOICOD'
      FieldName = 'CUPOICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField5: TppField
      FieldAlias = 'CUPODEMIS'
      FieldName = 'CUPODEMIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField6: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField7: TppField
      FieldAlias = 'ClienteLookup'
      FieldName = 'ClienteLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField8: TppField
      FieldAlias = 'PLRCICOD'
      FieldName = 'PLRCICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField9: TppField
      FieldAlias = 'PlanoLookup'
      FieldName = 'PlanoLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField10: TppField
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField11: TppField
      FieldAlias = 'VendedorLookup'
      FieldName = 'VendedorLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField12: TppField
      FieldAlias = 'CONVICOD'
      FieldName = 'CONVICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField13: TppField
      FieldAlias = 'ConvenioLookup'
      FieldName = 'ConvenioLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField14: TppField
      FieldAlias = 'CUPOCSTATUS'
      FieldName = 'CUPOCSTATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField15: TppField
      FieldAlias = 'CUPON2TOTITENS'
      FieldName = 'CUPON2TOTITENS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField16: TppField
      FieldAlias = 'CUPON2DESC'
      FieldName = 'CUPON2DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField17: TppField
      FieldAlias = 'CUPON2ACRESC'
      FieldName = 'CUPON2ACRESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField18: TppField
      FieldAlias = 'CUPON2TOTITENSRET'
      FieldName = 'CUPON2TOTITENSRET'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField19: TppField
      FieldAlias = 'CUPOINRO'
      FieldName = 'CUPOINRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField20: TppField
      FieldAlias = 'CUPOCTIPOPADRAO'
      FieldName = 'CUPOCTIPOPADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField21: TppField
      FieldAlias = 'TipoPadraoCalcField'
      FieldName = 'TipoPadraoCalcField'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField22: TppField
      FieldAlias = 'CUPON2CONVTAXA'
      FieldName = 'CUPON2CONVTAXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField23: TppField
      FieldAlias = 'CUPOINROORDCOMPRA'
      FieldName = 'CUPOINROORDCOMPRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField24: TppField
      FieldAlias = 'CUPOA13IDTROCA'
      FieldName = 'CUPOA13IDTROCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField25: TppField
      FieldAlias = 'CUPON2VLRCOMISSAO'
      FieldName = 'CUPON2VLRCOMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField26: TppField
      FieldAlias = 'CUPOA20CODANT'
      FieldName = 'CUPOA20CODANT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField27: TppField
      FieldAlias = 'CUPODCANC'
      FieldName = 'CUPODCANC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField28: TppField
      FieldAlias = 'CUPON2JUROATRAS'
      FieldName = 'CUPON2JUROATRAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField29: TppField
      FieldAlias = 'CUPON2MULTAATRAS'
      FieldName = 'CUPON2MULTAATRAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField30: TppField
      FieldAlias = 'CUPODPAGTOCONSIG'
      FieldName = 'CUPODPAGTOCONSIG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField31: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField32: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField33: TppField
      FieldAlias = 'StatusCalcField'
      FieldName = 'StatusCalcField'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField34: TppField
      FieldAlias = 'CUPON3BONUSTROCA'
      FieldName = 'CUPON3BONUSTROCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField35: TppField
      FieldAlias = 'TotalGeral'
      FieldName = 'TotalGeral'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField36: TppField
      FieldAlias = 'USUAICODCANC'
      FieldName = 'USUAICODCANC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField37: TppField
      FieldAlias = 'UsuarioCancLookup'
      FieldName = 'UsuarioCancLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField38: TppField
      FieldAlias = 'CUPON3CREDTAXA'
      FieldName = 'CUPON3CREDTAXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField39: TppField
      FieldAlias = 'CUPOCCONSIG'
      FieldName = 'CUPOCCONSIG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField40: TppField
      FieldAlias = 'CUPOV254OBS'
      FieldName = 'CUPOV254OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField41: TppField
      FieldAlias = 'CUPON2DESCITENS'
      FieldName = 'CUPON2DESCITENS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField42: TppField
      FieldAlias = 'TotalBruto'
      FieldName = 'TotalBruto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField43: TppField
      FieldAlias = 'CUPODENTREGA'
      FieldName = 'CUPODENTREGA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField44: TppField
      FieldAlias = 'TPVDICOD'
      FieldName = 'TPVDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField45: TppField
      FieldAlias = 'CUPOA30DATACARTAO'
      FieldName = 'CUPOA30DATACARTAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField46: TppField
      FieldAlias = 'CUPOA30HORACARTAO'
      FieldName = 'CUPOA30HORACARTAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField47: TppField
      FieldAlias = 'CUPOA30NSUPROVEDOR'
      FieldName = 'CUPOA30NSUPROVEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField48: TppField
      FieldAlias = 'CUPOA30NSUINSTITUICAO'
      FieldName = 'CUPOA30NSUINSTITUICAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField49: TppField
      FieldAlias = 'CATCA13ID'
      FieldName = 'CATCA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField50: TppField
      FieldAlias = 'CUPON2BASEICMS'
      FieldName = 'CUPON2BASEICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField51: TppField
      FieldAlias = 'CUPON2VLRICMS'
      FieldName = 'CUPON2VLRICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField52: TppField
      FieldAlias = 'AVALA13ID'
      FieldName = 'AVALA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField53: TppField
      FieldAlias = 'CUPODQUITACAO'
      FieldName = 'CUPODQUITACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField54: TppField
      FieldAlias = 'CLIENTENOME'
      FieldName = 'CLIENTENOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField55: TppField
      FieldAlias = 'CLIENTECNPJ'
      FieldName = 'CLIENTECNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField56: TppField
      FieldAlias = 'CLIENTEENDE'
      FieldName = 'CLIENTEENDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField57: TppField
      FieldAlias = 'CLIENTECIDA'
      FieldName = 'CLIENTECIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField58: TppField
      FieldAlias = 'CLIENTEFONE'
      FieldName = 'CLIENTEFONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField59: TppField
      FieldAlias = 'USUAICODVENDA'
      FieldName = 'USUAICODVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField60: TppField
      FieldAlias = 'UsuarioNome'
      FieldName = 'UsuarioNome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField61: TppField
      FieldAlias = 'CLDPICOD'
      FieldName = 'CLDPICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField62: TppField
      FieldAlias = 'CFOPA5COD'
      FieldName = 'CFOPA5COD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField63: TppField
      FieldAlias = 'CUPOA13IDCUPNEG'
      FieldName = 'CUPOA13IDCUPNEG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField64: TppField
      FieldAlias = 'OPESICOD'
      FieldName = 'OPESICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField65: TppField
      FieldAlias = 'PLCTA15CODCRED'
      FieldName = 'PLCTA15CODCRED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField66: TppField
      FieldAlias = 'PLCTA15CODDEB'
      FieldName = 'PLCTA15CODDEB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField67: TppField
      FieldAlias = 'CUPOA8PLACAVEIC'
      FieldName = 'CUPOA8PLACAVEIC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object BDEPipeCabppField68: TppField
      FieldAlias = 'ORIGEMVENDA'
      FieldName = 'ORIGEMVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
  end
  object ppBDEPipeNumerario: TppBDEPipeline
    DataSource = DSSQLCupomNumerario
    CloseDataSource = True
    SkipWhenNoRecords = False
    UserName = 'ppBDEPipeNumerario'
    Left = 632
    Top = 1
    object ppBDEPipeNumerarioppField1: TppField
      FieldAlias = 'CUPOA13ID'
      FieldName = 'CUPOA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeNumerarioppField2: TppField
      FieldAlias = 'NUMEICOD'
      FieldName = 'NUMEICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeNumerarioppField3: TppField
      FieldAlias = 'NumerarioLookup'
      FieldName = 'NumerarioLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeNumerarioppField4: TppField
      FieldAlias = 'CPNMN2VLR'
      FieldName = 'CPNMN2VLR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeNumerarioppField5: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeNumerarioppField6: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
  end
  object ppBDEPipeCReceber: TppBDEPipeline
    DataSource = DSSQLContasReceber
    CloseDataSource = True
    SkipWhenNoRecords = False
    UserName = 'ppBDEPipeCReceber'
    Left = 660
    Top = 1
    object ppBDEPipeCReceberppField1: TppField
      FieldAlias = 'CTRCA13ID'
      FieldName = 'CTRCA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField2: TppField
      FieldAlias = 'CTRCINROPARC'
      FieldName = 'CTRCINROPARC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField3: TppField
      FieldAlias = 'CTRCDVENC'
      FieldName = 'CTRCDVENC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField4: TppField
      FieldAlias = 'CTRCN2VLR'
      FieldName = 'CTRCN2VLR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField5: TppField
      FieldAlias = 'NUMEICOD'
      FieldName = 'NUMEICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField6: TppField
      FieldAlias = 'NumerarioLookup'
      FieldName = 'NumerarioLookup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField7: TppField
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField8: TppField
      FieldAlias = 'CTRCDULTREC'
      FieldName = 'CTRCDULTREC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField9: TppField
      FieldAlias = 'CTRCN2TOTREC'
      FieldName = 'CTRCN2TOTREC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField10: TppField
      FieldAlias = 'CTRCN2TOTJUROREC'
      FieldName = 'CTRCN2TOTJUROREC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField11: TppField
      FieldAlias = 'CTRCN2TOTMULTAREC'
      FieldName = 'CTRCN2TOTMULTAREC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField12: TppField
      FieldAlias = 'CTRCN2TOTDESCREC'
      FieldName = 'CTRCN2TOTDESCREC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField13: TppField
      FieldAlias = 'EMPRICODULTREC'
      FieldName = 'EMPRICODULTREC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField14: TppField
      FieldAlias = 'CUPOA13ID'
      FieldName = 'CUPOA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField15: TppField
      FieldAlias = 'CTRCA5TIPOPADRAO'
      FieldName = 'CTRCA5TIPOPADRAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField16: TppField
      FieldAlias = 'CTRCN2TXMULTA'
      FieldName = 'CTRCN2TXMULTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeCReceberppField17: TppField
      FieldAlias = 'CTRCN2TXJURO'
      FieldName = 'CTRCN2TXJURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object SQLImpressaoCupom: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 719
    Top = 347
  end
  object SQLParcelasPrazoVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASPRAZOVENDATEMP'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 710
    Top = 377
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
    object SQLParcelasPrazoVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
  end
  object DSSQLParcelasPrazoVendaTemp: TDataSource
    DataSet = SQLParcelasPrazoVendaTemp
    Left = 738
    Top = 377
  end
  object DSSQLParcelasVistaVendaTemp: TDataSource
    DataSet = SQLParcelasVistaVendaTemp
    Left = 738
    Top = 405
  end
  object SQLParcelasVistaVendaTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PARCELASVISTAVENDATEMP'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 710
    Top = 405
    object SQLParcelasVistaVendaTempTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.PARCELASVISTAVENDATEMP.TERMICOD'
    end
    object SQLParcelasVistaVendaTempNROITEM: TIntegerField
      FieldName = 'NROITEM'
      Origin = 'DB.PARCELASVISTAVENDATEMP.NROITEM'
      DisplayFormat = '000'
    end
    object SQLParcelasVistaVendaTempNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.PARCELASPRAZOVENDATEMP.NUMEICOD'
    end
    object SQLParcelasVistaVendaTempVALORPARC: TFloatField
      FieldName = 'VALORPARC'
      Origin = 'DB.PARCELASVISTAVENDATEMP.VALORPARC'
      DisplayFormat = '#,##0.00'
    end
    object SQLParcelasVistaVendaTempTIPOPADR: TStringField
      FieldName = 'TIPOPADR'
      Origin = 'DB.PARCELASVISTAVENDATEMP.TIPOPADR'
      FixedChar = True
      Size = 5
    end
  end
  object SQLItensTemp: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select'
      '  CUPOA13ID,'
      '  CPITN2VLRPIS,'
      '  CPITN2VLRCOFINS'
      'from'
      '  CUPOMITEM'
      'where'
      '  %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 145
    Top = 284
    object SQLItensTempCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLItensTempCPITN2VLRPIS: TFloatField
      FieldName = 'CPITN2VLRPIS'
      Origin = 'DB.CUPOMITEM.CPITN2VLRPIS'
    end
    object SQLItensTempCPITN2VLRCOFINS: TFloatField
      FieldName = 'CPITN2VLRCOFINS'
      Origin = 'DB.CUPOMITEM.CPITN2VLRCOFINS'
    end
  end
  object ppEtiq: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '0'
      '105000')
    DataPipeline = ppBDEPipeItem
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Etiquetas Adesiva'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Microsoft XPS Document Writer'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 727
    Top = 2
    Version = '10.06'
    mmColumnWidth = 105000
    DataPipelineName = 'ppBDEPipeItem'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppLinha: TppDetailBand
      BeforePrint = ppLinhaBeforePrint
      ColumnTraversal = ctLeftToRight
      mmBottomOffset = 0
      mmHeight = 68263
      mmPrintPosition = 0
      object ppDBText17: TppDBText
        UserName = 'DescricaoProduto1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTENOME'
        DataPipeline = BDEPipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3810
        mmLeft = 6350
        mmTop = 31750
        mmWidth = 91546
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUPODENTREGA'
        DataPipeline = BDEPipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 4657
        mmLeft = 68792
        mmTop = 21431
        mmWidth = 26988
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DATA ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 69056
        mmTop = 17463
        mmWidth = 23918
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUPOA13ID'
        DataPipeline = BDEPipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 4657
        mmLeft = 6085
        mmTop = 21431
        mmWidth = 28840
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PEDIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6350
        mmTop = 17463
        mmWidth = 12150
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DADOS CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6350
        mmTop = 27781
        mmWidth = 25527
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTECNPJ'
        DataPipeline = BDEPipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3810
        mmLeft = 6350
        mmTop = 35719
        mmWidth = 91546
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEENDE'
        DataPipeline = BDEPipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3810
        mmLeft = 6350
        mmTop = 39688
        mmWidth = 91546
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTECIDA'
        DataPipeline = BDEPipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3810
        mmLeft = 6350
        mmTop = 43656
        mmWidth = 91546
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIENTEFONE'
        DataPipeline = BDEPipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 3810
        mmLeft = 6350
        mmTop = 47625
        mmWidth = 91546
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DADOS PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 6350
        mmTop = 53446
        mmWidth = 27898
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODA60DESCR'
        DataPipeline = ppBDEPipeItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeItem'
        mmHeight = 3810
        mmLeft = 6085
        mmTop = 57415
        mmWidth = 91546
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CUPODEMIS'
        DataPipeline = BDEPipeCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'BDEPipeCab'
        mmHeight = 4657
        mmLeft = 39688
        mmTop = 21431
        mmWidth = 26988
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DATA VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 39952
        mmTop = 17463
        mmWidth = 19558
        BandType = 4
      end
      object ppLBEmpresa1: TppLabel
        UserName = 'ppLBEmpresa1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 6350
        mmTop = 11642
        mmWidth = 91281
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PRODICOD'
        DataPipeline = ppBDEPipeItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEPipeItem'
        mmHeight = 3810
        mmLeft = 38100
        mmTop = 53446
        mmWidth = 25929
        BandType = 4
      end
      object ppLBTamanho: TppLabel
        UserName = 'LBTamanho'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 67469
        mmTop = 53446
        mmWidth = 6308
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'CPITTOBS'
        DataPipeline = ppBDEPipeItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeItem'
        mmHeight = 6615
        mmLeft = 6615
        mmTop = 61648
        mmWidth = 91017
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppBDEPipeItem: TppBDEPipeline
    DataSource = DSSQLCupomItem
    CloseDataSource = True
    UserName = 'BDEPipeItem'
    Left = 604
    Top = 1
    object ppBDEPipeItemppField1: TppField
      FieldAlias = 'CUPOA13ID'
      FieldName = 'CUPOA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField2: TppField
      FieldAlias = 'CPITIPOS'
      FieldName = 'CPITIPOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField3: TppField
      FieldAlias = 'CPITCSTATUS'
      FieldName = 'CPITCSTATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField4: TppField
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField5: TppField
      FieldAlias = 'PRODA60DESCR'
      FieldName = 'PRODA60DESCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField6: TppField
      FieldAlias = 'CPITN3QTD'
      FieldName = 'CPITN3QTD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField7: TppField
      FieldAlias = 'CPITN3VLRUNIT'
      FieldName = 'CPITN3VLRUNIT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField8: TppField
      FieldAlias = 'VLRTOTALITEM'
      FieldName = 'VLRTOTALITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField9: TppField
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField10: TppField
      FieldAlias = 'CPITN2DESC'
      FieldName = 'CPITN2DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField11: TppField
      FieldAlias = 'CPITN2BASEICMS'
      FieldName = 'CPITN2BASEICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField12: TppField
      FieldAlias = 'CPITN2VLRICMS'
      FieldName = 'CPITN2VLRICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField13: TppField
      FieldAlias = 'CPITN3QTDTROCA'
      FieldName = 'CPITN3QTDTROCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeItemppField14: TppField
      FieldAlias = 'CPITTOBS'
      FieldName = 'CPITTOBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
  end
end
