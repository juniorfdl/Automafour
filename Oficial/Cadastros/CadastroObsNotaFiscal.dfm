inherited FormCadastroObsNotaFiscal: TFormCadastroObsNotaFiscal
  Caption = 'Observa'#231#245'es de Nota Fiscal'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 198
            Height = 251
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 178
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'OBSNICOD'
                    Width = 45
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOFIA50DESC'
                    Title.Caption = 'Observa'#231#227'o Reduzida'
                    Width = 581
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
            Top = 157
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 157
            object Label1: TLabel
              Left = 6
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
              Left = 7
              Top = 47
              Width = 114
              Height = 13
              Caption = 'Descri'#231#227'o Extendida'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 75
              Top = 3
              Width = 110
              Height = 13
              Caption = 'Descri'#231#227'o Reduzida'
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
              Width = 64
              Height = 21
              DataField = 'OBSNICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBMemo1: TDBMemo
              Left = 4
              Top = 60
              Width = 577
              Height = 89
              DataField = 'OBSNA255DESC'
              DataSource = DSTemplate
              TabOrder = 2
            end
            object DBEdit2: TDBEdit
              Left = 76
              Top = 16
              Width = 501
              Height = 21
              DataField = 'NOFIA50DESC'
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
      'Select * From OBSNF Where (%MFiltro)')
    object SQLTemplateOBSNICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'OBSNICOD'
      Origin = 'DB.OBSNF.OBSNICOD'
      Visible = False
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OBSNF.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OBSNF.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateOBSNA255DESC: TMemoField
      FieldName = 'OBSNA255DESC'
      Origin = 'DB.OBSNF.OBSNA255DESC'
      BlobType = ftMemo
      Size = 1
    end
    object SQLTemplateNOFIA50DESC: TStringField
      FieldName = 'NOFIA50DESC'
      Origin = 'DB.OBSNF.NOFIA50DESC'
      Size = 50
    end
  end
end
