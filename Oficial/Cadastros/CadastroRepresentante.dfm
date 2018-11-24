inherited FormCadastroRepresentante: TFormCadastroRepresentante
  Left = 198
  Top = 66
  Caption = 'Cadastro de Representante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&Estoque'
          Visible = True
          OnClick = Button3Click
        end
        object GroupBoxFOTO: TGroupBox
          Left = 0
          Top = 266
          Width = 130
          Height = 183
          Align = alBottom
          Caption = 'Foto Representante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Image: TImage
            Left = 2
            Top = 74
            Width = 126
            Height = 109
            Center = True
            Proportional = True
            Stretch = True
            Transparent = True
          end
          object BtnCapturaFoto: TSpeedButton
            Tag = 1
            Left = 4
            Top = 15
            Width = 60
            Height = 36
            Cursor = crHandPoint
            Hint = 'Capturar Imagem'
            AllowAllUp = True
            Caption = 'Capturar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              62050000424D62050000000000003604000028000000120000000F0000000100
              0800000000002C010000CE0E0000D80E00000001000000000000000000004000
              000080000000FF000000002000004020000080200000FF200000004000004040
              000080400000FF400000006000004060000080600000FF600000008000004080
              000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
              000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
              200080002000FF002000002020004020200080202000FF202000004020004040
              200080402000FF402000006020004060200080602000FF602000008020004080
              200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
              200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
              400080004000FF004000002040004020400080204000FF204000004040004040
              400080404000FF404000006040004060400080604000FF604000008040004080
              400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
              400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
              600080006000FF006000002060004020600080206000FF206000004060004040
              600080406000FF406000006060004060600080606000FF606000008060004080
              600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
              600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
              800080008000FF008000002080004020800080208000FF208000004080004040
              800080408000FF408000006080004060800080608000FF608000008080004080
              800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
              800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
              A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
              A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
              A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
              A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
              C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
              C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
              C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
              C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
              FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
              FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
              FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
              FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFF92000092FFFFFFFFFFFFFF0000FFFF9200000000000000
              000000000092FFFF0000FFFF0092920000929292920000929200FFFF0000FFFF
              0092920092929292929200929200FFFF0000FFFF0092920092FE929292920092
              9200FFFF0000FFFF00929200921FFE92929200929200FFFF0000FFFF00FEFE00
              00929292920000FEFE00FFFF0000FFFF00FEFEFE000000000000FEFEFE00FFFF
              0000FFFF0000000000000000000000000000FFFF0000FFFFFF0000FF9200FEFE
              0092FF0000FFFFFF0000FFFFFFFFFFFFFF92000092FFFFFFFFFFFFFF0000FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF0000}
            Layout = blGlyphTop
            Margin = 0
            ParentFont = False
            Spacing = 1
            OnClick = BtnCapturaFotoClick
          end
          object BtnRemoveFoto: TSpeedButton
            Tag = 1
            Left = 66
            Top = 15
            Width = 60
            Height = 36
            Cursor = crHandPoint
            Hint = 'Remover Foto'
            AllowAllUp = True
            Caption = 'Remover'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              46050000424D460500000000000036040000280000000F000000110000000100
              08000000000010010000CE0E0000C40E00000001000000000000000000008080
              8000000080000080800000800000808000008000000080008000408080004040
              0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
              FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
              80008000FF004080FF00C0DCC000F0CAA6003F3F5F003F3F7F003F3F9F003F3F
              BF003F3FDF003F3FFF003F5F3F003F5F5F003F5F7F003F5F9F003F5FBF003F5F
              DF003F5FFF003F7F3F003F7F5F003F7F7F003F7F9F003F7FBF003F7FDF003F7F
              FF003F9F3F003F9F5F003F9F7F003F9F9F003F9FBF003F9FDF003F9FFF003FBF
              3F003FBF5F003FBF7F003FBF9F003FBFBF003FBFDF003FBFFF003FDF3F003FDF
              5F003FDF7F003FDF9F003FDFBF003FDFDF003FDFFF003FFF3F003FFF5F003FFF
              7F003FFF9F003FFFBF003FFFDF003FFFFF005F3F3F005F3F5F005F3F7F005F3F
              9F005F3FBF005F3FDF005F3FFF005F5F3F005F5F5F005F5F7F005F5F9F005F5F
              BF005F5FDF005F5FFF005F7F3F005F7F5F005F7F7F005F7F9F005F7FBF005F7F
              DF005F7FFF005F9F3F005F9F5F005F9F7F005F9F9F005F9FBF005F9FDF005F9F
              FF005FBF3F005FBF5F005FBF7F005FBF9F005FBFBF005FBFDF005FBFFF005FDF
              3F005FDF5F005FDF7F005FDF9F005FDFBF005FDFDF005FDFFF005FFF3F005FFF
              5F005FFF7F005FFF9F005FFFBF005FFFDF005FFFFF007F3F3F007F3F5F007F3F
              7F007F3F9F007F3FBF007F3FDF007F3FFF007F5F3F007F5F5F007F5F7F007F5F
              9F007F5FBF007F5FDF007F5FFF007F7F3F007F7F5F007F7F7F007F7F9F007F7F
              BF007F7FDF007F7FFF007F9F3F007F9F5F007F9F7F007F9F9F007F9FBF007F9F
              DF007F9FFF007FBF3F007FBF5F007FBF7F007FBF9F007FBFBF007FBFDF007FBF
              FF007FDF3F007FDF5F007FDF7F007FDF9F007FDFBF007FDFDF007FDFFF007FFF
              3F007FFF5F007FFF7F007FFF9F007FFFBF007FFFDF007FFFFF009F3F3F009F3F
              5F009F3F7F009F3F9F009F3FBF009F3FDF009F3FFF009F5F3F009F5F5F009F5F
              7F009F5F9F009F5FBF009F5FDF009F5FFF009F7F3F009F7F5F009F7F7F009F7F
              9F009F7FBF009F7FDF009F7FFF009F9F3F009F9F5F009F9F7F009F9F9F009F9F
              BF009F9FDF009F9FFF009FBF3F009FBF5F009FBF7F009FBF9F009FBFBF009FBF
              DF009FBFFF009FDF3F009FDF5F009FDF7F009FDF9F009FDFBF009FDFDF009FDF
              FF009FFF3F009FFF5F009FFF7F009FFF9F009FFFBF009FFFDF009FFFFF00BF3F
              3F00BF3F5F00BF3F7F00BF3F9F00BF3FBF00BF3FDF00BF3FFF00BF5F3F00BF5F
              5F00BF5F7F00BF5F9F00BF5FBF00BF5FDF00BF5FFF00BF7F3F00BF7F5F00BF7F
              7F00BF7F9F00BF7FBF00BF7FDF00BF7FFF00BF9F3F00BF9F5F00BF9F7F00BF9F
              9F00BF9FBF00BF9FDF00BF9FFF00BFBF3F00BFBF5F00BFBF7F00030303030303
              0303030303030303030003030303030303030000000003030300030303030303
              00000F0F0101000303000303030300000F0F0F0F010100030300030300000F0F
              100F0F0F0101000303000303010F0F101010100F0101010003000303010F100F
              100F100F01010100030003010F0F100F0F0F0F0F01010100030003010F101010
              0F10100F01010100030003010F0F100F0F10100F01010101000003010F0F0F10
              100E0E0E0E0101010000010F0F0F0F0E0E010F0F0F0E0E010000010F0F0E0E00
              01010F0F0F0F0E0E0000010E0E010100010F0F0F0E0E0101030001010E0E0100
              0F0F0E0E010103030300030301010E010E0E0101030303030300030303030101
              01010303030303030300}
            Layout = blGlyphTop
            Margin = 0
            ParentFont = False
            Spacing = 1
            OnClick = BtnRemoveFotoClick
          end
          object BtSalvarImagem: TSpeedButton
            Tag = 1
            Left = 5
            Top = 53
            Width = 120
            Height = 18
            Cursor = crHandPoint
            Hint = 'Capturar Imagem'
            AllowAllUp = True
            Caption = 'Salvar em Disco'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Layout = blGlyphTop
            Margin = 0
            ParentFont = False
            Spacing = 1
            OnClick = BtSalvarImagemClick
          end
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
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
              object Label3: TLabel
                Left = 6
                Top = 3
                Width = 52
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 6
                Top = 39
                Width = 34
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 6
                Top = 75
                Width = 38
                Height = 13
                Caption = 'Cidade'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 7
                Top = 109
                Width = 21
                Height = 13
                Caption = 'Cep'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 301
                Top = 110
                Width = 38
                Height = 13
                Caption = 'Estado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 7
                Top = 144
                Width = 30
                Height = 13
                Caption = 'Email'
                FocusControl = DBEdit6
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label21: TLabel
                Left = 6
                Top = 181
                Width = 73
                Height = 13
                Caption = 'Observa'#231#245'es'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 398
                Top = 3
                Width = 37
                Height = 13
                Caption = 'Fone 1'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 398
                Top = 40
                Width = 37
                Height = 13
                Caption = 'Fone 2'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 398
                Top = 75
                Width = 69
                Height = 13
                Caption = 'Fone Celular'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 7
                Top = 248
                Width = 118
                Height = 13
                Caption = 'Percentual Comiss'#227'o'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit2: TDBEdit
                Left = 3
                Top = 16
                Width = 358
                Height = 21
                DataField = 'REPRA60END'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit3: TDBEdit
                Left = 3
                Top = 52
                Width = 358
                Height = 21
                DataField = 'REPRA30BAI'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit4: TDBEdit
                Left = 3
                Top = 88
                Width = 358
                Height = 21
                DataField = 'REPRA60CID'
                DataSource = DSTemplate
                TabOrder = 2
              end
              object DBEdit5: TDBEdit
                Left = 3
                Top = 122
                Width = 150
                Height = 21
                DataField = 'REPRA8CEP'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object ComboUFRes: TRxDBComboBox
                Left = 297
                Top = 123
                Width = 65
                Height = 21
                Style = csDropDownList
                DataField = 'REPRA2UF'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'MT'
                  'RJ'
                  'RN'
                  'RO'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO'
                  'EX')
                TabOrder = 4
                Values.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'MT'
                  'RJ'
                  'RN'
                  'RO'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO'
                  'EX')
              end
              object DBEdit6: TDBEdit
                Left = 3
                Top = 157
                Width = 358
                Height = 21
                DataField = 'REPRA60EMAIL'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object MemoOBS: TDBMemo
                Left = 3
                Top = 194
                Width = 614
                Height = 45
                DataField = 'REPRA200OBS'
                DataSource = DSTemplate
                ScrollBars = ssVertical
                TabOrder = 6
              end
              object Panel4: TPanel
                Left = 376
                Top = 6
                Width = 3
                Height = 172
                TabOrder = 7
              end
              object DBEdit7: TDBEdit
                Left = 395
                Top = 16
                Width = 222
                Height = 21
                DataField = 'REPRA15FONE1'
                DataSource = DSTemplate
                TabOrder = 8
              end
              object DBEdit8: TDBEdit
                Left = 395
                Top = 53
                Width = 222
                Height = 21
                DataField = 'REPRA15FONE2'
                DataSource = DSTemplate
                TabOrder = 9
              end
              object DBEdit9: TDBEdit
                Left = 395
                Top = 88
                Width = 222
                Height = 21
                DataField = 'REPRA15FONECEL'
                DataSource = DSTemplate
                TabOrder = 10
              end
              object GroupBox1: TGroupBox
                Left = 394
                Top = 114
                Width = 223
                Height = 42
                Caption = ' Data Cadastro '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
                object DataCadastro: TDBEdit
                  Left = 13
                  Top = 17
                  Width = 172
                  Height = 21
                  TabStop = False
                  Color = 12572888
                  DataField = 'REPRDCAD'
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
              end
              object DBEdit10: TDBEdit
                Left = 3
                Top = 261
                Width = 166
                Height = 21
                DataField = 'PERC_COMISSAO'
                DataSource = DSTemplate
                TabOrder = 12
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 6
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 55
              Top = 4
              Width = 172
              Height = 13
              Caption = 'Nome Completo / Raz'#227'o Social'
              FocusControl = DBEditNome
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelNomeFantasia: TLabel
              Left = 373
              Top = 4
              Width = 83
              Height = 13
              Caption = 'Nome Fantasia'
              FocusControl = DBEditNomeFantasia
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 17
              Width = 45
              Height = 21
              Color = 12572888
              DataField = 'REPRICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEditNome: TDBEdit
              Left = 52
              Top = 17
              Width = 314
              Height = 21
              DataField = 'REPRA60RAZAOSOC'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object DBEditNomeFantasia: TDBEdit
              Left = 370
              Top = 17
              Width = 252
              Height = 21
              DataField = 'REPRA60NOMEFANT'
              DataSource = DSTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnGerarListaEmail: TMenuItem
      Caption = 'Gerar Lista para Email'
      OnClick = MnGerarListaEmailClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From Representante Where (%MFiltro)')
    object SQLTemplateREPRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'REPRICOD'
      Origin = 'DB.REPRESENTANTE.REPRICOD'
      Visible = False
    end
    object SQLTemplateREPRA60RAZAOSOC: TStringField
      DisplayLabel = 'Nome / Raz'#227'o Social'
      FieldName = 'REPRA60RAZAOSOC'
      Origin = 'DB.REPRESENTANTE.REPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateREPRA60NOMEFANT: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'REPRA60NOMEFANT'
      Origin = 'DB.REPRESENTANTE.REPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateREPRA60END: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'REPRA60END'
      Origin = 'DB.REPRESENTANTE.REPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateREPRA60CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'REPRA60CID'
      Origin = 'DB.REPRESENTANTE.REPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateREPRA30BAI: TStringField
      FieldName = 'REPRA30BAI'
      Origin = 'DB.REPRESENTANTE.REPRA30BAI'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateREPRA8CEP: TStringField
      FieldName = 'REPRA8CEP'
      Origin = 'DB.REPRESENTANTE.REPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLTemplateREPRA2UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'REPRA2UF'
      Origin = 'DB.REPRESENTANTE.REPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateREPRA60EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'REPRA60EMAIL'
      Origin = 'DB.REPRESENTANTE.REPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateREPRA15FONE1: TStringField
      DisplayLabel = 'Fone 1'
      FieldName = 'REPRA15FONE1'
      Origin = 'DB.REPRESENTANTE.REPRA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateREPRA15FONE2: TStringField
      DisplayLabel = 'Fone 2'
      FieldName = 'REPRA15FONE2'
      Origin = 'DB.REPRESENTANTE.REPRA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateREPRA15FONECEL: TStringField
      DisplayLabel = 'Fone Cel'
      FieldName = 'REPRA15FONECEL'
      Origin = 'DB.REPRESENTANTE.REPRA15FONECEL'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateREPRA200OBS: TStringField
      FieldName = 'REPRA200OBS'
      Origin = 'DB.REPRESENTANTE.REPRA200OBS'
      FixedChar = True
      Size = 200
    end
    object SQLTemplateREPRDCAD: TDateTimeField
      FieldName = 'REPRDCAD'
      Origin = 'DB.REPRESENTANTE.REPRDCAD'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = 'dd/mm/yyyy'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.REPRESENTANTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.REPRESENTANTE.REGISTRO'
    end
    object SQLTemplateREPRBIMAGEM: TBlobField
      FieldName = 'REPRBIMAGEM'
      Origin = 'DB.REPRESENTANTE.REPRBIMAGEM'
      Size = 1
    end
    object SQLTemplatePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
      Origin = 'DB.REPRESENTANTE.PERC_COMISSAO'
      DisplayFormat = '##0.00'
    end
  end
  object PictureDialog: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.jpeg;*.ico;*.' +
      'emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|JPEG Image File (*.' +
      'jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Icons (*.ico)|*.ico|E' +
      'nhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 640
    Top = 2
  end
end
