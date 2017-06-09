inherited FormTelaBaixarDocumentosPlanoConta: TFormTelaBaixarDocumentosPlanoConta
  Caption = 'Baixa de Contas - Detalhamento'
  ClientHeight = 397
  ClientWidth = 451
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Width = 451
    Height = 317
    object GroupBox13: TGroupBox
      Left = 11
      Top = 49
      Width = 432
      Height = 197
      Caption = '&Plano de Contas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object PageControl: TPageControl
        Left = 2
        Top = 15
        Width = 428
        Height = 180
        ActivePage = TabCredito
        Align = alClient
        MultiLine = True
        RaggedRight = True
        Style = tsFlatButtons
        TabOrder = 0
        object TabCredito: TTabSheet
          Caption = '&Cr'#233'dito'
          object Label29: TLabel
            Left = 1
            Top = 0
            Width = 80
            Height = 13
            Caption = '&Valor Principal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 1
            Top = 38
            Width = 31
            Height = 13
            Caption = '&Juros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 1
            Top = 77
            Width = 32
            Height = 13
            Caption = '&Multa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 1
            Top = 115
            Width = 53
            Height = 13
            Caption = '&Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComboContaCreditoPrincipal: TRxDBLookupCombo
            Left = 1
            Top = 14
            Width = 417
            Height = 21
            DropDownCount = 8
            LookupField = 'PLCTA15COD'
            LookupDisplay = 'PLCTA60DESCR'
            LookupSource = DSSQLPlanoContaCredito
            TabOrder = 0
          end
          object ComboContaCreditoJuros: TRxDBLookupCombo
            Left = 1
            Top = 52
            Width = 417
            Height = 21
            DropDownCount = 8
            LookupField = 'PLCTA15COD'
            LookupDisplay = 'PLCTA60DESCR'
            LookupSource = DSSQLPlanoContaCredito
            TabOrder = 1
          end
          object ComboContaCreditoMulta: TRxDBLookupCombo
            Left = 1
            Top = 90
            Width = 417
            Height = 21
            DropDownCount = 8
            LookupField = 'PLCTA15COD'
            LookupDisplay = 'PLCTA60DESCR'
            LookupSource = DSSQLPlanoContaCredito
            TabOrder = 2
          end
          object ComboContaCreditoDesconto: TRxDBLookupCombo
            Left = 1
            Top = 128
            Width = 417
            Height = 21
            DropDownCount = 8
            LookupField = 'PLCTA15COD'
            LookupDisplay = 'PLCTA60DESCR'
            LookupSource = DSSQLPlanoContaCredito
            TabOrder = 3
          end
        end
        object TabDebito: TTabSheet
          Caption = '&D'#233'bito'
          ImageIndex = 1
          object Label33: TLabel
            Left = 1
            Top = 0
            Width = 80
            Height = 13
            Caption = '&Valor Principal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 1
            Top = 38
            Width = 31
            Height = 13
            Caption = '&Juros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 1
            Top = 77
            Width = 32
            Height = 13
            Caption = '&Multa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 1
            Top = 115
            Width = 53
            Height = 13
            Caption = '&Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComboContaDebitoPrincipal: TRxDBLookupCombo
            Left = 1
            Top = 14
            Width = 417
            Height = 21
            DropDownCount = 8
            LookupField = 'PLCTA15COD'
            LookupDisplay = 'PLCTA60DESCR'
            LookupSource = DSSQLPlanoContaDebito
            TabOrder = 0
          end
          object ComboContaDebitoJuros: TRxDBLookupCombo
            Left = 1
            Top = 52
            Width = 417
            Height = 21
            DropDownCount = 8
            LookupField = 'PLCTA15COD'
            LookupDisplay = 'PLCTA60DESCR'
            LookupSource = DSSQLPlanoContaDebito
            TabOrder = 1
          end
          object ComboContaDebitoMulta: TRxDBLookupCombo
            Left = 1
            Top = 90
            Width = 417
            Height = 21
            DropDownCount = 8
            LookupField = 'PLCTA15COD'
            LookupDisplay = 'PLCTA60DESCR'
            LookupSource = DSSQLPlanoContaDebito
            TabOrder = 2
          end
          object ComboContaDebitoDesconto: TRxDBLookupCombo
            Left = 1
            Top = 128
            Width = 417
            Height = 21
            DropDownCount = 8
            LookupField = 'PLCTA15COD'
            LookupDisplay = 'PLCTA60DESCR'
            LookupSource = DSSQLPlanoContaDebito
            TabOrder = 3
          end
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 2
      Width = 432
      Height = 46
      Caption = 'Tipo de Liquida'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ComboTipoLiquidacao: TRxDBLookupCombo
        Left = 5
        Top = 19
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Selecione um Tipo de Liquida'#231#227'o...'
        LookupField = 'TPLQICOD'
        LookupDisplay = 'TPLQA60DESCR'
        LookupSource = DSSQLTipoLiquidacao
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 11
      Top = 248
      Width = 432
      Height = 60
      Caption = '&Hist'#243'rico'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object MemoHistorico: TMemo
        Left = 6
        Top = 16
        Width = 419
        Height = 38
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 451
    inherited PanelCabecalho: TPanel
      Width = 451
      inherited PanelNavigator: TPanel
        Width = 451
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 451
          inherited BtnFecharTela: TSpeedButton
            Left = 361
            Width = 82
            Caption = '&Cancelar'
          end
          object Buttongerar: TSpeedButton
            Left = 11
            Top = 3
            Width = 82
            Height = 25
            Caption = '&Baixar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              F6040000424DF60400000000000036040000280000000C000000100000000100
              080000000000C0000000CE0E0000C40E00000001000000000000000000008080
              8000000080000080800000800000808000008000000080008000408080004040
              0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
              FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
              80008000FF004080FF007F7F7F00F0CAA6001084E80008E2FC000844520052C4
              E8000E64E7004684FB000DB8E70094E3F800406CF6000E94E800041944000E79
              E80007DAE900CFE4EC003BBCE4000468840064868C003FA5F30004B2CC000444
              FC0050D4F800B41E040004667B0006A0BB008CCDE7000BC4F9000584FC000594
              FC000412CC0005A8FC005CA9FC000574FC000484AC0004B8FC004494FA00BDD3
              E5006352FC00CAF6FC000498CC008FB6D3000525280044AAC9000468AA000477
              CA000564FC00052E4500044364004DC4FC009CF2FC000B55E6002FC4F8000448
              AB0064B9DA006FD4F2008CD7EC0008A7D80045B4DA002D88F8002DD4FB002C78
              F9002A98F60004062400B0E4F600437AFA004492A400042C6800055ACB002A88
              EB0023B9E80048B4FB00042A8C0021A9EA0073C4E2001C34CC0026A8F8000695
              D7005888FC0030C4EB0050E3FC002A97EC00A3311B0071656100745E5C000454
              FC0021AAD7005698FC00047AAC00296CF700CBEAF70028B7F8000764D7000554
              630057FDFC00ECF5FB005284890038ADF2000E92AB000458AA001E79EA000CB4
              DC005B79FC0040BCFC000674D6002ACDF7007EB8D600597C8500075AD7000F8C
              E800056CFC008BDCF400627478000588D6002C6CEC000E9CE60049DDFC00058C
              FC0075A3AC008F4638000428FC000404FC00C4C6C40081544C0036A0B500ACAA
              AC000635850004236C000514190005598400679EAC000414AC00047284000435
              3C000438AB00051929000419FC000438FC00DCDADC005CB7FC0004B6BC00973D
              2C00B6B5B600B02408000437450005234500073C670004597C00864D44000549
              7C000428AB00064DD500488F9A00696C6F000695BA00B1F4FC0070E8FC00C2DC
              EC0004D6FC005D59FC00579EAC0044ACD4009C3A240004081800074B99000669
              BA000677BB000757BA0006679B000488BB00052A3B00074BBB0004579C000876
              98000406B8004B899500083B5800056E7A0097BCD5003F98A90029ADC7005D68
              FC00DDE5EC002CA8BC00A3CFE600E1ECF50021B6DA003CE2FC00B6CADC00A92A
              140004245700052D5C00041C3B00053A7B000ECBE900044CFC0072DBF500ABED
              FC0073CCE9001C5E6C0074FEFC005C7A7C0004327A00458CFA00459CFA004DCC
              FB004BBADC0005102700043EC400069DD6007A5B5400053C8500A5C5DC0079B1
              D100A6D8EC00A2DEF400054B660034A7BC00041CAC0051A4FC004CADFC00B9DE
              F400349AB4008DA6AC0054CCEC000F6CE800E0E0E000A4A0A000030303030303
              0303030303030303030314141414030303030303030314181814140303030303
              1414141818141414030303141418181818181814140303141818181414181818
              1403031414141414141818181403030314181818181818181403031418181818
              1818181403030314181818141414141414030314181818141418181814030314
              1418181818181814140303031414141818141414030303030303141818140303
              0303030303031414141403030303030303030303030303030303}
            ParentFont = False
            OnClick = ButtongerarClick
          end
        end
      end
    end
  end
  object SQLPlanoContaCredito: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'PLCTA15COD,'
      'PLCTA60DESCR'
      'FROM'
      'PLANODECONTAS'
      'WHERE'
      '(PLCTCTIPOSALDO = ''C'''
      'or'
      'PLCTCTIPOSALDO = ''A'')'
      'AND'
      'PLCTCANALSINT = ''A'' ')
    Macros = <>
    Left = 320
    Top = 20
    object SQLPlanoContaCreditoPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLPlanoContaCreditoPLCTA60DESCR: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLPlanoContaCredito: TDataSource
    DataSet = SQLPlanoContaCredito
    Left = 348
    Top = 20
  end
  object DSSQLPlanoContaDebito: TDataSource
    DataSet = SQLPlanoContaDebito
    Left = 404
    Top = 20
  end
  object SQLPlanoContaDebito: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      'PLCTA15COD,'
      'PLCTA60DESCR'
      'FROM'
      'PLANODECONTAS'
      'WHERE'
      '(PLCTCTIPOSALDO = ''D'''
      'or'
      'PLCTCTIPOSALDO = ''A'')'
      'AND'
      'PLCTCANALSINT = ''A'' ')
    Macros = <>
    Left = 376
    Top = 20
    object StringField11: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.PLANODECONTAS.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object StringField12: TStringField
      FieldName = 'PLCTA60DESCR'
      Origin = 'DB.PLANODECONTAS.PLCTA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTipoLiquidacao: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'TIPOLIQUIDACAO')
    Macros = <>
    Left = 264
    Top = 20
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
    Left = 292
    Top = 20
  end
end
