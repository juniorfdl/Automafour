inherited FormTelaAssistenteContratosMensais: TFormTelaAssistenteContratosMensais
  Left = 455
  Top = 223
  Caption = 'Gera'#231#227'o de Contratos Mensais'
  ClientWidth = 608
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Width = 608
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 608
      Height = 86
      Align = alTop
      Color = 16249066
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 5
        Top = 3
        Width = 596
        Height = 78
        Caption = ' Filtros '
        TabOrder = 0
        object Label8: TLabel
          Left = 9
          Top = 35
          Width = 94
          Height = 13
          Caption = 'Tipo de Documento'
        end
        object Label2: TLabel
          Left = 11
          Top = 15
          Width = 103
          Height = 13
          Caption = 'Data Vencto Contrato'
        end
        object Label3: TLabel
          Left = 307
          Top = 35
          Width = 104
          Height = 13
          Caption = 'Portador da Cobran'#231'a'
        end
        object Label5: TLabel
          Left = 307
          Top = 15
          Width = 108
          Height = 13
          Caption = 'Data Emiss'#227'o Contrato'
        end
        object edtVencimento: TDateEdit
          Left = 122
          Top = 12
          Width = 109
          Height = 19
          NumGlyphs = 2
          YearDigits = dyFour
          TabOrder = 0
        end
        object ComboTipoDoc: TRxDBLookupCombo
          Left = 7
          Top = 49
          Width = 290
          Height = 21
          DropDownCount = 8
          DisplayEmpty = '...'
          LookupField = 'TPDCICOD'
          LookupDisplay = 'TPDCA60DESCR'
          LookupSource = DSSQLTipoDocumento
          TabOrder = 2
        end
        object ComboPortador: TRxDBLookupCombo
          Left = 302
          Top = 49
          Width = 285
          Height = 21
          DropDownCount = 8
          DataField = 'PORTICOD'
          DisplayEmpty = '...'
          LookupField = 'PORTICOD'
          LookupDisplay = 'PORTA60DESCR'
          LookupSource = DSSQLPortador
          TabOrder = 3
        end
        object edtEmissao: TDateEdit
          Left = 418
          Top = 12
          Width = 109
          Height = 19
          NumGlyphs = 2
          YearDigits = dyFour
          TabOrder = 1
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 86
      Width = 608
      Height = 197
      Align = alClient
      Ctl3D = False
      DataSource = DataSource1
      FixedColor = 10053171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'EMI'
          Title.Caption = 'Emiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCI'
          Title.Caption = 'Venc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIEA60RAZAOSOC'
          Title.Caption = 'Nome do Cliente'
          Width = 335
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 92
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 0
      Top = 283
      Width = 608
      Height = 38
      Align = alBottom
      Color = 16249066
      TabOrder = 2
      object Label4: TLabel
        Left = 301
        Top = 14
        Width = 155
        Height = 13
        Caption = 'Valor Total de Contratos....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtValorTotal: TCurrencyEdit
        Left = 465
        Top = 9
        Width = 122
        Height = 21
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 608
    inherited PanelCabecalho: TPanel
      Width = 608
      inherited PanelNavigator: TPanel
        Width = 608
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 608
          inherited BtnFecharTela: TSpeedButton
            Left = 516
          end
          object BtnSelecionarDoc: TSpeedButton
            Tag = 3
            Left = 12
            Top = 4
            Width = 100
            Height = 25
            Cursor = crHandPoint
            Hint = 'Filtrar Contas a Receber'
            Caption = '&Selecionar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              96040000424D9604000000000000360000002800000012000000140000000100
              18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
              B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
              0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
              A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
              00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
              9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
              E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
              B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
              0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
              86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
              B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
              000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
              9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
              E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
              B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
              9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
              A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
              869000000084A8B469869000000084A8B4698690000000698690546B73000000
              000000000000000000000000000000000000000099B7C069869000000084A8B4
              546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
              E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
              000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
              E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
              E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
              86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
              0000000000000000000000000000000000000000AAC3CA698690000000000000
              0000000000000000000000000000000000000000000000000000000000E0E4E0
              E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
              E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
              E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
              E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
              E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentFont = False
            Spacing = 3
            OnClick = BtnSelecionarDocClick
          end
          object btGerar: TSpeedButton
            Tag = 3
            Left = 122
            Top = 4
            Width = 121
            Height = 25
            Cursor = crHandPoint
            Hint = 'Gerar Contas a Receber'
            Caption = '&Gerar C Receber'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777700000007777777777777777700000007777777774F77777700000007777
              7777444F77777000000077777774444F777770000000700000444F44F7777000
              000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
              74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
              8777F07777774000000070FFFF00007777777000000070F88707077777777000
              000070FFFF007777777770000000700000077777777770000000777777777777
              777770000000}
            ParentFont = False
            Spacing = 3
            OnClick = btGerarClick
          end
        end
      end
    end
  end
  inherited AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Left = 501
    Top = 8
  end
  object RxTable: TRxMemoryData
    FieldDefs = <
      item
        Name = 'EMI'
        DataType = ftDate
      end
      item
        Name = 'VENCI'
        DataType = ftDate
      end
      item
        Name = 'DESCR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end>
    BeforeDelete = RxTableBeforeDelete
    Left = 118
    Top = 8
    object RxTableEMI: TDateField
      DisplayWidth = 11
      FieldName = 'EMI'
    end
    object RxTableVENCI: TDateField
      DisplayWidth = 11
      FieldName = 'VENCI'
      EditMask = '99/99/9999'
    end
    object RxTableCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object RxTableCLIEA60RAZAOSOC: TStringField
      DisplayWidth = 50
      FieldName = 'CLIEA60RAZAOSOC'
      Size = 60
    end
    object RxTableVALOR: TFloatField
      DisplayWidth = 14
      FieldName = 'VALOR'
      currency = True
    end
    object RxTableTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
    end
    object RxTablePORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object RxTablePLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = RxTable
    Left = 87
    Top = 8
  end
  object DSSQLTipoDocumento: TDataSource
    DataSet = SQLTipoDocumento
    Left = 352
    Top = 8
  end
  object SQLTipoDocumento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT TPDCICOD, TPDCA60DESCR FROM TIPODOCUMENTO'
      'ORDER BY TPDCA60DESCR')
    Macros = <>
    Left = 380
    Top = 8
  end
  object DSSQLPortador: TDataSource
    DataSet = SQLPortador
    Left = 408
    Top = 8
  end
  object SQLPortador: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT PORTICOD, PORTA60DESCR FROM PORTADOR'
      'ORDER BY PORTA60DESCR')
    Macros = <>
    Left = 436
    Top = 8
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  CLIEA13ID, '
      '  CLIEA60RAZAOSOC,   '
      '  TPDCICOD,'
      '  PORTICOD,'
      '  DIAVENCTO,'
      '  CTRCN2VLR,'
      '  PLCTA15COD'
      'FROM'
      '  CLIENTE'
      'WHERE'
      
        '  (CTRCN2VLR > 0 and TPDCICOD > 0 and PORTICOD > 0 and DIAVENCTO' +
        ' <> '#39#39') and'
      '  %MTipoDoc and'
      '  %MPortador and'
      '  %MDia'
      'ORDER BY'
      '  CLIEA60RAZAOSOC')
    Macros = <
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
        Name = 'MDia'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 320
    Top = 8
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CLIENTE.TPDCICOD'
    end
    object SQLClientePORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CLIENTE.PORTICOD'
    end
    object SQLClienteDIAVENCTO: TStringField
      FieldName = 'DIAVENCTO'
      Origin = 'DB.CLIENTE.DIAVENCTO'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CLIENTE.CTRCN2VLR'
    end
    object SQLClientePLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CLIENTE.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
  end
end
