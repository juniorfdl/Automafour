inherited FormRelatorioApuracaoICMS: TFormRelatorioApuracaoICMS
  Left = 226
  Top = 124
  Caption = 'Relat'#243'rio de Apura'#231#227'o de ICMS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Left = 68
      Top = 100
      Width = 701
      Height = 294
      inherited BtnVisualizar: TSpeedButton
        Left = 286
        Top = 249
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 203
        Width = 407
        Height = 41
        Caption = ' Empresa Cabe'#231'alho '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboEmpresaCab: TRxDBLookupCombo
          Left = 4
          Top = 15
          Width = 398
          Height = 21
          DropDownCount = 8
          LookupField = 'EMPRICOD'
          LookupDisplay = 'EMPRA60RAZAOSOC'
          LookupSource = DSSQLEmpresaCab
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 421
        Top = 4
        Width = 270
        Height = 240
        Caption = 'Eventos'
        TabOrder = 3
        object MemoEventos: TMemo
          Left = 2
          Top = 15
          Width = 266
          Height = 223
          Align = alClient
          BorderStyle = bsNone
          ParentColor = True
          TabOrder = 0
        end
      end
    end
  end
  object SQLEmpresaCab: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'order by EMPRA60RAZAOSOC')
    Macros = <>
    Left = 49
    Top = 282
  end
  object DSSQLEmpresaCab: TDataSource
    DataSet = SQLEmpresa
    Left = 77
    Top = 282
  end
  object TblCredDeb_UfCFOP_Sint: TTable
    Tag = 1
    OnNewRecord = TblCredDeb_UfCFOP_SintNewRecord
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'CredDeb_UfCFOP_Sint.DB'
    Left = 105
    Top = 226
    object TblCredDeb_UfCFOP_SintTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object TblCredDeb_UfCFOP_SintAnoMes: TStringField
      FieldName = 'AnoMes'
      Size = 6
    end
    object TblCredDeb_UfCFOP_SintUF_CFOP: TStringField
      DisplayWidth = 10
      FieldName = 'UF_CFOP'
      Size = 10
    end
    object TblCredDeb_UfCFOP_SintVlrContabil: TFloatField
      FieldName = 'VlrContabil'
    end
    object TblCredDeb_UfCFOP_SintImpCredDeb: TFloatField
      FieldName = 'ImpCredDeb'
    end
    object TblCredDeb_UfCFOP_SintBaseCalc: TFloatField
      FieldName = 'BaseCalc'
    end
    object TblCredDeb_UfCFOP_SintIsentoNaoTrib: TFloatField
      FieldName = 'IsentoNaoTrib'
    end
    object TblCredDeb_UfCFOP_SintOutras: TFloatField
      FieldName = 'Outras'
    end
  end
  object SQLCupom: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      'NOTAFISCAL.NOFIA13ID as CUPOA13ID,'
      'NOTAFISCAL.NOFIDEMIS as CUPODEMIS,'
      'NOTAFISCAL.CLIEA13ID as CLIEA13ID,'
      'NOTAFISCAL.NOFIN2VLRPRODUTO as CUPON2TOTITENS,'
      'NOTAFISCAL.NOFIN2VLRDESC as CUPON2DESC,'
      'NOTAFISCAL.NOFIINUMERO as CUPOINRO,'
      'NOTAFISCAL.CFOPA5COD as CFOPA5COD,'
      #39'NF'#39' as TIPODOC,'
      'NOTAFISCAL.OPESICOD,'
      'OPERACAOESTOQUE.OPESCCALCICMS,'
      'NOTAFISCAL.FORNICOD as FORNICOD,'
      'NOTAFISCAL.EMPRICODDEST as EMPRICODDEST,'
      'NOTAFISCAL.NOFIN2VLRFRETE as FRETE,'
      'NOTAFISCAL.NOFIN2VLRICMSFRETE as ICMSFRETE,'
      
        'cast(NOTAFISCAL.NOFIN2BASCALCICMS as numeric(15,2)) as CUPON2BAS' +
        'EICMS,'
      
        'cast(NOTAFISCAL.NOFIN2VLRICMS as numeric(15,2)) as  CUPON2VLRICM' +
        'S,'
      'NOTAFISCAL.NOFIN2VLRIPI VLRIPI'
      'from'
      'NOTAFISCAL'
      
        '  left outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD = OPERA' +
        'CAOESTOQUE.OPESICOD'
      'where'
      '(NOTAFISCAL.NOFICSTATUS = ''E'')and'
      '(%MEmpresa1) and'
      '(%MData1)')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData1'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 77
    Top = 198
    object SQLCupomCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLCupomCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
    end
    object SQLCupomCUPON2DESC: TFloatField
      FieldName = 'CUPON2DESC'
    end
    object SQLCupomCUPOINRO: TIntegerField
      FieldName = 'CUPOINRO'
    end
    object SQLCupomCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCupomTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 2
    end
    object SQLCupomOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
    object SQLCupomOPESCCALCICMS: TStringField
      FieldName = 'OPESCCALCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object SQLCupomEMPRICODDEST: TIntegerField
      FieldName = 'EMPRICODDEST'
    end
    object SQLCupomFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object SQLCupomICMSFRETE: TFloatField
      FieldName = 'ICMSFRETE'
    end
    object SQLCupomCUPON2BASEICMS: TFloatField
      FieldName = 'CUPON2BASEICMS'
    end
    object SQLCupomCUPON2VLRICMS: TFloatField
      FieldName = 'CUPON2VLRICMS'
    end
    object SQLCupomVLRIPI: TFloatField
      FieldName = 'VLRIPI'
    end
  end
  object PipeApurICMSCredEntrResSint: TppBDEPipeline
    DataSource = DSTblApurICMSCredEntrRes
    CloseDataSource = True
    UserName = 'PipeApurICMSCredEntrResSint'
    Left = 133
    Top = 198
  end
  object ReportApuracao: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ReportApuracaoPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 133
    Top = 282
    Version = '10.06'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object NomeEmpresa: TppLabel
        UserName = 'NomeEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NomeEmpresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 16404
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 0
      object ReportCredDeb_UfCFOP_Sint: TppSubReport
        UserName = 'ReportCredDeb_UfCFOP_Sint'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'PipeApurICMSCredEntrResSint'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PipeApurICMSCredEntrResSint
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeApurICMSCredEntrResSint'
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'UF_CFOP'
              DataPipeline = PipeApurICMSCredEntrResSint
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 8202
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppLabel1: TppLabel
              UserName = 'Label1'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '* UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 4234
              mmLeft = 529
              mmTop = 0
              mmWidth = 6477
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VlrContabil'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 78580
              mmTop = 3967
              mmWidth = 19845
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ImpCredDeb'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 99748
              mmTop = 3967
              mmWidth = 33866
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BaseCalc'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 135202
              mmTop = 3967
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 153459
              mmTop = 3967
              mmWidth = 21166
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Outras'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4234
              mmLeft = 175685
              mmTop = 3967
              mmWidth = 21166
              BandType = 4
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '* Subsubtotal *'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 3969
              mmWidth = 24871
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 9525
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              UserName = 'Label12'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '*** Total ***'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 5292
              mmWidth = 24871
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VlrContabil'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 78581
              mmTop = 5292
              mmWidth = 19844
              BandType = 7
            end
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ImpCredDeb'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 99748
              mmTop = 5292
              mmWidth = 33867
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BaseCalc'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 135202
              mmTop = 5292
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 153459
              mmTop = 5292
              mmWidth = 21167
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Outras'
              DataPipeline = PipeApurICMSCredEntrResSint
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurICMSCredEntrResSint'
              mmHeight = 4233
              mmLeft = 175684
              mmTop = 5292
              mmWidth = 21167
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'Tipo'
            DataPipeline = PipeApurICMSCredEntrResSint
            OutlineSettings.CreateNode = True
            NewPage = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeApurICMSCredEntrResSint'
            object ppGroupHeaderBand1: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand1BeforePrint
              mmBottomOffset = 0
              mmHeight = 28840
              mmPrintPosition = 0
              object LabelTipo: TppLabel
                UserName = 'LabelTipo'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'CFO: CREDITO/ENTRADAS - ANO/MES:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 1058
                mmTop = 24077
                mmWidth = 51329
                BandType = 3
                GroupNo = 0
              end
              object ppDBText28: TppDBText
                UserName = 'DBText28'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'AnoMes'
                DataPipeline = PipeApurICMSCredEntrResSint
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 52652
                mmTop = 24077
                mmWidth = 8996
                BandType = 3
                GroupNo = 0
              end
              object ppLabel15: TppLabel
                UserName = 'Label15'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'OPERACAO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3175
                mmLeft = 39423
                mmTop = 15081
                mmWidth = 22225
                BandType = 3
                GroupNo = 0
              end
              object ppLabel16: TppLabel
                UserName = 'Label201'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'NRO.NF'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3175
                mmLeft = 63236
                mmTop = 15081
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
              object ppLabel17: TppLabel
                UserName = 'Label2'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'VALORES CONT'#193'BEIS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 79640
                mmTop = 15081
                mmWidth = 19844
                BandType = 3
                GroupNo = 0
              end
              object ppLabel18: TppLabel
                UserName = 'Label3'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'IMPOSTO CREDITADO OU DEBITADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 100806
                mmTop = 15081
                mmWidth = 33867
                BandType = 3
                GroupNo = 0
              end
              object ppLabel19: TppLabel
                UserName = 'Label4'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'BASE DE CALCULO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 136261
                mmTop = 15081
                mmWidth = 17198
                BandType = 3
                GroupNo = 0
              end
              object ppLabel20: TppLabel
                UserName = 'Label202'
                CharWrap = True
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'ISENTO OU NAO TRIBUTADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 153988
                mmTop = 15081
                mmWidth = 21960
                BandType = 3
                GroupNo = 0
              end
              object ppLabel21: TppLabel
                UserName = 'Label5'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'OUTRAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 176742
                mmTop = 15081
                mmWidth = 21167
                BandType = 3
                GroupNo = 0
              end
              object ppLabel22: TppLabel
                UserName = 'Label6'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'REGISTRO DE APURACAO DO ICMS (icm guia.frm)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 1058
                mmTop = 529
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel23: TppLabel
                UserName = 'Label23'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'SERIE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3175
                mmLeft = 30163
                mmTop = 15081
                mmWidth = 7938
                BandType = 3
                GroupNo = 0
              end
              object ppLabel24: TppLabel
                UserName = 'Label7'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'CFOP'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3175
                mmLeft = 21167
                mmTop = 15081
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel25: TppLabel
                UserName = 'Label8'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'DATA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3175
                mmLeft = 1058
                mmTop = 15081
                mmWidth = 10583
                BandType = 3
                GroupNo = 0
              end
              object ppSystemVariable1: TppSystemVariable
                UserName = 'SystemVariable1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 1058
                mmTop = 8996
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
              object ppLabel26: TppLabel
                UserName = 'Label9'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PAGINA:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 1058
                mmTop = 5027
                mmWidth = 12435
                BandType = 3
                GroupNo = 0
              end
              object ppSystemVariable2: TppSystemVariable
                UserName = 'SystemVariable2'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                VarType = vtPageNo
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 15081
                mmTop = 5027
                mmWidth = 12700
                BandType = 3
                GroupNo = 0
              end
              object PeriodoRel1: TppLabel
                UserName = 'PeriodoRel1'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'FPE DE DD/MM/YYYY A DD/MM/YYYY'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 18256
                mmTop = 8996
                mmWidth = 68792
                BandType = 3
                GroupNo = 0
              end
              object ppLine6: TppLine
                UserName = 'Line6'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 794
                mmTop = 23019
                mmWidth = 201613
                BandType = 3
                GroupNo = 0
              end
              object ppLine7: TppLine
                UserName = 'Line7'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 529
                mmTop = 14023
                mmWidth = 202142
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 9525
              mmPrintPosition = 0
              object ppDBCalc1: TppDBCalc
                UserName = 'DBCalc1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'VlrContabil'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4234
                mmLeft = 78580
                mmTop = 5291
                mmWidth = 19845
                BandType = 5
                GroupNo = 0
              end
              object ppLabel11: TppLabel
                UserName = 'Label101'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '** Subtotal **'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 5292
                mmWidth = 24871
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc2: TppDBCalc
                UserName = 'DBCalc2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ImpCredDeb'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 99748
                mmTop = 5292
                mmWidth = 33866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc3: TppDBCalc
                UserName = 'DBCalc3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'BaseCalc'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 135202
                mmTop = 5292
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc4: TppDBCalc
                UserName = 'DBCalc4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'IsentoNaoTrib'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 153459
                mmTop = 5292
                mmWidth = 21166
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc5: TppDBCalc
                UserName = 'DBCalc5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'Outras'
                DataPipeline = PipeApurICMSCredEntrResSint
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeApurICMSCredEntrResSint'
                mmHeight = 4233
                mmLeft = 175684
                mmTop = 5292
                mmWidth = 21167
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
      object ReportRegApuraMes: TppSubReport
        UserName = 'ReportRegApuraMes'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ReportCredDeb_UfCFOP_Sint
        TraverseAllData = False
        DataPipelineName = 'PipeApurMes'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 4496
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = PipeApurMes
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeApurMes'
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppDBText9: TppDBText
              UserName = 'DBText1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CodCFOP'
              DataPipeline = PipeApurMes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 7408
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VlrContabil'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 79640
              mmTop = 0
              mmWidth = 19844
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ImpCredDeb'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 119327
              mmTop = 0
              mmWidth = 18521
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BaseCalc'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 100277
              mmTop = 0
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 139171
              mmTop = 0
              mmWidth = 20902
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Outras'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 161132
              mmTop = 0
              mmWidth = 19844
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DescrCFOP'
              DataPipeline = PipeApurMes
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 8731
              mmTop = 0
              mmWidth = 68263
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VlrIPI'
              DataPipeline = PipeApurMes
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeApurMes'
              mmHeight = 4233
              mmLeft = 182298
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
          end
          object ppGroup2: TppGroup
            BreakName = 'Tipo'
            DataPipeline = PipeApurMes
            OutlineSettings.CreateNode = True
            NewPage = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeApurMes'
            object ppGroupHeaderBand2: TppGroupHeaderBand
              BeforePrint = ppGroupHeaderBand2BeforePrint
              mmBottomOffset = 0
              mmHeight = 24342
              mmPrintPosition = 0
              object ppLabel5: TppLabel
                UserName = 'Label5'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'VLR.CONT'#193'BIL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 77523
                mmTop = 18521
                mmWidth = 21960
                BandType = 3
                GroupNo = 0
              end
              object ppLabel6: TppLabel
                UserName = 'Label6'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'VLR.IMPOSTO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 118004
                mmTop = 18521
                mmWidth = 19844
                BandType = 3
                GroupNo = 0
              end
              object ppLabel7: TppLabel
                UserName = 'Label7'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'BASE CALC.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 99748
                mmTop = 18521
                mmWidth = 17992
                BandType = 3
                GroupNo = 0
              end
              object ppLabel8: TppLabel
                UserName = 'Label8'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'ISENTAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 138113
                mmTop = 18521
                mmWidth = 21960
                BandType = 3
                GroupNo = 0
              end
              object ppLabel9: TppLabel
                UserName = 'Label9'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'OUTRAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 160338
                mmTop = 18521
                mmWidth = 20638
                BandType = 3
                GroupNo = 0
              end
              object LabelTipo2: TppLabel
                UserName = 'LabelTipo2'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'REGISTRO DE ICMS MENSAL - ENTRADAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 265
                mmTop = 0
                mmWidth = 202407
                BandType = 3
                GroupNo = 0
              end
              object NomeEmpresa2: TppLabel
                UserName = 'NomeEmpresa2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'NomeEmpresa2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 5027
                mmWidth = 24342
                BandType = 3
                GroupNo = 0
              end
              object CGCEMpresa2: TppLabel
                UserName = 'CGCEMpresa2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'CGCEMpresa2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 8996
                mmWidth = 16298
                BandType = 3
                GroupNo = 0
              end
              object ppLabel4: TppLabel
                UserName = 'Label4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Modalidade:GERAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 4233
                mmLeft = 66146
                mmTop = 12965
                mmWidth = 26988
                BandType = 3
                GroupNo = 0
              end
              object Periodo2: TppLabel
                UserName = 'Periodo2'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Periodo de: dd/mm/yyyy a dd/mm/yyyy'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 265
                mmTop = 12965
                mmWidth = 65617
                BandType = 3
                GroupNo = 0
              end
              object ppLine1: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 529
                mmTop = 17727
                mmWidth = 201877
                BandType = 3
                GroupNo = 0
              end
              object ppLabel13: TppLabel
                UserName = 'Label13'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'C'#243'd.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 529
                mmTop = 18521
                mmWidth = 6181
                BandType = 3
                GroupNo = 0
              end
              object ppLabel14: TppLabel
                UserName = 'Label14'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'Descri'#231#227'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 8467
                mmTop = 18521
                mmWidth = 68792
                BandType = 3
                GroupNo = 0
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 529
                mmTop = 23019
                mmWidth = 202142
                BandType = 3
                GroupNo = 0
              end
              object ppSystemVariable5: TppSystemVariable
                UserName = 'SystemVariable5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                VarType = vtPageNoDesc
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 191294
                mmTop = 4763
                mmWidth = 11261
                BandType = 3
                GroupNo = 0
              end
              object ppLabel3: TppLabel
                UserName = 'Label3'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'IPI'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 3704
                mmLeft = 181240
                mmTop = 18521
                mmWidth = 18256
                BandType = 3
                GroupNo = 0
              end
              object ppLine3: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 529
                mmTop = 3969
                mmWidth = 202142
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 5556
              mmPrintPosition = 0
            end
          end
        end
      end
      object RptCD_UfCFOP_Ana: TppSubReport
        UserName = 'RptCD_UfCFOP_Ana'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = ReportRegApuraMes
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 8996
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = PipeCredDeb_UfCFOP_Ana
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'Carta'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '10.06'
          mmColumnWidth = 0
          DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText15: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VlrContabil'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 78581
              mmTop = 0
              mmWidth = 19844
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ImpCredDeb'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 99748
              mmTop = 0
              mmWidth = 33867
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BaseCalc'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 135202
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 153459
              mmTop = 0
              mmWidth = 21167
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Outras'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 175685
              mmTop = 0
              mmWidth = 21166
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Data'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 15346
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CFOP'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 20108
              mmTop = 0
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText24'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Serie'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 29104
              mmTop = 0
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText25'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Operacao'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 38365
              mmTop = 0
              mmWidth = 22225
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'NumNF_Cup'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 62177
              mmTop = 0
              mmWidth = 14816
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 9525
            mmPrintPosition = 0
            object ppLabel33: TppLabel
              UserName = 'Label12'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = '*** Total ***'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 5292
              mmWidth = 24871
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VlrContabil'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 78581
              mmTop = 5292
              mmWidth = 19844
              BandType = 7
            end
            object ppDBCalc12: TppDBCalc
              UserName = 'DBCalc7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'ImpCredDeb'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 99748
              mmTop = 5292
              mmWidth = 33867
              BandType = 7
            end
            object ppDBCalc13: TppDBCalc
              UserName = 'DBCalc8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'BaseCalc'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 135202
              mmTop = 5292
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc14: TppDBCalc
              UserName = 'DBCalc9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'IsentoNaoTrib'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 153459
              mmTop = 5292
              mmWidth = 21167
              BandType = 7
            end
            object ppDBCalc15: TppDBCalc
              UserName = 'DBCalc10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'Outras'
              DataPipeline = PipeCredDeb_UfCFOP_Ana
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 17cpi'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
              mmHeight = 4233
              mmLeft = 175685
              mmTop = 5292
              mmWidth = 21166
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'Tipo'
            DataPipeline = PipeCredDeb_UfCFOP_Ana
            OutlineSettings.CreateNode = True
            NewPage = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
            object ppGroupHeaderBand3: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 28310
              mmPrintPosition = 0
              object ppLabel34: TppLabel
                UserName = 'LabelTipo'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'CFO: CREDITO/ENTRADAS - ANO/MES:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 23548
                mmWidth = 51329
                BandType = 3
                GroupNo = 0
              end
              object ppDBText21: TppDBText
                UserName = 'DBText3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'AnoMes'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 51594
                mmTop = 23548
                mmWidth = 8996
                BandType = 3
                GroupNo = 0
              end
              object ppLabel35: TppLabel
                UserName = 'Label19'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'OPERACAO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3302
                mmLeft = 38365
                mmTop = 14552
                mmWidth = 22225
                BandType = 3
                GroupNo = 0
              end
              object ppLabel36: TppLabel
                UserName = 'Label20'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'NRO.NF'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3302
                mmLeft = 62177
                mmTop = 14552
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
              object ppLabel37: TppLabel
                UserName = 'Label21'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'VALORES CONT'#193'BEIS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 78581
                mmTop = 14552
                mmWidth = 19844
                BandType = 3
                GroupNo = 0
              end
              object ppLabel38: TppLabel
                UserName = 'Label22'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'IMPOSTO CREDITADO OU DEBITADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 99748
                mmTop = 14552
                mmWidth = 33867
                BandType = 3
                GroupNo = 0
              end
              object ppLabel39: TppLabel
                UserName = 'Label102'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'BASE DE CALCULO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 135202
                mmTop = 14552
                mmWidth = 17198
                BandType = 3
                GroupNo = 0
              end
              object ppLabel40: TppLabel
                UserName = 'Label24'
                CharWrap = True
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'ISENTO OU NAO TRIBUTADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 152929
                mmTop = 14552
                mmWidth = 21960
                BandType = 3
                GroupNo = 0
              end
              object ppLabel41: TppLabel
                UserName = 'Label25'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'OUTRAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                WordWrap = True
                mmHeight = 7144
                mmLeft = 175684
                mmTop = 14552
                mmWidth = 21167
                BandType = 3
                GroupNo = 0
              end
              object ppLabel42: TppLabel
                UserName = 'Label26'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'REGISTRO DE APURACAO DO ICMS (icm guia.frm)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 0
                mmTop = 0
                mmWidth = 196850
                BandType = 3
                GroupNo = 0
              end
              object ppLabel45: TppLabel
                UserName = 'Label18'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'SERIE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3302
                mmLeft = 29104
                mmTop = 14552
                mmWidth = 7938
                BandType = 3
                GroupNo = 0
              end
              object ppLabel46: TppLabel
                UserName = 'Label17'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'CFOP'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3302
                mmLeft = 20108
                mmTop = 14552
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object ppLabel47: TppLabel
                UserName = 'Label2'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'DATA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3302
                mmLeft = 0
                mmTop = 14552
                mmWidth = 10583
                BandType = 3
                GroupNo = 0
              end
              object ppSystemVariable3: TppSystemVariable
                UserName = 'SystemVariable2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 8467
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
              object ppLabel48: TppLabel
                UserName = 'Label29'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'PAGINA:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 4498
                mmWidth = 12435
                BandType = 3
                GroupNo = 0
              end
              object ppSystemVariable4: TppSystemVariable
                UserName = 'SystemVariable1'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                VarType = vtPageNo
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 14023
                mmTop = 4498
                mmWidth = 12700
                BandType = 3
                GroupNo = 0
              end
              object Periodo3: TppLabel
                UserName = 'Periodo3'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = 'FPE DE DD/MM/YYYY A DD/MM/YYYY'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 4233
                mmLeft = 17198
                mmTop = 8467
                mmWidth = 68792
                BandType = 3
                GroupNo = 0
              end
              object ppLine4: TppLine
                UserName = 'Line4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 0
                mmTop = 22490
                mmWidth = 202407
                BandType = 3
                GroupNo = 0
              end
              object ppLine5: TppLine
                UserName = 'Line5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 0
                mmTop = 13758
                mmWidth = 202407
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 9525
              mmPrintPosition = 0
              object ppDBCalc16: TppDBCalc
                UserName = 'DBCalc1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'VlrContabil'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 78581
                mmTop = 5292
                mmWidth = 19844
                BandType = 5
                GroupNo = 0
              end
              object ppLabel49: TppLabel
                UserName = 'Label101'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '** Subtotal **'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 5292
                mmWidth = 24871
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc17: TppDBCalc
                UserName = 'DBCalc2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ImpCredDeb'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 99748
                mmTop = 5292
                mmWidth = 33867
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc18: TppDBCalc
                UserName = 'DBCalc3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'BaseCalc'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 135202
                mmTop = 5292
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc19: TppDBCalc
                UserName = 'DBCalc4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'IsentoNaoTrib'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 153459
                mmTop = 5292
                mmWidth = 21167
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc20: TppDBCalc
                UserName = 'DBCalc5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'Outras'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 175685
                mmTop = 5292
                mmWidth = 21166
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'UF_CFOP'
            DataPipeline = PipeCredDeb_UfCFOP_Ana
            KeepTogether = True
            OutlineSettings.CreateNode = True
            UserName = 'Group4'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 5556
              mmPrintPosition = 0
              object ppLabel31: TppLabel
                UserName = 'Label1'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '* UF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 0
                mmWidth = 6350
                BandType = 3
                GroupNo = 1
              end
              object ppDBText8: TppDBText
                UserName = 'DBText1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'UF_CFOP'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 7673
                mmTop = 0
                mmWidth = 17198
                BandType = 3
                GroupNo = 1
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 5556
              mmPrintPosition = 0
              object ppLabel32: TppLabel
                UserName = 'Label10'
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '* Subsubtotal *'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                mmHeight = 4233
                mmLeft = 0
                mmTop = 1323
                mmWidth = 24871
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc21: TppDBCalc
                UserName = 'DBCalc21'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'VlrContabil'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 78581
                mmTop = 1323
                mmWidth = 19844
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc22: TppDBCalc
                UserName = 'DBCalc22'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'ImpCredDeb'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 99748
                mmTop = 1323
                mmWidth = 33867
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc23: TppDBCalc
                UserName = 'DBCalc23'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'BaseCalc'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 135202
                mmTop = 1323
                mmWidth = 17198
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc24: TppDBCalc
                UserName = 'DBCalc24'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'IsentoNaoTrib'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 153459
                mmTop = 1323
                mmWidth = 21167
                BandType = 5
                GroupNo = 1
              end
              object ppDBCalc25: TppDBCalc
                UserName = 'DBCalc25'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'Outras'
                DataPipeline = PipeCredDeb_UfCFOP_Ana
                DisplayFormat = '#,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Name = 'Draft 17cpi'
                Font.Size = 8
                Font.Style = []
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'PipeCredDeb_UfCFOP_Ana'
                mmHeight = 4233
                mmLeft = 175685
                mmTop = 1323
                mmWidth = 21166
                BandType = 5
                GroupNo = 1
              end
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
    end
  end
  object DSTblApurICMSCredEntrRes: TDataSource
    DataSet = TblCredDeb_UfCFOP_Sint
    Left = 49
    Top = 254
  end
  object SQLNotaCompra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  NOTACOMPRA.*,'
      '  OPERACAOESTOQUE.OPESCCALCICMS'
      'from'
      '  NOTACOMPRA'
      
        '  left outer join OPERACAOESTOQUE on NOTACOMPRA.OPESICOD = OPERA' +
        'CAOESTOQUE.OPESICOD'
      'where'
      '  (NOTACOMPRA.NOCPCSTATUS = ''E'') and'
      '  (%MEmpresa) and'
      '  (%MData)')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 105
    Top = 198
    object SQLNotaCompraNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      Origin = 'DB.NOTACOMPRA.NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.NOTACOMPRA.EMPRICOD'
    end
    object SQLNotaCompraNOCPICOD: TIntegerField
      FieldName = 'NOCPICOD'
      Origin = 'DB.NOTACOMPRA.NOCPICOD'
    end
    object SQLNotaCompraFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Origin = 'DB.NOTACOMPRA.FORNICOD'
    end
    object SQLNotaCompraNOCPA4ANO: TStringField
      FieldName = 'NOCPA4ANO'
      Origin = 'DB.NOTACOMPRA.NOCPA4ANO'
      FixedChar = True
      Size = 4
    end
    object SQLNotaCompraNOCPA5SERIE: TStringField
      FieldName = 'NOCPA5SERIE'
      Origin = 'DB.NOTACOMPRA.NOCPA5SERIE'
      FixedChar = True
      Size = 5
    end
    object SQLNotaCompraNOCPA30NRO: TStringField
      FieldName = 'NOCPA30NRO'
      Origin = 'DB.NOTACOMPRA.NOCPA30NRO'
      FixedChar = True
      Size = 30
    end
    object SQLNotaCompraNOCPCSTATUS: TStringField
      FieldName = 'NOCPCSTATUS'
      Origin = 'DB.NOTACOMPRA.NOCPCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaCompraPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      Origin = 'DB.NOTACOMPRA.PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.NOTACOMPRA.OPESICOD'
    end
    object SQLNotaCompraNOCPDEMISSAO: TDateTimeField
      FieldName = 'NOCPDEMISSAO'
      Origin = 'DB.NOTACOMPRA.NOCPDEMISSAO'
    end
    object SQLNotaCompraNOCPN3SOMAITENS: TFloatField
      FieldName = 'NOCPN3SOMAITENS'
      Origin = 'DB.NOTACOMPRA.NOCPN3SOMAITENS'
    end
    object SQLNotaCompraNOCPN3TOTITENS: TFloatField
      FieldName = 'NOCPN3TOTITENS'
      Origin = 'DB.NOTACOMPRA.NOCPN3TOTITENS'
    end
    object SQLNotaCompraNOCPN3TOTDESC: TFloatField
      FieldName = 'NOCPN3TOTDESC'
      Origin = 'DB.NOTACOMPRA.NOCPN3TOTDESC'
    end
    object SQLNotaCompraNOCPN3VLRTOTNOTA: TFloatField
      FieldName = 'NOCPN3VLRTOTNOTA'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRTOTNOTA'
    end
    object SQLNotaCompraNOCPN3VLRBASCALICM: TFloatField
      FieldName = 'NOCPN3VLRBASCALICM'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBASCALICM'
    end
    object SQLNotaCompraNOCPN3VLRICMS: TFloatField
      FieldName = 'NOCPN3VLRICMS'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMS'
    end
    object SQLNotaCompraNOCPN3VLRBCICMSSUB: TFloatField
      FieldName = 'NOCPN3VLRBCICMSSUB'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRBCICMSSUB'
    end
    object SQLNotaCompraNOCPN3VLRICMSSUB: TFloatField
      FieldName = 'NOCPN3VLRICMSSUB'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRICMSSUB'
    end
    object SQLNotaCompraNOCPN3VLRFRETE: TFloatField
      FieldName = 'NOCPN3VLRFRETE'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRFRETE'
    end
    object SQLNotaCompraNOCPN3VLRSEGURO: TFloatField
      FieldName = 'NOCPN3VLRSEGURO'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRSEGURO'
    end
    object SQLNotaCompraNOCPN3VLROUTRADESP: TFloatField
      FieldName = 'NOCPN3VLROUTRADESP'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLROUTRADESP'
    end
    object SQLNotaCompraNOCPN3VLRIPI: TFloatField
      FieldName = 'NOCPN3VLRIPI'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRIPI'
    end
    object SQLNotaCompraNOCPN3VLRDESC: TFloatField
      FieldName = 'NOCPN3VLRDESC'
      Origin = 'DB.NOTACOMPRA.NOCPN3VLRDESC'
    end
    object SQLNotaCompraNOCPDRECEBIMENTO: TDateTimeField
      FieldName = 'NOCPDRECEBIMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDRECEBIMENTO'
    end
    object SQLNotaCompraCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.NOTACOMPRA.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLNotaCompraOPESCCALCICMS: TStringField
      FieldName = 'OPESCCALCICMS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLNotaCompraNOCPDCANCELAMENTO: TDateTimeField
      FieldName = 'NOCPDCANCELAMENTO'
      Origin = 'DB.NOTACOMPRA.NOCPDCANCELAMENTO'
    end
    object SQLNotaCompraPLPGICOD: TIntegerField
      FieldName = 'PLPGICOD'
      Origin = 'DB.NOTACOMPRA.PLPGICOD'
    end
    object SQLNotaCompraPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.NOTACOMPRA.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLNotaCompraNOCPN3PERCICMSFRET: TFloatField
      FieldName = 'NOCPN3PERCICMSFRET'
      Origin = 'DB.NOTACOMPRA.NOCPN3PERCICMSFRET'
    end
    object SQLNotaCompraNOCPA254OBS: TMemoField
      FieldName = 'NOCPA254OBS'
      Origin = 'DB.NOTACOMPRA.NOCPA254OBS'
      BlobType = ftMemo
      Size = 256
    end
    object SQLNotaCompraTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
      Origin = 'DB.NOTACOMPRA.TRANICOD'
    end
    object SQLNotaCompraNOCPA5TIPOFRETE: TStringField
      FieldName = 'NOCPA5TIPOFRETE'
      Origin = 'DB.NOTACOMPRA.NOCPA5TIPOFRETE'
      FixedChar = True
      Size = 5
    end
    object SQLNotaCompraPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NOTACOMPRA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNotaCompraREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NOTACOMPRA.REGISTRO'
    end
    object SQLNotaCompraEMPRICODDEST: TIntegerField
      FieldName = 'EMPRICODDEST'
      Origin = 'DB.NOTACOMPRA.EMPRICODDEST'
    end
    object SQLNotaCompraCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.NOTACOMPRA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.NOTACOMPRA.USUAA60LOGIN'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraCLIEA13IDDESTINO: TStringField
      FieldName = 'CLIEA13IDDESTINO'
      Origin = 'DB.NOTACOMPRA.CLIEA13IDDESTINO'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraFUNCA13ID: TStringField
      FieldName = 'FUNCA13ID'
      Origin = 'DB.NOTACOMPRA.FUNCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLNotaCompraPLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.NOTACOMPRA.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLNotaCompraPLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.NOTACOMPRA.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
  end
  object TblApurICMSMensal: TTable
    Tag = 1
    OnNewRecord = TblApurICMSMensalNewRecord
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'ApurICMSMensal.DB'
    Left = 77
    Top = 226
    object TblApurICMSMensalTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object TblApurICMSMensalAnoMes: TStringField
      FieldName = 'AnoMes'
      Size = 6
    end
    object TblApurICMSMensalCodCFOP: TStringField
      FieldName = 'CodCFOP'
      Size = 5
    end
    object TblApurICMSMensalDescrCFOP: TStringField
      DisplayWidth = 80
      FieldName = 'DescrCFOP'
      Size = 80
    end
    object TblApurICMSMensalVlrContabil: TFloatField
      FieldName = 'VlrContabil'
    end
    object TblApurICMSMensalImpCredDeb: TFloatField
      FieldName = 'ImpCredDeb'
    end
    object TblApurICMSMensalBaseCalc: TFloatField
      FieldName = 'BaseCalc'
      currency = True
    end
    object TblApurICMSMensalIsentoNaoTrib: TFloatField
      FieldName = 'IsentoNaoTrib'
    end
    object TblApurICMSMensalOutras: TFloatField
      FieldName = 'Outras'
    end
    object TblApurICMSMensalVlrIPI: TFloatField
      FieldName = 'VlrIPI'
    end
  end
  object DSTblApurICMSMensal: TDataSource
    DataSet = TblApurICMSMensal
    Left = 77
    Top = 254
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CFOP'
      'order by CFOPA5COD')
    Macros = <>
    Left = 49
    Top = 198
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CFOP.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLCFOPCFOPCDESTVLRNTRIB: TStringField
      FieldName = 'CFOPCDESTVLRNTRIB'
      Origin = 'DB.CFOP.CFOPCDESTVLRNTRIB'
      FixedChar = True
      Size = 1
    end
  end
  object PipeApurMes: TppBDEPipeline
    DataSource = DSTblApurICMSMensal
    CloseDataSource = True
    UserName = 'PipeApurMes'
    Left = 133
    Top = 226
  end
  object SQLEmpresaAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 49
    Top = 170
    object SQLEmpresaAuxEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaAuxEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaAuxEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaAuxEMPRCMATRIZFILIAL: TStringField
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'DB.EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaAuxEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLEmpresaAuxEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLEmpresaAuxEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaAuxEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaAuxEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaAuxEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaAuxEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLEmpresaAuxEMPRCFISJURID: TStringField
      FieldName = 'EMPRCFISJURID'
      Origin = 'DB.EMPRESA.EMPRCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaAuxEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaAuxEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaAuxEMPRA11CPF: TStringField
      FieldName = 'EMPRA11CPF'
      Origin = 'DB.EMPRESA.EMPRA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLEmpresaAuxEMPRA10RG: TStringField
      FieldName = 'EMPRA10RG'
      Origin = 'DB.EMPRESA.EMPRA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLEmpresaAuxEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaAuxEMPRA60URL: TStringField
      FieldName = 'EMPRA60URL'
      Origin = 'DB.EMPRESA.EMPRA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaAuxPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaAuxREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EMPRESA.REGISTRO'
    end
    object SQLEmpresaAuxEMPRA100INFSPC: TStringField
      FieldName = 'EMPRA100INFSPC'
      Origin = 'DB.EMPRESA.EMPRA100INFSPC'
      FixedChar = True
      Size = 100
    end
    object SQLEmpresaAuxEMPRA15CODEAN: TStringField
      FieldName = 'EMPRA15CODEAN'
      Origin = 'DB.EMPRESA.EMPRA15CODEAN'
      FixedChar = True
      Size = 15
    end
    object SQLEmpresaAuxEMPRBLOGOTIPO: TBlobField
      FieldName = 'EMPRBLOGOTIPO'
      Origin = 'DB.EMPRESA.EMPRBLOGOTIPO'
      Size = 1
    end
  end
  object TblCredDeb_UfCFOP_Ana: TTable
    Tag = 1
    OnNewRecord = TblCredDeb_UfCFOP_AnaNewRecord
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'CredDeb_UfCFOP_Ana.DB'
    Left = 49
    Top = 226
    object TblCredDeb_UfCFOP_AnaTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object TblCredDeb_UfCFOP_AnaAnoMes: TStringField
      FieldName = 'AnoMes'
      Size = 6
    end
    object TblCredDeb_UfCFOP_AnaData: TDateField
      FieldName = 'Data'
    end
    object TblCredDeb_UfCFOP_AnaUF_CFOP: TStringField
      DisplayWidth = 10
      FieldName = 'UF_CFOP'
      Size = 10
    end
    object TblCredDeb_UfCFOP_AnaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object TblCredDeb_UfCFOP_AnaSerie: TStringField
      FieldName = 'Serie'
      Size = 5
    end
    object TblCredDeb_UfCFOP_AnaOperacao: TStringField
      FieldName = 'Operacao'
      Size = 30
    end
    object TblCredDeb_UfCFOP_AnaNumNF_Cup: TStringField
      FieldName = 'NumNF_Cup'
      Size = 6
    end
    object TblCredDeb_UfCFOP_AnaVlrContabil: TFloatField
      FieldName = 'VlrContabil'
    end
    object TblCredDeb_UfCFOP_AnaImpCredDeb: TFloatField
      FieldName = 'ImpCredDeb'
    end
    object TblCredDeb_UfCFOP_AnaBaseCalc: TFloatField
      FieldName = 'BaseCalc'
      currency = True
    end
    object TblCredDeb_UfCFOP_AnaIsentoNaoTrib: TFloatField
      FieldName = 'IsentoNaoTrib'
    end
    object TblCredDeb_UfCFOP_AnaOutras: TFloatField
      FieldName = 'Outras'
    end
  end
  object DSTblCredDeb_UfCFOP_Ana: TDataSource
    DataSet = TblCredDeb_UfCFOP_Ana
    Left = 105
    Top = 254
  end
  object PipeCredDeb_UfCFOP_Ana: TppBDEPipeline
    DataSource = DSTblCredDeb_UfCFOP_Ana
    CloseDataSource = True
    UserName = 'PipeCredDeb_UfCFOP_Ana'
    Left = 133
    Top = 254
  end
  object SQLIcms: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ICMS'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 49
    Top = 142
    object SQLIcmsICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.ICMS.ICMSICOD'
    end
    object SQLIcmsICMSN2ALIQUOTA: TFloatField
      FieldName = 'ICMSN2ALIQUOTA'
      Origin = 'DB.ICMS.ICMSN2ALIQUOTA'
    end
    object SQLIcmsICMSN2PERCSUBSTSAI: TFloatField
      FieldName = 'ICMSN2PERCSUBSTSAI'
      Origin = 'DB.ICMS.ICMSN2PERCSUBSTSAI'
    end
    object SQLIcmsICMSN2PERCSUBSTENT: TFloatField
      FieldName = 'ICMSN2PERCSUBSTENT'
      Origin = 'DB.ICMS.ICMSN2PERCSUBSTENT'
    end
    object SQLIcmsICMSN2PERCREDUCAO: TFloatField
      FieldName = 'ICMSN2PERCREDUCAO'
      Origin = 'DB.ICMS.ICMSN2PERCREDUCAO'
    end
    object SQLIcmsICMSICODSITTRIB: TIntegerField
      FieldName = 'ICMSICODSITTRIB'
      Origin = 'DB.ICMS.ICMSICODSITTRIB'
    end
    object SQLIcmsICMSA60DESCR: TStringField
      FieldName = 'ICMSA60DESCR'
      Origin = 'DB.ICMS.ICMSA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLIcmsICMSN2REDBASEICMS: TFloatField
      FieldName = 'ICMSN2REDBASEICMS'
      Origin = 'DB.ICMS.ICMSN2REDBASEICMS'
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  PRODICOD, ICMSICOD'
      'from '
      '  PRODUTO'
      'where '
      '  %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 77
    Top = 142
    object SQLProdutoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
  end
  object SQLOperacaoEstoque: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM OPERACAOESTOQUE')
    Macros = <>
    Left = 105
    Top = 142
    object SQLOperacaoEstoqueOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
      Origin = 'DB.OPERACAOESTOQUE.OPESICOD'
    end
    object SQLOperacaoEstoqueOPESA60DESCR: TStringField
      FieldName = 'OPESA60DESCR'
      Origin = 'DB.OPERACAOESTOQUE.OPESA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoEstoqueSERIA5COD: TStringField
      FieldName = 'SERIA5COD'
      Origin = 'DB.OPERACAOESTOQUE.SERIA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField
      FieldName = 'CFOPA5CODDENTROUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODDENTROUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField
      FieldName = 'CFOPA5CODFORAUF'
      Origin = 'DB.OPERACAOESTOQUE.CFOPA5CODFORAUF'
      FixedChar = True
      Size = 5
    end
    object SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField
      FieldName = 'OPESCENTRADASAIDA'
      Origin = 'DB.OPERACAOESTOQUE.OPESCENTRADASAIDA'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField
      FieldName = 'OPESCORIGEMDESTINO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCORIGEMDESTINO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoquePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOESTOQUE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOESTOQUE.REGISTRO'
    end
    object SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField
      FieldName = 'OPESA18CAMPOIMP'
      Origin = 'DB.OPERACAOESTOQUE.OPESA18CAMPOIMP'
      FixedChar = True
      Size = 18
    end
    object SQLOperacaoEstoqueOPESCCALCIPI: TStringField
      FieldName = 'OPESCCALCIPI'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCIPI'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoqueOPESCCALCICMS: TStringField
      FieldName = 'OPESCCALCICMS'
      Origin = 'DB.OPERACAOESTOQUE.OPESCCALCICMS'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoquePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.OPERACAOESTOQUE.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField
      FieldName = 'OPESCGERAFINANCEIRO'
      Origin = 'DB.OPERACAOESTOQUE.OPESCGERAFINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoEstoquePLCTA15CODCRED: TStringField
      FieldName = 'PLCTA15CODCRED'
      Origin = 'DB.OPERACAOESTOQUE.PLCTA15CODCRED'
      FixedChar = True
      Size = 15
    end
    object SQLOperacaoEstoquePLCTA15CODDEB: TStringField
      FieldName = 'PLCTA15CODDEB'
      Origin = 'DB.OPERACAOESTOQUE.PLCTA15CODDEB'
      FixedChar = True
      Size = 15
    end
    object SQLOperacaoEstoqueACUMICOD: TIntegerField
      FieldName = 'ACUMICOD'
      Origin = 'DB.OPERACAOESTOQUE.ACUMICOD'
    end
  end
end
