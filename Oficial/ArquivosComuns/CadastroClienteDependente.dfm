inherited FormCadastroClienteDependente: TFormCadastroClienteDependente
  Left = 559
  Top = 71
  Caption = 'Dependentes/Autorizados'
  ClientHeight = 554
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Height = 554
    inherited PanelCentral: TPanel
      Height = 480
      inherited PanelBarra: TPanel
        Height = 480
      end
      inherited PanelFundoDados: TPanel
        Height = 480
        inherited Panel5: TPanel
          Height = 480
          inherited PagePrincipal: TPageControl
            Height = 398
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 325
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CLDPICOD'
                    Width = 49
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLDPA60NOME'
                    Title.Caption = 'Nome / Placa do Veiculo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLDPA15PARENTESCO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLDPCAUTORIZADO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLDPDNASC'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLDPA10RG'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CLDPA11CPF'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PENDENTE'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'REGISTRO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label4: TLabel
                Left = 7
                Top = 1
                Width = 64
                Height = 13
                Caption = 'Parentesco'
                FocusControl = DBEdit4
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label5: TLabel
                Left = 7
                Top = 38
                Width = 62
                Height = 13
                Caption = 'Autorizado'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label6: TLabel
                Left = 7
                Top = 75
                Width = 96
                Height = 13
                Caption = 'Data Nascimento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 7
                Top = 112
                Width = 16
                Height = 13
                Caption = 'RG'
                FocusControl = DBEdit7
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 7
                Top = 150
                Width = 20
                Height = 13
                Caption = 'CPF'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label1: TLabel
                Left = 7
                Top = 189
                Width = 27
                Height = 13
                Caption = 'Fone'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label9: TLabel
                Left = 7
                Top = 228
                Width = 32
                Height = 13
                Caption = 'E Mail'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit4: TDBEdit
                Left = 5
                Top = 17
                Width = 364
                Height = 21
                DataField = 'CLDPA15PARENTESCO'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEdit7: TDBEdit
                Left = 5
                Top = 128
                Width = 145
                Height = 21
                DataField = 'CLDPA10RG'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEdit8: TDBEdit
                Left = 5
                Top = 166
                Width = 145
                Height = 21
                DataField = 'CLDPA11CPF'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object DBEdit5: TRxDBComboBox
                Left = 5
                Top = 54
                Width = 145
                Height = 21
                Style = csDropDownList
                DataField = 'CLDPCAUTORIZADO'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 1
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit6: TDBDateEdit
                Left = 5
                Top = 91
                Width = 145
                Height = 21
                DataField = 'CLDPDNASC'
                DataSource = DSTemplate
                NumGlyphs = 2
                TabOrder = 2
              end
              object DBEdit1: TDBEdit
                Left = 5
                Top = 205
                Width = 199
                Height = 21
                DataField = 'CLDPA15FONE'
                DataSource = DSTemplate
                TabOrder = 5
              end
              object DBEdit9: TDBEdit
                Tag = 1
                Left = 5
                Top = 244
                Width = 364
                Height = 21
                CharCase = ecLowerCase
                DataField = 'CLDPA60EMAIL'
                DataSource = DSTemplate
                TabOrder = 6
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label2: TLabel
              Left = 12
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 82
              Top = 4
              Width = 134
              Height = 13
              Caption = 'Nome / Placa do Veiculo'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 9
              Top = 18
              Width = 64
              Height = 21
              DataField = 'CLDPICOD'
              DataSource = DSTemplate
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 77
              Top = 18
              Width = 364
              Height = 21
              DataField = 'CLDPA60NOME'
              DataSource = DSTemplate
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object ImprimirAutorizaoCompra1: TMenuItem
      Caption = 'Imprimir Autoriza'#231#227'o Compra'
      OnClick = ImprimirAutorizaoCompra1Click
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      '  CLIENTEDEPENDENTE '
      'Where '
      '  CLIEA13ID = :CLIEA13ID and  (%MFiltro)')
    ParamData = <
      item
        DataType = ftString
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'Id.Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEDEPENDENTE.CLIEA13ID'
      Visible = False
      FixedChar = True
      Size = 13
    end
    object SQLTemplateCLDPICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLDPICOD'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPICOD'
      Visible = False
    end
    object SQLTemplateCLDPA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLDPA60NOME'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLDPA15PARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'CLDPA15PARENTESCO'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA15PARENTESCO'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCLDPCAUTORIZADO: TStringField
      DisplayLabel = 'Autorizado'
      FieldName = 'CLDPCAUTORIZADO'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPCAUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCLDPDNASC: TDateTimeField
      DisplayLabel = 'Dt.Nascimento'
      FieldName = 'CLDPDNASC'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPDNASC'
    end
    object SQLTemplateCLDPA15FONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'CLDPA15FONE'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA15FONE'
      FixedChar = True
      Size = 15
    end
    object SQLTemplateCLDPA60EMAIL: TStringField
      DisplayLabel = 'E Mail'
      FieldName = 'CLDPA60EMAIL'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateCLDPA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'CLDPA10RG'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLTemplateCLDPA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLDPA11CPF'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.CLIENTEDEPENDENTE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.CLIENTEDEPENDENTE.REGISTRO'
    end
  end
  object ReportAutorizacao: TppReport
    AutoStop = False
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 0
    PrinterSetup.mmPaperWidth = 0
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 24
    Top = 192
    Version = '7.04'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24011514
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'ppLabel1'
        AutoSize = False
        Caption = 'Autoriza'#231#227'o de Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 1493311
        mmLeft = 70115
        mmTop = 210080
        mmWidth = 52153448
        BandType = 0
      end
      object Texto: TppLabel
        UserName = 'Texto'
        AutoSize = False
        Caption = 'Texto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4130154
        mmLeft = 0
        mmTop = 2240232
        mmWidth = 52153448
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'ppLine1'
        Weight = 0.750000000000000000
        mmHeight = 279930
        mmLeft = 24081629
        mmTop = 16100986
        mmWidth = 27791889
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'ppLine2'
        Weight = 0.750000000000000000
        mmHeight = 279930
        mmLeft = 24081629
        mmTop = 20511335
        mmWidth = 27791889
        BandType = 0
      end
      object NomeDep: TppLabel
        UserName = 'NomeDep'
        AutoSize = False
        Caption = 'NomeDep'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 1470028
        mmLeft = 24081629
        mmTop = 16381181
        mmWidth = 27791889
        BandType = 0
      end
      object NomeTit: TppLabel
        UserName = 'NomeTit'
        AutoSize = False
        Caption = 'NomeTit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 1470028
        mmLeft = 24081629
        mmTop = 20791264
        mmWidth = 27791889
        BandType = 0
      end
      object Data: TppLabel
        UserName = 'Data'
        AutoSize = False
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 2100267
        mmLeft = 70115
        mmTop = 8820697
        mmWidth = 52153448
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 1050133
      mmPrintPosition = 0
    end
  end
  object Report: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Major = 0
    Version.Minor = 0
    Output = toPrinter
    Margins.Left = -1
    Margins.Right = -1
    Margins.Top = -1
    Margins.Bottom = -1
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
    WindowButtonBar.CloseBtn = True
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
    Left = 53
    Top = 192
  end
  object TblAutorizacaoDependente: TTable
    DatabaseName = 'Easy_TEMP'
    TableName = 'AutorizacaoDependente.DB'
    Left = 24
    Top = 220
    object TblAutorizacaoDependenteNomeTitular: TStringField
      FieldName = 'NomeTitular'
      Size = 60
    end
    object TblAutorizacaoDependenteNomeDependente: TStringField
      FieldName = 'NomeDependente'
      Size = 60
    end
  end
end
