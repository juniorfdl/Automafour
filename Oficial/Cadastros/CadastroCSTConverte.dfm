inherited CadastroCSTConverter: TCadastroCSTConverter
  Left = 358
  Top = 151
  Caption = 'Convers'#227'o Situa'#231#227'o Tributaria'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Width = 154
        inherited Button1: TRxSpeedButton
          Width = 145
        end
        inherited Button2: TRxSpeedButton
          Width = 145
        end
        inherited Button3: TRxSpeedButton
          Width = 145
        end
        object Label1: TLabel
          Left = 17
          Top = 96
          Width = 77
          Height = 13
          Caption = 'Tipo de Empesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 7
          Top = 115
          Width = 96
          Height = 13
          Caption = '1 - Simples Nacional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 7
          Top = 133
          Width = 102
          Height = 26
          Caption = '2 - Simples Nacional, '#13#10'     Exc. Rec. Bruta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 7
          Top = 164
          Width = 40
          Height = 13
          Caption = '3 - Geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      inherited PanelFundoDados: TPanel
        Left = 154
        Width = 733
        inherited Panel5: TPanel
          Width = 733
          inherited PagePrincipal: TPageControl
            Width = 733
            ActivePage = TabSheetDadosPrincipais
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 725
              end
              inherited PanelProcura: TPanel
                Width = 725
                inherited PanelBetween: TPanel
                  Width = 331
                  inherited AdvPanel1: TAdvPanel
                    Width = 331
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 331
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 331
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
              object Label68: TLabel
                Left = 10
                Top = 53
                Width = 453
                Height = 13
                Caption = 
                  'C'#243'digo da Situa'#231#227'o Tribut'#225'ria do ICMS para opera'#231#245'es de SA'#205'DA de' +
                  ' mercadorias'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 10
                Top = 97
                Width = 467
                Height = 13
                Caption = 
                  'C'#243'dito da Situa'#231#227'o Tribut'#225'ria do ICMS para opera'#231#245'es de ENTRADA ' +
                  'de mercadorias'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label40: TLabel
                Left = 9
                Top = 7
                Width = 102
                Height = 13
                Caption = 'Regime Tribut'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ComboSitTrib: TRxDBComboBox
                Left = 9
                Top = 69
                Width = 560
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
                  '00   - Tributada integralmente'
                  
                    '10   - Tributada e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225 +
                    'ria'
                  '20   - Com redu'#231#227'o de base de c'#225'lculo'
                  
                    '30   - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por substi' +
                    'tui'#231#227'o tribut'#225'ria'
                  '40   - Isenta'
                  '41   - N'#227'o tributada'
                  '50   - Suspens'#227'o'
                  '51   - Diferimento'
                  '60   - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
                  
                    '70   - Com redu'#231#227'o de base de c'#225'lculo e cobran'#231'a do ICMS por sub' +
                    'stitui'#231#227'o tribut'#225'ria'
                  '90   - Outros '
                  
                    '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito. ' +
                    '(v.2.0) '
                  '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito.'
                  
                    '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
                    'bruta.'
                  '300 - Imune.'
                  '400 - N'#227'o tributada pelo Simples Nacional (v.2.0)'
                  
                    '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
                    ' com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria;'
                  
                    '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
                    ' com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria;'
                  
                    '203 - Isen'#231#227'o do ICMS nos Simples Nacional para faixa de receita' +
                    ' bruta e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria;'
                  
                    '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
                    'bstitu'#237'do) ou por antecipa'#231#227'o; '
                  '900 - Outros')
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 1
                Values.Strings = (
                  '0'
                  '10'
                  '20'
                  '30'
                  '40'
                  '41'
                  '50'
                  '51'
                  '60'
                  '70'
                  '90'
                  '101'
                  '102'
                  '103'
                  '300'
                  '400'
                  '201'
                  '202'
                  '203'
                  '500'
                  '900')
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 9
                Top = 113
                Width = 560
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
                  '00   - Tributada integralmente'
                  
                    '10   - Tributada e com cobran'#231'a do ICMS por substitui'#231#227'o tribut'#225 +
                    'ria'
                  '20   - Com redu'#231#227'o de base de c'#225'lculo'
                  
                    '30   - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por substi' +
                    'tui'#231#227'o tribut'#225'ria'
                  '40   - Isenta'
                  '41   - N'#227'o tributada'
                  '50   - Suspens'#227'o'
                  '51   - Diferimento'
                  '60   - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
                  
                    '70   - Com redu'#231#227'o de base de c'#225'lculo e cobran'#231'a do ICMS por sub' +
                    'stitui'#231#227'o tribut'#225'ria'
                  '90   - Outros '
                  
                    '101 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito. ' +
                    '(v.2.0) '
                  '102 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito.'
                  
                    '103 - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
                    'bruta.'
                  '300 - Imune.'
                  '400 - N'#227'o tributada pelo Simples Nacional (v.2.0)'
                  
                    '201 - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
                    ' com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria;'
                  
                    '202 - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
                    ' com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria;'
                  
                    '203 - Isen'#231#227'o do ICMS nos Simples Nacional para faixa de receita' +
                    ' bruta e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria;'
                  
                    '500 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
                    'bstitu'#237'do) ou por antecipa'#231#227'o; '
                  '900 - Outros')
                ParentFont = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 2
                Values.Strings = (
                  '0'
                  '10'
                  '20'
                  '30'
                  '40'
                  '41'
                  '50'
                  '51'
                  '60'
                  '70'
                  '90'
                  '101'
                  '102'
                  '103'
                  '300'
                  '400'
                  '201'
                  '202'
                  '203'
                  '500'
                  '900')
              end
              object ComboCRT: TRxDBComboBox
                Left = 8
                Top = 23
                Width = 208
                Height = 21
                Style = csDropDownList
                DataField = 'TIPOEMPRESA'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  '1 - Simples Nacional'
                  '2 - Simples Nacional, Exc.Rec.Bruta'
                  '3 - Regime Normal ')
                TabOrder = 0
                Values.Strings = (
                  '1'
                  '2'
                  '3')
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 733
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 733
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From CSTCONVERTE Where (%MFiltro)')
    object SQLTemplateTIPOEMPRESA: TIntegerField
      Tag = 1
      DisplayLabel = 'Tipo Empresa'
      FieldName = 'TIPOEMPRESA'
      Origin = 'DB.CSTCONVERTE.TIPOEMPRESA'
    end
    object SQLTemplateCSTSAIDA: TStringField
      Tag = 1
      DisplayLabel = 'CST Sa'#237'da'
      FieldName = 'CSTSAIDA'
      Origin = 'DB.CSTCONVERTE.CSTSAIDA'
      Size = 3
    end
    object SQLTemplateCSTENTRADA: TStringField
      DisplayLabel = 'CST Entrada'
      FieldName = 'CSTENTRADA'
      Origin = 'DB.CSTCONVERTE.CSTENTRADA'
      Size = 3
    end
  end
end
