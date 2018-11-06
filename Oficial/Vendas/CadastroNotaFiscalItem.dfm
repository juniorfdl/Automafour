inherited FormCadastroNotaFiscalItem: TFormCadastroNotaFiscalItem
  Left = 312
  Top = 60
  Caption = 'Itens da Nota Fiscal'
  ClientHeight = 580
  ClientWidth = 999
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 999
    Height = 580
    inherited PanelCabecalho: TPanel
      Width = 997
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 997
        inherited Panel1: TPanel
          Width = 995
          inherited PanelNavigator: TPanel
            Width = 995
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 995
            end
          end
          inherited PanelLeft: TPanel
            Left = 538
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 997
      Height = 506
      inherited PanelBarra: TPanel
        Height = 506
        inherited Button3: TRxSpeedButton
          Tag = 3
          Caption = '&3  Importa'#231#227'o'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 867
        Height = 506
        inherited Panel5: TPanel
          Width = 867
          Height = 506
          inherited PagePrincipal: TPageControl
            Top = 180
            Width = 867
            Height = 326
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 859
                Height = 253
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NFITIITEM'
                    Title.Caption = 'Item'
                    Width = 36
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Width = 50
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITICST'
                    Title.Caption = 'CST'
                    Width = 26
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CFOPA5CODAUX'
                    Title.Caption = 'CFOP'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ProdutoLookUp'
                    Width = 244
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'UnidadeLookup'
                    Title.Caption = 'Unidade'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRUNIT'
                    Title.Caption = 'Vl. Unit'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN3QUANT'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TotalItemCalc'
                    Title.Caption = 'Total Item'
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCDESC'
                    Title.Caption = '% Desc'
                    Width = 48
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRDESC'
                    Title.Caption = 'Vl. Desc'
                    Width = 48
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCICMS'
                    Width = 47
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2BASEICMS'
                    Title.Caption = 'Base ICMS'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRICMS'
                    Title.Caption = 'Vl. ICMS'
                    Width = 52
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCSUBS'
                    Title.Caption = '% ST'
                    Width = 32
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2BASESUBS'
                    Title.Caption = 'Base ST'
                    Width = 50
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRSUBS'
                    Title.Caption = 'Vl. ST'
                    Width = 53
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCIPI'
                    Width = 40
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRIPI'
                    Title.Caption = 'Vl. IPI'
                    Width = 55
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCISSQN'
                    Width = 55
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2VLRISSQN'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NFITN2PERCCOMIS'
                    Width = 75
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 859
                inherited PanelBetween: TPanel
                  Width = 465
                  inherited AdvPanel1: TAdvPanel
                    Width = 465
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 465
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 465
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
                Left = 13
                Top = 152
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label10: TLabel
                Left = 6
                Top = 5
                Width = 27
                Height = 13
                Caption = 'Qtde'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 290
                Top = 5
                Width = 63
                Height = 13
                Caption = 'Vlr Unit'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 365
                Top = 6
                Width = 43
                Height = 13
                Caption = '% Desc'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 416
                Top = 6
                Width = 45
                Height = 13
                Caption = 'Vlr Desc'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label24: TLabel
                Left = 578
                Top = 82
                Width = 70
                Height = 13
                Caption = '% Comiss'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object Label25: TLabel
                Left = 1
                Top = 44
                Width = 173
                Height = 13
                Caption = 'Observa'#231#245'es Complementares'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label27: TLabel
                Left = 543
                Top = 5
                Width = 60
                Height = 13
                Caption = 'Total Item'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object LabelLote: TLabel
                Left = 377
                Top = 81
                Width = 50
                Height = 13
                Caption = 'Nro. Lote'
                FocusControl = DBEditLote
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label50: TLabel
                Left = 1
                Top = 83
                Width = 313
                Height = 13
                Caption = 'CFOP Complementar para os casos de exig'#234'ncias fiscais'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label52: TLabel
                Left = 487
                Top = 6
                Width = 52
                Height = 13
                Caption = 'CST Icms'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label26: TLabel
                Left = 99
                Top = 5
                Width = 68
                Height = 13
                Caption = 'Qtde Pedido'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label57: TLabel
                Left = 198
                Top = 5
                Width = 46
                Height = 13
                Caption = 'Unidade'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit9: TEvDBNumEdit
                Left = 3
                Top = 19
                Width = 90
                Height = 21
                AutoHideCalculator = False
                DataField = 'NFITN3QUANT'
                DataSource = DSTemplate
                Decimals = 3
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
                TabOrder = 0
              end
              object DBEdit10: TEvDBNumEdit
                Left = 287
                Top = 19
                Width = 73
                Height = 21
                AutoHideCalculator = False
                DataField = 'NFITN2VLRUNIT'
                DataSource = DSTemplate
                Decimals = 3
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
              object DBEdit12: TEvDBNumEdit
                Left = 363
                Top = 19
                Width = 46
                Height = 21
                AutoHideCalculator = False
                DataField = 'NFITN2PERCDESC'
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
                TabOrder = 5
              end
              object DBEdit13: TEvDBNumEdit
                Left = 412
                Top = 19
                Width = 70
                Height = 21
                AutoHideCalculator = False
                DataField = 'NFITN2VLRDESC'
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
                TabOrder = 6
              end
              object DBEdit26: TEvDBNumEdit
                Left = 96
                Top = 19
                Width = 90
                Height = 21
                TabStop = False
                AutoHideCalculator = False
                Color = 12572888
                DataField = 'NFITN3TOTVEND'
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
                ReadOnly = True
                TabOrder = 2
              end
              object EvDBNumComissao: TEvDBNumEdit
                Left = 578
                Top = 95
                Width = 70
                Height = 21
                AutoHideCalculator = False
                DataField = 'NFITN2PERCCOMIS'
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
                TabOrder = 12
                Visible = False
              end
              object DBEdit3: TDBEdit
                Left = 1
                Top = 58
                Width = 648
                Height = 21
                DataField = 'NFITA254OBS'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object GroupBox1: TGroupBox
                Left = 1
                Top = 120
                Width = 647
                Height = 142
                Caption = 'Impostos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 13
                object Label14: TLabel
                  Left = 10
                  Top = 16
                  Width = 81
                  Height = 13
                  Caption = '% ICM Normal'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 199
                  Top = 16
                  Width = 59
                  Height = 13
                  Caption = 'Base ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 293
                  Top = 16
                  Width = 61
                  Height = 13
                  Caption = 'Valor ICMS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 14
                  Top = 61
                  Width = 55
                  Height = 13
                  Caption = '% ICM ST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label18: TLabel
                  Left = 103
                  Top = 61
                  Width = 69
                  Height = 13
                  Caption = 'Base ICM ST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label19: TLabel
                  Left = 198
                  Top = 61
                  Width = 71
                  Height = 13
                  Caption = 'Valor ICM ST'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 387
                  Top = 16
                  Width = 33
                  Height = 13
                  Caption = '% IPI'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label21: TLabel
                  Left = 468
                  Top = 16
                  Width = 49
                  Height = 13
                  Caption = 'Valor IPI'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label22: TLabel
                  Left = 294
                  Top = 61
                  Width = 50
                  Height = 13
                  Caption = '% ISSQN'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label23: TLabel
                  Left = 384
                  Top = 61
                  Width = 66
                  Height = 13
                  Caption = 'Valor ISSQN'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label33: TLabel
                  Left = 102
                  Top = 16
                  Width = 71
                  Height = 13
                  Caption = '% Red. Base'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label48: TLabel
                  Left = 467
                  Top = 61
                  Width = 48
                  Height = 13
                  Caption = 'R$ Frete'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label49: TLabel
                  Left = 561
                  Top = 16
                  Width = 72
                  Height = 13
                  Caption = 'Valor Seguro'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label51: TLabel
                  Left = 559
                  Top = 61
                  Width = 72
                  Height = 13
                  Caption = 'Outras Desp.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label58: TLabel
                  Left = 105
                  Top = 102
                  Width = 32
                  Height = 13
                  Caption = '% Pis'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label59: TLabel
                  Left = 199
                  Top = 102
                  Width = 48
                  Height = 13
                  Caption = 'Valor Pis'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label34: TLabel
                  Left = 14
                  Top = 102
                  Width = 40
                  Height = 13
                  Caption = 'CST Pis'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label60: TLabel
                  Left = 382
                  Top = 102
                  Width = 58
                  Height = 13
                  Caption = 'CST Cofins'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label61: TLabel
                  Left = 468
                  Top = 102
                  Width = 50
                  Height = 13
                  Caption = '% Cofins'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label62: TLabel
                  Left = 557
                  Top = 102
                  Width = 66
                  Height = 13
                  Caption = 'Valor Cofins'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit14: TEvDBNumEdit
                  Left = 7
                  Top = 30
                  Width = 87
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2PERCICMS'
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
                  TabOrder = 0
                end
                object DBEdit15: TEvDBNumEdit
                  Left = 194
                  Top = 30
                  Width = 90
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2BASEICMS'
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
                  TabOrder = 2
                end
                object DBEdit16: TEvDBNumEdit
                  Left = 287
                  Top = 30
                  Width = 90
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2VLRICMS'
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
                  TabOrder = 3
                end
                object DBEdit17: TEvDBNumEdit
                  Left = 7
                  Top = 74
                  Width = 87
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2PERCSUBS'
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
                object DBEdit18: TEvDBNumEdit
                  Left = 97
                  Top = 74
                  Width = 90
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2BASESUBS'
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
                  OnExit = DBEdit18Exit
                end
                object DBEdit19: TEvDBNumEdit
                  Left = 193
                  Top = 74
                  Width = 90
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2VLRSUBS'
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
                object DBEdit20: TEvDBNumEdit
                  Left = 380
                  Top = 30
                  Width = 79
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2PERCIPI'
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
                  TabOrder = 4
                end
                object DBEdit21: TEvDBNumEdit
                  Left = 462
                  Top = 30
                  Width = 90
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2VLRIPI'
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
                  TabOrder = 5
                end
                object DBEdit22: TEvDBNumEdit
                  Left = 286
                  Top = 74
                  Width = 90
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2PERCISSQN'
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
                  TabOrder = 10
                end
                object DBEdit23: TEvDBNumEdit
                  Left = 379
                  Top = 74
                  Width = 79
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2VLRISSQN'
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
                  TabOrder = 11
                end
                object EvDBNumEdit5: TEvDBNumEdit
                  Left = 97
                  Top = 30
                  Width = 91
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2PERCREDUCAO'
                  DataSource = DSTemplate
                  Decimals = 3
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
                  TabOrder = 1
                end
                object EvDBNumEdit6: TEvDBNumEdit
                  Left = 461
                  Top = 74
                  Width = 90
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2VLRFRETE'
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
                  TabOrder = 12
                end
                object EvDBNumEdit8: TEvDBNumEdit
                  Left = 557
                  Top = 30
                  Width = 85
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2SEGURO'
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
                object EvDBNumEdit9: TEvDBNumEdit
                  Left = 555
                  Top = 74
                  Width = 85
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NFITN2OUTRASDESP'
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
                  TabOrder = 13
                  OnExit = EvDBNumEdit9Exit
                end
                object EvDBNumEdit10: TEvDBNumEdit
                  Left = 99
                  Top = 115
                  Width = 88
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NOFIN3PERCPIS'
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
                  TabOrder = 14
                  OnExit = DBEdit18Exit
                end
                object EvDBNumEdit11: TEvDBNumEdit
                  Left = 193
                  Top = 115
                  Width = 90
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NOFIN3VLRPIS'
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
                  TabOrder = 15
                  OnExit = DBEdit18Exit
                end
                object EvDBNumEdit13: TEvDBNumEdit
                  Left = 463
                  Top = 115
                  Width = 85
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NOFIN3PERCCOFINS'
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
                  TabOrder = 16
                  OnExit = DBEdit18Exit
                end
                object EvDBNumEdit14: TEvDBNumEdit
                  Left = 551
                  Top = 115
                  Width = 90
                  Height = 21
                  AutoHideCalculator = False
                  DataField = 'NOFIN3VLRCOFINS'
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
                  TabOrder = 17
                  OnExit = DBEdit18Exit
                end
                object DBEdit24: TDBEdit
                  Left = 8
                  Top = 115
                  Width = 88
                  Height = 21
                  TabStop = False
                  BevelOuter = bvRaised
                  Ctl3D = True
                  DataField = 'NOFIA2CSTPIS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 18
                end
                object DBEdit40: TDBEdit
                  Left = 378
                  Top = 115
                  Width = 82
                  Height = 21
                  TabStop = False
                  BevelOuter = bvRaised
                  Ctl3D = True
                  DataField = 'NOFIA2CSTCOFINS'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 19
                end
              end
              object DBEdit27: TEvDBNumEdit
                Left = 543
                Top = 19
                Width = 84
                Height = 21
                TabStop = False
                AutoHideCalculator = False
                Color = 16249066
                Ctl3D = True
                DataField = 'TotalItemCalc'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
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
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 8
              end
              object DBEditLote: TDBEdit
                Left = 377
                Top = 95
                Width = 197
                Height = 21
                DataField = 'LOTEA30NRO'
                DataSource = DSTemplate
                TabOrder = 11
                OnExit = DBEditLoteExit
              end
              object ComboCFOP: TRxDBLookupCombo
                Left = 1
                Top = 96
                Width = 373
                Height = 20
                DropDownCount = 8
                DisplayAllFields = True
                Ctl3D = False
                DataField = 'CFOPA5CODAUX'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'CFOPA5COD'
                LookupDisplay = 'CFOPA5COD;CFOPA60DESCR'
                LookupSource = DSSQLCFOP
                ParentCtl3D = False
                TabOrder = 10
              end
              object BitBtn1: TBitBtn
                Left = 628
                Top = 18
                Width = 19
                Height = 21
                Hint = 
                  'Alterar valor total do produto'#13#10'Aten'#231#227'o... Utilize somente para ' +
                  'ajustes de centavos.'
                Caption = '...'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 14
                OnClick = BitBtn1Click
              end
              object edtValorFinal: TCurrencyEdit
                Left = 96
                Top = 19
                Width = 90
                Height = 21
                AutoSize = False
                DisplayFormat = ',0.00'
                TabOrder = 1
                Visible = False
                OnExit = edtValorFinalExit
              end
              object DBEdit31: TDBEdit
                Left = 485
                Top = 19
                Width = 55
                Height = 21
                BevelOuter = bvRaised
                Ctl3D = True
                DataField = 'NFITICST'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 7
              end
              object ComboUnidade: TRxDBLookupCombo
                Left = 189
                Top = 20
                Width = 96
                Height = 20
                DropDownCount = 8
                Ctl3D = True
                DataField = 'UNIDICOD'
                DataSource = DSTemplate
                DisplayEmpty = '...'
                LookupField = 'UNIDICOD'
                LookupDisplay = 'UNIDA15DESCR'
                LookupSource = dsSQLUnidade2
                ParentCtl3D = False
                TabOrder = 3
              end
            end
            object PaginaImportacao: TTabSheet
              ImageIndex = 2
              object Label29: TLabel
                Left = 12
                Top = 12
                Width = 13
                Height = 13
                Caption = 'DI'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label32: TLabel
                Left = 440
                Top = 92
                Width = 101
                Height = 13
                Caption = 'N'#186' Pedido Compra'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label35: TLabel
                Left = 576
                Top = 12
                Width = 14
                Height = 13
                Caption = 'UF'
                FocusControl = DBEdit25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label36: TLabel
                Left = 12
                Top = 52
                Width = 104
                Height = 13
                Caption = 'C'#243'digo Exportador'
                FocusControl = DBEdit28
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label37: TLabel
                Left = 12
                Top = 94
                Width = 101
                Height = 13
                Caption = 'C'#243'digo Fabricante'
                FocusControl = DBEdit29
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label38: TLabel
                Left = 252
                Top = 12
                Width = 110
                Height = 13
                Caption = 'Local Desembara'#231'o'
                FocusControl = DBEdit30
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label39: TLabel
                Left = 152
                Top = 12
                Width = 43
                Height = 13
                Caption = 'Data DI'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 336
                Top = 52
                Width = 94
                Height = 13
                Caption = 'Dt Desembara'#231'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label41: TLabel
                Left = 440
                Top = 52
                Width = 54
                Height = 13
                Caption = 'N'#186' Adi'#231#227'o'
                FocusControl = DBEdit33
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label42: TLabel
                Left = 336
                Top = 95
                Width = 87
                Height = 13
                Caption = 'R$ Desconto DI'
                FocusControl = DBEdit34
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label43: TLabel
                Left = 12
                Top = 452
                Width = 101
                Height = 13
                Caption = 'NFITN2DESCTOADIC'
                FocusControl = DBEdit35
              end
              object Label44: TLabel
                Left = 12
                Top = 496
                Width = 63
                Height = 13
                Caption = 'NFITINITENS'
              end
              object Label45: TLabel
                Left = 548
                Top = 55
                Width = 65
                Height = 13
                Caption = 'Seq. Adi'#231#227'o'
                FocusControl = DBEdit34
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label46: TLabel
                Left = 12
                Top = 137
                Width = 120
                Height = 13
                Caption = 'N'#186' Itens Ped. Compra'
                FocusControl = DBEdit36
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label53: TLabel
                Left = 168
                Top = 137
                Width = 118
                Height = 13
                Caption = 'R$ Base Calculo do II'
                FocusControl = DBEdit32
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label54: TLabel
                Left = 336
                Top = 136
                Width = 51
                Height = 13
                Caption = 'R$ da DA'
                FocusControl = DBEdit37
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label55: TLabel
                Left = 440
                Top = 136
                Width = 169
                Height = 13
                Caption = 'R$ do II (Imposto de Import.)'
                FocusControl = DBEdit38
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label56: TLabel
                Left = 12
                Top = 180
                Width = 37
                Height = 13
                Caption = 'R$ IOF'
                FocusControl = DBEdit39
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit7: TDBEdit
                Left = 12
                Top = 28
                Width = 134
                Height = 21
                DataField = 'NFITA10DIIMPORT'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit8: TDBEdit
                Left = 440
                Top = 108
                Width = 170
                Height = 21
                DataField = 'NFITA15PEDIDOCOMPRA'
                DataSource = DSTemplate
                TabOrder = 10
              end
              object DBEdit25: TDBEdit
                Left = 576
                Top = 28
                Width = 35
                Height = 21
                DataField = 'NFITA2UFDESEMBARACO'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit28: TDBEdit
                Left = 12
                Top = 68
                Width = 318
                Height = 21
                DataField = 'NFITA60CEXPORTADOR'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit29: TDBEdit
                Left = 12
                Top = 110
                Width = 317
                Height = 21
                DataField = 'NFITA60CFABRICANTE'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit30: TDBEdit
                Left = 252
                Top = 28
                Width = 321
                Height = 21
                DataField = 'NFITA60LOCALDESEMBARACO'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit33: TDBEdit
                Left = 440
                Top = 68
                Width = 99
                Height = 21
                DataField = 'NFITINADICAO'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit34: TDBEdit
                Left = 548
                Top = 68
                Width = 64
                Height = 21
                DataField = 'NFITINSEQADIC'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object DBEdit35: TDBEdit
                Left = 336
                Top = 110
                Width = 98
                Height = 21
                DataField = 'NFITN2DESCTOADIC'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit36: TDBEdit
                Left = 12
                Top = 153
                Width = 149
                Height = 21
                DataField = 'NFITINITENS'
                DataSource = DSTemplate
                TabOrder = 11
              end
              object DBDateEdit2: TDBDateEdit
                Left = 150
                Top = 27
                Width = 98
                Height = 21
                DataField = 'NFITDDATADI'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 1
              end
              object DBDateEdit3: TDBDateEdit
                Left = 333
                Top = 69
                Width = 101
                Height = 21
                DataField = 'NFITDDESEMBARACO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 5
              end
              object DBEdit32: TDBEdit
                Left = 168
                Top = 153
                Width = 161
                Height = 21
                DataField = 'NFITN2BC_IMP'
                DataSource = DSTemplate
                TabOrder = 12
              end
              object DBEdit37: TDBEdit
                Left = 336
                Top = 152
                Width = 97
                Height = 21
                DataField = 'NFITN2VALOR_DA'
                DataSource = DSTemplate
                TabOrder = 13
              end
              object DBEdit38: TDBEdit
                Left = 440
                Top = 152
                Width = 169
                Height = 21
                DataField = 'NFITN2VALOR_II'
                DataSource = DSTemplate
                TabOrder = 14
              end
              object DBEdit39: TDBEdit
                Left = 12
                Top = 196
                Width = 145
                Height = 21
                DataField = 'NFITN2VALOR_IOF'
                DataSource = DSTemplate
                TabOrder = 15
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
            Width = 867
            Height = 63
            object Label7: TLabel
              Left = 9
              Top = 6
              Width = 29
              Height = 13
              Caption = 'S'#233'rie'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 43
              Top = 6
              Width = 44
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 104
              Top = 6
              Width = 76
              Height = 13
              Caption = 'Data Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 310
              Top = 6
              Width = 66
              Height = 13
              Caption = 'Vlr Tot.Prod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 396
              Top = 6
              Width = 67
              Height = 13
              Caption = 'Vlr Tot.Desc'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 569
              Top = 6
              Width = 66
              Height = 13
              Caption = 'Vlr Tot.Nota'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 207
              Top = 6
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
            object Label47: TLabel
              Left = 482
              Top = 6
              Width = 81
              Height = 13
              Caption = 'Vlr Desc. Prom'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 9
              Top = 19
              Width = 29
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'SERIA5COD'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 40
              Top = 19
              Width = 58
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'NOFIINUMERO'
              DataSource = DSMasterTemplate
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBDateEdit1: TDBDateEdit
              Left = 100
              Top = 19
              Width = 102
              Height = 21
              TabStop = False
              DataField = 'NOFIDEMIS'
              DataSource = DSMasterTemplate
              ReadOnly = True
              Color = 16249066
              Ctl3D = True
              Enabled = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 2
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 204
              Top = 19
              Width = 101
              Height = 21
              Style = csDropDownList
              Color = 16249066
              Ctl3D = True
              DataField = 'NOFICSTATUS'
              DataSource = DSMasterTemplate
              Enabled = False
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Aberta'
                'Encerrada'
                'Cancelada')
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
              TabStop = False
              Values.Strings = (
                'A'
                'E'
                'C')
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 307
              Top = 19
              Width = 85
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              Ctl3D = True
              DataField = 'NOFIN2VLRPRODUTO'
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
              ReadOnly = True
              TabOrder = 4
            end
            object EvDBNumEdit2: TEvDBNumEdit
              Left = 393
              Top = 19
              Width = 85
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              Ctl3D = True
              DataField = 'NOFIN2VLRDESC'
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
              ReadOnly = True
              TabOrder = 5
            end
            object EvDBNumEdit3: TEvDBNumEdit
              Left = 565
              Top = 19
              Width = 85
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              Ctl3D = True
              DataField = 'NOFIN2VLRNOTA'
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
              ReadOnly = True
              TabOrder = 6
            end
            object EvDBNumEdit7: TEvDBNumEdit
              Left = 479
              Top = 19
              Width = 85
              Height = 21
              TabStop = False
              AutoHideCalculator = False
              Color = 16249066
              Ctl3D = True
              DataField = 'NOFIN2VLRDESCPROM'
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
              ReadOnly = True
              TabOrder = 7
            end
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 63
            Width = 867
            Height = 117
            AutoSize = True
            object Label9: TLabel
              Left = 8
              Top = 0
              Width = 346
              Height = 16
              Caption = 'Digite o C'#243'digo ou a Descri'#231#227'o do Produto desejado...'
              FocusControl = EditProduto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnProduto: TSpeedButton
              Left = 359
              Top = 15
              Width = 24
              Height = 22
              Hint = 'Acessa Produtos'
              Flat = True
              Glyph.Data = {
                E6000000424DE60000000000000076000000280000000E0000000E0000000100
                0400000000007000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                DD00DDDDDDDDDDDDDD00}
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnProdutoClick
            end
            object Label28: TLabel
              Left = 8
              Top = 40
              Width = 116
              Height = 13
              Caption = 'Produto Selecionado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 7
              Top = 83
              Width = 64
              Height = 13
              Caption = 'C'#243'd. Antigo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 112
              Top = 83
              Width = 61
              Height = 13
              Caption = 'Refer'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LSaldo: TLabel
              Left = 571
              Top = 83
              Width = 78
              Height = 13
              Caption = 'Estoque Atual'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SaldoAtual: TLabel
              Left = 636
              Top = 96
              Width = 10
              Height = 19
              Alignment = taRightJustify
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 229
              Top = 83
              Width = 51
              Height = 13
              Caption = 'Cod. NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit11: TDBEdit
              Left = 4
              Top = 53
              Width = 645
              Height = 29
              TabStop = False
              BevelOuter = bvRaised
              Color = 16249066
              Ctl3D = True
              DataField = 'ProdutoLookUp'
              DataSource = DSTemplate
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object EditProduto: TEdit
              Left = 4
              Top = 16
              Width = 352
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnEnter = EditProdutoEnter
              OnExit = EditProdutoExit
              OnKeyDown = EditProdutoKeyDown
            end
            object RadioPesquisa: TRadioGroup
              Left = 388
              Top = 0
              Width = 261
              Height = 38
              Caption = ' &Pesquisar por '
              Columns = 3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ItemIndex = 0
              Items.Strings = (
                'Cd.Red'
                'Cd.Antigo'
                'Refer'#234'ncia')
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 4
              Top = 96
              Width = 101
              Height = 21
              TabStop = False
              BevelOuter = bvRaised
              Color = 16249066
              Ctl3D = True
              DataField = 'CodAntigoLookup'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 109
              Top = 96
              Width = 115
              Height = 21
              TabStop = False
              BevelOuter = bvRaised
              Color = 16249066
              Ctl3D = True
              DataField = 'ReferenciaLookUp'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit6: TDBEdit
              Left = 226
              Top = 96
              Width = 115
              Height = 21
              TabStop = False
              BevelOuter = bvRaised
              Color = 16249066
              Ctl3D = True
              DataField = 'NCMLookUp'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object ImportarProdutosdoColetorPalmOne1: TMenuItem
      Caption = 'Importar Produtos do Coletor Palm One'
      OnClick = ImportarProdutosdoColetorPalmOne1Click
    end
    object ImportarProdutosdoColetorBematechDC20001: TMenuItem
      Caption = 'Importar Produtos do Coletor Bematech DC2000'
      OnClick = ImportarProdutosdoColetorBematechDC20001Click
    end
    object btnNmerosdeSerie: TMenuItem
      Caption = 'N'#250'mero(s) de S'#233'rie'
      OnClick = btnNmerosdeSerieClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MnImportarProdutospelaNotadeEntrada: TMenuItem
      Caption = 'Importar Produtos de outra Nota Fiscal de Entrada'
      OnClick = MnImportarProdutospelaNotadeEntradaClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MnImportarProdutosdeOutraNotaFiscal: TMenuItem
      Caption = 'Importar Produtos de Outra Nota Fiscal de Saida'
      OnClick = MnImportarProdutosdeOutraNotaFiscalClick
    end
    object MnCalcularValorTotalItens: TMenuItem
      Caption = 'Calcular o Valor Total de Itens'
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    AfterDelete = SQLTemplateAfterDelete
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From NOTAFISCALITEM Where '
      'NOFIA13ID=:NOFIA13ID AND (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'NOFIA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateNOFIA13ID: TStringField
      Tag = 1
      FieldName = 'NOFIA13ID'
      Origin = 'DB.NOTAFISCALITEM.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateNFITIITEM: TIntegerField
      Tag = 1
      DisplayLabel = 'Item Seq'
      FieldName = 'NFITIITEM'
      Origin = 'DB.NOTAFISCALITEM.NFITIITEM'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.NOTAFISCALITEM.PRODICOD'
      OnChange = SQLTemplatePRODICODChange
    end
    object SQLTemplateNFITN3QUANT: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'NFITN3QUANT'
      Origin = 'DB.NOTAFISCALITEM.NFITN3QUANT'
      OnChange = SQLTemplateNFITN3QUANTChange
    end
    object SQLTemplateNFITN2VLRUNIT: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'NFITN2VLRUNIT'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRUNIT'
      OnChange = SQLTemplateNFITN2VLRUNITChange
    end
    object SQLTemplateNFITN2PERCDESC: TFloatField
      DisplayLabel = '% Desconto'
      FieldName = 'NFITN2PERCDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCDESC'
      OnChange = SQLTemplateNFITN2PERCDESCChange
    end
    object SQLTemplateNFITN2VLRDESC: TFloatField
      DisplayLabel = 'Valor Desc'
      FieldName = 'NFITN2VLRDESC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRDESC'
      OnChange = SQLTemplateNFITN2VLRDESCChange
    end
    object SQLTemplateNFITN2VLRICMS: TFloatField
      DisplayLabel = 'Vlr. ICMS'
      FieldName = 'NFITN2VLRICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRICMS'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateNFITN2PERCICMS: TFloatField
      DisplayLabel = '% ICMS'
      FieldName = 'NFITN2PERCICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCICMS'
      OnChange = SQLTemplateNFITN2PERCICMSChange
    end
    object SQLTemplateNFITN2BASEICMS: TFloatField
      DisplayLabel = 'Base Calc. ICMS'
      FieldName = 'NFITN2BASEICMS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASEICMS'
    end
    object SQLTemplateNFITN2PERCSUBS: TFloatField
      DisplayLabel = '% Substitui'#231#227'o'
      FieldName = 'NFITN2PERCSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCSUBS'
      OnChange = SQLTemplateNFITN2PERCSUBSChange
    end
    object SQLTemplateNFITN2BASESUBS: TFloatField
      DisplayLabel = 'Base Calc. Subs.'
      FieldName = 'NFITN2BASESUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BASESUBS'
    end
    object SQLTemplateNFITN2VLRSUBS: TFloatField
      DisplayLabel = 'Valor Substitui'#231#227'o'
      FieldName = 'NFITN2VLRSUBS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRSUBS'
    end
    object SQLTemplateNFITN2PERCIPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'NFITN2PERCIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCIPI'
      OnChange = SQLTemplateNFITN2PERCIPIChange
    end
    object SQLTemplateNFITN2VLRIPI: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'NFITN2VLRIPI'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRIPI'
      OnChange = SQLTemplateNFITN2VLRIPIChange
    end
    object SQLTemplateNFITN2PERCISSQN: TFloatField
      DisplayLabel = '% ISSQN'
      FieldName = 'NFITN2PERCISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCISSQN'
    end
    object SQLTemplateNFITN2VLRISSQN: TFloatField
      DisplayLabel = 'Valor ISSQN'
      FieldName = 'NFITN2VLRISSQN'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRISSQN'
    end
    object SQLTemplateNFITN2VLRFRETE: TFloatField
      DisplayLabel = 'Valor Frete'
      FieldName = 'NFITN2VLRFRETE'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRFRETE'
      OnChange = SQLTemplateNFITN2PERCICMSChange
    end
    object SQLTemplateNFITN2VLRLUCRO: TFloatField
      DisplayLabel = 'Valor Lucro'
      FieldName = 'NFITN2VLRLUCRO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VLRLUCRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTAFISCALITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTAFISCALITEM.REGISTRO'
    end
    object SQLTemplateAgrupGradeLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AgrupGradeLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateGradeCodLookUp: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradeCodLookUp'
      Visible = False
      Calculated = True
    end
    object SQLTemplateProdutoLookUp: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookUp'
      Visible = False
      Size = 60
      Calculated = True
    end
    object SQLTemplateTotalItemCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItemCalc'
      Calculated = True
    end
    object SQLTemplateReferenciaLookUp: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'ReferenciaLookUp'
      Size = 60
      Calculated = True
    end
    object SQLTemplateNFITN3QUANTVEND: TFloatField
      DisplayLabel = 'Qtde Vendida'
      FieldName = 'NFITN3QUANTVEND'
    end
    object SQLTemplateNFITN3TOTVEND: TFloatField
      DisplayLabel = 'Qtde Pedido'
      FieldName = 'NFITN3TOTVEND'
    end
    object SQLTemplatePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Size = 13
    end
    object SQLTemplatePVITIITEM: TIntegerField
      FieldName = 'PVITIITEM'
    end
    object SQLTemplateNFITN2PERCREDUCAO: TFloatField
      FieldName = 'NFITN2PERCREDUCAO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCREDUCAO'
      OnChange = SQLTemplateNFITN2PERCREDUCAOChange
    end
    object SQLTemplateServicoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ServicoLookUp'
      Size = 1
      Calculated = True
    end
    object SQLTemplatePesoBrutoLookUp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PesoBrutoLookUp'
      Calculated = True
    end
    object SQLTemplatePesoLiquidoLookUp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PesoLiquidoLookUp'
      Calculated = True
    end
    object SQLTemplateNFITN2PERCCOMIS: TFloatField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'NFITN2PERCCOMIS'
      Origin = 'DB.NOTAFISCALITEM.NFITN2PERCCOMIS'
    end
    object SQLTemplateValorCompraLookUp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorCompraLookUp'
      Calculated = True
    end
    object SQLTemplateCPITICPOS: TIntegerField
      FieldName = 'CPITICPOS'
      Origin = 'DB.NOTAFISCALITEM.CPITICPOS'
    end
    object SQLTemplateCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.NOTAFISCALITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateLOTEA30NRO: TStringField
      DisplayLabel = 'Nro. Lote'
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.NOTAFISCALITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateNFITA254OBS: TStringField
      DisplayLabel = 'Observa'#231#245'es Complementares'
      FieldName = 'NFITA254OBS'
      Origin = 'DB.NOTAFISCALITEM.NFITA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateCodAntigoLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodAntigoLookup'
      Visible = False
      Size = 15
      Calculated = True
    end
    object SQLTemplateControlaSerieLookup: TStringField
      DisplayLabel = 'Controla S'#233'rie'
      FieldKind = fkCalculated
      FieldName = 'ControlaSerieLookup'
      Size = 1
      Calculated = True
    end
    object SQLTemplateCFOPA5CODAUX: TStringField
      FieldName = 'CFOPA5CODAUX'
      Origin = 'DB.NOTAFISCALITEM.CFOPA5CODAUX'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateNCMLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'NCMLookUp'
      Size = 30
      Calculated = True
    end
    object NFITA10DIIMPORT: TStringField
      DisplayLabel = 'DI'
      FieldName = 'NFITA10DIIMPORT'
      Origin = 'DB.NOTAFISCALITEM.NFITA10DIIMPORT'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateNFITA15PEDIDOCOMPRA: TStringField
      FieldName = 'NFITA15PEDIDOCOMPRA'
      Origin = 'DB.NOTAFISCALITEM.NFITA15PEDIDOCOMPRA'
      Size = 15
    end
    object SQLTemplateNFITA2UFDESEMBARACO: TStringField
      FieldName = 'NFITA2UFDESEMBARACO'
      Origin = 'DB.NOTAFISCALITEM.NFITA2UFDESEMBARACO'
      EditMask = '>CC<;0;_'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateNFITA60CEXPORTADOR: TStringField
      FieldName = 'NFITA60CEXPORTADOR'
      Origin = 'DB.NOTAFISCALITEM.NFITA60CEXPORTADOR'
      Size = 60
    end
    object SQLTemplateNFITA60CFABRICANTE: TStringField
      FieldName = 'NFITA60CFABRICANTE'
      Origin = 'DB.NOTAFISCALITEM.NFITA60CFABRICANTE'
      Size = 60
    end
    object SQLTemplateNFITA60LOCALDESEMBARACO: TStringField
      FieldName = 'NFITA60LOCALDESEMBARACO'
      Origin = 'DB.NOTAFISCALITEM.NFITA60LOCALDESEMBARACO'
      Size = 60
    end
    object SQLTemplateNFITDDATADI: TDateTimeField
      FieldName = 'NFITDDATADI'
      Origin = 'DB.NOTAFISCALITEM.NFITDDATADI'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateNFITDDESEMBARACO: TDateTimeField
      FieldName = 'NFITDDESEMBARACO'
      Origin = 'DB.NOTAFISCALITEM.NFITDDESEMBARACO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateNFITINADICAO: TIntegerField
      FieldName = 'NFITINADICAO'
      Origin = 'DB.NOTAFISCALITEM.NFITINADICAO'
    end
    object SQLTemplateNFITINSEQADIC: TIntegerField
      FieldName = 'NFITINSEQADIC'
      Origin = 'DB.NOTAFISCALITEM.NFITINSEQADIC'
    end
    object SQLTemplateNFITN2DESCTOADIC: TFloatField
      FieldName = 'NFITN2DESCTOADIC'
      Origin = 'DB.NOTAFISCALITEM.NFITN2DESCTOADIC'
    end
    object SQLTemplateNFITINITENS: TIntegerField
      FieldName = 'NFITINITENS'
      Origin = 'DB.NOTAFISCALITEM.NFITINITENS'
    end
    object SQLTemplateNFITN2OUTRASDESP: TFloatField
      FieldName = 'NFITN2OUTRASDESP'
      Origin = 'DB.NOTAFISCALITEM.NFITN2OUTRASDESP'
      DisplayFormat = ',0.00'
    end
    object SQLTemplateNFITN2SEGURO: TFloatField
      FieldName = 'NFITN2SEGURO'
      Origin = 'DB.NOTAFISCALITEM.NFITN2SEGURO'
      DisplayFormat = ',0.00'
    end
    object SQLTemplateNFITICST: TIntegerField
      FieldName = 'NFITICST'
      Origin = 'DB.NOTAFISCALITEM.NFITICST'
    end
    object SQLTemplateNFITN2BC_IMP: TFloatField
      FieldName = 'NFITN2BC_IMP'
      Origin = 'DB.NOTAFISCALITEM.NFITN2BC_IMP'
      DisplayFormat = ',0.00'
    end
    object SQLTemplateNFITN2VALOR_DA: TFloatField
      FieldName = 'NFITN2VALOR_DA'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VALOR_DA'
      DisplayFormat = ',0.00'
    end
    object SQLTemplateNFITN2VALOR_II: TFloatField
      FieldName = 'NFITN2VALOR_II'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VALOR_II'
      DisplayFormat = ',0.00'
    end
    object SQLTemplateNFITN2VALOR_IOF: TFloatField
      FieldName = 'NFITN2VALOR_IOF'
      Origin = 'DB.NOTAFISCALITEM.NFITN2VALOR_IOF'
      DisplayFormat = ',0.00'
    end
    object SQLTemplateUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.NOTAFISCALITEM.UNIDICOD'
      OnChange = SQLTemplateUNIDICODChange
    end
    object SQLTemplateUnidadeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadeLookup'
      LookupDataSet = SQLUnidade
      LookupKeyFields = 'UNIDICOD'
      LookupResultField = 'UNIDA15DESCR'
      KeyFields = 'UNIDICOD'
      Size = 15
      Lookup = True
    end
    object SQLTemplateNOFIA2CSTCOFINS: TStringField
      FieldName = 'NOFIA2CSTCOFINS'
      Origin = 'DB.NOTAFISCALITEM.NOFIA2CSTCOFINS'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateNOFIN3PERCCOFINS: TFloatField
      FieldName = 'NOFIN3PERCCOFINS'
      Origin = 'DB.NOTAFISCALITEM.NOFIN3PERCCOFINS'
    end
    object SQLTemplateNOFIN3VLRCOFINS: TFloatField
      FieldName = 'NOFIN3VLRCOFINS'
      Origin = 'DB.NOTAFISCALITEM.NOFIN3VLRCOFINS'
    end
    object SQLTemplateNOFIA2CSTPIS: TStringField
      FieldName = 'NOFIA2CSTPIS'
      Origin = 'DB.NOTAFISCALITEM.NOFIA2CSTPIS'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateNOFIN3PERCPIS: TFloatField
      FieldName = 'NOFIN3PERCPIS'
      Origin = 'DB.NOTAFISCALITEM.NOFIN3PERCPIS'
    end
    object SQLTemplateNOFIN3VLRPIS: TFloatField
      FieldName = 'NOFIN3VLRPIS'
      Origin = 'DB.NOTAFISCALITEM.NOFIN3VLRPIS'
    end
  end
  inherited AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Left = 469
  end
  object SQLAtualizaItemPedido: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Update '
      '  PEDIDOVENDAITEM'
      'set '
      '  PVITN3QUANTVEND = PVITN3QUANTVEND - :QtdePed + :NovaQtdePed'
      'Where'
      '  PDVDA13ID=:PDVDA13ID and'
      '  PVITIITEM=:PVITIITEM'
      ' ')
    Macros = <>
    Left = 8
    Top = 226
    ParamData = <
      item
        DataType = ftBCD
        Name = 'QtdePed'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftBCD
        Name = 'NovaQtdePed'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftUnknown
        Name = 'PDVDA13ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PVITIITEM'
        ParamType = ptUnknown
      end>
  end
  object SQLIcmsUF: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From ICMSUF'
      'Where '
      '  ICMUA2UF =:ICMUA2UF')
    Macros = <>
    Left = 8
    Top = 194
    ParamData = <
      item
        DataType = ftString
        Name = 'ICMUA2UF'
        ParamType = ptUnknown
      end>
  end
  object SQLIcms: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From ICMS'
      'Where ICMSICOD= :ICMSICOD')
    Macros = <>
    Left = 8
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ICMSICOD'
        ParamType = ptUnknown
      end>
  end
  object SQLGeral: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 8
    Top = 256
  end
  object SQLNumeroItens: TQuery
    DatabaseName = 'DB'
    DataSource = DSMasterTemplate
    SQL.Strings = (
      'Select COUNT(*) from NOTAFISCALITEM '
      'Where NOFIA13ID = :NOFIA13ID ')
    Left = 438
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = 'NOFIA13ID'
        ParamType = ptUnknown
      end>
  end
  object DSSQLCFOP: TDataSource
    DataSet = SQLCFOP
    Left = 65
    Top = 402
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From CFOP'
      'ORDER BY'
      'CFOPA5COD')
    Macros = <>
    Left = 37
    Top = 402
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CFOP.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCFOPCFOPCVENDA: TStringField
      FieldName = 'CFOPCVENDA'
      Origin = 'DB.CFOP.CFOPCVENDA'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CFOP.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLCFOPREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CFOP.REGISTRO'
    end
  end
  object dsSQLUnidade2: TDataSource
    DataSet = SQLUnidade2
    Left = 65
    Top = 346
  end
  object SQLUnidade2: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Unidade'
      'Where '
      '%Filtro')
    Macros = <
      item
        DataType = ftString
        Name = 'Filtro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 37
    Top = 346
    object SQLUnidade2UNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
    end
    object SQLUnidade2UNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLUnidade2UNIDA15DESCR: TStringField
      FieldName = 'UNIDA15DESCR'
      Origin = 'DB.UNIDADE.UNIDA15DESCR'
      FixedChar = True
      Size = 15
    end
    object SQLUnidade2UNIDCFRAC: TStringField
      FieldName = 'UNIDCFRAC'
      Origin = 'DB.UNIDADE.UNIDCFRAC'
      FixedChar = True
      Size = 1
    end
    object SQLUnidade2UNIDN3FATORCONV: TFloatField
      FieldName = 'UNIDN3FATORCONV'
      Origin = 'DB.UNIDADE.UNIDN3FATORCONV'
    end
  end
  object SQLUnidade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Unidade')
    Macros = <>
    Left = 8
    Top = 346
    object SQLUnidadeUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.UNIDADE.UNIDICOD'
    end
    object SQLUnidadeUNIDA5DESCR: TStringField
      FieldName = 'UNIDA5DESCR'
      Origin = 'DB.UNIDADE.UNIDA5DESCR'
      FixedChar = True
      Size = 5
    end
    object SQLUnidadeUNIDA15DESCR: TStringField
      FieldName = 'UNIDA15DESCR'
      Origin = 'DB.UNIDADE.UNIDA15DESCR'
      FixedChar = True
      Size = 15
    end
    object SQLUnidadeUNIDN3FATORCONV: TFloatField
      FieldName = 'UNIDN3FATORCONV'
      Origin = 'DB.UNIDADE.UNIDN3FATORCONV'
    end
  end
  object SQLTotal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  sum(NFITN2VLRUNIT*NFITN3QUANT) as NOFIN2VLRPRODUTO,'
      '  sum(NFITN2VLRIPI)      as NOFIN2VLRIPI,'
      '  sum(NFITN2VLRDESC)     as NOFIN2VLRDESC,'
      '  sum(NFITN2BASEICMS)    as NOFIN2BASCALCICMS,'
      '  sum(NFITN2VLRICMS)     as NOFIN2VLRICMS,'
      '  sum(NFITN2VLRICMS)     as NOFIN2VLRICMS,'
      '  sum(NFITN2BASESUBS)    as NOFIN2BASCALCSUBS,'
      '  sum(NFITN2VLRSUBS)     as NOFIN2VLRSUBS,'
      '  sum(NFITN2VLRFRETE)    as NOFIN2VLRFRETE,'
      '  sum(NFITN2OUTRASDESP)  as NOFIN2VLROUTRASDESP,'
      '  sum(NOFIN3VLRPIS)      as NOFIN3VLRPIS,'
      '  sum(NOFIN3VLRCOFINS)   as NOFIN3VLRCOFINS'
      'From notafiscalitem'
      'Where %ID ')
    Macros = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 552
    Top = 1
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PRODUTO where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 507
    Top = 1
    object SQLProdutoPRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoPRODA30CODESTRUT: TStringField
      DisplayLabel = 'C'#243'd. Estrutura'
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoPRODA60CODBAR: TStringField
      DisplayLabel = 'C'#243'd Barra'
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60REFER: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoPRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoCLFSICOD: TIntegerField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'CLFSICOD'
      Origin = 'DB.PRODUTO.CLFSICOD'
    end
    object SQLProdutoGRUPICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLProdutoMARCICOD: TIntegerField
      DisplayLabel = 'Marca C'#243'digo'
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLProdutoGRADICOD: TIntegerField
      DisplayLabel = 'C'#243'd. Grade '
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGRTMICOD: TIntegerField
      DisplayLabel = 'Gde Tamanho'
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoUNIDICOD: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoPRODN3VLRCUSTO: TFloatField
      DisplayLabel = 'Vlr Custo'
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLProdutoClassFiscal: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClassFiscal'
      Size = 60
      Calculated = True
    end
    object SQLProdutoMarca: TStringField
      FieldKind = fkCalculated
      FieldName = 'Marca'
      Size = 60
      Calculated = True
    end
    object SQLProdutoUnidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Unidade'
      Size = 60
      Calculated = True
    end
    object SQLProdutoProdutoLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 100
      Calculated = True
    end
    object SQLProdutoCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutoPRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
    end
    object SQLProdutoPERC_REDUCAO_BASE_CALCULO: TFloatField
      FieldName = 'PERC_REDUCAO_BASE_CALCULO'
      Origin = 'DB.PRODUTO.PERC_REDUCAO_BASE_CALCULO'
    end
  end
end
