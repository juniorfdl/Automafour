inherited FormRelatorioAgenda: TFormRelatorioAgenda
  Caption = 'Relat'#243'rio da Agenda Telefonica'
  PixelsPerInch = 96
  TextHeight = 13
  inherited TblTemporaria: TTable
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.AGENDATELEF.EMPRICOD'
    end
    object TblTemporariaAGFOICOD: TIntegerField
      FieldName = 'AGFOICOD'
      Origin = 'DB.AGENDATELEF.AGFOICOD'
    end
    object TblTemporariaAGFOA13ID: TStringField
      FieldName = 'AGFOA13ID'
      Origin = 'DB.AGENDATELEF.AGFOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaAGFOA60NOME: TStringField
      FieldName = 'AGFOA60NOME'
      Origin = 'DB.AGENDATELEF.AGFOA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaAGFOA15FONE1: TStringField
      FieldName = 'AGFOA15FONE1'
      Origin = 'DB.AGENDATELEF.AGFOA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaAGFOA15FONE2: TStringField
      FieldName = 'AGFOA15FONE2'
      Origin = 'DB.AGENDATELEF.AGFOA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaAGFOA60END: TStringField
      FieldName = 'AGFOA60END'
      Origin = 'DB.AGENDATELEF.AGFOA60END'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaAGFOA60BAI: TStringField
      FieldName = 'AGFOA60BAI'
      Origin = 'DB.AGENDATELEF.AGFOA60BAI'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaAGFOA60CID: TStringField
      FieldName = 'AGFOA60CID'
      Origin = 'DB.AGENDATELEF.AGFOA60CID'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaAGFOA8CEP: TStringField
      FieldName = 'AGFOA8CEP'
      Origin = 'DB.AGENDATELEF.AGFOA8CEP'
      FixedChar = True
      Size = 8
    end
    object TblTemporariaAGFOA2UF: TStringField
      FieldName = 'AGFOA2UF'
      Origin = 'DB.AGENDATELEF.AGFOA2UF'
      FixedChar = True
      Size = 2
    end
    object TblTemporariaAGFOA254OBS: TStringField
      FieldName = 'AGFOA254OBS'
      Origin = 'DB.AGENDATELEF.AGFOA254OBS'
      Size = 254
    end
    object TblTemporariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.AGENDATELEF.REGISTRO'
    end
    object TblTemporariaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.AGENDATELEF.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DSTblTemporaria
    UserName = 'BDEPipeline1'
    Left = 160
    Top = 8
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'AGFOICOD'
      FieldName = 'AGFOICOD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'AGFOA13ID'
      FieldName = 'AGFOA13ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'AGFOA60NOME'
      FieldName = 'AGFOA60NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'AGFOA15FONE1'
      FieldName = 'AGFOA15FONE1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'AGFOA15FONE2'
      FieldName = 'AGFOA15FONE2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'AGFOA60END'
      FieldName = 'AGFOA60END'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField8: TppField
      FieldAlias = 'AGFOA60BAI'
      FieldName = 'AGFOA60BAI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'AGFOA60CID'
      FieldName = 'AGFOA60CID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField10: TppField
      FieldAlias = 'AGFOA8CEP'
      FieldName = 'AGFOA8CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField11: TppField
      FieldAlias = 'AGFOA2UF'
      FieldName = 'AGFOA2UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField12: TppField
      FieldAlias = 'AGFOA254OBS'
      FieldName = 'AGFOA254OBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField13: TppField
      FieldAlias = 'REGISTRO'
      FieldName = 'REGISTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppBDEPipeline1ppField14: TppField
      FieldAlias = 'PENDENTE'
      FieldName = 'PENDENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
  end
  object RxQuery1: TRxQuery
    Active = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from agendatelef where (%mfiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'mfiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 232
    Top = 8
    object RxQuery1EMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.AGENDATELEF.EMPRICOD'
    end
    object RxQuery1AGFOICOD: TIntegerField
      FieldName = 'AGFOICOD'
      Origin = 'DB.AGENDATELEF.AGFOICOD'
    end
    object RxQuery1AGFOA13ID: TStringField
      FieldName = 'AGFOA13ID'
      Origin = 'DB.AGENDATELEF.AGFOA13ID'
      FixedChar = True
      Size = 13
    end
    object RxQuery1AGFOA60NOME: TStringField
      FieldName = 'AGFOA60NOME'
      Origin = 'DB.AGENDATELEF.AGFOA60NOME'
      FixedChar = True
      Size = 60
    end
    object RxQuery1AGFOA15FONE1: TStringField
      FieldName = 'AGFOA15FONE1'
      Origin = 'DB.AGENDATELEF.AGFOA15FONE1'
      FixedChar = True
      Size = 15
    end
    object RxQuery1AGFOA15FONE2: TStringField
      FieldName = 'AGFOA15FONE2'
      Origin = 'DB.AGENDATELEF.AGFOA15FONE2'
      FixedChar = True
      Size = 15
    end
    object RxQuery1AGFOA60END: TStringField
      FieldName = 'AGFOA60END'
      Origin = 'DB.AGENDATELEF.AGFOA60END'
      FixedChar = True
      Size = 60
    end
    object RxQuery1AGFOA60BAI: TStringField
      FieldName = 'AGFOA60BAI'
      Origin = 'DB.AGENDATELEF.AGFOA60BAI'
      FixedChar = True
      Size = 60
    end
    object RxQuery1AGFOA60CID: TStringField
      FieldName = 'AGFOA60CID'
      Origin = 'DB.AGENDATELEF.AGFOA60CID'
      FixedChar = True
      Size = 60
    end
    object RxQuery1AGFOA8CEP: TStringField
      FieldName = 'AGFOA8CEP'
      Origin = 'DB.AGENDATELEF.AGFOA8CEP'
      FixedChar = True
      Size = 8
    end
    object RxQuery1AGFOA2UF: TStringField
      FieldName = 'AGFOA2UF'
      Origin = 'DB.AGENDATELEF.AGFOA2UF'
      FixedChar = True
      Size = 2
    end
    object RxQuery1AGFOA254OBS: TStringField
      FieldName = 'AGFOA254OBS'
      Origin = 'DB.AGENDATELEF.AGFOA254OBS'
      Size = 254
    end
    object RxQuery1REGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.AGENDATELEF.REGISTRO'
    end
    object RxQuery1PENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.AGENDATELEF.PENDENTE'
      FixedChar = True
      Size = 1
    end
  end
  object ppReportrelatorioagenda: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    Left = 208
    Top = 8
    Version = '6.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Relat'#243'rio da Agenda Telefonica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 265
        mmWidth = 53975
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Nome do Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 265
        mmTop = 8202
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Telefone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 72761
        mmTop = 8996
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 146579
        mmTop = 8996
        mmWidth = 11642
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'AGFOA60NOME'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3969
        mmLeft = 794
        mmTop = 7144
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'AGFOA15FONE1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3969
        mmLeft = 71702
        mmTop = 6879
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'AGFOA15FONE1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3969
        mmLeft = 145521
        mmTop = 6615
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
end
