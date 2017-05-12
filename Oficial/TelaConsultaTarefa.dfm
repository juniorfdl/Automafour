object FormTelaConsultaTarefa: TFormTelaConsultaTarefa
  Left = 380
  Top = 206
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Tela Vizualiza'#231#227'o Tarefa'
  ClientHeight = 242
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBarra: TPanel
    Left = 0
    Top = 215
    Width = 0
    Height = 1
    Align = alLeft
    BevelOuter = bvNone
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object PanelCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object LabelTitulo: TLabel
      Left = 2
      Top = 4
      Width = 344
      Height = 25
      Caption = 'Vizualiza'#231#227'o / Manuten'#231#227'o da Tarefa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelNavigator: TPanel
    Left = 0
    Top = 216
    Width = 509
    Height = 26
    Align = alBottom
    BevelOuter = bvNone
    Color = 16249066
    TabOrder = 2
    object BtOK: TConerBtn
      Left = 314
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      TabOrder = 0
      OnClick = BtOKClick
      Kind = bkOK
      Flat = True
      PlaceConer = pcNone
      SymbolState = ssClose
      SymbolColorOpen = clRed
      SymbolColorClose = clMaroon
      Transparent = True
    end
    object BtCancel: TConerBtn
      Left = 390
      Top = 1
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = BtCancelClick
      Kind = bkCancel
      Flat = True
      PlaceConer = pcNone
      SymbolState = ssClose
      SymbolColorOpen = clRed
      SymbolColorClose = clMaroon
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 509
    Height = 179
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 16249066
    TabOrder = 3
    object Label13: TLabel
      Left = 12
      Top = 98
      Width = 64
      Height = 13
      Caption = 'Solicita'#231#227'o'
      FocusControl = DBMemo2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 262
      Top = 97
      Width = 47
      Height = 13
      Caption = 'Solu'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 380
      Top = 57
      Width = 77
      Height = 13
      Caption = 'Data T'#233'rmino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 261
      Top = 57
      Width = 65
      Height = 13
      Caption = 'Data In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 12
      Top = 16
      Width = 35
      Height = 13
      Caption = 'T'#237'tulo'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 57
      Width = 79
      Height = 13
      Caption = 'Prazo M'#225'ximo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo2: TDBMemo
      Left = 8
      Top = 111
      Width = 240
      Height = 57
      TabStop = False
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      Color = 16249066
      DataField = 'TARETSOLICITACAO'
      DataSource = DSTemplate
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 9
      Top = 30
      Width = 488
      Height = 21
      TabStop = False
      Color = 16249066
      Ctl3D = True
      DataField = 'TAREA30TITULO'
      DataSource = DSTemplate
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBInicio: TDBDateEdit
      Left = 259
      Top = 71
      Width = 111
      Height = 21
      DataField = 'TAREDINICIO'
      DataSource = DSTemplate
      NumGlyphs = 2
      TabOrder = 2
    end
    object DBTermino: TDBDateEdit
      Left = 376
      Top = 71
      Width = 113
      Height = 21
      DataField = 'TAREDTERMINO'
      DataSource = DSTemplate
      NumGlyphs = 2
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 257
      Top = 111
      Width = 240
      Height = 57
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      Color = clWhite
      DataField = 'TARETEXECUCAO'
      DataSource = DSTemplate
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object DBDateEdit1: TDBDateEdit
      Left = 10
      Top = 71
      Width = 111
      Height = 21
      DataField = 'TAREDPRAZOMAX'
      DataSource = DSTemplate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
    end
  end
  object DSTemplate: TDataSource
    DataSet = SQLTemplate
    Left = 467
    Top = 5
  end
  object SQLTemplate: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select   * '
      'From  TAREFA '
      'Where   (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 439
    Top = 5
    object SQLTemplateTAREA13ID: TStringField
      FieldName = 'TAREA13ID'
      Origin = 'DB.TAREFA.TAREA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TAREFA.EMPRICOD'
    end
    object SQLTemplateTAREICOD: TIntegerField
      FieldName = 'TAREICOD'
      Origin = 'DB.TAREFA.TAREICOD'
    end
    object SQLTemplateTAREDDIGITACAO: TDateTimeField
      FieldName = 'TAREDDIGITACAO'
      Origin = 'DB.TAREFA.TAREDDIGITACAO'
    end
    object SQLTemplateTAREDPRAZOMAX: TDateTimeField
      FieldName = 'TAREDPRAZOMAX'
      Origin = 'DB.TAREFA.TAREDPRAZOMAX'
    end
    object SQLTemplateTAREDINICIO: TDateTimeField
      FieldName = 'TAREDINICIO'
      Origin = 'DB.TAREFA.TAREDINICIO'
    end
    object SQLTemplateTAREDTERMINO: TDateTimeField
      FieldName = 'TAREDTERMINO'
      Origin = 'DB.TAREFA.TAREDTERMINO'
    end
    object SQLTemplateUSUAICODORIG: TIntegerField
      FieldName = 'USUAICODORIG'
      Origin = 'DB.TAREFA.USUAICODORIG'
    end
    object SQLTemplateUSUAICODDEST: TIntegerField
      FieldName = 'USUAICODDEST'
      Origin = 'DB.TAREFA.USUAICODDEST'
    end
    object SQLTemplateCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.TAREFA.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTARECSTATUS: TStringField
      FieldName = 'TARECSTATUS'
      Origin = 'DB.TAREFA.TARECSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateTAREA30TITULO: TStringField
      FieldName = 'TAREA30TITULO'
      Origin = 'DB.TAREFA.TAREA30TITULO'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateTARETSOLICITACAO: TMemoField
      FieldName = 'TARETSOLICITACAO'
      Origin = 'DB.TAREFA.TARETSOLICITACAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTemplateTARETEXECUCAO: TMemoField
      FieldName = 'TARETEXECUCAO'
      Origin = 'DB.TAREFA.TARETEXECUCAO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTemplateTAREA254MOTIVOCANCEL: TMemoField
      FieldName = 'TAREA254MOTIVOCANCEL'
      Origin = 'DB.TAREFA.TAREA254MOTIVOCANCEL'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTemplateTAREA60MOTIVOADIO: TMemoField
      FieldName = 'TAREA60MOTIVOADIO'
      Origin = 'DB.TAREFA.TAREA60MOTIVOADIO'
      BlobType = ftMemo
      Size = 5000
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TAREFA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TAREFA.REGISTRO'
    end
  end
end
