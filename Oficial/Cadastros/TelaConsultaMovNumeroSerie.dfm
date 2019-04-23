inherited FormTelaConsultaMovNumeroSerie: TFormTelaConsultaMovNumeroSerie
  Left = 93
  Top = 121
  Width = 1174
  Caption = 'Movimento N'#250'mero S'#233'rie'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1158
    inherited PanelCentral: TPanel
      Width = 1086
      inherited PanelProcura: TPanel
        Width = 1086
      end
      inherited DBGridLista: TDBGrid
        Width = 1086
        FixedColor = 5278518
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_MOVIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODICOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRSEA60NROSERIE'
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTRADA_SAIDA'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTOORIGEM'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE_FORNECEDOR'
            Title.Caption = 'Cliente/Fornecedor/Representante'
            Width = 347
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_MOVIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORIGEM'
            Title.Caption = 'Origem Lacto'
            Visible = True
          end>
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 1154
      inherited PanelCabecalho: TPanel
        Width = 1154
        inherited PanelNavigator: TPanel
          Width = 1154
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 1154
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From MOVIMENTO_NUMERO_SERIE Where (%MFiltro)')
    object SQLTemplateID_MOVIMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo Mov.'
      FieldName = 'ID_MOVIMENTO'
      Origin = 'DB.MOVIMENTO_NUMERO_SERIE.ID_MOVIMENTO'
    end
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'Cod.Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.MOVIMENTO_NUMERO_SERIE.PRODICOD'
    end
    object SQLTemplatePRSEA60NROSERIE: TStringField
      DisplayLabel = 'N'#250'mero S'#233'rie'
      FieldName = 'PRSEA60NROSERIE'
      Origin = 'DB.MOVIMENTO_NUMERO_SERIE.PRSEA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateENTRADA_SAIDA: TStringField
      DisplayLabel = 'E/S'
      FieldName = 'ENTRADA_SAIDA'
      Origin = 'DB.MOVIMENTO_NUMERO_SERIE.ENTRADA_SAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateDOCUMENTOORIGEM: TStringField
      DisplayLabel = 'Documento Origem'
      FieldName = 'DOCUMENTOORIGEM'
      Origin = 'DB.MOVIMENTO_NUMERO_SERIE.DOCUMENTOORIGEM'
      FixedChar = True
    end
    object SQLTemplateCLIENTE_FORNECEDOR: TStringField
      DisplayLabel = 'Cliente/Fornecedor'
      FieldName = 'CLIENTE_FORNECEDOR'
      Origin = 'DB.MOVIMENTO_NUMERO_SERIE.CLIENTE_FORNECEDOR'
      Size = 100
    end
    object SQLTemplateDATA_MOVIMENTO: TDateTimeField
      DisplayLabel = 'Data Movimento'
      FieldName = 'DATA_MOVIMENTO'
      Origin = 'DB.MOVIMENTO_NUMERO_SERIE.DATA_MOVIMENTO'
    end
    object SQLTemplateORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'DB.MOVIMENTO_NUMERO_SERIE.ORIGEM'
    end
  end
end
