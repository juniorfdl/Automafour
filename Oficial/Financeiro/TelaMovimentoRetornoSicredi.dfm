inherited FormTelaMovimentoRetornoSicredi: TFormTelaMovimentoRetornoSicredi
  Left = 49
  Top = 67
  Caption = 'Ocorr'#234'ncias do Retorno '
  ClientHeight = 497
  ClientWidth = 1248
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Width = 1248
    Height = 417
    object Label1: TLabel
      Left = 704
      Top = 120
      Width = 26
      Height = 13
      Caption = 'Titulo'
    end
    object Label2: TLabel
      Left = 680
      Top = 128
      Width = 26
      Height = 13
      Caption = 'Titulo'
    end
    object DBGridLista: TDBGrid
      Left = 0
      Top = 0
      Width = 1248
      Height = 417
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DSMasterTemplate
      FixedColor = 10053171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'TITULO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Emissao'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtVencimento'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClienteNome'
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 257
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIEA13ID'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGOOCORRENCIA'
          Title.Caption = 'C'#243'digo Movimento'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Caption = 'Valor Documento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorJuros'
          Title.Caption = 'Valor Juros'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorMulta'
          Title.Caption = 'Valor Multa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorRecebido'
          Title.Caption = 'Valor Recebido'
          Visible = True
        end>
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 1248
    inherited PanelCabecalho: TPanel
      Width = 1248
      inherited PanelNavigator: TPanel
        Width = 1248
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 1248
          inherited BtnFecharTela: TSpeedButton
            Left = 880
          end
          object SpeedButton1: TSpeedButton
            Tag = 3
            Left = 976
            Top = 4
            Width = 76
            Height = 25
            Cursor = crHandPoint
            Hint = 'Imprimir'
            Caption = '&Imprimir'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000010000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
              66666666666666FFF66666660000666666600066666666666666F888FFF66666
              00006666600788006666666666F8866888FFF666000066600778008800666666
              688668888888FFF60000660778878800880066668F688688888888F600006688
              877788880080666688866688888888F600006887777788888800666886666688
              888888F6000068F7777F888888880668F6666F888888888F000068F77FF77788
              88880668F66FF6FF8888888F000068FFF779977788880668FFF6F8866688888F
              000068F77AA7778807880668F6688666888F888600006688F77788FF07006666
              88F666886686F8660000666688F8FFFFF06666666688F8F666686F6600006666
              6688FFFFFF0666666666886F666686FF0000666666668FFFFFF0066666666686
              F666F88600006666666668FFF8866666666666686FF886660000666666666688
              8666666666666666888666660000666666666666666666666666666666666666
              0000}
            NumGlyphs = 2
            ParentFont = False
            OnClick = BtnFecharTelaClick
          end
        end
      end
    end
  end
  inherited AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Left = 252
    Top = 17
  end
  object DSMasterTemplate: TDataSource
    DataSet = TempOcorrencias
    Left = 126
    Top = 16
  end
  object TempOcorrencias: TRxMemoryData
    FieldDefs = <>
    Left = 96
    Top = 16
    object TempOcorrenciasCODIGOOCORRENCIA: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'CODIGOOCORRENCIA'
      OnChange = TempOcorrenciasCODIGOOCORRENCIAChange
      Size = 2
    end
    object TempOcorrenciasDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object TempOcorrenciasTITULO: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'TITULO'
      OnChange = TempOcorrenciasTITULOChange
      Size = 10
    end
    object TempOcorrenciasCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object TempOcorrenciasClienteNome: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'ClienteNome'
      Size = 60
    end
    object TempOcorrenciasEmissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Emissao'
    end
    object TempOcorrenciasDtVencimento: TDateTimeField
      DisplayLabel = 'Dt. Vcto'
      FieldName = 'DtVencimento'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TempOcorrenciasValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
    end
    object TempOcorrenciasValorJuros: TFloatField
      FieldName = 'ValorJuros'
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
    end
    object TempOcorrenciasValorMulta: TFloatField
      FieldName = 'ValorMulta'
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
    end
    object TempOcorrenciasValorRecebido: TFloatField
      FieldName = 'ValorRecebido'
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
    end
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CR.CTRCA13ID,'
      '  CR.EMPRICOD,'
      '  CR.TERMICOD,'
      '  CR.CLIEA13ID,'
      '  CR.CTRCCSTATUS,'
      '  CR.CTRCINROPARC,'
      '  CR.CTRCDVENC,'
      '  CR.CTRCDEMIS,'
      '  CR.CTRCN2VLR,'
      '  (CR.CTRCN2VLR - CR.CTRCN2TOTREC) as Saldo,'
      '  CR.CTRCN2DESCFIN,'
      '  CR.CTRCN2TOTREC,'
      '  CR.CTRCDULTREC,'
      '  CR.PORTICOD,'
      '  CR.CTRCA5TIPOPADRAO,'
      '  CR.CUPOA13ID,'
      '  CL.CLIEA60RAZAOSOC,'
      '  CR.NOFIA13ID,'
      '  CR.CTRCA30NRODUPLICBANCO,'
      '  CR.CTRCCTIPOREGISTRO,'
      '  CR.CTRCA254HIST,'
      '  CR.CTRCN2TXJURO,'
      '  CR.CTRCA15NOSSONUMERO'
      'from'
      '  CONTASRECEBER CR, CLIENTE CL'
      'where'
      '  %MData   and'
      '  ((CR.CTRCCSTATUS <> '#39'C'#39') or (CR.CTRCCSTATUS is null)) and'
      '  (CR.CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) and'
      
        '  (CR.CTRCN2TOTREC    < CR.CTRCN2VLR or CR.CTRCN2TOTREC is null)' +
        ' and'
      '   CR.CLIEA13ID =  CL.CLIEA13ID and'
      '  (%MEmpresa) and'
      '  (%MCliente) and'
      '  (%MPortador) and'
      '  (%MTipoDoc) and'
      '  (%MNumerario) and'
      '  (%MDocumento)'
      'Order By'
      ' %MOrdem'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
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
        Name = 'MPortador'
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
        Name = 'MNumerario'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDocumento'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = 'CR.CTRCA13ID'
      end>
    Left = 168
    Top = 16
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Size = 13
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCA15NOSSONUMERO: TStringField
      FieldName = 'CTRCA15NOSSONUMERO'
      Size = 15
    end
  end
  object TblTemporaria: TTable
    DatabaseName = 'Easy_Temp'
    SessionName = 'Default'
    TableName = 'RelRetornoBanco.DB'
    Left = 208
    Top = 16
    object TblTemporariaTitulo: TStringField
      FieldName = 'Titulo'
      Size = 10
    end
    object TblTemporariaDtEmissao: TDateField
      FieldName = 'DtEmissao'
    end
    object TblTemporariaDtVencto: TDateField
      FieldName = 'DtVencto'
    end
    object TblTemporariaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object TblTemporariaDescricao: TStringField
      FieldName = 'Descricao'
    end
    object TblTemporariaCodigoCliente: TStringField
      DisplayLabel = 'Cod.Cliente'
      FieldName = 'CodigoCliente'
      Size = 13
    end
    object TblTemporariaOcorrencia: TStringField
      FieldName = 'Ocorrencia'
      Size = 2
    end
    object TblTemporariaValorDocumento: TFloatField
      FieldName = 'Valor Documento'
      DisplayFormat = '###,###,##0.00'
    end
    object TblTemporariaValorJuros: TFloatField
      FieldName = 'ValorJuros'
      DisplayFormat = '###,###,##0.00'
    end
    object TblTemporariaValorMulta: TFloatField
      FieldName = 'ValorMulta'
      DisplayFormat = '###,###,##0.00'
    end
    object TblTemporariaValorRecebido: TFloatField
      FieldName = 'ValorRecebido'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = TblTemporaria
    Left = 640
    Top = 256
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    ReportName = 'C:\Desenv\GestaoOficial\Relatorios\Vendas Por Periodo.rpt'
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
    Left = 504
    Top = 17
  end
end
