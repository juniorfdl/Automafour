object FormTelaDetalheRecebimento: TFormTelaDetalheRecebimento
  Left = 451
  Top = 249
  Width = 736
  Height = 221
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    Color = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LabelTitulo: TLabel
      Left = 9
      Top = 3
      Width = 264
      Height = 26
      Caption = 'An'#225'lise dos Recebimentos'
      Color = 10053171
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 167
    Width = 720
    Height = 15
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 31
    Width = 720
    Height = 136
    TabStop = False
    Align = alClient
    BorderStyle = bsNone
    Color = clWhite
    DataSource = DSSQLRecebimento
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'RECEDRECTO'
        Title.Caption = 'Data Recto'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECEN2VLRRECTO'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECEN2VLRJURO'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECEN2VLRMULTA'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECEN2DESC'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMPRICODREC'
        Title.Caption = 'Emp Recto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TerminalLookup'
        Title.Caption = 'Terminal Recto'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UsuarioLookup'
        Title.Caption = 'Usuario Recto'
        Width = 118
        Visible = True
      end>
  end
  object SQLRecebimento: TQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select '
      '*'
      'from '
      'RECEBIMENTO'
      'where CTRCA13ID = :CTRCA13ID'
      'order by'
      'RECEDRECTO')
    Left = 642
    Top = 2
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLRecebimentoCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.RECEBIMENTO.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoRECEICOD: TIntegerField
      FieldName = 'RECEICOD'
      Origin = 'DB.RECEBIMENTO.RECEICOD'
    end
    object SQLRecebimentoRECEDRECTO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'RECEDRECTO'
      Origin = 'DB.RECEBIMENTO.RECEDRECTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLRecebimentoRECEN2VLRRECTO: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRJURO: TBCDField
      DisplayLabel = 'Juros'
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2VLRMULTA: TBCDField
      DisplayLabel = 'Multa'
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoRECEN2DESC: TBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      DisplayLabel = 'Empresa Recto.'
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoEmpresaLookup: TStringField
      DisplayLabel = 'Empresa Recebimento'
      FieldKind = fkLookup
      FieldName = 'EmpresaLookup'
      LookupDataSet = SQLEmpresa
      LookupKeyFields = 'EMPRICOD'
      LookupResultField = 'EMPRA60RAZAOSOC'
      KeyFields = 'EMPRICODREC'
      Size = 60
      Lookup = True
    end
    object SQLRecebimentoRECEDDATAMOV: TDateTimeField
      DisplayLabel = 'Data Mov.'
      FieldName = 'RECEDDATAMOV'
      Origin = 'DB.RECEBIMENTO.RECEDDATAMOV'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLRecebimentoCTRCA13IDCREDITO: TStringField
      FieldName = 'CTRCA13IDCREDITO'
      Origin = 'DB.RECEBIMENTO.CTRCA13IDCREDITO'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECEBIMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.RECEBIMENTO.TPLQICOD'
    end
    object SQLRecebimentoNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.RECEBIMENTO.NUMEICOD'
    end
    object SQLRecebimentoTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
      Origin = 'DB.RECEBIMENTO.TERMICODREC'
    end
    object SQLRecebimentoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.RECEBIMENTO.USUAICOD'
    end
    object SQLRecebimentoTerminalLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'TerminalLookup'
      LookupDataSet = SQLTerminal
      LookupKeyFields = 'TERMICOD'
      LookupResultField = 'TERMA60DESCR'
      KeyFields = 'TERMICODREC'
      Size = 60
      Lookup = True
    end
    object SQLRecebimentoUsuarioLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'UsuarioLookup'
      LookupDataSet = SQLUsuario
      LookupKeyFields = 'USUAICOD'
      LookupResultField = 'USUAA60LOGIN'
      KeyFields = 'USUAICOD'
      Size = 30
      Lookup = True
    end
  end
  object DSSQLRecebimento: TDataSource
    AutoEdit = False
    DataSet = SQLRecebimento
    Left = 670
    Top = 2
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  EMPRICOD,'
      '  EMPRA60RAZAOSOC'
      'FROM'
      '  EMPRESA')
    Macros = <>
    Left = 614
    Top = 2
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object SQLUsuario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT  '
      '  USUAICOD,'
      '  USUAA60LOGIN'
      'FROM '
      '  USUARIO')
    Macros = <>
    Left = 586
    Top = 2
    object SQLUsuarioUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.USUARIO.USUAICOD'
    end
    object SQLUsuarioUSUAA60LOGIN: TStringField
      FieldName = 'USUAA60LOGIN'
      Origin = 'DB.USUARIO.USUAA60LOGIN'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT  '
      '  TERMICOD,'
      '  TERMA60DESCR'
      'FROM '
      '  TERMINAL')
    Macros = <>
    Left = 558
    Top = 2
    object SQLTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalTERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
