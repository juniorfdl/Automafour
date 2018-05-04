inherited FormRelatorioReceitasDespesasPlanoContas: TFormRelatorioReceitasDespesasPlanoContas
  Left = 198
  Top = 80
  Caption = 'Relat'#243'rio de Receitas x Despesas por Plano de Contas'
  ClientHeight = 454
  ClientWidth = 776
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 438
    Width = 776
  end
  inherited ScrollBox: TScrollBox
    Width = 776
    Height = 438
    object Label7: TLabel [0]
      Left = 8
      Top = 87
      Width = 57
      Height = 13
      Caption = 'Lembrete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel [1]
      Left = 9
      Top = 101
      Width = 174
      Height = 78
      Caption = 
        'Este relatorios busca dados direto do'#13#10'- Contas a Pagar'#13#10'- Conta' +
        's a Receber'#13#10'- Tesouraria'#13#10'- Banco'#13#10'- Vendas a Vista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    inherited PanelCentro: TPanel
      Left = 200
      Top = 86
      Height = 339
      inherited BtnVisualizar: TSpeedButton
        Left = 154
        Top = 301
        Width = 130
        Height = 34
      end
      inherited EmpresaGroup: TGroupBox
        Left = 0
        Top = 0
        Width = 425
        Align = alTop
      end
      inherited GroupBox1: TGroupBox
        Left = 0
        Top = 258
        Width = 425
        Align = alTop
        inherited De: TDateEdit
          OnChange = DeChange
        end
        inherited Ate: TDateEdit
          OnChange = DeChange
        end
      end
      object GroupData: TRadioGroup
        Left = 0
        Top = 180
        Width = 425
        Height = 34
        Align = alTop
        Caption = 'Data de'
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Emiss'#227'o'
          'Compet'#234'ncia'
          'Liquida'#231#227'o'
          'Vencimento')
        ParentFont = False
        TabOrder = 2
        OnClick = GroupDataClick
      end
      object Panel1: TPanel
        Left = 0
        Top = 155
        Width = 425
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        object CheckAnalitico: TCheckBox
          Left = 4
          Top = 8
          Width = 222
          Height = 17
          Caption = '&Exibir o relat'#243'rio de forma anal'#237'tica'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object ckMotrarTodas: TCheckBox
          Left = 258
          Top = 8
          Width = 147
          Height = 17
          Caption = 'Incluir contas zeradas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object gboComp: TGroupBox
        Left = 0
        Top = 214
        Width = 425
        Height = 44
        Align = alTop
        Caption = 'Per'#237'o&do '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Visible = False
        object Label5: TLabel
          Left = 8
          Top = 19
          Width = 15
          Height = 13
          Caption = '&De'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 203
          Top = 19
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cboMesDe: TComboBox
          Left = 28
          Top = 16
          Width = 117
          Height = 21
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 0
          OnChange = cboMesDeChange
          Items.Strings = (
            'Janeiro'
            'Fevereio'
            'Mar'#231'o'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Dezembro')
        end
        object cboAnoDe: TComboBox
          Left = 145
          Top = 16
          Width = 56
          Height = 21
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 1
          OnChange = cboMesDeChange
          Items.Strings = (
            '1990'
            '1991'
            '1992'
            '1993'
            '1994'
            '1995'
            '1996'
            '1997'
            '1998'
            '1999'
            '2000'
            '2001'
            '2002'
            '2003'
            '2004'
            '2005'
            '2006'
            '2007'
            '2008'
            '2009'
            '2010'
            '2011'
            '2012'
            '2013'
            '2014'
            '2015'
            '2016'
            '2017'
            '2018'
            '2019'
            '2020')
        end
        object cboMesAte: TComboBox
          Left = 228
          Top = 16
          Width = 117
          Height = 21
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 2
          OnChange = cboMesDeChange
          Items.Strings = (
            'Janeiro'
            'Fevereio'
            'Mar'#231'o'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Dezembro')
        end
        object cboAnoAte: TComboBox
          Left = 345
          Top = 16
          Width = 56
          Height = 21
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 3
          OnChange = cboMesDeChange
          Items.Strings = (
            '1990'
            '1991'
            '1992'
            '1993'
            '1994'
            '1995'
            '1996'
            '1997'
            '1998'
            '1999'
            '2000'
            '2001'
            '2002'
            '2003'
            '2004'
            '2005'
            '2006'
            '2007'
            '2008'
            '2009'
            '2010'
            '2011'
            '2012'
            '2013'
            '2014'
            '2015'
            '2016'
            '2017'
            '2018'
            '2019'
            '2020')
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 772
      inherited PanelCabecalho: TPanel
        Width = 772
        inherited PanelNavigator: TPanel
          Width = 772
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 772
            inherited BtnFecharTela: TSpeedButton
              Left = 701
            end
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ReceitasDespesas.DB'
    object TblTemporariaPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaPLCTICODREDUZ: TIntegerField
      FieldName = 'PLCTICODREDUZ'
      Origin = 'DB.PLANODECONTAS.PLCTICODREDUZ'
    end
    object TblTemporariaPLCTINIVEL: TIntegerField
      FieldName = 'PLCTINIVEL'
      Origin = 'DB.PLANODECONTAS.PLCTINIVEL'
    end
    object TblTemporariaPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaRECEITA: TFloatField
      FieldName = 'RECEITA'
    end
    object TblTemporariaDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
    object TblTemporariaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object TblTemporariaPERC: TFloatField
      FieldName = 'PERC'
    end
    object TblTemporariaPERCRECEITA: TFloatField
      FieldName = 'PERCRECEITA'
    end
  end
  inherited BatchMove: TBatchMove
    Mode = batAppend
  end
  object SQLReceitas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PLANODECONTAS.PLCTA15COD,'
      '   PLANODECONTAS.PLCTA15CODPAI,'
      '   PLANODECONTAS.PLCTA30CODEDIT,'
      '   PLANODECONTAS.PLCTA60DESCR,'
      '   PLANODECONTAS.PLCTCTIPOSALDO,'
      '   PLANODECONTAS.PLCTCANALSINT,'
      '   cast( 0.00 as NUMERIC(15,3)) as DESPESA,'
      '   cast(SUM(%Campo) as NUMERIC(15,3)) as RECEITA'
      'From'
      '   CONTASRECEBER'
      
        '   left outer join PLANODECONTAS on CONTASRECEBER.PLCTA15COD= PL' +
        'ANODECONTAS.PLCTA15COD'
      'where'
      '(CONTASRECEBER.CTRCCSTATUS = "A") and'
      '(%MDataRecebido) and'
      '(%MEmpresaRecebido)'
      'group by'
      '    PLANODECONTAS.PLCTA15COD,'
      '    PLANODECONTAS.PLCTA15CODPAI,'
      '    PLANODECONTAS.PLCTA30CODEDIT,'
      '    PLANODECONTAS.PLCTA60DESCR,'
      '    PLANODECONTAS.PLCTCTIPOSALDO,'
      '    PLANODECONTAS.PLCTCANALSINT')
    Macros = <
      item
        DataType = ftString
        Name = 'Campo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataRecebido'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaRecebido'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 222
    Top = 5
    object SQLReceitasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLReceitasPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLReceitasPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLReceitasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLReceitasPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLReceitasPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLReceitasRECEITA: TFloatField
      FieldName = 'RECEITA'
    end
    object SQLReceitasDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Unit\Gestao\Relatorios\Vendas Por Periodo.rpt'
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
    WindowButtonBar.AllowDrillDown = True
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
    Left = 192
    Top = 4
  end
  object SQLAux: TQuery
    DatabaseName = 'Easy_Temp'
    SQL.Strings = (
      'Select * From ReceitasDespesas.db'
      'order by PLCTA15CODPAI')
    Left = 362
    Top = 33
    object SQLAuxPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLAuxPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLAuxPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLAuxPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLAuxPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLAuxPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLAuxRECEITA: TFloatField
      FieldName = 'RECEITA'
    end
    object SQLAuxDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
  end
  object SQLPlanoContas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      'PLCTA15COD,'
      'PLCTICODREDUZ,'
      'PLCTINIVEL,'
      'PLCTA15CODPAI,'
      'PLCTA30CODEDIT,'
      'PLCTA60DESCR,'
      'PLCTCANALSINT,'
      'PLCTCTIPOSALDO,'
      'cast(0 as NUMERIC(15,3)) as RECEITA,'
      'cast(0 as NUMERIC(15,3)) as DESPESA,'
      'cast(0 as NUMERIC(15,3)) as VALOR,'
      'cast(0 as NUMERIC(15,3)) as PERC'
      ' from PLANODECONTAS'
      'Order by PLCTA15COD')
    Macros = <>
    Left = 190
    Top = 33
    object SQLPlanoContasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContasPLCTICODREDUZ: TIntegerField
      FieldName = 'PLCTICODREDUZ'
      Origin = 'DB.PLANODECONTAS.PLCTICODREDUZ'
    end
    object SQLPlanoContasPLCTINIVEL: TIntegerField
      FieldName = 'PLCTINIVEL'
      Origin = 'DB.PLANODECONTAS.PLCTINIVEL'
    end
    object SQLPlanoContasPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContasPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLPlanoContasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPlanoContasPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoContasPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoContasRECEITA: TFloatField
      FieldName = 'RECEITA'
    end
    object SQLPlanoContasDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
    object SQLPlanoContasVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object SQLPlanoContasPERC: TFloatField
      FieldName = 'PERC'
    end
  end
  object TblRegistros: TTable
    Tag = 1
    DatabaseName = 'Easy_Temp'
    TableName = 'ReceitasDespesasAux.db'
    Left = 334
    Top = 33
    object TblRegistrosPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object TblRegistrosPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object TblRegistrosPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object TblRegistrosPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblRegistrosPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object TblRegistrosPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object TblRegistrosRECEITA: TFloatField
      FieldName = 'RECEITA'
    end
    object TblRegistrosDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
  end
  object SQLDespesas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  PLANODECONTAS.PLCTA15COD,'
      '  PLANODECONTAS.PLCTA15CODPAI,'
      '  PLANODECONTAS.PLCTA30CODEDIT,'
      '  PLANODECONTAS.PLCTA60DESCR,'
      '  PLANODECONTAS.PLCTCTIPOSALDO,'
      '  PLANODECONTAS.PLCTCANALSINT,'
      '  cast(SUM(%Campo) as NUMERIC(15,3)) as DESPESA,'
      '  cast (0.00 as NUMERIC(15,3)) as RECEITA'
      'From'
      '  CONTASPAGAR'
      
        '  left outer join PLANODECONTAS on CONTASPAGAR.PLCTA15COD= PLANO' +
        'DECONTAS.PLCTA15COD'
      'where'
      '  (%MDataPago) and'
      '  (%MEmpresaPago)'
      'group by'
      '  PLANODECONTAS.PLCTA15COD,'
      '  PLANODECONTAS.PLCTA15CODPAI,'
      '  PLANODECONTAS.PLCTA30CODEDIT,'
      '  PLANODECONTAS.PLCTA60DESCR,'
      '  PLANODECONTAS.PLCTCTIPOSALDO,'
      '  PLANODECONTAS.PLCTCANALSINT'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Campo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataPago'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaPago'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 250
    Top = 5
    object StringField1: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object StringField4: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object StringField5: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object BCDField1: TFloatField
      FieldName = 'RECEITA'
    end
    object BCDField2: TFloatField
      FieldName = 'DESPESA'
    end
  end
  object SQLTesouraria: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PLANODECONTAS.PLCTA15COD,'
      '   PLANODECONTAS.PLCTA15CODPAI,'
      '   PLANODECONTAS.PLCTA30CODEDIT,'
      '   PLANODECONTAS.PLCTA60DESCR,'
      '   PLANODECONTAS.PLCTCTIPOSALDO,'
      '   PLANODECONTAS.PLCTCANALSINT,'
      '   SUM(TESON2VLRDEBITO)  as DESPESA,'
      '   SUM(TESON2VLRCREDITO) as RECEITA'
      'From'
      '   TESOURARIA'
      
        '   left outer join PLANODECONTAS on TESOURARIA.PLCTA15COD=PLANOD' +
        'ECONTAS.PLCTA15COD'
      'where'
      '(%MDataMov) and'
      '(%MEmpresa)'
      'group by'
      '    PLANODECONTAS.PLCTA15COD,'
      '    PLANODECONTAS.PLCTA15CODPAI,'
      '    PLANODECONTAS.PLCTA30CODEDIT,'
      '    PLANODECONTAS.PLCTA60DESCR,'
      '    PLANODECONTAS.PLCTCTIPOSALDO,'
      '    PLANODECONTAS.PLCTCANALSINT'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataMov'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 222
    Top = 33
    object StringField7: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object StringField8: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object StringField9: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object StringField10: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object StringField11: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object StringField12: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object BCDField3: TFloatField
      FieldName = 'RECEITA'
    end
    object BCDField4: TFloatField
      FieldName = 'DESPESA'
    end
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CONTASRECEBER.CTRCA30NRODUPLICBANCO as Documento,'
      'CONTASRECEBER.CTRCINROPARC as Parcela,'
      'CONTASRECEBER.CTRCN2VLR as Valor,'
      'CONTASRECEBER.PLCTA15COD,'
      'PLANODECONTAS.PLCTA60DESCR as PlanoContas,'
      'CLIENTE.CLIEA60RAZAOSOC as ClienteFornecedor'
      'FROM'
      '  CONTASRECEBER'
      
        '  left outer join CLIENTE on CONTASRECEBER.CLIEA13ID = CLIENTE.C' +
        'LIEA13ID'
      
        '  left outer join PLANODECONTAS on CONTASRECEBER.PLCTA15COD = PL' +
        'ANODECONTAS.PLCTA15COD'
      'WHERE'
      'CONTASRECEBER.PLCTA15COD is not null'
      'and'
      '(%MdataRecebido)'
      'and'
      '(%MEmpresaRecebido)'
      'and'
      '(%Campo)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MdataRecebido'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaRecebido'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Campo'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 446
    Top = 5
    object SQLContasReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object SQLContasReceberVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object SQLContasReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
  end
  object TblLancamentos: TTable
    Tag = 1
    DatabaseName = 'Easy_Temp'
    TableName = 'ReceitasDespesasLanc.db'
    Left = 418
    Top = 33
    object TblLancamentosDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object TblLancamentosPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object TblLancamentosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object TblLancamentosPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object TblLancamentosPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object TblLancamentosCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLContasPagar: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CONTASPAGAR.CTPGA20DOCORIG as Documento,'
      'CONTASPAGAR.CTPGINROPARC as Parcela,'
      'CONTASPAGAR.CTPGN3VLR as Valor,'
      'CONTASPAGAR.PLCTA15COD,'
      'PLANODECONTAS.PLCTA60DESCR as PlanoContas,'
      'FORNECEDOR.FORNA60RAZAOSOC as ClienteFornecedor'
      'FROM'
      '  CONTASPAGAR'
      
        '  left outer join FORNECEDOR on CONTASPAGAR.FORNICOD = FORNECEDO' +
        'R.FORNICOD'
      
        '  left outer join PLANODECONTAS on CONTASPAGAR.PLCTA15COD = PLAN' +
        'ODECONTAS.PLCTA15COD'
      'where'
      'CONTASPAGAR.PLCTA15COD is not null'
      'and'
      '(%MDataPago)'
      'and'
      '(%MEmpresaPago)')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataPago'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaPago'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 418
    Top = 5
    object SQLContasPagarDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
    end
    object SQLContasPagarPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object SQLContasPagarVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object SQLContasPagarPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasPagarPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object SQLContasPagarCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTesourariaLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'TESOURARIA.TESOA13ID as Documento,'
      'TESOURARIA.TESOICOD as Parcela,'
      '%Campo as  Valor,'
      'TESOURARIA.PLCTA15COD,'
      'PLANODECONTAS.PLCTA60DESCR as PlanoContas,'
      'OPERACAOTESOURARIA.OPTEA60DESCR as ClienteFornecedor'
      'from'
      '  TESOURARIA'
      
        '  left outer join OPERACAOTESOURARIA on TESOURARIA.OPTEICOD = OP' +
        'ERACAOTESOURARIA.OPTEICOD'
      
        '  left outer join PLANODECONTAS on TESOURARIA.PLCTA15COD = PLANO' +
        'DECONTAS.PLCTA15COD'
      'where'
      'TESOURARIA.PLCTA15COD is not null'
      'and'
      '(%MDebitoCredito)'
      'and'
      '(%MDataMov)'
      'and'
      '(%MEmpresa)'
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Campo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDebitoCredito'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataMov'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 474
    Top = 5
    object SQLTesourariaLancDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 13
    end
    object SQLTesourariaLancPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object SQLTesourariaLancVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object SQLTesourariaLancPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLTesourariaLancPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object SQLTesourariaLancCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLMovimentoBanco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PLANODECONTAS.PLCTA15COD,'
      '   PLANODECONTAS.PLCTA15CODPAI,'
      '   PLANODECONTAS.PLCTA30CODEDIT,'
      '   PLANODECONTAS.PLCTA60DESCR,'
      '   PLANODECONTAS.PLCTCTIPOSALDO,'
      '   PLANODECONTAS.PLCTCANALSINT,'
      '   SUM(MOVIMENTOBANCO.MVBCN2VLRDEB) as DESPESA,'
      '   SUM(MOVIMENTOBANCO.MVBCN2VLRCRED) as RECEITA'
      'From'
      '   MOVIMENTOBANCO'
      
        '   left outer join PLANODECONTAS on MOVIMENTOBANCO.PLCTA15COD= P' +
        'LANODECONTAS.PLCTA15COD'
      'where'
      '(%MDataComp) and'
      '(%MEmpresaComp) and'
      'MOVIMENTOBANCO.PLCTA15COD is not null'
      'group by'
      '    PLANODECONTAS.PLCTA15COD,'
      '    PLANODECONTAS.PLCTA15CODPAI,'
      '    PLANODECONTAS.PLCTA30CODEDIT,'
      '    PLANODECONTAS.PLCTA60DESCR,'
      '    PLANODECONTAS.PLCTCTIPOSALDO,'
      '    PLANODECONTAS.PLCTCANALSINT'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataComp'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaComp'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 250
    Top = 33
    object SQLMovimentoBancoPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLMovimentoBancoPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLMovimentoBancoPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLMovimentoBancoPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLMovimentoBancoPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLMovimentoBancoPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLMovimentoBancoDESPESA: TFloatField
      FieldName = 'DESPESA'
      Origin = 'DB.MOVIMENTOBANCO.MVBCN2VLRDEB'
    end
    object SQLMovimentoBancoRECEITA: TFloatField
      FieldName = 'RECEITA'
      Origin = 'DB.MOVIMENTOBANCO.MVBCN2VLRCRED'
    end
  end
  object SQLBancoLanc: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'MOVIMENTOBANCO.MVBCA13ID as Documento,'
      'MOVIMENTOBANCO.MVBCICOD as Parcela,'
      '%Campo as  Valor,'
      'MOVIMENTOBANCO.PLCTA15COD,'
      'PLANODECONTAS.PLCTA60DESCR as PlanoContas,'
      'OPERACAOBANCO.OPBCA60DESCR as ClienteFornecedor'
      'from'
      '  MOVIMENTOBANCO'
      
        '  left outer join OPERACAOBANCO on MOVIMENTOBANCO.OPBCICOD = OPE' +
        'RACAOBANCO.OPBCICOD'
      
        '  left outer join PLANODECONTAS on MOVIMENTOBANCO.PLCTA15COD = P' +
        'LANODECONTAS.PLCTA15COD'
      'where'
      'MOVIMENTOBANCO.PLCTA15COD is not null'
      'and'
      '(%MDebitoCredito)'
      'and'
      '(%MDataMov)'
      'and'
      '(%MEmpresa)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Campo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDebitoCredito'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataMov'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 502
    Top = 5
    object SQLBancoLancDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 13
    end
    object SQLBancoLancPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object SQLBancoLancVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object SQLBancoLancPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLBancoLancPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object SQLBancoLancCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLPagamentoJuros: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.PAGAN3VLRJURO) as RECEITA'
      'From'
      '   PAGAMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODJURODEB = PC' +
        '.PLCTA15COD'
      'where'
      'RC.PAGADPAGTO >= :PAGADPAGTO_INI'
      'and'
      'RC.PAGADPAGTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT'
      ''
      'union'
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.PAGAN3VLRJURO) as RECEITA'
      'From'
      '   PAGAMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODJUROCRED = P' +
        'C.PLCTA15COD'
      'where'
      'RC.PAGADPAGTO >= :PAGADPAGTO_INI'
      'and'
      'RC.PAGADPAGTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresaRecebido'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 14
    Top = 81
    ParamData = <
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
      end>
    object SQLPagamentoJurosPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoJurosPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoJurosPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLPagamentoJurosPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPagamentoJurosPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLPagamentoJurosPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLPagamentoJurosDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
    object SQLPagamentoJurosRECEITA: TFloatField
      FieldName = 'RECEITA'
    end
  end
  object SQLPagamentoMultas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.PAGAN3VLRMULTA) as RECEITA'
      'From'
      '   PAGAMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODMULTDEB = PC' +
        '.PLCTA15COD'
      'where'
      'RC.PAGADPAGTO >= :PAGADPAGTO_INI'
      'and'
      'RC.PAGADPAGTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      ''
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT'
      ''
      ''
      'union'
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.PAGAN3VLRMULTA) as RECEITA'
      'From'
      '   PAGAMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODMULTCRED = P' +
        'C.PLCTA15COD'
      'where'
      'RC.PAGADPAGTO >= :PAGADPAGTO_INI'
      'and'
      'RC.PAGADPAGTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      ''
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresaRecebido'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 14
    Top = 113
    ParamData = <
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
      end>
    object SQLPagamentoMultasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoMultasPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoMultasPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLPagamentoMultasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPagamentoMultasPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLPagamentoMultasPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLPagamentoMultasDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
    object SQLPagamentoMultasRECEITA: TFloatField
      FieldName = 'RECEITA'
    end
  end
  object SQLPagamentoDesconto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0 as DESPESA,'
      '   SUM(RC.PAGAN3VLRDESC) as RECEITA'
      'From'
      '   PAGAMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODDESCCRED = P' +
        'C.PLCTA15COD'
      'where'
      'RC.PAGADPAGTO >= :PAGADPAGTO_INI'
      'and'
      'RC.PAGADPAGTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT'
      ''
      ''
      'union'
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0 as DESPESA,'
      '   SUM(RC.PAGAN3VLRDESC) as RECEITA'
      'From'
      '   PAGAMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODDESCDEB = PC' +
        '.PLCTA15COD'
      'where'
      'RC.PAGADPAGTO >= :PAGADPAGTO_INI'
      'and'
      'RC.PAGADPAGTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresaRecebido'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 14
    Top = 145
    ParamData = <
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
      end>
    object SQLPagamentoDescontoPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoDescontoPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoDescontoPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLPagamentoDescontoPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPagamentoDescontoPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLPagamentoDescontoPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLPagamentoDescontoDESPESA: TFloatField
      FieldName = 'DESPESA'
    end
    object SQLPagamentoDescontoRECEITA: TFloatField
      FieldName = 'RECEITA'
    end
  end
  object SQLRecebimentoJuros: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.RECEN2VLRJURO) as RECEITA'
      'From'
      '   RECEBIMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODJURODEB = PC' +
        '.PLCTA15COD'
      'where'
      'RC.RECEDRECTO >= :PAGADPAGTO_INI'
      'and'
      'RC.RECEDRECTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT'
      ''
      'union'
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.RECEN2VLRJURO) as RECEITA'
      'From'
      '   RECEBIMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODJUROCRED = P' +
        'C.PLCTA15COD'
      'where'
      'RC.RECEDRECTO >= :PAGADPAGTO_INI'
      'and'
      'RC.RECEDRECTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresaRecebido'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 70
    Top = 81
    ParamData = <
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
      end>
    object StringField13: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object StringField14: TStringField
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object StringField15: TStringField
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object StringField16: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object StringField17: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object StringField18: TStringField
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object FloatField1: TFloatField
      FieldName = 'DESPESA'
    end
    object BCDField5: TFloatField
      FieldName = 'RECEITA'
    end
  end
  object SQLRecebimentoMultas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.RECEN2VLRMULTA) as RECEITA'
      'From'
      '   RECEBIMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODMULTDEB = PC' +
        '.PLCTA15COD'
      'where'
      'RC.RECEDRECTO >= :PAGADPAGTO_INI'
      'and'
      'RC.RECEDRECTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT'
      ''
      'union'
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.RECEN2VLRMULTA) as RECEITA'
      'From'
      '   RECEBIMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODMULTCRED = P' +
        'C.PLCTA15COD'
      'where'
      'RC.RECEDRECTO >= :PAGADPAGTO_INI'
      'and'
      'RC.RECEDRECTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresaRecebido'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 70
    Top = 113
    ParamData = <
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
      end>
    object StringField19: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object StringField20: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object StringField21: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object StringField22: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object StringField23: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object StringField24: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object FloatField2: TFloatField
      FieldName = 'DESPESA'
    end
    object BCDField6: TFloatField
      FieldName = 'RECEITA'
    end
  end
  object SQLRecebimentoDesconto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.RECEN2DESC) as RECEITA'
      'From'
      '   RECEBIMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODDESCDEB = PC' +
        '.PLCTA15COD'
      'where'
      'RC.RECEDRECTO >= :PAGADPAGTO_INI'
      'and'
      'RC.RECEDRECTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT'
      ''
      'union'
      'Select'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT,'
      '   0.0  as DESPESA,'
      '   SUM(RC.RECEN2DESC) as RECEITA'
      'From'
      '   RECEBIMENTO RC'
      
        '   left outer join PLANODECONTAS PC on RC.PLCTA15CODDESCCRED = P' +
        'C.PLCTA15COD'
      'where'
      'RC.RECEDRECTO >= :PAGADPAGTO_INI'
      'and'
      'RC.RECEDRECTO <= :PAGADPAGTO_FIM'
      'and'
      '(%MEmpresaRecebido)'
      'group by'
      '   PC.PLCTA15COD,'
      '   PC.PLCTA15CODPAI,'
      '   PC.PLCTA30CODEDIT,'
      '   PC.PLCTA60DESCR,'
      '   PC.PLCTCTIPOSALDO,'
      '   PC.PLCTCANALSINT')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresaRecebido'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 70
    Top = 145
    ParamData = <
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
        Value = '05/19/2005'
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'PAGADPAGTO_FIM'
        ParamType = ptUnknown
      end>
    object StringField25: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object StringField26: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object StringField27: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object StringField28: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object StringField29: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object StringField30: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object FloatField3: TFloatField
      FieldName = 'DESPESA'
    end
    object BCDField7: TFloatField
      FieldName = 'RECEITA'
    end
  end
  object dsSQLTesouraria: TDataSource
    DataSet = SQLTesouraria
    Left = 222
    Top = 61
  end
  object SQLMovCupomNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '   PLANODECONTAS.PLCTA15COD,'
      '   PLANODECONTAS.PLCTA15CODPAI,'
      '   PLANODECONTAS.PLCTA30CODEDIT,'
      '   PLANODECONTAS.PLCTA60DESCR,'
      '   PLANODECONTAS.PLCTCTIPOSALDO,'
      '   PLANODECONTAS.PLCTCANALSINT,'
      '   cast( 0.00 as NUMERIC(15,3)) as DESPESA,'
      '   SUM(CPNMN2VLR) as RECEITA'
      'From'
      '   CUPOMNUMERARIO'
      
        '   left outer join PLANODECONTAS on CUPOMNUMERARIO.PLCTA15COD = ' +
        'PLANODECONTAS.PLCTA15COD'
      
        '   left outer join CUPOM on CUPOMNUMERARIO.CUPOA13ID = CUPOM.CUP' +
        'OA13ID'
      'where'
      '(CUPOMNUMERARIO.CONMCSTATUS = "A") and'
      '(%MDataVenda) and'
      '(%MEmpresaVenda)'
      'group by'
      '    PLANODECONTAS.PLCTA15COD,'
      '    PLANODECONTAS.PLCTA15CODPAI,'
      '    PLANODECONTAS.PLCTA30CODEDIT,'
      '    PLANODECONTAS.PLCTA60DESCR,'
      '    PLANODECONTAS.PLCTCTIPOSALDO,'
      '    PLANODECONTAS.PLCTCANALSINT')
    Macros = <
      item
        DataType = ftString
        Name = 'MDataVenda'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaVenda'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 278
    Top = 33
    object StringField31: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object StringField32: TStringField
      FieldName = 'PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object StringField33: TStringField
      FieldName = 'PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object StringField34: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object StringField35: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object StringField36: TStringField
      FieldName = 'PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object BCDField8: TFloatField
      FieldName = 'RECEITA'
    end
    object BCDField9: TFloatField
      FieldName = 'DESPESA'
    end
  end
  object SQLCupomNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CUPOMNUMERARIO.CUPOA13ID as Documento,'
      'CUPOMNUMERARIO.NUMEICOD as Parcela,'
      'CUPOMNUMERARIO.CPNMN2VLR as Valor,'
      'CUPOMNUMERARIO.PLCTA15COD,'
      'PLANODECONTAS.PLCTA60DESCR as PlanoContas,'
      'CLIENTE.CLIEA60RAZAOSOC as ClienteFornecedor'
      'FROM'
      '  CUPOMNUMERARIO'
      
        '  left outer join CLIENTE on CUPOMNUMERARIO.CLIEA13ID = CLIENTE.' +
        'CLIEA13ID'
      
        '  left outer join PLANODECONTAS on CUPOMNUMERARIO.PLCTA15COD = P' +
        'LANODECONTAS.PLCTA15COD'
      'WHERE'
      'CUPOMNUMERARIO.PLCTA15COD is not null'
      'and'
      '(%MdataVenda)'
      'and'
      '(%MEmpresaVenda)'
      'and'
      '(%Campo)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MdataVenda'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresaVenda'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Campo'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 530
    Top = 5
    object StringField37: TStringField
      FieldName = 'DOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object IntegerField1: TIntegerField
      FieldName = 'PARCELA'
    end
    object BCDField10: TFloatField
      FieldName = 'VALOR'
    end
    object StringField38: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object StringField39: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object StringField40: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
  end
end
