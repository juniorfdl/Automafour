inherited FormCadastroTrocas: TFormCadastroTrocas
  Left = 222
  Top = 108
  Caption = 'Movimenta'#231#245'es de Trocas'
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
          Tag = 3
          Top = 60
          Caption = '&3 Itens'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 75
            Height = 374
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 301
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'MOVDA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOVDDMOVIMENTO'
                    Width = 83
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FornecedorRazao'
                    Title.Caption = 'Raz'#227'o Social'
                    Width = 350
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOVDCCONLUIDO'
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
                Top = 159
                Lines.Strings = (
                  'MOVIMENTODIVERSOITEM')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 5
                Top = 2
                Width = 27
                Height = 13
                Caption = 'Data'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 6
                Top = 44
                Width = 67
                Height = 13
                Caption = 'Observa'#231#227'o'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 119
                Top = 2
                Width = 54
                Height = 13
                Caption = 'Conclu'#237'do'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 239
                Top = 2
                Width = 119
                Height = 13
                Caption = 'Opera'#231#227'o de Estoque'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 7
                Top = 114
                Width = 37
                Height = 13
                Caption = 'Status'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBDateEdit
                Left = 2
                Top = 15
                Width = 112
                Height = 21
                DataField = 'MOVDDMOVIMENTO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 0
              end
              object DBEdit4: TDBMemo
                Left = 2
                Top = 57
                Width = 612
                Height = 40
                DataField = 'MOVDA255OBS'
                DataSource = DSTemplate
                MaxLength = 255
                TabOrder = 4
              end
              object ComboConcluido: TRxDBComboBox
                Left = 116
                Top = 15
                Width = 112
                Height = 21
                Style = csDropDownList
                DataField = 'MOVDCCONLUIDO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 1
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit5: TDBEdit
                Left = 236
                Top = 15
                Width = 51
                Height = 21
                DataField = 'OPESICOD'
                DataSource = DSTemplate
                TabOrder = 2
                OnKeyDown = DBEdit2KeyDown
              end
              object ComboOpEst: TRxDBLookupCombo
                Left = 288
                Top = 15
                Width = 327
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'OPESICOD'
                DataSource = DSTemplate
                DisplayEmpty = 'Selecione uma Opera'#231#227'o de Estoque'
                LookupField = 'OPESICOD'
                LookupDisplay = 'OPESA60DESCR'
                LookupDisplayIndex = 1
                LookupSource = DSSQLOperacaoEstoque
                TabOrder = 3
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 4
                Top = 127
                Width = 269
                Height = 21
                Style = csDropDownList
                DataField = 'MOVDCTROCASTAT'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Separado'
                  'Enviado'
                  'Recebido')
                TabOrder = 5
                Values.Strings = (
                  'S'
                  'E'
                  'R')
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
            Height = 28
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 28
            Height = 47
            object Label1: TLabel
              Left = 8
              Top = 2
              Width = 52
              Height = 13
              Caption = 'ID Movto'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 122
              Top = 2
              Width = 64
              Height = 13
              Caption = 'Fornecedor'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object AcessaOperacaoEstoque: TSpeedButton
              Left = 532
              Top = 14
              Width = 21
              Height = 21
              Hint = 'Acessa Opera'#231#245'es de Estoque'
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
              OnClick = AcessaOperacaoEstoqueClick
            end
            object Label7: TLabel
              Left = 557
              Top = 1
              Width = 43
              Height = 13
              Caption = 'Usu'#225'rio'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 4
              Top = 15
              Width = 112
              Height = 21
              DataField = 'MOVDA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 119
              Top = 15
              Width = 51
              Height = 21
              DataField = 'FORNICOD'
              DataSource = DSTemplate
              TabOrder = 1
              OnKeyDown = DBEdit2KeyDown
            end
            object DBEdit7: TDBEdit
              Left = 556
              Top = 15
              Width = 83
              Height = 21
              TabStop = False
              DataField = 'USUAA60LOGIN'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object ComboFornecedor: TRxDBLookupCombo
              Left = 171
              Top = 15
              Width = 360
              Height = 21
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'FORNICOD'
              DataSource = DSTemplate
              DisplayEmpty = 'Selecione um Fornecedor'
              LookupField = 'FORNICOD'
              LookupDisplay = 'FORNA60RAZAOSOC'
              LookupDisplayIndex = 1
              LookupSource = DSSQLFornecedor
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnTrocarStatusparaEnviadoaoFornecedor: TMenuItem
      Caption = 'Trocar Status para Enviado ao Fornecedor'
      OnClick = MnTrocarStatusparaEnviadoaoFornecedorClick
    end
    object rocarStatusparaRecebidodoFornecedor1: TMenuItem
      Caption = 'Trocar Status para Recebido do Fornecedor'
      OnClick = rocarStatusparaRecebidodoFornecedor1Click
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MnTrocas: TMenuItem
      Caption = 'Troca Atual'
      OnClick = MnTrocasClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * '
      'From MOVIMENTODIVERSO '
      'Where '
      'MOVDCTROCA = '#39'S'#39' and '
      '(%MFiltro) and '
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
    object SQLTemplateMOVDA13ID: TStringField
      Tag = 2
      DisplayLabel = 'ID'
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'EMPRICOD'
      Origin = 'DB.MOVIMENTODIVERSO.EMPRICOD'
    end
    object SQLTemplateMOVDICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd.Mov.Div.'
      FieldName = 'MOVDICOD'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDICOD'
    end
    object SQLTemplateMOVDDMOVIMENTO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'MOVDDMOVIMENTO'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDDMOVIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateMOVDA255OBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'MOVDA255OBS'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDA255OBS'
      FixedChar = True
      Size = 255
    end
    object SQLTemplateMOVDCCONLUIDO: TStringField
      DisplayLabel = 'Conclu'#237'do'
      FieldName = 'MOVDCCONLUIDO'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDCCONLUIDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.MOVIMENTODIVERSO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.MOVIMENTODIVERSO.REGISTRO'
    end
    object SQLTemplateUSUAA60LOGIN: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.MOVIMENTODIVERSO.USUAA60LOGIN'
      Visible = False
      FixedChar = True
      Size = 60
    end
    object SQLTemplateUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.MOVIMENTODIVERSO.USUAICOD'
    end
    object SQLTemplateMOVDCTROCA: TStringField
      FieldName = 'MOVDCTROCA'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDCTROCA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateFORNICOD: TIntegerField
      DisplayLabel = 'Cd.Fornec'
      FieldName = 'FORNICOD'
      Origin = 'DB.MOVIMENTODIVERSO.FORNICOD'
    end
    object SQLTemplateFornecedorRazao: TStringField
      FieldKind = fkLookup
      FieldName = 'FornecedorRazao'
      LookupDataSet = SQLFornecedor
      LookupKeyFields = 'FORNICOD'
      LookupResultField = 'FORNA60RAZAOSOC'
      KeyFields = 'FORNICOD'
      Size = 30
      Lookup = True
    end
    object SQLTemplateOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.MOVIMENTODIVERSO.OPESICOD'
    end
    object SQLTemplateMOVDCTROCASTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'MOVDCTROCASTAT'
      Origin = 'DB.MOVIMENTODIVERSO.MOVDCTROCASTAT'
      FixedChar = True
      Size = 1
    end
  end
  object SQLItens: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'MOVIMENTODIVERSOITEM'
      'Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 437
    Top = 1
    object SQLItensMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLItensMVDIIITEM: TIntegerField
      FieldName = 'MVDIIITEM'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIIITEM'
    end
    object SQLItensPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PRODICOD'
    end
    object SQLItensMVDIN3QTD: TFloatField
      FieldName = 'MVDIN3QTD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIN3QTD'
    end
    object SQLItensLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
  end
  object SQLProdutoSerie: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PRODUTOSERIE'
      'WHERE'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 50
    Top = 218
    object SQLProdutoSeriePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSERIE.PRODICOD'
    end
    object SQLProdutoSeriePRSEA60NROSERIE: TStringField
      FieldName = 'PRSEA60NROSERIE'
      Origin = 'DB.PRODUTOSERIE.PRSEA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoSeriePRSECSTATUS: TStringField
      FieldName = 'PRSECSTATUS'
      Origin = 'DB.PRODUTOSERIE.PRSECSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoSerieEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSERIE.EMPRICOD'
    end
    object SQLProdutoSerieEMPRICODDEST: TIntegerField
      FieldName = 'EMPRICODDEST'
      Origin = 'DB.PRODUTOSERIE.EMPRICODDEST'
    end
    object SQLProdutoSerieFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.PRODUTOSERIE.FORNICOD'
    end
    object SQLProdutoSerieCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PRODUTOSERIE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.PRODUTOSERIE.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.PRODUTOSERIE.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.PRODUTOSERIE.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSeriePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PRODUTOSERIE.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieOSA13ID: TStringField
      FieldName = 'OSA13ID'
      Origin = 'DB.PRODUTOSERIE.OSA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSerieMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      Origin = 'DB.PRODUTOSERIE.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLProdutoSeriePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoSerieREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSERIE.REGISTRO'
    end
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from Fornecedor')
    Macros = <>
    Left = 22
    Top = 260
    object SQLFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.FORNECEDOR.FORNICOD'
    end
    object SQLFornecedorFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      Origin = 'DB.FORNECEDOR.FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      Origin = 'DB.FORNECEDOR.FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorTPFRICOD: TIntegerField
      FieldName = 'TPFRICOD'
      Origin = 'DB.FORNECEDOR.TPFRICOD'
    end
    object SQLFornecedorFORNA60CONTATO: TStringField
      FieldName = 'FORNA60CONTATO'
      Origin = 'DB.FORNECEDOR.FORNA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNCFISJURID: TStringField
      FieldName = 'FORNCFISJURID'
      Origin = 'DB.FORNECEDOR.FORNCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLFornecedorFORNA14CGC: TStringField
      FieldName = 'FORNA14CGC'
      Origin = 'DB.FORNECEDOR.FORNA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLFornecedorFORNA20IE: TStringField
      FieldName = 'FORNA20IE'
      Origin = 'DB.FORNECEDOR.FORNA20IE'
      FixedChar = True
    end
    object SQLFornecedorFORNA11CPF: TStringField
      FieldName = 'FORNA11CPF'
      Origin = 'DB.FORNECEDOR.FORNA11CPF'
      FixedChar = True
    end
    object SQLFornecedorFORNA10RG: TStringField
      FieldName = 'FORNA10RG'
      Origin = 'DB.FORNECEDOR.FORNA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLFornecedorFORNA60END: TStringField
      FieldName = 'FORNA60END'
      Origin = 'DB.FORNECEDOR.FORNA60END'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA60BAI: TStringField
      FieldName = 'FORNA60BAI'
      Origin = 'DB.FORNECEDOR.FORNA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA60CID: TStringField
      FieldName = 'FORNA60CID'
      Origin = 'DB.FORNECEDOR.FORNA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA2UF: TStringField
      FieldName = 'FORNA2UF'
      Origin = 'DB.FORNECEDOR.FORNA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLFornecedorFORNA8CEP: TStringField
      FieldName = 'FORNA8CEP'
      Origin = 'DB.FORNECEDOR.FORNA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLFornecedorFORNA15FONE1: TStringField
      FieldName = 'FORNA15FONE1'
      Origin = 'DB.FORNECEDOR.FORNA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLFornecedorFORNA15FONE2: TStringField
      FieldName = 'FORNA15FONE2'
      Origin = 'DB.FORNECEDOR.FORNA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLFornecedorFORNA15FAX: TStringField
      FieldName = 'FORNA15FAX'
      Origin = 'DB.FORNECEDOR.FORNA15FAX'
      FixedChar = True
    end
    object SQLFornecedorFORNA60EMAIL: TStringField
      FieldName = 'FORNA60EMAIL'
      Origin = 'DB.FORNECEDOR.FORNA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNA60URL: TStringField
      FieldName = 'FORNA60URL'
      Origin = 'DB.FORNECEDOR.FORNA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLFornecedorFORNTOBS: TStringField
      FieldName = 'FORNTOBS'
      Origin = 'DB.FORNECEDOR.FORNTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLFornecedorPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.FORNECEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLFornecedorREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.FORNECEDOR.REGISTRO'
    end
    object SQLFornecedorFORNA30CODCONTABIL: TStringField
      FieldName = 'FORNA30CODCONTABIL'
      Origin = 'DB.FORNECEDOR.FORNA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
    object SQLFornecedorPLCTA15CODDEBITO: TStringField
      FieldName = 'PLCTA15CODDEBITO'
      Origin = 'DB.FORNECEDOR.PLCTA15CODDEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLFornecedorRAMOICOD: TIntegerField
      FieldName = 'RAMOICOD'
      Origin = 'DB.FORNECEDOR.RAMOICOD'
    end
    object SQLFornecedorSRAMICOD: TIntegerField
      FieldName = 'SRAMICOD'
      Origin = 'DB.FORNECEDOR.SRAMICOD'
    end
    object SQLFornecedorFORNA30LOCCATALOG: TStringField
      FieldName = 'FORNA30LOCCATALOG'
      Origin = 'DB.FORNECEDOR.FORNA30LOCCATALOG'
      FixedChar = True
      Size = 30
    end
    object SQLFornecedorFORNCTEMCATALOG: TStringField
      FieldName = 'FORNCTEMCATALOG'
      Origin = 'DB.FORNECEDOR.FORNCTEMCATALOG'
      FixedChar = True
      Size = 1
    end
    object SQLFornecedorFORNA15CODNOFORN: TStringField
      FieldName = 'FORNA15CODNOFORN'
      Origin = 'DB.FORNECEDOR.FORNA15CODNOFORN'
      FixedChar = True
      Size = 15
    end
    object SQLFornecedorFORNCPERMITETROCA: TStringField
      FieldName = 'FORNCPERMITETROCA'
      Origin = 'DB.FORNECEDOR.FORNCPERMITETROCA'
      FixedChar = True
      Size = 1
    end
    object SQLFornecedorFORNDCAD: TDateTimeField
      FieldName = 'FORNDCAD'
      Origin = 'DB.FORNECEDOR.FORNDCAD'
    end
    object SQLFornecedorREPRICOD: TIntegerField
      FieldName = 'REPRICOD'
      Origin = 'DB.FORNECEDOR.REPRICOD'
    end
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 50
    Top = 260
  end
  object TblImpressao: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'ImprPedidoCompra.DB'
    Left = 496
    Top = 2
    object TblImpressaoNumeroPedido: TStringField
      FieldName = 'NumeroPedido'
      Size = 13
    end
    object TblImpressaoDataEmissaoPedido: TDateField
      FieldName = 'DataEmissaoPedido'
    end
    object TblImpressaoNomeEmissor: TStringField
      FieldName = 'NomeEmissor'
      Size = 60
    end
    object TblImpressaoEnderecoEmissor: TStringField
      FieldName = 'EnderecoEmissor'
      Size = 60
    end
    object TblImpressaoBairroEmissor: TStringField
      FieldName = 'BairroEmissor'
      Size = 60
    end
    object TblImpressaoCidadeEmissor: TStringField
      FieldName = 'CidadeEmissor'
      Size = 60
    end
    object TblImpressaoEstadoEmissor: TStringField
      FieldName = 'EstadoEmissor'
      Size = 2
    end
    object TblImpressaoCGCEmissor: TStringField
      FieldName = 'CGCEmissor'
    end
    object TblImpressaoFoneEmissor: TStringField
      FieldName = 'FoneEmissor'
      Size = 15
    end
    object TblImpressaoFaxEmissor: TStringField
      FieldName = 'FaxEmissor'
      Size = 15
    end
    object TblImpressaoIEEmissor: TStringField
      FieldName = 'IEEmissor'
      Size = 15
    end
    object TblImpressaoEmailEmissor: TStringField
      FieldName = 'EmailEmissor'
      Size = 60
    end
    object TblImpressaoCepEmissor: TStringField
      FieldName = 'CepEmissor'
      Size = 8
    end
    object TblImpressaoCodigoFornecedor: TIntegerField
      FieldName = 'CodigoFornecedor'
    end
    object TblImpressaoNomeFornecedor: TStringField
      FieldName = 'NomeFornecedor'
      Size = 60
    end
    object TblImpressaoEnderecoFornecedor: TStringField
      FieldName = 'EnderecoFornecedor'
      Size = 60
    end
    object TblImpressaoBairroFornecedor: TStringField
      FieldName = 'BairroFornecedor'
      Size = 60
    end
    object TblImpressaoCidadeFornecedor: TStringField
      FieldName = 'CidadeFornecedor'
      Size = 60
    end
    object TblImpressaoUFFornecedor: TStringField
      FieldName = 'UFFornecedor'
      Size = 2
    end
    object TblImpressaoFoneFornecedor: TStringField
      FieldName = 'FoneFornecedor'
      Size = 15
    end
    object TblImpressaoFaxFornecedor: TStringField
      FieldName = 'FaxFornecedor'
      Size = 15
    end
    object TblImpressaoObservacaoPedido: TStringField
      FieldName = 'ObservacaoPedido'
      Size = 254
    end
    object TblImpressaoPrevisaoEntregaPedido: TDateField
      FieldName = 'PrevisaoEntregaPedido'
    end
    object TblImpressaoCodigoProduto: TIntegerField
      FieldName = 'CodigoProduto'
    end
    object TblImpressaoReferenciaProduto: TStringField
      FieldName = 'ReferenciaProduto'
    end
    object TblImpressaoDescricaoProduto: TStringField
      FieldName = 'DescricaoProduto'
      Size = 60
    end
    object TblImpressaoMarcaProduto: TStringField
      FieldName = 'MarcaProduto'
      Size = 30
    end
    object TblImpressaoCorProduto: TStringField
      FieldName = 'CorProduto'
      Size = 30
    end
    object TblImpressaoTamanhoProduto: TStringField
      FieldName = 'TamanhoProduto'
      Size = 5
    end
    object TblImpressaoVlrIPIProduto: TFloatField
      FieldName = 'VlrIPIProduto'
    end
    object TblImpressaoQuantidadeProduto: TFloatField
      FieldName = 'QuantidadeProduto'
    end
    object TblImpressaoVlrUnitarioProduto: TFloatField
      FieldName = 'VlrUnitarioProduto'
    end
    object TblImpressaoVlrEmbalProduto: TFloatField
      FieldName = 'VlrEmbalProduto'
    end
    object TblImpressaoVlrEncargos: TFloatField
      FieldName = 'VlrEncargos'
    end
    object TblImpressaoVlrFrete: TFloatField
      FieldName = 'VlrFrete'
    end
    object TblImpressaoVlrDescPromo: TFloatField
      FieldName = 'VlrDescPromo'
    end
    object TblImpressaoTipoFrete: TStringField
      FieldName = 'TipoFrete'
      Size = 5
    end
    object TblImpressaoNomeCompradorEmissor: TStringField
      FieldName = 'NomeCompradorEmissor'
      Size = 60
    end
    object TblImpressaoNomeVendedorFornecedor: TStringField
      FieldName = 'NomeVendedorFornecedor'
      Size = 60
    end
    object TblImpressaoNomeTransportadora: TStringField
      FieldName = 'NomeTransportadora'
      Size = 60
    end
    object TblImpressaoVencimentos: TMemoField
      FieldName = 'Vencimentos'
      BlobType = ftMemo
    end
    object TblImpressaoPlanoPgtoDescricao: TStringField
      FieldName = 'PlanoPgtoDescricao'
      Size = 60
    end
    object TblImpressaoUnidade: TStringField
      FieldName = 'Unidade'
      Size = 5
    end
    object TblImpressaoEmailFornecedor: TStringField
      FieldName = 'EmailFornecedor'
      Size = 60
    end
    object TblImpressaoOperacaoEstoque: TStringField
      FieldName = 'OperacaoEstoque'
      Size = 30
    end
    object TblImpressaoMarca: TStringField
      FieldName = 'Marca'
      Size = 15
    end
  end
  object ImpTroca: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 525
    Top = 1
  end
  object SQLTrocaItem: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from MovimentoDiversoItem where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 50
    Top = 312
    object SQLTrocaItemMOVDA13ID: TStringField
      FieldName = 'MOVDA13ID'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MOVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTrocaItemMVDIIITEM: TIntegerField
      FieldName = 'MVDIIITEM'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIIITEM'
    end
    object SQLTrocaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.PRODICOD'
    end
    object SQLTrocaItemMVDIN3QTD: TFloatField
      FieldName = 'MVDIN3QTD'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIN3QTD'
    end
    object SQLTrocaItemLOTEA30NRO: TStringField
      FieldName = 'LOTEA30NRO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.LOTEA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLTrocaItemMVDIN3VLRCUSTO: TFloatField
      FieldName = 'MVDIN3VLRCUSTO'
      Origin = 'DB.MOVIMENTODIVERSOITEM.MVDIN3VLRCUSTO'
    end
  end
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 50
    Top = 185
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select OPESICOD,OPESA60DESCR from OperacaoEstoque')
    Macros = <>
    Left = 22
    Top = 185
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
