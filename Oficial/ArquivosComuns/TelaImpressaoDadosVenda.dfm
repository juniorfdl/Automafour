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
    AutoStop = False
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 139
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
      mmHeight = 1820072
      mmPrintPosition = 0
      object ppLabel58: TppLabel
        UserName = 'ppLabel58'
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
        mmHeight = 1119983
        mmLeft = 70115
        mmTop = 210080
        mmWidth = 19601166
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4130154
      mmPrintPosition = 0
      object ProtocoloEntrega: TppSubReport
        UserName = 'ProtocoloEntrega'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'PipeItem'
        mmHeight = 1330063
        mmLeft = 0
        mmTop = 0
        mmWidth = 53789899
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipeItem
          PassSetting = psTwoPass
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 0
          PrinterSetup.mmPaperWidth = 0
          PrinterSetup.PaperSize = 139
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeItem'
          object ppTitleBand2: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 70115
            mmHeight = 11480823
            mmPrintPosition = 0
            object ppLabel8: TppLabel
              UserName = 'ppLabel8'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 2800091
              mmWidth = 4690278
              BandType = 1
            end
            object ppDBText13: TppDBText
              UserName = 'ppDBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 2800091
              mmWidth = 15260932
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'ppLabel14'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 6720430
              mmWidth = 19951211
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'ppLabel16'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 7910528
              mmWidth = 4270384
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'ppLabel19'
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
              mmHeight = 1119983
              mmLeft = 4620428
              mmTop = 7910528
              mmWidth = 15191082
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'ppLabel21'
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
              mmHeight = 1119983
              mmLeft = 4620428
              mmTop = 9100626
              mmWidth = 1820072
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'ppLabel22'
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
              mmHeight = 1119983
              mmLeft = 14351029
              mmTop = 9100626
              mmWidth = 1890187
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'ppLabel23'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 10290725
              mmWidth = 19951211
              BandType = 1
            end
            object ppDBText17: TppDBText
              UserName = 'ppDBText17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 420159
              mmWidth = 19951211
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'ppLabel24'
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
              mmHeight = 1119983
              mmLeft = 16731225
              mmTop = 9100626
              mmWidth = 3080285
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'ppLabel25'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 1609993
              mmWidth = 4690278
              BandType = 1
            end
            object ppDBText20: TppDBText
              UserName = 'ppDBText20'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 3260
              mmLeft = 4760393
              mmTop = 1609993
              mmWidth = 15367
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'ppLabel11'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 3990189
              mmWidth = 4690278
              BandType = 1
            end
            object ppDBText28: TppDBText
              UserName = 'ppDBText28'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 3990189
              mmWidth = 15260932
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'ppLabel34'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 5180287
              mmWidth = 4690278
              BandType = 1
            end
            object ppDBText29: TppDBText
              UserName = 'ppDBText29'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 5180287
              mmWidth = 15260932
              BandType = 1
            end
            object ppDBText48: TppDBText
              UserName = 'ppDBText48'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 873656
              mmLeft = 10780734
              mmTop = 1609993
              mmWidth = 9240591
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 2170117
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              UserName = 'ppDBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 1050133
              mmLeft = 4620428
              mmTop = 0
              mmWidth = 15260932
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'ppDBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 1050133
              mmLeft = 70115
              mmTop = 0
              mmWidth = 4270384
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'ppDBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 1050133
              mmLeft = 4620428
              mmTop = 1119983
              mmWidth = 1890187
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'ppDBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 1050133
              mmLeft = 12460841
              mmTop = 1119983
              mmWidth = 3850224
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'ppDBText18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 1050133
              mmLeft = 16590996
              mmTop = 1119983
              mmWidth = 3290100
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 69851
            mmHeight = 34582169
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              UserName = 'ppLabel12'
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
              mmHeight = 1119983
              mmLeft = 10640769
              mmTop = 1190098
              mmWidth = 3826941
              BandType = 7
            end
            object ppLabel13: TppLabel
              UserName = 'ppLabel13'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 0
              mmWidth = 19951211
              BandType = 7
            end
            object ppLabel15: TppLabel
              UserName = 'ppLabel15'
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
              mmHeight = 1119983
              mmLeft = 10640769
              mmTop = 3570295
              mmWidth = 1960037
              BandType = 7
            end
            object ppLabel18: TppLabel
              UserName = 'ppLabel18'
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
              mmHeight = 1119983
              mmLeft = 10640769
              mmTop = 2380196
              mmWidth = 3150135
              BandType = 7
            end
            object ppDBText16: TppDBText
              UserName = 'ppDBText16'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19863824
              mmTop = 2380196
              mmWidth = 17272
              BandType = 7
            end
            object ppLabel1: TppLabel
              UserName = 'ppLabel1'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 5950491
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText2: TppDBText
              UserName = 'ppDBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 5950491
              mmWidth = 15260932
              BandType = 7
            end
            object ppLabel2: TppLabel
              UserName = 'ppLabel2'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 7140589
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText3: TppDBText
              UserName = 'ppDBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 7140589
              mmWidth = 15260932
              BandType = 7
            end
            object ppLabel3: TppLabel
              UserName = 'ppLabel3'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 8330423
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText8: TppDBText
              UserName = 'ppDBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 8330423
              mmWidth = 15260932
              BandType = 7
            end
            object ppLabel6: TppLabel
              UserName = 'ppLabel6'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 11690902
              mmWidth = 19951211
              BandType = 7
            end
            object ppDBText23: TppDBText
              UserName = 'ppDBText23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 12880736
              mmWidth = 19951211
              BandType = 7
            end
            object ppLabel7: TppLabel
              UserName = 'ppLabel7'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 14070834
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText24: TppDBText
              UserName = 'ppDBText24'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 3598
              mmLeft = 4760393
              mmTop = 14070834
              mmWidth = 17272
              BandType = 7
            end
            object ppLabel9: TppLabel
              UserName = 'ppLabel9'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 9520521
              mmWidth = 19951211
              BandType = 7
            end
            object ppLabelLinhaAss: TppLabel
              UserName = 'ppLabelLinhaAss'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 32202237
              mmWidth = 19951211
              BandType = 7
            end
            object ppLabel10: TppLabel
              UserName = 'ppLabel10'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 20441220
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText26: TppDBText
              UserName = 'ppDBText26'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 20441220
              mmWidth = 15260932
              BandType = 7
            end
            object ppLabel17: TppLabel
              UserName = 'ppLabel17'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 29611961
              mmWidth = 19951211
              BandType = 7
            end
            object ppLabel33: TppLabel
              UserName = 'ppLabel33'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 19251386
              mmWidth = 19951211
              BandType = 7
            end
            object ppLabel35: TppLabel
              UserName = 'ppLabel35'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 15260932
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText30: TppDBText
              UserName = 'ppDBText30'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 15260932
              mmWidth = 15191082
              BandType = 7
            end
            object ppLabel36: TppLabel
              UserName = 'ppLabel36'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 4760393
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText31: TppDBText
              UserName = 'ppDBText31'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 4760393
              mmWidth = 15260932
              BandType = 7
            end
            object ppDBText12: TppDBText
              UserName = 'ppDBText12'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19863824
              mmTop = 1190098
              mmWidth = 17272
              BandType = 7
            end
            object ppDBText41: TppDBText
              UserName = 'ppDBText41'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19863824
              mmTop = 3570295
              mmWidth = 17272
              BandType = 7
            end
            object ppDBText42: TppDBText
              UserName = 'ppDBText42'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 21631318
              mmWidth = 19951211
              BandType = 7
            end
            object ppDBText43: TppDBText
              UserName = 'ppDBText43'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 22821416
              mmWidth = 19951211
              BandType = 7
            end
            object ppDBText44: TppDBText
              UserName = 'ppDBText44'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 24011514
              mmWidth = 19951211
              BandType = 7
            end
            object ppDBText45: TppDBText
              UserName = 'ppDBText45'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 25201613
              mmWidth = 18271103
              BandType = 7
            end
            object ppDBText46: TppDBText
              UserName = 'ppDBText46'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 18411332
              mmTop = 25201613
              mmWidth = 1609993
              BandType = 7
            end
            object ppLabel49: TppLabel
              UserName = 'ppLabel49'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 16451031
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText22: TppDBText
              UserName = 'ppDBText22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 16451031
              mmWidth = 15260932
              BandType = 7
            end
            object ppLabel50: TppLabel
              UserName = 'ppLabel50'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 17641129
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText25: TppDBText
              UserName = 'ppDBText25'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 17641129
              mmWidth = 15260932
              BandType = 7
            end
            object ppLabel51: TppLabel
              UserName = 'ppLabel51'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 28071818
              mmWidth = 17641129
              BandType = 7
            end
            object ppDBText21: TppDBText
              UserName = 'ppDBText21'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 33392335
              mmWidth = 19951211
              BandType = 7
            end
            object ppDBText52: TppDBText
              UserName = 'ppDBText52'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 26391711
              mmWidth = 19951211
              BandType = 7
            end
            object ppDBText59: TppDBText
              UserName = 'ppDBText59'
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 20004053
              mmTop = 14070834
              mmWidth = 17272
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
        mmHeight = 1330063
        mmLeft = 0
        mmTop = 1400178
        mmWidth = 53789899
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = PipeItem
          PassSetting = psTwoPass
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 0
          PrinterSetup.mmPaperWidth = 0
          PrinterSetup.PaperSize = 139
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeItem'
          object ppTitleBand3: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 265
            mmHeight = 10500804
            mmPrintPosition = 0
            object ppLabel4: TppLabel
              UserName = 'ppLabel4'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 1820072
              mmWidth = 19601166
              BandType = 1
            end
            object ppDBText15: TppDBText
              UserName = 'ppDBText15'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 3430330
              mmWidth = 19601166
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'ppLabel5'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 4620428
              mmWidth = 4690278
              BandType = 1
            end
            object ppDBText19: TppDBText
              UserName = 'ppDBText19'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 3598
              mmLeft = 4760393
              mmTop = 4620428
              mmWidth = 17272
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'ppLabel20'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 5810262
              mmWidth = 19601166
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'ppLabel26'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 7000360
              mmWidth = 4270384
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'ppLabel27'
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
              mmHeight = 1119983
              mmLeft = 4480199
              mmTop = 7000360
              mmWidth = 15191082
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'ppLabel28'
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
              mmHeight = 1119983
              mmLeft = 4480199
              mmTop = 8190458
              mmWidth = 1820072
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'ppLabel29'
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
              mmHeight = 1119983
              mmLeft = 14211064
              mmTop = 8190458
              mmWidth = 1890187
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'ppLabel30'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 9380556
              mmWidth = 19671281
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'ppLabel31'
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
              mmHeight = 1119983
              mmLeft = 16590996
              mmTop = 8190458
              mmWidth = 3080285
              BandType = 1
            end
            object ppLabel59: TppLabel
              UserName = 'ppLabel59'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 279930
              mmWidth = 19601166
              BandType = 1
            end
            object ppDBText49: TppDBText
              UserName = 'ppDBText49'
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19654273
              mmTop = 4620428
              mmWidth = 17272
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 2310082
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'ppDBText1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 1050133
              mmLeft = 4480199
              mmTop = 70115
              mmWidth = 15260932
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'ppDBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 1050133
              mmLeft = 70115
              mmTop = 70115
              mmWidth = 4270384
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'ppDBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 1050133
              mmLeft = 4480199
              mmTop = 1190098
              mmWidth = 1890187
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'ppDBText11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 1050133
              mmLeft = 12320877
              mmTop = 1190098
              mmWidth = 3850224
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'ppDBText14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 1050133
              mmLeft = 16451031
              mmTop = 1190098
              mmWidth = 3290100
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 490009
            mmHeight = 10920699
            mmPrintPosition = 0
            object ppDBText27: TppDBText
              UserName = 'ppDBText27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 5880376
              mmWidth = 15260932
              BandType = 7
            end
            object ppLabel32: TppLabel
              UserName = 'ppLabel32'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 5880376
              mmWidth = 4690278
              BandType = 7
            end
            object ppLabel47: TppLabel
              UserName = 'ppLabel47'
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
              mmHeight = 980019
              mmLeft = 70115
              mmTop = 4830243
              mmWidth = 20581449
              BandType = 7
            end
            object ppLabel55: TppLabel
              UserName = 'ppLabel55'
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
              mmHeight = 1119983
              mmLeft = 10570654
              mmTop = 1050133
              mmWidth = 3826941
              BandType = 7
            end
            object ppLabel56: TppLabel
              UserName = 'ppLabel56'
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
              mmHeight = 1119983
              mmLeft = 10570654
              mmTop = 3430330
              mmWidth = 1960037
              BandType = 7
            end
            object ppLabel57: TppLabel
              UserName = 'ppLabel57'
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
              mmHeight = 1119983
              mmLeft = 10570654
              mmTop = 2240232
              mmWidth = 3150135
              BandType = 7
            end
            object ppDBText53: TppDBText
              UserName = 'ppDBText53'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19793974
              mmTop = 2240232
              mmWidth = 17272
              BandType = 7
            end
            object ppDBText54: TppDBText
              UserName = 'ppDBText54'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19793974
              mmTop = 1050133
              mmWidth = 17272
              BandType = 7
            end
            object ppDBText55: TppDBText
              UserName = 'ppDBText55'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19793974
              mmTop = 3430330
              mmWidth = 17272
              BandType = 7
            end
            object ppLabel60: TppLabel
              UserName = 'ppLabel60'
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
              mmHeight = 980019
              mmLeft = 0
              mmTop = 0
              mmWidth = 20581449
              BandType = 7
            end
            object ppLabel65: TppLabel
              UserName = 'ppLabel65'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 7070474
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText47: TppDBText
              UserName = 'ppDBText47'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4760393
              mmTop = 7070474
              mmWidth = 15260932
              BandType = 7
            end
            object ppLabel53: TppLabel
              UserName = 'ppLabel53'
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
              mmHeight = 980019
              mmLeft = 0
              mmTop = 8260573
              mmWidth = 20581449
              BandType = 7
            end
            object ppDBMemo1: TppDBMemo
              UserName = 'ppDBMemo1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              CharWrap = True
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
              mmHeight = 980019
              mmLeft = 70115
              mmTop = 9450671
              mmWidth = 20581449
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
        mmHeight = 1330063
        mmLeft = 0
        mmTop = 2800091
        mmWidth = 53789899
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = PipeItem
          PassSetting = psTwoPass
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Custom'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 0
          PrinterSetup.mmPaperWidth = 0
          PrinterSetup.PaperSize = 139
          Units = utMillimeters
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeItem'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 12040682
            mmPrintPosition = 0
            object ppLabel37: TppLabel
              UserName = 'ppLabel37'
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
              mmHeight = 1119983
              mmLeft = 0
              mmTop = 1190098
              mmWidth = 19601166
              BandType = 1
            end
            object ppDBText32: TppDBText
              UserName = 'ppDBText32'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 2660126
              mmWidth = 19601166
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'ppLabel38'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 3850224
              mmWidth = 4690278
              BandType = 1
            end
            object ppDBText33: TppDBText
              UserName = 'ppDBText33'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 3598
              mmLeft = 4760393
              mmTop = 3850224
              mmWidth = 17272
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'ppLabel39'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 7280554
              mmWidth = 19601166
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'ppLabel40'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 8330423
              mmWidth = 4270384
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'ppLabel41'
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
              mmHeight = 1119983
              mmLeft = 4550313
              mmTop = 8330423
              mmWidth = 15191082
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'ppLabel42'
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
              mmHeight = 1119983
              mmLeft = 4550313
              mmTop = 9520521
              mmWidth = 1820072
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'ppLabel43'
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
              mmHeight = 1119983
              mmLeft = 14280914
              mmTop = 9520521
              mmWidth = 1890187
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'ppLabel44'
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
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 10710619
              mmWidth = 19671281
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'ppLabel45'
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
              mmHeight = 1119983
              mmLeft = 16661110
              mmTop = 9520521
              mmWidth = 3080285
              BandType = 1
            end
            object ppDBText34: TppDBText
              UserName = 'ppDBText34'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 70115
              mmTop = 5600447
              mmWidth = 19811246
              BandType = 1
            end
            object ppLabel54: TppLabel
              UserName = 'ppLabel54'
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
              mmHeight = 1119983
              mmLeft = 0
              mmTop = 0
              mmWidth = 19671281
              BandType = 1
            end
            object ppDBText50: TppDBText
              UserName = 'ppDBText50'
              AutoSize = True
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19654009
              mmTop = 3850224
              mmWidth = 17272
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 2310082
            mmPrintPosition = 0
            object ppDBText35: TppDBText
              UserName = 'ppDBText35'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 1050133
              mmLeft = 4480199
              mmTop = 70115
              mmWidth = 15260932
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'ppDBText36'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 1050133
              mmLeft = 70115
              mmTop = 70115
              mmWidth = 4270384
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'ppDBText37'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeItem'
              mmHeight = 1050133
              mmLeft = 4480199
              mmTop = 1190098
              mmWidth = 1890187
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'ppDBText38'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 1050133
              mmLeft = 12320877
              mmTop = 1190098
              mmWidth = 3850224
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'ppDBText39'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 1050133
              mmLeft = 16451031
              mmTop = 1190098
              mmWidth = 3290100
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 280195
            mmHeight = 8820697
            mmPrintPosition = 0
            object ppDBText40: TppDBText
              UserName = 'ppDBText40'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4690278
              mmTop = 6090456
              mmWidth = 15821056
              BandType = 7
            end
            object ppLabel46: TppLabel
              UserName = 'ppLabel46'
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
              mmHeight = 1119983
              mmLeft = 0
              mmTop = 6090456
              mmWidth = 4690278
              BandType = 7
            end
            object ppLabel48: TppLabel
              UserName = 'ppLabel48'
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
              mmHeight = 980019
              mmLeft = 0
              mmTop = 5040323
              mmWidth = 20581449
              BandType = 7
            end
            object ppLabel52: TppLabel
              UserName = 'ppLabel52'
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
              mmHeight = 1119983
              mmLeft = 0
              mmTop = 7420519
              mmWidth = 4690278
              BandType = 7
            end
            object ppDBText51: TppDBText
              UserName = 'ppDBText51'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataPipeline = PipeCab
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Sans Serif 17cpi'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PipeCab'
              mmHeight = 1119983
              mmLeft = 4690278
              mmTop = 7420519
              mmWidth = 15821056
              BandType = 7
            end
            object ppLabel61: TppLabel
              UserName = 'ppLabel61'
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
              mmHeight = 1119983
              mmLeft = 10570654
              mmTop = 1050133
              mmWidth = 3826941
              BandType = 7
            end
            object ppLabel62: TppLabel
              UserName = 'ppLabel62'
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
              mmHeight = 1119983
              mmLeft = 10570654
              mmTop = 3430330
              mmWidth = 1960037
              BandType = 7
            end
            object ppLabel63: TppLabel
              UserName = 'ppLabel63'
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
              mmHeight = 1119983
              mmLeft = 10570654
              mmTop = 2240232
              mmWidth = 3150135
              BandType = 7
            end
            object ppDBText56: TppDBText
              UserName = 'ppDBText56'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19793974
              mmTop = 2240232
              mmWidth = 17272
              BandType = 7
            end
            object ppDBText57: TppDBText
              UserName = 'ppDBText57'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19793974
              mmTop = 1050133
              mmWidth = 17272
              BandType = 7
            end
            object ppDBText58: TppDBText
              UserName = 'ppDBText58'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
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
              mmHeight = 3598
              mmLeft = 19793974
              mmTop = 3430330
              mmWidth = 17272
              BandType = 7
            end
            object ppLabel64: TppLabel
              UserName = 'ppLabel64'
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
              mmHeight = 980019
              mmLeft = 0
              mmTop = 0
              mmWidth = 20581449
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
