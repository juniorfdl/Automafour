inherited FormRelatorioContasRecebidasPorEmpresa: TFormRelatorioContasRecebidasPorEmpresa
  Left = 512
  Top = 115
  Caption = 
    'Relat'#243'rio de Contas Recebidas Por Empresa (Origem x Recebimento)' +
    ' '
  ClientHeight = 497
  ClientWidth = 804
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 481
    Width = 804
  end
  inherited ScrollBox: TScrollBox
    Width = 804
    Height = 481
    inherited PanelCentro: TPanel
      Left = 201
      Top = 116
      Width = 430
      Height = 277
      inherited BtnVisualizar: TSpeedButton
        Top = 242
      end
      inherited EmpresaGroup: TGroupBox
        Top = 10
        Height = 56
        Caption = '&Empresa  Origem'
        inherited Label1: TLabel
          Left = 8
          Top = 16
          Width = 156
          Caption = 'L&ista de Empresas (Origem)'
        end
        inherited IncluirEmpresa: TSpeedButton
          Visible = False
        end
        inherited ExcluirEmpresa: TSpeedButton
          Visible = False
        end
        inherited Label2: TLabel
          Top = 56
          Visible = False
        end
        inherited ComboEmpresa: TRxDBLookupCombo
          Left = 6
          Top = 31
          Width = 395
        end
        inherited ListaEmpresas: TListBox
          Visible = False
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 69
        object CheckNroDuplic: TCheckBox
          Left = 245
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
      object GroupBox3: TGroupBox
        Left = 12
        Top = 111
        Width = 407
        Height = 40
        Caption = '&Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboCliente: TRxDBLookupCombo
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
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 151
        Width = 407
        Height = 40
        Caption = '&Numer'#225'rio '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboNumerario: TRxDBLookupCombo
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
          LookupField = 'NUMEICOD'
          LookupDisplay = 'NUMEA30DESCR'
          LookupSource = DSSQLNumerario
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupBox5: TGroupBox
        Left = 13
        Top = 191
        Width = 200
        Height = 40
        Caption = '&Portador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ComboPortador: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 177
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
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupBox6: TGroupBox
        Left = 215
        Top = 191
        Width = 205
        Height = 40
        Caption = 'Tipo de &Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboTipoDoc: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 188
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
          OnKeyDown = ComboClienteKeyDown
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 800
      inherited PanelCabecalho: TPanel
        Width = 800
        inherited PanelNavigator: TPanel
          Width = 800
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 800
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ContasRecebidasPorEmpresa.db'
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
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
    object TblTemporariaRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
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
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TblTemporariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
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
    object TblTemporariaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
  object SQLPortador: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'PORTICOD,'
      'PORTA60DESCR'
      'FROM'
      'PORTADOR'
      'ORDER BY'
      'PORTA60DESCR')
    Left = 298
    Top = 318
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
    Left = 326
    Top = 318
  end
  object SQLTipoDoc: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'TPDCICOD,'
      'TPDCA60DESCR'
      'FROM'
      'TIPODOCUMENTO'
      'ORDER BY'
      'TPDCA60DESCR')
    Left = 488
    Top = 320
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
    Left = 516
    Top = 320
  end
  object SQLNumerario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO'
      'order by NUMEA30DESCR')
    Left = 298
    Top = 279
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLNumerario
    Left = 326
    Top = 279
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Left = 298
    Top = 242
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 326
    Top = 242
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
    Left = 446
    Top = 5
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  Distinct'
      '  RECEBIMENTO.CTRCA13ID,'
      '  RECEBIMENTO.EMPRICODREC as EMPRICODREC,'
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
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CONTASRECEBER.CUPOA13ID,'
      '  CONTASRECEBER.NOFIA13ID,'
      '  CONTASRECEBER.PDVDA13ID,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) AS SALDO,'
      '  CONTASRECEBER.NUMEICOD,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR,'
      '  EMPRESA.EMPRA60NOMEFANT'
      'from'
      
        ' RECEBIMENTO inner join CONTASRECEBER on RECEBIMENTO.CTRCA13ID =' +
        ' CONTASRECEBER.CTRCA13ID'
      
        ' left outer join CLIENTE         on CONTASRECEBER.CLIEA13ID = CL' +
        'IENTE.CLIEA13ID'
      
        ' left outer join TIPODOCUMENTO   on CONTASRECEBER.TPDCICOD  = TI' +
        'PODOCUMENTO.TPDCICOD'
      
        ' left outer join PORTADOR        on CONTASRECEBER.PORTICOD  = PO' +
        'RTADOR.PORTICOD'
      
        ' left outer join EMPRESA         on RECEBIMENTO.EMPRICODREC = EM' +
        'PRESA.EMPRICOD'
      'where'
      '  (CONTASRECEBER.CTRCCSTATUS = "A") and'
      
        '  (CONTASRECEBER.CTRCA5TIPOPADRAO not in('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) a' +
        'nd'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MCliente) and'
      '  (%MNumerario) and'
      '  (%MEmpresaOrigem) and'
      '  (%MTipoDoc) and'
      '  (%MPortador)'
      ''
      'union all'
      ''
      'select'
      '  Distinct'
      '  CUPOMNUMERARIO.CUPOA13ID as CTRCA13ID,'
      '  CUPOM.EMPRICOD as EMPRICODREC,'
      '  CUPOM.CUPODEMIS as RECEDRECTO,'
      '  0.0 as RECEN2DESC,'
      '  0.0 as RECEN2VLRJURO,'
      '  0.0 as RECEN2VLRMULTA,'
      '  CUPOMNUMERARIO.CPNMN2VLR as RECEN2VLRRECTO,'
      '  CUPOM.EMPRICOD,'
      '  CUPOM.CUPODEMIS as CTRCDVENC,'
      '  0 as CTRCINROPARC,'
      '  CUPOMNUMERARIO.CUPOA13ID,'
      '  CUPOMNUMERARIO.CUPOA13ID as NOFIA13ID,'
      '  CUPOMNUMERARIO.CUPOA13ID as PDVDA13ID,'
      '  CUPOM.CLIEA13ID,'
      '  CUPOMNUMERARIO.CPNMN2VLR as CTRCN2VLR,'
      '  0.0 as SALDO,'
      '  CUPOMNUMERARIO.NUMEICOD,'
      '  CL.CLIEA60RAZAOSOC,'
      '  TD.TPDCA60DESCR,'
      '  PT.PORTA60DESCR,'
      '  EMPRESA.EMPRA60NOMEFANT'
      'from'
      
        '  (CUPOMNUMERARIO CUPOMNUMERARIO inner join CUPOM CUPOM on CUPOM' +
        'NUMERARIO.CUPOA13ID = CUPOM.CUPOA13ID)'
      
        '  left outer join CLIENTE CL        on CUPOM.CLIEA13ID          ' +
        '= CL.CLIEA13ID'
      
        '  left outer join CONTASRECEBER CR  on CUPOMNUMERARIO.CUPOA13ID ' +
        '= CR.CUPOA13ID'
      
        '  left outer join TIPODOCUMENTO TD  on CONTASRECEBER.TPDCICOD   ' +
        '= TD.TPDCICOD'
      
        '  left outer join PORTADOR      PT  on CONTASRECEBER.PORTICOD   ' +
        '= PT.PORTICOD'
      
        '  left outer join EMPRESA       EMP on CUPOM.EMPRICOD           ' +
        '= EMP.EMPRICOD'
      ''
      'where'
      '  (CUPOM.CUPOCSTATUS = "A") and'
      '  ((Not CR.NOFIA13ID is NULL) OR (Not CR.CUPOA13ID is NULL)) and'
      '  (%MEmpresa2) and'
      '  (%MData2) and'
      '  (%MCliente2) and'
      '  (%MNumerario2) and'
      '   CUPOMNUMERARIO.CPNMCAUTENT = "S" and'
      '  (%MEmpresaOrigem2)')
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
        Name = 'MNumerario'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaOrigem'
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
        Name = 'MEmpresa2'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData2'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente2'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNumerario2'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaOrigem2'
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
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
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
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
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
    object SQLContasReceberEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
  end
end
