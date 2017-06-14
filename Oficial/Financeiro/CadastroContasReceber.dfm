inherited FormCadastroContasReceber: TFormCadastroContasReceber
  Left = 240
  Top = 101
  Caption = 'Cadastro de Documentos '#224' Receber'
  ClientWidth = 878
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 878
    inherited PanelCabecalho: TPanel
      Width = 876
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 876
        inherited Panel1: TPanel
          Width = 874
          inherited PanelNavigator: TPanel
            Width = 874
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 874
            end
          end
          inherited PanelLeft: TPanel
            Left = 417
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 876
      inherited PanelFundoDados: TPanel
        Width = 746
        inherited Panel5: TPanel
          Width = 746
          inherited PanelCodigoDescricao: TPanel [0]
            Width = 746
            Height = 180
            object Label1: TLabel
              Left = 103
              Top = 3
              Width = 49
              Height = 13
              Caption = 'Empresa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnEmpresa: TSpeedButton
              Left = 624
              Top = 16
              Width = 21
              Height = 21
              Cursor = crHandPoint
              Hint = 'Acessa Empresa'
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
              OnClick = BtnEmpresaClick
            end
            object Label2: TLabel
              Left = 10
              Top = 38
              Width = 55
              Height = 13
              Caption = 'ID Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnCliente: TSpeedButton
              Left = 624
              Top = 51
              Width = 21
              Height = 21
              Cursor = crHandPoint
              Hint = 'Acessa Cliente'
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
              OnClick = BtnClienteClick
            end
            object Label3: TLabel
              Left = 9
              Top = 3
              Width = 73
              Height = 13
              Caption = 'ID C.Receber'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 277
              Top = 74
              Width = 46
              Height = 13
              Caption = 'Emiss'#227'o'
              FocusControl = DBDateEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 371
              Top = 74
              Width = 67
              Height = 13
              Caption = 'Vencimento'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 471
              Top = 74
              Width = 74
              Height = 13
              Caption = 'Valor Parcela'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 8
              Top = 74
              Width = 87
              Height = 13
              Caption = 'Nro.Documento'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 125
              Top = 74
              Width = 25
              Height = 13
              Caption = 'Parc'
              FocusControl = DBEdit15
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 222
              Top = 109
              Width = 50
              Height = 13
              Caption = 'Portador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaPortador: TSpeedButton
              Left = 403
              Top = 122
              Width = 21
              Height = 20
              Cursor = crHandPoint
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
              OnClick = RetornaPortadorClick
            end
            object RetornaTipoDoc: TSpeedButton
              Left = 197
              Top = 122
              Width = 21
              Height = 20
              Cursor = crHandPoint
              Hint = 'Acessa Tipo de Documento'
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
              OnClick = RetornaTipoDocClick
            end
            object Label7: TLabel
              Left = 9
              Top = 109
              Width = 92
              Height = 13
              Caption = 'Tipo Documento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 429
              Top = 108
              Width = 134
              Height = 13
              Caption = 'Compet'#234'ncia M'#234's    Ano'
              FocusControl = DBEdit13
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 586
              Top = 108
              Width = 81
              Height = 13
              Caption = 'Boleto Emitido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 572
              Top = 74
              Width = 37
              Height = 13
              Caption = 'Status'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 156
              Top = 74
              Width = 92
              Height = 13
              Caption = 'Nosso Nro Banco'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RetornaPlanoContas: TSpeedButton
              Left = 106
              Top = 157
              Width = 21
              Height = 21
              Cursor = crHandPoint
              Hint = 'Acessa Plano de Contas'
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
              OnClick = RetornaPlanoContasClick
            end
            object Label17: TLabel
              Left = 9
              Top = 144
              Width = 90
              Height = 13
              Caption = 'Plano de Contas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 589
              Top = 146
              Width = 80
              Height = 13
              Caption = 'Remessa Lote'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 6
              Top = 16
              Width = 91
              Height = 21
              DataField = 'CTRCA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBDateEdit1: TDBDateEdit
              Left = 272
              Top = 87
              Width = 95
              Height = 21
              Cursor = crHandPoint
              DataField = 'CTRCDEMIS'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 7
              YearDigits = dyFour
            end
            object DBEdit4: TDBDateEdit
              Left = 369
              Top = 87
              Width = 95
              Height = 21
              Cursor = crHandPoint
              DataField = 'CTRCDVENC'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 8
              YearDigits = dyFour
              OnExit = DBEdit4Exit
            end
            object EditValor: TEvDBNumEdit
              Left = 467
              Top = 87
              Width = 98
              Height = 21
              AutoHideCalculator = False
              DataField = 'CTRCN2VLR'
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
              TabOrder = 9
            end
            object DBEdit13: TDBEdit
              Left = 6
              Top = 87
              Width = 114
              Height = 21
              DataField = 'CTRCA30NRODUPLICBANCO'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object DBEdit15: TDBEdit
              Left = 123
              Top = 87
              Width = 27
              Height = 21
              DataField = 'CTRCINROPARC'
              DataSource = DSTemplate
              TabOrder = 5
            end
            object ComboEmpresa: TRxDBLookupCombo
              Left = 99
              Top = 16
              Width = 522
              Height = 21
              Cursor = crHandPoint
              DropDownCount = 8
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRA60RAZAOSOC'
              LookupSource = DSSQLEmpresa
              TabOrder = 1
              OnKeyDown = ComboEmpresaKeyDown
            end
            object ComboClienteCad: TRxDBLookupCombo
              Left = 100
              Top = 51
              Width = 520
              Height = 21
              Cursor = crHandPoint
              DropDownCount = 8
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'CLIEA13ID'
              LookupDisplay = 'CLIEA13ID;CLIEA60RAZAOSOC'
              LookupDisplayIndex = 1
              LookupSource = DSSQLCliente
              TabOrder = 3
              OnKeyDown = ComboClienteCadKeyDown
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 51
              Width = 91
              Height = 21
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object ComboPortadorCad: TRxDBLookupCombo
              Left = 250
              Top = 122
              Width = 152
              Height = 21
              Cursor = crHandPoint
              DropDownCount = 8
              DataField = 'PORTICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'PORTICOD'
              LookupDisplay = 'PORTA60DESCR'
              LookupSource = DSSQLPortador
              TabOrder = 14
              OnKeyDown = ComboPortadorCadKeyDown
            end
            object ComboTipoDocCad: TRxDBLookupCombo
              Left = 36
              Top = 122
              Width = 160
              Height = 21
              Cursor = crHandPoint
              DropDownCount = 8
              DataField = 'TPDCICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'TPDCICOD'
              LookupDisplay = 'TPDCA60DESCR'
              LookupSource = DSSQLTipoDocumento
              TabOrder = 12
              OnKeyDown = ComboTipoDocCadKeyDown
            end
            object ComboCompetenciaMes: TRxDBComboBox
              Left = 427
              Top = 121
              Width = 98
              Height = 21
              Style = csDropDownList
              DataField = 'CTRCA2MESCOMP'
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
              Left = 528
              Top = 121
              Width = 50
              Height = 21
              DataField = 'CTRCA4ANOCOMP'
              DataSource = DSTemplate
              EnableValues = False
              ItemHeight = 13
              Items.Strings = (
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
            object DBEdit9: TDBEdit
              Left = 6
              Top = 122
              Width = 29
              Height = 21
              DataField = 'TPDCICOD'
              DataSource = DSTemplate
              TabOrder = 11
            end
            object DBEdit11: TDBEdit
              Left = 220
              Top = 122
              Width = 29
              Height = 21
              DataField = 'PORTICOD'
              DataSource = DSTemplate
              TabOrder = 13
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 584
              Top = 121
              Width = 92
              Height = 21
              Color = 16249066
              DataField = 'CTRCCEMITIDOBOLETO'
              DataSource = DSTemplate
              EnableValues = False
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ReadOnly = True
              TabOrder = 17
              Values.Strings = (
                'S'
                'N')
            end
            object ComboStatus: TRxDBComboBox
              Left = 569
              Top = 87
              Width = 106
              Height = 21
              Style = csDropDownList
              Color = clWhite
              DataField = 'CTRCCSTATUS'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Ativo'
                'Cancelado'
                'Negociado')
              TabOrder = 10
              Values.Strings = (
                'A'
                'C'
                'N')
            end
            object DBEdit2: TDBEdit
              Left = 154
              Top = 87
              Width = 114
              Height = 21
              DataField = 'CTRCA15NOSSONUMERO'
              DataSource = DSTemplate
              TabOrder = 6
            end
            object DBEdit7: TDBEdit
              Left = 6
              Top = 157
              Width = 96
              Height = 21
              DataField = 'PLCTA15COD'
              DataSource = DSTemplate
              TabOrder = 18
              OnKeyDown = DBEdit7KeyDown
            end
            object DBEdit8: TDBEdit
              Left = 133
              Top = 158
              Width = 445
              Height = 18
              TabStop = False
              AutoSize = False
              BevelInner = bvNone
              BevelOuter = bvNone
              DataField = 'PlanodeContasCalcField'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 19
            end
            object DBEdit5: TDBEdit
              Left = 586
              Top = 159
              Width = 88
              Height = 18
              TabStop = False
              AutoSize = False
              BevelInner = bvNone
              BevelOuter = bvNone
              DataField = 'LOTEREMESSABANCO'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 20
            end
          end
          inherited PagePrincipal: TPageControl [1]
            Top = 180
            Width = 746
            Height = 269
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Top = 93
                Width = 738
                Height = 64
                Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CTRCCSTATUS'
                    Title.Caption = 'ST'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCINROPARC'
                    Title.Caption = 'Parc'
                    Width = 28
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDVENC'
                    Width = 62
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2VLR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TOTREC'
                    Title.Caption = 'Total Recto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ClienteCalcField'
                    Title.Caption = 'Nome / Raz'#227'o Social'
                    Width = 255
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA30NRODUPLICBANCO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA15NOSSONUMERO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TipoDocumentoCalcField'
                    Title.Caption = 'Tipo Documento'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2DESCFIN'
                    Title.Caption = 'Vlr.Desc'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PortadorCalcField'
                    Title.Caption = 'Portador'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TXJURO'
                    Title.Caption = 'TX.Juro'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TXMULTA'
                    Title.Caption = 'Tx.Multa'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCA5TIPOPADRAO'
                    Title.Caption = 'Tipo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCDULTREC'
                    Title.Caption = 'DT.ULT.Recto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TOTJUROREC'
                    Title.Caption = 'Juros Recto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TOTMULTAREC'
                    Title.Caption = 'Multa Recto'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CTRCN2TOTDESCREC'
                    Title.Caption = 'Total Desc Recto'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 738
                Height = 41
                inherited PanelEditProcura: TPanel [0]
                  Width = 344
                  Height = 41
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 344
                    Height = 41
                    FullHeight = 0
                  end
                end
                inherited PanelBetween: TPanel [1]
                  Width = 344
                  Height = 41
                  inherited AdvPanel1: TAdvPanel
                    Width = 344
                    Height = 41
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  Height = 41
                  inherited AdvPanelIndice: TAdvPanel
                    Height = 41
                    FullHeight = 0
                    inherited ComboOrdem: TComboBox
                      Cursor = crHandPoint
                    end
                    inherited ComboOrder: TComboBox
                      Cursor = crHandPoint
                    end
                    inherited ComboAscDesc: TComboBox
                      Cursor = crHandPoint
                    end
                    inherited ComboOperador: TComboBox
                      Cursor = crHandPoint
                    end
                  end
                end
              end
              inherited MemoDetalhes: TMemo
                Left = 14
                Top = 130
                Height = 52
                Lines.Strings = (
                  'RECEBIMENTO')
              end
              object PanelPesquisa: TPanel
                Left = 0
                Top = 41
                Width = 738
                Height = 52
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 3
                TabStop = True
                object SpeedButton1: TSpeedButton
                  Left = 554
                  Top = 4
                  Width = 95
                  Height = 22
                  Cursor = crHandPoint
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
                  OnClick = SpeedButton1Click
                end
                object SpeedButton2: TSpeedButton
                  Left = 554
                  Top = 26
                  Width = 95
                  Height = 22
                  Cursor = crHandPoint
                  Caption = 'Limpar &Pesquisa'
                  Flat = True
                  Glyph.Data = {
                    0E010000424D0E01000000000000360000002800000008000000090000000100
                    180000000000D8000000130B0000130B00000000000000000000BFBFBFBFBFBF
                    BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF290404340403BFBFBFBFBFBFBFBF
                    BFBFBFBF2F02001C0000BFBFBF330403692824BFBFBFBFBFBF661614390301BF
                    BFBFBFBFBFBFBFBF3D05047C4229CB7B6A9E4542BFBFBFBFBFBFBFBFBFBFBFBF
                    BFBFBF4F1A0BA05548BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF4307053F0D045316
                    0DA0514FBFBFBFBFBFBFBFBFBFA9584F984B48BFBFBFBFBFBF6D2A29853532BF
                    BFBFCC6D6ACE786ABFBFBFBFBFBFBFBFBFBFBFBF5F18166A1816BFBFBFBFBFBF
                    BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
                  OnClick = SpeedButton2Click
                end
                object ComboCliente: TRxDBLookupCombo
                  Left = 3
                  Top = 3
                  Width = 274
                  Height = 21
                  Cursor = crHandPoint
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                    'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um cliente...'
                  LookupField = 'CLIEA13ID'
                  LookupDisplay = 'CLIEA60RAZAOSOC'
                  LookupSource = DSSQLCliente
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnKeyDown = ComboClienteKeyDown
                end
                object ComboConta: TRxDBLookupCombo
                  Left = 278
                  Top = 3
                  Width = 274
                  Height = 21
                  Cursor = crHandPoint
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                    'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione uma conta do plano de contas'
                  LookupField = 'PLCTA15COD'
                  LookupDisplay = 'PLCTA60DESCR'
                  LookupSource = DSSQLConta
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  OnKeyDown = ComboClienteKeyDown
                end
                object ComboTipoDoc: TRxDBLookupCombo
                  Left = 3
                  Top = 27
                  Width = 274
                  Height = 21
                  Cursor = crHandPoint
                  Hint = 
                    'Esta '#233' uma pesquisa avan'#231'ada, os dados inclusos na pesquisa acim' +
                    'a n'#227'o '#13#10'ser'#227'o considerados na pesquisa atual...'
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um tipo de documento'
                  LookupField = 'TPDCICOD'
                  LookupDisplay = 'TPDCA60DESCR'
                  LookupSource = DSSQLTipoDocumento
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  OnKeyDown = ComboClienteKeyDown
                end
                object ComboPortador: TRxDBLookupCombo
                  Left = 278
                  Top = 27
                  Width = 274
                  Height = 21
                  Cursor = crHandPoint
                  DropDownCount = 8
                  DisplayEmpty = 'Selecione um portador...'
                  LookupField = 'PORTICOD'
                  LookupDisplay = 'PORTA60DESCR'
                  LookupSource = DSSQLPortador
                  TabOrder = 3
                  OnKeyDown = ComboClienteKeyDown
                end
              end
              object Panel7: TPanel
                Left = 0
                Top = 157
                Width = 738
                Height = 86
                Align = alBottom
                Color = 12572888
                TabOrder = 4
                object GroupBox2: TGroupBox
                  Left = 1
                  Top = 1
                  Width = 736
                  Height = 84
                  Align = alClient
                  Caption = ' Hist'#243'rico de Recebimentos da Conta Selecionada '
                  Color = 16249066
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  TabOrder = 0
                  TabStop = True
                  object DBGrid2: TDBGrid
                    Left = 2
                    Top = 15
                    Width = 732
                    Height = 67
                    TabStop = False
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
                    Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    ParentFont = False
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWhite
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = [fsBold]
                    OnCellClick = DBGrid1CellClick
                    OnDrawColumnCell = DBGrid1DrawColumnCell
                    OnDblClick = DBGrid1DblClick
                    OnMouseMove = DBGrid1MouseMove
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'RECEDRECTO'
                        Title.Caption = 'Data Recto'
                        Width = 67
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEDDATAMOV'
                        Width = 62
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEN2VLRRECTO'
                        Width = 94
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEN2VLRJURO'
                        Width = 59
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEN2VLRMULTA'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RECEN2DESC'
                        Width = 62
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'EmpresaLookup'
                        Title.Caption = 'Emp.Recto'
                        Width = 290
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TERMICODREC'
                        Title.Caption = 'Term.Recto'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'USUAICOD'
                        Title.Caption = 'Usuario Recto'
                        Visible = True
                      end>
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object GroupHistRecto: TGroupBox
                Left = 0
                Top = 90
                Width = 738
                Height = 153
                Align = alClient
                Caption = ' Hist'#243'rico de Recebimentos '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                TabStop = True
                object DBGrid1: TDBGrid
                  Left = 2
                  Top = 15
                  Width = 734
                  Height = 136
                  TabStop = False
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
                  Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWhite
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = [fsBold]
                  OnCellClick = DBGrid1CellClick
                  OnDrawColumnCell = DBGrid1DrawColumnCell
                  OnDblClick = DBGrid1DblClick
                  OnMouseMove = DBGrid1MouseMove
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'RECEDRECTO'
                      Title.Caption = 'Data Recto'
                      Width = 66
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEDDATAMOV'
                      Width = 61
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEN2VLRRECTO'
                      Width = 65
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEN2VLRJURO'
                      Width = 55
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEN2VLRMULTA'
                      Width = 54
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'RECEN2DESC'
                      Title.Caption = 'Desc'
                      Width = 55
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'EmpresaLookup'
                      Title.Caption = 'Empresa Recto'
                      Width = 199
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'NUMEICOD'
                      Title.Caption = 'Numerario'
                      Visible = True
                    end
                    item
                      Expanded = False
                      Title.Caption = ' '
                      Width = 67
                      Visible = True
                    end>
                end
              end
              object PanelHistPadrao: TPanel
                Left = 0
                Top = 0
                Width = 738
                Height = 90
                Align = alTop
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 0
                object Label11: TLabel
                  Left = 7
                  Top = 5
                  Width = 93
                  Height = 13
                  Caption = 'Hist'#243'rico Padr'#227'o'
                  FocusControl = DBEditHistoricoPadrao
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label13: TLabel
                  Left = 120
                  Top = 5
                  Width = 50
                  Height = 13
                  Caption = 'Hist'#243'rico'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object BtnHistorico: TSpeedButton
                  Left = 94
                  Top = 18
                  Width = 21
                  Height = 21
                  Cursor = crHandPoint
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
                object Label15: TLabel
                  Left = 4
                  Top = 49
                  Width = 84
                  Height = 13
                  Caption = 'Total Recebido'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEditHistoricoPadrao: TDBEdit
                  Left = 5
                  Top = 19
                  Width = 88
                  Height = 21
                  DataField = 'HTPDICOD'
                  DataSource = DSTemplate
                  TabOrder = 0
                  OnExit = DBEditHistoricoPadraoExit
                  OnKeyDown = DBEditHistoricoPadraoKeyDown
                end
                object MemoHistorico: TDBMemo
                  Left = 117
                  Top = 19
                  Width = 494
                  Height = 65
                  DataField = 'CTRCA254HIST'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object EvDBNumEdit1: TEvDBNumEdit
                  Left = 4
                  Top = 62
                  Width = 91
                  Height = 21
                  TabStop = False
                  AutoHideCalculator = False
                  Color = 16249066
                  DataField = 'CTRCN2TOTREC'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
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
                  TabOrder = 2
                end
                object ckImprimeMesReferencia: TCheckBox
                  Left = 300
                  Top = 3
                  Width = 305
                  Height = 16
                  Caption = 'Imprimir no Recibo Mes Anterior como Referencia'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 3
                end
              end
            end
          end
          inherited PanelMaster: TPanel [2]
            Top = 180
            Width = 746
            Height = 0
          end
        end
      end
    end
  end
  inherited DSTemplate: TDataSource
    Tag = 1
  end
  inherited PopupMenuDiversos: TPopupMenu
    object Geraroutrolanamentoapartirdodocumentoatual1: TMenuItem
      Caption = 'Replicar Lan'#231'amento(s)'
      OnClick = Geraroutrolanamentoapartirdodocumentoatual1Click
    end
    object GerarMultiplosLanctos: TMenuItem
      Caption = 'Assistente Para Lan'#231'amentos M'#250'ltiplos'
      OnClick = GerarMultiplosLanctosClick
    end
    object MnAssistenteLancContratosMensais: TMenuItem
      Caption = 'Assistente Para Lan'#231'amentos de Contratos Mensais'
      OnClick = MnAssistenteLancContratosMensaisClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MostrarLancSemPlanoContas: TMenuItem
      Caption = 'Verifica Lan'#231'amentos sem plano de contas'
      OnClick = MostrarLancSemPlanoContasClick
    end
    object CorrigeTotalRecebidoSafe1: TMenuItem
      Caption = 'Corrige Total Recebido Safe'
      OnClick = CorrigeTotalRecebidoSafe1Click
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MnRecibo: TMenuItem
      Caption = 'Recibo'
      OnClick = MnReciboClick
    end
    object mnNotaPromissoria: TMenuItem
      Caption = 'Nota Promiss'#243'ria'
      OnClick = mnNotaPromissoriaClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 3
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From CONTASRECEBER Where '
      '(%MFiltro)'
      'and'
      '(CTRCA5TIPOPADRAO <> '#39'CHQ'#39' )  and'
      '(CTRCA5TIPOPADRAO <> '#39'CHQV'#39')  and'
      '(CTRCA5TIPOPADRAO <> '#39'CHQP'#39')  and'
      '(CTRCCTIPOREGISTRO = '#39'N'#39' or CTRCCTIPOREGISTRO IS NULL)'
      'and'
      '(%MEmpresa)')
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
    object SQLTemplateCTRCA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID Lancto'
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      ConstraintErrorMessage = '1'
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLTemplateTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLTemplateCTRCICOD: TIntegerField
      Tag = 1
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLTemplateEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLTemplateEmpresaUltRecCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmpresaUltRecCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateTerminalCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'TerminalCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCLIEA13ID: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'ID.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateClienteCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCINROPARC: TIntegerField
      ConstraintErrorMessage = '1'
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLTemplateCTRCDEMIS: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLTemplateCTRCDVENC: TDateTimeField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Dt.Vencto'
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTRCN2VLR: TFloatField
      ConstraintErrorMessage = '0'
      DisplayLabel = 'Valor da Parcela'
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
      OnChange = SQLTemplateNUMEICODChange
    end
    object SQLTemplateNumerarioCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'NumerarioCalcField'
      Visible = False
      Size = 30
      Calculated = True
    end
    object SQLTemplatePORTICOD: TIntegerField
      DisplayLabel = 'Cod. Portador'
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLTemplatePortadorCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'PortadorCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPODARAO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCTRCDULTREC: TDateTimeField
      DisplayLabel = 'Dt.Ult.Recto'
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTPDCICOD: TIntegerField
      DisplayLabel = 'Cod. Tipo Doc'
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLTemplateTipoDocumentoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoDocumentoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplatePLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePlanodeContasCalcField: TStringField
      DisplayLabel = 'Plano de Contas'
      FieldKind = fkCalculated
      FieldName = 'PlanodeContasCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateEmpresaDestCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmpresaDestCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCA30NRODUPLICBANCO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTipoPadraoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoPadraoCalcField'
      Visible = False
      Size = 5
      Calculated = True
    end
    object SQLTemplateCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
      OnChange = SQLTemplateHTPDICODChange
    end
    object SQLTemplateHistoricoPadraoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'HistoricoPadraoCalcField'
      Visible = False
      Size = 100
      Calculated = True
    end
    object SQLTemplatePLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplatePlanodeContasDebitoCalcField: TStringField
      FieldKind = fkCalculated
      FieldName = 'PlanodeContasDebitoCalcField'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
    end
    object SQLTemplateCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLTemplateBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLTemplateCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLTemplateALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLTemplatePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLTemplateFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      Origin = 'DB.CONTASRECEBER.COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCDENVIOCOBRANCA: TDateTimeField
      FieldName = 'CTRCDENVIOCOBRANCA'
      Origin = 'DB.CONTASRECEBER.CTRCDENVIOCOBRANCA'
    end
    object SQLTemplateAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCTRCCTEMREGRECEBER: TStringField
      FieldName = 'CTRCCTEMREGRECEBER'
      Origin = 'DB.CONTASRECEBER.CTRCCTEMREGRECEBER'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCONTA13ID: TStringField
      FieldName = 'CONTA13ID'
      Origin = 'DB.CONTASRECEBER.CONTA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCTRCA13CTRCAIDCHQ: TStringField
      FieldName = 'CTRCA13CTRCAIDCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA13CTRCAIDCHQ'
      Size = 13
    end
    object SQLTemplateCTRCCEMITIDOBOLETO: TStringField
      FieldName = 'CTRCCEMITIDOBOLETO'
      Origin = 'DB.CONTASRECEBER.CTRCCEMITIDOBOLETO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCTRCA2MESCOMP: TStringField
      FieldName = 'CTRCA2MESCOMP'
      Origin = 'DB.CONTASRECEBER.CTRCA2MESCOMP'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateCTRCA4ANOCOMP: TStringField
      FieldName = 'CTRCA4ANOCOMP'
      Origin = 'DB.CONTASRECEBER.CTRCA4ANOCOMP'
      FixedChar = True
      Size = 4
    end
    object SQLTemplateCTRCA15NOSSONUMERO: TStringField
      DisplayLabel = 'Nosso Numero Banco'
      DisplayWidth = 17
      FieldName = 'CTRCA15NOSSONUMERO'
      Origin = 'DB.CONTASRECEBER.CTRCA15NOSSONUMERO'
      Size = 17
    end
    object SQLTemplateLOTEREMESSABANCO: TIntegerField
      FieldName = 'LOTEREMESSABANCO'
      Origin = 'DB.CONTASRECEBER.LOTEREMESSABANCO'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update CONTASRECEBER'
      'set'
      '  CTRCA13ID = :CTRCA13ID,'
      '  EMPRICOD = :EMPRICOD,'
      '  TERMICOD = :TERMICOD,'
      '  CTRCICOD = :CTRCICOD,'
      '  CLIEA13ID = :CLIEA13ID,'
      '  CTRCCSTATUS = :CTRCCSTATUS,'
      '  CTRCINROPARC = :CTRCINROPARC,'
      '  CTRCDVENC = :CTRCDVENC,'
      '  CTRCN2VLR = :CTRCN2VLR,'
      '  CTRCN2DESCFIN = :CTRCN2DESCFIN,'
      '  NUMEICOD = :NUMEICOD,'
      '  PORTICOD = :PORTICOD,'
      '  CTRCN2TXJURO = :CTRCN2TXJURO,'
      '  CTRCN2TXMULTA = :CTRCN2TXMULTA,'
      '  CTRCA5TIPOPADRAO = :CTRCA5TIPOPADRAO,'
      '  CTRCDULTREC = :CTRCDULTREC,'
      '  CTRCN2TOTREC = :CTRCN2TOTREC,'
      '  CTRCN2TOTJUROREC = :CTRCN2TOTJUROREC,'
      '  CTRCN2TOTMULTAREC = :CTRCN2TOTMULTAREC,'
      '  CTRCN2TOTDESCREC = :CTRCN2TOTDESCREC,'
      '  CTRCN2TOTMULTACOBR = :CTRCN2TOTMULTACOBR,'
      '  EMPRICODULTREC = :EMPRICODULTREC,'
      '  CUPOA13ID = :CUPOA13ID,'
      '  TPDCICOD = :TPDCICOD,'
      '  PLCTA15COD = :PLCTA15COD,'
      '  CTRCA30NRODUPLICBANCO = :CTRCA30NRODUPLICBANCO,'
      '  NOFIA13ID = :NOFIA13ID,'
      '  CTRCDEMIS = :CTRCDEMIS,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  CTRCDREABILSPC = :CTRCDREABILSPC,'
      '  BANCA5CODCHQ = :BANCA5CODCHQ,'
      '  CTRCA10AGENCIACHQ = :CTRCA10AGENCIACHQ,'
      '  CTRCA15CONTACHQ = :CTRCA15CONTACHQ,'
      '  CTRCA15NROCHQ = :CTRCA15NROCHQ,'
      '  CTRCA60TITULARCHQ = :CTRCA60TITULARCHQ,'
      '  CTRCA20CGCCPFCHQ = :CTRCA20CGCCPFCHQ,'
      '  CTRCDDEPOSCHQ = :CTRCDDEPOSCHQ,'
      '  ALINICOD = :ALINICOD,'
      '  PDVDA13ID = :PDVDA13ID,'
      '  CTRCDESTORNO = :CTRCDESTORNO,'
      '  FRETA13ID = :FRETA13ID,'
      '  CTRCCTEMREGRECEBER = :CTRCCTEMREGRECEBER,'
      '  COBRA13ID = :COBRA13ID,'
      '  CTRCDENVIOCOBRANCA = :CTRCDENVIOCOBRANCA,'
      '  CTRCA254HIST = :CTRCA254HIST,'
      '  DUPLA13ID = :DUPLA13ID,'
      '  HTPDICOD = :HTPDICOD,'
      '  PLCTA15CODDEBITO = :PLCTA15CODDEBITO'
      'where'
      '  CTRCA13ID = :OLD_CTRCA13ID and'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  CTRCICOD = :OLD_CTRCICOD and'
      '  CLIEA13ID = :OLD_CLIEA13ID and'
      '  CTRCCSTATUS = :OLD_CTRCCSTATUS and'
      '  CTRCINROPARC = :OLD_CTRCINROPARC and'
      '  CTRCDVENC = :OLD_CTRCDVENC and'
      '  CTRCN2VLR = :OLD_CTRCN2VLR and'
      '  CTRCN2DESCFIN = :OLD_CTRCN2DESCFIN and'
      '  NUMEICOD = :OLD_NUMEICOD and'
      '  PORTICOD = :OLD_PORTICOD and'
      '  CTRCN2TXJURO = :OLD_CTRCN2TXJURO and'
      '  CTRCN2TXMULTA = :OLD_CTRCN2TXMULTA and'
      '  CTRCA5TIPOPADRAO = :OLD_CTRCA5TIPOPADRAO and'
      '  CTRCDULTREC = :OLD_CTRCDULTREC and'
      '  CTRCN2TOTREC = :OLD_CTRCN2TOTREC and'
      '  CTRCN2TOTJUROREC = :OLD_CTRCN2TOTJUROREC and'
      '  CTRCN2TOTMULTAREC = :OLD_CTRCN2TOTMULTAREC and'
      '  CTRCN2TOTDESCREC = :OLD_CTRCN2TOTDESCREC and'
      '  CTRCN2TOTMULTACOBR = :OLD_CTRCN2TOTMULTACOBR and'
      '  EMPRICODULTREC = :OLD_EMPRICODULTREC and'
      '  CUPOA13ID = :OLD_CUPOA13ID and'
      '  TPDCICOD = :OLD_TPDCICOD and'
      '  PLCTA15COD = :OLD_PLCTA15COD and'
      '  CTRCA30NRODUPLICBANCO = :OLD_CTRCA30NRODUPLICBANCO and'
      '  NOFIA13ID = :OLD_NOFIA13ID and'
      '  CTRCDEMIS = :OLD_CTRCDEMIS and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO and'
      '  CTRCDREABILSPC = :OLD_CTRCDREABILSPC and'
      '  BANCA5CODCHQ = :OLD_BANCA5CODCHQ and'
      '  CTRCA10AGENCIACHQ = :OLD_CTRCA10AGENCIACHQ and'
      '  CTRCA15CONTACHQ = :OLD_CTRCA15CONTACHQ and'
      '  CTRCA15NROCHQ = :OLD_CTRCA15NROCHQ and'
      '  CTRCA60TITULARCHQ = :OLD_CTRCA60TITULARCHQ and'
      '  CTRCA20CGCCPFCHQ = :OLD_CTRCA20CGCCPFCHQ and'
      '  CTRCDDEPOSCHQ = :OLD_CTRCDDEPOSCHQ and'
      '  ALINICOD = :OLD_ALINICOD and'
      '  PDVDA13ID = :OLD_PDVDA13ID and'
      '  CTRCDESTORNO = :OLD_CTRCDESTORNO and'
      '  FRETA13ID = :OLD_FRETA13ID and'
      '  CTRCCTEMREGRECEBER = :OLD_CTRCCTEMREGRECEBER and'
      '  COBRA13ID = :OLD_COBRA13ID and'
      '  CTRCDENVIOCOBRANCA = :OLD_CTRCDENVIOCOBRANCA and'
      '  CTRCA254HIST = :OLD_CTRCA254HIST and'
      '  DUPLA13ID = :OLD_DUPLA13ID and'
      '  HTPDICOD = :OLD_HTPDICOD and'
      '  PLCTA15CODDEBITO = :OLD_PLCTA15CODDEBITO')
    InsertSQL.Strings = (
      'insert into CONTASRECEBER'
      
        '  (CTRCA13ID, EMPRICOD, TERMICOD, CTRCICOD, CLIEA13ID, CTRCCSTAT' +
        'US, CTRCINROPARC, '
      
        '   CTRCDVENC, CTRCN2VLR, CTRCN2DESCFIN, NUMEICOD, PORTICOD, CTRC' +
        'N2TXJURO, '
      
        '   CTRCN2TXMULTA, CTRCA5TIPOPADRAO, CTRCDULTREC, CTRCN2TOTREC, C' +
        'TRCN2TOTJUROREC, '
      
        '   CTRCN2TOTMULTAREC, CTRCN2TOTDESCREC, CTRCN2TOTMULTACOBR, EMPR' +
        'ICODULTREC, '
      
        '   CUPOA13ID, TPDCICOD, PLCTA15COD, CTRCA30NRODUPLICBANCO, NOFIA' +
        '13ID, CTRCDEMIS, '
      
        '   PENDENTE, REGISTRO, CTRCDREABILSPC, BANCA5CODCHQ, CTRCA10AGEN' +
        'CIACHQ, '
      
        '   CTRCA15CONTACHQ, CTRCA15NROCHQ, CTRCA60TITULARCHQ, CTRCA20CGC' +
        'CPFCHQ, '
      
        '   CTRCDDEPOSCHQ, ALINICOD, PDVDA13ID, CTRCDESTORNO, FRETA13ID, ' +
        'CTRCCTEMREGRECEBER, '
      
        '   COBRA13ID, CTRCDENVIOCOBRANCA, CTRCA254HIST, DUPLA13ID, HTPDI' +
        'COD, PLCTA15CODDEBITO)'
      'values'
      
        '  (:CTRCA13ID, :EMPRICOD, :TERMICOD, :CTRCICOD, :CLIEA13ID, :CTR' +
        'CCSTATUS, '
      
        '   :CTRCINROPARC, :CTRCDVENC, :CTRCN2VLR, :CTRCN2DESCFIN, :NUMEI' +
        'COD, :PORTICOD, '
      
        '   :CTRCN2TXJURO, :CTRCN2TXMULTA, :CTRCA5TIPOPADRAO, :CTRCDULTRE' +
        'C, :CTRCN2TOTREC, '
      
        '   :CTRCN2TOTJUROREC, :CTRCN2TOTMULTAREC, :CTRCN2TOTDESCREC, :CT' +
        'RCN2TOTMULTACOBR, '
      
        '   :EMPRICODULTREC, :CUPOA13ID, :TPDCICOD, :PLCTA15COD, :CTRCA30' +
        'NRODUPLICBANCO, '
      
        '   :NOFIA13ID, :CTRCDEMIS, :PENDENTE, :REGISTRO, :CTRCDREABILSPC' +
        ', :BANCA5CODCHQ, '
      
        '   :CTRCA10AGENCIACHQ, :CTRCA15CONTACHQ, :CTRCA15NROCHQ, :CTRCA6' +
        '0TITULARCHQ, '
      
        '   :CTRCA20CGCCPFCHQ, :CTRCDDEPOSCHQ, :ALINICOD, :PDVDA13ID, :CT' +
        'RCDESTORNO, '
      
        '   :FRETA13ID, :CTRCCTEMREGRECEBER, :COBRA13ID, :CTRCDENVIOCOBRA' +
        'NCA, :CTRCA254HIST, '
      '   :DUPLA13ID, :HTPDICOD, :PLCTA15CODDEBITO)')
    DeleteSQL.Strings = (
      'delete from CONTASRECEBER'
      'where'
      '  CTRCA13ID = :OLD_CTRCA13ID and'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  CTRCICOD = :OLD_CTRCICOD and'
      '  CLIEA13ID = :OLD_CLIEA13ID and'
      '  CTRCCSTATUS = :OLD_CTRCCSTATUS and'
      '  CTRCINROPARC = :OLD_CTRCINROPARC and'
      '  CTRCDVENC = :OLD_CTRCDVENC and'
      '  CTRCN2VLR = :OLD_CTRCN2VLR and'
      '  CTRCN2DESCFIN = :OLD_CTRCN2DESCFIN and'
      '  NUMEICOD = :OLD_NUMEICOD and'
      '  PORTICOD = :OLD_PORTICOD and'
      '  CTRCN2TXJURO = :OLD_CTRCN2TXJURO and'
      '  CTRCN2TXMULTA = :OLD_CTRCN2TXMULTA and'
      '  CTRCA5TIPOPADRAO = :OLD_CTRCA5TIPOPADRAO and'
      '  CTRCDULTREC = :OLD_CTRCDULTREC and'
      '  CTRCN2TOTREC = :OLD_CTRCN2TOTREC and'
      '  CTRCN2TOTJUROREC = :OLD_CTRCN2TOTJUROREC and'
      '  CTRCN2TOTMULTAREC = :OLD_CTRCN2TOTMULTAREC and'
      '  CTRCN2TOTDESCREC = :OLD_CTRCN2TOTDESCREC and'
      '  CTRCN2TOTMULTACOBR = :OLD_CTRCN2TOTMULTACOBR and'
      '  EMPRICODULTREC = :OLD_EMPRICODULTREC and'
      '  CUPOA13ID = :OLD_CUPOA13ID and'
      '  TPDCICOD = :OLD_TPDCICOD and'
      '  PLCTA15COD = :OLD_PLCTA15COD and'
      '  CTRCA30NRODUPLICBANCO = :OLD_CTRCA30NRODUPLICBANCO and'
      '  NOFIA13ID = :OLD_NOFIA13ID and'
      '  CTRCDEMIS = :OLD_CTRCDEMIS and'
      '  PENDENTE = :OLD_PENDENTE and'
      '  REGISTRO = :OLD_REGISTRO and'
      '  CTRCDREABILSPC = :OLD_CTRCDREABILSPC and'
      '  BANCA5CODCHQ = :OLD_BANCA5CODCHQ and'
      '  CTRCA10AGENCIACHQ = :OLD_CTRCA10AGENCIACHQ and'
      '  CTRCA15CONTACHQ = :OLD_CTRCA15CONTACHQ and'
      '  CTRCA15NROCHQ = :OLD_CTRCA15NROCHQ and'
      '  CTRCA60TITULARCHQ = :OLD_CTRCA60TITULARCHQ and'
      '  CTRCA20CGCCPFCHQ = :OLD_CTRCA20CGCCPFCHQ and'
      '  CTRCDDEPOSCHQ = :OLD_CTRCDDEPOSCHQ and'
      '  ALINICOD = :OLD_ALINICOD and'
      '  PDVDA13ID = :OLD_PDVDA13ID and'
      '  CTRCDESTORNO = :OLD_CTRCDESTORNO and'
      '  FRETA13ID = :OLD_FRETA13ID and'
      '  CTRCCTEMREGRECEBER = :OLD_CTRCCTEMREGRECEBER and'
      '  COBRA13ID = :OLD_COBRA13ID and'
      '  CTRCDENVIOCOBRANCA = :OLD_CTRCDENVIOCOBRANCA and'
      '  CTRCA254HIST = :OLD_CTRCA254HIST and'
      '  DUPLA13ID = :OLD_DUPLA13ID and'
      '  HTPDICOD = :OLD_HTPDICOD and'
      '  PLCTA15CODDEBITO = :OLD_PLCTA15CODDEBITO')
  end
  object SQLRecebimento: TQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    RequestLive = True
    SQL.Strings = (
      'select '
      '*'
      'from '
      'RECEBIMENTO'
      'where CTRCA13ID = :CTRCA13ID'
      'order by'
      'RECEDRECTO')
    Left = 438
    Top = 1
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
      DisplayLabel = 'Desconto'
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      DisplayLabel = 'Empresa Recto.'
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoSaldoCalcField: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SaldoCalcField'
      Calculated = True
    end
    object SQLRecebimentoEmpresaLookup: TStringField
      DisplayLabel = 'Empresa Recebimento'
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICODREC'
      Size = 60
      Lookup = True
    end
    object SQLRecebimentoRECEDDATAMOV: TDateTimeField
      DisplayLabel = 'Data Mov.'
      FieldName = 'RECEDDATAMOV'
      Origin = 'DB.RECEBIMENTO.RECEDDATAMOV'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLRecebimentoCTRCA13IDCREDITO: TStringField
      FieldName = 'CTRCA13IDCREDITO'
      Origin = 'DB.RECEBIMENTO.CTRCA13IDCREDITO'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECEBIMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.RECEBIMENTO.TPLQICOD'
    end
    object SQLRecebimentoNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.RECEBIMENTO.NUMEICOD'
    end
    object SQLRecebimentoTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
      Origin = 'DB.RECEBIMENTO.TERMICODREC'
    end
    object SQLRecebimentoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.RECEBIMENTO.USUAICOD'
    end
  end
  object DSSQLRecebimento: TDataSource
    AutoEdit = False
    DataSet = SQLRecebimento
    Left = 466
    Top = 1
  end
  object SQLEspelhoNovoLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONTASRECEBER'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 520
    Top = 1
    object SQLEspelhoNovoLancCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLEspelhoNovoLancTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLEspelhoNovoLancCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLEspelhoNovoLancCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLEspelhoNovoLancCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLEspelhoNovoLancCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLEspelhoNovoLancCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLEspelhoNovoLancNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLEspelhoNovoLancPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLEspelhoNovoLancCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLEspelhoNovoLancCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
    end
    object SQLEspelhoNovoLancCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLEspelhoNovoLancCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLEspelhoNovoLancPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLEspelhoNovoLancCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLEspelhoNovoLancCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLEspelhoNovoLancCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLEspelhoNovoLancHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLEspelhoNovoLancPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLEspelhoNovoLancAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEspelhoNovoLancCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLEspelhoNovoLancDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT CLIEA13ID, CLIEA60RAZAOSOC FROM CLIENTE'
      'ORDER BY CLIEA60RAZAOSOC ')
    Macros = <>
    Left = 48
    Top = 168
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 20
    Top = 168
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT TPDCICOD, TPDCA60DESCR FROM TIPODOCUMENTO'
      'ORDER BY TPDCA60DESCR')
    Macros = <>
    Left = 48
    Top = 196
  end
  object DSSQLTipoDocumento: TDataSource
    DataSet = SQLTipoDocumento
    Left = 20
    Top = 196
  end
  object SQLConta: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANODECONTAS Where '
      'PLCTCANALSINT = '#39'A'#39
      'and'
      'PLCTCTIPOSALDO = "C"')
    Macros = <>
    Left = 48
    Top = 224
  end
  object DSSQLConta: TDataSource
    DataSet = SQLConta
    Left = 20
    Top = 224
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PORTICOD, PORTA60DESCR FROM PORTADOR'
      'ORDER BY PORTA60DESCR')
    Macros = <>
    Left = 48
    Top = 252
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 20
    Top = 252
  end
  object SQLContasReceber: TRxQuery
    Tag = 3
    BeforePost = SQLContasReceberBeforePost
    OnPostError = SQLContasReceberPostError
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM CONTASRECEBER WHERE CTRCA13ID IS NULL')
    Macros = <>
    Left = 241
    Top = 29
    object SQLContasReceberCTRCA13ID: TStringField
      Tag = 2
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
      Tag = 1
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
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
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
    object SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
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
    object SQLContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
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
    object SQLContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLContasReceberFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      Origin = 'DB.CONTASRECEBER.COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField
      FieldName = 'CTRCDENVIOCOBRANCA'
      Origin = 'DB.CONTASRECEBER.CTRCDENVIOCOBRANCA'
    end
    object SQLContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      Origin = 'DB.CONTASRECEBER.CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberDUPLA13ID: TStringField
      FieldName = 'DUPLA13ID'
      Origin = 'DB.CONTASRECEBER.DUPLA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
      Origin = 'DB.CONTASRECEBER.HTPDICOD'
    end
    object SQLContasReceberPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.CONTASRECEBER.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.CONTASRECEBER.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      Origin = 'DB.CONTASRECEBER.CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 269
    Top = 29
  end
  object DSSQLAvalista: TDataSource
    DataSet = SQLAvalista
    Left = 20
    Top = 280
  end
  object SQLAvalista: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'AVALA13ID,'
      'AVALA60RAZAOSOC,'
      'AVALA60CIDRES'
      'FROM'
      'AVALISTA'
      'ORDER BY'
      'AVALA60RAZAOSOC')
    Macros = <>
    Left = 48
    Top = 280
    object SQLAvalistaAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      Origin = 'DB.AVALISTA.AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLAvalistaAVALA60RAZAOSOC: TStringField
      FieldName = 'AVALA60RAZAOSOC'
      Origin = 'DB.AVALISTA.AVALA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLAvalistaAVALA60CIDRES: TStringField
      FieldName = 'AVALA60CIDRES'
      Origin = 'DB.AVALISTA.AVALA60CIDRES'
      FixedChar = True
      Size = 60
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'EMPRICOD,'
      'EMPRA60RAZAOSOC'
      'FROM'
      'EMPRESA'
      'ORDER BY'
      'EMPRA60RAZAOSOC')
    Macros = <>
    Left = 48
    Top = 308
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
    Left = 20
    Top = 308
  end
  object ppPromissoria: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 632
    Top = 1
    Version = '10.06'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 76465
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 66411
        mmLeft = 4763
        mmTop = 4233
        mmWidth = 179652
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 10319
        mmLeft = 114829
        mmTop = 5556
        mmWidth = 67733
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NOTA PROMISS'#211'RIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 7451
        mmLeft = 7673
        mmTop = 5821
        mmWidth = 61807
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 22
        Font.Style = []
        Transparent = True
        mmHeight = 9260
        mmLeft = 103188
        mmTop = 5821
        mmWidth = 8996
        BandType = 0
      end
      object ppVencimento: TppLabel
        UserName = 'Vencimento'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 7673
        mmTop = 15346
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Pagarei por esta unica via de NOTA PROMISSORIA a empresa abaixo ' +
          'qualificada ou a sua ordem em moeda corrente, e por qualquer atr' +
          'aso que ocorrer pagarei mais o juros de mora.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 10054
        mmLeft = 7673
        mmTop = 20638
        mmWidth = 175419
        BandType = 0
      end
      object ppNomeCNPJEmpresa: TppLabel
        UserName = 'NomeCNPJEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SUPERBOM  CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 7673
        mmTop = 30956
        mmWidth = 34660
        BandType = 0
      end
      object ppCidadeEmpresa: TppLabel
        UserName = 'CidadeEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 78581
        mmTop = 40217
        mmWidth = 12171
        BandType = 0
      end
      object ppNomeCliente: TppLabel
        UserName = 'CidadeEmpresa1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nome do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 79375
        mmTop = 59267
        mmWidth = 104511
        BandType = 0
      end
      object ppCPFCliente: TppLabel
        UserName = 'CPFCliente'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CPF do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 79375
        mmTop = 64294
        mmWidth = 104511
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 78317
        mmTop = 58738
        mmWidth = 106627
        BandType = 0
      end
      object ppLogo: TppImage
        UserName = 'Logo'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 31485
        mmLeft = 7938
        mmTop = 37571
        mmWidth = 37042
        BandType = 0
      end
      object ppValor: TppLabel
        UserName = 'Valor'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 9260
        mmLeft = 116681
        mmTop = 6085
        mmWidth = 64294
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object ppRecibo: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 669
    Top = 1
    Version = '10.06'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 166952
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape1'
        mmHeight = 66940
        mmLeft = 4763
        mmTop = 4233
        mmWidth = 179652
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape2'
        mmHeight = 10319
        mmLeft = 129646
        mmTop = 5556
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RECIBO DE PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 7451
        mmLeft = 43392
        mmTop = 5821
        mmWidth = 74041
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 22
        Font.Style = []
        Transparent = True
        mmHeight = 9260
        mmLeft = 119327
        mmTop = 5821
        mmWidth = 8996
        BandType = 0
      end
      object ppVencimentoRecibo: TppLabel
        UserName = 'VencimentoRecibo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 7673
        mmTop = 18785
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recebi do cliente abaixo qualificado a quantia  acima citada!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4995
        mmLeft = 7673
        mmTop = 24077
        mmWidth = 102913
        BandType = 0
      end
      object ppNomeCNPJEmpresaRecibo: TppLabel
        UserName = 'NomeCNPJEmpresaRecibo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DADOS DA EMPRESA  CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 125942
        mmTop = 60325
        mmWidth = 53890
        BandType = 0
      end
      object ppCidadeEmpresaRecibo: TppLabel
        UserName = 'CidadeEmpresaRecibo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 167937
        mmTop = 43127
        mmWidth = 11980
        BandType = 0
      end
      object ppNomeClienteRecibo: TppLabel
        UserName = 'NomeClienteRecibo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nome do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 7673
        mmTop = 29898
        mmWidth = 102923
        BandType = 0
      end
      object ppCPFClienteRecibo: TppLabel
        UserName = 'CPFClienteRecibo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CPF do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 8202
        mmTop = 34925
        mmWidth = 26120
        BandType = 0
      end
      object ppLogoRecibo: TppImage
        UserName = 'LogoRecibo'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 13229
        mmLeft = 6085
        mmTop = 5027
        mmWidth = 31750
        BandType = 0
      end
      object ppValorRecibo: TppLabel
        UserName = 'ValorRecibo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 9260
        mmLeft = 130969
        mmTop = 6085
        mmWidth = 50536
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 66411
        mmLeft = 4763
        mmTop = 86519
        mmWidth = 179652
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 10319
        mmLeft = 129911
        mmTop = 87842
        mmWidth = 53180
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RECIBO DE PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 7451
        mmLeft = 42333
        mmTop = 88106
        mmWidth = 74041
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 22
        Font.Style = []
        Transparent = True
        mmHeight = 9260
        mmLeft = 118269
        mmTop = 88106
        mmWidth = 8996
        BandType = 0
      end
      object ppVencimentoRecibo1: TppLabel
        UserName = 'VencimentoRecibo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 7673
        mmTop = 101071
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recebi do cliente abaixo qualificado a quantia  acima citada!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4995
        mmLeft = 7673
        mmTop = 106363
        mmWidth = 102913
        BandType = 0
      end
      object ppNomeCNPJEmpresaRecibo1: TppLabel
        UserName = 'NomeCNPJEmpresaRecibo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DADOS DA EMPRESA  CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 127529
        mmTop = 142611
        mmWidth = 53890
        BandType = 0
      end
      object ppCidadeEmpresaRecibo1: TppLabel
        UserName = 'CidadeEmpresaRecibo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 168275
        mmTop = 123296
        mmWidth = 11980
        BandType = 0
      end
      object ppNomeClienteRecibo1: TppLabel
        UserName = 'NomeClienteRecibo1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nome do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 7673
        mmTop = 112184
        mmWidth = 102923
        BandType = 0
      end
      object ppCPFClienteRecibo1: TppLabel
        UserName = 'CPFClienteRecibo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CPF do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 8202
        mmTop = 117211
        mmWidth = 26120
        BandType = 0
      end
      object ppLogoRecibo1: TppImage
        UserName = 'LogoRecibo1'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        mmHeight = 13228
        mmLeft = 5821
        mmTop = 87313
        mmWidth = 31750
        BandType = 0
      end
      object ppValorRecibo1: TppLabel
        UserName = 'ValorRecibo1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 9260
        mmLeft = 131763
        mmTop = 88371
        mmWidth = 50536
        BandType = 0
      end
      object ppHistoricoRecibo: TppMemo
        UserName = 'HistoricoRecibo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 23813
        mmLeft = 7673
        mmTop = 45773
        mmWidth = 97367
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppHistoricoRecibo1: TppMemo
        UserName = 'HistoricoRecibo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 23019
        mmLeft = 7673
        mmTop = 128323
        mmWidth = 97367
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMesReferencia: TppLabel
        UserName = 'ppMesReferencia'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 8202
        mmTop = 40217
        mmWidth = 26120
        BandType = 0
      end
      object ppMesReferencia1: TppLabel
        UserName = 'ppMesReferencia1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 8467
        mmTop = 122502
        mmWidth = 31877
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object FormStorage: TFormStorage
    StoredProps.Strings = (
      'ckImprimeMesReferencia.Checked')
    StoredValues = <>
    Left = 175
    Top = 1
  end
end
