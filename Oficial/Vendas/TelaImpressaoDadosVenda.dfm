object FormTelaImpressaoDadosVenda: TFormTelaImpressaoDadosVenda
  Left = 564
  Top = 317
  Width = 316
  Height = 224
  Caption = 'FormTelaImpressaoDadosVenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Imprime: TBitBtn
    Left = 61
    Top = 85
    Width = 75
    Height = 25
    Caption = 'Imprime'
    TabOrder = 0
    OnClick = ImprimeClick
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 108
    Top = 22
    Version = '10.06'
    mmColumnWidth = 0
    object ppTitleBand4: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel58: TppLabel
        UserName = 'Label58'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '* FICHA DE VENDA *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Sans Serif 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 74083
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ProtocoloEntrega: TppSubReport
        UserName = 'ProtocoloEntrega'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'PipeItem'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipeItem
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeItem'
          object ppTitleBand2: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 43392
            mmPrintPosition = 0
            object ppLabel8: TppLabel
              UserName = 'Label8'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Cliente....:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 10583
              mmWidth = 17727
              BandType = 1
            end
            object ppDBText13: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Cliente'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 10583
              mmWidth = 57679
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '----------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 25400
              mmWidth = 75406
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'C'#243'digo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 29898
              mmWidth = 16140
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Descri'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 17463
              mmTop = 29898
              mmWidth = 57415
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Qtde.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 17463
              mmTop = 34396
              mmWidth = 6879
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Pre'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 54240
              mmTop = 34396
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-----------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 38894
              mmWidth = 75406
              BandType = 1
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NomeEmpresa'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 1588
              mmWidth = 75406
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Desc.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 63236
              mmTop = 34396
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label201'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Venda......:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 6085
              mmWidth = 17727
              BandType = 1
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TicketNumero'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 6085
              mmWidth = 19262
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Fone Cli...:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 15081
              mmWidth = 17727
              BandType = 1
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'FoneCliente'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 15081
              mmWidth = 57679
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Nro.Cartao.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 19579
              mmWidth = 17727
              BandType = 1
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NroCreditCard'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 19579
              mmWidth = 57679
              BandType = 1
            end
            object ppDBText48: TppDBText
              UserName = 'DBText48'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DataEmissao'
              DataPipeline = PipeCab
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 3302
              mmLeft = 40746
              mmTop = 6085
              mmWidth = 34925
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Descricao'
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 17463
              mmTop = 0
              mmWidth = 57679
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Codigo'
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 265
              mmTop = 0
              mmWidth = 16140
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Quantidade'
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 17463
              mmTop = 4233
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ValorUnitario'
              DataPipeline = PipeItem
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 47096
              mmTop = 4233
              mmWidth = 14552
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Desconto'
              DataPipeline = PipeItem
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 62706
              mmTop = 4233
              mmWidth = 12435
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 130704
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total Geral'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 40217
              mmTop = 4498
              mmWidth = 14464
              BandType = 7
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-----------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 0
              mmWidth = 75406
              BandType = 7
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 40217
              mmTop = 13494
              mmWidth = 7408
              BandType = 7
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Desconto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 40217
              mmTop = 8996
              mmWidth = 11906
              BandType = 7
            end
            object ppDBText16: TppDBText
              UserName = 'DBText16'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Desconto'
              DataPipeline = PipeCab
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 69214
              mmTop = 8996
              mmWidth = 5927
              BandType = 7
            end
            object ppLabel1: TppLabel
              UserName = 'Label1'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Tipo Pagto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 22490
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NumerarioPagto'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 22490
              mmWidth = 57679
              BandType = 7
            end
            object ppLabel2: TppLabel
              UserName = 'Label2'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Tipo Venda:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 26988
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TipoVenda'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 26988
              mmWidth = 57679
              BandType = 7
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Entrega:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 31485
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DataEntrega'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 31485
              mmWidth = 57679
              BandType = 7
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '* PROTOCOLO DE ENTREGA *'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 44186
              mmWidth = 75406
              BandType = 7
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NomeEmpresa'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 48683
              mmWidth = 75406
              BandType = 7
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Venda :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 53181
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TicketNumero'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 53181
              mmWidth = 19262
              BandType = 7
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-----------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 35983
              mmWidth = 75406
              BandType = 7
            end
            object ppLabelLinhaAss: TppLabel
              UserName = 'LabelLinhaAss'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 121709
              mmWidth = 75406
              BandType = 7
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Entrega:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 77258
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DataEntrega'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 77258
              mmWidth = 57679
              BandType = 7
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'ENTREGADOR:_______________________________'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 111919
              mmWidth = 75406
              BandType = 7
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '* PESSOA QUE VAI RECEBER *'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 72761
              mmWidth = 75406
              BandType = 7
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vendedor :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 57679
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Vendedor'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 57679
              mmWidth = 57415
              BandType = 7
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vendedor :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 17992
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText31: TppDBText
              UserName = 'DBText301'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Vendedor'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 17992
              mmWidth = 57679
              BandType = 7
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TotalNominal'
              DataPipeline = PipeCab
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 66251
              mmTop = 4498
              mmWidth = 8890
              BandType = 7
            end
            object ppDBText41: TppDBText
              UserName = 'DBText41'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TotalGeral'
              DataPipeline = PipeCab
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 66251
              mmTop = 13494
              mmWidth = 8890
              BandType = 7
            end
            object ppDBText42: TppDBText
              UserName = 'DBText42'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PessoaRecebeNome'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 81756
              mmWidth = 75406
              BandType = 7
            end
            object ppDBText43: TppDBText
              UserName = 'DBText43'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PessoaRecebeEnder'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 86254
              mmWidth = 75406
              BandType = 7
            end
            object ppDBText44: TppDBText
              UserName = 'DBText44'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PessoaRecebeBai'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 90752
              mmWidth = 75406
              BandType = 7
            end
            object ppDBText45: TppDBText
              UserName = 'DBText45'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PessoaRecebeCid'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 95250
              mmWidth = 69056
              BandType = 7
            end
            object ppDBText46: TppDBText
              UserName = 'DBText46'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PessoaRecebeUF'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 69586
              mmTop = 95250
              mmWidth = 6085
              BandType = 7
            end
            object ppLabel49: TppLabel
              UserName = 'Label102'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Cliente:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 62177
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText22: TppDBText
              UserName = 'DBText22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Cliente'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 62177
              mmWidth = 57679
              BandType = 7
            end
            object ppLabel50: TppLabel
              UserName = 'Label50'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Fone:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 66675
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'FoneCliente'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 66675
              mmWidth = 57679
              BandType = 7
            end
            object ppLabel51: TppLabel
              UserName = 'Label51'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Data: _____/_____/________   Hora:_____:_____'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 106098
              mmWidth = 66675
              BandType = 7
            end
            object ppDBText21: TppDBText
              UserName = 'DBText21'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PessoaRecebeNome'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 126207
              mmWidth = 75406
              BandType = 7
            end
            object ppDBText52: TppDBText
              UserName = 'DBText52'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PessoaRecebeFone'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 99748
              mmWidth = 75406
              BandType = 7
            end
            object ppDBText59: TppDBText
              UserName = 'DBText59'
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DataEntrega'
              DataPipeline = PipeCab
              DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 47519
              mmTop = 53181
              mmWidth = 28152
              BandType = 7
            end
          end
        end
      end
      object ProtocoloFabricacao: TppSubReport
        UserName = 'ProtocoloFabricacao'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ProtocoloEntrega
        TraverseAllData = False
        DataPipelineName = 'PipeItem'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5292
        mmWidth = 203300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = PipeItem
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeItem'
          object ppTitleBand3: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 39688
            mmPrintPosition = 0
            object ppLabel4: TppLabel
              UserName = 'Label4'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '* ORDEM DE FABRICACAO *'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 6879
              mmWidth = 74083
              BandType = 1
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NomeEmpresa'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 12965
              mmWidth = 74083
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Venda :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 17463
              mmWidth = 17727
              BandType = 1
            end
            object ppDBText19: TppDBText
              UserName = 'DBText201'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TicketNumero'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 17463
              mmWidth = 19262
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 21960
              mmWidth = 74083
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'C'#243'digo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 26458
              mmWidth = 16140
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Descri'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 16933
              mmTop = 26458
              mmWidth = 57415
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Qtde.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 16933
              mmTop = 30956
              mmWidth = 6879
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Pre'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 53711
              mmTop = 30956
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 35454
              mmWidth = 74348
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Desc.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 62706
              mmTop = 30956
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel59: TppLabel
              UserName = 'Label202'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 1058
              mmWidth = 74083
              BandType = 1
            end
            object ppDBText49: TppDBText
              UserName = 'DBText49'
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DataEmissao'
              DataPipeline = PipeCab
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 59532
              mmTop = 17463
              mmWidth = 14817
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Descricao'
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 16933
              mmTop = 265
              mmWidth = 57679
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Codigo'
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 265
              mmTop = 265
              mmWidth = 16140
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Quantidade'
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 16933
              mmTop = 4498
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText102'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ValorUnitario'
              DataPipeline = PipeItem
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 46567
              mmTop = 4498
              mmWidth = 14552
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Desconto'
              DataPipeline = PipeItem
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 62177
              mmTop = 4498
              mmWidth = 12435
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 41275
            mmPrintPosition = 0
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DataEntrega'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 22225
              mmWidth = 57679
              BandType = 7
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Entrega:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 22225
              mmWidth = 17727
              BandType = 7
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-----------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 265
              mmTop = 18256
              mmWidth = 77788
              BandType = 7
            end
            object ppLabel55: TppLabel
              UserName = 'Label55'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total Geral'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 39952
              mmTop = 3969
              mmWidth = 14464
              BandType = 7
            end
            object ppLabel56: TppLabel
              UserName = 'Label56'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 39952
              mmTop = 12965
              mmWidth = 7408
              BandType = 7
            end
            object ppLabel57: TppLabel
              UserName = 'Label57'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Desconto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 39952
              mmTop = 8467
              mmWidth = 11906
              BandType = 7
            end
            object ppDBText53: TppDBText
              UserName = 'DBText53'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Desconto'
              DataPipeline = PipeCab
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 68950
              mmTop = 8467
              mmWidth = 5927
              BandType = 7
            end
            object ppDBText54: TppDBText
              UserName = 'DBText54'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TotalNominal'
              DataPipeline = PipeCab
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 65987
              mmTop = 3969
              mmWidth = 8890
              BandType = 7
            end
            object ppDBText55: TppDBText
              UserName = 'DBText55'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TotalGeral'
              DataPipeline = PipeCab
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 65987
              mmTop = 12965
              mmWidth = 8890
              BandType = 7
            end
            object ppLabel60: TppLabel
              UserName = 'Label60'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-----------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 0
              mmWidth = 77788
              BandType = 7
            end
            object ppLabel65: TppLabel
              UserName = 'Label65'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vendedor:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 26723
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText47: TppDBText
              UserName = 'DBText47'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Vendedor'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 26723
              mmWidth = 57679
              BandType = 7
            end
            object ppLabel53: TppLabel
              UserName = 'Label53'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '* * M E N S A G E M  * *'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 31221
              mmWidth = 77788
              BandType = 7
            end
            object ppDBMemo1: TppDBMemo
              UserName = 'DBMemo1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              CharWrap = True
              DataField = 'Mensagem2'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 3704
              mmLeft = 265
              mmTop = 35719
              mmWidth = 77788
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmLeading = 0
            end
          end
        end
      end
      object ProtocoloEncomenda: TppSubReport
        UserName = 'ProtocoloEncomenda'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ProtocoloFabricacao
        TraverseAllData = False
        DataPipelineName = 'PipeItem'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 10583
        mmWidth = 203300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = PipeItem
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeItem'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 45508
            mmPrintPosition = 0
            object ppLabel37: TppLabel
              UserName = 'Label4'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '* RECIBO DE ENCOMENDA *'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 4498
              mmWidth = 74083
              BandType = 1
            end
            object ppDBText32: TppDBText
              UserName = 'DBText15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NomeEmpresa'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 10054
              mmWidth = 74083
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label5'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Venda :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 14552
              mmWidth = 17727
              BandType = 1
            end
            object ppDBText33: TppDBText
              UserName = 'DBText201'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TicketNumero'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17992
              mmTop = 14552
              mmWidth = 19262
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label20'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 27517
              mmWidth = 74083
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label26'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'C'#243'digo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 31485
              mmWidth = 16140
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label27'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Descri'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 17198
              mmTop = 31485
              mmWidth = 57415
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label28'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Qtde.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 17198
              mmTop = 35983
              mmWidth = 6879
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label29'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Pre'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 53975
              mmTop = 35983
              mmWidth = 7144
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label30'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 265
              mmTop = 40481
              mmWidth = 74348
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label31'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Desc.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 62971
              mmTop = 35983
              mmWidth = 11642
              BandType = 1
            end
            object ppDBText34: TppDBText
              UserName = 'DBText34'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Cliente'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 265
              mmTop = 21167
              mmWidth = 74877
              BandType = 1
            end
            object ppLabel54: TppLabel
              UserName = 'Label301'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 74348
              BandType = 1
            end
            object ppDBText50: TppDBText
              UserName = 'DBText50'
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DataEmissao'
              DataPipeline = PipeCab
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 59531
              mmTop = 14552
              mmWidth = 14817
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppDBText35: TppDBText
              UserName = 'DBText1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Descricao'
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 16933
              mmTop = 265
              mmWidth = 57679
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Codigo'
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 265
              mmTop = 265
              mmWidth = 16140
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Quantidade'
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 16933
              mmTop = 4498
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText102'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ValorUnitario'
              DataPipeline = PipeItem
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 46567
              mmTop = 4498
              mmWidth = 14552
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Desconto'
              DataPipeline = PipeItem
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 3969
              mmLeft = 62177
              mmTop = 4498
              mmWidth = 12435
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 33338
            mmPrintPosition = 0
            object ppDBText40: TppDBText
              UserName = 'DBText27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DataEntrega'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17727
              mmTop = 23019
              mmWidth = 59796
              BandType = 7
            end
            object ppLabel46: TppLabel
              UserName = 'Label32'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Entrega:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 23019
              mmWidth = 17727
              BandType = 7
            end
            object ppLabel48: TppLabel
              UserName = 'Label48'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-----------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 19050
              mmWidth = 77788
              BandType = 7
            end
            object ppLabel52: TppLabel
              UserName = 'Label52'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Vendedor :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 28046
              mmWidth = 17727
              BandType = 7
            end
            object ppDBText51: TppDBText
              UserName = 'DBText51'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Vendedor'
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 17727
              mmTop = 28046
              mmWidth = 59796
              BandType = 7
            end
            object ppLabel61: TppLabel
              UserName = 'Label61'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total Geral'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 39952
              mmTop = 3969
              mmWidth = 14464
              BandType = 7
            end
            object ppLabel62: TppLabel
              UserName = 'Label62'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 39952
              mmTop = 12965
              mmWidth = 7408
              BandType = 7
            end
            object ppLabel63: TppLabel
              UserName = 'Label63'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Desconto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 39952
              mmTop = 8467
              mmWidth = 11906
              BandType = 7
            end
            object ppDBText56: TppDBText
              UserName = 'DBText56'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Desconto'
              DataPipeline = PipeCab
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 68950
              mmTop = 8467
              mmWidth = 5927
              BandType = 7
            end
            object ppDBText57: TppDBText
              UserName = 'DBText57'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TotalNominal'
              DataPipeline = PipeCab
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 65987
              mmTop = 3969
              mmWidth = 8890
              BandType = 7
            end
            object ppDBText58: TppDBText
              UserName = 'DBText58'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TotalGeral'
              DataPipeline = PipeCab
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 4233
              mmLeft = 65987
              mmTop = 12965
              mmWidth = 8890
              BandType = 7
            end
            object ppLabel64: TppLabel
              UserName = 'Label601'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 
                '----------------------------------------------------------------' +
                '-----------------------------------------------'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 0
              mmWidth = 77788
              BandType = 7
            end
          end
        end
      end
    end
  end
  object DSTblTicketPreVendaCab: TDataSource
    DataSet = TblTicketPreVendaCab
    Left = 52
    Top = 8
  end
  object TblTicketPreVendaCab: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaCab.DB'
    Left = 24
    Top = 8
    object TblTicketPreVendaCabTicketNumero: TStringField
      FieldName = 'TicketNumero'
      Size = 13
    end
    object TblTicketPreVendaCabVendedor: TStringField
      FieldName = 'Vendedor'
      Size = 60
    end
    object TblTicketPreVendaCabPlano: TStringField
      FieldName = 'Plano'
      Size = 60
    end
    object TblTicketPreVendaCabCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblTicketPreVendaCabFoneCliente: TStringField
      FieldName = 'FoneCliente'
      Size = 15
    end
    object TblTicketPreVendaCabTotalNominal: TFloatField
      FieldName = 'TotalNominal'
    end
    object TblTicketPreVendaCabTaxaCrediario: TFloatField
      FieldName = 'TaxaCrediario'
    end
    object TblTicketPreVendaCabAcrescimo: TFloatField
      FieldName = 'Acrescimo'
    end
    object TblTicketPreVendaCabDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblTicketPreVendaCabTotalGeral: TFloatField
      FieldName = 'TotalGeral'
    end
    object TblTicketPreVendaCabNomeEmpresa: TStringField
      FieldName = 'NomeEmpresa'
      Size = 60
    end
    object TblTicketPreVendaCabFoneEmpresa: TStringField
      FieldName = 'FoneEmpresa'
      Size = 15
    end
    object TblTicketPreVendaCabNroCreditCard: TStringField
      FieldName = 'NroCreditCard'
    end
    object TblTicketPreVendaCabNumerarioPagto: TStringField
      FieldName = 'NumerarioPagto'
      Size = 60
    end
    object TblTicketPreVendaCabMensagem: TStringField
      FieldName = 'Mensagem'
      Size = 254
    end
    object TblTicketPreVendaCabDataEntrega: TStringField
      FieldName = 'DataEntrega'
      Size = 30
    end
    object TblTicketPreVendaCabTipoVenda: TStringField
      FieldName = 'TipoVenda'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeNome: TStringField
      FieldName = 'PessoaRecebeNome'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeEnder: TStringField
      FieldName = 'PessoaRecebeEnder'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeBai: TStringField
      FieldName = 'PessoaRecebeBai'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeCid: TStringField
      FieldName = 'PessoaRecebeCid'
      Size = 60
    end
    object TblTicketPreVendaCabPessoaRecebeUF: TStringField
      FieldName = 'PessoaRecebeUF'
      Size = 2
    end
    object TblTicketPreVendaCabPessoaRecebeFone: TStringField
      FieldName = 'PessoaRecebeFone'
      Size = 15
    end
    object TblTicketPreVendaCabMensagem2: TMemoField
      FieldName = 'Mensagem2'
      BlobType = ftMemo
      Size = 240
    end
    object TblTicketPreVendaCabDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
  end
  object PipeCab: TppBDEPipeline
    DataSource = DSTblTicketPreVendaCab
    CloseDataSource = True
    UserName = 'PipeCab'
    Left = 80
    Top = 8
    object PipeCabppField1: TppField
      FieldAlias = 'TicketNumero'
      FieldName = 'TicketNumero'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object PipeCabppField2: TppField
      FieldAlias = 'Vendedor'
      FieldName = 'Vendedor'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object PipeCabppField3: TppField
      FieldAlias = 'Plano'
      FieldName = 'Plano'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object PipeCabppField4: TppField
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object PipeCabppField5: TppField
      FieldAlias = 'FoneCliente'
      FieldName = 'FoneCliente'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object PipeCabppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalNominal'
      FieldName = 'TotalNominal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object PipeCabppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TaxaCrediario'
      FieldName = 'TaxaCrediario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object PipeCabppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Acrescimo'
      FieldName = 'Acrescimo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object PipeCabppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto'
      FieldName = 'Desconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object PipeCabppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalGeral'
      FieldName = 'TotalGeral'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object PipeCabppField11: TppField
      FieldAlias = 'NomeEmpresa'
      FieldName = 'NomeEmpresa'
      FieldLength = 60
      DisplayWidth = 60
      Position = 10
    end
    object PipeCabppField12: TppField
      FieldAlias = 'FoneEmpresa'
      FieldName = 'FoneEmpresa'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object PipeCabppField13: TppField
      FieldAlias = 'NroCreditCard'
      FieldName = 'NroCreditCard'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object PipeCabppField14: TppField
      FieldAlias = 'NumerarioPagto'
      FieldName = 'NumerarioPagto'
      FieldLength = 60
      DisplayWidth = 60
      Position = 13
    end
    object PipeCabppField15: TppField
      FieldAlias = 'Mensagem'
      FieldName = 'Mensagem'
      FieldLength = 254
      DisplayWidth = 254
      Position = 14
    end
    object PipeCabppField16: TppField
      FieldAlias = 'DataEntrega'
      FieldName = 'DataEntrega'
      FieldLength = 30
      DisplayWidth = 30
      Position = 15
    end
    object PipeCabppField17: TppField
      FieldAlias = 'TipoVenda'
      FieldName = 'TipoVenda'
      FieldLength = 60
      DisplayWidth = 60
      Position = 16
    end
    object PipeCabppField18: TppField
      FieldAlias = 'PessoaRecebeNome'
      FieldName = 'PessoaRecebeNome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object PipeCabppField19: TppField
      FieldAlias = 'PessoaRecebeEnder'
      FieldName = 'PessoaRecebeEnder'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object PipeCabppField20: TppField
      FieldAlias = 'PessoaRecebeBai'
      FieldName = 'PessoaRecebeBai'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object PipeCabppField21: TppField
      FieldAlias = 'PessoaRecebeCid'
      FieldName = 'PessoaRecebeCid'
      FieldLength = 60
      DisplayWidth = 60
      Position = 20
    end
    object PipeCabppField22: TppField
      FieldAlias = 'PessoaRecebeUF'
      FieldName = 'PessoaRecebeUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 21
    end
    object PipeCabppField23: TppField
      FieldAlias = 'PessoaRecebeFone'
      FieldName = 'PessoaRecebeFone'
      FieldLength = 15
      DisplayWidth = 15
      Position = 22
    end
    object PipeCabppField24: TppField
      FieldAlias = 'Mensagem2'
      FieldName = 'Mensagem2'
      FieldLength = 240
      DataType = dtMemo
      DisplayWidth = 10
      Position = 23
      Searchable = False
      Sortable = False
    end
    object PipeCabppField25: TppField
      FieldAlias = 'DataEmissao'
      FieldName = 'DataEmissao'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 24
    end
  end
  object TblTicketPreVendaItem: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TicketPreVendaItem.DB'
    Left = 24
    Top = 36
    object TblTicketPreVendaItemCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblTicketPreVendaItemDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
    object TblTicketPreVendaItemQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object TblTicketPreVendaItemValorUnitario: TFloatField
      FieldName = 'ValorUnitario'
    end
    object TblTicketPreVendaItemValorTotal: TFloatField
      FieldName = 'ValorTotal'
    end
    object TblTicketPreVendaItemDesconto: TFloatField
      FieldName = 'Desconto'
    end
    object TblTicketPreVendaItemMarca: TStringField
      FieldName = 'Marca'
      Size = 15
    end
    object TblTicketPreVendaItemReferencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
  end
  object DSTblTicketPreVendaItem: TDataSource
    DataSet = TblTicketPreVendaItem
    Left = 52
    Top = 36
  end
  object PipeItem: TppBDEPipeline
    DataSource = DSTblTicketPreVendaItem
    UserName = 'PipeItem'
    Left = 80
    Top = 36
    object PipeItemppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object PipeItemppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object PipeItemppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object PipeItemppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorUnitario'
      FieldName = 'ValorUnitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object PipeItemppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorTotal'
      FieldName = 'ValorTotal'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object PipeItemppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto'
      FieldName = 'Desconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object PipeItemppField7: TppField
      FieldAlias = 'Marca'
      FieldName = 'Marca'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object PipeItemppField8: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
  end
end
