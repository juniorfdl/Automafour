inherited FormRelatorioContasPagarAPAGAR: TFormRelatorioContasPagarAPAGAR
  Left = 456
  Top = 132
  Caption = 'Relat'#243'rio de Contas '#192' PAGAR'
  ClientHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 458
  end
  inherited ScrollBox: TScrollBox
    Height = 458
    HorzScrollBar.Range = 0
    VertScrollBar.Range = 0
    AutoScroll = False
    inherited PanelCentro: TPanel
      Left = 186
      Top = 84
      Height = 369
      inherited BtnVisualizar: TSpeedButton
        Left = 18
        Top = 333
      end
      object Label5: TLabel [1]
        Left = 240
        Top = 27
        Width = 3
        Height = 13
        Color = clNavy
        ParentColor = False
      end
      object Label6: TLabel [2]
        Left = 248
        Top = 27
        Width = 153
        Height = 13
        Caption = 'Linhas em Azul Tem Desconto...'
      end
      object Label7: TLabel [3]
        Left = 156
        Top = 333
        Width = 13
        Height = 13
        AutoSize = False
        Color = 16684437
        ParentColor = False
      end
      object Label8: TLabel [4]
        Left = 173
        Top = 333
        Width = 153
        Height = 13
        Caption = 'Linhas em Azul Tem Desconto...'
      end
      object RadioPrevReal: TRadioGroup [5]
        Left = 320
        Top = 246
        Width = 105
        Height = 82
        ItemIndex = 0
        Items.Strings = (
          'Todas'
          'Previstas'
          'Realizadas'
          'Pedido Compras')
        TabOrder = 4
      end
      inherited EmpresaGroup: TGroupBox
        Width = 411
      end
      inherited GroupBox1: TGroupBox
        Width = 412
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 205
        Width = 412
        Height = 41
        Caption = ' Fornecedor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboFornecedor: TDBLookupComboBox
          Left = 5
          Top = 14
          Width = 397
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BevelKind = bkFlat
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'FORNICOD'
          ListField = 'FORNA60NOMEFANT'
          ListSource = DSSQLFornecedor
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboFornecedorKeyDown
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 246
        Width = 304
        Height = 41
        Caption = ' Tipo de Documento '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboTipoDoc: TDBLookupComboBox
          Left = 5
          Top = 14
          Width = 292
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'TPDCICOD'
          ListField = 'TPDCA60DESCR'
          ListSource = DSSQLTipoDocumento
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboFornecedorKeyDown
        end
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 287
        Width = 304
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
          Width = 292
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
      object CkTotalizarPorFornec: TCheckBox
        Left = 157
        Top = 344
        Width = 197
        Height = 17
        Caption = 'Totalizar por Fornecedor'
        TabOrder = 6
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelContasAPAGAR.db'
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
    object TblTemporariaCTPGN3VLR: TBCDField
      FieldName = 'CTPGN3VLR'
      Precision = 15
      Size = 2
    end
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TblTemporariaCTPGN2DESCPROMO: TBCDField
      FieldName = 'CTPGN2DESCPROMO'
      Precision = 15
      Size = 3
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
  end
  object SQLContasPagar: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CONTASPAGAR.EMPRICOD, '
      '  CONTASPAGAR.CTPGDVENC,'
      '  CONTASPAGAR.CTPGA20DOCORIG, '
      '  CONTASPAGAR.CTPGINROPARC, '
      '  CONTASPAGAR.CTPGN3VLR,'
      
        '  (CONTASPAGAR.CTPGN3VLR - CONTASPAGAR.CTPGN2DESCPROMO - CONTASP' +
        'AGAR.CTPGN2TOTPAG) as SALDO,'
      '  CONTASPAGAR.CTPGN2DESCPROMO,'
      '  FORNECEDOR.FORNA60NOMEFANT, '
      '  TIPODOCUMENTO.TPDCA60DESCR, '
      '  PORTADOR.PORTA60DESCR'
      'from'
      ' CONTASPAGAR CONTASPAGAR'
      
        ' left outer join PORTADOR PORTADOR ON CONTASPAGAR.PORTICOD = POR' +
        'TADOR.PORTICOD'
      
        ' left outer join FORNECEDOR FORNECEDOR ON CONTASPAGAR.FORNICOD =' +
        ' FORNECEDOR.FORNICOD'
      
        ' left outer join TIPODOCUMENTO TIPODOCUMENTO ON CONTASPAGAR.TPDC' +
        'ICOD = TIPODOCUMENTO.TPDCICOD'
      'where'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MTipoDoc) and'
      '  (%MFornecedor) and'
      '  (%MTipoDoc) and'
      '  (%MPortador) and'
      '  (%MPrevReal) and'
      '  CONTASPAGAR.CTPGN3VLR > CONTASPAGAR.CTPGN2TOTPAG'
      'order by'
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
        Name = 'MTipoDoc'
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
        Name = 'MPortador'
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
    object SQLContasPagarSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasPagarCTPGN2DESCPROMO: TFloatField
      FieldName = 'CTPGN2DESCPROMO'
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
  end
  object SQLFornecedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from FORNECEDOR'
      'order by FORNA60NOMEFANT')
    Macros = <>
    Left = 460
    Top = 5
  end
  object DSSQLFornecedor: TDataSource
    DataSet = SQLFornecedor
    Left = 488
    Top = 5
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TIPODOCUMENTO'
      'order by TPDCA60DESCR')
    Macros = <>
    Left = 516
    Top = 5
  end
  object DSSQLTipoDocumento: TDataSource
    DataSet = SQLTipoDocumento
    Left = 544
    Top = 5
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\GestaoOficial\Relatorios\Contas A PAGAR.rpt'
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
    DiscardSavedData = True
    WindowEvents = True
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
    WindowButtonBar.GroupTree = True
    WindowButtonBar.PrintSetupBtn = True
    WindowButtonBar.SearchBtn = True
    WindowButtonBar.DocumentTips = True
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
    ReportOptions.ZoomMode = pwNormal
    Left = 242
    Top = 4
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Portador'
      'order by PORTA60DESCR'
      '')
    Macros = <>
    Left = 572
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
    Left = 600
    Top = 5
  end
end
