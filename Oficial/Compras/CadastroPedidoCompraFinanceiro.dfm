inherited FormCadastroPedidoCompraFinanceiro: TFormCadastroPedidoCompraFinanceiro
  Left = 36
  Top = 99
  Caption = 'Financeiro'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited ScrollBoxPanelCabecalho: TScrollBox
        inherited Panel1: TPanel
          inherited PanelNavigator: TPanel
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              inherited BtnFecharTela: TSpeedButton
                Left = 677
              end
            end
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 166
            Height = 283
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 210
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CTPGA20DOCORIG'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGINROPARC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGDVENC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTPGN3VLR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TipoDocumentoCalcField'
                    Width = 172
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PortadorCalcField'
                    Width = 177
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
                Top = 128
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label10: TLabel
                Left = 4
                Top = 7
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
                Left = 422
                Top = 21
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
                Left = 4
                Top = 47
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
                Left = 422
                Top = 62
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
              object ComboTipoDoc: TRxDBLookupCombo
                Left = 56
                Top = 22
                Width = 364
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
                TabOrder = 1
                OnKeyDown = ComboTipoDocKeyDown
              end
              object ComboPortador: TRxDBLookupCombo
                Left = 56
                Top = 62
                Width = 363
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
                TabOrder = 3
                OnKeyDown = ComboPortadorKeyDown
              end
              object DBEdit7: TDBEdit
                Left = 4
                Top = 22
                Width = 49
                Height = 21
                DataField = 'TPDCICOD'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit1: TDBEdit
                Left = 4
                Top = 62
                Width = 49
                Height = 21
                DataField = 'PORTICOD'
                DataSource = DSTemplate
                TabOrder = 2
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
            Height = 166
            object Label17: TLabel
              Left = 8
              Top = 41
              Width = 81
              Height = 13
              Caption = 'Empresa Dest.'
              FocusControl = DBEdit15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 8
              Top = 78
              Width = 64
              Height = 13
              Caption = 'Fornecedor'
              FocusControl = DBEdit16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 9
              Top = 115
              Width = 89
              Height = 13
              Caption = 'Transportadora'
              FocusControl = DBEdit17
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 516
              Top = 41
              Width = 83
              Height = 13
              Caption = 'Valor Encargos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 516
              Top = 78
              Width = 62
              Height = 13
              Caption = 'Valor Frete'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 516
              Top = 115
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
            object LBCodPedido: TLabel
              Left = 9
              Top = 3
              Width = 54
              Height = 13
              Caption = 'ID Pedido'
              FocusControl = DbCodIntegrado
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 409
              Top = 2
              Width = 58
              Height = 13
              Caption = 'Total Prod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 97
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
            object Label16: TLabel
              Left = 206
              Top = 2
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
            object Label25: TLabel
              Left = 306
              Top = 2
              Width = 59
              Height = 13
              Caption = 'Total Desc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 514
              Top = 2
              Width = 122
              Height = 13
              Caption = 'Total-Desc.Prom+Enc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit15: TDBEdit
              Left = 5
              Top = 55
              Width = 69
              Height = 21
              TabStop = False
              Color = 16249066
              DataField = 'EMPRICODDEST'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit16: TDBEdit
              Left = 5
              Top = 91
              Width = 68
              Height = 21
              TabStop = False
              Color = 16249066
              DataField = 'FORNICOD'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit17: TDBEdit
              Left = 5
              Top = 128
              Width = 68
              Height = 21
              TabStop = False
              Color = 16249066
              DataField = 'TRANICOD'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit18: TDBEdit
              Left = 79
              Top = 55
              Width = 430
              Height = 21
              TabStop = False
              DataField = 'EmpresaLookup'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit19: TDBEdit
              Left = 79
              Top = 91
              Width = 430
              Height = 21
              TabStop = False
              DataField = 'FornecedorLookup'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit20: TDBEdit
              Left = 79
              Top = 128
              Width = 430
              Height = 21
              TabStop = False
              DataField = 'TransportadoraLookup'
              DataSource = DSMasterTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object EvDBNumEdit2: TEvDBNumEdit
              Left = 512
              Top = 54
              Width = 134
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'PDCPN2VLRENCARGO'
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
              ReadOnly = True
              TabOrder = 6
            end
            object EvDBNumEdit3: TEvDBNumEdit
              Left = 512
              Top = 91
              Width = 134
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'PDCPN2VLRFRETE'
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
              ReadOnly = True
              TabOrder = 7
            end
            object EvDBNumEdit4: TEvDBNumEdit
              Left = 512
              Top = 128
              Width = 134
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'PDCPN2DESCPROM'
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
              ReadOnly = True
              TabOrder = 8
            end
            object DbCodIntegrado: TDBEdit
              Left = 5
              Top = 16
              Width = 84
              Height = 21
              TabStop = False
              Color = 16249066
              DataField = 'PDCPA13ID'
              DataSource = DSMasterTemplate
              ReadOnly = True
              TabOrder = 9
            end
            object DBDateEdit3: TDBDateEdit
              Left = 93
              Top = 16
              Width = 104
              Height = 21
              TabStop = False
              DataField = 'PDCPDEMIS'
              DataSource = DSMasterTemplate
              ReadOnly = True
              Color = 16249066
              DefaultToday = True
              DialogTitle = 'Selecione a Data'
              NumGlyphs = 2
              TabOrder = 10
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 201
              Top = 15
              Width = 98
              Height = 21
              Style = csDropDownList
              Color = 16249066
              DataField = 'PDCPCSTATUS'
              DataSource = DSMasterTemplate
              Enabled = False
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberto'
                'Encerrado'
                'Cancelado')
              ReadOnly = True
              TabOrder = 11
              TabStop = False
              Values.Strings = (
                'A'
                'E'
                'C')
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 405
              Top = 15
              Width = 100
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'PDCPN2TOTITENS'
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
              ReadOnly = True
              TabOrder = 12
            end
            object EvDBNumEdit6: TEvDBNumEdit
              Left = 512
              Top = 15
              Width = 134
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'TotalCalc'
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
              ReadOnly = True
              TabOrder = 13
            end
            object EvDBNumEdit7: TEvDBNumEdit
              Left = 302
              Top = 15
              Width = 100
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              DataField = 'PDCPN3TOTDESC'
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
              ReadOnly = True
              TabOrder = 14
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 166
            Height = 0
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From CONTASPAGAR Where '
      'PDCPA13ID=:PDCPA13ID and (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'PDCPA13ID'
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
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASPAGAR.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTPGINROPARC: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'CTPGINROPARC'
      Origin = 'DB.CONTASPAGAR.CTPGINROPARC'
    end
    object SQLTemplateCTPGDVENC: TDateTimeField
      DisplayLabel = 'Data Vencto'
      FieldName = 'CTPGDVENC'
      Origin = 'DB.CONTASPAGAR.CTPGDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTPGN3VLR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CTPGN3VLR'
      Origin = 'DB.CONTASPAGAR.CTPGN3VLR'
    end
    object SQLTemplateTPDCICOD: TIntegerField
      ConstraintErrorMessage = '1'
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
      FieldName = 'CTPGDTEMIS'
      Origin = 'DB.CONTASPAGAR.CTPGDTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTPGA20DOCORIG: TStringField
      DisplayLabel = 'Documento Origem'
      FieldName = 'CTPGA20DOCORIG'
      Origin = 'DB.CONTASPAGAR.CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLTemplatePORTICOD: TIntegerField
      ConstraintErrorMessage = '1'
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
      FieldName = 'CTPGCPREVREAL'
      Origin = 'DB.CONTASPAGAR.CTPGCPREVREAL'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCTPGN2TOTPAG: TFloatField
      FieldName = 'CTPGN2TOTPAG'
      Origin = 'DB.CONTASPAGAR.CTPGN2TOTPAG'
    end
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
  object DSSQLTipoDocumento: TDataSource
    DataSet = SQLTipoDocumento
    Left = 52
    Top = 232
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
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 52
    Top = 261
  end
end
