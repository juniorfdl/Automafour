inherited FormCadastroICMS: TFormCadastroICMS
  Left = 266
  Top = 88
  Caption = 'Cadastro de ICMS'
  ClientHeight = 478
  ClientWidth = 752
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 752
    Height = 478
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
      Height = 404
      inherited PanelBarra: TPanel
        Height = 404
      end
      inherited PanelFundoDados: TPanel
        Width = 620
        Height = 404
        inherited Panel5: TPanel
          Width = 620
          Height = 404
          inherited PagePrincipal: TPageControl
            Width = 620
            Height = 322
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Width = 612
                Height = 249
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ICMSICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMSA60DESCR'
                    Width = 261
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMSN2ALIQUOTA'
                    Width = 53
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMSA5TOTECF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMSN2PERCSUBSTSAI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMSN2PERCSUBSTENT'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMSN2PERCREDUCAO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ICMSICODSITTRIB'
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
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label3: TLabel
                Left = 8
                Top = 4
                Width = 79
                Height = 13
                Caption = 'Al'#237'q Cupom %'
                FocusControl = DBEdit3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 386
                Top = 4
                Width = 137
                Height = 13
                Caption = 'Margem Valor Agregado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 273
                Top = 81
                Width = 72
                Height = 13
                Caption = 'C'#243'd. Decreto'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 161
                Top = 82
                Width = 92
                Height = 13
                Caption = 'Posi'#231#227'o Aliq. ECF'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 8
                Top = 83
                Width = 126
                Height = 13
                Caption = 'Posi'#231#227'o Mapa Resumo'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 241
                Top = 4
                Width = 127
                Height = 13
                Caption = '% Redu'#231#227'o Base ICMS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 129
                Top = 4
                Width = 100
                Height = 13
                Caption = 'Al'#237'q Nota Fiscal %'
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label68: TLabel
                Left = 8
                Top = 44
                Width = 108
                Height = 13
                Caption = 'Situa'#231#227'o Tribut'#225'ria'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 8
                Top = 17
                Width = 109
                Height = 21
                DataField = 'ICMSN2ALIQUOTA'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit4: TDBEdit
                Left = 271
                Top = 94
                Width = 258
                Height = 21
                DataField = 'DECRICOD'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit9: TDBEdit
                Left = 157
                Top = 95
                Width = 108
                Height = 21
                DataField = 'ICMSPOSALIQECF'
                DataSource = DSTemplate
                TabOrder = 6
              end
              object DBEdit10: TDBEdit
                Left = 8
                Top = 96
                Width = 139
                Height = 21
                DataField = 'ICMSPOSMAPARESUMO'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit12: TDBEdit
                Left = 125
                Top = 17
                Width = 108
                Height = 21
                DataField = 'ICMSN2ICMSM1'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object ComboSitTrib: TRxDBComboBox
                Left = 8
                Top = 59
                Width = 522
                Height = 21
                Style = csDropDownList
                DataField = 'ICMSICODSITTRIB'
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
                TabOrder = 4
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
              object EvDBNumEdit1: TEvDBNumEdit
                Left = 243
                Top = 17
                Width = 127
                Height = 21
                AutoHideCalculator = False
                DataField = 'ICMSN2REDBASEICMS'
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
                TabOrder = 2
              end
              object EvDBNumEdit2: TEvDBNumEdit
                Left = 384
                Top = 17
                Width = 138
                Height = 21
                AutoHideCalculator = False
                DataField = 'ICMSN2PERCSUBSTSAI'
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
                TabOrder = 3
              end
            end
          end
          inherited PanelMaster: TPanel
            Width = 620
          end
          inherited PanelCodigoDescricao: TPanel
            Width = 620
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
              Left = 116
              Top = 3
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 3
              Top = 16
              Width = 106
              Height = 21
              DataField = 'ICMSICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 112
              Top = 16
              Width = 492
              Height = 21
              DataField = 'ICMSA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'select * from ICMS where (%MFiltro)')
    object SQLTemplateICMSICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ICMSICOD'
      Origin = 'DB.ICMS.ICMSICOD'
      Visible = False
    end
    object SQLTemplateICMSA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ICMSA60DESCR'
      Origin = 'DB.ICMS.ICMSA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateICMSN2ALIQUOTA: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'ICMSN2ALIQUOTA'
      Origin = 'DB.ICMS.ICMSN2ALIQUOTA'
    end
    object SQLTemplateICMSA5TOTECF: TStringField
      DisplayLabel = 'Totalizador ECF'
      FieldName = 'ICMSA5TOTECF'
      Origin = 'DB.ICMS.ICMSA5TOTECF'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateICMSN2PERCSUBSTSAI: TFloatField
      DisplayLabel = 'Al'#237'q.Subst.Sa'#237'da'
      FieldName = 'ICMSN2PERCSUBSTSAI'
      Origin = 'DB.ICMS.ICMSN2PERCSUBSTSAI'
    end
    object SQLTemplateICMSN2PERCSUBSTENT: TFloatField
      DisplayLabel = 'Al'#237'q.Subst.Entrada'
      FieldName = 'ICMSN2PERCSUBSTENT'
      Origin = 'DB.ICMS.ICMSN2PERCSUBSTENT'
    end
    object SQLTemplateICMSICODSITTRIB: TIntegerField
      DisplayLabel = 'Sit.Tribut'#225'ria'
      FieldName = 'ICMSICODSITTRIB'
      Origin = 'DB.ICMS.ICMSICODSITTRIB'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.ICMS.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.ICMS.REGISTRO'
    end
    object SQLTemplateDECRICOD: TStringField
      DisplayLabel = 'C'#243'd. Decreto'
      FieldName = 'DECRICOD'
      Origin = 'DB.ICMS.DECRICOD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateICMSPOSALIQECF: TStringField
      DisplayLabel = 'Posi'#231#227'o Aliq. ECF'
      FieldName = 'ICMSPOSALIQECF'
      Origin = 'DB.ICMS.ICMSPOSALIQECF'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateICMSPOSMAPARESUMO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o Mapa Resumo'
      FieldName = 'ICMSPOSMAPARESUMO'
      Origin = 'DB.ICMS.ICMSPOSMAPARESUMO'
    end
    object SQLTemplateICMSN2REDBASEICMS: TFloatField
      DisplayLabel = '% Redu'#231#227'o Base ICMS'
      FieldName = 'ICMSN2REDBASEICMS'
      Origin = 'DB.ICMS.ICMSN2REDBASEICMS'
      DisplayFormat = '###0.000'
    end
    object SQLTemplateICMSN2ICMSM1: TFloatField
      FieldName = 'ICMSN2ICMSM1'
      Origin = 'DB.ICMS.ICMSN2ICMSM1'
    end
  end
  inherited UpdateSQLTemplate: TUpdateSQL
    ModifySQL.Strings = (
      'update ICMS'
      'set'
      '  ICMSICOD = :ICMSICOD,'
      '  ICMSA60DESCR = :ICMSA60DESCR,'
      '  ICMSN2ALIQUOTA = :ICMSN2ALIQUOTA,'
      '  ICMSA5TOTECF = :ICMSA5TOTECF,'
      '  ICMSN2PERCSUBSTSAI = :ICMSN2PERCSUBSTSAI,'
      '  ICMSN2PERCSUBSTENT = :ICMSN2PERCSUBSTENT,'
      '  ICMSN2PERCREDUCAO = :ICMSN2PERCREDUCAO,'
      '  ICMSICODSITTRIB = :ICMSICODSITTRIB,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  ICMSICOD = :OLD_ICMSICOD')
    InsertSQL.Strings = (
      'insert into ICMS'
      
        '  (ICMSICOD, ICMSA60DESCR, ICMSN2ALIQUOTA, ICMSA5TOTECF, ICMSN2P' +
        'ERCSUBSTSAI, '
      
        '   ICMSN2PERCSUBSTENT, ICMSN2PERCREDUCAO, ICMSICODSITTRIB, PENDE' +
        'NTE, REGISTRO)'
      'values'
      
        '  (:ICMSICOD, :ICMSA60DESCR, :ICMSN2ALIQUOTA, :ICMSA5TOTECF, :IC' +
        'MSN2PERCSUBSTSAI, '
      
        '   :ICMSN2PERCSUBSTENT, :ICMSN2PERCREDUCAO, :ICMSICODSITTRIB, :P' +
        'ENDENTE, '
      '   :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from ICMS'
      'where'
      '  ICMSICOD = :OLD_ICMSICOD')
  end
end
