inherited FormRelatorioSaldoContasReceberContabil: TFormRelatorioSaldoContasReceberContabil
  Left = 192
  Top = 124
  Caption = 'Saldo de Contas '#224' Receber Cont'#225'bil'
  ClientHeight = 516
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 500
    Width = 793
  end
  inherited ScrollBox: TScrollBox
    Width = 793
    Height = 500
    inherited PanelCentro: TPanel
      Left = 190
      Top = 75
      Height = 342
      inherited BtnVisualizar: TSpeedButton
        Left = 252
        Top = 269
      end
      object BtnCancelar: TSpeedButton [1]
        Left = 252
        Top = 294
        Width = 129
        Height = 25
        Cursor = crHandPoint
        Hint = 'Visualizar Relat'#243'rio'
        Caption = '&Cancelar Relat'#243'rio'
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
      inherited GroupBox1: TGroupBox
        Top = 118
        Caption = ' Per'#237'odo Final'
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
      object CheckNroDuplic: TCheckBox
        Left = 220
        Top = 243
        Width = 153
        Height = 17
        Caption = 'Imprime Nro. Duplicata'
        TabOrder = 2
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 160
        Width = 205
        Height = 170
        Caption = 'Selecione o Dia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Calendario: TMonthCalendar
          Left = 2
          Top = 15
          Width = 201
          Height = 153
          Align = alClient
          AutoSize = True
          Date = 0.980295902780199000
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 219
        Top = 200
        Width = 201
        Height = 41
        Caption = 'Excluir do Rel. o hist'#243'rico padr'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
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
          'Recebimento'
          'Movimento')
        ParentFont = False
        TabOrder = 5
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 789
      inherited PanelCabecalho: TPanel
        Width = 789
        inherited PanelNavigator: TPanel
          Width = 789
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 789
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'SaldoContasReceber.db'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
    end
    object TblTemporariaCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object TblTemporariaCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object TblTemporariaCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object TblTemporariaDTVENC: TStringField
      FieldName = 'DTVENC'
      FixedChar = True
      Size = 11
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object TblTemporariaEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object TblTemporariaDTULTREC: TStringField
      FieldName = 'DTULTREC'
      FixedChar = True
      Size = 11
    end
    object TblTemporariaCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object TblTemporariaCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
    end
    object TblTemporariaCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
    end
    object TblTemporariaCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
    end
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TblTemporariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object TblTemporariaCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
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
      DisplayWidth = 5
      FieldName = 'HTPDICOD'
    end
    object TblTemporariaTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 1
    end
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CONTASRECEBER.CTRCDEMIS,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CAST(CONTASRECEBER.CTRCA13ID AS CHAR(20)) AS CTRCA13ID,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CAST(CONTASRECEBER.CTRCDVENC AS CHAR(11)) AS DTVENC,'
      '  CONTASRECEBER.CUPOA13ID,'
      '  CONTASRECEBER.PDVDA13ID,'
      '  CONTASRECEBER.NOFIA13ID,'
      '  CLIENTE.CLIEA60CIDRES,'
      '  CLIENTE.CLIEA15FONE1,'
      '  CLIENTE.CLIEA15FONE2,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.EMPRICODULTREC,'
      '  CAST(CONTASRECEBER.CTRCDULTREC AS CHAR(11)) AS DTULTREC,'
      '  CONTASRECEBER.CTRCN2TOTREC,'
      '  CONTASRECEBER.CTRCN2TXJURO,'
      '  CONTASRECEBER.CTRCN2TXMULTA,'
      '  CONTASRECEBER.CTRCN2TOTDESCREC,'
      '  0.00 as SALDO,'
      '  CONTASRECEBER.NUMEICOD,'
      '  CONTASRECEBER.CTRCCSTATUS,'
      '  CONTASRECEBER.CTRCA30NRODUPLICBANCO,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR,'
      '  CONTASRECEBER.HTPDICOD,'
      '  '#39'D'#39' TIPODOC'
      'from'
      '  CONTASRECEBER'
      
        '  LEFT OUTER JOIN CLIENTE       ON CONTASRECEBER.CLIEA13ID = CLI' +
        'ENTE.CLIEA13ID'
      
        '  LEFT OUTER JOIN TIPODOCUMENTO ON CONTASRECEBER.TPDCICOD  = TIP' +
        'ODOCUMENTO.TPDCICOD'
      
        '  LEFT OUTER JOIN PORTADOR      ON CONTASRECEBER.PORTICOD  = POR' +
        'TADOR.PORTICOD'
      'where'
      '  (%MEmpresa)'
      '  and'
      '  (CONTASRECEBER.CTRCCSTATUS = '#39'A'#39')'
      '  and'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO not in('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39'))'
      '  and'
      '  (%MData)'
      '  and'
      '  (%MDataRec)'
      '  and'
      '  (%MHistoricoPadrao)')
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
      end>
    Left = 418
    Top = 5
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasReceberDTVENC: TStringField
      FieldName = 'DTVENC'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object SQLContasReceberDTULTREC: TStringField
      FieldName = 'DTULTREC'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
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
    object SQLContasReceberHTPDICOD: TIntegerField
      DisplayWidth = 5
      FieldName = 'HTPDICOD'
    end
    object SQLContasReceberTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 1
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
  object SQLRecebimento: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSTblTemporaria
    SQL.Strings = (
      'SELECT'
      'SUM(RECEN2VLRRECTO)'
      'FROM'
      'RECEBIMENTO'
      'WHERE'
      'CTRCA13ID = :CTRCA13ID'
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
        DataType = ftFixedChar
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
        Size = 21
      end>
    object SQLRecebimentoSUM: TFloatField
      FieldName = 'SUM'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
    end
  end
  object DSSQLRecebimento: TDataSource
    DataSet = SQLRecebimento
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
  object TbReceberCred: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'TbReceberCred'
    Left = 48
    Top = 104
    object TbReceberCredEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TbReceberCredCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TbReceberCredCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TbReceberCredCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object TbReceberCredCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object TbReceberCredCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TbReceberCredCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object TbReceberCredEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object TbReceberCredDTULTREC: TStringField
      FieldName = 'DTULTREC'
      FixedChar = True
      Size = 11
    end
    object TbReceberCredCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object TbReceberCredSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TbReceberCredCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object TbReceberCredPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TbReceberCredTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object TbReceberCredCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLContasReceberC: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CONTASRECEBER.CTRCDEMIS,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CAST(CONTASRECEBER.CTRCA13ID AS CHAR(20)) AS CTRCA13ID,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CAST(CONTASRECEBER.CTRCDVENC AS CHAR(11)) AS DTVENC,'
      '  CONTASRECEBER.CUPOA13ID,'
      '  CONTASRECEBER.PDVDA13ID,'
      '  CONTASRECEBER.NOFIA13ID,'
      '  CLIENTE.CLIEA60CIDRES,'
      '  CLIENTE.CLIEA15FONE1,'
      '  CLIENTE.CLIEA15FONE2,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.EMPRICODULTREC,'
      '  CAST(CONTASRECEBER.CTRCDULTREC AS CHAR(11)) AS DTULTREC,'
      '  CONTASRECEBER.CTRCN2TOTREC,'
      '  CONTASRECEBER.CTRCN2TXJURO,'
      '  CONTASRECEBER.CTRCN2TXMULTA,'
      '  CONTASRECEBER.CTRCN2TOTDESCREC,'
      '  0.00 as SALDO,'
      '  CONTASRECEBER.NUMEICOD,'
      '  CONTASRECEBER.CTRCCSTATUS,'
      '  CONTASRECEBER.CTRCA30NRODUPLICBANCO,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR,'
      '  CONTASRECEBER.HTPDICOD,'
      '  '#39'C'#39' TIPODOC'
      'from'
      '  CONTASRECEBER'
      
        '  LEFT OUTER JOIN CLIENTE       ON CONTASRECEBER.CLIEA13ID = CLI' +
        'ENTE.CLIEA13ID'
      
        '  LEFT OUTER JOIN TIPODOCUMENTO ON CONTASRECEBER.TPDCICOD  = TIP' +
        'ODOCUMENTO.TPDCICOD'
      
        '  LEFT OUTER JOIN PORTADOR      ON CONTASRECEBER.PORTICOD  = POR' +
        'TADOR.PORTICOD'
      'where'
      '  (%MEmpresa)'
      '  and'
      '  (CONTASRECEBER.CTRCCSTATUS = '#39'A'#39')'
      '  and'
      
        '  (CONTASRECEBER.CTRCCTIPOREGISTRO = '#39'N'#39' or CONTASRECEBER.CTRCCT' +
        'IPOREGISTRO is null)'
      '  and'
      '  (CONTASRECEBER.CTRCA5TIPOPADRAO not in('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39'))'
      '  and'
      '  (%MData)'
      '  and'
      '  (%MDataRec)'
      '  and'
      '  (%MHistoricoPadrao)'
      '')
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
      end>
    Left = 50
    Top = 133
    object SQLContasReceberCCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasReceberCCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberCEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberCCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
    end
    object SQLContasReceberCCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasReceberCDTVENC: TStringField
      FieldName = 'DTVENC'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLContasReceberCEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object SQLContasReceberCDTULTREC: TStringField
      FieldName = 'DTULTREC'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object SQLContasReceberCCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
    end
    object SQLContasReceberCCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
    end
    object SQLContasReceberCCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
    end
    object SQLContasReceberCSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberCNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLContasReceberCCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
    end
    object SQLContasReceberCTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 1
    end
  end
end
