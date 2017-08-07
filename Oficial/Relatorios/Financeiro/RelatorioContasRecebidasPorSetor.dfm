inherited FormRelatorioContasRecebidasPorSetor: TFormRelatorioContasRecebidasPorSetor
  Left = 578
  Top = 96
  Caption = 'Relat'#243'rio Contas Recebidas Por Origem'
  ClientWidth = 815
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 815
  end
  inherited ScrollBox: TScrollBox
    Width = 815
    inherited PanelCentro: TPanel
      Left = 179
      Top = 91
      Height = 329
      inherited BtnVisualizar: TSpeedButton
        Top = 297
      end
      inherited GroupBox1: TGroupBox
        object CheckNroDuplic: TCheckBox
          Left = 244
          Top = 16
          Width = 153
          Height = 17
          Caption = '&Imprime Nro. Duplicata'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
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
        TabOrder = 2
        OnClick = RadioSetorClick
      end
      object GroupTerminal: TGroupBox
        Left = 12
        Top = 237
        Width = 407
        Height = 41
        Caption = '&Terminal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Visible = False
        object ComboTerminal: TRxDBLookupCombo
          Left = 5
          Top = 15
          Width = 396
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          LookupField = 'TERMICOD'
          LookupDisplay = 'TERMA60DESCR'
          LookupSource = DSSQLTerminal
          TabOrder = 0
          OnKeyDown = ComboTerminalKeyDown
        end
      end
      object GroupCC: TGroupBox
        Left = 12
        Top = 237
        Width = 407
        Height = 41
        Caption = '&ContaCorrente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
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
          OnKeyDown = ComboTerminalKeyDown
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 811
      inherited PanelCabecalho: TPanel
        Width = 811
        inherited PanelNavigator: TPanel
          Width = 811
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 811
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ContasRecebidasSetor.db'
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
    end
    object TblTemporariaTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
    end
    object TblTemporariaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object TblTemporariaRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
    end
    object TblTemporariaRECEN2DESC: TBCDField
      FieldName = 'RECEN2DESC'
      Precision = 15
      Size = 3
    end
    object TblTemporariaRECEN2VLRJURO: TBCDField
      FieldName = 'RECEN2VLRJURO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaRECEN2VLRMULTA: TBCDField
      FieldName = 'RECEN2VLRMULTA'
      Precision = 15
      Size = 3
    end
    object TblTemporariaRECEN2VLRRECTO: TBCDField
      FieldName = 'RECEN2VLRRECTO'
      Precision = 15
      Size = 3
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object TblTemporariaCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object TblTemporariaEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
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
    object TblTemporariaCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
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
    object TblTemporariaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 60
    end
    object TblTemporariaDOCORIGEM: TStringField
      FieldName = 'DOCORIGEM'
      Size = 60
    end
    object TblTemporariaDATAMOVIMENTO: TDateTimeField
      FieldName = 'DATAMOVIMENTO'
    end
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  RECEBIMENTO.CTRCA13ID,'
      '  RECEBIMENTO.EMPRICODREC,'
      '  RECEBIMENTO.TERMICODREC,'
      '  RECEBIMENTO.USUAICOD,'
      '  RECEBIMENTO.RECEDRECTO,'
      '  RECEBIMENTO.RECEN2DESC,'
      '  RECEBIMENTO.RECEN2VLRJURO,'
      '  RECEBIMENTO.RECEN2VLRMULTA,'
      '  ((RECEBIMENTO.RECEN2VLRRECTO +'
      '    RECEBIMENTO.RECEN2VLRJURO +'
      '    RECEBIMENTO.RECEN2VLRMULTA) -'
      '    RECEBIMENTO.RECEN2DESC) as RECEN2VLRRECTO,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.CTRCDEMIS,'
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.CTRCA30NRODUPLICBANCO,'
      '  CONTASRECEBER.EMPRICODULTREC,'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) AS SALDO,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR,'
      '  MOVIMENTOBANCO.CTCRICOD,'
      '  CONTACORRENTE.CTCRA15NUMERO,'
      '  CONTASRECEBER.CTRCA15NROCHQ,'
      '  BANCO.BANCA60NOME,'
      '  RECEBIMENTO.RECEDDATAMOV as DataMovimento,'
      '   MOVIMENTOBANCO.MVBCA13ID'
      ''
      'from'
      
        ' RECEBIMENTO inner join CONTASRECEBER on RECEBIMENTO.CTRCA13ID  ' +
        '    = CONTASRECEBER.CTRCA13ID'
      
        ' left outer join CLIENTE              on CONTASRECEBER.CLIEA13ID' +
        '    = CLIENTE.CLIEA13ID'
      
        ' left outer join TIPODOCUMENTO        on CONTASRECEBER.TPDCICOD ' +
        '    = TIPODOCUMENTO.TPDCICOD'
      
        ' left outer join PORTADOR             on CONTASRECEBER.PORTICOD ' +
        '    = PORTADOR.PORTICOD'
      
        ' left outer join MOVIMENTOBANCO       on (RECEBIMENTO.CTRCA13ID ' +
        '    = MOVIMENTOBANCO.CTRCA13ID and ((%MDataMovBanco)))'
      
        ' left outer join CONTACORRENTE        on MOVIMENTOBANCO.CTCRICOD' +
        '    = CONTACORRENTE.CTCRICOD'
      
        ' left outer join BANCO                on CONTASRECEBER.BANCA5COD' +
        'CHQ = BANCO.BANCA5COD'
      'where'
      '  (CONTASRECEBER.CTRCCSTATUS = "A") and  '
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MTerminal) and'
      '  (%MCC) and'
      '  (%MTipoPadrao) and'
      '  (%MSetor)')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataMovBanco'
        ParamType = ptInput
        Value = '0=0'
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
    Left = 418
    Top = 5
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
    end
    object SQLContasReceberTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
    end
    object SQLContasReceberUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object SQLContasReceberRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
    end
    object SQLContasReceberRECEN2DESC: TFloatField
      FieldName = 'RECEN2DESC'
    end
    object SQLContasReceberRECEN2VLRJURO: TFloatField
      FieldName = 'RECEN2VLRJURO'
    end
    object SQLContasReceberRECEN2VLRMULTA: TFloatField
      FieldName = 'RECEN2VLRMULTA'
    end
    object SQLContasReceberRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
    end
    object SQLContasReceberCTCRA15NUMERO: TStringField
      FieldName = 'CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberBANCA60NOME: TStringField
      FieldName = 'BANCA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberDATAMOVIMENTO: TDateTimeField
      FieldName = 'DATAMOVIMENTO'
    end
    object SQLContasReceberMVBCA13ID: TStringField
      FieldName = 'MVBCA13ID'
      FixedChar = True
      Size = 13
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
  object SQLTesouraria: TRxQuery
    DatabaseName = 'DB'
    DataSource = DsSQLContasReceber
    SQL.Strings = (
      'select '
      'TERMICOD,'
      'max(TESOA13ID) TESOA13ID'
      'from '
      'TESOURARIA '
      'where '
      'CTRCA13ID = :CTRCA13ID'
      'and'
      '(%MDataMovTes)'
      ''
      'group by TERMICOD')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataMovTes'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 60
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLTesourariaTESOA13ID: TStringField
      FieldName = 'TESOA13ID'
      Origin = 'DB.TESOURARIA.TESOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTesourariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TESOURARIA.TERMICOD'
    end
  end
  object DsSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 419
    Top = 32
  end
end
