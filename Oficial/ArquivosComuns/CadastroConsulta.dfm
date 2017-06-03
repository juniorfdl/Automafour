inherited FormCadastroConsulta: TFormCadastroConsulta
  Left = 72
  Top = 7
  Caption = 'Módulo de Consultas Avançadas'
  ClientHeight = 556
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 556
    inherited PanelCentral: TPanel
      Height = 482
      inherited PanelBarra: TPanel
        Height = 482
        inherited Button3: TRxSpeedButton
          Tag = 1
          Caption = '&3 Joins'
          Visible = True
          OnClick = Button1Click
        end
        object Button4: TRxSpeedButton
          Tag = 1
          Left = 1
          Top = 73
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&4 Filtros'
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
          OnClick = Button1Click
        end
        object Button5: TRxSpeedButton
          Tag = 1
          Left = 1
          Top = 96
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&5 Campos'
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
          OnClick = Button1Click
        end
        object Button6: TRxSpeedButton
          Tag = 1
          Left = 1
          Top = 119
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&6 Ordem'
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
          OnClick = Button1Click
        end
        object Button7: TRxSpeedButton
          Tag = 1
          Left = 1
          Top = 142
          Width = 127
          Height = 23
          Cursor = crHandPoint
          BiDiMode = bdRightToLeftNoAlign
          ParentBiDiMode = False
          GroupIndex = 1
          Caption = '&7 Resultado'
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
          OnClick = Button1Click
        end
      end
      inherited PanelFundoDados: TPanel
        Height = 482
        inherited Panel5: TPanel
          Height = 482
          inherited PagePrincipal: TPageControl
            Height = 400
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 327
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CONSA13ID'
                    Width = 103
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CONSA60DESCR'
                    Width = 527
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object BtnAddTabela: TSpeedButton
                Left = 253
                Top = 2
                Width = 23
                Height = 22
                Caption = '+'
                Enabled = False
                OnClick = BtnAddTabelaClick
              end
              object BtnDelTabela: TSpeedButton
                Left = 253
                Top = 24
                Width = 23
                Height = 22
                Caption = '-'
                Enabled = False
                OnClick = BtnDelTabelaClick
              end
              object GroupBox1: TGroupBox
                Left = 4
                Top = 2
                Width = 244
                Height = 355
                Caption = 'Tabelas'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object ComboTabela: TComboBox
                  Left = 5
                  Top = 14
                  Width = 233
                  Height = 336
                  Style = csSimple
                  Ctl3D = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 0
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 0
                  OnChange = ComboTabelaChange
                end
              end
              object DBMemoTabelas: TDBMemo
                Left = 380
                Top = 0
                Width = 369
                Height = 374
                Align = alRight
                DataField = 'CONSA255TABELAS'
                DataSource = DSTemplate
                HideSelection = False
                ScrollBars = ssVertical
                TabOrder = 1
                OnClick = DBMemoTabelasClick
                OnDblClick = DBMemoTabelasDblClick
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Joins'
              ImageIndex = 2
              object BtnAddJoin: TSpeedButton
                Left = 253
                Top = 2
                Width = 23
                Height = 21
                Caption = '+'
                Enabled = False
                OnClick = BtnAddJoinClick
              end
              object BtnDelJoin: TSpeedButton
                Left = 253
                Top = 23
                Width = 23
                Height = 22
                Caption = '-'
                Enabled = False
                OnClick = BtnDelJoinClick
              end
              object GroupBox2: TGroupBox
                Left = 4
                Top = 2
                Width = 244
                Height = 355
                Caption = ' Joins '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label3: TLabel
                  Left = 7
                  Top = 16
                  Width = 89
                  Height = 13
                  Caption = 'Tabela / Campo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label4: TLabel
                  Left = 118
                  Top = 179
                  Width = 14
                  Height = 13
                  Caption = '||'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboJoin1: TComboBox
                  Left = 7
                  Top = 32
                  Width = 230
                  Height = 149
                  Style = csSimple
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 0
                  ParentFont = False
                  TabOrder = 0
                  OnChange = ComboJoin2Change
                end
                object ComboJoin2: TComboBox
                  Left = 6
                  Top = 196
                  Width = 230
                  Height = 149
                  Style = csSimple
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 0
                  ParentFont = False
                  TabOrder = 1
                  OnChange = ComboJoin2Change
                end
              end
              object DBMemoJoins: TDBMemo
                Left = 380
                Top = 0
                Width = 369
                Height = 374
                Align = alRight
                DataField = 'CONSA255JOINS'
                DataSource = DSTemplate
                HideSelection = False
                ScrollBars = ssVertical
                TabOrder = 1
                OnClick = DBMemoJoinsClick
                OnDblClick = DBMemoJoinsDblClick
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Filtros'
              ImageIndex = 3
              object BtnAddFiltro: TSpeedButton
                Left = 253
                Top = 2
                Width = 23
                Height = 22
                Caption = '+'
                Enabled = False
                OnClick = BtnAddFiltroClick
              end
              object BtnDelFiltro: TSpeedButton
                Left = 253
                Top = 24
                Width = 23
                Height = 22
                Caption = '-'
                Enabled = False
                OnClick = BtnDelFiltroClick
              end
              object BtnParenteses: TSpeedButton
                Left = 253
                Top = 46
                Width = 23
                Height = 22
                Caption = '()'
                Enabled = False
                OnClick = BtnParentesesClick
              end
              object SpeedButton8: TSpeedButton
                Left = 253
                Top = 68
                Width = 23
                Height = 22
                Caption = 'E'
                OnClick = SpeedButton8Click
              end
              object SpeedButton9: TSpeedButton
                Left = 253
                Top = 90
                Width = 23
                Height = 22
                Caption = 'OU'
                OnClick = SpeedButton9Click
              end
              object GroupBox3: TGroupBox
                Left = 4
                Top = 2
                Width = 244
                Height = 355
                Caption = ' Filtros '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Label5: TLabel
                  Left = 7
                  Top = 16
                  Width = 89
                  Height = 13
                  Caption = 'Tabela / Campo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 8
                  Top = 233
                  Width = 54
                  Height = 13
                  Caption = 'Operação'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ComboFiltro: TComboBox
                  Left = 7
                  Top = 32
                  Width = 230
                  Height = 202
                  Style = csSimple
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 0
                  ParentFont = False
                  TabOrder = 0
                  OnChange = ComboOperacaoChange
                end
                object ComboOperacao: TComboBox
                  Left = 6
                  Top = 249
                  Width = 230
                  Height = 21
                  Style = csDropDownList
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  ParentFont = False
                  TabOrder = 1
                  OnChange = ComboOperacaoChange
                  Items.Strings = (
                    'IGUAL'
                    'MAIOR'
                    'MAIOR OU IGUAL'
                    'MENOR'
                    'MENOR OU IGUAL'
                    'ENTRE'
                    'CONTENDO'
                    'DIFERENTE'
                    'ANIVERSÁRIO')
                end
                object PanelAniversario: TPanel
                  Left = 2
                  Top = 270
                  Width = 240
                  Height = 76
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 2
                  Visible = False
                  object LIntervalo: TLabel
                    Left = 3
                    Top = 12
                    Width = 184
                    Height = 13
                    Caption = 'Entre               /               e               /'
                  end
                  object CDI: TComboBox
                    Left = 39
                    Top = 6
                    Width = 37
                    Height = 21
                    Style = csDropDownList
                    Enabled = False
                    ItemHeight = 0
                    TabOrder = 0
                  end
                  object CMI: TComboBox
                    Left = 84
                    Top = 6
                    Width = 37
                    Height = 21
                    Style = csDropDownList
                    ItemHeight = 13
                    TabOrder = 1
                    OnChange = CMIChange
                    Items.Strings = (
                      '01'
                      '02'
                      '03'
                      '04'
                      '05'
                      '06'
                      '07'
                      '08'
                      '09'
                      '10'
                      '11'
                      '12')
                  end
                  object CDF: TComboBox
                    Left = 144
                    Top = 6
                    Width = 37
                    Height = 21
                    Style = csDropDownList
                    Enabled = False
                    ItemHeight = 0
                    TabOrder = 2
                  end
                  object CMF: TComboBox
                    Left = 189
                    Top = 6
                    Width = 37
                    Height = 21
                    Style = csDropDownList
                    ItemHeight = 13
                    TabOrder = 3
                    OnChange = CMFChange
                    Items.Strings = (
                      '01'
                      '02'
                      '03'
                      '04'
                      '05'
                      '06'
                      '07'
                      '08'
                      '09'
                      '10'
                      '11'
                      '12')
                  end
                end
                object PanelValor: TPanel
                  Left = 2
                  Top = 270
                  Width = 240
                  Height = 81
                  BevelOuter = bvNone
                  ParentColor = True
                  TabOrder = 3
                  object Label7: TLabel
                    Left = 4
                    Top = 2
                    Width = 29
                    Height = 13
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object LabelE: TLabel
                    Left = 112
                    Top = 37
                    Width = 7
                    Height = 13
                    Caption = 'e'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 8404992
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object EditValor1: TMaskEdit
                    Left = 3
                    Top = 17
                    Width = 228
                    Height = 21
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = ComboOperacaoChange
                  end
                  object EditValor2: TMaskEdit
                    Left = 4
                    Top = 52
                    Width = 228
                    Height = 21
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    OnChange = ComboOperacaoChange
                  end
                end
              end
              object DBMemoFiltros: TDBMemo
                Left = 380
                Top = 0
                Width = 369
                Height = 374
                Align = alRight
                DataField = 'CONSA255FILTROS'
                DataSource = DSTemplate
                HideSelection = False
                ScrollBars = ssVertical
                TabOrder = 1
                OnClick = DBMemoFiltrosClick
                OnDblClick = DBMemoFiltrosDblClick
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Campos'
              ImageIndex = 4
              object BtnAddCampo: TSpeedButton
                Left = 253
                Top = 2
                Width = 23
                Height = 22
                Caption = '+'
                Enabled = False
                OnClick = BtnAddCampoClick
              end
              object BtnDelCampo: TSpeedButton
                Left = 253
                Top = 24
                Width = 23
                Height = 22
                Caption = '-'
                Enabled = False
                OnClick = BtnDelCampoClick
              end
              object GroupBox5: TGroupBox
                Left = 4
                Top = 2
                Width = 246
                Height = 355
                Caption = ' Campos '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object ComboCampos: TComboBox
                  Left = 6
                  Top = 17
                  Width = 235
                  Height = 336
                  Style = csSimple
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 0
                  ParentFont = False
                  TabOrder = 0
                  OnChange = ComboCamposChange
                end
              end
              object DBMemoCampos: TDBMemo
                Left = 385
                Top = 0
                Width = 364
                Height = 374
                Align = alRight
                DataField = 'CONSA255CAMPOS'
                DataSource = DSTemplate
                HideSelection = False
                ScrollBars = ssVertical
                TabOrder = 1
                OnClick = DBMemoCamposClick
                OnDblClick = DBMemoCamposDblClick
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'Ordem'
              ImageIndex = 5
              object BtnAddOrdem: TSpeedButton
                Left = 253
                Top = 2
                Width = 23
                Height = 22
                Caption = '+'
                Enabled = False
                OnClick = BtnAddOrdemClick
              end
              object BtnDelOrdem: TSpeedButton
                Left = 253
                Top = 24
                Width = 23
                Height = 22
                Caption = '-'
                Enabled = False
                OnClick = BtnDelOrdemClick
              end
              object GroupBox4: TGroupBox
                Left = 4
                Top = 2
                Width = 246
                Height = 355
                Caption = ' Ordem '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object ComboOrdenar: TComboBox
                  Left = 6
                  Top = 19
                  Width = 235
                  Height = 334
                  Style = csSimple
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 0
                  ParentFont = False
                  TabOrder = 0
                  OnChange = ComboOrdenarChange
                end
              end
              object DBMemoOrdem: TDBMemo
                Left = 385
                Top = 0
                Width = 364
                Height = 374
                Align = alRight
                DataField = 'CONSA255ORDEM'
                DataSource = DSTemplate
                HideSelection = False
                ScrollBars = ssVertical
                TabOrder = 1
                OnClick = DBMemoOrdemClick
                OnDblClick = DBMemoOrdemDblClick
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'Resultado'
              ImageIndex = 6
              object DBGrid1: TDBGrid
                Left = 0
                Top = 0
                Width = 749
                Height = 374
                Align = alClient
                BorderStyle = bsNone
                DataSource = DSSQLConsulta
                FixedColor = 16767449
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = [fsBold]
                OnDblClick = DBGridListaDblClick
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 9
              Top = 3
              Width = 38
              Height = 13
              Caption = 'Código'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 154
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descrição'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 5
              Top = 16
              Width = 140
              Height = 21
              DataField = 'CONSA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 150
              Top = 16
              Width = 467
              Height = 21
              DataField = 'CONSA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnEnviarEmail: TMenuItem
      Caption = 'Enviar Email'
      OnClick = MnEnviarEmailClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MalaDiretaCliente: TMenuItem
      Caption = 'Etiqueta Mala Direta Cliente'
      OnClick = MalaDiretaClienteClick
    end
    object ListagemdeCliente1: TMenuItem
      Caption = 'Listagem de Cliente'
      OnClick = ListagemdeCliente1Click
    end
    object MalaDireta1: TMenuItem
      Caption = 'Mala Direta'
      OnClick = MalaDireta1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From Consulta Where (%MFiltro)')
    object SQLTemplateCONSA13ID: TStringField
      Tag = 2
      DisplayLabel = 'Código'
      FieldName = 'CONSA13ID'
      Origin = 'UNITGESTAO.CONSULTA.CONSA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'UNITGESTAO.CONSULTA.EMPRICOD'
    end
    object SQLTemplateCONSICOD: TIntegerField
      Tag = 1
      FieldName = 'CONSICOD'
      Origin = 'UNITGESTAO.CONSULTA.CONSICOD'
    end
    object SQLTemplateCONSA60DESCR: TStringField
      DisplayLabel = 'Descrição'
      FieldName = 'CONSA60DESCR'
      Origin = 'UNITGESTAO.CONSULTA.CONSA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCONSA255TABELAS: TStringField
      DisplayLabel = 'Tabelas'
      FieldName = 'CONSA255TABELAS'
      Origin = 'UNITGESTAO.CONSULTA.CONSA255TABELAS'
      FixedChar = True
      Size = 255
    end
    object SQLTemplateCONSA255CAMPOS: TStringField
      DisplayLabel = 'Campos'
      FieldName = 'CONSA255CAMPOS'
      Origin = 'UNITGESTAO.CONSULTA.CONSA255CAMPOS'
      FixedChar = True
      Size = 255
    end
    object SQLTemplateCONSA255JOINS: TStringField
      DisplayLabel = 'Joins'
      FieldName = 'CONSA255JOINS'
      Origin = 'UNITGESTAO.CONSULTA.CONSA255JOINS'
      FixedChar = True
      Size = 255
    end
    object SQLTemplateCONSA255ORDEM: TStringField
      DisplayLabel = 'Ordem'
      FieldName = 'CONSA255ORDEM'
      Origin = 'UNITGESTAO.CONSULTA.CONSA255ORDEM'
      FixedChar = True
      Size = 255
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'UNITGESTAO.CONSULTA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'UNITGESTAO.CONSULTA.REGISTRO'
    end
    object SQLTemplateCONSA255FILTROS: TStringField
      FieldName = 'CONSA255FILTROS'
      Origin = 'DB.CONSULTA.CONSA255FILTROS'
      FixedChar = True
      Size = 255
    end
  end
  inherited SQLExcluiDetalhes: TRxQuery
    Left = 409
  end
  object SQLConsulta: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '%MCampos '
      'From '
      '%MTabelas'
      'Where '
      '(%MJoins) AND'
      '%MFiltros'
      '%MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MCampos'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTabelas'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MJoins'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltros'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 527
    Top = 1
  end
  object DSSQLConsulta: TDataSource
    DataSet = SQLConsulta
    Left = 556
    Top = 1
  end
  object DatabaseItems: TDatabaseItems
    DatabaseName = 'DB'
    Left = 585
    Top = 1
    object DatabaseItemsNAME: TStringField
      FieldName = 'NAME'
      ReadOnly = True
      Size = 260
    end
  end
  object TableItems: TTableItems
    DatabaseName = 'DB'
    TableName = 'CLIENTE'
    Left = 614
    Top = 1
    object TableItemsNAME: TStringField
      FieldName = 'NAME'
      ReadOnly = True
      Size = 31
    end
  end
  object TblMalaDiretaCli: TTable
    DatabaseName = 'Easy_TEMP'
    TableName = 'EtiquetaEndereco.db'
    Left = 498
    Top = 1
    object TblMalaDiretaCliCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'Easy_TEMP.''EtiquetaEndereco.DB''.CLIEA13ID'
      Size = 13
    end
    object TblMalaDiretaCliCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'Easy_TEMP.''EtiquetaEndereco.DB''.CLIEA60RAZAOSOC'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'Easy_TEMP.''EtiquetaEndereco.DB''.CLIEA60ENDRES'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'Easy_TEMP.''EtiquetaEndereco.DB''.CLIEA60BAIRES'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'Easy_TEMP.''EtiquetaEndereco.DB''.CLIEA60CIDRES'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'Easy_TEMP.''EtiquetaEndereco.DB''.CLIEA2UFRES'
      Size = 2
    end
    object TblMalaDiretaCliCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'Easy_TEMP.''EtiquetaEndereco.DB''.CLIEA8CEPRES'
      Size = 8
    end
    object TblMalaDiretaCliCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 60
    end
    object TblMalaDiretaCliCLIEA15FONE: TStringField
      FieldName = 'CLIEA15FONE'
      Size = 15
    end
    object TblMalaDiretaCliCLIEA30OUTROSDOC: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      Size = 30
    end
    object TblMalaDiretaCliCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
    end
  end
  object ReportMalaDireta: TppReport
    AutoStop = False
    DataPipeline = PipeMalaDireta
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 440
    Top = 2
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'PipeMalaDireta'
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 629973
      mmHeight = 68464513
      mmPrintPosition = 0
      object ppTextoMalaDireta: TppRichText
        UserName = 'ppTextoMalaDireta'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ppTextoMalaDireta'
        MailMerge = True
        mmHeight = 67624460
        mmLeft = 490009
        mmTop = 210080
        mmWidth = 51103314
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
  end
  object PipeMalaDireta: TppDBPipeline
    DataSource = DSTblMalaDiretaCli
    UserName = 'PipeMalaDireta'
    Left = 468
    Top = 2
  end
  object DSTblMalaDiretaCli: TDataSource
    DataSet = TblMalaDiretaCli
    Left = 498
    Top = 29
  end
end
