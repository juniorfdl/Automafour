inherited FormRelatorioExtratoCliente: TFormRelatorioExtratoCliente
  Caption = 'Extrato de Clientes'
  ClientWidth = 787
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 787
  end
  inherited ScrollBox: TScrollBox
    Width = 787
    inherited PanelCentro: TPanel
      Left = 175
      Top = 109
      Height = 307
      inherited BtnVisualizar: TSpeedButton
        Left = 143
        Top = 261
      end
      inherited EmpresaGroup: TGroupBox
        Height = 124
        inherited ListaEmpresas: TListBox
          Height = 52
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 13
        Top = 131
        Height = 40
        object CKPeriodo: TCheckBox
          Left = 250
          Top = 16
          Width = 150
          Height = 17
          Caption = 'Desconsiderar Per'#237'odo'
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 173
        Width = 407
        Height = 41
        Caption = ' Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboCliente: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 396
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 13
        Top = 215
        Width = 407
        Height = 41
        Caption = ' Numer'#225'rio '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboNumerario: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 396
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todos...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'NUMEICOD'
          LookupDisplay = 'NUMEA30DESCR'
          LookupSource = DSSQLNumerario
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 783
      inherited PanelCabecalho: TPanel
        Width = 783
        inherited PanelNavigator: TPanel
          Width = 783
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 783
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelExtratoCliente.db'
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TblTemporariaCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
    end
    object TblTemporariaCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object TblTemporariaCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object TblTemporariaCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
    end
    object TblTemporariaCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
    end
    object TblTemporariaCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
    end
    object TblTemporariaCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object TblTemporariaCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object TblTemporariaCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaATRAZO: TIntegerField
      FieldName = 'ATRAZO'
    end
    object TblTemporariaVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
    end
    object TblTemporariaVLRMULTA: TFloatField
      FieldName = 'VLRMULTA'
    end
    object TblTemporariaVLRTXCOBR: TFloatField
      FieldName = 'VLRTXCOBR'
    end
    object TblTemporariaVLRDESC: TFloatField
      FieldName = 'VLRDESC'
    end
    object TblTemporariaTOTALPAGAR: TFloatField
      FieldName = 'TOTALPAGAR'
    end
    object TblTemporariaCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object TblTemporariaCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblTemporariaCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
    end
    object TblTemporariaCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 565
    Top = 5
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '   CLIEA13ID, '
      '   CLIEA60RAZAOSOC'
      'from'
      '  CLIENTE'
      'order by'
      '  CLIEA60RAZAOSOC')
    Macros = <>
    Left = 537
    Top = 5
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  cast(CONTASRECEBER.CTRCA13ID as char(30)) as CTRCA13ID,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.TERMICOD,'
      '  CONTASRECEBER.CTRCICOD,'
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CONTASRECEBER.CTRCCSTATUS,'
      '  CONTASRECEBER.CTRCA5TIPOPADRAO,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.CTRCN2TXJURO,'
      '  CONTASRECEBER.CTRCN2TXMULTA,'
      '  CONTASRECEBER.CTRCN2TOTMULTACOBR,'
      '  CONTASRECEBER.CTRCN2TOTREC,'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) as SALDO,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  CLIENTE.CLIEA15FONE1,'
      '  CLIENTE.CLIEA60ENDRES,'
      '  CLIENTE.CLIEA60BAIRES,'
      '  CLIENTE.CLIEA60CIDRES,'
      '  CLIENTE.CLIEA2UFRES,'
      '  CLIENTE.CLIEA8CEPRES,'
      '  CLIENTE.CLIEA15FONEEMPRESA,'
      '  CLIENTE.CLIEA60NOMEPAI,'
      '  CLIENTE.CLIEA60NOMEMAE,'
      '  CLIENTE.CLIEDNASC,'
      '  CLIENTE.CLIEA11CPF,'
      '  CLIENTE.CLIEA10RG,'
      '  CONTASRECEBER.CTRCDEMIS,'
      '  CONTASRECEBER.CUPOA13ID,'
      '  CONTASRECEBER.NOFIA13ID,'
      '  CONTASRECEBER.PDVDA13ID,'
      '  CONTASRECEBER.CTRCCTIPOREGISTRO'
      'from'
      '  CONTASRECEBER'
      
        '  LEFT OUTER join CLIENTE on CONTASRECEBER.CLIEA13ID = CLIENTE.C' +
        'LIEA13ID'
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MCliente) and'
      '  (%MTipoPadrao) and'
      '  (CONTASRECEBER.CTRCCSTATUS = "A") and'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) > 0')
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
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoPadrao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 423
    Top = 5
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
    end
    object SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLContasReceberCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLContasReceberCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIEDNASC: TDateTimeField
      FieldName = 'CLIEDNASC'
    end
    object SQLContasReceberCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLContasReceberCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      FixedChar = True
      Size = 10
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
    Left = 242
    Top = 4
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '   NUMEICOD, '
      '   NUMEA30DESCR,'
      '  NUMEA5TIPO'
      'from'
      '  NUMERARIO'
      'order by'
      '  NUMEA30DESCR')
    Macros = <>
    Left = 610
    Top = 5
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLNumerario
    Left = 638
    Top = 5
  end
end
