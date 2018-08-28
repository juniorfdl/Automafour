inherited FormRelatorioClienteCadastrado: TFormRelatorioClienteCadastrado
  Left = 253
  Top = 47
  Caption = 'Relat'#243'rio de Clientes Cadastrados'
  ClientHeight = 541
  ClientWidth = 804
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 525
    Width = 804
  end
  inherited ScrollBox: TScrollBox
    Width = 804
    Height = 525
    inherited PanelCentro: TPanel
      Left = 165
      Top = 79
      Width = 430
      Height = 442
      inherited BtnVisualizar: TSpeedButton
        Left = 286
        Top = 366
      end
      object Label7: TLabel [1]
        Left = 23
        Top = 329
        Width = 54
        Height = 13
        Caption = 'Vendedor'
        FocusControl = ComboEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel [2]
        Left = 348
        Top = 329
        Width = 38
        Height = 13
        Caption = 'Estado'
        FocusControl = ComboEmpresa
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited EmpresaGroup: TGroupBox
        Top = 1
        Height = 124
        inherited ListaEmpresas: TListBox
          Height = 52
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 246
        Height = 40
        TabOrder = 2
        inherited Label4: TLabel
          Left = 125
        end
        inherited De: TDateEdit
          Left = 33
        end
        inherited Ate: TDateEdit
          Left = 147
        end
        object CheckPeriodo: TCheckBox
          Left = 240
          Top = 16
          Width = 149
          Height = 17
          Caption = 'Desconsiderar Per'#237'odo'
          TabOrder = 2
        end
      end
      object RadioOrdem: TRadioGroup
        Left = 236
        Top = 286
        Width = 184
        Height = 43
        Caption = 'Ordenar Por'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Raz'#227'o'
          'Cidade'
          'Rota')
        ParentFont = False
        TabOrder = 4
      end
      object CheckDependente: TCheckBox
        Left = 21
        Top = 367
        Width = 200
        Height = 17
        Caption = 'Incluir autorizados na listagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 286
        Width = 222
        Height = 43
        Caption = 'Tipo de Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboTipoCliente: TRxDBLookupCombo
          Left = 7
          Top = 16
          Width = 210
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPCLICOD'
          LookupDisplay = 'TPCLA30DESCR'
          LookupSource = DSSQLTipoCliente
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupRotas: TGroupBox
        Left = 12
        Top = 125
        Width = 407
        Height = 122
        Caption = ' Rotas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label5: TLabel
          Left = 46
          Top = 47
          Width = 74
          Height = 13
          Caption = '&Selecionadas'
          FocusControl = ListaEmpresas
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 47
          Top = 11
          Width = 80
          Height = 13
          Caption = 'Lista de Rotas'
          FocusControl = ComboEmpresa
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object InlcuirRota: TSpeedButton
          Left = 8
          Top = 64
          Width = 32
          Height = 25
          Flat = True
          Glyph.Data = {
            A2010000424DA2010000000000003600000028000000090000000D0000000100
            1800000000006C010000DE0E0000DE0E00000000000000000000FFFFFFFFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF00FFFF000000
            FFFFFFFFFFFFFFFFFF0000000000000000000000FFFF00FFFF00FFFF000000FF
            FFFFFFFFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FFFF
            FF0000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000000000
            0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF000000FFFFFF00000000000000
            00000000FFFF00FFFF00FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFF00000000
            FFFF00FFFF000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF0000
            00FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00}
          OnClick = InlcuirRotaClick
        end
        object ExcluirRota: TSpeedButton
          Left = 8
          Top = 91
          Width = 32
          Height = 25
          Flat = True
          Glyph.Data = {
            A2010000424DA2010000000000003600000028000000090000000D0000000100
            1800000000006C010000DE0E0000DE0E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF000000000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
            0000FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF00000000FFFF00FFFF
            000000FFFFFFFFFFFF00FFFFFFFFFFFF00000000FFFF00FFFF00FFFF00000000
            000000000000FFFFFF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
            000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFF
            FF00000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFFFFFFFFFF
            00000000FFFF00FFFF00FFFF00000000000000000000FFFFFFFFFFFFFFFFFF00
            000000FFFF00FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0000
            0000FFFF000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
            000000FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF
            FFFFFFFFFF00}
          OnClick = ExcluirRotaClick
        end
        object ComboRota: TRxDBLookupCombo
          Left = 45
          Top = 24
          Width = 355
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todas'
          FieldsDelimiter = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'ROTAICOD'
          LookupDisplay = 'ROTAICOD;ROTAA60NOME'
          LookupDisplayIndex = 1
          LookupSource = DSSQLRota
          ParentFont = False
          TabOrder = 0
        end
        object ListaRotas: TListBox
          Left = 44
          Top = 61
          Width = 357
          Height = 57
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          Sorted = True
          TabOrder = 1
        end
      end
      object ComboVendedor: TRxDBLookupCombo
        Left = 20
        Top = 342
        Width = 325
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DisplayEmpty = 'Todos'
        FieldsDelimiter = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'VENDICOD'
        LookupDisplay = 'VENDA60NOME'
        LookupSource = DSSQLVendedor
        ParentFont = False
        TabOrder = 5
      end
      object EditUF: TEdit
        Left = 347
        Top = 342
        Width = 70
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
      end
      object CheckSimples: TCheckBox
        Left = 21
        Top = 382
        Width = 200
        Height = 17
        Caption = 'Emitir Relat'#243'rio Simplificado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object CheckInativos: TCheckBox
        Left = 21
        Top = 398
        Width = 200
        Height = 17
        Caption = 'Ocultar Clientes Inativos'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 9
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
    DefaultIndex = False
    TableName = 'RelClientesCadastrados.DB'
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object TblTemporariaCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object TblTemporariaCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object TblTemporariaCLIEDCAD: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object TblTemporariaROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.CLIENTE.ROTAICOD'
    end
    object TblTemporariaCLIEA60CONTATO: TStringField
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object TblTemporariaCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object TblTemporariaCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object TblTemporariaCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'where'
      '(%MEmpresa) and'
      '(%Minativos) and '
      '(%MData)'
      'and'
      '(%MTipoCliente)'
      'and'
      '(%MRota)'
      'and'
      '(%MVendedor)'
      'and'
      '(%MEstado)'
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
        Name = 'Minativos'
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
        Name = 'MTipoCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MRota'
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
        Name = 'MEstado'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 424
    Top = 5
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object SQLClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      Origin = 'DB.CLIENTE.CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      Origin = 'DB.CLIENTE.CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteCLIEDCAD: TDateTimeField
      FieldName = 'CLIEDCAD'
      Origin = 'DB.CLIENTE.CLIEDCAD'
    end
    object SQLClienteROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.CLIENTE.ROTAICOD'
    end
    object SQLClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      Origin = 'DB.CLIENTE.CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLClienteCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      Origin = 'DB.CLIENTE.CLIEA20IE'
      FixedChar = True
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CONTATO: TStringField
      FieldName = 'CLIEA60CONTATO'
      Origin = 'DB.CLIENTE.CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLClienteCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Easy2Solutions\Relatorios\Clientes Cadastrados.rpt'
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
    Printer.Orientation = orLandscape
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
    Left = 539
    Top = 5
  end
  object SQLClienteDependente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from'
      'CLIENTEDEPENDENTE'
      'order by'
      'CLDPA60NOME ')
    Macros = <>
    Left = 452
    Top = 5
    object SQLClienteDependenteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEDEPENDENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteDependenteCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPICOD'
    end
    object SQLClienteDependenteCLDPA60NOME: TStringField
      FieldName = 'CLDPA60NOME'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLClienteDependenteCLDPA15PARENTESCO: TStringField
      FieldName = 'CLDPA15PARENTESCO'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA15PARENTESCO'
      FixedChar = True
      Size = 15
    end
    object SQLClienteDependenteCLDPCAUTORIZADO: TStringField
      FieldName = 'CLDPCAUTORIZADO'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPCAUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object SQLClienteDependenteCLDPDNASC: TDateTimeField
      FieldName = 'CLDPDNASC'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPDNASC'
    end
    object SQLClienteDependenteCLDPA10RG: TStringField
      FieldName = 'CLDPA10RG'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLClienteDependenteCLDPA11CPF: TStringField
      FieldName = 'CLDPA11CPF'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLClienteDependentePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTEDEPENDENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLClienteDependenteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTEDEPENDENTE.REGISTRO'
    end
    object SQLClienteDependenteCLDPA15FONE: TStringField
      FieldName = 'CLDPA15FONE'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA15FONE'
      FixedChar = True
      Size = 15
    end
    object SQLClienteDependenteCLDPA60EMAIL: TStringField
      FieldName = 'CLDPA60EMAIL'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA60EMAIL'
      FixedChar = True
      Size = 60
    end
  end
  object TblClienteDependente: TTable
    Tag = 1
    DatabaseName = 'Easy_Temp'
    TableName = 'ClienteDependente.db'
    Left = 362
    Top = 33
    object TblClienteDependenteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEDEPENDENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblClienteDependenteCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPICOD'
    end
    object TblClienteDependenteCLDPA60NOME: TStringField
      FieldName = 'CLDPA60NOME'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA60NOME'
      FixedChar = True
      Size = 60
    end
    object TblClienteDependenteCLDPA15PARENTESCO: TStringField
      FieldName = 'CLDPA15PARENTESCO'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA15PARENTESCO'
      FixedChar = True
      Size = 15
    end
    object TblClienteDependenteCLDPCAUTORIZADO: TStringField
      FieldName = 'CLDPCAUTORIZADO'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPCAUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object TblClienteDependenteCLDPDNASC: TDateTimeField
      FieldName = 'CLDPDNASC'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPDNASC'
    end
    object TblClienteDependenteCLDPA10RG: TStringField
      FieldName = 'CLDPA10RG'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA10RG'
      FixedChar = True
      Size = 10
    end
    object TblClienteDependenteCLDPA11CPF: TStringField
      FieldName = 'CLDPA11CPF'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA11CPF'
      FixedChar = True
      Size = 11
    end
    object TblClienteDependentePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTEDEPENDENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object TblClienteDependenteREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTEDEPENDENTE.REGISTRO'
    end
    object TblClienteDependenteCLDPA15FONE: TStringField
      FieldName = 'CLDPA15FONE'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA15FONE'
      FixedChar = True
      Size = 15
    end
    object TblClienteDependenteCLDPA60EMAIL: TStringField
      FieldName = 'CLDPA60EMAIL'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA60EMAIL'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTipoCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'TPCLICOD,'
      'TPCLA30DESCR'
      'FROM'
      'TIPOCLIENTE'
      'ORDER BY'
      'TPCLA30DESCR')
    Macros = <>
    Left = 480
    Top = 5
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
  object DSSQLTipoCliente: TDataSource
    DataSet = SQLTipoCliente
    Left = 508
    Top = 5
  end
  object SQLRota: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Rota'
      'Order By ROTAICOD')
    Macros = <>
    Left = 176
    Top = 218
    object SQLRotaROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
      Origin = 'DB.ROTA.ROTAICOD'
    end
    object SQLRotaROTAA60NOME: TStringField
      FieldName = 'ROTAA60NOME'
      Origin = 'DB.ROTA.ROTAA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLRota: TDataSource
    DataSet = SQLRota
    Left = 204
    Top = 218
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 609
    Top = 5
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '  VENDICOD, '
      '  VENDA60NOME'
      'From '
      '  VENDEDOR'
      'Order by'
      '  VENDA60NOME')
    Macros = <>
    Left = 581
    Top = 5
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
end
