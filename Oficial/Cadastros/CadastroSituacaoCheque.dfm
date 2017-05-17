inherited FormCadastroSituacaoCheque: TFormCadastroSituacaoCheque
  Left = 193
  Top = 143
  Caption = 'Situa'#231#245'es de Cheques'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ALINICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ALINA30DESCR'
                    Width = 423
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PENDENTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
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
              object DBRadioGroup1: TDBRadioGroup
                Left = 4
                Top = 4
                Width = 445
                Height = 35
                Columns = 3
                DataField = 'ALINCBLOQCLI'
                DataSource = DSTemplate
                Items.Strings = (
                  'Bloqueia Cliente'
                  'Desbloqueia Cliente'
                  'Nenhum')
                TabOrder = 0
                Values.Strings = (
                  'B'
                  'D'
                  'N')
              end
              object GroupBox9: TGroupBox
                Left = 4
                Top = 40
                Width = 445
                Height = 41
                Caption = ' Motivo de Bloqueio '
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object RxDBLookupCombo7: TRxDBLookupCombo
                  Left = 3
                  Top = 14
                  Width = 438
                  Height = 21
                  DropDownCount = 8
                  DataField = 'MotivoBloqueioLookup'
                  DataSource = DSTemplate
                  TabOrder = 0
                end
              end
              object DBCheckBox1: TDBCheckBox
                Left = 8
                Top = 89
                Width = 130
                Height = 17
                Caption = 'Cheque Devolvido'
                DataField = 'ALINCCHEQDEV'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 11
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
              Left = 60
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
            object DBEdit1: TDBEdit
              Left = 8
              Top = 15
              Width = 47
              Height = 21
              DataField = 'ALINICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 57
              Top = 15
              Width = 394
              Height = 21
              DataField = 'ALINA30DESCR'
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
      'Select * From ALINEA Where (%MFiltro)')
    object SQLTemplateALINICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ALINICOD'
      Origin = 'DB.ALINEA.ALINICOD'
      Visible = False
    end
    object SQLTemplateALINA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ALINA30DESCR'
      Origin = 'DB.ALINEA.ALINA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateALINCBLOQCLI: TStringField
      DisplayLabel = 'Bloq.Cliente'
      FieldName = 'ALINCBLOQCLI'
      Origin = 'DB.ALINEA.ALINCBLOQCLI'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.ALINEA.MTBLICOD'
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.ALINEA.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.ALINEA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateMotivoBloqueioLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'MotivoBloqueioLookup'
      LookupDataSet = SQLMotivoBloqueio
      LookupKeyFields = 'MTBLICOD'
      LookupResultField = 'MTBLA60DESCR'
      KeyFields = 'MTBLICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateALINCCHEQDEV: TStringField
      FieldName = 'ALINCCHEQDEV'
      Origin = 'DB.ALINEA.ALINCCHEQDEV'
      FixedChar = True
      Size = 1
    end
  end
  object SQLMotivoBloqueio: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MOTIVOBLOQUEIO'
      'order by MTBLA60DESCR')
    Macros = <>
    Left = 442
    Top = 1
  end
end
