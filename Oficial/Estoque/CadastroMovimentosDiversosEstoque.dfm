inherited FormCadastroMovimentosDiversosEstoque: TFormCadastroMovimentosDiversosEstoque
  Left = 178
  Top = 137
  Caption = 'Movimenta'#231#245'es Diversas de Estoque'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCabecalho: TPanel
      inherited ScrollBoxPanelCabecalho: TScrollBox
        inherited Panel1: TPanel
          inherited PanelNavigator: TPanel
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              inherited LabelImpressao: TRxSpeedButton
                OnClick = LabelImpressaoClick
              end
            end
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Tag = 3
          Caption = '&3 Itens'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 67
            Height = 382
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 309
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'MOVDA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EMPRICODDESTINO'
                    Title.Caption = 'Emp.Destino'
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
                    FieldName = 'MOVDCCONLUIDO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OperacaoEstoqueCalcField'
                    Width = 214
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOVDA255OBS'
                    Width = 374
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
                Left = 7
                Top = 90
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
                Left = 5
                Top = 170
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
                Left = 134
                Top = 90
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
              object Label8: TLabel
                Left = 7
                Top = 129
                Width = 39
                Height = 13
                Caption = 'Cliente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 7
                Top = 51
                Width = 119
                Height = 13
                Caption = 'Opera'#231#227'o de Estoque'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object AcessaOperacaoEstoque: TSpeedButton
                Left = 494
                Top = 63
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
                Left = 524
                Top = 50
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
              object Label6: TLabel
                Left = 9
                Top = 5
                Width = 179
                Height = 13
                Caption = 'Empresa Destino do Movimento'
                FocusControl = DBEdit5
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ButtonEmpresa: TSpeedButton
                Left = 71
                Top = 19
                Width = 21
                Height = 21
                Hint = 'Acessa Cadastro Empresas'
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
                OnClick = ButtonEmpresaClick
              end
              object DBEdit3: TDBDateEdit
                Left = 3
                Top = 103
                Width = 112
                Height = 21
                DataField = 'MOVDDMOVIMENTO'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 5
              end
              object DBEdit4: TDBMemo
                Left = 2
                Top = 183
                Width = 616
                Height = 42
                DataField = 'MOVDA255OBS'
                DataSource = DSTemplate
                MaxLength = 255
                TabOrder = 8
              end
              object ComboConcluido: TRxDBComboBox
                Left = 130
                Top = 103
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
                TabOrder = 6
                Values.Strings = (
                  'S'
                  'N')
              end
              object ComboCliente: TRxDBLookupCombo
                Left = 3
                Top = 142
                Width = 616
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'CLIEA13ID'
                DataSource = DSTemplate
                DisplayEmpty = 'Selecione um Cliente'
                LookupField = 'CLIEA13ID'
                LookupDisplay = 'CLIEA60RAZAOSOC'
                LookupSource = DSSQLCliente
                TabOrder = 7
              end
              object DBEdit2: TDBEdit
                Left = 4
                Top = 64
                Width = 37
                Height = 21
                DataField = 'OPESICOD'
                DataSource = DSTemplate
                TabOrder = 2
                OnKeyDown = DBEdit2KeyDown
              end
              object ComboOperacao: TRxDBLookupCombo
                Left = 43
                Top = 64
                Width = 449
                Height = 21
                DropDownCount = 8
                DisplayAllFields = True
                DataField = 'OPESICOD'
                DataSource = DSTemplate
                DisplayEmpty = 'Selecione uma opera'#231#227'o'
                LookupField = 'OPESICOD'
                LookupDisplay = 'OPESICOD;OPESA60DESCR'
                LookupDisplayIndex = 1
                LookupSource = DSSQLOperacaoEstoque
                TabOrder = 3
              end
              object DBEdit7: TDBEdit
                Left = 519
                Top = 64
                Width = 133
                Height = 21
                TabStop = False
                BorderStyle = bsNone
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
                TabOrder = 4
              end
              object DBEdit5: TDBEdit
                Left = 5
                Top = 18
                Width = 64
                Height = 21
                DataField = 'EMPRICODDESTINO'
                DataSource = DSTemplate
                TabOrder = 0
                OnKeyDown = DBEdit2KeyDown
              end
              object DBEdit6: TDBEdit
                Left = 89
                Top = 18
                Width = 449
                Height = 21
                TabStop = False
                AutoSize = False
                DataField = 'EmpresaLookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 1
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
            Height = 28
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 28
            Height = 39
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
            object DBEdit1: TDBEdit
              Left = 4
              Top = 15
              Width = 112
              Height = 21
              DataField = 'MOVDA13ID'
              DataSource = DSTemplate
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object MnEncerraSequencia: TMenuItem
      Caption = 'Encerrar Movimentos em Sequencia'
      OnClick = MnEncerraSequenciaClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object MnRelatorioItensMovtoDiverso: TMenuItem
      Caption = 'Movimentos Diversos por Per'#237'odo'
      OnClick = MnRelatorioItensMovtoDiversoClick
    end
    object MnEtiquetasCdBarras: TMenuItem
      Caption = 'Etiquetas Codigo de Barras'
      OnClick = MnEtiquetasCdBarrasClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From MOVIMENTODIVERSO Where '
      'MOVDCTROCA <> '#39'S'#39' and (%MFiltro)'
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
    object SQLTemplateEMPRICODDESTINO: TIntegerField
      FieldName = 'EMPRICODDESTINO'
      Origin = 'DB.MOVIMENTODIVERSO.EMPRICODDESTINO'
    end
    object SQLTemplateOPESICOD: TIntegerField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Opera'#231#227'o de Estoque'
      FieldName = 'OPESICOD'
      Origin = 'DB.MOVIMENTODIVERSO.OPESICOD'
    end
    object SQLTemplateOperacaoEstoqueCalcField: TStringField
      DisplayLabel = 'Opera'#231#227'o Estoque'
      FieldKind = fkLookup
      FieldName = 'OperacaoEstoqueCalcField'
      LookupDataSet = SQLOperacaoEstoque
      LookupKeyFields = 'OPESICOD'
      LookupResultField = 'OPESA60DESCR'
      KeyFields = 'OPESICOD'
      Visible = False
      Size = 60
      Lookup = True
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
    object SQLTemplateEmpresaLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = TblEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICOD'
      Visible = False
      Size = 60
      Lookup = True
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
      FieldName = 'FORNICOD'
      Origin = 'DB.MOVIMENTODIVERSO.FORNICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.MOVIMENTODIVERSO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select OPESICOD,OPESA60DESCR from OperacaoEstoque')
    Macros = <>
    Left = 22
    Top = 190
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
  object TblEmpresa: TTable
    DatabaseName = 'DB'
    TableName = 'EMPRESA'
    Left = 22
    Top = 218
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
  object DSSQLOperacaoEstoque: TDataSource
    DataSet = SQLOperacaoEstoque
    Left = 50
    Top = 190
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 50
    Top = 263
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  CLIEA13ID, '
      '  CLIEA60RAZAOSOC '
      'From '
      '  CLIENTE'
      'Order by'
      '  CLIEA60RAZAOSOC')
    Macros = <>
    Left = 22
    Top = 263
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
end
