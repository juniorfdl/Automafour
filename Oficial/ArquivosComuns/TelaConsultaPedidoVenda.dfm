inherited FormTelaConsultaPedidoVenda: TFormTelaConsultaPedidoVenda
  Caption = 'Consulta Pedidos de Venda'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited DBGridLista: TDBGrid
        Font.Color = clBlack
        Columns = <
          item
            Expanded = False
            FieldName = 'PDVDA13ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVDDEMISSAO'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVDDENTREGA'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA13ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDICOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVDN2TOTPED'
            Title.Caption = 'Vlr.Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVDCSTATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVDINROTALAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ROTAICOD'
            Visible = True
          end>
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From PedidoVenda Where (%MFiltro)')
    object SQLTemplatePDVDA13ID: TStringField
      DisplayLabel = 'ID Pedido'
      FieldName = 'PDVDA13ID'
      Origin = 'DB.PEDIDOVENDA.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PEDIDOVENDA.EMPRICOD'
    end
    object SQLTemplatePDVDICOD: TIntegerField
      FieldName = 'PDVDICOD'
      Origin = 'DB.PEDIDOVENDA.PDVDICOD'
    end
    object SQLTemplateVENDICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.PEDIDOVENDA.VENDICOD'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.PEDIDOVENDA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.PEDIDOVENDA.TRANICOD'
    end
    object SQLTemplatePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PEDIDOVENDA.PLRCICOD'
    end
    object SQLTemplatePDVDDEMISSAO: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'PDVDDEMISSAO'
      Origin = 'DB.PEDIDOVENDA.PDVDDEMISSAO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplatePDVDN2VLRFRETE: TBCDField
      FieldName = 'PDVDN2VLRFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRFRETE'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDA30NROPEDCOMP: TStringField
      FieldName = 'PDVDA30NROPEDCOMP'
      Origin = 'DB.PEDIDOVENDA.PDVDA30NROPEDCOMP'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePDVDA30COMPRADOR: TStringField
      FieldName = 'PDVDA30COMPRADOR'
      Origin = 'DB.PEDIDOVENDA.PDVDA30COMPRADOR'
      FixedChar = True
      Size = 30
    end
    object SQLTemplatePDVDCTIPO: TStringField
      FieldName = 'PDVDCTIPO'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDCSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'PDVDCSTATUS'
      Origin = 'DB.PEDIDOVENDA.PDVDCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDN2VLRDESC: TBCDField
      FieldName = 'PDVDN2VLRDESC'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESC'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDN2TOTPROD: TBCDField
      FieldName = 'PDVDN2TOTPROD'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPROD'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDN2TOTPED: TBCDField
      FieldName = 'PDVDN2TOTPED'
      Origin = 'DB.PEDIDOVENDA.PDVDN2TOTPED'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDTOBS: TStringField
      FieldName = 'PDVDTOBS'
      Origin = 'DB.PEDIDOVENDA.PDVDTOBS'
      FixedChar = True
      Size = 254
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PEDIDOVENDA.REGISTRO'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PEDIDOVENDA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDN2VLRDESCPROM: TBCDField
      FieldName = 'PDVDN2VLRDESCPROM'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLRDESCPROM'
      Precision = 15
      Size = 3
    end
    object SQLTemplatePDVDCTIPOFRETE: TStringField
      FieldName = 'PDVDCTIPOFRETE'
      Origin = 'DB.PEDIDOVENDA.PDVDCTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDDENTREGA: TDateTimeField
      DisplayLabel = 'Dt.Entrega'
      FieldName = 'PDVDDENTREGA'
      Origin = 'DB.PEDIDOVENDA.PDVDDENTREGA'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SQLTemplatePDVDINROTALAO: TIntegerField
      DisplayLabel = 'Nro.Tal'#227'o'
      FieldName = 'PDVDINROTALAO'
      Origin = 'DB.PEDIDOVENDA.PDVDINROTALAO'
    end
    object SQLTemplatePDVDCIMPORTADO: TStringField
      FieldName = 'PDVDCIMPORTADO'
      Origin = 'DB.PEDIDOVENDA.PDVDCIMPORTADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplatePDVDN2PERCFAT: TBCDField
      FieldName = 'PDVDN2PERCFAT'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCFAT'
      Precision = 15
      Size = 2
    end
    object SQLTemplatePDVDN2PERCOMIS: TBCDField
      FieldName = 'PDVDN2PERCOMIS'
      Origin = 'DB.PEDIDOVENDA.PDVDN2PERCOMIS'
      Precision = 15
      Size = 2
    end
    object SQLTemplateUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.PEDIDOVENDA.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.PEDIDOVENDA.OPESICOD'
    end
    object SQLTemplateROTAICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Rota'
      FieldName = 'ROTAICOD'
      Origin = 'DB.PEDIDOVENDA.ROTAICOD'
    end
    object SQLTemplateNOFIAOBSCORPONF: TStringField
      FieldName = 'NOFIAOBSCORPONF'
      Origin = 'DB.PEDIDOVENDA.NOFIAOBSCORPONF'
      FixedChar = True
      Size = 200
    end
    object SQLTemplatePDVD8PLACAVEIC: TStringField
      FieldName = 'PDVD8PLACAVEIC'
      Origin = 'DB.PEDIDOVENDA.PDVD8PLACAVEIC'
      FixedChar = True
      Size = 8
    end
    object SQLTemplatePDVDA15NROPEDPALM: TStringField
      FieldName = 'PDVDA15NROPEDPALM'
      Origin = 'DB.PEDIDOVENDA.PDVDA15NROPEDPALM'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.PEDIDOVENDA.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateVEICA13ID: TStringField
      FieldName = 'VEICA13ID'
      Origin = 'DB.PEDIDOVENDA.VEICA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplatePDVDN2VLROUTRASDESP: TBCDField
      FieldName = 'PDVDN2VLROUTRASDESP'
      Origin = 'DB.PEDIDOVENDA.PDVDN2VLROUTRASDESP'
      Precision = 15
      Size = 3
    end
  end
end
