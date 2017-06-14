object FormTelaConsultaRecebimento: TFormTelaConsultaRecebimento
  Left = 220
  Top = 83
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detalhes do Recebimento'
  ClientHeight = 355
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PanelDados: TPanel
    Left = 0
    Top = 0
    Width = 131
    Height = 211
    Align = alLeft
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 104
      Height = 13
      Caption = 'Data do Recebimento'
    end
    object Label2: TLabel
      Left = 4
      Top = 47
      Width = 40
      Height = 13
      Caption = 'Vlr.Pago'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 4
      Top = 87
      Width = 40
      Height = 13
      Caption = 'Vlr.Juros'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 4
      Top = 127
      Width = 41
      Height = 13
      Caption = 'Vlr.Multa'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 4
      Top = 167
      Width = 40
      Height = 13
      Caption = 'Vlr.Desc'
      FocusControl = DBEdit4
    end
    object DBDateEdit1: TDBDateEdit
      Left = 4
      Top = 23
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'RECEDRECTO'
      DataSource = DSSQLRecebimento
      NumGlyphs = 2
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 4
      Top = 63
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'RECEN2VLRRECTO'
      DataSource = DSSQLRecebimento
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 4
      Top = 103
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'RECEN2VLRJURO'
      DataSource = DSSQLRecebimento
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 4
      Top = 143
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'RECEN2VLRMULTA'
      DataSource = DSSQLRecebimento
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 4
      Top = 180
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'RECEN2DESC'
      DataSource = DSSQLRecebimento
      ReadOnly = True
      TabOrder = 4
    end
  end
  object PageControl: TPageControl
    Left = 131
    Top = 0
    Width = 259
    Height = 211
    ActivePage = TabCredito
    Align = alClient
    TabOrder = 1
    object TabDebito: TTabSheet
      Caption = 'Plano de Contas D'#233'bito'
      object Label6: TLabel
        Left = 4
        Top = 23
        Width = 176
        Height = 13
        Caption = 'Conta D'#233'bito do Valor de Pagamento'
      end
      object Label7: TLabel
        Left = 4
        Top = 63
        Width = 147
        Height = 13
        Caption = 'Conta D'#233'bito do Valor de Juros'
      end
      object Label8: TLabel
        Left = 4
        Top = 103
        Width = 148
        Height = 13
        Caption = 'Conta D'#233'bito do Valor de Multa'
      end
      object Label9: TLabel
        Left = 4
        Top = 142
        Width = 168
        Height = 13
        Caption = 'Conta D'#233'bito do Valor de Desconto'
      end
      object LabelDataHora: TLabel
        Left = 0
        Top = 0
        Width = 251
        Height = 13
        Align = alTop
        Alignment = taRightJustify
        Caption = #218'ltima Altera'#231#227'o em dd/mm/yyyy '#224's hh:mm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 4
        Top = 79
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODJURODEB'
        DataSource = DSSQLRecebimento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaDebito
        TabOrder = 1
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 4
        Top = 119
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODMULTDEB'
        DataSource = DSSQLRecebimento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaDebito
        TabOrder = 2
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 4
        Top = 157
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODDESCDEB'
        DataSource = DSSQLRecebimento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaDebito
        TabOrder = 3
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 4
        Top = 39
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15DEBITO'
        DataSource = DSSQLRecebimento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaDebito
        TabOrder = 0
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
    end
    object TabCredito: TTabSheet
      Caption = 'Plano de Contas Cr'#233'dito'
      ImageIndex = 1
      object Label10: TLabel
        Left = 4
        Top = 23
        Width = 178
        Height = 13
        Caption = 'Conta Cr'#233'dito do Valor de Pagamento'
      end
      object Label11: TLabel
        Left = 4
        Top = 63
        Width = 149
        Height = 13
        Caption = 'Conta Cr'#233'dito do Valor de Juros'
      end
      object Label12: TLabel
        Left = 4
        Top = 103
        Width = 150
        Height = 13
        Caption = 'Conta Cr'#233'dito do Valor de Multa'
      end
      object Label13: TLabel
        Left = 4
        Top = 142
        Width = 170
        Height = 13
        Caption = 'Conta Cr'#233'dito do Valor de Desconto'
      end
      object LabelDataHoraAlteracao: TLabel
        Left = 0
        Top = 0
        Width = 251
        Height = 13
        Align = alTop
        Alignment = taRightJustify
        Caption = #218'ltima Altera'#231#227'o em dd/mm/yyyy '#224's hh:mm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 4
        Top = 39
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CREDITO'
        DataSource = DSSQLRecebimento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaCredito
        TabOrder = 0
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 4
        Top = 79
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODJUROCRED'
        DataSource = DSSQLRecebimento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaCredito
        TabOrder = 1
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo7: TRxDBLookupCombo
        Left = 4
        Top = 119
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODMULTCRED'
        DataSource = DSSQLRecebimento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaCredito
        TabOrder = 2
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo8: TRxDBLookupCombo
        Left = 4
        Top = 157
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODDESCCRED'
        DataSource = DSSQLRecebimento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaCredito
        TabOrder = 3
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
    end
  end
  object PanelRodape: TPanel
    Left = 0
    Top = 211
    Width = 390
    Height = 144
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object Label15: TLabel
      Left = 2
      Top = 2
      Width = 386
      Height = 13
      Align = alTop
      Caption = 'Hist'#243'rico'
    end
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 386
      Height = 79
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object DBMemoHist: TDBMemo
        Left = 2
        Top = 23
        Width = 382
        Height = 54
        Align = alBottom
        BorderStyle = bsNone
        DataField = 'RECEA254HISTORICO'
        DataSource = DSSQLRecebimento
        MaxLength = 254
        TabOrder = 1
        OnExit = DBMemoHistExit
      end
      object ComboHistPadrao: TRxDBLookupCombo
        Left = 2
        Top = 1
        Width = 382
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Hist'#243'rico Padr'#227'o...'
        LookupField = 'HTPDA100HISTORICO'
        LookupDisplay = 'HTPDA100HISTORICO'
        LookupSource = DSSQLHistoricoPadrao
        TabOrder = 0
        OnKeyDown = ComboHistPadraoKeyDown
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 94
      Width = 386
      Height = 48
      Align = alTop
      TabOrder = 1
      object Label14: TLabel
        Left = 5
        Top = 3
        Width = 91
        Height = 13
        Caption = 'Tipo de Liquida'#231#227'o'
      end
      object ComboTipoLiq: TRxDBLookupCombo
        Left = 4
        Top = 18
        Width = 375
        Height = 21
        DropDownCount = 8
        DataField = 'TPLQICOD'
        DataSource = DSSQLRecebimento
        LookupField = 'TPLQICOD'
        LookupDisplay = 'TPLQA60DESCR'
        LookupSource = DSSQLTipoLiquidacao
        TabOrder = 0
      end
    end
  end
  object SQLContaCredito: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANODECONTAS Where '
      'PLCTCANALSINT = '#39'A'#39
      'AND'
      '(PLCTCTIPOSALDO = '#39'C'#39
      'or'
      'PLCTCTIPOSALDO = '#39'A'#39')'
      'ORDER BY'
      'PLCTA60DESCR'
      '')
    Macros = <>
    Left = 264
    Top = 149
  end
  object DSSQLContaCredito: TDataSource
    DataSet = SQLContaCredito
    Left = 236
    Top = 149
  end
  object SQLContaDebito: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From PLANODECONTAS Where '
      'PLCTCANALSINT = '#39'A'#39
      'AND'
      '(PLCTCTIPOSALDO = '#39'D'#39
      'or'
      'PLCTCTIPOSALDO = '#39'A'#39')'
      'ORDER BY'
      'PLCTA60DESCR')
    Macros = <>
    Left = 208
    Top = 149
    object SQLContaDebitoPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContaDebitoPLCTICODREDUZ: TIntegerField
      FieldName = 'PLCTICODREDUZ'
      Origin = 'DB.PLANODECONTAS.PLCTICODREDUZ'
    end
    object SQLContaDebitoPLCTINIVEL: TIntegerField
      FieldName = 'PLCTINIVEL'
      Origin = 'DB.PLANODECONTAS.PLCTINIVEL'
    end
    object SQLContaDebitoPLCTA15CODPAI: TStringField
      FieldName = 'PLCTA15CODPAI'
      Origin = 'DB.PLANODECONTAS.PLCTA15CODPAI'
      FixedChar = True
      Size = 15
    end
    object SQLContaDebitoPLCTA30CODEDIT: TStringField
      FieldName = 'PLCTA30CODEDIT'
      Origin = 'DB.PLANODECONTAS.PLCTA30CODEDIT'
      FixedChar = True
      Size = 30
    end
    object SQLContaDebitoPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContaDebitoPLCTCANALSINT: TStringField
      FieldName = 'PLCTCANALSINT'
      Origin = 'DB.PLANODECONTAS.PLCTCANALSINT'
      FixedChar = True
      Size = 1
    end
    object SQLContaDebitoPLCTCTIPOSALDO: TStringField
      FieldName = 'PLCTCTIPOSALDO'
      Origin = 'DB.PLANODECONTAS.PLCTCTIPOSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLContaDebitoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PLANODECONTAS.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContaDebitoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PLANODECONTAS.REGISTRO'
    end
  end
  object DSSQLContaDebito: TDataSource
    DataSet = SQLContaDebito
    Left = 180
    Top = 149
  end
  object SQLRecebimento: TQuery
    AfterOpen = SQLRecebimentoAfterOpen
    BeforePost = SQLRecebimentoBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from RECEBIMENTO'
      'where '
      'CTRCA13ID = :CTRCA13ID and'
      'RECEICOD  = :RECEICOD')
    Left = 180
    Top = 121
    ParamData = <
      item
        DataType = ftString
        Name = 'CTRCA13ID'
        ParamType = ptUnknown
        Size = 14
      end
      item
        DataType = ftInteger
        Name = 'RECEICOD'
        ParamType = ptUnknown
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
    end
    object SQLRecebimentoRECEN2VLRRECTO: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoRECEN2VLRJURO: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoRECEN2VLRMULTA: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoRECEN2DESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      DisplayLabel = 'Empresa Recto.'
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
    end
    object SQLRecebimentoRECEN2MULTACOBR: TFloatField
      FieldName = 'RECEN2MULTACOBR'
      Origin = 'DB.RECEBIMENTO.RECEN2MULTACOBR'
    end
    object SQLRecebimentoTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
      Origin = 'DB.RECEBIMENTO.TERMICODREC'
    end
    object SQLRecebimentoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.RECEBIMENTO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.RECEBIMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLRecebimentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.RECEBIMENTO.REGISTRO'
    end
    object SQLRecebimentoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.RECEBIMENTO.TERMICOD'
    end
    object SQLRecebimentoRECEA30HIST: TStringField
      FieldName = 'RECEA30HIST'
      Origin = 'DB.RECEBIMENTO.RECEA30HIST'
      FixedChar = True
      Size = 30
    end
    object SQLRecebimentoPLCTA15CREDITO: TStringField
      FieldName = 'PLCTA15CREDITO'
      Origin = 'DB.RECEBIMENTO.PLCTA15CREDITO'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODJUROCRED: TStringField
      FieldName = 'PLCTA15CODJUROCRED'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODJUROCRED'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODMULTCRED: TStringField
      FieldName = 'PLCTA15CODMULTCRED'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODMULTCRED'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODDESCCRED: TStringField
      FieldName = 'PLCTA15CODDESCCRED'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODDESCCRED'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15DEBITO: TStringField
      FieldName = 'PLCTA15DEBITO'
      Origin = 'DB.RECEBIMENTO.PLCTA15DEBITO'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODJURODEB: TStringField
      FieldName = 'PLCTA15CODJURODEB'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODJURODEB'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODMULTDEB: TStringField
      FieldName = 'PLCTA15CODMULTDEB'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODMULTDEB'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoPLCTA15CODDESCDEB: TStringField
      FieldName = 'PLCTA15CODDESCDEB'
      Origin = 'DB.RECEBIMENTO.PLCTA15CODDESCDEB'
      FixedChar = True
      Size = 15
    end
    object SQLRecebimentoRECEA254HISTORICO: TStringField
      FieldName = 'RECEA254HISTORICO'
      Origin = 'DB.RECEBIMENTO.RECEA254HISTORICO'
      Size = 254
    end
    object SQLRecebimentoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.RECEBIMENTO.TPLQICOD'
    end
  end
  object DSSQLRecebimento: TDataSource
    DataSet = SQLRecebimento
    Left = 208
    Top = 121
  end
  object SQLHistoricoPadrao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM HISTORICOPADRAO')
    Macros = <>
    Left = 264
    Top = 121
  end
  object DSSQLHistoricoPadrao: TDataSource
    DataSet = SQLHistoricoPadrao
    Left = 236
    Top = 121
  end
  object SQLTipoLiquidacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'TPLQICOD,'
      'TPLQA60DESCR'
      'FROM'
      'TIPOLIQUIDACAO'
      'ORDER BY'
      'TPLQA60DESCR')
    Macros = <>
    Left = 180
    Top = 177
    object SQLTipoLiquidacaoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.TIPOLIQUIDACAO.TPLQICOD'
    end
    object SQLTipoLiquidacaoTPLQA60DESCR: TStringField
      FieldName = 'TPLQA60DESCR'
      Origin = 'DB.TIPOLIQUIDACAO.TPLQA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLTipoLiquidacao: TDataSource
    DataSet = SQLTipoLiquidacao
    Left = 208
    Top = 177
  end
end
