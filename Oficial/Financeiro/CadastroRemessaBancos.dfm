inherited FormCadastroRemessaBancos: TFormCadastroRemessaBancos
  Left = 512
  Top = 102
  Caption = 'Remessa para Bancos'
  ClientWidth = 798
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 798
    inherited PanelCabecalho: TPanel
      Width = 796
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 796
        inherited Panel1: TPanel
          Width = 794
          inherited PanelNavigator: TPanel
            Width = 794
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 794
            end
          end
          inherited PanelLeft: TPanel
            Left = 337
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 796
      inherited PanelBarra: TPanel
        inherited Button3: TRxSpeedButton
          Caption = '&3 T'#237'tulos'
          Visible = True
          OnClick = Button3Click
        end
      end
      inherited PanelFundoDados: TPanel
        Width = 666
        inherited Panel5: TPanel
          Width = 666
          inherited PagePrincipal: TPageControl
            Width = 666
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 658
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'RMBCICOD'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RMBCDEMIS'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 658
                inherited PanelBetween: TPanel
                  Width = 264
                  inherited AdvPanel1: TAdvPanel
                    Width = 264
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 264
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 264
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
                Width = 204
                Lines.Strings = (
                  'REMESSABANCOCONTASRECEBER')
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 0
                Top = 77
                Width = 78
                Height = 13
                Caption = '1'#170' Mensagem'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 164
                Top = 77
                Width = 78
                Height = 13
                Caption = '2'#170' Mensagem'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 417
                Top = 0
                Width = 61
                Height = 13
                Caption = 'Ocorr'#234'ncia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = -1
                Top = 39
                Width = 132
                Height = 13
                Caption = '1'#170' Instru'#231#227'o Codificada'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 0
                Top = 0
                Width = 35
                Height = 13
                Caption = 'Config'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ButtonCadastroConfig: TSpeedButton
                Left = 88
                Top = 15
                Width = 25
                Height = 21
                Hint = 'Acessa Cadastro de Configura'#231#245'es de Bancos'
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
                OnClick = ButtonCadastroConfigClick
              end
              object Label13: TLabel
                Left = 163
                Top = 39
                Width = 132
                Height = 13
                Caption = '2'#170' Instru'#231#227'o Codificada'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 0
                Top = 93
                Width = 160
                Height = 21
                DataField = 'RMBCA12PRIMSG'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit4: TDBEdit
                Left = 164
                Top = 93
                Width = 493
                Height = 21
                DataField = 'RMBCA60SEGMSG'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object ComboOcorrencia: TRxDBComboBox
                Left = 417
                Top = 15
                Width = 240
                Height = 21
                Style = csDropDownList
                DataField = 'RMBCA2IDOCORRENCIA'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Remessa'
                  'Pedido de Baixa'
                  'Concess'#227'o de Abatimento'
                  'Cancelamento de Abatimento Concedido'
                  'Altera'#231#227'o de Vencimento'
                  'Altera'#231#227'o do Controle do Participante'
                  'Altera'#231#227'o de seu N'#250'mero'
                  'Pedido de Protesto'
                  'Sustar Protesto e Baixar T'#237'tulo'
                  'Sustar Protesto e Manter em Carteira'
                  'Altera'#231#227'o de Outros Dados'
                  'Desagendamento do D'#233'bito Autom'#225'tico'
                  'Acerto nos Dados do Rateio de Cr'#233'dito'
                  'Cancelamento do Rateio de Cr'#233'dito')
                TabOrder = 1
                Values.Strings = (
                  '01'
                  '02'
                  '04'
                  '05'
                  '06'
                  '07'
                  '08'
                  '09'
                  '18'
                  '19'
                  '31'
                  '35'
                  '68'
                  '69')
              end
              object ComboPrimeiraInstrucao: TRxDBComboBox
                Left = 409
                Top = 53
                Width = 255
                Height = 21
                Style = csDropDownList
                DataField = 'RMBCA2PRIINSTRUCAO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Protestar no 5'#186' Dia '#218'til Ap'#243's o Vencimento'
                  'Protesto'
                  'N'#227'o Cobrar Juros de Mora'
                  'N'#227'o Receber Ap'#243's o Vencimento'
                  'N'#227'o Receber Ap'#243's o 8'#186' Dia do Vencimento'
                  'Cobrar Encargos Ap'#243's o 5'#186' Dia do Vencimento'
                  'Cobrar Encargos Ap'#243's o 10'#186' Dia do Vencimento'
                  'Cobrar Encargos Ap'#243's o 15'#186' Dia do Vencimento'
                  'Conceder Desconto Mesmo se Pago Ap'#243's o Vencimento')
                TabOrder = 7
                Values.Strings = (
                  '01'
                  '06'
                  '08'
                  '09'
                  '11'
                  '12'
                  '13'
                  '14'
                  '15')
                Visible = False
              end
              object DBEdit8: TDBEdit
                Left = 0
                Top = 15
                Width = 90
                Height = 21
                DataField = 'CFRBA13ID'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit9: TDBEdit
                Left = 114
                Top = 15
                Width = 299
                Height = 21
                TabStop = False
                Color = 16249066
                DataField = 'CFRBA60DESCR'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit10: TDBEdit
                Left = 163
                Top = 54
                Width = 158
                Height = 21
                DataField = 'RMBCA2SEGINSTRUCAO'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit6: TDBEdit
                Left = 1
                Top = 54
                Width = 158
                Height = 21
                DataField = 'RMBCA2PRIINSTRUCAO'
                DataSource = DSTemplate
                TabOrder = 2
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 666
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 666
            object Label1: TLabel
              Left = 6
              Top = 3
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
              Left = 111
              Top = 3
              Width = 93
              Height = 13
              Caption = 'Data de Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 222
              Top = 3
              Width = 74
              Height = 13
              Caption = '% Juros A.M.'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 315
              Top = 3
              Width = 69
              Height = 13
              Caption = '% Desconto'
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
              Top = 16
              Width = 101
              Height = 21
              DataField = 'RMBCICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBDateEdit
              Left = 109
              Top = 16
              Width = 108
              Height = 21
              DataField = 'RMBCDEMIS'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 1
            end
            object DBEdit5: TDBEdit
              Left = 220
              Top = 16
              Width = 90
              Height = 21
              DataField = 'RMBCN2VLRDIAATRASO'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit7: TDBEdit
              Left = 313
              Top = 16
              Width = 90
              Height = 21
              DataField = 'RMBCN2VLRDESCONTO'
              DataSource = DSTemplate
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object CriarArquivodeRemessa1: TMenuItem
      Caption = 'Criar Arquivo de Remessa'
      OnClick = CriarArquivodeRemessa1Click
      object MnADMRemCNAB400: TMenuItem
        Caption = 'cNAB-400'
        OnClick = MnADMRemCNAB400Click
      end
      object MnADMRemBanrisul: TMenuItem
        Caption = 'Banrisul'
        OnClick = MnADMRemBanrisulClick
      end
    end
    object ReceberArquivoRetorno1: TMenuItem
      Caption = 'Receber Arquivo Retorno'
      object Banrisul2: TMenuItem
        Caption = 'Banrisul'
        OnClick = Banrisul2Click
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 2
    SQL.Strings = (
      'Select * From REMESSABANCO Where (%MFiltro)')
    object SQLTemplateRMBCA13ID: TStringField
      Tag = 2
      FieldName = 'RMBCA13ID'
      Origin = 'DB.REMESSABANCO.RMBCA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.REMESSABANCO.EMPRICOD'
      Visible = False
    end
    object SQLTemplateRMBCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'RMBCICOD'
      Origin = 'DB.REMESSABANCO.RMBCICOD'
      Visible = False
    end
    object SQLTemplateBANCA5COD: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCA5COD'
      Origin = 'DB.REMESSABANCO.BANCA5COD'
      Visible = False
      FixedChar = True
      Size = 5
    end
    object SQLTemplateRMBCDEMIS: TDateTimeField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'RMBCDEMIS'
      Origin = 'DB.REMESSABANCO.RMBCDEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplateCFRBA13ID: TStringField
      DisplayLabel = 'ID Config'
      FieldName = 'CFRBA13ID'
      Origin = 'DB.REMESSABANCO.CFRBA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCFRBA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'CFRBA60DESCR'
      LookupDataSet = TableConfigRemessa
      LookupKeyFields = 'CFRBA13ID'
      LookupResultField = 'CFRBA60DESCR'
      KeyFields = 'CFRBA13ID'
      Size = 60
      Lookup = True
    end
    object SQLTemplateRMBCA2IDOCORRENCIA: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'RMBCA2IDOCORRENCIA'
      Origin = 'DB.REMESSABANCO.RMBCA2IDOCORRENCIA'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateRMBCA2PRIINSTRUCAO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = '1'#170' Instru'#231#227'o'
      FieldName = 'RMBCA2PRIINSTRUCAO'
      Origin = 'DB.REMESSABANCO.RMBCA2PRIINSTRUCAO'
      OnChange = SQLTemplateRMBCA2PRIINSTRUCAOChange
      FixedChar = True
      Size = 2
    end
    object SQLTemplateRMBCA2SEGINSTRUCAO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = '2'#170' Instru'#231#227'o'
      FieldName = 'RMBCA2SEGINSTRUCAO'
      Origin = 'DB.REMESSABANCO.RMBCA2SEGINSTRUCAO'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateRMBCA12PRIMSG: TStringField
      DisplayLabel = '1'#170' Mensagem'
      FieldName = 'RMBCA12PRIMSG'
      Origin = 'DB.REMESSABANCO.RMBCA12PRIMSG'
      FixedChar = True
      Size = 12
    end
    object SQLTemplateRMBCA60SEGMSG: TStringField
      DisplayLabel = '2'#170' Mensagem'
      FieldName = 'RMBCA60SEGMSG'
      Origin = 'DB.REMESSABANCO.RMBCA60SEGMSG'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateRMBCN2VLRDIAATRASO: TFloatField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Valor Atraso'
      FieldName = 'RMBCN2VLRDIAATRASO'
      Origin = 'DB.REMESSABANCO.RMBCN2VLRDIAATRASO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateRMBCDLIMDESCONTO: TDateTimeField
      DisplayLabel = 'Data Limite de Desconto'
      FieldName = 'RMBCDLIMDESCONTO'
      Origin = 'DB.REMESSABANCO.RMBCDLIMDESCONTO'
    end
    object SQLTemplateRMBCN2VLRDESCONTO: TFloatField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Valor Desconto'
      FieldName = 'RMBCN2VLRDESCONTO'
      Origin = 'DB.REMESSABANCO.RMBCN2VLRDESCONTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.REMESSABANCO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.REMESSABANCO.REGISTRO'
    end
  end
  object SQLTitulos: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'Select * From REMESSABANCOCONTASRECEBER Where '
      'RMBCICOD=:RMBCICOD')
    Macros = <>
    Left = 35
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RMBCICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLTitulosRMBCICOD: TIntegerField
      FieldName = 'RMBCICOD'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RMBCICOD'
    end
    object SQLTitulosCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTitulosREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.REGISTRO'
    end
    object SQLTitulosPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTitulosRBCRA60STATUS: TStringField
      FieldName = 'RBCRA60STATUS'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RBCRA60STATUS'
      FixedChar = True
      Size = 60
    end
    object SQLTitulosRBCRDSTATUS: TDateTimeField
      FieldName = 'RBCRDSTATUS'
      Origin = 'DB.REMESSABANCOCONTASRECEBER.RBCRDSTATUS'
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From Empresa Where EMPRICOD=:EMPRICOD')
    Macros = <>
    Left = 7
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMPRICOD'
        ParamType = ptUnknown
      end>
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRCMATRIZFILIAL: TStringField
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'DB.EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLEmpresaEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLEmpresaEMPRCFISJURID: TStringField
      FieldName = 'EMPRCFISJURID'
      Origin = 'DB.EMPRESA.EMPRCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA11CPF: TStringField
      FieldName = 'EMPRA11CPF'
      Origin = 'DB.EMPRESA.EMPRA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLEmpresaEMPRA10RG: TStringField
      FieldName = 'EMPRA10RG'
      Origin = 'DB.EMPRESA.EMPRA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLEmpresaEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60URL: TStringField
      FieldName = 'EMPRA60URL'
      Origin = 'DB.EMPRESA.EMPRA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EMPRESA.REGISTRO'
    end
    object SQLEmpresaEMPRA100INFSPC: TStringField
      FieldName = 'EMPRA100INFSPC'
      Origin = 'DB.EMPRESA.EMPRA100INFSPC'
      FixedChar = True
      Size = 100
    end
  end
  object SQLContaReceber: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLTitulos
    SQL.Strings = (
      'SELECT * FROM CONTASRECEBER'
      'WHERE'
      'CTRCA13ID = :CTRCA13ID')
    Macros = <>
    Left = 31
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
      end>
    object SQLContaReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContaReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContaReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContaReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContaReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContaReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContaReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContaReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContaReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContaReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLContaReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContaReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContaReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLContaReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
    end
    object SQLContaReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContaReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContaReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLContaReceberCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
    end
    object SQLContaReceberCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
    end
    object SQLContaReceberCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
    end
    object SQLContaReceberCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
    end
    object SQLContaReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContaReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContaReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContaReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContaReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContaReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContaReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLContaReceberPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContaReceberREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLContaReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContaReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContaReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContaReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContaReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContaReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContaReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContaReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLContaReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLContaReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContaReceberCTRCDESTORNO: TDateTimeField
      FieldName = 'CTRCDESTORNO'
      Origin = 'DB.CONTASRECEBER.CTRCDESTORNO'
    end
    object SQLContaReceberFRETA13ID: TStringField
      FieldName = 'FRETA13ID'
      Origin = 'DB.CONTASRECEBER.FRETA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 59
    Top = 256
  end
  object QueryBanco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM BANCO')
    Macros = <>
    Left = 35
    Top = 188
  end
  object SQLConfigRemessa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CONFIGREMESSABANCO')
    Macros = <>
    Left = 7
    Top = 188
    object SQLConfigRemessaCFRBA13ID: TStringField
      FieldName = 'CFRBA13ID'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLConfigRemessaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONFIGREMESSABANCO.EMPRICOD'
    end
    object SQLConfigRemessaCFRBICOD: TIntegerField
      FieldName = 'CFRBICOD'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBICOD'
    end
    object SQLConfigRemessaCFRBA60DESCR: TStringField
      FieldName = 'CFRBA60DESCR'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLConfigRemessaCFRBA20CODEMPRESA: TStringField
      FieldName = 'CFRBA20CODEMPRESA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA20CODEMPRESA'
      FixedChar = True
    end
    object SQLConfigRemessaCFRBA30NOMEMPRESA: TStringField
      FieldName = 'CFRBA30NOMEMPRESA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA30NOMEMPRESA'
      FixedChar = True
      Size = 30
    end
    object SQLConfigRemessaCFRBA2CODCARTEIRA: TStringField
      FieldName = 'CFRBA2CODCARTEIRA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA2CODCARTEIRA'
      FixedChar = True
      Size = 2
    end
    object SQLConfigRemessaCFRBA4CODAGENCIA: TStringField
      FieldName = 'CFRBA4CODAGENCIA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA4CODAGENCIA'
      FixedChar = True
      Size = 4
    end
    object SQLConfigRemessaCFRBA6CONTACORRE: TStringField
      FieldName = 'CFRBA6CONTACORRE'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA6CONTACORRE'
      FixedChar = True
      Size = 6
    end
    object SQLConfigRemessaCFRBA1DIGCONTA: TStringField
      FieldName = 'CFRBA1DIGCONTA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA1DIGCONTA'
      FixedChar = True
      Size = 1
    end
    object SQLConfigRemessaCFRBA1RATEIOCRED: TStringField
      FieldName = 'CFRBA1RATEIOCRED'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA1RATEIOCRED'
      FixedChar = True
      Size = 1
    end
    object SQLConfigRemessaBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CONFIGREMESSABANCO.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLConfigRemessaCFRBTPATH: TMemoField
      FieldName = 'CFRBTPATH'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBTPATH'
      BlobType = ftMemo
      Size = 500
    end
    object SQLConfigRemessaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONFIGREMESSABANCO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLConfigRemessaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONFIGREMESSABANCO.REGISTRO'
    end
    object SQLConfigRemessaCFRBA2DIGAGENCIA: TStringField
      FieldName = 'CFRBA2DIGAGENCIA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA2DIGAGENCIA'
      FixedChar = True
      Size = 2
    end
    object SQLConfigRemessaCFRBA2DIGEMPRESA: TStringField
      FieldName = 'CFRBA2DIGEMPRESA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA2DIGEMPRESA'
      FixedChar = True
      Size = 2
    end
    object SQLConfigRemessaCFRBA30NOMEAGENCIA: TStringField
      FieldName = 'CFRBA30NOMEAGENCIA'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA30NOMEAGENCIA'
      FixedChar = True
      Size = 30
    end
    object SQLConfigRemessaCFRBA15CODCONVENIO: TStringField
      FieldName = 'CFRBA15CODCONVENIO'
      Origin = 'DB.CONFIGREMESSABANCO.CFRBA15CODCONVENIO'
      FixedChar = True
      Size = 15
    end
  end
  object TableConfigRemessa: TTable
    DatabaseName = 'DB'
    TableName = 'CONFIGREMESSABANCO'
    Left = 63
    Top = 188
  end
  object QueryTemp: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 91
    Top = 188
  end
  object gbCobranca: TgbCobranca
    NumeroArquivo = 0
    LayoutArquivo = laCNAB400
    TipoMovimento = tmRemessaTeste
    Left = 288
    Top = 336
  end
  object DSSQLTitulos: TDataSource
    DataSet = SQLTitulos
    Left = 63
    Top = 160
  end
  object gbTitulo: TgbTitulo
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaJuridica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
    EmissaoBoleto = ebBancoEmite
    Left = 320
    Top = 336
  end
end
