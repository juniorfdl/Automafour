inherited FormRelatorioFluxoCaixa: TFormRelatorioFluxoCaixa
  Left = 270
  Top = 53
  Caption = 'Fluxo de Caixa'
  ClientWidth = 794
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Width = 794
    Max = 0
    Smooth = True
  end
  inherited ScrollBox: TScrollBox
    Width = 794
    inherited PanelCentro: TPanel
      Top = 97
      Height = 324
      inherited BtnVisualizar: TSpeedButton
        Left = 150
        Top = 292
      end
      inherited GroupBox1: TGroupBox
        Top = 198
        object chkListaBoleto: TCheckBox
          Left = 249
          Top = 18
          Width = 150
          Height = 17
          Caption = 'Listar Boletos Quitados'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
      end
      object GroupSaldo: TGroupBox
        Left = 12
        Top = 239
        Width = 135
        Height = 45
        Caption = 'Saldo Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object SaldoInicial: TCurrencyEdit
          Left = 7
          Top = 17
          Width = 121
          Height = 21
          AutoSize = False
          CheckOnExit = True
          FormatOnEditing = True
          TabOrder = 0
        end
      end
      object RadioModoVisual: TRadioGroup
        Left = 148
        Top = 239
        Width = 271
        Height = 45
        Caption = 'Modo de Visualiza'#231#227'o'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Sint'#233'tico'
          'Anal'#237'tico'
          'Gr'#225'fico')
        ParentFont = False
        TabOrder = 3
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 158
        Width = 407
        Height = 41
        Caption = 'Porta&dor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ComboPortador: TRxDBLookupCombo
          Left = 44
          Top = 15
          Width = 357
          Height = 21
          DropDownCount = 8
          DisplayEmpty = 'Todas'
          EmptyValue = 'Todas'
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
          OnExit = ComboPortadorExit
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 790
      inherited PanelCabecalho: TPanel
        Width = 790
        inherited PanelNavigator: TPanel
          Width = 790
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 790
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'FluxoCaixa.db'
    object TblTemporariaPortador: TStringField
      FieldName = 'Portador'
      Size = 25
    end
    object TblTemporariaDataPrevista: TDateField
      FieldName = 'DataPrevista'
    end
    object TblTemporariaPagarReceber: TStringField
      FieldName = 'PagarReceber'
      Size = 13
    end
    object TblTemporariaCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object TblTemporariaDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object TblTemporariaDebito: TFloatField
      FieldName = 'Debito'
    end
    object TblTemporariaCredito: TFloatField
      FieldName = 'Credito'
    end
    object TblTemporariaSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object TblTemporariaConta: TStringField
      FieldName = 'Conta'
      Size = 60
    end
    object TblTemporariaHistorico: TStringField
      FieldName = 'Historico'
      Size = 100
    end
    object TblTemporariaAgendado: TStringField
      FieldName = 'Agendado'
      Size = 1
    end
    object TblTemporariaSoma_Quitado: TStringField
      FieldName = 'Soma_Quitado'
      Size = 1
    end
  end
  object SQLReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select sum(CONTASRECEBER.CTRCN2VLR - CONTASRECEBER.CTRCN2TOTREC)' +
        ' as VALORRECEBER, sum(CONTASRECEBER.CTRCN2TOTREC) VALORRECEBIDO,'
      
        '       CONTASRECEBER.PORTICOD, PORTADOR.PORTA60DESCR, CONTASRECE' +
        'BER.CTRCDVENC, CONTASRECEBER.DATA_PREVISTA, CONTASRECEBER.PREVIS' +
        'TO,'
      
        '       CONTASRECEBER.CLIEA13ID, CLIENTE.CLIEA60RAZAOSOC, CONTASR' +
        'ECEBER.PLCTA15COD, PLANODECONTAS.PLCTA60DESCR,'
      
        '       CONTASRECEBER.CTRCA254HIST, CONTASRECEBER.CTRCA13ID, TIPO' +
        'DOCUMENTO.SOMA_QUITADO'
      'from CONTASRECEBER'
      
        'inner join CLIENTE on CLIENTE.CLIEA13ID = CONTASRECEBER.CLIEA13I' +
        'D'
      
        'inner join PORTADOR on PORTADOR.PORTICOD = CONTASRECEBER.PORTICO' +
        'D'
      
        'left join PLANODECONTAS on PLANODECONTAS.PLCTA15COD = CONTASRECE' +
        'BER.PLCTA15COD'
      
        'left join TIPODOCUMENTO on TIPODOCUMENTO.TPDCICOD = CONTASRECEBE' +
        'R.TPDCICOD'
      'where CONTASRECEBER.CTRCCSTATUS <> '#39'C'#39' and'
      '      CONTASRECEBER.PORTICOD > 0 and'
      '     (%FILTRO) and'
      '      (%EMPRESA) and'
      '      (%DATA) and'
      '      (%Portador)'
      
        'group by CONTASRECEBER.PORTICOD, PORTADOR.PORTA60DESCR, CONTASRE' +
        'CEBER.CTRCDVENC, CONTASRECEBER.DATA_PREVISTA, CONTASRECEBER.PREV' +
        'ISTO, CONTASRECEBER.CLIEA13ID, CLIENTE.CLIEA60RAZAOSOC, CONTASRE' +
        'CEBER.PLCTA15COD, PLANODECONTAS.PLCTA60DESCR, CONTASRECEBER.CTRC' +
        'A254HIST, CONTASRECEBER.CTRCA13ID, TIPODOCUMENTO.SOMA_QUITADO'
      'order by PORTADOR.PORTA60DESCR, CONTASRECEBER.DATA_PREVISTA')
    Macros = <
      item
        DataType = ftString
        Name = 'FILTRO'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Portador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 421
    Top = 5
    object SQLReceberVALORRECEBER: TFloatField
      FieldName = 'VALORRECEBER'
    end
    object SQLReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLReceberPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLReceberDATA_PREVISTA: TDateTimeField
      FieldName = 'DATA_PREVISTA'
    end
    object SQLReceberPREVISTO: TStringField
      FieldName = 'PREVISTO'
      FixedChar = True
      Size = 1
    end
    object SQLReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLReceberPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLReceberVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object SQLReceberSOMA_QUITADO: TStringField
      FieldName = 'SOMA_QUITADO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPagar: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select sum(CONTASPAGAR.CTPGN3VLR - CONTASPAGAR.CTPGN2TOTPAG) as ' +
        'VALORPAGAR, CONTASPAGAR.PORTICOD, PORTADOR.PORTA60DESCR,'
      
        '       CONTASPAGAR.CTPGDVENC, CONTASPAGAR.DATA_PREVISTA, CONTASP' +
        'AGAR.PREVISTO, CONTASPAGAR.FORNICOD,'
      
        '       FORNECEDOR.FORNA60RAZAOSOC, CONTASPAGAR.PLCTA15COD, PLANO' +
        'DECONTAS.PLCTA60DESCR, CONTASPAGAR.CTPGA254HIST,CONTASPAGAR.CTPG' +
        'A13ID'
      'from CONTASPAGAR'
      
        'inner join FORNECEDOR on FORNECEDOR.FORNICOD = CONTASPAGAR.FORNI' +
        'COD'
      
        'left join PLANODECONTAS on PLANODECONTAS.PLCTA15COD = CONTASPAGA' +
        'R.PLCTA15COD'
      'inner join PORTADOR on PORTADOR.PORTICOD = CONTASPAGAR.PORTICOD'
      
        'where (CONTASPAGAR.CTPGN3VLR > CONTASPAGAR.CTPGN2TOTPAG or CONTA' +
        'SPAGAR.CTPGN2TOTPAG is null) and'
      '      CONTASPAGAR.PORTICOD > 0 and'
      '      (%EMPRESA) and'
      '      (%DATA) and'
      '      (%Portador)'
      
        'group by CONTASPAGAR.PORTICOD, PORTADOR.PORTA60DESCR, CONTASPAGA' +
        'R.CTPGDVENC, CONTASPAGAR.DATA_PREVISTA, CONTASPAGAR.PREVISTO, CO' +
        'NTASPAGAR.FORNICOD, FORNECEDOR.FORNA60RAZAOSOC, CONTASPAGAR.PLCT' +
        'A15COD, PLANODECONTAS.PLCTA60DESCR, CONTASPAGAR.CTPGA254HIST,CON' +
        'TASPAGAR.CTPGA13ID'
      'order by PORTADOR.PORTA60DESCR,CONTASPAGAR.CTPGDVENC  ')
    Macros = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Portador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 449
    Top = 5
    object SQLPagarVALORPAGAR: TFloatField
      FieldName = 'VALORPAGAR'
    end
    object SQLPagarPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLPagarPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPagarCTPGDVENC: TDateTimeField
      FieldName = 'CTPGDVENC'
    end
    object SQLPagarDATA_PREVISTA: TDateTimeField
      FieldName = 'DATA_PREVISTA'
    end
    object SQLPagarPREVISTO: TStringField
      FieldName = 'PREVISTO'
      FixedChar = True
      Size = 1
    end
    object SQLPagarFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object SQLPagarFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLPagarPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPagarPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLPagarCTPGA254HIST: TStringField
      FieldName = 'CTPGA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLPagarCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      FixedChar = True
      Size = 13
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
    ConnectMethod = useLogOnInfo
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
    WindowButtonBar.ToolbarTips = False
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
    Left = 481
    Top = 5
  end
  object SQLReceberRegistros: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CONTASRECEBER.CTRCA13ID    as ID,'
      'CONTASRECEBER.CTRCINROPARC as Parcela,'
      'CONTASRECEBER.CTRCDEMIS    as Emissao,'
      'Cast(CONTASRECEBER.CTRCDVENC as Date) as Vcto,'
      'CONTASRECEBER.CTRCN2VLR    as Valor,'
      'CONTASRECEBER.CTRCA30NRODUPLICBANCO as Detalhes,'
      'CLIENTE.CLIEA60RAZAOSOC    as ClienteFornecedor,'
      'PLANODECONTAS.PLCTA60DESCR as PlanoContas,'
      'TIPODOCUMENTO.TPDCA60DESCR as TipoDocumento,'
      #39'R'#39' as Tipo'
      ''
      'FROM'
      'CONTASRECEBER'
      
        'LEFT OUTER JOIN CLIENTE ON CONTASRECEBER.CLIEA13ID = CLIENTE.CLI' +
        'EA13ID'
      
        'LEFT OUTER JOIN PLANODECONTAS ON CONTASRECEBER.PLCTA15COD = PLAN' +
        'ODECONTAS.PLCTA15COD'
      
        'LEFT OUTER JOIN TIPODOCUMENTO ON CONTASRECEBER.TPDCICOD = TIPODO' +
        'CUMENTO.TPDCICOD'
      'WHERE'
      'CONTASRECEBER.CTRCCSTATUS <> '#39'C'#39' and'
      
        '(CONTASRECEBER.CTRCN2TOTREC < ContasReceber.CTRCN2VLR or CONTASR' +
        'ECEBER.CTRCN2TOTREC is null)  and'
      '(%Empresa)and'
      '(%Data)'
      'ORDER BY'
      'CONTASRECEBER.CTRCA13ID'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 421
    Top = 33
    object SQLReceberRegistrosID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLReceberRegistrosPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object SQLReceberRegistrosEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object SQLReceberRegistrosVCTO: TDateTimeField
      FieldName = 'VCTO'
    end
    object SQLReceberRegistrosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object SQLReceberRegistrosDETALHES: TStringField
      FieldName = 'DETALHES'
      FixedChar = True
      Size = 30
    end
    object SQLReceberRegistrosCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
    object SQLReceberRegistrosPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object SQLReceberRegistrosTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object SQLReceberRegistrosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPagarRegistros: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CONTASPAGAR.CTPGA13ID      as ID,'
      'CONTASPAGAR.CTPGINROPARC   as Parcela,'
      'CONTASPAGAR.CTPGDTEMIS     as Emissao,'
      'Cast(CONTASPAGAR.CTPGDVENC as Date) as Vcto,'
      'CONTASPAGAR.CTPGN3VLR      as Valor,'
      'CONTASPAGAR.CTPGA254HIST   as Detalhes,'
      'FORNECEDOR.FORNA60RAZAOSOC as ClienteFornecedor,'
      'PLANODECONTAS.PLCTA60DESCR as PlanoContas,'
      'TIPODOCUMENTO.TPDCA60DESCR as TipoDocumento,'
      #39'P'#39' as Tipo'
      'FROM'
      'CONTASPAGAR'
      
        'LEFT OUTER JOIN FORNECEDOR ON CONTASPAGAR.FORNICOD = FORNECEDOR.' +
        'FORNICOD'
      
        'LEFT OUTER JOIN PLANODECONTAS ON CONTASPAGAR.PLCTA15COD = PLANOD' +
        'ECONTAS.PLCTA15COD'
      
        'LEFT OUTER JOIN TIPODOCUMENTO ON CONTASPAGAR.TPDCICOD = TIPODOCU' +
        'MENTO.TPDCICOD'
      'WHERE'
      
        '(CONTASPAGAR.CTPGN3VLR > ContasPagar.CTPGN2TOTPAG or ContasPagar' +
        '.CTPGN2TOTPAG is null) and'
      '(%Empresa)and'
      '(%Data)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 449
    Top = 33
    object SQLPagarRegistrosID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object SQLPagarRegistrosPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object SQLPagarRegistrosEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object SQLPagarRegistrosVCTO: TDateTimeField
      FieldName = 'VCTO'
    end
    object SQLPagarRegistrosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object SQLPagarRegistrosDETALHES: TStringField
      FieldName = 'DETALHES'
      FixedChar = True
      Size = 254
    end
    object SQLPagarRegistrosCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
    object SQLPagarRegistrosPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object SQLPagarRegistrosTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object SQLPagarRegistrosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object TblRegistros: TTable
    Tag = 1
    DatabaseName = 'Easy_Temp'
    TableName = 'RegistrosFluxoCaixa.db'
    Left = 362
    Top = 33
    object TblRegistrosID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 13
    end
    object TblRegistrosPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object TblRegistrosEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object TblRegistrosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object TblRegistrosVCTO: TDateTimeField
      FieldName = 'VCTO'
    end
    object TblRegistrosDETALHES: TStringField
      FieldName = 'DETALHES'
      FixedChar = True
      Size = 30
    end
    object TblRegistrosCLIENTEFORNECEDOR: TStringField
      FieldName = 'CLIENTEFORNECEDOR'
      FixedChar = True
      Size = 60
    end
    object TblRegistrosPLANOCONTAS: TStringField
      FieldName = 'PLANOCONTAS'
      FixedChar = True
      Size = 60
    end
    object TblRegistrosTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      FixedChar = True
      Size = 30
    end
    object TblRegistrosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select PORTICOD, PORTA60DESCR,CTCRICOD'
      'from PORTADOR  ')
    Macros = <>
    Left = 517
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
    object SQLPortadorCTCRICOD: TIntegerField
      FieldName = 'CTCRICOD'
      Origin = 'DB.PORTADOR.CTCRICOD'
    end
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 546
    Top = 5
  end
  object SQLQuitados: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select sum(CONTASRECEBER.CTRCN2VLR - CONTASRECEBER.CTRCN2TOTREC)' +
        ' as VALORRECEBER, sum(CONTASRECEBER.CTRCN2TOTREC) VALORRECEBIDO,'
      
        '       CONTASRECEBER.PORTICOD, PORTADOR.PORTA60DESCR, CONTASRECE' +
        'BER.CTRCDVENC, CONTASRECEBER.CTRCDULTREC, CONTASRECEBER.PREVISTO' +
        ','
      
        '       CONTASRECEBER.CLIEA13ID, CLIENTE.CLIEA60RAZAOSOC, CONTASR' +
        'ECEBER.PLCTA15COD, PLANODECONTAS.PLCTA60DESCR,'
      
        '       CONTASRECEBER.CTRCA254HIST, CONTASRECEBER.CTRCA13ID, TIPO' +
        'DOCUMENTO.SOMA_QUITADO'
      'from CONTASRECEBER'
      
        'inner join CLIENTE on CLIENTE.CLIEA13ID = CONTASRECEBER.CLIEA13I' +
        'D'
      
        'inner join PORTADOR on PORTADOR.PORTICOD = CONTASRECEBER.PORTICO' +
        'D'
      
        'left join PLANODECONTAS on PLANODECONTAS.PLCTA15COD = CONTASRECE' +
        'BER.PLCTA15COD'
      
        'left join TIPODOCUMENTO on TIPODOCUMENTO.TPDCICOD = CONTASRECEBE' +
        'R.TPDCICOD'
      'where CONTASRECEBER.CTRCCSTATUS <> '#39'C'#39' and'
      '      CONTASRECEBER.PORTICOD > 0 and'
      '     (%FILTRO) and'
      '      (%EMPRESA) and'
      '      (%DATA) and'
      '      (%Portador)'
      
        'group by CONTASRECEBER.PORTICOD, PORTADOR.PORTA60DESCR, CONTASRE' +
        'CEBER.CTRCDVENC, CONTASRECEBER.CTRCDULTREC, CONTASRECEBER.PREVIS' +
        'TO, CONTASRECEBER.CLIEA13ID, CLIENTE.CLIEA60RAZAOSOC, CONTASRECE' +
        'BER.PLCTA15COD, PLANODECONTAS.PLCTA60DESCR, CONTASRECEBER.CTRCA2' +
        '54HIST, CONTASRECEBER.CTRCA13ID, TIPODOCUMENTO.SOMA_QUITADO'
      'order by PORTADOR.PORTA60DESCR, CONTASRECEBER.CTRCDULTREC')
    Macros = <
      item
        DataType = ftString
        Name = 'FILTRO'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Portador'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 485
    Top = 37
    object SQLQuitadosVALORRECEBER: TFloatField
      FieldName = 'VALORRECEBER'
    end
    object SQLQuitadosVALORRECEBIDO: TFloatField
      FieldName = 'VALORRECEBIDO'
    end
    object SQLQuitadosPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object SQLQuitadosPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLQuitadosCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLQuitadosCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
    end
    object SQLQuitadosPREVISTO: TStringField
      FieldName = 'PREVISTO'
      FixedChar = True
      Size = 1
    end
    object SQLQuitadosCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLQuitadosCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLQuitadosPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLQuitadosPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLQuitadosCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLQuitadosCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLQuitadosSOMA_QUITADO: TStringField
      FieldName = 'SOMA_QUITADO'
      FixedChar = True
      Size = 1
    end
  end
  object tblQuitados: TTable
    AfterPost = TblTemporariaAfterPost
    DatabaseName = 'Easy_Temp'
    TableName = 'Quitados.db'
    Left = 362
    Top = 61
    object tblQuitadosPortador: TStringField
      FieldName = 'Portador'
    end
    object tblQuitadosDataPagamento: TDateField
      FieldName = 'DataPagamento'
    end
    object tblQuitadosPagarReceber: TStringField
      FieldName = 'PagarReceber'
      Size = 13
    end
    object tblQuitadosDataPrevista: TDateField
      FieldName = 'DataPrevista'
    end
    object tblQuitadosCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object tblQuitadosValor: TFloatField
      FieldName = 'Valor'
    end
    object tblQuitadosHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object tblQuitadosAgendado: TStringField
      FieldName = 'Agendado'
      Size = 1
    end
    object tblQuitadosDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
  end
end
