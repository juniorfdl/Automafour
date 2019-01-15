inherited FormTelaConsultaMovRepresentante: TFormTelaConsultaMovRepresentante
  Left = 332
  Top = 104
  Width = 896
  Caption = 'Estoque Representante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 880
    inherited PanelCentral: TPanel
      Width = 937
      inherited PanelProcura: TPanel
        Width = 937
      end
      inherited DBGridLista: TDBGrid
        Width = 937
        FixedColor = 5278518
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODICOD'
            Title.Alignment = taCenter
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODA60DESCR'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRSEA60NROSERIE'
            Title.Alignment = taCenter
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_SAIDA'
            Title.Alignment = taCenter
            Width = 117
            Visible = True
          end>
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 937
      inherited PanelCabecalho: TPanel
        Width = 937
        inherited PanelNavigator: TPanel
          Width = 937
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 937
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    RequestLive = False
    SQL.Strings = (
      
        'select PRODUTOREPRESENTANTE.PRODICOD, PRODUTO.PRODA60DESCR, PROD' +
        'UTOREPRESENTANTE.PRSEA60NROSERIE,'
      '       PRODUTOREPRESENTANTE.DATA_SAIDA'
      'from PRODUTOREPRESENTANTE'
      
        'left join PRODUTOSERIE on PRODUTOREPRESENTANTE.PRSEA60NROSERIE =' +
        ' PRODUTOSERIE.PRSEA60NROSERIE'
      
        'left join REPRESENTANTE on PRODUTOREPRESENTANTE.REPRICOD = REPRE' +
        'SENTANTE.REPRICOD'
      
        'left join PRODUTO on PRODUTOREPRESENTANTE.PRODICOD = PRODUTO.PRO' +
        'DICOD'
      'where PRODUTOSERIE.PRSECSTATUS = '#39'U'#39' and'
      '      PRODUTOREPRESENTANTE.REPRICOD = :REPRICOD  and '
      '(%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REPRICOD'
        ParamType = ptInput
      end>
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'PRODICOD'
    end
    object SQLTemplatePRODA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o Produto'
      FieldName = 'PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplatePRSEA60NROSERIE: TStringField
      DisplayLabel = 'N'#250'mero S'#233'rie'
      FieldName = 'PRSEA60NROSERIE'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateDATA_SAIDA: TDateTimeField
      DisplayLabel = 'Data Sa'#237'da'
      FieldName = 'DATA_SAIDA'
    end
  end
end
