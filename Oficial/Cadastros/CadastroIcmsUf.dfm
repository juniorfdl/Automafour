inherited FormCadastroIcmsUF: TFormCadastroIcmsUF
  Left = 209
  Top = 86
  Caption = 'Cadastro ICMS por UF'
  ClientHeight = 593
  ClientWidth = 752
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 752
    Height = 593
    inherited PanelCabecalho: TPanel
      Width = 750
      inherited ScrollBoxPanelCabecalho: TScrollBox
        Width = 750
        inherited Panel1: TPanel
          Width = 748
          inherited PanelNavigator: TPanel
            Width = 748
            inherited AdvPanelNavigator: TAdvOfficeStatusBar
              Width = 748
            end
          end
          inherited PanelLeft: TPanel
            Left = 291
          end
        end
      end
    end
    inherited PanelCentral: TPanel
      Width = 750
      Height = 519
      inherited PanelBarra: TPanel
        Height = 519
      end
      inherited PanelFundoDados: TPanel
        Width = 620
        Height = 519
        inherited Panel5: TPanel
          Width = 620
          Height = 519
          inherited PagePrincipal: TPageControl
            Top = 313
            Width = 620
            Height = 206
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 612
                Height = 133
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ICMUA2UF'
                    Width = 43
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TIPOPESSOA'
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ENQUADRAMENTO'
                    Width = 187
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRODICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NCMA30CODIGO'
                    Title.Caption = 'C'#243'd. NCM'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMUN2ALIQUOTA'
                    Title.Caption = 'Al'#237'quota UF'
                    Width = 75
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMUN3REDBASECALC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMUN3MVA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMUN2ALIQUOTAINTERNA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMUISITTRIB'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                Width = 612
                inherited PanelBetween: TPanel
                  Width = 218
                  inherited AdvPanel1: TAdvPanel
                    Width = 218
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  Width = 218
                  inherited AdvPanelEditProcura: TAdvPanel
                    Width = 218
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
          end
          inherited PanelMaster: TPanel
            Top = 303
            Width = 620
            Height = 10
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 620
            Height = 303
            object Label1: TLabel
              Left = 7
              Top = 2
              Width = 14
              Height = 13
              Caption = 'UF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 4
              Top = 175
              Width = 79
              Height = 13
              Caption = 'Al'#237'quota ICMS'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label5: TLabel
              Left = 311
              Top = 175
              Width = 137
              Height = 13
              Caption = 'Margem Valor Agregado'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 160
              Top = 175
              Width = 98
              Height = 13
              Caption = 'Red. Base C'#225'lculo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 4
              Top = 215
              Width = 512
              Height = 13
              Caption = 
                'Situa'#231#227'o Tributaria para pessoa F'#205'SICA (usa a do cadastro do pro' +
                'duto se n'#227'o especificada)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 71
              Top = 2
              Width = 90
              Height = 13
              Caption = 'Nome do Estado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 461
              Top = 175
              Width = 99
              Height = 13
              Caption = 'Aliq.ICMS Interna'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 4
              Top = 92
              Width = 24
              Height = 13
              Caption = 'C'#243'd.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 71
              Top = 92
              Width = 470
              Height = 13
              Caption = 
                'Descri'#231#227'o do Produto  (somente para casos espec'#237'ficos a um deter' +
                'minado produto)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 4
              Top = 253
              Width = 529
              Height = 13
              Caption = 
                'Situa'#231#227'o Tributaria para pessoa JUR'#205'DICA (usa a do cadastro do p' +
                'roduto se n'#227'o especificada)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnClearProduto: TSpeedButton
              Left = 542
              Top = 106
              Width = 57
              Height = 21
              Caption = 'Limpar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = Button4Click
            end
            object btnClearSTFisica: TSpeedButton
              Left = 542
              Top = 228
              Width = 57
              Height = 21
              Caption = 'Limpar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = Button5Click
            end
            object btnClearSTJuridica: TSpeedButton
              Left = 542
              Top = 266
              Width = 57
              Height = 21
              Caption = 'Limpar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = Button6Click
            end
            object Label91: TLabel
              Left = 269
              Top = 48
              Width = 119
              Height = 13
              Caption = 'Regime Tribututa'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label120: TLabel
              Left = 3
              Top = 134
              Width = 99
              Height = 13
              Caption = 'Tabela Fiscal NCM'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit4: TDBEdit
              Left = 4
              Top = 189
              Width = 140
              Height = 21
              DataField = 'ICMUN2ALIQUOTA'
              DataSource = DSTemplate
              TabOrder = 7
            end
            object DBEdit5: TDBEdit
              Left = 310
              Top = 189
              Width = 140
              Height = 21
              DataField = 'ICMUN3MVA'
              DataSource = DSTemplate
              TabOrder = 9
            end
            object DBEdit6: TDBEdit
              Left = 67
              Top = 16
              Width = 530
              Height = 21
              TabStop = False
              DataField = 'ICMUA30NOMEESTADO'
              DataSource = DSTemplate
              Enabled = False
              TabOrder = 1
            end
            object ComboSitTribFisica: TRxDBComboBox
              Left = 4
              Top = 229
              Width = 537
              Height = 21
              Style = csDropDownList
              DataField = 'ICMUISITTRIB'
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
              TabOrder = 11
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
            object DBEdit3: TDBEdit
              Left = 460
              Top = 189
              Width = 140
              Height = 21
              DataField = 'ICMUN2ALIQUOTAINTERNA'
              DataSource = DSTemplate
              TabOrder = 10
            end
            object DBEdit7: TDBEdit
              Left = 4
              Top = 107
              Width = 59
              Height = 21
              TabStop = False
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object ComboSitTribJuridica: TRxDBComboBox
              Left = 4
              Top = 267
              Width = 537
              Height = 21
              Style = csDropDownList
              DataField = 'ICMUISITTRIBJURIDICA'
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
              TabOrder = 12
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
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 70
              Top = 107
              Width = 471
              Height = 21
              DataField = 'PRODICOD'
              DataSource = DSTemplate
              KeyField = 'PRODICOD'
              ListField = 'PRODA60DESCR'
              ListSource = DSSQLProduto
              TabOrder = 5
              TabStop = False
            end
            object ComboRegime: TRxDBComboBox
              Left = 268
              Top = 62
              Width = 331
              Height = 21
              Style = csDropDownList
              Ctl3D = False
              DataField = 'ENQUADRAMENTO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Qualquer Regime de Tributa'#231#227'o'
                'Optantes pelo SIMPLES Nacional'
                'Regime de Tributa'#231#227'o Normal')
              ParentCtl3D = False
              TabOrder = 3
              Values.Strings = (
                'A'
                'S'
                'N')
            end
            object ComboUFRes: TRxDBComboBox
              Left = 4
              Top = 16
              Width = 58
              Height = 21
              Style = csDropDownList
              DataField = 'ICMUA2UF'
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
              TabOrder = 0
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
              OnChange = ComboUFResChange
            end
            object RadioFisJur: TDBRadioGroup
              Left = 5
              Top = 41
              Width = 252
              Height = 40
              Caption = '&Tipo Pessoa'
              Columns = 3
              DataField = 'TIPOPESSOA'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Items.Strings = (
                'F'#237'sica'
                'Jur'#237'dica'
                'Ambas')
              ParentFont = False
              TabOrder = 2
              Values.Strings = (
                'F'
                'J'
                'A')
              OnChange = RadioFisJurChange
            end
            object ComboNCM: TRxDBLookupCombo
              Left = 4
              Top = 148
              Width = 597
              Height = 21
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'NCMA30CODIGO'
              DataSource = DSTemplate
              DisplayEmpty = '...'
              FieldsDelimiter = ';'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              LookupField = 'NCMA30CODIGO'
              LookupDisplay = 'NCMA30CODIGO;NCMA100DESCR'
              LookupSource = dsNCM
              ParentFont = False
              TabOrder = 6
              TabStop = False
            end
            object EvDBNumEdit1: TEvDBNumEdit
              Left = 159
              Top = 189
              Width = 127
              Height = 21
              AutoHideCalculator = False
              DataField = 'ICMUN3REDBASECALC'
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
              TabOrder = 8
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From IcmsUf Where (%MFiltro)')
    object SQLTemplateICMUA2UF: TStringField
      Tag = 1
      DisplayLabel = 'Estado'
      FieldName = 'ICMUA2UF'
      Origin = 'DB.ICMSUF.ICMUA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateTIPOPESSOA: TStringField
      Tag = 1
      DisplayLabel = 'Pessoa'
      FieldName = 'TIPOPESSOA'
      Origin = 'DB.ICMSUF.TIPOPESSOA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateENQUADRAMENTO: TStringField
      Tag = 1
      DisplayLabel = 'Regime Tribut.'
      FieldName = 'ENQUADRAMENTO'
      Origin = 'DB.ICMSUF.ENQUADRAMENTO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Prod.'
      FieldName = 'PRODICOD'
      Origin = 'DB.ICMSUF.PRODICOD'
    end
    object SQLTemplateNCMA30CODIGO: TStringField
      FieldName = 'NCMA30CODIGO'
      Origin = 'DB.ICMSUF.NCMA30CODIGO'
      Size = 30
    end
    object SQLTemplateICMUN2ALIQUOTA: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'ICMUN2ALIQUOTA'
      Origin = 'DB.ICMSUF.ICMUN2ALIQUOTA'
    end
    object SQLTemplateICMSN2PERCSUBSTSAI: TFloatField
      DisplayLabel = 'Subst.Tribut %'
      FieldName = 'ICMSN2PERCSUBSTSAI'
      Origin = 'DB.ICMSUF.ICMSN2PERCSUBSTSAI'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.ICMSUF.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.ICMSUF.REGISTRO'
    end
    object SQLTemplateICMUA60DESCR: TStringField
      FieldName = 'ICMUA60DESCR'
      Origin = 'DB.ICMSUF.ICMUA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateICMUA30NOMEESTADO: TStringField
      FieldName = 'ICMUA30NOMEESTADO'
      Origin = 'DB.ICMSUF.ICMUA30NOMEESTADO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateICMUICOD: TIntegerField
      FieldName = 'ICMUICOD'
      Origin = 'DB.ICMSUF.ICMUICOD'
    end
    object SQLTemplateICMUN3REDBASECALC: TFloatField
      DisplayLabel = 'Red.Base C'#225'lc.'
      FieldName = 'ICMUN3REDBASECALC'
      Origin = 'DB.ICMSUF.ICMUN3REDBASECALC'
    end
    object SQLTemplateICMUISITTRIB: TIntegerField
      DisplayLabel = 'Sit.Trib.'
      FieldName = 'ICMUISITTRIB'
      Origin = 'DB.ICMSUF.ICMUISITTRIB'
    end
    object SQLTemplateICMUN3MVA: TFloatField
      DisplayLabel = 'Margem Valor Agregado'
      FieldName = 'ICMUN3MVA'
      Origin = 'DB.ICMSUF.ICMUN3MVA'
    end
    object SQLTemplateICMUN2ALIQUOTAINTERNA: TFloatField
      DisplayLabel = 'Al'#237'quota Interna'
      FieldName = 'ICMUN2ALIQUOTAINTERNA'
      Origin = 'DB.ICMSUF.ICMUN2ALIQUOTAINTERNA'
    end
    object SQLTemplateICMUISITTRIBJURIDICA: TIntegerField
      FieldName = 'ICMUISITTRIBJURIDICA'
      Origin = 'DB.ICMSUF.ICMUISITTRIBJURIDICA'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update IcmsUf'
      'set'
      '  ICMUA2UF = :ICMUA2UF,'
      '  ICMSICOD = :ICMSICOD,'
      '  ICMUN2ALIQUOTA = :ICMUN2ALIQUOTA,'
      '  ICMSN2PERCSUBSTSAI = :ICMSN2PERCSUBSTSAI,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  ICMUA2UF = :OLD_ICMUA2UF')
    InsertSQL.Strings = (
      'insert into IcmsUf'
      
        '  (ICMUA2UF, ICMSICOD, ICMUN2ALIQUOTA, ICMSN2PERCSUBSTSAI, PENDE' +
        'NTE, REGISTRO)'
      'values'
      
        '  (:ICMUA2UF, :ICMSICOD, :ICMUN2ALIQUOTA, :ICMSN2PERCSUBSTSAI, :' +
        'PENDENTE, '
      '   :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from IcmsUf'
      'where'
      '  ICMUA2UF = :OLD_ICMUA2UF')
  end
  object SQLICMSUFAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ICMSUF Where %Descricao')
    Macros = <
      item
        DataType = ftString
        Name = 'Descricao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 472
    Top = 2
    object SQLICMSUFAuxICMUA2UF: TStringField
      FieldName = 'ICMUA2UF'
      Origin = 'DB.ICMSUF.ICMUA2UF'
      FixedChar = True
      Size = 2
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select PRODICOD, PRODA60REFER, PRODA60DESCR from PRODUTO'
      'Order by PRODA60DESCR')
    Macros = <>
    Left = 55
    Top = 181
  end
  object DSSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 83
    Top = 181
  end
  object dsNCM: TDataSource
    DataSet = SQLNcm
    Left = 81
    Top = 216
  end
  object SQLNcm: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT NCMICOD, NCMA30CODIGO, NCMA100DESCR FROM NCM'
      'ORDER BY NCMA100DESCR')
    Macros = <>
    Left = 53
    Top = 216
    object SQLNcmNCMICOD: TIntegerField
      FieldName = 'NCMICOD'
      Origin = 'DB.NCM.NCMICOD'
    end
    object SQLNcmNCMA30CODIGO: TStringField
      FieldName = 'NCMA30CODIGO'
      Origin = 'DB.NCM.NCMA30CODIGO'
      Size = 30
    end
    object SQLNcmNCMA100DESCR: TStringField
      FieldName = 'NCMA100DESCR'
      Origin = 'DB.NCM.NCMA100DESCR'
      Size = 100
    end
  end
end
