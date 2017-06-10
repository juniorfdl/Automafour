inherited FormTelaBaixaContasPagarAVista: TFormTelaBaixaContasPagarAVista
  Left = 496
  Top = 168
  Caption = 'Baixa de Contas a Pagar'
  ClientHeight = 517
  ClientWidth = 480
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Width = 480
    Height = 437
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 480
      Height = 182
      Align = alTop
      BorderWidth = 1
      Color = 16249066
      TabOrder = 0
      object Label28: TLabel
        Left = 19
        Top = 39
        Width = 87
        Height = 13
        Caption = '&Tipo Liquida'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 17
        Top = 124
        Width = 79
        Height = 13
        Caption = 'Desconto R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 17
        Top = 105
        Width = 56
        Height = 13
        Caption = 'Multa R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 17
        Top = 86
        Width = 55
        Height = 13
        Caption = 'Juros R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 16
        Top = 9
        Width = 226
        Height = 24
        Caption = 'Valor at'#233' o Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 16
        Top = 148
        Width = 223
        Height = 24
        Caption = 'Valor total da opera'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object LbID: TLabel
        Left = 265
        Top = 78
        Width = 20
        Height = 24
        Caption = 'ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object LbDoc: TLabel
        Left = 265
        Top = 98
        Width = 108
        Height = 24
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object ComboTipoLiquidacao: TRxDBLookupCombo
        Left = 15
        Top = 53
        Width = 428
        Height = 21
        DropDownCount = 8
        DisplayEmpty = 'Selecione um Tipo de Liquida'#231#227'o...'
        LookupField = 'TPLQICOD'
        LookupDisplay = 'TPLQA60DESCR'
        LookupSource = DSSQLTipoLiquidacao
        TabOrder = 1
      end
      object VlrDesconto: TRxCalcEdit
        Left = 110
        Top = 118
        Width = 96
        Height = 19
        AutoSize = False
        DisplayFormat = ',0.00'
        NumGlyphs = 2
        TabOrder = 4
        OnChange = VlrJurosChange
      end
      object VlrMulta: TRxCalcEdit
        Left = 110
        Top = 99
        Width = 96
        Height = 19
        AutoSize = False
        DisplayFormat = ',0.00'
        NumGlyphs = 2
        TabOrder = 3
        OnChange = VlrJurosChange
      end
      object VlrJuros: TRxCalcEdit
        Left = 110
        Top = 80
        Width = 96
        Height = 19
        AutoSize = False
        DisplayFormat = ',0.00'
        NumGlyphs = 2
        TabOrder = 2
        OnChange = VlrJurosChange
      end
      object ValorAteVencimento: TCurrencyEdit
        Left = 263
        Top = 10
        Width = 115
        Height = 24
        TabStop = False
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object ValorTotalOperacao: TCurrencyEdit
        Left = 237
        Top = 148
        Width = 137
        Height = 24
        TabStop = False
        AutoSize = False
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
    end
    object PagePrincipal: TPageControl
      Left = 0
      Top = 182
      Width = 480
      Height = 255
      ActivePage = Banco
      Align = alClient
      MultiLine = True
      TabOrder = 1
      TabPosition = tpRight
      TabStop = False
      object Tesouraria: TTabSheet
        Caption = 'Tesouraria'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 453
          Height = 247
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 4
          Color = 16249066
          TabOrder = 0
          object GroupBox6: TGroupBox
            Left = 8
            Top = 6
            Width = 435
            Height = 45
            Caption = '&Opera'#231#227'o Tesouraria'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object ComboOperacaoTesouraria: TRxDBLookupCombo
              Left = 4
              Top = 17
              Width = 427
              Height = 21
              DropDownCount = 8
              DisplayEmpty = 'Selecione uma opera'#231#227'o...'
              LookupField = 'OPTEICOD'
              LookupDisplay = 'OPTEA60DESCR'
              LookupSource = DSSQLOperacaoTesouraria
              TabOrder = 0
            end
          end
          object GroupBox7: TGroupBox
            Left = 9
            Top = 95
            Width = 434
            Height = 123
            Caption = '&Hist'#243'rico'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object MemoHistTesouraria: TMemo
              Left = 5
              Top = 16
              Width = 423
              Height = 101
              TabOrder = 0
            end
          end
          object GroupBox8: TGroupBox
            Left = 8
            Top = 51
            Width = 297
            Height = 45
            Caption = '&Numer'#225'rio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object ComboNumerario: TRxDBLookupCombo
              Left = 4
              Top = 17
              Width = 287
              Height = 21
              DropDownCount = 8
              DisplayEmpty = 'Selecione um numer'#225'rio...'
              LookupField = 'NUMEICOD'
              LookupDisplay = 'NUMEA30DESCR'
              LookupSource = DSSQLNumerario
              TabOrder = 0
            end
          end
          object GroupBox12: TGroupBox
            Left = 308
            Top = 51
            Width = 135
            Height = 45
            Caption = 'Data Movimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object DataMovTesouraria: TDateEdit
              Left = 6
              Top = 16
              Width = 123
              Height = 21
              NumGlyphs = 2
              TabOrder = 0
            end
          end
        end
      end
      object Banco: TTabSheet
        Caption = 'Banco'
        ImageIndex = 2
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 453
          Height = 247
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          BorderWidth = 4
          Color = 16249066
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 8
            Top = 6
            Width = 435
            Height = 94
            Caption = '&Dados Banc'#225'rios'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label15: TLabel
              Left = 11
              Top = 52
              Width = 34
              Height = 13
              Caption = 'Banco'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 207
              Top = 52
              Width = 45
              Height = 13
              Caption = 'Ag'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 11
              Top = 15
              Width = 86
              Height = 13
              Caption = 'C&onta Corrente'
              FocusControl = ComboContaCorrenteBanco
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 363
              Top = 52
              Width = 31
              Height = 13
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 268
              Top = 52
              Width = 86
              Height = 13
              Caption = 'Conta Corrente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 7
              Top = 66
              Width = 194
              Height = 21
              TabStop = False
              Color = 14536396
              DataField = 'BancoNome'
              DataSource = DSTblContaCorrente1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object ComboContaCorrenteBanco: TRxDBLookupCombo
              Left = 7
              Top = 29
              Width = 422
              Height = 21
              DropDownCount = 8
              DisplayEmpty = 'Selecione uma conta corrente...'
              LookupField = 'CTCRICOD'
              LookupDisplay = 'CTCRA60TITULAR'
              LookupSource = DSTblContaCorrente1
              TabOrder = 1
            end
            object DBEdit6: TDBEdit
              Left = 204
              Top = 66
              Width = 58
              Height = 21
              TabStop = False
              Color = 14536396
              DataField = 'CTCRA15AGENCIA'
              DataSource = DSTblContaCorrente1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit7: TDBEdit
              Left = 265
              Top = 66
              Width = 91
              Height = 21
              TabStop = False
              Color = 14536396
              DataField = 'CTCRA15NUMERO'
              DataSource = DSTblContaCorrente1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit8: TDBEdit
              Left = 359
              Top = 66
              Width = 70
              Height = 21
              TabStop = False
              Color = 14536396
              DataField = 'CTCRN2SALDOATUAL'
              DataSource = DSTblContaCorrente1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
          object GroupBox2: TGroupBox
            Left = 8
            Top = 100
            Width = 435
            Height = 44
            Caption = '&Opera'#231#227'o Banc'#225'ria'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object ComboOperacaoBanco: TRxDBLookupCombo
              Left = 7
              Top = 17
              Width = 422
              Height = 21
              DropDownCount = 8
              DisplayEmpty = 'Selecione uma opera'#231#227'o banc'#225'ria...'
              LookupField = 'OPBCICOD'
              LookupDisplay = 'OPBCA60DESCR'
              LookupSource = DSTblOperacaoBanco
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 8
            Top = 187
            Width = 435
            Height = 60
            Caption = '&Hist'#243'rico'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object MemoHistorico: TMemo
              Left = 6
              Top = 16
              Width = 423
              Height = 38
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object GroupBox9: TGroupBox
            Left = 145
            Top = 144
            Width = 298
            Height = 43
            Caption = ' Nro. Cheque                             Bom para o dia '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object DateEditBomParaBanco: TDateEdit
              Left = 161
              Top = 16
              Width = 128
              Height = 21
              NumGlyphs = 2
              TabOrder = 1
            end
            object EditNroChqBanco: TEdit
              Left = 7
              Top = 16
              Width = 139
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
          end
          object GroupDataMov: TGroupBox
            Left = 8
            Top = 144
            Width = 134
            Height = 43
            Caption = 'Data Movimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object DateEditMovBanco: TDateEdit
              Left = 9
              Top = 15
              Width = 117
              Height = 21
              NumGlyphs = 2
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 480
    inherited PanelCabecalho: TPanel
      Width = 480
      inherited PanelNavigator: TPanel
        Width = 480
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 480
          inherited BtnFecharTela: TSpeedButton
            Left = 401
          end
          object BtnBaixarBanco: TSpeedButton
            Tag = 3
            Left = 250
            Top = 3
            Width = 138
            Height = 25
            Cursor = crHandPoint
            Hint = 'Baixar Documentos'
            Caption = 'Baixar (&Banco)'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
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
            OnClick = BtnBaixarBancoClick
          end
          object BtnBaixarTesouraria: TSpeedButton
            Tag = 3
            Left = 109
            Top = 3
            Width = 138
            Height = 25
            Cursor = crHandPoint
            Hint = 'Baixar Documentos'
            Caption = 'Baixar (&Tesouraria)'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
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
            OnClick = BtnBaixarTesourariaClick
          end
          object Buttongerar: TSpeedButton
            Left = 3
            Top = 3
            Width = 104
            Height = 25
            Caption = '&Baixa Simples'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
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
  object SQLBanco: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from Banco'
      'order by'
      'BANCA60NOME'
      '')
    Left = 152
    Top = 4
    object SQLBancoBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.BANCO.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLBancoBANCA60NOME: TStringField
      FieldName = 'BANCA60NOME'
      Origin = 'DB.BANCO.BANCA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLBancoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.BANCO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLBancoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.BANCO.REGISTRO'
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
    Left = 181
    Top = 4
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
    Left = 209
    Top = 4
  end
  object SQLOperacaoTesouraria: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '* '
      'FROM '
      'OPERACAOTESOURARIA '
      'WHERE '
      'OPTECDEBCRED <> ''C''')
    Left = 239
    Top = 4
    object SQLOperacaoTesourariaOPTEICOD: TIntegerField
      FieldName = 'OPTEICOD'
      Origin = 'DB.OPERACAOTESOURARIA.OPTEICOD'
    end
    object SQLOperacaoTesourariaOPTEA60DESCR: TStringField
      FieldName = 'OPTEA60DESCR'
      Origin = 'DB.OPERACAOTESOURARIA.OPTEA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoTesourariaOPTECDEBCRED: TStringField
      FieldName = 'OPTECDEBCRED'
      Origin = 'DB.OPERACAOTESOURARIA.OPTECDEBCRED'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoTesourariaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOTESOURARIA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoTesourariaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOTESOURARIA.REGISTRO'
    end
  end
  object DSSQLOperacaoTesouraria: TDataSource
    DataSet = SQLOperacaoTesouraria
    Left = 267
    Top = 4
  end
  object SQLNumerario: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * from NUMERARIO where NUMEA5TIPO = ''DIN''')
    Left = 296
    Top = 4
    object SQLNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumerarioNUMEA30DESCR: TStringField
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioNUMECVISTAPRAZO: TStringField
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMECATIVO: TStringField
      FieldName = 'NUMECATIVO'
      Origin = 'DB.NUMERARIO.NUMECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
    object SQLNumerarioOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.NUMERARIO.OPCXICOD'
    end
    object SQLNumerarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.NUMERARIO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.NUMERARIO.REGISTRO'
    end
  end
  object DSSQLNumerario: TDataSource
    DataSet = SQLNumerario
    Left = 324
    Top = 4
  end
  object SQLOperacaoBanco: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from OperacaoBanco'
      'where'
      'OPBCCTIPO = '#39'D'#39'  ')
    Macros = <>
    Left = 354
    Top = 4
    object SQLOperacaoBancoOPBCICOD: TIntegerField
      FieldName = 'OPBCICOD'
      Origin = 'DB.OPERACAOBANCO.OPBCICOD'
    end
    object SQLOperacaoBancoOPBCA60DESCR: TStringField
      FieldName = 'OPBCA60DESCR'
      Origin = 'DB.OPERACAOBANCO.OPBCA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLOperacaoBancoOPBCCTIPO: TStringField
      FieldName = 'OPBCCTIPO'
      Origin = 'DB.OPERACAOBANCO.OPBCCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoBancoOPBCCALTSALDO: TStringField
      FieldName = 'OPBCCALTSALDO'
      Origin = 'DB.OPERACAOBANCO.OPBCCALTSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoBancoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.OPERACAOBANCO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLOperacaoBancoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.OPERACAOBANCO.REGISTRO'
    end
  end
  object DSTblOperacaoBanco: TDataSource
    DataSet = SQLOperacaoBanco
    Left = 382
    Top = 4
  end
  object TblContaCorrente1: TTable
    DatabaseName = 'DB'
    TableName = 'CONTACORRENTE'
    Left = 411
    Top = 3
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CTCRICOD'
      Required = True
    end
    object StringField1: TStringField
      DisplayLabel = 'C'#243'd.Banco'
      FieldName = 'BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object StringField2: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CTCRA15AGENCIA'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'CTCRA15NUMERO'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      DisplayLabel = 'Titular'
      FieldName = 'CTCRA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object BCDField1: TFloatField
      DisplayLabel = 'Limite'
      FieldName = 'CTCRN2LIMITE'
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoNome'
      LookupDataSet = SQLBanco
      LookupKeyFields = 'BANCA5COD'
      LookupResultField = 'BANCA60NOME'
      KeyFields = 'BANCA5COD'
      Size = 30
      Lookup = True
    end
    object TblContaCorrente1CTCRN2SALDOATUAL: TFloatField
      FieldName = 'CTCRN2SALDOATUAL'
      DisplayFormat = '###0.00'
    end
  end
  object DSTblContaCorrente1: TDataSource
    DataSet = TblContaCorrente1
    Left = 439
    Top = 3
  end
end
