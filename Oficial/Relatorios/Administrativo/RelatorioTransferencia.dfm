inherited FormRelatorioTransferencia: TFormRelatorioTransferencia
  Left = 228
  Top = 139
  Caption = 'Relat'#243'rio de Transfer'#234'ncia'
  ClientHeight = 557
  ClientWidth = 784
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 541
    Width = 784
  end
  inherited ScrollBox: TScrollBox
    Width = 784
    Height = 541
    inherited PanelCentro: TPanel
      Top = 104
      Height = 361
      inherited BtnVisualizar: TSpeedButton
        Top = 326
      end
      inherited EmpresaGroup: TGroupBox
        Left = 0
        Top = 0
        Width = 425
        Height = 47
        Align = alTop
        Caption = '&Empresa Origem'
        Font.Color = 8404992
        inherited Label1: TLabel
          Left = 398
          Visible = False
        end
        inherited IncluirEmpresa: TSpeedButton
          Left = 384
          Top = 27
          Width = 9
          Height = 6
          Visible = False
        end
        inherited ExcluirEmpresa: TSpeedButton
          Left = 384
          Top = 37
          Width = 10
          Height = 6
          Visible = False
        end
        inherited Label2: TLabel
          Left = 380
          Top = 12
          Visible = False
        end
        inherited ComboEmpresa: TRxDBLookupCombo
          Left = 9
          Top = 18
          Cursor = crHandPoint
          DisplayAllFields = True
          DisplayEmpty = '...'
          Font.Color = clBlack
        end
        inherited ListaEmpresas: TListBox
          Left = 384
          Top = 43
          Width = 9
          Height = 14
          Visible = False
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 0
        Top = 141
        Width = 425
        Height = 45
        Align = alTop
        Caption = ''
        inherited Label3: TLabel
          Top = 22
        end
        inherited Label4: TLabel
          Top = 22
        end
        inherited De: TDateEdit
          Top = 18
          Width = 84
          Cursor = crHandPoint
          DefaultToday = True
          Font.Color = clBlack
          GlyphKind = gkDropDown
          NumGlyphs = 1
          Text = '29/07/2004'
          OnExit = AteExit
        end
        inherited Ate: TDateEdit
          Top = 18
          Width = 86
          Cursor = crHandPoint
          DefaultToday = True
          Font.Color = clBlack
          GlyphKind = gkDropDown
          NumGlyphs = 1
          Text = '29/07/2004'
          OnExit = AteExit
        end
        object chkPeriodoEmissao: TCheckBox
          Left = 8
          Top = 0
          Width = 97
          Height = 17
          Cursor = crHandPoint
          Caption = 'Per'#237'o&do Envio'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 94
        Width = 425
        Height = 47
        Align = alTop
        Caption = '&Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object dblProduto: TRxDBLookupCombo
          Left = 9
          Top = 18
          Width = 357
          Height = 21
          Cursor = crHandPoint
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PRODICOD'
          LookupDisplay = 'PRODICOD;PRODA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = dsSQLProduto
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 186
        Width = 425
        Height = 45
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label7: TLabel
          Left = 8
          Top = 22
          Width = 15
          Height = 13
          Caption = '&De'
          FocusControl = DeReceb
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 131
          Top = 22
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = AteReceb
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DeReceb: TDateEdit
          Left = 39
          Top = 18
          Width = 86
          Height = 21
          Cursor = crHandPoint
          DefaultToday = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GlyphKind = gkDropDown
          NumGlyphs = 1
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
          Text = '29/07/2004'
          OnExit = AteRecebExit
        end
        object AteReceb: TDateEdit
          Left = 153
          Top = 18
          Width = 85
          Height = 21
          Cursor = crHandPoint
          DefaultToday = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GlyphKind = gkDropDown
          NumGlyphs = 1
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
          Text = '29/07/2004'
          OnExit = AteRecebExit
        end
        object chkPeriodoRecebimento: TCheckBox
          Left = 8
          Top = 0
          Width = 145
          Height = 17
          Cursor = crHandPoint
          Caption = 'Per'#237'o&do Recebimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 47
        Width = 425
        Height = 47
        Align = alTop
        Caption = '&Empresa Destino'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object dblEmpresaDestino: TRxDBLookupCombo
          Left = 9
          Top = 18
          Width = 357
          Height = 21
          Cursor = crHandPoint
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'EMPRICOD'
          LookupDisplay = 'CodNomeEmpresaCalcField'
          LookupSource = DSSQLEmpresa
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 231
        Width = 425
        Height = 83
        Align = alTop
        Caption = 'Outros'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object Label5: TLabel
          Left = 8
          Top = 16
          Width = 76
          Height = 13
          Caption = 'Usu'#225'rio Envio'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 216
          Top = 16
          Width = 121
          Height = 13
          Caption = 'Usu'#225'rio Recebimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object chkSoRecebidos: TCheckBox
          Left = 8
          Top = 57
          Width = 129
          Height = 17
          Cursor = crHandPoint
          AllowGrayed = True
          Caption = 'Somente Recebidos'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbGrayed
          TabOrder = 0
        end
        object dblUsuarioEnvio: TRxDBLookupCombo
          Left = 9
          Top = 30
          Width = 200
          Height = 21
          Cursor = crHandPoint
          DropDownCount = 8
          DisplayEmpty = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'USUARIO'
          LookupDisplay = 'USUARIO'
          LookupSource = dsSQLUsuario
          ParentFont = False
          TabOrder = 1
        end
        object dblUsuarioRecebimento: TRxDBLookupCombo
          Left = 217
          Top = 30
          Width = 200
          Height = 21
          Cursor = crHandPoint
          DropDownCount = 8
          DisplayEmpty = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'USUARIO'
          LookupDisplay = 'USUARIO'
          LookupSource = dsSQLUsuario
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 780
      inherited PanelCabecalho: TPanel
        Width = 780
        inherited PanelNavigator: TPanel
          Width = 780
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 780
          end
        end
      end
    end
  end
  inherited SQLEmpresa: TQuery
    inherited SQLEmpresaEMPRICOD: TIntegerField
      DisplayWidth = 4
    end
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'distinct'
      'PRODUTO.PRODICOD, PRODUTO.PRODA60DESCR from TRANSFERENCIAITEM'
      
        'left outer join PRODUTO on PRODUTO.PRODICOD = TRANSFERENCIAITEM.' +
        'PRODICOD')
    Macros = <>
    Left = 56
    Top = 120
    object SQLProdutoPRODICOD: TIntegerField
      DisplayWidth = 4
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoPRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object dsSQLProduto: TDataSource
    DataSet = SQLProduto
    Left = 88
    Top = 120
  end
  object SQLUsuario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'distinct'
      'TRFEA30USURECEB as Usuario'
      'from TRANSFERENCIA'
      'where'
      'TRFEA30USURECEB is not null'
      ''
      'union'
      ''
      'select '
      'distinct'
      'TRFEA30USUENVIO as Usuario'
      'from TRANSFERENCIA'
      'where'
      'TRFEA30USUENVIO is not null')
    Macros = <>
    Left = 56
    Top = 152
    object SQLUsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      FixedChar = True
      Size = 30
    end
  end
  object dsSQLUsuario: TDataSource
    DataSet = SQLUsuario
    Left = 88
    Top = 152
  end
  object SQLRelatorio: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      'TRANSFERENCIA .*, '
      'EMPRESADESTINO.EMPRA60RAZAOSOC DESTRAZAOSOC,'
      'EMPRESADESTINO.EMPRA20FONE DESTFONE,'
      'EMPRESADESTINO.EMPRA60END DESTEND,   '
      'EMPRESADESTINO.EMPRA60BAI DESTBAI, '
      'EMPRESADESTINO.EMPRA60CID DESTCID, '
      'EMPRESADESTINO.EMPRA2UF DESTUF, '
      ''
      'EMPRESAREMETE.EMPRA60RAZAOSOC REMETRAZAOSOC,'
      'EMPRESAREMETE.EMPRA20FONE REMETFONE,'
      'EMPRESAREMETE.EMPRA60END REMETEND,  '
      'EMPRESAREMETE.EMPRA60BAI REMETBAI,'
      'EMPRESAREMETE.EMPRA60CID REMETCID, '
      'EMPRESAREMETE.EMPRA2UF REMETUF'
      'from '
      'TRANSFERENCIA '
      
        'left outer join EMPRESA EMPRESADESTINO on EMPRESADESTINO.EMPRICO' +
        'D = TRANSFERENCIA.TRFEIEMPRDEST '
      
        'left outer join EMPRESA EMPRESAREMETE on EMPRESAREMETE.EMPRICOD ' +
        '= TRANSFERENCIA.EMPRICOD'
      'where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 448
    Top = 5
    object SQLRelatorioTRFEA13ID: TStringField
      FieldName = 'TRFEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRelatorioEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLRelatorioTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object SQLRelatorioTRFEICOD: TIntegerField
      FieldName = 'TRFEICOD'
    end
    object SQLRelatorioTRFEIEMPRDEST: TIntegerField
      FieldName = 'TRFEIEMPRDEST'
    end
    object SQLRelatorioTRFEDEMISSAO: TDateTimeField
      FieldName = 'TRFEDEMISSAO'
    end
    object SQLRelatorioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object SQLRelatorioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLRelatorioTRFECRECEBIDO: TStringField
      FieldName = 'TRFECRECEBIDO'
      FixedChar = True
      Size = 1
    end
    object SQLRelatorioTRFEDRECEBIMENTO: TDateTimeField
      FieldName = 'TRFEDRECEBIMENTO'
    end
    object SQLRelatorioTRFEA30USUENVIO: TStringField
      FieldName = 'TRFEA30USUENVIO'
      FixedChar = True
      Size = 30
    end
    object SQLRelatorioTRFEA30USURECEB: TStringField
      FieldName = 'TRFEA30USURECEB'
      FixedChar = True
      Size = 30
    end
    object SQLRelatorioDESTRAZAOSOC: TStringField
      FieldName = 'DESTRAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLRelatorioDESTFONE: TStringField
      FieldName = 'DESTFONE'
      FixedChar = True
    end
    object SQLRelatorioDESTEND: TStringField
      FieldName = 'DESTEND'
      FixedChar = True
      Size = 60
    end
    object SQLRelatorioDESTBAI: TStringField
      FieldName = 'DESTBAI'
      FixedChar = True
      Size = 60
    end
    object SQLRelatorioDESTCID: TStringField
      FieldName = 'DESTCID'
      FixedChar = True
      Size = 60
    end
    object SQLRelatorioDESTUF: TStringField
      FieldName = 'DESTUF'
      FixedChar = True
      Size = 2
    end
    object SQLRelatorioREMETRAZAOSOC: TStringField
      FieldName = 'REMETRAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLRelatorioREMETFONE: TStringField
      FieldName = 'REMETFONE'
      FixedChar = True
    end
    object SQLRelatorioREMETEND: TStringField
      FieldName = 'REMETEND'
      FixedChar = True
      Size = 60
    end
    object SQLRelatorioREMETBAI: TStringField
      FieldName = 'REMETBAI'
      FixedChar = True
      Size = 60
    end
    object SQLRelatorioREMETCID: TStringField
      FieldName = 'REMETCID'
      FixedChar = True
      Size = 60
    end
    object SQLRelatorioREMETUF: TStringField
      FieldName = 'REMETUF'
      FixedChar = True
      Size = 2
    end
  end
  object crpReport: TCrpe
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
    Left = 607
    Top = 5
  end
  object SQLItem: TRxQuery
    OnCalcFields = SQLItemCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TRANSFERENCIAITEM'
      'where'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 480
    Top = 5
    object SQLItemTRITICOD: TIntegerField
      FieldName = 'TRITICOD'
      Origin = 'DB.TRANSFERENCIAITEM.TRITICOD'
    end
    object SQLItemTRFEA13ID: TStringField
      FieldName = 'TRFEA13ID'
      Origin = 'DB.TRANSFERENCIAITEM.TRFEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.TRANSFERENCIAITEM.PRODICOD'
    end
    object SQLItemTRITN3QTDEENVIADA: TFloatField
      FieldName = 'TRITN3QTDEENVIADA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITN3QTDEENVIADA'
    end
    object SQLItemTRITN3QTDERECEBIDA: TFloatField
      FieldName = 'TRITN3QTDERECEBIDA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITN3QTDERECEBIDA'
    end
    object SQLItemTRITA254DIVERGENCIA: TStringField
      FieldName = 'TRITA254DIVERGENCIA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITA254DIVERGENCIA'
      FixedChar = True
      Size = 254
    end
    object SQLItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TRANSFERENCIAITEM.REGISTRO'
    end
    object SQLItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TRANSFERENCIAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLItemProdutoLookup: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProdutoLookup'
      Size = 100
      Calculated = True
    end
  end
  object tblRelTransferencia: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'tblRelTransferencia'
    Left = 528
    Top = 5
    object tblRelTransferenciaTRFEA13ID: TStringField
      FieldName = 'TRFEA13ID'
      FixedChar = True
      Size = 13
    end
    object tblRelTransferenciaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object tblRelTransferenciaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object tblRelTransferenciaTRFEICOD: TIntegerField
      FieldName = 'TRFEICOD'
    end
    object tblRelTransferenciaTRFEIEMPRDEST: TIntegerField
      FieldName = 'TRFEIEMPRDEST'
    end
    object tblRelTransferenciaTRFEDEMISSAO: TDateTimeField
      FieldName = 'TRFEDEMISSAO'
    end
    object tblRelTransferenciaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
    end
    object tblRelTransferenciaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object tblRelTransferenciaTRFECRECEBIDO: TStringField
      FieldName = 'TRFECRECEBIDO'
      FixedChar = True
      Size = 1
    end
    object tblRelTransferenciaTRFEDRECEBIMENTO: TDateTimeField
      FieldName = 'TRFEDRECEBIMENTO'
    end
    object tblRelTransferenciaTRFEA30USUENVIO: TStringField
      FieldName = 'TRFEA30USUENVIO'
      FixedChar = True
      Size = 30
    end
    object tblRelTransferenciaTRFEA30USURECEB: TStringField
      FieldName = 'TRFEA30USURECEB'
      FixedChar = True
      Size = 30
    end
    object tblRelTransferenciaDESTRAZAOSOC: TStringField
      FieldName = 'DESTRAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object tblRelTransferenciaDESTFONE: TStringField
      FieldName = 'DESTFONE'
      FixedChar = True
    end
    object tblRelTransferenciaDESTEND: TStringField
      FieldName = 'DESTEND'
      FixedChar = True
      Size = 60
    end
    object tblRelTransferenciaDESTBAI: TStringField
      FieldName = 'DESTBAI'
      FixedChar = True
      Size = 60
    end
    object tblRelTransferenciaDESTCID: TStringField
      FieldName = 'DESTCID'
      FixedChar = True
      Size = 60
    end
    object tblRelTransferenciaDESTUF: TStringField
      FieldName = 'DESTUF'
      FixedChar = True
      Size = 2
    end
    object tblRelTransferenciaREMETRAZAOSOC: TStringField
      FieldName = 'REMETRAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object tblRelTransferenciaREMETFONE: TStringField
      FieldName = 'REMETFONE'
      FixedChar = True
    end
    object tblRelTransferenciaREMETEND: TStringField
      FieldName = 'REMETEND'
      FixedChar = True
      Size = 60
    end
    object tblRelTransferenciaREMETBAI: TStringField
      FieldName = 'REMETBAI'
      FixedChar = True
      Size = 60
    end
    object tblRelTransferenciaREMETCID: TStringField
      FieldName = 'REMETCID'
      FixedChar = True
      Size = 60
    end
    object tblRelTransferenciaREMETUF: TStringField
      FieldName = 'REMETUF'
      FixedChar = True
      Size = 2
    end
  end
  object tblRelTransferenciaItem: TTable
    DatabaseName = 'UnitGestao_Temp'
    TableName = 'tblRelTransferenciaItem'
    Left = 560
    Top = 5
    object tblRelTransferenciaItemTRFEA13ID: TStringField
      FieldName = 'TRFEA13ID'
      Origin = 'DB.TRANSFERENCIAITEM.TRFEA13ID'
      FixedChar = True
      Size = 13
    end
    object tblRelTransferenciaItemTRITICOD: TIntegerField
      FieldName = 'TRITICOD'
      Origin = 'DB.TRANSFERENCIAITEM.TRITICOD'
    end
    object tblRelTransferenciaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.TRANSFERENCIAITEM.PRODICOD'
    end
    object tblRelTransferenciaItemTRITN3QTDEENVIADA: TFloatField
      FieldName = 'TRITN3QTDEENVIADA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITN3QTDEENVIADA'
    end
    object tblRelTransferenciaItemTRITN3QTDERECEBIDA: TFloatField
      FieldName = 'TRITN3QTDERECEBIDA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITN3QTDERECEBIDA'
    end
    object tblRelTransferenciaItemTRITA254DIVERGENCIA: TStringField
      FieldName = 'TRITA254DIVERGENCIA'
      Origin = 'DB.TRANSFERENCIAITEM.TRITA254DIVERGENCIA'
      FixedChar = True
      Size = 254
    end
    object tblRelTransferenciaItemREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TRANSFERENCIAITEM.REGISTRO'
    end
    object tblRelTransferenciaItemPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TRANSFERENCIAITEM.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object tblRelTransferenciaItemProdutoLookup: TStringField
      FieldName = 'ProdutoLookup'
      Size = 100
    end
  end
end
