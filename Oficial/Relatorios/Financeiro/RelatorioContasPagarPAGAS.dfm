inherited FormRelatorioContasPagarPAGAS: TFormRelatorioContasPagarPAGAS
  Left = 108
  Top = 124
  Caption = 'Relat'#243'rio de Contas PAGAS'
  ClientHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 489
  end
  inherited ScrollBox: TScrollBox
    Height = 489
    inherited PanelCentro: TPanel
      Top = 84
      Height = 396
      inherited BtnVisualizar: TSpeedButton
        Left = 284
        Top = 370
      end
      inherited GroupBox1: TGroupBox
        Width = 203
        Caption = ' Per'#237'o&do Pagamento '
        inherited Label4: TLabel
          Left = 102
        end
        inherited De: TDateEdit
          Left = 25
          Width = 71
          YearDigits = dyTwo
        end
        inherited Ate: TDateEdit
          Left = 124
          Width = 71
          YearDigits = dyTwo
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 202
        Width = 407
        Height = 41
        Caption = ' Fornecedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboFornecedor: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 397
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'FORNICOD'
          LookupDisplay = 'FORNA60NOMEFANT'
          LookupSource = DSSQLFornecedor
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboFornecedorKeyDown
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 243
        Width = 407
        Height = 41
        Caption = 'Tipo de Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ComboTipoDoc: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 397
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPDCICOD'
          LookupDisplay = 'TPDCA60DESCR'
          LookupSource = DSSQLTipoDoc
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboFornecedorKeyDown
        end
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 284
        Width = 407
        Height = 41
        Caption = 'Portador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboPortador: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 397
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PORTICOD'
          LookupDisplay = 'PORTA60DESCR'
          LookupSource = DSSQLPortador
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboFornecedorKeyDown
        end
      end
      object GroupBox5: TGroupBox
        Left = 13
        Top = 326
        Width = 407
        Height = 41
        Caption = ' Plano de Contas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object ComboConta: TRxDBLookupCombo
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
          OnKeyDown = ComboFornecedorKeyDown
        end
      end
      object GroupBox6: TGroupBox
        Left = 218
        Top = 161
        Width = 201
        Height = 41
        Caption = 'Per'#237'o&do Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label5: TLabel
          Left = 8
          Top = 18
          Width = 15
          Height = 13
          Caption = '&De'
          FocusControl = DeVenc
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 102
          Top = 18
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = AteVenc
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DeVenc: TDateEdit
          Left = 26
          Top = 14
          Width = 72
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyTwo
          TabOrder = 0
        end
        object AteVenc: TDateEdit
          Left = 122
          Top = 14
          Width = 72
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
        end
      end
      object ckPlanoContas: TCheckBox
        Left = 20
        Top = 369
        Width = 169
        Height = 17
        Caption = 'Agrupar por plano de contas'
        TabOrder = 7
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelContasPAGAS.db'
    object TblTemporariaCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPAGAN3VLRPAGTO: TFloatField
      FieldName = 'PAGAN3VLRPAGTO'
    end
    object TblTemporariaPAGAN3VLRJURO: TFloatField
      FieldName = 'PAGAN3VLRJURO'
    end
    object TblTemporariaPAGAN3VLRMULTA: TFloatField
      FieldName = 'PAGAN3VLRMULTA'
    end
    object TblTemporariaPAGAN3VLRDESC: TFloatField
      FieldName = 'PAGAN3VLRDESC'
    end
    object TblTemporariaPAGADPAGTO: TDateTimeField
      FieldName = 'PAGADPAGTO'
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
    end
    object TblTemporariaCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      FixedChar = True
    end
    object TblTemporariaCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
    end
    object TblTemporariaCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
    end
    object TblTemporariaPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object TblTemporariaFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLPagamento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  PAGAMENTO.CTPGA13ID,'
      '  ((PAGAMENTO.PAGAN3VLRPAGTO +'
      '    PAGAMENTO.PAGAN3VLRJURO +'
      '    PAGAMENTO.PAGAN3VLRMULTA) -'
      '    PAGAMENTO.PAGAN3VLRDESC) as PAGAN3VLRPAGTO,'
      '  PAGAMENTO.PAGAN3VLRJURO,'
      '  PAGAMENTO.PAGAN3VLRMULTA,'
      '  PAGAMENTO.PAGAN3VLRDESC,'
      '  PAGAMENTO.PAGADPAGTO,'
      '  CONTASPAGAR.EMPRICOD,'
      '  CONTASPAGAR.CTPGDVENC,'
      '  CONTASPAGAR.CTPGA20DOCORIG,'
      '  CONTASPAGAR.CTPGINROPARC,'
      '  CONTASPAGAR.CTPGN3VLR,'
      '  CONTASPAGAR.PORTICOD,'
      '  PLANODECONTAS.PLCTA60DESCR,'
      '  FORNECEDOR.FORNA60NOMEFANT,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR'
      'from'
      
        ' (((PAGAMENTO PAGAMENTO inner join CONTASPAGAR CONTASPAGAR on PA' +
        'GAMENTO.CTPGA13ID = CONTASPAGAR.CTPGA13ID)'
      
        ' left outer join FORNECEDOR FORNECEDOR on CONTASPAGAR.FORNICOD =' +
        ' FORNECEDOR.FORNICOD)'
      
        ' left outer join TIPODOCUMENTO TIPODOCUMENTO ON CONTASPAGAR.TPDC' +
        'ICOD = TIPODOCUMENTO.TPDCICOD)'
      
        ' left outer join PORTADOR PORTADOR on CONTASPAGAR.PORTICOD = POR' +
        'TADOR.PORTICOD'
      
        ' left outer join PLANODECONTAS PLANODECONTAS on CONTASPAGAR.PLCT' +
        'A15COD = PLANODECONTAS.PLCTA15COD'
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MDataVenc) and'
      '  (%MFornecedor) and'
      '  (%MTipoDoc) and'
      '  (%MPortador) and'
      '  (%MConta)'
      'Order By'
      '  PAGAMENTO.PAGADPAGTO asc,'
      '  FORNECEDOR.FORNA60NOMEFANT asc')
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
      end
      item
        DataType = ftString
        Name = 'MDataVenc'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFornecedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoDoc'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPortador'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MConta'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLPagamentoCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPagamentoPAGAN3VLRPAGTO: TFloatField
      FieldName = 'PAGAN3VLRPAGTO'
    end
    object SQLPagamentoPAGAN3VLRJURO: TFloatField
      FieldName = 'PAGAN3VLRJURO'
    end
    object SQLPagamentoPAGAN3VLRMULTA: TFloatField
      FieldName = 'PAGAN3VLRMULTA'
    end
    object SQLPagamentoPAGAN3VLRDESC: TFloatField
      FieldName = 'PAGAN3VLRDESC'
    end
    object SQLPagamentoPAGADPAGTO: TDateTimeField
      FieldName = 'PAGADPAGTO'
    end
    object SQLPagamentoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLPagamentoCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
    end
    object SQLPagamentoCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLPagamentoCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
    end
    object SQLPagamentoCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
    end
    object SQLPagamentoPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLPagamentoFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLPagamentoTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLPagamentoPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPagamentoPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from FORNECEDOR'
      'order by FORNA60NOMEFANT')
    Macros = <>
    Left = 452
    Top = 5
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 480
    Top = 5
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
    Left = 242
    Top = 4
  end
  object SQLTipoDoc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from TipoDocumento'
      'ORDER BY TPDCA60DESCR')
    Macros = <>
    Left = 508
    Top = 5
    object SQLTipoDocTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
    end
    object SQLTipoDocTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLTipoDoc: TDataSource
    DataSet = SQLTipoDoc
    Left = 536
    Top = 5
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Portador'
      'order by PORTA60DESCR'
      '')
    Macros = <>
    Left = 564
    Top = 5
    object SQLPortadorPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.PORTADOR.PORTICOD'
    end
    object SQLPortadorPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 592
    Top = 5
  end
  object SQLPlanoContas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PlanodeContas'
      'Where PLCTCTIPOSALDO = '#39'D'#39' and PLCTCANALSINT = '#39'A'#39
      'Order by PLCTA60DESCR')
    Macros = <>
    Left = 625
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
  object DSSQLPlanoContas: TDataSource
    DataSet = SQLPlanoContas
    Left = 653
    Top = 5
  end
end
