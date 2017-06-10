inherited FormRelatorioMovimentacaoCaixa: TFormRelatorioMovimentacaoCaixa
  Left = 225
  Top = 121
  Caption = 'Relat'#243'rio Movimenta'#231#227'o do Caixa'
  ClientHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 493
  end
  inherited ScrollBox: TScrollBox
    Height = 493
    inherited PanelCentro: TPanel
      Top = 78
      Height = 391
      inherited BtnVisualizar: TSpeedButton
        Top = 360
      end
      inherited EmpresaGroup: TGroupBox
        Height = 129
        TabOrder = 5
        inherited ListaEmpresas: TListBox
          Height = 54
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 136
        Width = 408
        Height = 44
        TabOrder = 0
        inherited Label3: TLabel
          Top = 22
        end
        inherited Label4: TLabel
          Left = 171
          Top = 22
        end
        inherited De: TDateEdit
          Left = 28
          Top = 18
        end
        inherited Ate: TDateEdit
          Left = 201
          Top = 18
        end
        object HoraFinal: TEdit
          Left = 291
          Top = 18
          Width = 38
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object HoraInicial: TEdit
          Left = 118
          Top = 18
          Width = 38
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 230
        Width = 216
        Height = 40
        Caption = ' Operador '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboOperador: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 203
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'USUAICOD'
          LookupDisplay = 'USUAA60LOGIN'
          LookupSource = DSSQLOperador
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 181
        Width = 234
        Height = 40
        Caption = ' Terminal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object ComboTerminal: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 221
          Height = 21
          DropDownCount = 8
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
        end
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 273
        Width = 408
        Height = 40
        Caption = ' Opera'#231#227'o do Caixa Principal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboOperCaixa: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 393
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPCXICOD'
          LookupDisplay = 'OPCXA60DESCR'
          LookupSource = DSSQLOperacaoCaixa
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox6: TGroupBox
        Left = 248
        Top = 181
        Width = 172
        Height = 48
        Caption = 'Ordenar por... '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object OrdSeq: TRadioButton
          Left = 8
          Top = 16
          Width = 105
          Height = 14
          Caption = 'Seq'#252'encia'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object OrdHora: TRadioButton
          Left = 8
          Top = 32
          Width = 57
          Height = 12
          Caption = 'Hora'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object OrdDoc: TRadioButton
          Left = 71
          Top = 33
          Width = 98
          Height = 12
          Caption = 'Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object RBCreditoDebito: TRadioGroup
        Left = 231
        Top = 230
        Width = 189
        Height = 41
        Caption = ' Tipo Opera'#231#227'o '
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Ambos'
          'Cr'#233'dito'
          'D'#233'bito')
        ParentFont = False
        TabOrder = 6
        OnClick = RBCreditoDebitoClick
      end
      object GroupBox5: TGroupBox
        Left = 12
        Top = 316
        Width = 408
        Height = 40
        Caption = ' Opera'#231#227'o do Caixa Auxiliar '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object ComboOperCaixaAux: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 393
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'OPCXICOD'
          LookupDisplay = 'OPCXA60DESCR'
          LookupSource = dsSQLOperacaoCaixaAux
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelMovimentoCaixa.DB'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaMVCXA15DOCORIG: TStringField
      FieldName = 'MVCXA15DOCORIG'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaMVCXA255HIST: TStringField
      FieldName = 'MVCXA255HIST'
      FixedChar = True
      Size = 255
    end
    object TblTemporariaMVCXDMOV: TDateTimeField
      FieldName = 'MVCXDMOV'
    end
    object TblTemporariaMVCXICOD: TIntegerField
      FieldName = 'MVCXICOD'
    end
    object TblTemporariaMVCXINROCUPOM: TIntegerField
      FieldName = 'MVCXINROCUPOM'
    end
    object TblTemporariaMVCXN2VLRCRED: TFloatField
      FieldName = 'MVCXN2VLRCRED'
    end
    object TblTemporariaMVCXN2VLRDEB: TFloatField
      FieldName = 'MVCXN2VLRDEB'
    end
    object TblTemporariaMVCXN2VLRJURO: TFloatField
      FieldName = 'MVCXN2VLRJURO'
    end
    object TblTemporariaMVCXN2VLRMULTA: TFloatField
      FieldName = 'MVCXN2VLRMULTA'
    end
    object TblTemporariaMVCXN2VLRDESC: TFloatField
      FieldName = 'MVCXN2VLRDESC'
    end
    object TblTemporariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object TblTemporariaOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
    end
    object TblTemporariaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object TblTemporariaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object TblTemporariaUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaOPCXA60DESCR: TStringField
      FieldName = 'OPCXA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  inherited SQLEmpresa: TQuery
    Left = 274
  end
  inherited DSSQLEmpresa: TDataSource
    Left = 302
  end
  inherited BatchMove: TBatchMove
    Destination = TblTemporaria
    Source = SQLMovimentoCaixa
  end
  object SQLOperador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from USUARIO'
      'order by USUAA60LOGIN')
    Macros = <>
    Left = 522
    Top = 5
  end
  object DSSQLOperador: TDataSource
    DataSet = SQLOperador
    Left = 550
    Top = 5
  end
  object SQLMovimentoCaixa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  MOVIMENTOCAIXA.EMPRICOD,'
      '  MOVIMENTOCAIXA.MVCXA15DOCORIG,'
      '  MOVIMENTOCAIXA.MVCXA255HIST,'
      '  MOVIMENTOCAIXA.MVCXDMOV,'
      '  MOVIMENTOCAIXA.MVCXICOD,'
      '  MOVIMENTOCAIXA.MVCXINROCUPOM,'
      '  MOVIMENTOCAIXA.MVCXN2VLRCRED,'
      '  MOVIMENTOCAIXA.MVCXN2VLRDEB,'
      '  MOVIMENTOCAIXA.MVCXN2VLRJURO,'
      '  MOVIMENTOCAIXA.MVCXN2VLRMULTA,'
      '  MOVIMENTOCAIXA.MVCXN2VLRDESC,'
      '  MOVIMENTOCAIXA.NUMEICOD,'
      '  MOVIMENTOCAIXA.OPCXICOD,'
      '  MOVIMENTOCAIXA.PENDENTE,'
      '  MOVIMENTOCAIXA.REGISTRO,'
      '  MOVIMENTOCAIXA.TERMICOD,'
      '  MOVIMENTOCAIXA.USUAICOD,'
      '  USUARIO.USUAA60LOGIN,'
      '  TERMINAL.TERMA60DESCR,'
      '  OPERACAOCAIXA.OPCXA60DESCR'
      'from'
      '  MOVIMENTOCAIXA'
      
        '  left outer join USUARIO       on MOVIMENTOCAIXA.USUAICOD = USU' +
        'ARIO.USUAICOD'
      
        '  left outer join OPERACAOCAIXA on MOVIMENTOCAIXA.OPCXICOD = OPE' +
        'RACAOCAIXA.OPCXICOD'
      
        '  left outer join TERMINAL      on MOVIMENTOCAIXA.TERMICOD = TER' +
        'MINAL.TERMICOD'
      'where'
      '  OPERACAOCAIXA.OPCXCTOTALIZAREL = "S" and'
      '  (%MEmpresa) and'
      '  (%MOperador) and'
      '  (%MTerminal) and'
      '  (%MData) and'
      '  (%CreditoDebito) and'
      '  (%MOperCx)'
      '%MOrdem')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperador'
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
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'CreditoDebito'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOperCx'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
      end>
    Left = 422
    Top = 5
    object SQLMovimentoCaixaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLMovimentoCaixaMVCXA15DOCORIG: TStringField
      FieldName = 'MVCXA15DOCORIG'
      FixedChar = True
      Size = 15
    end
    object SQLMovimentoCaixaMVCXA255HIST: TStringField
      FieldName = 'MVCXA255HIST'
      FixedChar = True
      Size = 255
    end
    object SQLMovimentoCaixaMVCXDMOV: TDateTimeField
      FieldName = 'MVCXDMOV'
    end
    object SQLMovimentoCaixaMVCXICOD: TIntegerField
      FieldName = 'MVCXICOD'
    end
    object SQLMovimentoCaixaMVCXINROCUPOM: TIntegerField
      FieldName = 'MVCXINROCUPOM'
    end
    object SQLMovimentoCaixaMVCXN2VLRCRED: TFloatField
      FieldName = 'MVCXN2VLRCRED'
    end
    object SQLMovimentoCaixaMVCXN2VLRDEB: TFloatField
      FieldName = 'MVCXN2VLRDEB'
    end
    object SQLMovimentoCaixaMVCXN2VLRJURO: TFloatField
      FieldName = 'MVCXN2VLRJURO'
    end
    object SQLMovimentoCaixaMVCXN2VLRMULTA: TFloatField
      FieldName = 'MVCXN2VLRMULTA'
    end
    object SQLMovimentoCaixaMVCXN2VLRDESC: TFloatField
      FieldName = 'MVCXN2VLRDESC'
    end
    object SQLMovimentoCaixaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLMovimentoCaixaOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
    end
    object SQLMovimentoCaixaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLMovimentoCaixaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLMovimentoCaixaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLMovimentoCaixaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object SQLMovimentoCaixaUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
    object SQLMovimentoCaixaTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovimentoCaixaOPCXA60DESCR: TStringField
      FieldName = 'OPCXA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLTerminal: TDataSource
    DataSet = SQLTerminal
    Left = 482
    Top = 5
  end
  object SQLOperacaoCaixa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OPERACAOCAIXA'
      'where OPCXCTOTALIZAREL = "S"  and'
      '(%CreditoDebito)'
      'order by OPCXA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'CreditoDebito'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 586
    Top = 5
    object SQLOperacaoCaixaOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.OPERACAOCAIXA.OPCXICOD'
    end
    object SQLOperacaoCaixaOPCXA60DESCR: TStringField
      FieldName = 'OPCXA60DESCR'
      Origin = 'DB.OPERACAOCAIXA.OPCXA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoCaixaOPCXCTOTALIZAREL: TStringField
      FieldName = 'OPCXCTOTALIZAREL'
      Origin = 'DB.OPERACAOCAIXA.OPCXCTOTALIZAREL'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoCaixaOPCXCDEBITOCREDITO: TStringField
      FieldName = 'OPCXCDEBITOCREDITO'
      Origin = 'DB.OPERACAOCAIXA.OPCXCDEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
  end
  object DSSQLOperacaoCaixa: TDataSource
    DataSet = SQLOperacaoCaixa
    Left = 614
    Top = 5
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'D:\DESENV\UnitGestao\Relatorios\Movimentacao Caixa.rpt'
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
    Formulas.Formula.Strings = (
      '"Periodo Emissao"')
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
    Top = 5
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'where (%MFiltro)'
      'order by TERMA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 454
    Top = 5
  end
  object SQLOperacaoCaixaAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from OPERACAOCAIXA'
      'where OPCXCTOTALIZAREL = "S"  and'
      '(%CreditoDebito)'
      'order by OPCXA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'CreditoDebito'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 653
    Top = 5
    object IntegerField1: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.OPERACAOCAIXA.OPCXICOD'
    end
    object StringField1: TStringField
      FieldName = 'OPCXA60DESCR'
      Origin = 'DB.OPERACAOCAIXA.OPCXA60DESCR'
      FixedChar = True
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'OPCXCTOTALIZAREL'
      Origin = 'DB.OPERACAOCAIXA.OPCXCTOTALIZAREL'
      FixedChar = True
      Size = 1
    end
    object StringField3: TStringField
      FieldName = 'OPCXCDEBITOCREDITO'
      Origin = 'DB.OPERACAOCAIXA.OPCXCDEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
  end
  object dsSQLOperacaoCaixaAux: TDataSource
    DataSet = SQLOperacaoCaixaAux
    Left = 681
    Top = 5
  end
end
