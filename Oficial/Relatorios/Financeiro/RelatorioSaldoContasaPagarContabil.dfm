inherited FormRelatorioSaldoContasPagarContabil: TFormRelatorioSaldoContasPagarContabil
  Left = 99
  Top = 144
  Caption = 'Saldo de Contas à Pagar Contábil'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Left = 190
      Top = 75
      Height = 342
      object BtnCancelar: TSpeedButton [0]
        Left = 258
        Top = 306
        Width = 129
        Height = 25
        Cursor = crHandPoint
        Hint = 'Visualizar Relatório'
        Caption = '&Cancelar Relatório'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777700007777711111111177777700007777199999999917777700007771
          9999999999917777000077199999999999991777000071999999999999999177
          000019999999999999999917000019FFF99F99FFF9F9991700001999F99F99F9
          F9F99917000019FFF99F99F9F9FFF917000019F9999F99F9F9F9F917000019FF
          F9FFF9FFF9FFF917000019999999999999999917000019999999999999999917
          0000719999999999999991770000771999999999999917770000777199999999
          9991777700007777199999999917777700007777711111111177777700007777
          77777777777777770000}
        Margin = 1
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 3
        Visible = False
        OnClick = BtnCancelarClick
      end
      inherited BtnVisualizar: TSpeedButton
        Left = 258
        Top = 281
      end
      inherited EmpresaGroup: TGroupBox
        TabOrder = 4
      end
      inherited GroupBox1: TGroupBox
        Top = 118
        Caption = ' Período Final'
        TabOrder = 5
        Visible = False
        inherited Label3: TLabel
          Left = 283
          Visible = False
        end
        inherited Label4: TLabel
          Left = 10
          Top = 20
        end
        inherited De: TDateEdit
          Left = 314
          Visible = False
        end
        inherited Ate: TDateEdit
          Left = 32
          Top = 16
        end
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 160
        Width = 205
        Height = 170
        Caption = '&Selecione o Dia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Calendario: TMonthCalendar
          Left = 2
          Top = 15
          Width = 201
          Height = 153
          Align = alClient
          AutoSize = True
          Date = 0.980948680553410700
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 219
        Top = 237
        Width = 201
        Height = 41
        Caption = '&Excluir do Rel. o histórico padrão'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboHistorico: TRxDBLookupCombo
          Left = 4
          Top = 15
          Width = 193
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Nenhum...'
          LookupField = 'HTPDICOD'
          LookupDisplay = 'HTPDICOD;HTPDA100HISTORICO'
          LookupDisplayIndex = 1
          LookupSource = DSSQLHistoricoPadrao
          TabOrder = 0
        end
      end
      object RadioData: TRadioGroup
        Left = 219
        Top = 160
        Width = 201
        Height = 38
        Caption = '&Data Para Filtro'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Emissão'
          'Recebimento')
        ParentFont = False
        TabOrder = 1
      end
      object RadioPrevReal: TRadioGroup
        Left = 219
        Top = 198
        Width = 201
        Height = 38
        Caption = '&Tipo'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Todas'
          'Prev.'
          'Real.')
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'SaldoContasPagar.db'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCTPGDTEMIS: TDateTimeField
      FieldName = 'CTPGDTEMIS'
    end
    object TblTemporariaCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
    end
    object TblTemporariaCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
    end
    object TblTemporariaCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
    end
    object TblTemporariaDTVENC: TStringField
      FieldName = 'DTVENC'
      FixedChar = True
      Size = 11
    end
    object TblTemporariaPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object TblTemporariaFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNA60CID: TStringField
      FieldName = 'FORNA60CID'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaFORNA15FONE1: TStringField
      FieldName = 'FORNA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaFORNA15FONE2: TStringField
      FieldName = 'FORNA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
      Precision = 15
      Size = 2
    end
    object TblTemporariaDTULTREC: TStringField
      FieldName = 'DTULTREC'
      FixedChar = True
      Size = 11
    end
    object TblTemporariaCTPGN2TOTPAG: TFloatField
      FieldName = 'CTPGN2TOTPAG'
      Precision = 15
      Size = 3
    end
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TblTemporariaCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      FixedChar = True
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
    object TblTemporariaHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
    end
  end
  object SQLContasPagar: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CONTASPAGAR.EMPRICOD,'
      '  CONTASPAGAR.CTPGDTEMIS,'
      '  CONTASPAGAR.CTPGDVENC,'
      '  CAST(CONTASPAGAR.CTPGA13ID AS CHAR(20)) AS CTPGA13ID,'
      '  CONTASPAGAR.CTPGINROPARC,'
      '  CAST(CONTASPAGAR.CTPGDVENC AS CHAR(11)) AS DTVENC,'
      '  CONTASPAGAR.PDCPA13ID,'
      '  CONTASPAGAR.NOCPA13ID,'
      '  CONTASPAGAR.FORNICOD,'
      '  FORNECEDOR.FORNA60RAZAOSOC,'
      '  FORNECEDOR.FORNA60CID,'
      '  FORNECEDOR.FORNA15FONE1,'
      '  FORNECEDOR.FORNA15FONE2,'
      '  CONTASPAGAR.CTPGN3VLR,'
      '  CAST(CONTASPAGAR.CTPGDULTPAGTO AS CHAR(11)) AS DTULTREC,'
      '  CONTASPAGAR.CTPGN2TOTPAG,'
      '  0.00 as SALDO,'
      '  CONTASPAGAR.CTPGA20DOCORIG,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR,'
      '  CONTASPAGAR.HTPDICOD'
      'from'
      '  CONTASPAGAR'
      
        '  LEFT OUTER JOIN FORNECEDOR    ON CONTASPAGAR.FORNICOD  = FORNE' +
        'CEDOR.FORNICOD'
      
        '  LEFT OUTER JOIN TIPODOCUMENTO ON CONTASPAGAR.TPDCICOD  = TIPOD' +
        'OCUMENTO.TPDCICOD'
      
        '  LEFT OUTER JOIN PORTADOR      ON CONTASPAGAR.PORTICOD  = PORTA' +
        'DOR.PORTICOD'
      'where'
      '  (%MEmpresa)'
      '  and'
      '  (%MData)'
      '  and'
      '  (%MDataRec)'
      '  and'
      '  (%MHistoricoPadrao)'
      '  and'
      '  (%MPrevReal)'
      'order by'
      '  CONTASPAGAR.CTPGDTEMIS ASC ,'
      '  FORNECEDOR.FORNA60RAZAOSOC ASC ,'
      '  CONTASPAGAR.CTPGA13ID ASC')
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
        Name = 'MDataRec'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MHistoricoPadrao'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPrevReal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLContasPagarEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasPagarCTPGDTEMIS: TDateTimeField
      FieldName = 'CTPGDTEMIS'
    end
    object SQLContasPagarCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
    end
    object SQLContasPagarCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
    end
    object SQLContasPagarCTPGINROPARC: TIntegerField
      FieldName = 'CTPGINROPARC'
    end
    object SQLContasPagarDTVENC: TStringField
      FieldName = 'DTVENC'
      FixedChar = True
      Size = 11
    end
    object SQLContasPagarPDCPA13ID: TStringField
      FieldName = 'PDCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarNOCPA13ID: TStringField
      FieldName = 'NOCPA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasPagarFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object SQLContasPagarFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarFORNA60CID: TStringField
      FieldName = 'FORNA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarFORNA15FONE1: TStringField
      FieldName = 'FORNA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLContasPagarFORNA15FONE2: TStringField
      FieldName = 'FORNA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLContasPagarCTPGN3VLR: TFloatField
      FieldName = 'CTPGN3VLR'
      Precision = 15
      Size = 2
    end
    object SQLContasPagarDTULTREC: TStringField
      FieldName = 'DTULTREC'
      FixedChar = True
      Size = 11
    end
    object SQLContasPagarCTPGN2TOTPAG: TFloatField
      FieldName = 'CTPGN2TOTPAG'
      Precision = 15
      Size = 3
    end
    object SQLContasPagarSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasPagarCTPGA20DOCORIG: TStringField
      FieldName = 'CTPGA20DOCORIG'
      FixedChar = True
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
    object SQLContasPagarHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
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
    WindowButtonBar.CancelBtn = True
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
    Left = 446
    Top = 5
  end
  object SQLPagamento: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTblTemporaria
    SQL.Strings = (
      'SELECT'
      'SUM(PAGAN3VLRPAGTO)'
      'FROM'
      'PAGAMENTO'
      'WHERE'
      'CTPGA13ID = :CTPGA13ID'
      'and'
      '(%MDataRec)')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataRec'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 474
    Top = 5
    ParamData = <
      item
        DataType = ftString
        Name = 'CTPGA13ID'
        ParamType = ptUnknown
      end>
    object SQLPagamentoSUM: TFloatField
      FieldName = 'SUM'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRPAGTO'
      Precision = 15
      Size = 2
    end
  end
  object DSSQLRecebimento: TDataSource
    DataSet = SQLPagamento
    Left = 502
    Top = 5
  end
  object SQLHistoricoPadrao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'HTPDICOD,'
      'HTPDA100HISTORICO'
      'FROM'
      'HISTORICOPADRAO'
      'ORDER BY'
      'HTPDA100HISTORICO')
    Macros = <>
    Left = 530
    Top = 5
    object SQLHistoricoPadraoHTPDICOD: TIntegerField
      DisplayWidth = 3
      FieldName = 'HTPDICOD'
      Origin = 'DB.HISTORICOPADRAO.HTPDICOD'
    end
    object SQLHistoricoPadraoHTPDA100HISTORICO: TStringField
      FieldName = 'HTPDA100HISTORICO'
      Origin = 'DB.HISTORICOPADRAO.HTPDA100HISTORICO'
      FixedChar = True
      Size = 100
    end
  end
  object DSSQLHistoricoPadrao: TDataSource
    DataSet = SQLHistoricoPadrao
    Left = 558
    Top = 5
  end
end
