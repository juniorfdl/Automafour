inherited FormCadastroNotaCompraFinanceiro: TFormCadastroNotaCompraFinanceiro
  Left = 240
  Top = 112
  Caption = 'Financeiro'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button2: TRxSpeedButton
          Top = 37
        end
        inherited Button3: TRxSpeedButton
          Top = 60
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 93
            Height = 356
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 283
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NOCPA30NRO'
                    Width = 102
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGA20DOCORIG'
                    Width = 130
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGDTEMIS'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGINROPARC'
                    Title.Alignment = taCenter
                    Title.Caption = 'Parc'
                    Width = 31
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGDVENC'
                    Title.Alignment = taCenter
                    Width = 73
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3VLR'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TipoDocumentoCalcField'
                    Title.Alignment = taCenter
                    Width = 202
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PortadorCalcField'
                    Title.Alignment = taCenter
                    Width = 212
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
              inherited MemoDetalhes: TMemo
                Top = 149
                Lines.Strings = (
                  'PAGAMENTO')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label9: TLabel
                Left = 6
                Top = 3
                Width = 109
                Height = 13
                Caption = 'Documento Origem'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 125
                Top = 3
                Width = 42
                Height = 13
                Caption = 'Parcela'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 174
                Top = 3
                Width = 69
                Height = 13
                Caption = 'Data Vencto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 274
                Top = 3
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
              object Label10: TLabel
                Left = 6
                Top = 38
                Width = 92
                Height = 13
                Caption = 'Tipo Documento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RetornaTipoDocumento: TSpeedButton
                Left = 246
                Top = 50
                Width = 21
                Height = 21
                Hint = 'Acessa Tipo Documento'
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
                OnClick = RetornaTipoDocumentoClick
              end
              object Label11: TLabel
                Left = 273
                Top = 38
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
              object RetornaPortador: TSpeedButton
                Left = 533
                Top = 49
                Width = 21
                Height = 21
                Hint = 'Acessa Portador'
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
                OnClick = RetornaPortadorClick
              end
              object Label14: TLabel
                Left = 366
                Top = 3
                Width = 45
                Height = 13
                Caption = 'Vlr.Desc'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label15: TLabel
                Left = 539
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
              object Label16: TLabel
                Left = 444
                Top = 3
                Width = 73
                Height = 13
                Caption = 'Data Recbto.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label18: TLabel
                Left = 192
                Top = 76
                Width = 93
                Height = 13
                Caption = 'Hist'#243'rico Padr'#227'o'
                FocusControl = DBEditHistoricoPadrao
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BtnHistorico: TSpeedButton
                Left = 279
                Top = 89
                Width = 21
                Height = 21
                Hint = 'Acessa Hist'#243'ricos Padr'#245'es'
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
                OnClick = BtnHistoricoClick
              end
              object Label19: TLabel
                Left = 316
                Top = 76
                Width = 50
                Height = 13
                Caption = 'Hist'#243'rico'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label20: TLabel
                Left = 6
                Top = 76
                Width = 34
                Height = 13
                Caption = 'Banco'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 60
                Top = 76
                Width = 112
                Height = 13
                Caption = 'Pagto c/Cheque Nro'
                FocusControl = DBEdit13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label17: TLabel
                Left = 7
                Top = 148
                Width = 84
                Height = 13
                Caption = 'Conta Despesa'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label22: TLabel
                Left = 2
                Top = 111
                Width = 134
                Height = 13
                Caption = 'Compet'#234'ncia M'#234's    Ano'
                FocusControl = DBEdit13
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label23: TLabel
                Left = 5
                Top = 187
                Width = 151
                Height = 13
                Caption = 'Codigo de Barras do Boleto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label26: TLabel
                Left = 557
                Top = 36
                Width = 77
                Height = 13
                Caption = 'Data Prevista'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit8: TDBEdit
                Left = 2
                Top = 16
                Width = 117
                Height = 21
                DataField = 'CTPGA20DOCORIG'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit1: TDBEdit
                Left = 122
                Top = 16
                Width = 47
                Height = 21
                DataField = 'CTPGINROPARC'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit2: TDBDateEdit
                Left = 172
                Top = 16
                Width = 95
                Height = 21
                DataField = 'CTPGDVENC'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 2
                YearDigits = dyFour
                OnExit = DBEdit2Exit
              end
              object DBEdit3: TEvDBNumEdit
                Left = 270
                Top = 16
                Width = 90
                Height = 21
                AutoHideCalculator = False
                DataField = 'CTPGN3VLR'
                DataSource = DSTemplate
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
                TabOrder = 3
              end
              object EvDBNumEdit3: TEvDBNumEdit
                Left = 363
                Top = 16
                Width = 74
                Height = 21
                AutoHideCalculator = False
                DataField = 'CTPGN2DESCPROMO'
                DataSource = DSTemplate
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
                TabOrder = 4
              end
              object ComboTipoPrevistoReal: TRxDBComboBox
                Left = 535
                Top = 16
                Width = 113
                Height = 21
                Style = csDropDownList
                DataField = 'CTPGCPREVREAL'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Previsto'
                  'Realizado')
                TabOrder = 6
                Values.Strings = (
                  'P'
                  'R')
              end
              object ComboTipoDoc: TRxDBLookupCombo
                Left = 45
                Top = 51
                Width = 199
                Height = 21
                DropDownCount = 8
                DataField = 'TPDCICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'TPDCICOD'
                LookupDisplay = 'TPDCA60DESCR'
                LookupSource = DSSQLTipoDocumento
                ParentFont = False
                TabOrder = 8
                OnKeyDown = ComboTipoDocKeyDown
              end
              object ComboPortador: TRxDBLookupCombo
                Left = 315
                Top = 50
                Width = 217
                Height = 22
                DropDownCount = 8
                DataField = 'PORTICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'PORTICOD'
                LookupDisplay = 'PORTA60DESCR'
                LookupSource = DSSQLPortador
                ParentFont = False
                TabOrder = 10
                OnKeyDown = ComboPortadorKeyDown
              end
              object DBDateEdit1: TDBDateEdit
                Left = 440
                Top = 16
                Width = 92
                Height = 21
                DataField = 'CTPGDRECBTO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 5
                YearDigits = dyFour
              end
              object DBEditHistoricoPadrao: TDBEdit
                Left = 189
                Top = 89
                Width = 88
                Height = 21
                DataField = 'HTPDICOD'
                DataSource = DSTemplate
                TabOrder = 13
                OnExit = DBEditHistoricoPadraoExit
              end
              object MemoHistorico: TDBMemo
                Left = 312
                Top = 89
                Width = 334
                Height = 54
                DataField = 'CTPGA254HIST'
                DataSource = DSTemplate
                MaxLength = 254
                TabOrder = 14
              end
              object DBEdit9: TDBEdit
                Left = 3
                Top = 51
                Width = 40
                Height = 21
                DataField = 'TPDCICOD'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object DBEdit10: TDBEdit
                Left = 272
                Top = 51
                Width = 40
                Height = 21
                DataField = 'PORTICOD'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit11: TDBEdit
                Left = 2
                Top = 89
                Width = 52
                Height = 21
                DataField = 'BANCA5CODCHQ'
                DataSource = DSTemplate
                TabOrder = 11
              end
              object DBEdit13: TDBEdit
                Left = 57
                Top = 89
                Width = 118
                Height = 21
                DataField = 'CTRCA15NROCHQ'
                DataSource = DSTemplate
                TabOrder = 12
              end
              object ComboPlanoContas: TRxDBLookupCombo
                Left = 3
                Top = 161
                Width = 644
                Height = 21
                DropDownCount = 8
                DataField = 'PLCTA15COD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                LookupField = 'PLCTA15COD'
                LookupDisplay = 'PLCTA60DESCR'
                LookupSource = DSSQLPlanoContas
                ParentFont = False
                TabOrder = 17
              end
              object ComboCompetenciaMes: TRxDBComboBox
                Left = 2
                Top = 124
                Width = 112
                Height = 21
                Style = csDropDownList
                DataField = 'CTPGA2MESCOMP'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Janeiro'
                  'Fevereio'
                  'Mar'#231'o'
                  'Abril'
                  'Maio'
                  'Junho'
                  'Julho'
                  'Agosto'
                  'Setembro'
                  'Outubro'
                  'Novembro'
                  'Dezembro')
                TabOrder = 15
                Values.Strings = (
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
              object ComboAno: TRxDBComboBox
                Left = 114
                Top = 124
                Width = 62
                Height = 21
                DataField = 'CTPGA4ANOCOMP'
                DataSource = DSTemplate
                EnableValues = False
                ItemHeight = 13
                Items.Strings = (
                  '2020'
                  '2019'
                  '2018'
                  '2017'
                  '2016'
                  '2015'
                  '2014'
                  '2013'
                  '2012'
                  '2011'
                  '2010'
                  '2009'
                  '2008'
                  '2007'
                  '2006'
                  '2005'
                  '2004'
                  '2003'
                  '2002'
                  '2001'
                  '2000')
                TabOrder = 16
                Values.Strings = (
                  '2020'
                  '2019'
                  '2018'
                  '2017'
                  '2016'
                  '2015'
                  '2014'
                  '2013'
                  '2012'
                  '2011'
                  '2010'
                  '2009'
                  '2008'
                  '2007'
                  '2006'
                  '2005'
                  '2004'
                  '2003'
                  '2002'
                  '2001'
                  '2000')
              end
              object dbBarras: TDBEdit
                Left = 3
                Top = 200
                Width = 642
                Height = 21
                DataField = 'BARRAS'
                DataSource = DSTemplate
                TabOrder = 18
              end
              object DBDateEdit2: TDBDateEdit
                Left = 555
                Top = 49
                Width = 92
                Height = 21
                DataField = 'DATA_PREVISTA'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 19
                YearDigits = dyFour
                OnExit = DBEdit2Exit
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
            Height = 90
            object Label24: TLabel
              Left = 7
              Top = 51
              Width = 88
              Height = 13
              Caption = 'Opera'#231#227'o Fiscal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 322
              Top = 51
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
            object Label4: TLabel
              Left = 8
              Top = 10
              Width = 42
              Height = 13
              Caption = 'ID Nota'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 102
              Top = 10
              Width = 22
              Height = 13
              Caption = 'Ano'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 147
              Top = 10
              Width = 29
              Height = 13
              Caption = 'S'#233'rie'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 187
              Top = 10
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 275
              Top = 10
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
            object Label12: TLabel
              Left = 384
              Top = 10
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
            object Label13: TLabel
              Left = 565
              Top = 10
              Width = 58
              Height = 13
              Caption = 'Total Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 478
              Top = 10
              Width = 62
              Height = 13
              Caption = 'Total Desc.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit22: TDBEdit
              Left = 5
              Top = 64
              Width = 309
              Height = 21
              TabStop = False
              Color = 14731440
              Ctl3D = True
              DataField = 'OperacaoEstoqueLookup'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit27: TDBEdit
              Left = 320
              Top = 64
              Width = 334
              Height = 21
              TabStop = False
              Color = 14731440
              Ctl3D = True
              DataField = 'Descr_FornEmprCli'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 5
              Top = 23
              Width = 91
              Height = 21
              TabStop = False
              Color = 14731440
              Ctl3D = True
              DataField = 'NOCPA13ID'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBEdit5: TDBEdit
              Left = 99
              Top = 23
              Width = 41
              Height = 21
              TabStop = False
              Color = 14731440
              Ctl3D = True
              DataField = 'NOCPA4ANO'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              TabOrder = 3
            end
            object DBEdit6: TDBEdit
              Left = 144
              Top = 23
              Width = 36
              Height = 21
              TabStop = False
              Color = 14731440
              Ctl3D = True
              DataField = 'NOCPA5SERIE'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              TabOrder = 4
            end
            object DBEdit7: TDBEdit
              Left = 184
              Top = 23
              Width = 83
              Height = 21
              TabStop = False
              Color = 14731440
              Ctl3D = True
              DataField = 'NOCPA30NRO'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              TabOrder = 5
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 272
              Top = 23
              Width = 107
              Height = 21
              Style = csDropDownList
              Color = 14731440
              Ctl3D = True
              DataField = 'NOCPCSTATUS'
              DataSource = DSMasterTemplate
              Enabled = False
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberta'
                'Encerrada'
                'Cancelada')
              ParentCtl3D = False
              TabOrder = 6
              TabStop = False
              Values.Strings = (
                'A'
                'E'
                'C')
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 381
              Top = 23
              Width = 92
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 14731440
              Ctl3D = True
              DataField = 'NOCPN3TOTITENS'
              DataSource = DSMasterTemplate
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
              ParentCtl3D = False
              TabOrder = 7
            end
            object DBEdit12: TEvDBNumEdit
              Left = 562
              Top = 23
              Width = 92
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 14731440
              Ctl3D = True
              DataField = 'NOCPN3VLRTOTNOTA'
              DataSource = DSMasterTemplate
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
              ParentCtl3D = False
              TabOrder = 8
            end
            object EvDBNumEdit2: TEvDBNumEdit
              Left = 475
              Top = 23
              Width = 83
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 14731440
              Ctl3D = True
              DataField = 'NOCPN3TOTDESC'
              DataSource = DSMasterTemplate
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
              ParentCtl3D = False
              TabOrder = 9
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 90
            Height = 3
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnGeraroutrolanc: TMenuItem
      Caption = 'Gerar outro lan'#231'amento a partir do documento atual'
      OnClick = MnGeraroutrolancClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From CONTASPAGAR Where '
      'NOCPA13ID = :NOCPA13ID and (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'NOCPA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateCTPGA13ID: TStringField
      Tag = 2
      FieldName = 'CTPGA13ID'
      Origin = 'DB.CONTASPAGAR.CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASPAGAR.EMPRICOD'
    end
    object SQLTemplateCTPGICOD: TIntegerField
      Tag = 1
      FieldName = 'CTPGICOD'
      Origin = 'DB.CONTASPAGAR.CTPGICOD'
    end
    object SQLTemplateFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.CONTASPAGAR.FORNICOD'
    end
    object SQLTemplatePLCTA15COD: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASPAGAR.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTPGINROPARC: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Parcela'
      FieldName = 'CTPGINROPARC'
      Origin = 'DB.CONTASPAGAR.CTPGINROPARC'
    end
    object SQLTemplateCTPGDVENC: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Data Vencto'
      FieldName = 'CTPGDVENC'
      Origin = 'DB.CONTASPAGAR.CTPGDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTPGN3VLR: TFloatField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Valor'
      FieldName = 'CTPGN3VLR'
      Origin = 'DB.CONTASPAGAR.CTPGN3VLR'
    end
    object SQLTemplateTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASPAGAR.TPDCICOD'
    end
    object SQLTemplateTipoDocumentoCalcField: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldKind = fkCalculated
      FieldName = 'TipoDocumentoCalcField'
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTPGN3TXJURO: TFloatField
      FieldName = 'CTPGN3TXJURO'
      Origin = 'DB.CONTASPAGAR.CTPGN3TXJURO'
    end
    object SQLTemplateCTPGN3TXMULTA: TFloatField
      FieldName = 'CTPGN3TXMULTA'
      Origin = 'DB.CONTASPAGAR.CTPGN3TXMULTA'
    end
    object SQLTemplateCTPGA5TIPOPADRAO: TStringField
      FieldName = 'CTPGA5TIPOPADRAO'
      Origin = 'DB.CONTASPAGAR.CTPGA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.CONTASPAGAR.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTPGDULTPAGTO: TDateTimeField
      FieldName = 'CTPGDULTPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGDULTPAGTO'
    end
    object SQLTemplateCTPGN3JUROPAGTO: TFloatField
      FieldName = 'CTPGN3JUROPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3JUROPAGTO'
    end
    object SQLTemplateCTPGN3MULTAPAGTO: TFloatField
      FieldName = 'CTPGN3MULTAPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3MULTAPAGTO'
    end
    object SQLTemplateCTPGN3DESCPAGTO: TFloatField
      FieldName = 'CTPGN3DESCPAGTO'
      Origin = 'DB.CONTASPAGAR.CTPGN3DESCPAGTO'
    end
    object SQLTemplatePDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.CONTASPAGAR.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASPAGAR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASPAGAR.REGISTRO'
    end
    object SQLTemplateCTPGDTEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'CTPGDTEMIS'
      Origin = 'DB.CONTASPAGAR.CTPGDTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTPGA20DOCORIG: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Documento Origem'
      FieldName = 'CTPGA20DOCORIG'
      Origin = 'DB.CONTASPAGAR.CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLTemplatePORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASPAGAR.PORTICOD'
    end
    object SQLTemplatePortadorCalcField: TStringField
      DisplayLabel = 'Portador'
      FieldKind = fkCalculated
      FieldName = 'PortadorCalcField'
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTPGN2DESCPROMO: TFloatField
      FieldName = 'CTPGN2DESCPROMO'
      Origin = 'DB.CONTASPAGAR.CTPGN2DESCPROMO'
    end
    object SQLTemplateCTPGCPREVREAL: TStringField
      ConstraintErrorMessage = '1'
      FieldName = 'CTPGCPREVREAL'
      Origin = 'DB.CONTASPAGAR.CTPGCPREVREAL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCTPGN2TOTPAG: TFloatField
      FieldName = 'CTPGN2TOTPAG'
      Origin = 'DB.CONTASPAGAR.CTPGN2TOTPAG'
    end
    object SQLTemplateNOCPA30NRO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.CONTASPAGAR.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateCTPGDRECBTO: TDateTimeField
      FieldName = 'CTPGDRECBTO'
      Origin = 'DB.CONTASPAGAR.CTPGDRECBTO'
    end
    object SQLTemplateCTPGA254HIST: TStringField
      FieldName = 'CTPGA254HIST'
      Origin = 'DB.CONTASPAGAR.CTPGA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateCQEMA13ID: TStringField
      FieldName = 'CQEMA13ID'
      Origin = 'DB.CONTASPAGAR.CQEMA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASPAGAR.HTPDICOD'
      OnChange = SQLTemplateHTPDICODChange
    end
    object SQLTemplatePLCTA15CODCREDITO: TStringField
      FieldName = 'PLCTA15CODCREDITO'
      Origin = 'DB.CONTASPAGAR.PLCTA15CODCREDITO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTPGA2MESCOMP: TStringField
      FieldName = 'CTPGA2MESCOMP'
      Origin = 'DB.CONTASPAGAR.CTPGA2MESCOMP'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCTPGA4ANOCOMP: TStringField
      FieldName = 'CTPGA4ANOCOMP'
      Origin = 'DB.CONTASPAGAR.CTPGA4ANOCOMP'
      FixedChar = True
      Size = 4
    end
    object SQLTemplateBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASPAGAR.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASPAGAR.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateBARRAS: TStringField
      FieldName = 'BARRAS'
      Origin = 'DB.CONTASPAGAR.BARRAS'
      Size = 254
    end
    object SQLTemplateDATA_PREVISTA: TDateTimeField
      FieldName = 'DATA_PREVISTA'
      Origin = 'DB.CONTASPAGAR.DATA_PREVISTA'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update CONTASPAGAR'
      'set'
      '  CTPGA13ID = :CTPGA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  CTPGICOD = :CTPGICOD,'
      '  FORNICOD = :FORNICOD,'
      '  PLCTA15COD = :PLCTA15COD,'
      '  CTPGA20DOCORIG = :CTPGA20DOCORIG,'
      '  CTPGINROPARC = :CTPGINROPARC,'
      '  CTPGDTEMIS = :CTPGDTEMIS,'
      '  CTPGDVENC = :CTPGDVENC,'
      '  CTPGN3VLR = :CTPGN3VLR,'
      '  TPDCICOD = :TPDCICOD,'
      '  CTPGA5TIPOPADRAO = :CTPGA5TIPOPADRAO,'
      '  NOCPA13ID = :NOCPA13ID,'
      '  PORTICOD = :PORTICOD,'
      '  CTPGDULTPAGTO = :CTPGDULTPAGTO,'
      '  CTPGN2TOTPAG = :CTPGN2TOTPAG,'
      '  CTPGN3JUROPAGTO = :CTPGN3JUROPAGTO,'
      '  CTPGN3MULTAPAGTO = :CTPGN3MULTAPAGTO,'
      '  CTPGN3DESCPAGTO = :CTPGN3DESCPAGTO,'
      '  CTPGN2DESCPROMO = :CTPGN2DESCPROMO,'
      '  PDCPA13ID = :PDCPA13ID,'
      '  CTPGCPREVREAL = :CTPGCPREVREAL,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  CTPGN3TXJURO = :CTPGN3TXJURO,'
      '  CTPGN3TXMULTA = :CTPGN3TXMULTA'
      'where'
      '  CTPGA13ID = :OLD_CTPGA13ID')
    InsertSQL.Strings = (
      'insert into CONTASPAGAR'
      
        '  (CTPGA13ID, EMPRICOD, CTPGICOD, FORNICOD, PLCTA15COD, CTPGA20D' +
        'OCORIG, '
      
        '   CTPGINROPARC, CTPGDTEMIS, CTPGDVENC, CTPGN3VLR, TPDCICOD, CTP' +
        'GA5TIPOPADRAO, '
      
        '   NOCPA13ID, PORTICOD, CTPGDULTPAGTO, CTPGN2TOTPAG, CTPGN3JUROP' +
        'AGTO, CTPGN3MULTAPAGTO, '
      
        '   CTPGN3DESCPAGTO, CTPGN2DESCPROMO, PDCPA13ID, CTPGCPREVREAL, P' +
        'ENDENTE, '
      '   REGISTRO, CTPGN3TXJURO, CTPGN3TXMULTA)'
      'values'
      
        '  (:CTPGA13ID, :EMPRICOD, :CTPGICOD, :FORNICOD, :PLCTA15COD, :CT' +
        'PGA20DOCORIG, '
      
        '   :CTPGINROPARC, :CTPGDTEMIS, :CTPGDVENC, :CTPGN3VLR, :TPDCICOD' +
        ', :CTPGA5TIPOPADRAO, '
      
        '   :NOCPA13ID, :PORTICOD, :CTPGDULTPAGTO, :CTPGN2TOTPAG, :CTPGN3' +
        'JUROPAGTO, '
      
        '   :CTPGN3MULTAPAGTO, :CTPGN3DESCPAGTO, :CTPGN2DESCPROMO, :PDCPA' +
        '13ID, :CTPGCPREVREAL, '
      '   :PENDENTE, :REGISTRO, :CTPGN3TXJURO, :CTPGN3TXMULTA)')
    DeleteSQL.Strings = (
      'delete from CONTASPAGAR'
      'where'
      '  CTPGA13ID = :OLD_CTPGA13ID')
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 438
    Top = 1
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From TipoDocumento')
    Macros = <>
    Left = 24
    Top = 232
    object SQLTipoDocumentoTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
    end
    object SQLTipoDocumentoTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Portador')
    Macros = <>
    Left = 24
    Top = 261
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
  object DSSQLTipoDocumento: TDataSource
    DataSet = SQLTipoDocumento
    Left = 52
    Top = 232
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 52
    Top = 261
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSMasterTemplate
    SQL.Strings = (
      'SELECT OPESCORIGEMDESTINO FROM OPERACAOESTOQUE'
      'WHERE'
      'OPESICOD = :OPESICOD')
    Macros = <>
    Left = 24
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OPESICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLEspelhoNovoLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONTASPAGAR'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 528
    Top = 1
    object SQLEspelhoNovoLancCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      Origin = 'DB.CONTASPAGAR.CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASPAGAR.EMPRICOD'
    end
    object SQLEspelhoNovoLancFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.CONTASPAGAR.FORNICOD'
    end
    object SQLEspelhoNovoLancPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASPAGAR.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLEspelhoNovoLancCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      Origin = 'DB.CONTASPAGAR.CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLEspelhoNovoLancCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
      Origin = 'DB.CONTASPAGAR.CTPGINROPARC'
    end
    object SQLEspelhoNovoLancCTPGDTEMIS: TDateTimeField
      FieldName = 'CTPGDTEMIS'
      Origin = 'DB.CONTASPAGAR.CTPGDTEMIS'
    end
    object SQLEspelhoNovoLancCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
      Origin = 'DB.CONTASPAGAR.CTPGDVENC'
    end
    object SQLEspelhoNovoLancCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
      Origin = 'DB.CONTASPAGAR.CTPGN3VLR'
    end
    object SQLEspelhoNovoLancTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASPAGAR.TPDCICOD'
    end
    object SQLEspelhoNovoLancCTPGA5TIPOPADRAO: TStringField
      FieldName = 'CTPGA5TIPOPADRAO'
      Origin = 'DB.CONTASPAGAR.CTPGA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLEspelhoNovoLancNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.CONTASPAGAR.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASPAGAR.PORTICOD'
    end
    object SQLEspelhoNovoLancCTPGN2DESCPROMO: TFloatField
      FieldName = 'CTPGN2DESCPROMO'
      Origin = 'DB.CONTASPAGAR.CTPGN2DESCPROMO'
    end
    object SQLEspelhoNovoLancPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.CONTASPAGAR.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancCTPGCPREVREAL: TStringField
      FieldName = 'CTPGCPREVREAL'
      Origin = 'DB.CONTASPAGAR.CTPGCPREVREAL'
      FixedChar = True
      Size = 1
    end
    object SQLEspelhoNovoLancCTPGA254HIST: TStringField
      FieldName = 'CTPGA254HIST'
      Origin = 'DB.CONTASPAGAR.CTPGA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLEspelhoNovoLancNOCPA30NRO: TStringField
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.CONTASPAGAR.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLEspelhoNovoLancHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASPAGAR.HTPDICOD'
    end
    object SQLEspelhoNovoLancPLCTA15CODCREDITO: TStringField
      FieldName = 'PLCTA15CODCREDITO'
      Origin = 'DB.CONTASPAGAR.PLCTA15CODCREDITO'
      FixedChar = True
      Size = 15
    end
  end
  object SQLPagamento: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  PAGAMENTO'
      'where '
      '  CTPGA13ID = :CTPGA13ID'
      'order by '
      '  PAGADPAGTO')
    Macros = <>
    Left = 581
    Top = 1
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTPGA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
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
      DisplayLabel = 'Data'
      FieldName = 'PAGADPAGTO'
      Origin = 'DB.PAGAMENTO.PAGADPAGTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLPagamentoPAGAN3VLRPAGTO: TFloatField
      DisplayLabel = 'Vlr.Pago'
      FieldName = 'PAGAN3VLRPAGTO'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRPAGTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoPAGAN3VLRJURO: TFloatField
      DisplayLabel = 'Vlr.Juros'
      FieldName = 'PAGAN3VLRJURO'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRJURO'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoPAGAN3VLRMULTA: TFloatField
      DisplayLabel = 'Vlr.Multa'
      FieldName = 'PAGAN3VLRMULTA'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRMULTA'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoPAGAN3VLRDESC: TFloatField
      DisplayLabel = 'Vlr.Desc'
      FieldName = 'PAGAN3VLRDESC'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRDESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoVlrTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VlrTotal'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLPagamentoPLCTA15CREDITO: TStringField
      FieldName = 'PLCTA15CREDITO'
      Origin = 'DB.PAGAMENTO.PLCTA15CREDITO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODJUROCRED: TStringField
      FieldName = 'PLCTA15CODJUROCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODJUROCRED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODMULTCRED: TStringField
      FieldName = 'PLCTA15CODMULTCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODMULTCRED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODDESCCRED: TStringField
      FieldName = 'PLCTA15CODDESCCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODDESCCRED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15DEBITO: TStringField
      FieldName = 'PLCTA15DEBITO'
      Origin = 'DB.PAGAMENTO.PLCTA15DEBITO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODJURODEB: TStringField
      FieldName = 'PLCTA15CODJURODEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODJURODEB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODMULTDEB: TStringField
      FieldName = 'PLCTA15CODMULTDEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODMULTDEB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODDESCDEB: TStringField
      FieldName = 'PLCTA15CODDESCDEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODDESCDEB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPAGAA254HISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'PAGAA254HISTORICO'
      Origin = 'DB.PAGAMENTO.PAGAA254HISTORICO'
      Size = 254
    end
    object SQLPagamentoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.PAGAMENTO.TPLQICOD'
    end
  end
  object DSSQLPagamento: TDataSource
    AutoEdit = False
    DataSet = SQLPagamento
    Left = 609
    Top = 1
  end
  object DSSQLPlanoContas: TDataSource
    DataSet = SQLPlanoContas
    Left = 52
    Top = 316
  end
  object SQLPlanoContas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '* '
      'From '
      'PLANODECONTAS'
      'where  '
      'PLCTCANALSINT = '#39'A'#39' '
      'and'
      'PLCTCTIPOSALDO = '#39'D'#39' '
      ''
      'order by PLCTA60DESCR')
    Macros = <>
    Left = 24
    Top = 316
    object SQLPlanoContasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
