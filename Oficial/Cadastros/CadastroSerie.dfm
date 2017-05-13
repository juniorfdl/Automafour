inherited FormCadastroSerie: TFormCadastroSerie
  Left = 501
  Top = 96
  Caption = 'S'#233'ries de Nota Fiscal'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 118
            Height = 331
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 258
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'EMPRICOD'
                    Title.Caption = 'Empresa'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERIA5COD'
                    Width = 61
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERIA2TIPONOTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERIINRONF'
                    Width = 107
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SERIA100PATHEXEIMP'
                    Title.Caption = 'Caminho do Executavel de impressao da Nota Fiscal'
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
                Top = 162
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label7: TLabel
                Left = 11
                Top = 15
                Width = 403
                Height = 13
                Caption = 
                  'Caminho Executavel para Impress'#227'o das Notas Fiscais conforme a s' +
                  #233'rie'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit7: TDBEdit
                Left = 7
                Top = 28
                Width = 488
                Height = 21
                DataField = 'SERIA100PATHEXEIMP'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object ArqExecImpr: TFilenameEdit
                Left = 497
                Top = 27
                Width = 21
                Height = 21
                Filter = 'All files (*.exe)|*.exe'
                BorderStyle = bsNone
                NumGlyphs = 1
                TabOrder = 1
                Text = 'ArqExecImpr'
                OnChange = ArqExecImprChange
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 77
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 77
            object Label1: TLabel
              Left = 7
              Top = 3
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
            object Label2: TLabel
              Left = 7
              Top = 41
              Width = 63
              Height = 13
              Caption = 'Pr'#243'xima NF'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 80
              Top = 3
              Width = 103
              Height = 13
              Caption = 'Empresa Emitente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 80
              Top = 41
              Width = 204
              Height = 13
              Caption = 'Tipo de Documentos Fiscais do ICMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 7
              Top = 16
              Width = 69
              Height = 21
              DataField = 'SERIA5COD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 7
              Top = 54
              Width = 68
              Height = 21
              DataField = 'SERIINRONF'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object ComboEmpresa: TRxDBLookupCombo
              Left = 80
              Top = 16
              Width = 459
              Height = 21
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'EMPRICOD'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              LookupField = 'EMPRICOD'
              LookupDisplay = 'EMPRA60NOMEFANT;EMPRA14CGC'
              LookupSource = DSSQLEmpresa
              TabOrder = 2
            end
            object RxDBComboBox8: TRxDBComboBox
              Left = 80
              Top = 54
              Width = 457
              Height = 21
              Style = csDropDownList
              DataField = 'SERIA2TIPONOTA'
              DataSource = DSTemplate
              EnableValues = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                '01 Nota Fiscal 1 - 1A'
                '1B Nota Fiscal Avulsa '
                '02 Nota Fiscal de Venda a Consumidor '
                '2D Cupom Fiscal '
                '2E Cupom Fiscal Bilhete de Passagem '
                '04 Nota Fiscal de Produtor'
                '06 Nota Fiscal/Conta de Energia El'#233'trica'
                '07 Nota Fiscal de Servi'#231'o de Transporte'
                '08 Conhecimento de Transporte Rodovi'#225'rio de Cargas '
                '8B Conhecimento de Transporte de Cargas Avulso '
                '09 Conhecimento de Transporte Aquavi'#225'rio de Cargas '
                '10 Conhecimento A'#233'reo '
                '11 Conhecimento de Transporte Ferrovi'#225'rio de Cargas '
                '13 Bilhete de Passagem Rodovi'#225'rio '
                '14 Bilhete de Passagem Aquavi'#225'rio '
                '15 Bilhete de Passagem e Nota de Bagagem '
                '17 Despacho de Transporte '
                '16 Bilhete de Passagem Ferrovi'#225'rio '
                '18 Resumo de Movimento Di'#225'rio'
                '20 Ordem de Coleta de Cargas'
                '21 Nota Fiscal de Servi'#231'o de Comunica'#231#227'o '
                '22 Nota Fiscal de Servi'#231'o de Telecomunica'#231#245'es'
                '23 GNRE'
                '24 Autoriza'#231#227'o de Carregamento e Transporte'
                '25 Manifesto de Carga'
                '26 Conhecimento de Transporte Multimodal de Carga'
                '27 Nota Fiscal De Transporte Ferrovi'#225'rio De Carga'
                '28 Nota Fiscal/Conta de Fornecimento de G'#225's Canalizado '
                '29 Nota Fiscal/Conta De Fornecimento D'#39#225'gua Canalizada'
                '55 Nota Fiscal Eletr'#244'nica (Opera'#231#245'es de vendas)'
                '55 Nota Fiscal Eletr'#244'nica (Opera'#231#245'es de aquisi'#231#227'o/devolu'#231#227'o)'
                '57 Conhecimento de Transporte Eletr'#244'nico - CT-e'
                '59 Cupom Fiscal Eletr'#244'nico - CF-e')
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 3
              Values.Strings = (
                '01'
                '1B'
                '02'
                '2D'
                '2E'
                '04'
                '06'
                '07'
                '08'
                '8B'
                '09'
                '10'
                '11'
                '13'
                '14'
                '15'
                '17'
                '16'
                '18'
                '20'
                '21'
                '22'
                '23'
                '24'
                '25'
                '26'
                '27'
                '28'
                '29'
                '55'
                '55'
                '57'
                '59')
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From SERIE Where (%MFiltro)')
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.SERIE.EMPRICOD'
    end
    object SQLTemplateSERIA5COD: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIA5COD'
      Origin = 'DB.SERIE.SERIA5COD'
      OnChange = SQLTemplateSERIA5CODChange
      FixedChar = True
      Size = 5
    end
    object SQLTemplateSERIINRONF: TIntegerField
      DisplayLabel = 'Pr'#243'xima NF'
      FieldName = 'SERIINRONF'
      Origin = 'DB.SERIE.SERIINRONF'
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.SERIE.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.SERIE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateSERIA100PATHEXEIMP: TStringField
      FieldName = 'SERIA100PATHEXEIMP'
      Origin = 'DB.SERIE.SERIA100PATHEXEIMP'
      FixedChar = True
      Size = 100
    end
    object SQLTemplateSERIA2TIPONOTA: TStringField
      DisplayLabel = 'Tipo NF'
      FieldName = 'SERIA2TIPONOTA'
      Origin = 'DB.SERIE.SERIA2TIPONOTA'
      FixedChar = True
      Size = 2
    end
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select EMPRICOD, EMPRA60RAZAOSOC, EMPRA14CGC, EMPRA60NOMEFANT'
      'From Empresa')
    Macros = <>
    Left = 40
    Top = 224
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
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLEmpresa: TDataSource
    DataSet = SQLEmpresa
    Left = 68
    Top = 224
  end
end
