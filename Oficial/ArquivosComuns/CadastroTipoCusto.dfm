inherited FormCadastroTipoCusto: TFormCadastroTipoCusto
  Top = 0
  Caption = 'Tipos de Custo'
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
                    FieldName = 'TPCUICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCUA60DESCR'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCUTFORMULACUSTO'
                    Width = 364
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TPCUTFORMULACOMPRA'
                    Width = 376
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
              object Label3: TLabel
                Left = 7
                Top = 44
                Width = 81
                Height = 13
                Caption = 'F'#243'rmula Custo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 7
                Top = 82
                Width = 93
                Height = 13
                Caption = 'F'#243'rmula Compra'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit3: TDBEdit
                Left = 4
                Top = 58
                Width = 439
                Height = 21
                DataField = 'TPCUTFORMULACUSTO'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit4: TDBEdit
                Left = 4
                Top = 96
                Width = 439
                Height = 21
                DataField = 'TPCUTFORMULACOMPRA'
                DataSource = DSTemplate
                TabOrder = 0
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label1: TLabel
              Left = 7
              Top = 5
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
              Left = 74
              Top = 5
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
              Left = 4
              Top = 18
              Width = 64
              Height = 21
              DataField = 'TPCUICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 71
              Top = 18
              Width = 370
              Height = 21
              DataField = 'TPCUA60DESCR'
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
      'Select * From TipoCusto Where (%MFiltro)')
    object SQLTemplateTPCUICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TPCUICOD'
      Origin = 'UNITGESTAO_ODBC.TipoCusto.TPCUICOD'
      Visible = False
    end
    object SQLTemplateTPCUA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TPCUA60DESCR'
      Origin = 'UNITGESTAO_ODBC.TipoCusto.TPCUA60DESCR'
      FixedChar = True
      Size = 61
    end
    object SQLTemplateTPCUTFORMULACUSTO: TStringField
      DisplayLabel = 'F'#243'rmula de Custo'
      FieldName = 'TPCUTFORMULACUSTO'
      Origin = 'UNITGESTAO_ODBC.TipoCusto.TPCUTFORMULACUSTO'
      Size = 255
    end
    object SQLTemplateTPCUTFORMULACOMPRA: TStringField
      DisplayLabel = 'F'#243'rmula de Compra'
      FieldName = 'TPCUTFORMULACOMPRA'
      Origin = 'UNITGESTAO_ODBC.TipoCusto.TPCUTFORMULACOMPRA'
      Size = 255
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'UNITGESTAO_ODBC.TipoCusto.PENDENTE'
      FixedChar = True
      Size = 2
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'UNITGESTAO_ODBC.TipoCusto.REGISTRO'
    end
  end
end
