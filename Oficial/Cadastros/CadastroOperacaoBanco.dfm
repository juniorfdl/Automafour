inherited FormCadastroOperacaoBanco: TFormCadastroOperacaoBanco
  Left = 208
  Top = 162
  Caption = 'Opera'#231#245'es Banc'#225'rias'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 132
            Height = 317
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 244
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'OPBCICOD'
                    Width = 44
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPBCA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPBCCTIPO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPBCCALTSALDO'
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
          end
          inherited PanelMaster: TPanel
            Top = 91
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 91
            object Label1: TLabel
              Left = 8
              Top = 2
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
              Top = 2
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
            object Label3: TLabel
              Left = 463
              Top = 2
              Width = 84
              Height = 13
              Caption = 'D'#233'bito/Cr'#233'dito'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 562
              Top = 2
              Width = 69
              Height = 13
              Caption = 'Altera Saldo'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 8
              Top = 43
              Width = 151
              Height = 13
              Caption = 'Plano de Contas Financeiro'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 16
              Width = 44
              Height = 21
              DataField = 'OPBCICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 53
              Top = 16
              Width = 403
              Height = 21
              DataField = 'OPBCA60DESCR'
              DataSource = DSTemplate
              TabOrder = 1
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 460
              Top = 16
              Width = 98
              Height = 21
              Style = csDropDownList
              DataField = 'OPBCCTIPO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'D'#233'bito'
                'Cr'#233'dito')
              TabOrder = 2
              Values.Strings = (
                'D'
                'C')
            end
            object RxDBComboBox2: TRxDBComboBox
              Left = 560
              Top = 16
              Width = 89
              Height = 21
              Style = csDropDownList
              DataField = 'OPBCCALTSALDO'
              DataSource = DSTemplate
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 3
              Values.Strings = (
                'S'
                'N')
            end
            object DBEdit3: TDBEdit
              Left = 5
              Top = 56
              Width = 88
              Height = 21
              DataField = 'PLCTA15COD'
              DataSource = DSTemplate
              TabOrder = 4
            end
            object ComboPlanoContas: TRxDBLookupCombo
              Left = 98
              Top = 56
              Width = 553
              Height = 21
              DropDownCount = 8
              DisplayAllFields = True
              DataField = 'PLCTA15COD'
              DataSource = DSTemplate
              LookupField = 'PLCTA15COD'
              LookupDisplay = 'PLCTA60DESCR'
              LookupSource = DSSQLPlanoContas
              TabOrder = 5
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From OPERACAOBANCO Where (%MFiltro)')
    object SQLTemplateOPBCICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OPBCICOD'
      Origin = 'DB.OPERACAOBANCO.OPBCICOD'
      Visible = False
    end
    object SQLTemplateOPBCA60DESCR: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'OPBCA60DESCR'
      Origin = 'DB.OPERACAOBANCO.OPBCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateOPBCCTIPO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tipo'
      FieldName = 'OPBCCTIPO'
      Origin = 'DB.OPERACAOBANCO.OPBCCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOPBCCALTSALDO: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Alt.Saldo'
      FieldName = 'OPBCCALTSALDO'
      Origin = 'DB.OPERACAOBANCO.OPBCCALTSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOBANCO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOBANCO.REGISTRO'
    end
    object SQLTemplatePLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.OPERACAOBANCO.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
  end
  object SQLPlanoContas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * from PLANODECONTAS'
      'Where PLCTCANALSINT = ''A''')
    Macros = <>
    Left = 48
    Top = 212
    object SQLPlanoContasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContasPLCTICODREDUZ: TIntegerField
      FieldName = 'PLCTICODREDUZ'
      Origin = 'DB.PLANODECONTAS.PLCTICODREDUZ'
    end
    object SQLPlanoContasPLCTINIVEL: TIntegerField
      FieldName = 'PLCTINIVEL'
      Origin = 'DB.PLANODECONTAS.PLCTINIVEL'
    end
    object SQLPlanoContasPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContasPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLPlanoContasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoContasPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLPlanoContas: TDataSource
    DataSet = SQLPlanoContas
    Left = 20
    Top = 212
  end
end
