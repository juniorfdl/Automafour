object FormTelaConsultaPagamento: TFormTelaConsultaPagamento
  Left = 220
  Top = 83
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detalhes do Pagamento'
  ClientHeight = 369
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 131
    Top = 0
    Width = 255
    Height = 213
    ActivePage = TabDebito
    Align = alClient
    TabOrder = 0
    object TabDebito: TTabSheet
      Caption = 'Plano de Contas D'#233'bito'
      object Label6: TLabel
        Left = 4
        Top = 25
        Width = 176
        Height = 13
        Caption = 'Conta D'#233'bito do Valor de Pagamento'
      end
      object Label7: TLabel
        Left = 4
        Top = 65
        Width = 147
        Height = 13
        Caption = 'Conta D'#233'bito do Valor de Juros'
      end
      object Label8: TLabel
        Left = 4
        Top = 105
        Width = 148
        Height = 13
        Caption = 'Conta D'#233'bito do Valor de Multa'
      end
      object Label9: TLabel
        Left = 4
        Top = 143
        Width = 168
        Height = 13
        Caption = 'Conta D'#233'bito do Valor de Desconto'
      end
      object LabelDataHora: TLabel
        Left = 0
        Top = 0
        Width = 247
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
        Top = 81
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODJURODEB'
        DataSource = DSSQLPagamento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaDebito
        TabOrder = 1
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 4
        Top = 121
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODMULTDEB'
        DataSource = DSSQLPagamento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaDebito
        TabOrder = 2
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 4
        Top = 158
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODDESCDEB'
        DataSource = DSSQLPagamento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaDebito
        TabOrder = 3
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 4
        Top = 41
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15DEBITO'
        DataSource = DSSQLPagamento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaDebito
        TabOrder = 0
      end
    end
    object TabCredito: TTabSheet
      Caption = 'Plano de Contas Cr'#233'dito'
      ImageIndex = 1
      object Label10: TLabel
        Left = 4
        Top = 25
        Width = 178
        Height = 13
        Caption = 'Conta Cr'#233'dito do Valor de Pagamento'
      end
      object Label11: TLabel
        Left = 4
        Top = 65
        Width = 149
        Height = 13
        Caption = 'Conta Cr'#233'dito do Valor de Juros'
      end
      object Label12: TLabel
        Left = 4
        Top = 105
        Width = 150
        Height = 13
        Caption = 'Conta Cr'#233'dito do Valor de Multa'
      end
      object Label13: TLabel
        Left = 4
        Top = 143
        Width = 170
        Height = 13
        Caption = 'Conta Cr'#233'dito do Valor de Desconto'
      end
      object LabelDataHoraAlteracao: TLabel
        Left = 0
        Top = 0
        Width = 247
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
        Top = 41
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CREDITO'
        DataSource = DSSQLPagamento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaCredito
        TabOrder = 0
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 4
        Top = 81
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODJUROCRED'
        DataSource = DSSQLPagamento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaCredito
        TabOrder = 1
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo7: TRxDBLookupCombo
        Left = 4
        Top = 121
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODMULTCRED'
        DataSource = DSSQLPagamento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaCredito
        TabOrder = 2
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
      object RxDBLookupCombo8: TRxDBLookupCombo
        Left = 4
        Top = 158
        Width = 242
        Height = 21
        DropDownCount = 8
        DataField = 'PLCTA15CODDESCCRED'
        DataSource = DSSQLPagamento
        LookupField = 'PLCTA15COD'
        LookupDisplay = 'PLCTA60DESCR'
        LookupSource = DSSQLContaCredito
        TabOrder = 3
        OnKeyDown = RxDBLookupCombo1KeyDown
      end
    end
  end
  object PanelDados: TPanel
    Left = 0
    Top = 0
    Width = 131
    Height = 213
    Align = alLeft
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 8
      Width = 95
      Height = 13
      Caption = 'Data do Pagamento'
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
      DataField = 'PAGADPAGTO'
      DataSource = DSSQLPagamento
      NumGlyphs = 2
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 4
      Top = 63
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'PAGAN3VLRPAGTO'
      DataSource = DSSQLPagamento
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 4
      Top = 103
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'PAGAN3VLRJURO'
      DataSource = DSSQLPagamento
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 4
      Top = 143
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'PAGAN3VLRMULTA'
      DataSource = DSSQLPagamento
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 4
      Top = 180
      Width = 120
      Height = 21
      TabStop = False
      DataField = 'PAGAN3VLRDESC'
      DataSource = DSSQLPagamento
      TabOrder = 4
    end
  end
  object PanelRodape: TPanel
    Left = 0
    Top = 213
    Width = 386
    Height = 156
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 382
      Height = 103
      Align = alTop
      TabOrder = 0
      object Label14: TLabel
        Left = 1
        Top = 1
        Width = 380
        Height = 13
        Align = alTop
        Caption = 'Hist'#243'rico'
      end
      object DBMemoHist: TDBMemo
        Left = 1
        Top = 38
        Width = 380
        Height = 64
        Align = alBottom
        BorderStyle = bsNone
        DataField = 'PAGAA254HISTORICO'
        DataSource = DSSQLPagamento
        MaxLength = 254
        TabOrder = 1
        OnExit = DBMemoHistExit
      end
      object ComboHistPadrao: TRxDBLookupCombo
        Left = 0
        Top = 15
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
      Top = 105
      Width = 382
      Height = 49
      Align = alTop
      TabOrder = 1
      object Label15: TLabel
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
        DataSource = DSSQLPagamento
        LookupField = 'TPLQICOD'
        LookupDisplay = 'TPLQA60DESCR'
        LookupSource = DSSQLTipoLiquidacao
        TabOrder = 0
      end
    end
  end
  object SQLPagamento: TRxQuery
    AfterOpen = SQLPagamentoAfterOpen
    BeforePost = SQLPagamentoBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'PAGAMENTO'
      'WHERE'
      'CTPGA13ID = :CTPGA13ID'
      'and'
      'PAGAICOD  = :PAGAICOD')
    Macros = <>
    Left = 208
    Top = 89
    ParamData = <
      item
        DataType = ftString
        Name = 'CTPGA13ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PAGAICOD'
        ParamType = ptUnknown
      end>
    object SQLPagamentoCTPGA13ID: TStringField
      FieldName = 'CTPGA13ID'
      Origin = 'DB.PAGAMENTO.CTPGA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPagamentoPAGAICOD: TIntegerField
      FieldName = 'PAGAICOD'
      Origin = 'DB.PAGAMENTO.PAGAICOD'
    end
    object SQLPagamentoPAGADPAGTO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'PAGADPAGTO'
      Origin = 'DB.PAGAMENTO.PAGADPAGTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLPagamentoPAGAN3VLRPAGTO: TFloatField
      DisplayLabel = 'Vlr.Pago'
      FieldName = 'PAGAN3VLRPAGTO'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRPAGTO'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoPAGAN3VLRJURO: TFloatField
      DisplayLabel = 'Vlr.Juros'
      FieldName = 'PAGAN3VLRJURO'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRJURO'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoPAGAN3VLRMULTA: TFloatField
      DisplayLabel = 'Vlr.Multa'
      FieldName = 'PAGAN3VLRMULTA'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRMULTA'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoPAGAN3VLRDESC: TFloatField
      DisplayLabel = 'Vlr.Desc'
      FieldName = 'PAGAN3VLRDESC'
      Origin = 'DB.PAGAMENTO.PAGAN3VLRDESC'
      DisplayFormat = '#,##0.00'
    end
    object SQLPagamentoVlrTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VlrTotal'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLPagamentoPLCTA15CREDITO: TStringField
      FieldName = 'PLCTA15CREDITO'
      Origin = 'DB.PAGAMENTO.PLCTA15CREDITO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CREDITOLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CREDITOLookup'
      LookupDataSet = SQLContaDebito
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CREDITO'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODJUROCRED: TStringField
      FieldName = 'PLCTA15CODJUROCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODJUROCRED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODJUROCREDLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODJUROCREDLookup'
      LookupDataSet = SQLContaDebito
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODJUROCRED'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODMULTCRED: TStringField
      FieldName = 'PLCTA15CODMULTCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODMULTCRED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODMULTCREDLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODMULTCREDLookup'
      LookupDataSet = SQLContaDebito
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODMULTCRED'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODDESCCRED: TStringField
      FieldName = 'PLCTA15CODDESCCRED'
      Origin = 'DB.PAGAMENTO.PLCTA15CODDESCCRED'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODDESCCREDLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODDESCCREDLookup'
      LookupDataSet = SQLContaDebito
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODDESCCRED'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15DEBITO: TStringField
      FieldName = 'PLCTA15DEBITO'
      Origin = 'DB.PAGAMENTO.PLCTA15DEBITO'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15DEBITOLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15DEBITOLookup'
      LookupDataSet = SQLContaDebito
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15DEBITO'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODJURODEB: TStringField
      FieldName = 'PLCTA15CODJURODEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODJURODEB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODJURODEBLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODJURODEBLookup'
      LookupDataSet = SQLContaDebito
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODJURODEB'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODMULTDEB: TStringField
      FieldName = 'PLCTA15CODMULTDEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODMULTDEB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODMULTDEBLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODMULTDEBLookup'
      LookupDataSet = SQLContaDebito
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODMULTDEB'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPLCTA15CODDESCDEB: TStringField
      FieldName = 'PLCTA15CODDESCDEB'
      Origin = 'DB.PAGAMENTO.PLCTA15CODDESCDEB'
      Visible = False
      FixedChar = True
      Size = 15
    end
    object SQLPagamentoPLCTA15CODDESCDEBLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PLCTA15CODDESCDEBLookup'
      LookupDataSet = SQLContaDebito
      LookupKeyFields = 'PLCTA15COD'
      LookupResultField = 'PLCTA60DESCR'
      KeyFields = 'PLCTA15CODDESCDEB'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLPagamentoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PAGAMENTO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLPagamentoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PAGAMENTO.REGISTRO'
    end
    object SQLPagamentoPAGAA254HISTORICO: TStringField
      FieldName = 'PAGAA254HISTORICO'
      Origin = 'DB.PAGAMENTO.PAGAA254HISTORICO'
      Size = 254
    end
    object SQLPagamentoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.PAGAMENTO.TPLQICOD'
    end
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
    Top = 117
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
    Top = 117
  end
  object DSSQLPagamento: TDataSource
    DataSet = SQLPagamento
    Left = 180
    Top = 89
  end
  object DSSQLContaCredito: TDataSource
    DataSet = SQLContaCredito
    Left = 236
    Top = 117
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
    Top = 117
  end
  object SQLHistoricoPadrao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM HISTORICOPADRAO')
    Macros = <>
    Left = 264
    Top = 89
  end
  object DSSQLHistoricoPadrao: TDataSource
    DataSet = SQLHistoricoPadrao
    Left = 236
    Top = 89
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
    Top = 145
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
    Top = 145
  end
end
