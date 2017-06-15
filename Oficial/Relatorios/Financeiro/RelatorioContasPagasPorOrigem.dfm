inherited FormRelatorioContasPagasPorOrigem: TFormRelatorioContasPagasPorOrigem
  Caption = 'Relat'#243'rio de Contas Pagas Por Origem'
  ClientWidth = 796
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 796
  end
  inherited ScrollBox: TScrollBox
    Width = 796
    inherited PanelCentro: TPanel
      Left = 198
      Top = 101
      Height = 330
      inherited BtnVisualizar: TSpeedButton
        Top = 289
      end
      object GroupCC: TGroupBox
        Left = 12
        Top = 238
        Width = 407
        Height = 41
        Caption = '&ContaCorrente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
        object ComboCC: TRxDBLookupCombo
          Left = 5
          Top = 15
          Width = 396
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todos...'
          FieldsDelimiter = '|'
          ListStyle = lsDelimited
          LookupField = 'CTCRICOD'
          LookupDisplay = 'BANCA5COD;CTCRA15AGENCIA;CTCRA15NUMERO;CTCRA60TITULAR'
          LookupDisplayIndex = 2
          LookupSource = DSSQLContaCorrente
          TabOrder = 0
          OnKeyDown = ComboCCKeyDown
        end
        object GroupTerminal: TGroupBox
          Left = 0
          Top = 0
          Width = 407
          Height = 41
          Caption = '&Terminal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Visible = False
          object ComboTerminal: TRxDBLookupCombo
            Left = 5
            Top = 15
            Width = 396
            Height = 21
            DropDownCount = 8
            DisplayEmpty = 'Todos...'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            LookupField = 'TERMICOD'
            LookupDisplay = 'TERMA60DESCR'
            LookupSource = DSSQLTerminal
            ParentFont = False
            TabOrder = 0
            OnKeyDown = ComboTerminalKeyDown
          end
        end
      end
      object RadioSetor: TRadioGroup
        Left = 12
        Top = 202
        Width = 407
        Height = 35
        Caption = '&Setor'
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 3
        Items.Strings = (
          'Caixa'
          'Cheque'
          'Banco'
          'Todos')
        ParentFont = False
        TabOrder = 3
        OnClick = RadioSetorClick
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 792
      inherited PanelCabecalho: TPanel
        Width = 792
        inherited PanelNavigator: TPanel
          Width = 792
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 792
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ContasPagasSetor.db'
    object TblTemporariaCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPAGAN3VLRPAGTO: TFloatField
      FieldName = 'PAGAN3VLRPAGTO'
    end
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
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
    object TblTemporariaNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCTPGDTEMIS: TDateTimeField
      FieldName = 'CTPGDTEMIS'
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
    object TblTemporariaFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
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
    object TblTemporariaTESOA13ID: TStringField
      FieldName = 'TESOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaMVBCA13ID: TStringField
      FieldName = 'MVBCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCTCRA15NUMERO: TStringField
      FieldName = 'CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCTCRA15NUMERO_1: TStringField
      FieldName = 'CTCRA15NUMERO_1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaDATAMOVIMENTO: TDateTimeField
      FieldName = 'DATAMOVIMENTO'
    end
    object TblTemporariaCQEMA13ID: TStringField
      FieldName = 'CQEMA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
    end
    object TblTemporariaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 60
    end
    object TblTemporariaDOCORIGEM: TStringField
      FieldName = 'DOCORIGEM'
      Size = 60
    end
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'TERMICOD,'
      'TERMA60DESCR'
      'FROM'
      'TERMINAL'
      'WHERE'
      'TERMCTIPO = '#39'C'#39
      'ORDER BY'
      'TERMA60DESCR')
    Macros = <>
    Left = 472
    Top = 5
    object SQLTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 500
    Top = 5
  end
  object SQLContaCorrente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CTCRICOD,'
      'BANCA5COD,'
      'CTCRA15AGENCIA,'
      'CTCRA15NUMERO,'
      'CTCRA60TITULAR'
      'FROM'
      'CONTACORRENTE'
      'ORDER BY'
      'BANCA5COD')
    Macros = <>
    Left = 528
    Top = 5
    object SQLContaCorrenteCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.CONTACORRENTE.CTCRICOD'
    end
    object SQLContaCorrenteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.CONTACORRENTE.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLContaCorrenteCTCRA15AGENCIA: TStringField
      FieldName = 'CTCRA15AGENCIA'
      Origin = 'DB.CONTACORRENTE.CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA15NUMERO: TStringField
      FieldName = 'CTCRA15NUMERO'
      Origin = 'DB.CONTACORRENTE.CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object SQLContaCorrenteCTCRA60TITULAR: TStringField
      FieldName = 'CTCRA60TITULAR'
      Origin = 'DB.CONTACORRENTE.CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLContaCorrente: TDataSource
    DataSet = SQLContaCorrente
    Left = 556
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
    Left = 584
    Top = 5
  end
  object SQLContasPagar: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '  Distinct'
      '  PAGAMENTO.CTPGA13ID,'
      '  ((PAGAMENTO.PAGAN3VLRPAGTO +'
      '    PAGAMENTO.PAGAN3VLRJURO +'
      '    PAGAMENTO.PAGAN3VLRMULTA) -'
      '    PAGAMENTO.PAGAN3VLRDESC) as PAGAN3VLRPAGTO,'
      '  (CONTASPAGAR.CTPGN3VLR - PAGAMENTO.PAGAN3VLRPAGTO) as Saldo,'
      '  PAGAMENTO.PAGAN3VLRJURO,'
      '  PAGAMENTO.PAGAN3VLRMULTA,'
      '  PAGAMENTO.PAGAN3VLRDESC,'
      '  %MCampoData as PAGADPAGTO,'
      '  CONTASPAGAR.NOCPA13ID,'
      '  CONTASPAGAR.PDCPA13ID,'
      '  CONTASPAGAR.EMPRICOD,'
      '  CONTASPAGAR.CTPGDTEMIS,'
      '  CONTASPAGAR.CTPGDVENC,'
      '  CONTASPAGAR.CTPGA20DOCORIG,'
      '  CONTASPAGAR.CTPGINROPARC,'
      '  CONTASPAGAR.CTPGN3VLR,'
      '  CONTASPAGAR.PORTICOD,'
      '  FORNECEDOR.FORNICOD,'
      '  FORNECEDOR.FORNA60NOMEFANT,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR,'
      '  TESOURARIA.TESOA13ID,'
      '  MOVIMENTOBANCO.MVBCA13ID,'
      '  TERMINAL.TERMA60DESCR,'
      '  CC.CTCRA15NUMERO,'
      '  MOVIMENTOBANCO.MVBCDLANC as DataMovimento,'
      '  CONTASPAGAR.CQEMA13ID,'
      '  MOVIMENTOBANCO.CTCRICOD,'
      '  CC.CTCRICOD,'
      '  CHEQUEEMITIDO.CQEMINROCHEQUE'
      'from'
      
        ' PAGAMENTO inner join CONTASPAGAR on PAGAMENTO.CTPGA13ID = CONTA' +
        'SPAGAR.CTPGA13ID'
      
        ' left outer join FORNECEDOR           on CONTASPAGAR.FORNICOD   ' +
        '   = FORNECEDOR.FORNICOD'
      
        ' left outer join TIPODOCUMENTO        on CONTASPAGAR.TPDCICOD   ' +
        '   = TIPODOCUMENTO.TPDCICOD'
      
        ' left outer join PORTADOR             on CONTASPAGAR.PORTICOD   ' +
        '   = PORTADOR.PORTICOD'
      
        ' left outer join TESOURARIA           on PAGAMENTO.CTPGA13ID    ' +
        '   = TESOURARIA.CTPGA13ID'
      
        ' left outer join MOVIMENTOBANCO       on PAGAMENTO.CTPGA13ID    ' +
        '   = MOVIMENTOBANCO.CTPGA13ID'
      
        ' left outer join TERMINAL             on TESOURARIA.TERMICOD    ' +
        '   = TERMINAL.TERMICOD'
      
        ' left outer join CONTACORRENTE        on MOVIMENTOBANCO.CTCRICOD' +
        '   = CONTACORRENTE.CTCRICOD'
      
        ' left outer join CHEQUEEMITIDO        on CONTASPAGAR.CQEMA13ID  ' +
        '   = CHEQUEEMITIDO.CQEMA13ID'
      
        ' left outer join CONTACORRENTE CC     on CHEQUEEMITIDO.CTCRICOD ' +
        '   = CC.CTCRICOD'
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MTerminal) and'
      '  (%MCC) and'
      '  (%MTipoPadrao) and'
      '  (%MSetor)')
    Macros = <
      item
        DataType = ftString
        Name = 'MCampoData'
        ParamType = ptInput
        Value = 'PAGAMENTO.PAGADPAGTO'
      end
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
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCC'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoPadrao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MSetor'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 421
    Top = 5
    object SQLContasPagarCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarPAGAN3VLRPAGTO: TFloatField
      FieldName = 'PAGAN3VLRPAGTO'
    end
    object SQLContasPagarSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasPagarPAGAN3VLRJURO: TFloatField
      FieldName = 'PAGAN3VLRJURO'
    end
    object SQLContasPagarPAGAN3VLRMULTA: TFloatField
      FieldName = 'PAGAN3VLRMULTA'
    end
    object SQLContasPagarPAGAN3VLRDESC: TFloatField
      FieldName = 'PAGAN3VLRDESC'
    end
    object SQLContasPagarPAGADPAGTO: TDateTimeField
      FieldName = 'PAGADPAGTO'
    end
    object SQLContasPagarNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasPagarCTPGDTEMIS: TDateTimeField
      FieldName = 'CTPGDTEMIS'
    end
    object SQLContasPagarCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
    end
    object SQLContasPagarCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      FixedChar = True
    end
    object SQLContasPagarCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
    end
    object SQLContasPagarCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
    end
    object SQLContasPagarPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLContasPagarFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object SQLContasPagarFORNA60NOMEFANT: TStringField
      FieldName = 'FORNA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasPagarPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarTESOA13ID: TStringField
      FieldName = 'TESOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarMVBCA13ID: TStringField
      FieldName = 'MVBCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarCTCRA15NUMERO: TStringField
      FieldName = 'CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object SQLContasPagarDATAMOVIMENTO: TDateTimeField
      FieldName = 'DATAMOVIMENTO'
    end
    object SQLContasPagarCQEMA13ID: TStringField
      FieldName = 'CQEMA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
    end
    object SQLContasPagarCTCRICOD_1: TIntegerField
      FieldName = 'CTCRICOD_1'
    end
    object SQLContasPagarCQEMINROCHEQUE: TIntegerField
      FieldName = 'CQEMINROCHEQUE'
    end
  end
end
