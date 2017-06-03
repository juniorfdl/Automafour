inherited FormCadastroNCM: TFormCadastroNCM
  Left = 418
  Top = 104
  Caption = 'Cadastro NCM'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&3 TabelaIBPTaxRS16.2.A'
          OnClick = ImportarArquivoIBPTAtual1Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 94
            Height = 355
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 282
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
              object Label1: TLabel
                Left = 10
                Top = 0
                Width = 82
                Height = 13
                Caption = 'Descri'#231#227'o NCM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBMemoObs: TDBMemo
                Left = 7
                Top = 13
                Width = 606
                Height = 55
                BevelWidth = 0
                DataField = 'NCMA100DESCR'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 0
              end
              object GroupBox2: TGroupBox
                Left = 8
                Top = 77
                Width = 302
                Height = 105
                Caption = ' ICMS NORMAL E ICMS ST '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Label10: TLabel
                  Left = 145
                  Top = 46
                  Width = 67
                  Height = 13
                  Caption = 'Aliq. Normal'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 11
                  Top = 20
                  Width = 21
                  Height = 13
                  Caption = 'CST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label11: TLabel
                  Left = 11
                  Top = 45
                  Width = 28
                  Height = 13
                  Caption = 'BASE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label12: TLabel
                  Left = 11
                  Top = 70
                  Width = 45
                  Height = 13
                  Caption = 'BASE ST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label13: TLabel
                  Left = 145
                  Top = 70
                  Width = 41
                  Height = 13
                  Caption = 'Aliq. ST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit5: TDBEdit
                  Left = 217
                  Top = 42
                  Width = 74
                  Height = 21
                  DataField = 'ALIQ_ICMS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object DBEdit8: TDBEdit
                  Left = 57
                  Top = 16
                  Width = 74
                  Height = 21
                  DataField = 'CSTICMS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit9: TDBEdit
                  Left = 57
                  Top = 41
                  Width = 74
                  Height = 21
                  DataField = 'BASE_ICMS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit10: TDBEdit
                  Left = 57
                  Top = 66
                  Width = 74
                  Height = 21
                  DataField = 'BASE_ICMSST'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit11: TDBEdit
                  Left = 217
                  Top = 66
                  Width = 74
                  Height = 21
                  DataField = 'ALIQ_ICMSST'
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
              object GroupBox3: TGroupBox
                Left = 9
                Top = 189
                Width = 608
                Height = 99
                Caption = ' PIS E COFINS '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                object Label15: TLabel
                  Left = 40
                  Top = 20
                  Width = 76
                  Height = 13
                  Caption = 'CST ENTRADA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 275
                  Top = 21
                  Width = 60
                  Height = 13
                  Caption = 'CST SAIDA'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 471
                  Top = 20
                  Width = 28
                  Height = 13
                  Caption = 'BASE'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 42
                  Top = 46
                  Width = 74
                  Height = 13
                  Caption = 'Aliq PIS REAL'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 11
                  Top = 71
                  Width = 106
                  Height = 13
                  Caption = 'Aliq PIS Presumido'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 242
                  Top = 46
                  Width = 95
                  Height = 13
                  Caption = 'Aliq COFINS REAL'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 211
                  Top = 71
                  Width = 127
                  Height = 13
                  Caption = 'Aliq COFINS Presumido'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit13: TDBEdit
                  Left = 122
                  Top = 16
                  Width = 74
                  Height = 21
                  DataField = 'CSTPIS_COFINS_ENT'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object DBEdit12: TDBEdit
                  Left = 343
                  Top = 17
                  Width = 74
                  Height = 21
                  DataField = 'CSTPIS_COFINS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object DBEdit14: TDBEdit
                  Left = 504
                  Top = 16
                  Width = 94
                  Height = 21
                  DataField = 'BASE_PIS_COFINS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object DBEdit15: TDBEdit
                  Left = 122
                  Top = 42
                  Width = 74
                  Height = 21
                  DataField = 'ALIQ_PIS_REAL'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                end
                object DBEdit16: TDBEdit
                  Left = 122
                  Top = 67
                  Width = 74
                  Height = 21
                  DataField = 'ALIQ_PIS_PRESUMIDO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                end
                object DBEdit17: TDBEdit
                  Left = 343
                  Top = 43
                  Width = 74
                  Height = 21
                  DataField = 'ALIQ_COFINS_REAL'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                end
                object DBEdit18: TDBEdit
                  Left = 343
                  Top = 67
                  Width = 74
                  Height = 21
                  DataField = 'ALIQ_COFINS_PRESUMIDO'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 85
            Height = 9
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 85
            object Label38: TLabel
              Left = 9
              Top = 3
              Width = 67
              Height = 13
              Caption = 'Cod.Interno'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 88
              Top = 3
              Width = 88
              Height = 13
              Caption = 'NCM = 8 Digitos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 352
              Top = 2
              Width = 56
              Height = 13
              Caption = 'Import %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 500
              Top = 2
              Width = 69
              Height = 13
              Caption = 'Municipal %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 86
              Top = 43
              Width = 82
              Height = 13
              Caption = 'Vigencia inicial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 191
              Top = 43
              Width = 76
              Height = 13
              Caption = 'Vigencia Final'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 296
              Top = 43
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
            object Label26: TLabel
              Left = 399
              Top = 43
              Width = 39
              Height = 13
              Caption = 'Versao'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 282
              Top = 2
              Width = 63
              Height = 13
              Caption = 'Nacional %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 427
              Top = 2
              Width = 64
              Height = 13
              Caption = 'Estadual %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 186
              Top = 3
              Width = 39
              Height = 13
              Caption = 'EX_TIP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 233
              Top = 3
              Width = 38
              Height = 13
              Caption = 'Tabela'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 606
              Top = 2
              Width = 57
              Height = 13
              Caption = '( MVA % )'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 576
              Top = 2
              Width = 22
              Height = 13
              Caption = 'Und'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 7
              Top = 17
              Width = 71
              Height = 21
              TabStop = False
              Color = 15461355
              DataField = 'NCMICOD'
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
            object DBEdit2: TDBEdit
              Left = 83
              Top = 17
              Width = 97
              Height = 21
              DataField = 'NCMA30CODIGO'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEdit21: TDBEdit
              Left = 84
              Top = 57
              Width = 99
              Height = 21
              DataField = 'VIGENCIA_INI'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit22: TDBEdit
              Left = 189
              Top = 57
              Width = 99
              Height = 21
              DataField = 'VIGENCIA_FIM'
              DataSource = DSTemplate
              TabOrder = 3
            end
            object DBEdit23: TDBEdit
              Left = 294
              Top = 57
              Width = 99
              Height = 21
              DataField = 'CHAVE'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object DBEdit24: TDBEdit
              Left = 397
              Top = 57
              Width = 99
              Height = 21
              DataField = 'VERSAO'
              DataSource = DSTemplate
              TabOrder = 5
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 351
              Top = 16
              Width = 70
              Height = 21
              AutoHideCalculator = False
              DataField = 'NCMN2ALIQIMP'
              DataSource = DSTemplate
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
              TabOrder = 6
            end
            object EvDBNumEdit2: TEvDBNumEdit
              Left = 425
              Top = 16
              Width = 70
              Height = 21
              AutoHideCalculator = False
              DataField = 'ALIQESTADUAL'
              DataSource = DSTemplate
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
              TabOrder = 7
            end
            object EvDBNumEdit3: TEvDBNumEdit
              Left = 498
              Top = 16
              Width = 70
              Height = 21
              AutoHideCalculator = False
              DataField = 'ALIQMUNICIPAL'
              DataSource = DSTemplate
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
              TabOrder = 8
            end
            object EvDBNumEdit4: TEvDBNumEdit
              Left = 277
              Top = 16
              Width = 70
              Height = 21
              AutoHideCalculator = False
              DataField = 'NCMN2ALIQNAC'
              DataSource = DSTemplate
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
              TabOrder = 9
            end
            object DBEdit6: TDBEdit
              Left = 186
              Top = 17
              Width = 41
              Height = 21
              DataField = 'NCMIEX_TIP'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object DBEdit7: TDBEdit
              Left = 232
              Top = 16
              Width = 41
              Height = 21
              DataField = 'NCMITABELA'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit4: TDBEdit
              Left = 606
              Top = 15
              Width = 80
              Height = 21
              DataField = 'MVA'
              DataSource = DSTemplate
              TabOrder = 12
            end
            object DBEdit3: TDBEdit
              Left = 572
              Top = 15
              Width = 31
              Height = 21
              DataField = 'NCMA5UNIDADE'
              DataSource = DSTemplate
              TabOrder = 13
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object ImportarArquivoIBPTAtual1: TMenuItem
      Caption = 'Importar TabelaIBPTaxRS16.2.A'
      OnClick = ImportarArquivoIBPTAtual1Click
    end
    object ImportarArquivoSuperTributario: TMenuItem
      Caption = 'Importar Arquivo Super Tributario.csv'
      OnClick = ImportarArquivoSuperTributarioClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FiltrarNCMssemAliquotasMedia1: TMenuItem
      Caption = 'Filtrar NCMs sem Aliquotas Media'
      OnClick = FiltrarNCMssemAliquotasMedia1Click
    end
    object CorrigeNCMmenorque8digitos1: TMenuItem
      Caption = 'Corrige NCM menor que 8 digitos'
      OnClick = CorrigeNCMmenorque8digitos1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From NCM Where (%MFiltro)')
    object SQLTemplateNCMICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'Cod.Interno'
      FieldName = 'NCMICOD'
      Origin = 'DB.NCM.NCMICOD'
      Visible = False
    end
    object SQLTemplateNCMA30CODIGO: TStringField
      DisplayLabel = 'Codigo NCM'
      FieldName = 'NCMA30CODIGO'
      Origin = 'DB.NCM.NCMA30CODIGO'
      EditMask = '00000000;0; '
      Size = 30
    end
    object SQLTemplateNCMA100DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NCMA100DESCR'
      Origin = 'DB.NCM.NCMA100DESCR'
      Size = 100
    end
    object SQLTemplateNCMA5UNIDADE: TStringField
      DisplayLabel = 'Un Medida'
      FieldName = 'NCMA5UNIDADE'
      Origin = 'DB.NCM.NCMA5UNIDADE'
      Size = 5
    end
    object SQLTemplateALIQUOTAINTERNA: TFloatField
      FieldName = 'ALIQUOTAINTERNA'
      Origin = 'DB.NCM.ALIQUOTAINTERNA'
      DisplayFormat = ',0.000'
    end
    object SQLTemplateMVA: TFloatField
      FieldName = 'MVA'
      Origin = 'DB.NCM.MVA'
      DisplayFormat = ',0.000'
    end
    object SQLTemplateNCMIEX_TIP: TIntegerField
      FieldName = 'NCMIEX_TIP'
      Origin = 'DB.NCM.NCMIEX_TIP'
    end
    object SQLTemplateNCMITABELA: TIntegerField
      DisplayLabel = 'Tabela Olho Imposto'
      FieldName = 'NCMITABELA'
      Origin = 'DB.NCM.NCMITABELA'
    end
    object SQLTemplateNCMN2ALIQNAC: TFloatField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Aliq.Media Produtos Nacional'
      FieldName = 'NCMN2ALIQNAC'
      Origin = 'DB.NCM.NCMN2ALIQNAC'
    end
    object SQLTemplateNCMN2ALIQIMP: TFloatField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Aliq.Media Produtos Importados'
      FieldName = 'NCMN2ALIQIMP'
      Origin = 'DB.NCM.NCMN2ALIQIMP'
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NCM.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NCM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCSTICMS: TIntegerField
      FieldName = 'CSTICMS'
      Origin = 'DB.NCM.CSTICMS'
    end
    object SQLTemplateBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Origin = 'DB.NCM.BASE_ICMS'
      Precision = 9
    end
    object SQLTemplateALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
      Origin = 'DB.NCM.ALIQ_ICMS'
      Precision = 9
    end
    object SQLTemplateBASE_ICMSST: TFloatField
      FieldName = 'BASE_ICMSST'
      Origin = 'DB.NCM.BASE_ICMSST'
      Precision = 9
    end
    object SQLTemplateALIQ_ICMSST: TFloatField
      FieldName = 'ALIQ_ICMSST'
      Origin = 'DB.NCM.ALIQ_ICMSST'
      Precision = 9
    end
    object SQLTemplateCSTPIS_COFINS_ENT: TStringField
      FieldName = 'CSTPIS_COFINS_ENT'
      Origin = 'DB.NCM.CSTPIS_COFINS_ENT'
      Size = 3
    end
    object SQLTemplateCSTPIS_COFINS: TStringField
      FieldName = 'CSTPIS_COFINS'
      Origin = 'DB.NCM.CSTPIS_COFINS'
      Size = 2
    end
    object SQLTemplateBASE_PIS_COFINS: TFloatField
      FieldName = 'BASE_PIS_COFINS'
      Origin = 'DB.NCM.BASE_PIS_COFINS'
      Precision = 9
    end
    object SQLTemplateALIQ_PIS_REAL: TFloatField
      FieldName = 'ALIQ_PIS_REAL'
      Origin = 'DB.NCM.ALIQ_PIS_REAL'
      Precision = 9
    end
    object SQLTemplateALIQ_PIS_PRESUMIDO: TFloatField
      FieldName = 'ALIQ_PIS_PRESUMIDO'
      Origin = 'DB.NCM.ALIQ_PIS_PRESUMIDO'
      Precision = 9
    end
    object SQLTemplateALIQ_COFINS_REAL: TFloatField
      FieldName = 'ALIQ_COFINS_REAL'
      Origin = 'DB.NCM.ALIQ_COFINS_REAL'
      Precision = 9
    end
    object SQLTemplateALIQ_COFINS_PRESUMIDO: TFloatField
      FieldName = 'ALIQ_COFINS_PRESUMIDO'
      Origin = 'DB.NCM.ALIQ_COFINS_PRESUMIDO'
      Precision = 9
    end
    object SQLTemplateCPITN2IMPOSTOMED: TFloatField
      FieldName = 'CPITN2IMPOSTOMED'
      Origin = 'DB.NCM.CPITN2IMPOSTOMED'
    end
    object SQLTemplateNFITN2IMPOSTOMED: TFloatField
      FieldName = 'NFITN2IMPOSTOMED'
      Origin = 'DB.NCM.NFITN2IMPOSTOMED'
    end
    object SQLTemplateALIQESTADUAL: TFloatField
      FieldName = 'ALIQESTADUAL'
      Origin = 'DB.NCM.ALIQESTADUAL'
    end
    object SQLTemplateALIQMUNICIPAL: TFloatField
      FieldName = 'ALIQMUNICIPAL'
      Origin = 'DB.NCM.ALIQMUNICIPAL'
    end
    object SQLTemplateVIGENCIA_INI: TDateTimeField
      FieldName = 'VIGENCIA_INI'
      Origin = 'DB.NCM.VIGENCIA_INI'
    end
    object SQLTemplateVIGENCIA_FIM: TDateTimeField
      FieldName = 'VIGENCIA_FIM'
      Origin = 'DB.NCM.VIGENCIA_FIM'
    end
    object SQLTemplateCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'DB.NCM.CHAVE'
      Size = 10
    end
    object SQLTemplateVERSAO: TStringField
      FieldName = 'VERSAO'
      Origin = 'DB.NCM.VERSAO'
      Size = 10
    end
  end
end
