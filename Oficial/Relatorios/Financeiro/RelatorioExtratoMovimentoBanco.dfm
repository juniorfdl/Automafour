inherited FormRelatorioExtratoMovimentoBanco: TFormRelatorioExtratoMovimentoBanco
  Left = 100
  Top = 133
  Caption = 'Extrato do Movimento das Contas Correntes'
  ClientHeight = 491
  ClientWidth = 833
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 475
    Width = 833
  end
  inherited ScrollBox: TScrollBox
    Width = 833
    Height = 475
    inherited PanelCentro: TPanel
      Top = 90
      Height = 368
      inherited BtnVisualizar: TSpeedButton
        Left = 280
        Top = 338
      end
      inherited EmpresaGroup: TGroupBox
        Top = -1
      end
      inherited GroupBox1: TGroupBox
        Top = 158
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 202
        Width = 407
        Height = 41
        Caption = ' Conta Corrente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label5: TLabel
          Left = 107
          Top = 16
          Width = 11
          Height = 22
          AutoSize = False
          Caption = ' - '
        end
        object Label6: TLabel
          Left = 163
          Top = 16
          Width = 11
          Height = 22
          AutoSize = False
          Caption = ' - '
        end
        object DBEdit33: TDBEdit
          Left = 65
          Top = 16
          Width = 42
          Height = 21
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'CTCRA15AGENCIA'
          DataSource = DSSQLCC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 118
          Top = 16
          Width = 48
          Height = 21
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'CTCRA15NUMERO'
          DataSource = DSSQLCC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 174
          Top = 16
          Width = 227
          Height = 21
          TabStop = False
          AutoSize = False
          BorderStyle = bsNone
          DataField = 'CTCRA60TITULAR'
          DataSource = DSSQLCC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 2
        end
        object ComboConta: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 51
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CTCRICOD'
          LookupDisplay = 'CTCRICOD'
          LookupSource = DSSQLCC
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox5: TGroupBox
        Left = 12
        Top = 245
        Width = 407
        Height = 40
        Caption = ' Opera'#231#245'es '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboOpBanco: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 390
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPBCICOD'
          LookupDisplay = 'OPBCA60DESCR'
          LookupSource = DSOpBanco
          ParentFont = False
          TabOrder = 0
        end
      end
      object CkMostrarApenasSaldo: TCheckBox
        Left = 22
        Top = 341
        Width = 231
        Height = 17
        Caption = 'Mostrar apenas saldo das contas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object GroupPlanoContas: TGroupBox
        Left = 13
        Top = 288
        Width = 407
        Height = 43
        Caption = ' Plano de Contas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboPlanoConta: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 397
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PLCTA15COD'
          LookupDisplay = 'PLCTA15COD;PLCTA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLPlanoContas
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 829
      inherited PanelCabecalho: TPanel
        Width = 829
        inherited PanelNavigator: TPanel
          Width = 829
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 829
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelMovimentoBanco.db'
    object TblTemporariaMVBCA13ID: TStringField
      FieldName = 'MVBCA13ID'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.MOVIMENTOBANCO.EMPRICOD'
    end
    object TblTemporariaMVBCICOD: TIntegerField
      FieldName = 'MVBCICOD'
      Origin = 'DB.MOVIMENTOBANCO.MVBCICOD'
    end
    object TblTemporariaMVBCDLANC: TDateTimeField
      FieldName = 'MVBCDLANC'
      Origin = 'DB.MOVIMENTOBANCO.MVBCDLANC'
    end
    object TblTemporariaBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.MOVIMENTOBANCO.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.MOVIMENTOBANCO.CTCRICOD'
    end
    object TblTemporariaMVBCA6NROCHQ: TStringField
      FieldName = 'MVBCA6NROCHQ'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA6NROCHQ'
      FixedChar = True
      Size = 6
    end
    object TblTemporariaVALORLANC: TFloatField
      FieldName = 'VALORLANC'
      Origin = 'DB.MOVIMENTOBANCO.MVBCN2VLRCRED'
    end
    object TblTemporariaMVBCDCHQBOMPARA: TDateTimeField
      FieldName = 'MVBCDCHQBOMPARA'
      Origin = 'DB.MOVIMENTOBANCO.MVBCDCHQBOMPARA'
    end
    object TblTemporariaMVBCDCHQBAIXA: TDateTimeField
      FieldName = 'MVBCDCHQBAIXA'
      Origin = 'DB.MOVIMENTOBANCO.MVBCDCHQBAIXA'
    end
    object TblTemporariaMVBCA254HIST: TStringField
      FieldName = 'MVBCA254HIST'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA254HIST'
      FixedChar = True
      Size = 254
    end
    object TblTemporariaMVBCA60FAVORECIDO: TStringField
      FieldName = 'MVBCA60FAVORECIDO'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA60FAVORECIDO'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaOPBCICOD: TIntegerField
      FieldName = 'OPBCICOD'
      Origin = 'DB.MOVIMENTOBANCO.OPBCICOD'
    end
    object TblTemporariaMVBCCALTSALD: TStringField
      FieldName = 'MVBCCALTSALD'
      Origin = 'DB.MOVIMENTOBANCO.MVBCCALTSALD'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaOPBCA60DESCR: TStringField
      FieldName = 'OPBCA60DESCR'
      Origin = 'DB.OPERACAOBANCO.OPBCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.MOVIMENTOBANCO.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
  end
  object SQLCC: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CONTACORRENTE')
    Macros = <>
    Left = 544
    Top = 5
    object SQLCCCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.CONTACORRENTE.CTCRICOD'
    end
    object SQLCCBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CONTACORRENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCCCTCRA15AGENCIA: TStringField
      FieldName = 'CTCRA15AGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLCCCTCRA15NUMERO: TStringField
      FieldName = 'CTCRA15NUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object SQLCCCTCRA60TITULAR: TStringField
      FieldName = 'CTCRA60TITULAR'
      Origin = 'DB.CONTACORRENTE.CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLCCCTCRDABERTURA: TDateTimeField
      FieldName = 'CTCRDABERTURA'
      Origin = 'DB.CONTACORRENTE.CTCRDABERTURA'
    end
    object SQLCCCTCRN2LIMITE: TFloatField
      FieldName = 'CTCRN2LIMITE'
      Origin = 'DB.CONTACORRENTE.CTCRN2LIMITE'
    end
    object SQLCCCTCRN2SALDOATUAL: TFloatField
      FieldName = 'CTCRN2SALDOATUAL'
      Origin = 'DB.CONTACORRENTE.CTCRN2SALDOATUAL'
    end
  end
  object DSSQLCC: TDataSource
    DataSet = SQLCC
    Left = 572
    Top = 5
  end
  object SQLMovBco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MV.MVBCA13ID,'
      '  MV.EMPRICOD,'
      '  MV.MVBCICOD,'
      '  MV.MVBCDLANC,'
      '  MV.BANCA5COD,'
      '  MV.CTCRICOD,'
      '  MV.MVBCA6NROCHQ,'
      '  MV.MVBCN2VLRCRED-MV.MVBCN2VLRDEB as VALORLANC,'
      '  MV.MVBCDCHQBOMPARA,'
      '  MV.MVBCDCHQBAIXA,'
      '  MV.MVBCA254HIST,'
      '  MV.MVBCA60FAVORECIDO,'
      '  MV.OPBCICOD,'
      '  MV.MVBCCALTSALD,'
      '  MV.PLCTA15COD,'
      '  OP.OPBCA60DESCR'
      'from'
      
        '   MOVIMENTOBANCO MV JOIN OPERACAOBANCO OP ON MV.OPBCICOD = OP.O' +
        'PBCICOD'
      'where'
      '  %MConta and'
      '  %MData and'
      '  %MOpBanco and'
      '  %MPlanoConta'
      'order by'
      '  MVBCDLANC, EMPRICOD, MVBCICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MConta'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOpBanco'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPlanoConta'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 424
    Top = 5
    object SQLMovBcoMVBCA13ID: TStringField
      FieldName = 'MVBCA13ID'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLMovBcoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.MOVIMENTOBANCO.EMPRICOD'
    end
    object SQLMovBcoMVBCICOD: TIntegerField
      FieldName = 'MVBCICOD'
      Origin = 'DB.MOVIMENTOBANCO.MVBCICOD'
    end
    object SQLMovBcoMVBCDLANC: TDateTimeField
      FieldName = 'MVBCDLANC'
      Origin = 'DB.MOVIMENTOBANCO.MVBCDLANC'
    end
    object SQLMovBcoBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.MOVIMENTOBANCO.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLMovBcoCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.MOVIMENTOBANCO.CTCRICOD'
    end
    object SQLMovBcoMVBCA6NROCHQ: TStringField
      FieldName = 'MVBCA6NROCHQ'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA6NROCHQ'
      FixedChar = True
      Size = 6
    end
    object SQLMovBcoVALORLANC: TFloatField
      FieldName = 'VALORLANC'
      Origin = 'DB.MOVIMENTOBANCO.MVBCN2VLRCRED'
    end
    object SQLMovBcoMVBCDCHQBOMPARA: TDateTimeField
      FieldName = 'MVBCDCHQBOMPARA'
      Origin = 'DB.MOVIMENTOBANCO.MVBCDCHQBOMPARA'
    end
    object SQLMovBcoMVBCDCHQBAIXA: TDateTimeField
      FieldName = 'MVBCDCHQBAIXA'
      Origin = 'DB.MOVIMENTOBANCO.MVBCDCHQBAIXA'
    end
    object SQLMovBcoMVBCA254HIST: TStringField
      FieldName = 'MVBCA254HIST'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLMovBcoMVBCA60FAVORECIDO: TStringField
      FieldName = 'MVBCA60FAVORECIDO'
      Origin = 'DB.MOVIMENTOBANCO.MVBCA60FAVORECIDO'
      FixedChar = True
      Size = 60
    end
    object SQLMovBcoOPBCICOD: TIntegerField
      FieldName = 'OPBCICOD'
      Origin = 'DB.MOVIMENTOBANCO.OPBCICOD'
    end
    object SQLMovBcoMVBCCALTSALD: TStringField
      FieldName = 'MVBCCALTSALD'
      Origin = 'DB.MOVIMENTOBANCO.MVBCCALTSALD'
      FixedChar = True
      Size = 1
    end
    object SQLMovBcoOPBCA60DESCR: TStringField
      FieldName = 'OPBCA60DESCR'
      Origin = 'DB.OPERACAOBANCO.OPBCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovBcoPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.MOVIMENTOBANCO.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.NLinks = 0
    Subreports.OnDemand = False
    Tables.Number = -1
    SortFields.Number = -1
    GroupSortFields.Number = -1
    GroupCondition.Number = -1
    GroupCondition.GroupType = gtOther
    GroupOptions.Number = -1
    GroupOptions.GroupType = gtOther
    GroupOptions.RepeatGH = cDefault
    GroupOptions.KeepTogether = cDefault
    GroupOptions.TopNOptions = tnDefault
    GroupOptions.TopNGroups = -1
    GroupOptions.TopNDiscardOthers = cDefault
    ParamFields.ParamType = pfString
    ParamFields.ParamSource = psReport
    ParamFields.Info.AllowNull = cDefault
    ParamFields.Info.AllowEditing = cDefault
    ParamFields.Info.AllowMultipleValues = cDefault
    ParamFields.Info.ValueType = vtDiscrete
    ParamFields.Info.PartOfGroup = cDefault
    ParamFields.Info.MutuallyExclusiveGroup = cDefault
    ParamFields.Info.GroupNum = -1
    ParamFields.ValueLimit = cDefault
    ParamFields.Ranges.Number = -1
    ParamFields.Ranges.RangeBounds = IncludeStartAndEnd
    ParamFields.PLDescriptionOnly = cDefault
    ParamFields.PLSortMethod = psmDefaultSort
    ParamFields.PLSortByDescription = cDefault
    SectionFormat.BackgroundColor = clNone
    SectionHeight.Height = 0
    SQL.Params.ParamType = spChar
    LogOnInfo.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Propagate = True
    Export.Excel.Constant = 9.000000000000000000
    Export.Excel.Area = 'D'
    Export.CharSepQuote = ' '
    WindowZoom.Magnification = -1
    WindowState = wsMaximized
    WindowButtonBar.CloseBtn = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    GraphType.Number = -1
    GraphType.Style = barSideBySide
    GraphText.Number = -1
    GraphText.TitleFont.Charset = DEFAULT_CHARSET
    GraphText.TitleFont.Color = clWindowText
    GraphText.TitleFont.Height = -11
    GraphText.TitleFont.Name = 'MS Sans Serif'
    GraphText.TitleFont.Style = []
    GraphText.SubTitleFont.Charset = DEFAULT_CHARSET
    GraphText.SubTitleFont.Color = clWindowText
    GraphText.SubTitleFont.Height = -11
    GraphText.SubTitleFont.Name = 'MS Sans Serif'
    GraphText.SubTitleFont.Style = []
    GraphText.FootNoteFont.Charset = DEFAULT_CHARSET
    GraphText.FootNoteFont.Color = clWindowText
    GraphText.FootNoteFont.Height = -11
    GraphText.FootNoteFont.Name = 'MS Sans Serif'
    GraphText.FootNoteFont.Style = []
    GraphText.GroupsTitleFont.Charset = DEFAULT_CHARSET
    GraphText.GroupsTitleFont.Color = clWindowText
    GraphText.GroupsTitleFont.Height = -11
    GraphText.GroupsTitleFont.Name = 'MS Sans Serif'
    GraphText.GroupsTitleFont.Style = []
    GraphText.DataTitleFont.Charset = DEFAULT_CHARSET
    GraphText.DataTitleFont.Color = clWindowText
    GraphText.DataTitleFont.Height = -11
    GraphText.DataTitleFont.Name = 'MS Sans Serif'
    GraphText.DataTitleFont.Style = []
    GraphText.LegendFont.Charset = DEFAULT_CHARSET
    GraphText.LegendFont.Color = clWindowText
    GraphText.LegendFont.Height = -11
    GraphText.LegendFont.Name = 'MS Sans Serif'
    GraphText.LegendFont.Style = []
    GraphText.GroupLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.GroupLabelsFont.Color = clWindowText
    GraphText.GroupLabelsFont.Height = -11
    GraphText.GroupLabelsFont.Name = 'MS Sans Serif'
    GraphText.GroupLabelsFont.Style = []
    GraphText.DataLabelsFont.Charset = DEFAULT_CHARSET
    GraphText.DataLabelsFont.Color = clWindowText
    GraphText.DataLabelsFont.Height = -11
    GraphText.DataLabelsFont.Name = 'MS Sans Serif'
    GraphText.DataLabelsFont.Style = []
    GraphOptions.Number = -1
    GraphOptions.Max = -1.000000000000000000
    GraphOptions.Min = -1.000000000000000000
    GraphOptions.DataValues = cDefault
    GraphOptions.GridLines = cDefault
    GraphOptions.Legend = cDefault
    GraphOptions.BarDirection = bdDefault
    GraphOptionInfo.Number = -1
    GraphOptionInfo.Color = gcDefault
    GraphOptionInfo.Legend = glDefault
    GraphOptionInfo.PieSize = gpsDefault
    GraphOptionInfo.PieSlice = gslDefault
    GraphOptionInfo.BarSize = gbsDefault
    GraphOptionInfo.BarDirection = bdDefault
    GraphOptionInfo.MarkerSize = gmsDefault
    GraphOptionInfo.MarkerShape = gshDefault
    GraphOptionInfo.DataPoints = gdpDefault
    GraphOptionInfo.NumberFormat = gnfDefault
    GraphOptionInfo.ViewingAngle = gvaDefault
    GraphData.Number = -1
    GraphData.RowGroupN = -1
    GraphData.ColGroupN = -1
    GraphData.SummarizedFieldN = -1
    GraphData.Direction = Unknown
    GraphAxis.Number = -1
    GraphAxis.GridLineX = gglDefault
    GraphAxis.GridLineY = gglDefault
    GraphAxis.GridLineY2 = gglDefault
    GraphAxis.GridLineZ = gglDefault
    GraphAxis.DataValuesY = gdvDefault
    GraphAxis.DataValuesY2 = gdvDefault
    GraphAxis.DataValuesZ = gdvDefault
    GraphAxis.NumberFormatY = gnfDefault
    GraphAxis.NumberFormatY2 = gnfDefault
    GraphAxis.NumberFormatZ = gnfDefault
    GraphAxis.DivisionTypeY = gdvDefault
    GraphAxis.DivisionTypeY2 = gdvDefault
    GraphAxis.DivisionTypeZ = gdvDefault
    GraphAxis.DivisionsY = 0
    GraphAxis.DivisionsY2 = 0
    GraphAxis.DivisionsZ = 0
    Left = 474
    Top = 5
  end
  object DSOpBanco: TDataSource
    DataSet = SQLOPBanco
    Left = 638
    Top = 5
  end
  object SQLOPBanco: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OperacaoBanco'
      'order by'
      '  OPBCA60DESCR')
    Left = 610
    Top = 5
    object SQLOPBancoOPBCICOD: TIntegerField
      FieldName = 'OPBCICOD'
      Origin = 'DB.OPERACAOBANCO.OPBCICOD'
    end
    object SQLOPBancoOPBCA60DESCR: TStringField
      FieldName = 'OPBCA60DESCR'
      Origin = 'DB.OPERACAOBANCO.OPBCA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPlanoContas: TDataSource
    DataSet = SQLPlanoContas
    Left = 700
    Top = 5
  end
  object SQLPlanoContas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PlanodeContas'
      'Where PLCTCANALSINT = '#39'A'#39
      'Order by PLCTA60DESCR')
    Macros = <>
    Left = 672
    Top = 5
    object SQLPlanoContasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
