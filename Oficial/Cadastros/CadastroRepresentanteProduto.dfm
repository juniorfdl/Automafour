inherited FormCadastroRepresentanteProduto: TFormCadastroRepresentanteProduto
  Left = 189
  Top = 15
  Caption = 'Cadastro Representante / Parceiro'
  ClientHeight = 661
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 661
    inherited PanelCentral: TPanel
      Height = 587
      inherited PanelBarra: TPanel
        Height = 587
        inherited Button3: TRxSpeedButton
          Caption = '&3'
        end
      end
      inherited PanelFundoDados: TPanel
        Height = 587
        inherited Panel5: TPanel
          Height = 587
          inherited PagePrincipal: TPageControl
            Top = 81
            Height = 506
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 433
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Width = 99
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRSEA60NROSERIE'
                    Width = 131
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOFIA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOCPA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FORNICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLIEA60RAZAOSOC'
                    Width = 256
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_SAIDA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATE_ENTRADA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'STATUS'
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
              object Label3: TLabel
                Left = 22
                Top = 122
                Width = 64
                Height = 13
                Caption = 'N'#250'mero S'#233'rie'
                FocusControl = DBEdit3
              end
              object Label12: TLabel
                Left = 342
                Top = 122
                Width = 31
                Height = 13
                Caption = 'Status'
              end
              object Label13: TLabel
                Left = 22
                Top = 46
                Width = 269
                Height = 13
                Caption = 'Pesquisa &Produto   [F2-Cadastro]  [F3-Consulta]'
                FocusControl = EditProduto
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BtnProduto: TSpeedButton
                Left = 306
                Top = 59
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
                OnClick = BtnProdutoClick
              end
              object Label27: TLabel
                Left = 22
                Top = 84
                Width = 45
                Height = 13
                Caption = 'Produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label30: TLabel
                Left = 478
                Top = 84
                Width = 38
                Height = 13
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label31: TLabel
                Left = 581
                Top = 84
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
              object Label11: TLabel
                Left = 259
                Top = 2
                Width = 66
                Height = 13
                Caption = 'Data Registro'
              end
              object Label14: TLabel
                Left = 23
                Top = 2
                Width = 68
                Height = 13
                Caption = 'Entrada/Sa'#237'da'
              end
              object btnAdicionaNumSerie: TSpeedButton
                Left = 308
                Top = 139
                Width = 20
                Height = 20
                Hint = 'Adiciona n'#250'mero de s'#233'rie'
                Flat = True
                Glyph.Data = {
                  DE010000424DDE01000000000000760000002800000024000000120000000100
                  0400000000006801000000000000000000001000000010000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
                  6666666666666666666666660000666666666666666666666666666666666666
                  0000666666666666666666666666666666666666000066666666FFF666666666
                  666666FFF666666600006666666844F66666666666666888F666666600006666
                  666844F66666666666666888F666666600006666666844F66666666666666888
                  F666666600006666FFF644FFFFF6666666FFF888FFFFF6660000666844444444
                  44F66666688888888888F666000066684444444444F66666688888888888F666
                  000066688888446888666666688888888888666600006666666844F666666666
                  66666888F666666600006666666844F66666666666666888F666666600006666
                  666844F66666666666666888F666666600006666666888666666666666666888
                  6666666600006666666666666666666666666666666666660000666666666666
                  6666666666666666666666660000666666666666666666666666666666666666
                  0000}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
                OnClick = btnAdicionaNumSerieClick
              end
              object DBEdit3: TDBEdit
                Left = 22
                Top = 138
                Width = 283
                Height = 21
                DataField = 'PRSEA60NROSERIE'
                DataSource = DSTemplate
                TabOrder = 7
              end
              object EditProduto: TEdit
                Left = 22
                Top = 60
                Width = 284
                Height = 21
                CharCase = ecUpperCase
                TabOrder = 2
                OnEnter = EditProdutoEnter
                OnKeyDown = EditProdutoKeyDown
              end
              object RadioPesquisa: TRadioGroup
                Left = 334
                Top = 44
                Width = 340
                Height = 38
                Caption = '&Tipo de Pesquisa'
                Columns = 3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ItemIndex = 0
                Items.Strings = (
                  'Padr'#227'o'
                  'C'#243'd. Antigo'
                  'Refer'#234'ncia')
                ParentFont = False
                TabOrder = 3
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 342
                Top = 138
                Width = 121
                Height = 21
                Style = csDropDownList
                DataField = 'STATUS'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Dispon'#237'vel'
                  'Indispon'#237'vel')
                TabOrder = 8
                Values.Strings = (
                  'D'
                  'I')
              end
              object DBEdit12: TDBEdit
                Left = 22
                Top = 98
                Width = 451
                Height = 21
                TabStop = False
                Color = 16249066
                Ctl3D = True
                DataField = 'ProdutoLookUp'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
              end
              object DBEdit13: TDBEdit
                Left = 476
                Top = 98
                Width = 101
                Height = 21
                TabStop = False
                Color = 16249066
                Ctl3D = True
                DataField = 'CodAntigoLookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
              end
              object DBEdit23: TDBEdit
                Left = 580
                Top = 98
                Width = 93
                Height = 21
                TabStop = False
                Color = 16249066
                Ctl3D = True
                DataField = 'ReferenciaLookUp'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                ReadOnly = True
                TabOrder = 6
              end
              object DBDateEdit3: TDBDateEdit
                Left = 259
                Top = 18
                Width = 121
                Height = 21
                TabStop = False
                DataField = 'DATA_REGISTRO'
                DataSource = DSTemplate
                ReadOnly = True
                Color = 16249066
                NumGlyphs = 2
                TabOrder = 1
              end
              object RxDBComboBox2: TRxDBComboBox
                Left = 23
                Top = 18
                Width = 121
                Height = 21
                Style = csDropDownList
                DataField = 'ENTRADA_SAIDA'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Entrada'
                  'Sa'#237'da')
                TabOrder = 0
                Values.Strings = (
                  'E'
                  'S')
              end
              object grbEntrada: TcxGroupBox
                Left = 22
                Top = 166
                Caption = 'Entrada'
                Style.BorderStyle = ebsFlat
                TabOrder = 9
                Height = 108
                Width = 669
                object Label5: TLabel
                  Left = 14
                  Top = 18
                  Width = 54
                  Height = 13
                  Caption = 'NF Entrada'
                  FocusControl = DBEdit5
                end
                object Label6: TLabel
                  Left = 14
                  Top = 59
                  Width = 78
                  Height = 13
                  Caption = 'Cod.Fornecedor'
                end
                object Label10: TLabel
                  Left = 187
                  Top = 18
                  Width = 64
                  Height = 13
                  Caption = 'Data Entrada'
                end
                object btnConsultaFornecedor: TSpeedButton
                  Left = 115
                  Top = 76
                  Width = 20
                  Height = 20
                  Hint = 'Acessa Clientes'
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
                  OnClick = btnConsultaFornecedorClick
                end
                object DBEdit5: TDBEdit
                  Left = 14
                  Top = 34
                  Width = 139
                  Height = 21
                  DataField = 'NOCPA13ID'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEdit2: TDBEdit
                  Left = 13
                  Top = 75
                  Width = 100
                  Height = 21
                  DataField = 'FORNICOD'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object DBEdit6: TDBEdit
                  Left = 138
                  Top = 75
                  Width = 388
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'NomeFornecedorLookUp'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object DBDateEdit2: TDBDateEdit
                  Left = 187
                  Top = 34
                  Width = 121
                  Height = 21
                  DataField = 'DATE_ENTRADA'
                  DataSource = DSTemplate
                  NumGlyphs = 2
                  TabOrder = 3
                end
              end
              object grbSaida: TcxGroupBox
                Left = 22
                Top = 280
                Caption = 'Sa'#237'da'
                Style.BorderStyle = ebsFlat
                StyleDisabled.BorderColor = clRed
                TabOrder = 10
                Height = 108
                Width = 669
                object Label4: TLabel
                  Left = 13
                  Top = 15
                  Width = 42
                  Height = 13
                  Caption = 'NF Sa'#237'da'
                  FocusControl = DBEdit4
                end
                object Label9: TLabel
                  Left = 186
                  Top = 15
                  Width = 52
                  Height = 13
                  Caption = 'Data Sa'#237'da'
                end
                object btnConsultaCliente: TSpeedButton
                  Left = 114
                  Top = 71
                  Width = 20
                  Height = 20
                  Hint = 'Acessa Clientes'
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
                  OnClick = btnConsultaClienteClick
                end
                object Label2: TLabel
                  Left = 13
                  Top = 55
                  Width = 56
                  Height = 13
                  Caption = 'Cod.Cliente'
                  FocusControl = DBEdit4
                end
                object DBEdit4: TDBEdit
                  Left = 13
                  Top = 28
                  Width = 139
                  Height = 21
                  DataField = 'NOFIA13ID'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
                object DBEditCod: TDBEdit
                  Left = 12
                  Top = 71
                  Width = 100
                  Height = 21
                  DataField = 'CLIEA13ID'
                  DataSource = DSTemplate
                  TabOrder = 1
                  OnKeyDown = DBEditCodKeyDown
                end
                object DBEdit17: TDBEdit
                  Left = 137
                  Top = 71
                  Width = 388
                  Height = 21
                  TabStop = False
                  Color = 16249066
                  Ctl3D = True
                  DataField = 'NomeClienteLookUp'
                  DataSource = DSTemplate
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 2
                end
                object DBDateEdit1: TDBDateEdit
                  Left = 186
                  Top = 31
                  Width = 121
                  Height = 21
                  DataField = 'DATA_SAIDA'
                  DataSource = DSTemplate
                  NumGlyphs = 2
                  TabOrder = 3
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Height = 40
          end
          inherited PanelCodigoDescricao: TPanel
            object Label7: TLabel
              Left = 7
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 74
              Top = 4
              Width = 120
              Height = 13
              Caption = 'Nome Representante'
              FocusControl = DBEdit8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit7: TDBEdit
              Left = 5
              Top = 17
              Width = 64
              Height = 21
              DataField = 'REPRICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 71
              Top = 17
              Width = 336
              Height = 21
              DataField = 'REPRA60RAZAOSOC'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    SQL.Strings = (
      'Select * From PRODUTOREPRESENTANTE'
      ' Where REPRICOD = :REPRICOD and (%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REPRICOD'
        ParamType = ptInput
      end>
    object SQLTemplateREPRICOD: TIntegerField
      DisplayLabel = 'C'#243'digo Representante'
      FieldName = 'REPRICOD'
      Origin = 'DB.PRODUTOREPRESENTANTE.REPRICOD'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOREPRESENTANTE.PRODICOD'
    end
    object SQLTemplatePRSEA60NROSERIE: TStringField
      DisplayLabel = 'N'#250'mero S'#233'rie'
      FieldName = 'PRSEA60NROSERIE'
      Origin = 'DB.PRODUTOREPRESENTANTE.PRSEA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateNOFIA13ID: TStringField
      DisplayLabel = 'NF Sa'#237'da'
      FieldName = 'NOFIA13ID'
      Origin = 'DB.PRODUTOREPRESENTANTE.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateNOCPA13ID: TStringField
      DisplayLabel = 'NF Entrada'
      FieldName = 'NOCPA13ID'
      Origin = 'DB.PRODUTOREPRESENTANTE.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateFORNICOD: TIntegerField
      DisplayLabel = 'Cod.Fornecedor'
      FieldName = 'FORNICOD'
      Origin = 'DB.PRODUTOREPRESENTANTE.FORNICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PRODUTOREPRESENTANTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.PRODUTOREPRESENTANTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateDATA_SAIDA: TDateTimeField
      DisplayLabel = 'Data Sa'#237'da'
      FieldName = 'DATA_SAIDA'
      Origin = 'DB.PRODUTOREPRESENTANTE.DATA_SAIDA'
    end
    object SQLTemplateDATE_ENTRADA: TDateTimeField
      DisplayLabel = 'Data Entrada'
      FieldName = 'DATE_ENTRADA'
      Origin = 'DB.PRODUTOREPRESENTANTE.DATE_ENTRADA'
    end
    object SQLTemplateEMPRICOD: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOREPRESENTANTE.EMPRICOD'
    end
    object SQLTemplateSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'DB.PRODUTOREPRESENTANTE.STATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateProdutoLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookUp'
      Size = 60
      Calculated = True
    end
    object SQLTemplateReferenciaLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'ReferenciaLookUp'
      Size = 60
      Calculated = True
    end
    object SQLTemplateCodAntigoLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'CodAntigoLookup'
      Size = 16
      Calculated = True
    end
    object SQLTemplateNomeClienteLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeClienteLookUp'
      Size = 100
      Calculated = True
    end
    object SQLTemplateNomeFornecedorLookUp: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeFornecedorLookUp'
      Size = 100
      Calculated = True
    end
    object SQLTemplateENTRADA_SAIDA: TStringField
      FieldName = 'ENTRADA_SAIDA'
      Origin = 'DB.PRODUTOREPRESENTANTE.ENTRADA_SAIDA'
      OnChange = SQLTemplateENTRADA_SAIDAChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateDATA_REGISTRO: TDateTimeField
      FieldName = 'DATA_REGISTRO'
      Origin = 'DB.PRODUTOREPRESENTANTE.DATA_REGISTRO'
    end
  end
  object cdsSerie: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NumeroSerie'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Empresa'
        DataType = ftInteger
      end
      item
        Name = 'Produto'
        DataType = ftInteger
      end
      item
        Name = 'NotaFiscal'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'NotaEntrada'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'Nome_Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Data_Saida'
        DataType = ftDate
      end
      item
        Name = 'Data_Entrada'
        DataType = ftDate
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Data_Registro'
        DataType = ftDate
      end
      item
        Name = 'Entrada_Saida'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 776
    Top = 96
    Data = {
      350100009619E0BD01000000180000000B00000000000300000035010B4E756D
      65726F53657269650100490000000100055749445448020002003C0007456D70
      7265736104000100000000000750726F6475746F04000100000000000A4E6F74
      6146697363616C0100490000000100055749445448020002000D000B4E6F7461
      456E74726164610100490000000100055749445448020002000D000C4E6F6D65
      5F436C69656E74650100490000000100055749445448020002003C000A446174
      615F536169646104000600000000000C446174615F456E747261646104000600
      000000000653746174757301004900000001000557494454480200020001000D
      446174615F526567697374726F04000600000000000D456E74726164615F5361
      69646101004900000001000557494454480200020001000000}
    object cdsSerieNumeroSerie: TStringField
      FieldName = 'NumeroSerie'
      Size = 60
    end
    object cdsSerieEmpresa: TIntegerField
      FieldName = 'Empresa'
    end
    object cdsSerieProduto: TIntegerField
      FieldName = 'Produto'
    end
    object cdsSerieNotaFiscal: TStringField
      FieldName = 'NotaFiscal'
      Size = 13
    end
    object cdsSerieNotaEntrada: TStringField
      FieldName = 'NotaEntrada'
      Size = 13
    end
    object cdsSerieNome_Cliente: TStringField
      FieldName = 'Nome_Cliente'
      Size = 60
    end
    object cdsSerieData_Saida: TDateField
      FieldName = 'Data_Saida'
    end
    object cdsSerieData_Entrada: TDateField
      FieldName = 'Data_Entrada'
    end
    object cdsSerieStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object cdsSerieData_Registro: TDateField
      FieldName = 'Data_Registro'
    end
    object cdsSerieEntrada_Saida: TStringField
      FieldName = 'Entrada_Saida'
      Size = 1
    end
  end
end
