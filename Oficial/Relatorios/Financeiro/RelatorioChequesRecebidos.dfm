inherited FormRelatorioChequeRecebidos: TFormRelatorioChequeRecebidos
  Left = 249
  Top = 81
  Caption = 'Relat'#243'rio de Cheques Recebidos'
  ClientHeight = 522
  ClientWidth = 798
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 506
    Width = 798
  end
  inherited ScrollBox: TScrollBox
    Width = 798
    Height = 506
    inherited PanelCentro: TPanel
      Left = 186
      Top = 91
      Height = 391
      object Label5: TLabel [0]
        Left = 18
        Top = 205
        Width = 50
        Height = 13
        Caption = 'Portador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel [1]
        Left = 18
        Top = 242
        Width = 49
        Height = 13
        Caption = 'Situa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel [2]
        Left = 19
        Top = 281
        Width = 39
        Height = 13
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited BtnVisualizar: TSpeedButton
        Left = 288
        Top = 355
        Caption = '  &Visualizar'
      end
      object Label8: TLabel [4]
        Left = 21
        Top = 316
        Width = 54
        Height = 13
        Caption = 'Protocolo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited EmpresaGroup: TGroupBox
        Top = -2
        Height = 124
        inherited ListaEmpresas: TListBox
          Height = 52
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 192
        Top = 123
        Width = 228
        TabOrder = 2
        inherited Label3: TLabel
          Left = 5
          Top = 19
        end
        inherited Label4: TLabel
          Left = 115
          Top = 19
        end
        inherited De: TDateEdit
          Left = 23
          Top = 15
        end
        inherited Ate: TDateEdit
          Left = 137
          Top = 15
        end
      end
      object RadioTipoRel: TRadioGroup
        Left = 13
        Top = 164
        Width = 406
        Height = 37
        Caption = 'Tipo'
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Abertos'
          'Quitados'
          'Depositados'
          'Lan'#231'ados')
        ParentFont = False
        TabOrder = 3
      end
      object ComboPortador: TDBLookupComboBox
        Left = 15
        Top = 218
        Width = 405
        Height = 21
        KeyField = 'PORTICOD'
        ListField = 'PORTA60DESCR'
        ListSource = DSSQLPortador
        TabOrder = 4
        OnKeyDown = ComboPortadorKeyDown
      end
      object ComboAlinea: TDBLookupComboBox
        Left = 15
        Top = 255
        Width = 405
        Height = 21
        KeyField = 'ALINICOD'
        ListField = 'ALINA30DESCR'
        ListSource = DSSQLAlinea
        TabOrder = 5
        OnKeyDown = ComboPortadorKeyDown
      end
      object ComboCliente: TDBLookupComboBox
        Left = 15
        Top = 293
        Width = 405
        Height = 21
        KeyField = 'CLIEA13ID'
        ListField = 'CLIEA60RAZAOSOC'
        ListSource = DSSQLCliente
        TabOrder = 6
        OnKeyDown = ComboPortadorKeyDown
      end
      object RadioData: TRadioGroup
        Left = 12
        Top = 123
        Width = 179
        Height = 41
        Caption = 'Data'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Vecto'
          'Emis'
          'Dep')
        ParentFont = False
        TabOrder = 1
      end
      object ComboProtocolo: TDBLookupComboBox
        Left = 15
        Top = 328
        Width = 405
        Height = 21
        KeyField = 'PRCHICOD'
        ListField = 'PRCHA30NOME'
        ListSource = DSSQLProtocolo
        TabOrder = 7
        OnKeyDown = ComboPortadorKeyDown
      end
      object CKImprimeDadosCliente: TCheckBox
        Left = 17
        Top = 354
        Width = 140
        Height = 17
        Caption = 'Imprimir dados do cliente'
        TabOrder = 8
      end
      object CKResumoCheques: TCheckBox
        Left = 17
        Top = 369
        Width = 140
        Height = 17
        Caption = 'Resumo de Cheques'
        TabOrder = 9
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 794
      inherited PanelCabecalho: TPanel
        Width = 794
        inherited PanelNavigator: TPanel
          Width = 794
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 794
          end
        end
      end
    end
  end
  inherited TblTemporaria: TTable
    TableName = 'ChequeRecebido.Db'
    object TblTemporariaCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object TblTemporariaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object TblTemporariaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object TblTemporariaCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object TblTemporariaCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object TblTemporariaCTRCN2VLR: TBCDField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCTRCN2DESCFIN: TBCDField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCTRCN2TOTREC: TBCDField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object TblTemporariaCUPON2TOTITENS: TBCDField
      FieldName = 'CUPON2TOTITENS'
      Precision = 15
      Size = 3
    end
    object TblTemporariaCUPON2ACRESC: TBCDField
      FieldName = 'CUPON2ACRESC'
      Precision = 15
      Size = 3
    end
    object TblTemporariaPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object TblTemporariaCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object TblTemporariaBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object TblTemporariaCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object TblTemporariaCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object TblTemporariaCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object TblTemporariaCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object TblTemporariaALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object TblTemporariaCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaPORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object TblTemporariaALINA30DESCR: TStringField
      FieldName = 'ALINA30DESCR'
      Origin = 'DB.ALINEA.ALINA30DESCR'
      FixedChar = True
      Size = 30
    end
    object TblTemporariaCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object TblTemporariaClienteEndRes: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEndRes'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60ENDRES'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object TblTemporariaClienteCidRes: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCidRes'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDRES'
      KeyFields = 'CLIEA13ID'
      Size = 30
      Lookup = True
    end
    object TblTemporariaClienteBaiRes: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteBaiRes'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60BAIRES'
      KeyFields = 'CLIEA13ID'
      Size = 30
      Lookup = True
    end
    object TblTemporariaClienteCEPRes: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCEPRes'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA8CEPRES'
      KeyFields = 'CLIEA13ID'
      Size = 10
      Lookup = True
    end
    object TblTemporariaClienteFone1: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteFone1'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA15FONE1'
      KeyFields = 'CLIEA13ID'
      Lookup = True
    end
    object TblTemporariaClienteEmpresa: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEmpresa'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60EMPRESA'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object TblTemporariaClienteEmpresaEnd: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEmpresaEnd'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60ENDEMPRESA'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object TblTemporariaClienteEmpresaBairro: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEmpresaBairro'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60BAIEMPRESA'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object TblTemporariaClienteEmpresaCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEmpresaCidade'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60CIDEMPRESA'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
    object TblTemporariaClienteEmpresaFone: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEmpresaFone'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA15FONEEMPRESA'
      KeyFields = 'CLIEA13ID'
      Lookup = True
    end
    object TblTemporariaClienteProfissao: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteProfissao'
      LookupDataSet = SQLClienteAux
      LookupKeyFields = 'CLIEA13ID'
      LookupResultField = 'CLIEA60PROFISSAO'
      KeyFields = 'CLIEA13ID'
      Size = 60
      Lookup = True
    end
  end
  inherited FormStorageTemplate: TFormStorage
    StoredProps.Strings = (
      'CKResumoCheques.Checked')
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PORTADOR'
      'order by PORTA60DESCR')
    Macros = <>
    Left = 454
    Top = 5
  end
  object SQLAlinea: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ALINEA'
      'order by ALINA30DESCR')
    Macros = <>
    Left = 510
    Top = 5
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CLIENTE'
      'order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 566
    Top = 5
  end
  object SQLCheque: TRxQuery
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
      '  CR.CTRCN2VLR,'
      '  CR.CTRCN2DESCFIN,'
      '  CR.CTRCN2TOTREC,'
      '  CR.CTRCDULTREC,'
      '  CR.PORTICOD,'
      '  CR.CTRCA5TIPOPADRAO,'
      '  CR.CUPOA13ID,'
      '  CR.BANCA5CODCHQ,'
      '  CR.CTRCA10AGENCIACHQ,'
      '  CR.CTRCA15CONTACHQ,'
      '  CR.CTRCA15NROCHQ,'
      '  CR.CTRCA60TITULARCHQ,'
      '  CR.CTRCA20CGCCPFCHQ,'
      '  CR.CTRCDDEPOSCHQ,'
      '  CR.ALINICOD,'
      '  CL.CLIEA60RAZAOSOC,'
      '  PT.PORTA60DESCR,'
      '  AL.ALINA30DESCR,'
      '  CR.CTRCDEMIS,'
      '  CR.PRCHICOD,'
      '  CUP.CUPON2ACRESC,'
      '  CUP.CUPON2TOTITENS'
      'from'
      '  CONTASRECEBER CR'
      '  left outer join PORTADOR PT on PT.PORTICOD   = CR.PORTICOD'
      '  left outer join ALINEA AL   on AL.ALINICOD   = CR.ALINICOD'
      '  left outer join CLIENTE CL  on CL.CLIEA13ID  = CR.CLIEA13ID'
      '  left outer join CUPOM CUP   on CUP.CUPOA13ID = CR.CUPOA13ID'
      'where'
      '  (%MCampoFiltro) and'
      '  CTRCCSTATUS <> '#39'C'#39' and'
      '  %MFiltro Between %MDataInicial and %MDataFinal and'
      '  CR.CTRCA5TIPOPADRAO in ('#39'CHQ'#39', '#39'CHQP'#39', '#39'CHQV'#39') and'
      '  (%MEmpresa) and (%MPortador) and (%MProtocolo) and'
      '  (%MAlinea) and'
      '  (%MCliente)'
      'Order by'
      '  CR.CTRCDVENC ASC,'
      '  CR.CTRCA60TITULARCHQ ASC')
    Macros = <
      item
        DataType = ftString
        Name = 'MCampoFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataInicial'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDataFinal'
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
        Name = 'MPortador'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MProtocolo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MAlinea'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 422
    Top = 5
    object SQLChequeCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequeEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLChequeTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLChequeCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequeCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLChequeCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLChequeCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLChequeCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLChequeCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLChequeCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLChequeCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLChequePORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLChequeCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLChequeCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLChequeBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLChequeCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLChequeCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLChequeCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLChequeCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLChequeCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLChequeCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLChequeALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLChequeCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLChequePORTA60DESCR: TStringField
      FieldName = 'PORTA60DESCR'
      Origin = 'DB.PORTADOR.PORTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLChequeALINA30DESCR: TStringField
      FieldName = 'ALINA30DESCR'
      Origin = 'DB.ALINEA.ALINA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLChequeCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLChequePRCHICOD: TIntegerField
      FieldName = 'PRCHICOD'
    end
    object SQLChequeCUPON2ACRESC: TFloatField
      FieldName = 'CUPON2ACRESC'
    end
    object SQLChequeCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 538
    Top = 5
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 594
    Top = 5
  end
  object DSSQLAlinea: TDataSource
    DataSet = SQLAlinea
    Left = 482
    Top = 5
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
    Left = 242
    Top = 4
  end
  object SQLProtocolo: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from PROTOCOLOCHEQ'
      'Order by PRCHA30NOME')
    Macros = <>
    Left = 625
    Top = 5
    object SQLProtocoloPRCHICOD: TIntegerField
      FieldName = 'PRCHICOD'
      Origin = 'DB.PROTOCOLOCHEQ.PRCHICOD'
    end
    object SQLProtocoloPRCHA30NOME: TStringField
      FieldName = 'PRCHA30NOME'
      Origin = 'DB.PROTOCOLOCHEQ.PRCHA30NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProtocolo: TDataSource
    DataSet = SQLProtocolo
    Left = 653
    Top = 5
  end
  object ppRptCheques: TppReport
    AutoStop = False
    DataPipeline = Pipe
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OnPreviewFormCreate = ppRptChequesPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 168
    Top = 3
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'Pipe'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 68527
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Listagem de Cheques por Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 5556
        mmWidth = 52705
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 13229
        mmWidth = 14111
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 18785
        mmWidth = 18203
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Endereco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 23283
        mmWidth = 16157
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 27781
        mmWidth = 10513
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114565
        mmTop = 27781
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 32279
        mmWidth = 7479
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fone Res:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 114565
        mmTop = 32279
        mmWidth = 16369
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 39158
        mmWidth = 15028
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Profissao:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 43656
        mmWidth = 15804
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Endereco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 48154
        mmWidth = 16157
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fone Com:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 114565
        mmTop = 52652
        mmWidth = 17427
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114565
        mmTop = 48154
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Vencto      '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 8202
        mmTop = 63765
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N.Cheque              '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 106892
        mmTop = 63765
        mmWidth = 29775
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 28840
        mmTop = 63765
        mmWidth = 10019
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 158750
        mmTop = 63765
        mmWidth = 8326
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CLIEA60RAZAOSOC'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 30692
        mmTop = 13229
        mmWidth = 56233
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCA20CGCCPFCHQ'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 30692
        mmTop = 18785
        mmWidth = 21731
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteEndRes'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 30692
        mmTop = 23283
        mmWidth = 57856
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteBaiRes'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 30692
        mmTop = 27781
        mmWidth = 17568
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteCidRes'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 139700
        mmTop = 27781
        mmWidth = 20673
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteCEPRes'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 30692
        mmTop = 32279
        mmWidth = 15804
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteFone1'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 139700
        mmTop = 32279
        mmWidth = 13829
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteEmpresaFone'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 139700
        mmTop = 52652
        mmWidth = 33302
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteEmpresaEnd'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 30427
        mmTop = 48154
        mmWidth = 31468
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteProfissao'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 30427
        mmTop = 43656
        mmWidth = 25964
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteEmpresa'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 30427
        mmTop = 39158
        mmWidth = 28081
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteEmpresaCidade'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 139700
        mmTop = 48154
        mmWidth = 36477
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4163
        mmLeft = 7938
        mmTop = 52652
        mmWidth = 10513
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteEmpresaBairro'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 30427
        mmTop = 52652
        mmWidth = 34713
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 7408
        mmTop = 68263
        mmWidth = 178594
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCDVENC'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 7673
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCA15NROCHQ'
        DataPipeline = Pipe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 106892
        mmTop = 265
        mmWidth = 11853
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CTRCN2VLR'
        DataPipeline = Pipe
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'Pipe'
        mmHeight = 4163
        mmLeft = 156351
        mmTop = 265
        mmWidth = 10866
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28840
        mmTop = 265
        mmWidth = 70908
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'CLIEA13ID'
      DataPipeline = Pipe
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'Pipe'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLine1: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 135996
          mmTop = 265
          mmWidth = 50006
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CTRCN2VLR'
          DataPipeline = Pipe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'Pipe'
          mmHeight = 4233
          mmLeft = 136525
          mmTop = 1058
          mmWidth = 30692
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object SQLClienteAux: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CLIENTE')
    Macros = <>
    Left = 142
    Top = 45
  end
  object Pipe: TppBDEPipeline
    DataSource = DSTblTemporaria
    CloseDataSource = True
    UserName = 'Pipe'
    Left = 138
    Top = 3
  end
end
