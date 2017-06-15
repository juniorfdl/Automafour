inherited FormRelatorioContasaReceber: TFormRelatorioContasaReceber
  Left = 179
  Top = 101
  Caption = 'Relat'#243'rio de Contas '#224' Receber'
  ClientHeight = 510
  ClientWidth = 791
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 494
    Width = 791
  end
  inherited ScrollBox: TScrollBox
    Width = 791
    Height = 494
    inherited PanelCentro: TPanel
      Left = 189
      Top = 88
      Height = 383
      inherited BtnVisualizar: TSpeedButton
        Left = 288
        Top = 349
      end
      inherited EmpresaGroup: TGroupBox
        Top = 1
        Height = 133
        Caption = ' &Empresa '
        inherited ListaEmpresas: TListBox
          Height = 57
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 137
        Caption = ' Per'#237'o&do '
        object CheckNroDuplic: TCheckBox
          Left = 248
          Top = 15
          Width = 153
          Height = 17
          Caption = 'Imprime Nro. Duplicata'
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 219
        Width = 407
        Height = 40
        Caption = ' Numer'#225'rio '
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
      object GroupBox3: TGroupBox
        Left = 12
        Top = 179
        Width = 407
        Height = 40
        Caption = ' Cliente '
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
      object CKDadosCartoes: TCheckBox
        Left = 14
        Top = 344
        Width = 243
        Height = 17
        Caption = 'Mostrar Dados dos Cart'#245'es de Cr'#233'dito'
        TabOrder = 4
      end
      object GroupBox4: TGroupBox
        Left = 12
        Top = 259
        Width = 407
        Height = 40
        Caption = ' Vendedor / Profissional '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboVendedor: TRxDBLookupCombo
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
          LookupField = 'VENDICOD'
          LookupDisplay = 'VENDA60NOME'
          LookupSource = DSSQLVendedor
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupBox5: TGroupBox
        Left = 12
        Top = 303
        Width = 407
        Height = 40
        Caption = ' Tipo de Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object ComboTipoCliente: TRxDBLookupCombo
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
          LookupField = 'TPCLICOD'
          LookupDisplay = 'TPCLA30DESCR'
          LookupSource = DSTipoCliente
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object CkMostrarCheques: TCheckBox
        Left = 14
        Top = 358
        Width = 243
        Height = 17
        Caption = 'Mostrar Cheques do per'#237'odo'
        TabOrder = 7
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 787
      inherited PanelCabecalho: TPanel
        Width = 787
        inherited PanelNavigator: TPanel
          Width = 787
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 787
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelContasReceber'
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
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
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
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
    object TblTemporariaCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaCUPOA30NSUINSTITUICAO: TStringField
      FieldName = 'CUPOA30NSUINSTITUICAO'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
    end
    object TblTemporariaCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
  end
  object SQLNumerario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO'
      'order by NUMEA30DESCR')
    Left = 570
    Top = 311
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLNumerario
    Left = 598
    Top = 311
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.CTRCA13ID,'
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CAST(CONTASRECEBER.CTRCDVENC AS CHAR(11)) AS DTVENC,'
      '  CONTASRECEBER.CUPOA13ID,'
      '  CONTASRECEBER.PDVDA13ID,'
      '  CONTASRECEBER.NOFIA13ID,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  CUPOM.CUPOA30NSUINSTITUICAO,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.EMPRICODULTREC,'
      '  CAST(CONTASRECEBER.CTRCDULTREC AS CHAR(11)) AS DTULTREC,'
      '  CONTASRECEBER.CTRCN2TOTREC,'
      '  CONTASRECEBER.CTRCN2TXJURO,'
      '  CONTASRECEBER.CTRCN2TXMULTA,'
      '  CONTASRECEBER.CTRCN2TOTDESCREC,'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) AS SALDO,'
      '  CONTASRECEBER.NUMEICOD,'
      '  NUMERARIO.NUMEA30DESCR,'
      '  CONTASRECEBER.CTRCA30NRODUPLICBANCO,'
      '  CLIENTE.TPCLICOD,'
      '  CTRCA5TIPOPADRAO,'
      '  CTRCA15NROCHQ'
      'from'
      '  CONTASRECEBER CONTASRECEBER'
      
        '  Left Outer JOIN CLIENTE CLIENTE ON CONTASRECEBER.CLIEA13ID = C' +
        'LIENTE.CLIEA13ID'
      
        '  Left Outer JOIN CUPOM CUPOM ON CONTASRECEBER.CUPOA13ID = CUPOM' +
        '.CUPOA13ID'
      
        '  Left Outer JOIN NUMERARIO NUMERARIO ON CONTASRECEBER.NUMEICOD ' +
        '= NUMERARIO.NUMEICOD'
      'where'
      '  (%MEmpresa) and'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) > 0 and'
      '  (CONTASRECEBER.CTRCCSTATUS = "A") and'
      
        '  ((Not CONTASRECEBER.NOFIA13ID is NULL) OR (Not CONTASRECEBER.C' +
        'UPOA13ID is NULL)'
      '  OR (Not CONTASRECEBER.CTRCA13ID is Null)) and'
      '  (%MCheq) and'
      '  (%MData) and'
      '  (%MCliente) and'
      '  (%MNumerario) and'
      '  (%MVendedor) and'
      '  (%MTipoCliente)'
      'order by'
      '  CONTASRECEBER.CTRCDVENC ASC ,'
      '  CLIENTE.CLIEA60RAZAOSOC ASC ,'
      '  CONTASRECEBER.CTRCINROPARC ASC')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCheq'
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
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoCliente'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 426
    Top = 5
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
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
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
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
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCUPOA30NSUINSTITUICAO: TStringField
      FieldName = 'CUPOA30NSUINSTITUICAO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
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
    Left = 170
    Top = 4
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Left = 570
    Top = 267
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 598
    Top = 267
  end
  object SQLVendedor: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from VENDEDOR')
    Left = 570
    Top = 351
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 598
    Top = 351
  end
  object SQLTipoCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TipoCliente')
    Left = 570
    Top = 391
    object SQLTipoClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.TIPOCLIENTE.TPCLICOD'
    end
    object SQLTipoClienteTPCLA30DESCR: TStringField
      FieldName = 'TPCLA30DESCR'
      Origin = 'DB.TIPOCLIENTE.TPCLA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSTipoCliente: TDataSource
    DataSet = SQLTipoCliente
    Left = 598
    Top = 391
  end
end
