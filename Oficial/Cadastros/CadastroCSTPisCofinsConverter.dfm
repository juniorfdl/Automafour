inherited CadastroCSTPisCofinsConverte: TCadastroCSTPisCofinsConverte
  Left = 120
  Top = 24
  Caption = 'Conver'#231#227'o de CST de PIS e COFINS'
  ClientHeight = 605
  ClientWidth = 896
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 896
    Height = 605
    inherited PanelCabecalho: TPanel
      Width = 894
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 894
        inherited Panel1: TPanel
          Width = 892
          inherited PanelNavigator: TPanel
            Width = 892
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 892
            end
          end
          inherited PanelLeft: TPanel
            Left = 435
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 894
      Height = 531
      inherited PanelBarra: TPanel
        Height = 531
      end
      inherited PanelFundoDados: TPanel
        Width = 764
        Height = 531
        inherited Panel5: TPanel
          Width = 764
          Height = 531
          inherited PagePrincipal: TPageControl
            Width = 764
            Height = 449
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 756
                Height = 376
              end
              inherited PanelProcura: TPanel
                Width = 756
                inherited PanelBetween: TPanel
                  Width = 362
                  inherited AdvPanel1: TAdvPanel
                    Width = 362
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 362
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 362
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
              object Label1: TLabel
                Left = 5
                Top = 7
                Width = 120
                Height = 13
                Caption = 'CST de PIS ou COFINS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RxDBComboBox2: TRxDBComboBox
                Left = 4
                Top = 23
                Width = 208
                Height = 21
                Style = csDropDownList
                DataField = 'PISCOFINS'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'COFINS'
                  'PIS')
                TabOrder = 0
                Values.Strings = (
                  'C'
                  'P')
                OnExit = RxDBComboBox2Exit
              end
              object PanelPIS: TPanel
                Left = 4
                Top = 54
                Width = 537
                Height = 133
                TabOrder = 1
                object Label68: TLabel
                  Left = 10
                  Top = 6
                  Width = 313
                  Height = 13
                  Caption = 'C'#243'digo da Situa'#231#227'o Tribut'#225'ria do PIS para opera'#231#245'es de'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label6: TLabel
                  Left = 34
                  Top = 77
                  Width = 137
                  Height = 13
                  Caption = 'ENTRADA de mercadoria'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label2: TLabel
                  Left = 34
                  Top = 37
                  Width = 121
                  Height = 13
                  Caption = 'SA'#205'DA de mercadoria'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 196
                  Top = 7
                  Width = 19
                  Height = 13
                  Caption = 'PIS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBComboBox10: TRxDBComboBox
                  Left = 34
                  Top = 53
                  Width = 497
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CSTSAIDA'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    
                      '01- Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o al'#237 +
                      'quota normal (cumulativo/n'#227'o cumulativo));'
                    
                      '02 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o (a' +
                      'l'#237'quota diferenciada));'
                    
                      '03 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = quantidade vendida x' +
                      ' al'#237'quota por unidade de produto);'
                    '04 - Opera'#231#227'o Tribut'#225'vel(tributa'#231#227'o monof'#225'sica (al'#237'quota zero));'
                    '06 - Opera'#231#227'o Tribut'#225'vel (al'#237'quota zero);'
                    '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o;'
                    '08 - Opera'#231#227'o Sem Incid'#234'ncia da Contribui'#231#227'o;'
                    '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o;'
                    '99 - Outras Opera'#231#245'es;')
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = False
                  TabOrder = 0
                  Values.Strings = (
                    '01'
                    '02'
                    '03'
                    '04'
                    '06'
                    '07'
                    '08'
                    '09'
                    '99')
                end
                object RxDBComboBox13: TRxDBComboBox
                  Left = 34
                  Top = 93
                  Width = 497
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CSTENTRADA'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    '49 - Outras Opera'#231#245'es de Sa'#237'da;'
                    
                      '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                      ' Receita Tributada no Mercado Interno;'
                    
                      '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                      ' Receita N'#227'o Tributada no Mercado Interno ;'
                    
                      '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                      ' Receita de Exporta'#231#227'o;'
                    
                      '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                      'tadas e N'#227'o-Tributadas no Mercado Interno;'
                    
                      '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                      'tadas no Mercado Interno e de Exporta'#231#227'o ;'
                    
                      '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-T' +
                      'ributadas no Mercado Interno e de Exporta'#231#227'o;'
                    
                      '56 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                      'tadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o;'
                    
                      '60 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                      'vamente a Receita Tributada no Mercado Interno;'
                    
                      '61 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                      'vamente a Receita N'#227'o Tributada no Mercado Interno;'
                    
                      '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                      'vamente a Receita de Exporta'#231#227'o;'
                    
                      '63 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                      'tas Tributadas e N'#227'o-Tributadas no Mercado Interno;'
                    
                      '64 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                      'tas Tributadas no Mercado Interno e de Exporta'#231#227'o;'
                    
                      '65 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                      'tas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o;'
                    
                      '66 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                      'tas Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta' +
                      #231#227'o;'
                    '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es;'
                    '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito;'
                    '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o;'
                    '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o;'
                    '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero;'
                    '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o;'
                    '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria;'
                    '98 - Outras Opera'#231#245'es de Entrada;')
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = False
                  TabOrder = 1
                  Values.Strings = (
                    '49'
                    '50'
                    '51'
                    '52'
                    '53'
                    '54'
                    '55'
                    '56'
                    '60'
                    '61'
                    '62'
                    '63'
                    '64'
                    '65'
                    '66'
                    '67'
                    '70'
                    '71'
                    '72'
                    '73'
                    '74'
                    '75'
                    '98')
                end
              end
              object PanelCOFINS: TPanel
                Left = 4
                Top = 54
                Width = 741
                Height = 133
                TabOrder = 2
                object Label4: TLabel
                  Left = 10
                  Top = 6
                  Width = 334
                  Height = 13
                  Caption = 'C'#243'digo da Situa'#231#227'o Tribut'#225'ria do COFINS para opera'#231#245'es de'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 34
                  Top = 77
                  Width = 137
                  Height = 13
                  Caption = 'ENTRADA de mercadoria'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 34
                  Top = 37
                  Width = 121
                  Height = 13
                  Caption = 'SA'#205'DA de mercadoria'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 8404992
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 196
                  Top = 7
                  Width = 40
                  Height = 13
                  Caption = 'COFINS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object RxDBComboBox9: TRxDBComboBox
                  Left = 35
                  Top = 52
                  Width = 700
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CSTSAIDA'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    
                      '01 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o al' +
                      #237'quota normal (cumulativo/n'#227'o cumulativo));'
                    
                      '02 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o (a' +
                      'l'#237'quota diferenciada));'
                    
                      '03 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = quantidade vendida x' +
                      ' al'#237'quota por unidade de produto);'
                    
                      '04 - Opera'#231#227'o Tribut'#225'vel (tributa'#231#227'o monof'#225'sica (al'#237'quota zero))' +
                      ';'
                    '06 - Opera'#231#227'o Tribut'#225'vel (al'#237'quota zero);'
                    '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o;'
                    '08 - Opera'#231#227'o Sem Incid'#234'ncia da Contribui'#231#227'o;'
                    '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o;'
                    '99 - Outras Opera'#231#245'es;'
                    '49 - Outras Opera'#231#245'es de Sa'#237'da;')
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = False
                  TabOrder = 0
                  Values.Strings = (
                    '01'
                    '02'
                    '03'
                    '04'
                    '06'
                    '07'
                    '08'
                    '09'
                    '99'
                    '49')
                end
                object RxDBComboBox14: TRxDBComboBox
                  Left = 35
                  Top = 92
                  Width = 700
                  Height = 21
                  Style = csDropDownList
                  DataField = 'CSTENTRADA'
                  DataSource = DSTemplate
                  EnableValues = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    
                      '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                      ' Receita Tributada no Mercado Interno;'
                    
                      '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                      ' Receita N'#227'o Tributada no Mercado Interno ;'
                    
                      '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                      ' Receita de Exporta'#231#227'o;'
                    
                      '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                      'tadas e N'#227'o-Tributadas no Mercado Interno;'
                    
                      '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                      'tadas no Mercado Interno e de Exporta'#231#227'o ;'
                    
                      '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-T' +
                      'ributadas no Mercado Interno e de Exporta'#231#227'o;'
                    
                      '56 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                      'tadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o;'
                    
                      '60 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                      'vamente a Receita Tributada no Mercado Interno;'
                    
                      '61 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                      'vamente a Receita N'#227'o Tributada no Mercado Interno;'
                    
                      '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                      'vamente a Receita de Exporta'#231#227'o;'
                    
                      '63 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                      'tas Tributadas e N'#227'o-Tributadas no Mercado Interno;'
                    
                      '64 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                      'tas Tributadas no Mercado Interno e de Exporta'#231#227'o;'
                    
                      '65 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                      'tas N'#227'o-Tributadas no Mercado Interno e de Exporta'#231#227'o;'
                    
                      '66 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada a Recei' +
                      'tas Tributadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta' +
                      #231#227'o;'
                    '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es;'
                    '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito;'
                    '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o;'
                    '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o;'
                    '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero;'
                    '74 - Opera'#231#227'o de Aquisi'#231#227'o sem Incid'#234'ncia da Contribui'#231#227'o;'
                    '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria;'
                    '98 - Outras Opera'#231#245'es de Entrada;')
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = False
                  TabOrder = 1
                  Values.Strings = (
                    '50'
                    '51'
                    '52'
                    '53'
                    '54'
                    '55'
                    '56'
                    '60'
                    '61'
                    '62'
                    '63'
                    '64'
                    '65'
                    '66'
                    '67'
                    '70'
                    '71'
                    '72'
                    '73'
                    '74'
                    '75'
                    '98')
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 764
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 764
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From CONVERTECSTPISCOFINS Where (%MFiltro)')
    object SQLTemplatePISCOFINS: TStringField
      DisplayLabel = 'Pis ou Cofins'
      FieldName = 'PISCOFINS'
      Origin = 'DB.CONVERTECSTPISCOFINS.PISCOFINS'
      OnChange = SQLTemplatePISCOFINSChange
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCSTSAIDA: TStringField
      DisplayLabel = 'CST de Sa'#237'da'
      FieldName = 'CSTSAIDA'
      Origin = 'DB.CONVERTECSTPISCOFINS.CSTSAIDA'
      Size = 3
    end
    object SQLTemplateCSTENTRADA: TStringField
      DisplayLabel = 'CST de Entrada'
      FieldName = 'CSTENTRADA'
      Origin = 'DB.CONVERTECSTPISCOFINS.CSTENTRADA'
      Size = 3
    end
  end
end
