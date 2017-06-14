inherited FormRelatorioContasRecebidas: TFormRelatorioContasRecebidas
  Left = 272
  Top = 118
  Caption = 'Relat'#243'rio de Contas Recebidas'
  ClientHeight = 556
  ClientWidth = 806
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 540
    Width = 806
  end
  inherited ScrollBox: TScrollBox
    Width = 806
    Height = 540
    inherited PanelCentro: TPanel
      Left = 12
      Top = 82
      Width = 763
      Height = 439
      inherited BtnVisualizar: TSpeedButton
        Left = 267
        Top = 400
        Width = 154
      end
      inherited EmpresaGroup: TGroupBox
        Height = 124
        inherited ComboEmpresa: TRxDBLookupCombo
          OnChange = ComboEmpresaChange
        end
        inherited ListaEmpresas: TListBox
          Height = 52
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 129
        Caption = 'Per'#237'o&do Recebimento'
      end
      object GroupCliente: TGroupBox
        Left = 12
        Top = 257
        Width = 407
        Height = 40
        Caption = '&Cliente '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object ComboCliente: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 390
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'CLIEA13ID'
          LookupDisplay = 'CLIEA60RAZAOSOC'
          LookupSource = DSSQLCliente
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupNumerario: TGroupBox
        Left = 12
        Top = 300
        Width = 407
        Height = 40
        Caption = '&Numer'#225'rio '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object ComboNumerario: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 390
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'NUMEICOD'
          LookupDisplay = 'NUMEA30DESCR'
          LookupSource = DSSQLNumerario
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupBox4: TGroupBox
        Left = 422
        Top = 4
        Width = 337
        Height = 193
        Caption = '&Terminais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        object ListTerminal: TRxCheckListBox
          Left = 2
          Top = 15
          Width = 333
          Height = 176
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          Color = 15461355
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GraySelection = True
          ItemHeight = 16
          MultiSelect = True
          ParentFont = False
          Style = lbVirtual
          TabOrder = 0
          InternalVersion = 202
        end
      end
      object CheckCupom: TCheckBox
        Left = 430
        Top = 329
        Width = 217
        Height = 17
        Caption = '&Mostar apenas contas com Cupom'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object CheckTerminal: TCheckBox
        Left = 427
        Top = 202
        Width = 163
        Height = 17
        Caption = '&Filtrar Por Terminal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = CheckTerminalClick
      end
      object GroupPortador: TGroupBox
        Left = 421
        Top = 230
        Width = 337
        Height = 41
        Caption = '&Portador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object ComboPortador: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 324
          Height = 21
          DropDownCount = 8
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
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object GroupTpDoc: TGroupBox
        Left = 421
        Top = 273
        Width = 337
        Height = 40
        Caption = 'Tipo de &Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object ComboTipoDoc: TRxDBLookupCombo
          Left = 8
          Top = 14
          Width = 324
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'TPDCICOD'
          LookupDisplay = 'TPDCA60DESCR'
          LookupSource = DSSQLTipoDoc
          ParentFont = False
          TabOrder = 0
          OnKeyDown = ComboClienteKeyDown
        end
      end
      object CheckPortTipoDoc: TCheckBox
        Left = 430
        Top = 314
        Width = 243
        Height = 17
        Caption = '&Mostrar Portador e Tipo de Documento'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 10
      end
      object CheckOrdemContrato: TCheckBox
        Left = 430
        Top = 344
        Width = 243
        Height = 17
        Caption = '&Ordenar Por Contrato'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object GroupPlanoContas: TGroupBox
        Left = 13
        Top = 344
        Width = 407
        Height = 43
        Caption = ' Plano de Contas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object ComboConta: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 397
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DisplayEmpty = 'Todas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'PLCTA15COD'
          LookupDisplay = 'PLCTA15COD;PLCTA60DESCR'
          LookupDisplayIndex = 1
          LookupSource = DSSQLPlanoContas
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 12
        Top = 170
        Width = 407
        Height = 41
        Caption = 'Per'#237'o&do Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        object Label5: TLabel
          Left = 8
          Top = 18
          Width = 15
          Height = 13
          Caption = '&De'
          FocusControl = DeVenc
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 131
          Top = 18
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = AteVenc
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DeVenc: TDateEdit
          Left = 39
          Top = 14
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
        end
        object AteVenc: TDateEdit
          Left = 153
          Top = 14
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
        end
      end
      object ckIncluiVendasVista: TCheckBox
        Left = 430
        Top = 359
        Width = 258
        Height = 17
        Caption = 'Incluir as Vendas Realizadas a Vista'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object CheckNroDuplic: TCheckBox
        Left = 430
        Top = 374
        Width = 153
        Height = 17
        Caption = '&Imprime Nro. Duplicata'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnClick = CheckNroDuplicClick
      end
      object CkImprimeIDCupom: TCheckBox
        Left = 430
        Top = 388
        Width = 153
        Height = 17
        Caption = 'Imprime ID Contrato'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 214
        Width = 407
        Height = 41
        Caption = ' Contas Emitidas no Per'#237'odo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        object Label7: TLabel
          Left = 8
          Top = 18
          Width = 15
          Height = 13
          Caption = '&De'
          FocusControl = EmissInicial
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 131
          Top = 18
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = EmissFinal
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EmissInicial: TDateEdit
          Left = 39
          Top = 14
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 0
        end
        object EmissFinal: TDateEdit
          Left = 153
          Top = 14
          Width = 87
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          YearDigits = dyFour
          TabOrder = 1
        end
      end
      object CheckNossoNumero: TCheckBox
        Left = 587
        Top = 374
        Width = 138
        Height = 17
        Caption = 'Imprimir Nosso Nro.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnClick = CheckNossoNumeroClick
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 802
      inherited PanelCabecalho: TPanel
        Width = 802
        inherited PanelNavigator: TPanel
          Width = 802
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 802
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'RelContasRecebidas.db'
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
    end
    object TblTemporariaTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
    end
    object TblTemporariaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object TblTemporariaRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
    end
    object TblTemporariaRECEN2DESC: TFloatField
      FieldName = 'RECEN2DESC'
    end
    object TblTemporariaRECEN2VLRJURO: TFloatField
      FieldName = 'RECEN2VLRJURO'
    end
    object TblTemporariaRECEN2VLRMULTA: TFloatField
      FieldName = 'RECEN2VLRMULTA'
    end
    object TblTemporariaRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object TblTemporariaCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object TblTemporariaCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object TblTemporariaEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object TblTemporariaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object TblTemporariaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCTRCA15NOSSONUMERO: TStringField
      FieldName = 'CTRCA15NOSSONUMERO'
      Size = 15
    end
  end
  object SQLNumerario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from NUMERARIO'
      'order by NUMEA30DESCR')
    Left = 206
    Top = 5
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLNumerario
    Left = 234
    Top = 5
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  RECEBIMENTO.CTRCA13ID,'
      '  RECEBIMENTO.EMPRICODREC,'
      '  RECEBIMENTO.TERMICODREC,'
      '  RECEBIMENTO.USUAICOD,'
      '  RECEBIMENTO.RECEDRECTO,'
      '  RECEBIMENTO.RECEN2DESC,'
      '  RECEBIMENTO.RECEN2VLRJURO,'
      '  RECEBIMENTO.RECEN2VLRMULTA,'
      '  RECEBIMENTO.RECEN2VLRRECTO as RECEN2VLRRECTO,'
      '  CONTASRECEBER.EMPRICOD,'
      '  CONTASRECEBER.CTRCDVENC,'
      '  CONTASRECEBER.CTRCINROPARC,'
      '  CONTASRECEBER.CUPOA13ID,'
      '  CONTASRECEBER.NOFIA13ID,'
      '  CONTASRECEBER.PDVDA13ID,'
      '  CONTASRECEBER.CLIEA13ID,'
      '  CONTASRECEBER.CTRCN2VLR,'
      '  CONTASRECEBER.EMPRICODULTREC,'
      '  (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC) AS SALDO,'
      '  CONTASRECEBER.NUMEICOD,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  TIPODOCUMENTO.TPDCA60DESCR,'
      '  PORTADOR.PORTA60DESCR, '
      '  CONTASRECEBER.CTRCA15NOSSONUMERO'
      'from'
      
        ' RECEBIMENTO inner join CONTASRECEBER on RECEBIMENTO.CTRCA13ID =' +
        ' CONTASRECEBER.CTRCA13ID'
      
        ' left outer join CLIENTE         on CONTASRECEBER.CLIEA13ID = CL' +
        'IENTE.CLIEA13ID'
      
        ' left outer join TIPODOCUMENTO   on CONTASRECEBER.TPDCICOD  = TI' +
        'PODOCUMENTO.TPDCICOD'
      
        ' left outer join PORTADOR        on CONTASRECEBER.PORTICOD  = PO' +
        'RTADOR.PORTICOD'
      'where'
      '  (CONTASRECEBER.CTRCCSTATUS = "A") and'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MDataVenc) and'
      '  (%MDataEmiss) and'
      '  (%MCliente) and'
      '  (%MNumerario) and'
      '  (%MTerminal) and'
      '  (%MCupom) and'
      '  (%MTipoDoc) and'
      '  (%MPortador) and'
      '  (%MConta)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
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
        Name = 'MDataVenc'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataEmiss'
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
        Name = 'MNumerario'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCupom'
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
        Name = 'MPortador'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MConta'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 426
    Top = 5
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
    end
    object SQLContasReceberTERMICODREC: TIntegerField
      FieldName = 'TERMICODREC'
    end
    object SQLContasReceberUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object SQLContasReceberRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
    end
    object SQLContasReceberRECEN2DESC: TFloatField
      FieldName = 'RECEN2DESC'
    end
    object SQLContasReceberRECEN2VLRJURO: TFloatField
      FieldName = 'RECEN2VLRJURO'
    end
    object SQLContasReceberRECEN2VLRMULTA: TFloatField
      FieldName = 'RECEN2VLRMULTA'
    end
    object SQLContasReceberRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCA15NOSSONUMERO: TStringField
      FieldName = 'CTRCA15NOSSONUMERO'
      Size = 15
    end
  end
  object SQLCliente: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Left = 298
    Top = 289
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 326
    Top = 289
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
    Left = 514
    Top = 5
  end
  object SQLPortador: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'PORTICOD,'
      'PORTA60DESCR'
      'FROM'
      'PORTADOR'
      'ORDER BY'
      'PORTA60DESCR')
    Left = 480
    Top = 280
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
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 508
    Top = 280
  end
  object SQLTipoDoc: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'TPDCICOD,'
      'TPDCA60DESCR'
      'FROM'
      'TIPODOCUMENTO'
      'ORDER BY'
      'TPDCA60DESCR')
    Left = 480
    Top = 320
    object SQLTipoDocTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.TIPODOCUMENTO.TPDCICOD'
    end
    object SQLTipoDocTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      Origin = 'DB.TIPODOCUMENTO.TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object DSSQLTipoDoc: TDataSource
    DataSet = SQLTipoDoc
    Left = 508
    Top = 320
  end
  object SQLPlanoContas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PlanodeContas'
      'Where PLCTCTIPOSALDO = '#39'C'#39' and PLCTCANALSINT = '#39'A'#39
      'Order by PLCTA60DESCR')
    Macros = <>
    Left = 650
    Top = 5
    object SQLPlanoContasPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContasPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPlanoContas: TDataSource
    DataSet = SQLPlanoContas
    Left = 678
    Top = 5
  end
  object SQLCupomNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  cast(CUPOMNUMERARIO.CUPOA13ID as Char(30))as CTRCA13ID,'
      '  CUPOM.EMPRICOD as EMPRICODREC,'
      '  CUPOM.CUPODEMIS as RECEDRECTO,'
      '  0.0 as RECEN2DESC,'
      '  0.0 as RECEN2VLRJURO,'
      '  0.0 as RECEN2VLRMULTA,'
      '  CUPOMNUMERARIO.CPNMN2VLR as RECEN2VLRRECTO,'
      '  CUPOM.EMPRICOD,'
      '  CUPOM.CUPODEMIS as CTRCDVENC,'
      '  0 as CTRCINROPARC,'
      '  CUPOMNUMERARIO.CUPOA13ID,'
      '  CUPOMNUMERARIO.CUPOA13ID as NOFIA13ID,'
      '  CUPOMNUMERARIO.CUPOA13ID as PDVDA13ID,'
      '  CUPOM.CLIEA13ID,'
      '  CUPOMNUMERARIO.CPNMN2VLR as CTRCN2VLR,'
      '  CUPOM.EMPRICOD as EMPRICODULTREC,'
      '  0.0 as SALDO,'
      '  CUPOMNUMERARIO.NUMEICOD,'
      '  CLIENTE.CLIEA60RAZAOSOC,'
      '  cast('#39'ENTRADA'#39' as char(30)) as TPDCA60DESCR,'
      '  cast('#39'CAIXA'#39'   as char(60)) as PORTA60DESCR'
      'from'
      
        '  CUPOMNUMERARIO inner join CUPOM     on CUPOMNUMERARIO.CUPOA13I' +
        'D = CUPOM.CUPOA13ID'
      
        '  left outer join CLIENTE             on CUPOM.CLIEA13ID        ' +
        '  = CLIENTE.CLIEA13ID'
      'where'
      '  (CUPOM.CUPOCSTATUS = "A") and'
      '  (%MEmpresa) and'
      '  (%MData) and'
      '  (%MCliente) and'
      '  (%MNumerario) and'
      '  (CUPOMNUMERARIO.CPNMCAUTENT = "S") and'
      '  (%MTerminal) and'
      '  (%MCupom)')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
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
        Name = 'MCliente'
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
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCupom'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 456
    Top = 5
    object SQLCupomNumerarioCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      FixedChar = True
      Size = 30
    end
    object SQLCupomNumerarioEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
    end
    object SQLCupomNumerarioRECEDRECTO: TDateTimeField
      FieldName = 'RECEDRECTO'
    end
    object SQLCupomNumerarioRECEN2DESC: TFloatField
      FieldName = 'RECEN2DESC'
    end
    object SQLCupomNumerarioRECEN2VLRJURO: TFloatField
      FieldName = 'RECEN2VLRJURO'
    end
    object SQLCupomNumerarioRECEN2VLRMULTA: TFloatField
      FieldName = 'RECEN2VLRMULTA'
    end
    object SQLCupomNumerarioRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
    end
    object SQLCupomNumerarioEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object SQLCupomNumerarioCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
    end
    object SQLCupomNumerarioCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
    end
    object SQLCupomNumerarioCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
    end
    object SQLCupomNumerarioEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
    end
    object SQLCupomNumerarioSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLCupomNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object SQLCupomNumerarioCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLCupomNumerarioTPDCA60DESCR: TStringField
      FieldName = 'TPDCA60DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLCupomNumerarioPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
