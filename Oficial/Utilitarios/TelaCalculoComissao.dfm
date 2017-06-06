inherited FormTelaCalculoComissao: TFormTelaCalculoComissao
  Left = 481
  Top = 170
  Width = 815
  Height = 457
  Caption = 'Calcular Comiss'#245'es'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 799
    Height = 418
    inherited PanelCentral: TPanel
      Width = 795
      Height = 334
      inherited PanelBarra: TPanel
        Width = 141
        Height = 334
        TabOrder = 2
        object Label2: TLabel
          Left = 14
          Top = 155
          Width = 101
          Height = 13
          Caption = 'Data e hora inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 14
          Top = 193
          Width = 93
          Height = 13
          Caption = 'Data e hora final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditHoraINI: TEdit
          Left = 6
          Top = 169
          Width = 116
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditHoraFIM: TEdit
          Left = 6
          Top = 207
          Width = 116
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 151
        Top = 66
        Width = 447
        Height = 129
        Caption = ' Tipo de C'#225'lculo de comiss'#245'es '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Opcao1: TRadioButton
          Left = 6
          Top = 17
          Width = 303
          Height = 17
          Caption = 'Calcular usando somente percentual do vendedor'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = Opcao1Click
        end
        object Opcao2: TRadioButton
          Left = 6
          Top = 32
          Width = 393
          Height = 17
          Caption = 'Calcular aplicando o percentual do Produto em cada '#237'tem da venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Opcao1Click
        end
        object Opcao3: TRadioButton
          Left = 6
          Top = 47
          Width = 393
          Height = 17
          Caption = 'Calcular usando perc.vendedor e parcelas quitadas do per'#237'odo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Opcao3Click
        end
        object Opcao4: TRadioButton
          Left = 6
          Top = 62
          Width = 393
          Height = 17
          Caption = 'Calcular usando percentual do vendedor e fideliza'#231#227'o por venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Opcao5: TRadioButton
          Left = 6
          Top = 77
          Width = 393
          Height = 17
          Caption = 'Calcular usando perc. do vendedor sobre os pedidos de venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object Opcao6: TRadioButton
          Left = 6
          Top = 93
          Width = 437
          Height = 17
          Caption = 
            'Calcular aplicando o percentual do Produto em cada '#237'tem do Pedid' +
            'oVenda'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object Opcao7: TRadioButton
          Left = 6
          Top = 109
          Width = 436
          Height = 17
          Caption = 'Calcular Totalizando por Empresa (Fabrica)'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
      end
      object GroupBox2: TGroupBox
        Left = 151
        Top = 23
        Width = 446
        Height = 41
        Caption = ' Per'#237'odo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 10
          Top = 18
          Width = 15
          Height = 13
          Caption = '&De'
          FocusControl = De
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 126
          Top = 18
          Width = 19
          Height = 13
          Caption = 'a&t'#233
          FocusControl = Ate
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object De: TDateEdit
          Left = 9
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
        object Ate: TDateEdit
          Left = 171
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
      object GroupBox3: TGroupBox
        Left = 151
        Top = 198
        Width = 449
        Height = 170
        Caption = ' Problemas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object MemoProb: TMemo
          Left = 2
          Top = 15
          Width = 445
          Height = 153
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupEmissao: TGroupBox
        Left = 607
        Top = 26
        Width = 184
        Height = 88
        Caption = 'Emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Visible = False
        object Label1: TLabel
          Left = 7
          Top = 13
          Width = 168
          Height = 26
          Caption = 'Calcular somente as parcelas emitidas depois de:'
          WordWrap = True
        end
        object DateEmissao: TDateEdit
          Left = 9
          Top = 43
          Width = 109
          Height = 21
          DialogTitle = 'Selecione a Data'
          ButtonWidth = 20
          NumGlyphs = 2
          YearDigits = dyFour
          TabOrder = 0
        end
      end
      object Progress: TProgressBar
        Left = 149
        Top = 4
        Width = 642
        Height = 16
        Smooth = True
        TabOrder = 5
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 795
      inherited PanelCabecalho: TPanel
        Width = 795
        object Msg: TLabel [1]
          Left = 0
          Top = 35
          Width = 795
          Height = 13
          Align = alBottom
          Caption = '   Msg'
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        inherited PanelNavigator: TPanel
          Width = 795
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 795
            object BtnVisualizar: TSpeedButton
              Left = 2
              Top = 3
              Width = 84
              Height = 25
              Cursor = crHandPoint
              Hint = 'Calcula as Comiss'#245'es do Per'#237'odo'
              Caption = '&Calcular'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                46030000424D46030000000000003600000028000000120000000E0000000100
                18000000000010030000C40E0000C40E00000000000000000000408080408080
                4080804080804080804080804080804080804080804080804080804080804080
                8040808040808040808040808040808000004080804080800000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000040808040808000004080807F7F007F7F007F00007F00007F00007F00007F
                00007F00007F00007F00007F00007F00007F00007F00007F0000000000408080
                00004080807F7F00FFFFFF7F7F007F7F007F7F007F7F007F7F007F7F007F7F00
                7F7F007F7F007F7F007F7F007F7F007F000000000040808000004080807F7F00
                FFFF007F7F00000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFFFFFF
                FFBFBFBF0000007F000000000040808000004080807F7F00FFFFFF7F7F007F7F
                007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F
                000000000040808000004080807F7F00FFFF007F7F00000000FFFFFF000000FF
                FFFF000000FFFFFF000000FFFFFF000000FFFFFF0000007F0000000000408080
                00004080807F7F00FFFFFF7F7F007F7F007F7F007F7F007F7F007F7F007F7F00
                7F7F007F7F007F7F007F7F007F7F007F000000000040808000004080807F7F00
                FFFF00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F007F7F
                007F7F007F7F007F000000000040808000004080807F7F00FFFFFF000000FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F007F7F007F7F007F7F007F
                000000000040808000004080807F7F00FFFF0000000000000000000000000000
                00000000000000000000007F7F007F7F007F7F007F7F007F0000000000408080
                00004080807F7F00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00
                FFFFFFFFFF00FFFFFFFFFF00FFFFFF7F7F000000004080800000408080408080
                7F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F
                007F7F007F7F007F7F0040808040808000004080804080804080804080804080
                8040808040808040808040808040808040808040808040808040808040808040
                80804080804080800000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 5
              OnClick = BtnVisualizarClick
            end
            object SpeedButton1: TSpeedButton
              Left = 91
              Top = 3
              Width = 129
              Height = 25
              Cursor = crHandPoint
              Hint = 'Visualizar Relat'#243'rio'
              Caption = '&Comissao Fabrica'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                76060000424D7606000000000000360400002800000018000000180000000100
                0800000000004002000000000000000000000001000000010000000000000606
                060026262600272727002D2D2D002E2E2E002F2F2F0031313100333333003434
                340035353500363636003737370038383800393939003A3A3A003B3B3B003C3C
                3C003E3E3E003F3F3F003F3F4000404040004141410042424200434444004545
                4500464646004747470048484800494949004A4A4A004B4B4B004D4D4D004E4E
                4E004F4F4F004C4F5000505050005454540055555500585858005B5B5B005C5E
                5F005E5E5E006060600061616100636363006062640060636400646464006666
                660067676700696969006E6E6E006F6F6F007070700071717100727272007B7B
                7B007B7D7D007F7F7F0081838400868686008D8D8D0090929200959595009999
                9900989A9A009E9E9E009EA2A500A0A0A000A1A1A100A2A2A200A3A3A300A5A5
                A500A6A6A600A7A7A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
                AD00AFAFAF00B1B1B100B2B2B200B3B3B300B0B3B500B2B3B500B4B4B400B6B6
                B600B7B7B700BBBBBB00BBBCBC00BEBEBE00C3C3C300C3C5C500C6C6C600C7C9
                CB00C6CBCD00C9C9C900CBCBCB00CECECE00D2D2D200D5D5D500DBDBDB00D9DC
                DD00D8DDDE00D9DEDF00DCE0E200DDE1E300DEE2E300DFE3E400E0E0E000E1E1
                E100E2E2E200E0E4E500E1E5E600E2E6E700E5E5E500E3E7E800E5E8E900E6E9
                EA00E7E9EA00E8E8E800E9E9E900E8EAEB00EAEAEA00EBEBEB00E9EBEC00EAEC
                ED00EBEDEE00EDEDED00ECEEEF00EEEEEE00EFEFEF00EDEFF000EEF0F100EFF1
                F100F0F0F000F0F2F200F1F3F300F2F2F200F3F3F300F2F4F400F3F4F500F4F4
                F400F4F5F600F5F6F700F6F6F600F6F7F700F6F7F800F9FAFA00FAFAFA00FFFF
                FF00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000999999999999
                9999999999999999999999999999999999999999999999999999999999999999
                9999999999999999999999999999999999999999999999999999999999999999
                9999999999999999999999999900000000009999999999999999999999999999
                99990000001C36380F1200999999999999999999999999000000162826303735
                15070C000099999999999999990000202426221A19212C390E10040A09009999
                999999990028281F1A1E2B3D4745433B0C0F11080E1100009999999900311B2D
                48514F4D4B49403908020F11130F0A00999999990033465A58544E4745416670
                5E17060A1215100099999999005553524D4C4D6676868A7B8D681B0E110D1600
                9999999900504E4C5B718E838D867F7E7B7C6716030B0F0099999999003E5A7F
                9894918D8A85833F2E232F18321D050099999999990000647C837C725729293C
                566A62142A3400009999999999999900006559423A8079756F6C6B5C00009999
                99999999999999999900014A8B87817A77736D69279999999999999999999999
                99999904928C88827D78746E6100999999999999999999999999990060938F89
                848079756F440099999999999999999999999999009796908B885F1A00000099
                9999999999999999999999999900956325000099999999999999999999999999
                9999999999990000999999999999999999999999999999999999999999999999
                9999999999999999999999999999999999999999999999999999999999999999
                9999999999999999999999999999999999999999999999999999}
              Margin = 1
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Spacing = 3
              OnClick = SpeedButton1Click
            end
          end
        end
      end
    end
  end
  object SQLVendedorComissao: TRxQuery
    Tag = 1
    BeforePost = SQLVendedorComissaoBeforePost
    OnNewRecord = SQLVendedorComissaoNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From VENDEDORCOMISSAO Where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 208
    Top = 16
    object SQLVendedorComissaoVDCOICOD: TIntegerField
      Tag = 1
      FieldName = 'VDCOICOD'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOICOD'
    end
    object SQLVendedorComissaoVENDICOD: TIntegerField
      Tag = 1
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDORCOMISSAO.VENDICOD'
    end
    object SQLVendedorComissaoCUPOA13ID: TStringField
      Tag = 1
      FieldName = 'CUPOA13ID'
      Origin = 'DB.VENDEDORCOMISSAO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendedorComissaoVDCON2TOTVENDVISTA: TFloatField
      FieldName = 'VDCON2TOTVENDVISTA'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDVISTA'
    end
    object SQLVendedorComissaoVDCON2TOTVENDPRAZO: TFloatField
      FieldName = 'VDCON2TOTVENDPRAZO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDPRAZO'
    end
    object SQLVendedorComissaoVDCOINROVEND: TIntegerField
      FieldName = 'VDCOINROVEND'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOINROVEND'
    end
    object SQLVendedorComissaoVDCON2VENDMEDIA: TFloatField
      FieldName = 'VDCON2VENDMEDIA'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2VENDMEDIA'
    end
    object SQLVendedorComissaoVDCON3QTDVEND: TFloatField
      FieldName = 'VDCON3QTDVEND'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON3QTDVEND'
    end
    object SQLVendedorComissaoVDCON2VLRCOMISS: TFloatField
      FieldName = 'VDCON2VLRCOMISS'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2VLRCOMISS'
    end
    object SQLVendedorComissaoVDCODEMIS: TDateTimeField
      FieldName = 'VDCODEMIS'
      Origin = 'DB.VENDEDORCOMISSAO.VDCODEMIS'
    end
    object SQLVendedorComissaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VENDEDORCOMISSAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorComissaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VENDEDORCOMISSAO.REGISTRO'
    end
    object SQLVendedorComissaoVDCODESTORNO: TDateTimeField
      FieldName = 'VDCODESTORNO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCODESTORNO'
    end
    object SQLVendedorComissaoVDCON3VLRESTORNO: TFloatField
      FieldName = 'VDCON3VLRESTORNO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON3VLRESTORNO'
    end
    object SQLVendedorComissaoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.VENDEDORCOMISSAO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendedorComissaoVDCOA5TIPODOC: TStringField
      FieldName = 'VDCOA5TIPODOC'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOA5TIPODOC'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorComissaoVDCOCDEBCRED: TStringField
      FieldName = 'VDCOCDEBCRED'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOCDEBCRED'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorComissaoVDCON2PERCOMISSAO: TFloatField
      FieldName = 'VDCON2PERCOMISSAO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2PERCOMISSAO'
    end
  end
  object SQLCalcComiss: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOM.CUPOA13ID,'
      '  CUPOM.CUPODEMIS as CUPODEMIS,'
      '  CUPOM.VENDICOD,'
      '  CUPOM.PLRCICOD,'
      '  CUPOM.CUPON2TOTITENS,'
      '  CUPOM.CUPON2ACRESC,'
      '  CUPOM.CUPOCTIPOPADRAO,'
      '  VENDEDOR.VENDN2COMISV,'
      '  VENDEDOR.VENDN2COMISP,'
      '  CUPOM.CUPON3BONUSTROCA+CUPOM.CUPON2DESC AS CUPON3BONUSTROCA,'
      '  CUPOM.CLIEA13ID,'
      '  '#39'CP'#39' as TIPODOC'
      'from'
      '  CUPOM'
      '  left outer join Vendedor on Cupom.vendicod = vendedor.vendicod'
      
        '  left outer join OperacaoEstoque on Cupom.OPESICOD = OperacaoEs' +
        'toque.OPESICOD'
      'where'
      '  (%MStatus) and'
      '  (%MData)'
      ''
      'union all'
      'select'
      'CAST(NOTAFISCAL.NOFIINUMERO AS CHAR(13)) AS CUPOA13ID,'
      'NOTAFISCAL.NOFIDEMIS AS CUPODEMIS,'
      'NOTAFISCAL.VENDICOD AS VENDICOD,'
      'NOTAFISCAL.PLRCICOD AS PLRCICOD,'
      'NOTAFISCAL.NOFIN2VLRPRODUTO AS CUPON2TOTITENS,'
      'NOTAFISCAL.NOFIN2VLROUTRASDESP AS CUPON2ACRESC,'
      'CAST('#39'CRD'#39' AS CHAR(5)) AS CUPOCTIPOPADRAO,'
      'VENDEDOR.VENDN2COMISV,'
      'VENDEDOR.VENDN2COMISP,'
      'NOTAFISCAL.NOFIN2VLRDESC AS CUPON3BONUSTROCA,'
      'NOTAFISCAL.CLIEA13ID,'
      #39'NF'#39' as TIPODOC'
      'from'
      'NOTAFISCAL'
      
        'left outer join VENDEDOR ON NOTAFISCAL.VENDICOD = VENDEDOR.VENDI' +
        'COD'
      
        'left outer join OperacaoEstoque on NOTAFISCAL.OPESICOD = Operaca' +
        'oEstoque.OPESICOD'
      'where'
      '(%MStatus1) and'
      '(%MData1)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MStatus'
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
        Name = 'MStatus1'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData1'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 150
    Top = 16
    object SQLCalcComissCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCalcComissCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object SQLCalcComissVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOM.VENDICOD'
    end
    object SQLCalcComissPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CUPOM.PLRCICOD'
    end
    object SQLCalcComissCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
    end
    object SQLCalcComissCUPON2ACRESC: TFloatField
      FieldName = 'CUPON2ACRESC'
      Origin = 'DB.CUPOM.CUPON2ACRESC'
    end
    object SQLCalcComissCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLCalcComissVENDN2COMISV: TFloatField
      FieldName = 'VENDN2COMISV'
      Origin = 'DB.VENDEDOR.VENDN2COMISV'
    end
    object SQLCalcComissVENDN2COMISP: TFloatField
      FieldName = 'VENDN2COMISP'
      Origin = 'DB.VENDEDOR.VENDN2COMISP'
    end
    object SQLCalcComissCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCalcComissTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 2
    end
    object SQLCalcComissCUPON3BONUSTROCA: TFloatField
      FieldName = 'CUPON3BONUSTROCA'
    end
  end
  object SQLItensVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOMITEM.CUPOA13ID,'
      '  CUPOMITEM.VENDICOD,'
      '  CUPOMITEM.CPITN3QTD,'
      '  CUPOMITEM.CPITN3VLRUNIT,'
      '  CUPOM.CUPODEMIS,'
      '  CUPOM.CUPOCSTATUS,'
      '  CUPOM.CUPOCTIPOPADRAO,'
      '  CUPOM.CUPON2DESC,'
      '  CUPOM.CUPON2TOTITENS,'
      '  CUPOM.PLRCICOD,'
      '  CUPOM.CLIEA13ID,'
      '  VENDEDOR.VENDN2COMISP,'
      '  VENDEDOR.VENDN2COMISV,'
      '  CUPOMITEM.PRODICOD'
      'from'
      
        ' (CUPOM CUPOM INNER JOIN CUPOMITEM CUPOMITEM ON CUPOM.CUPOA13ID ' +
        '= CUPOMITEM.CUPOA13ID)'
      
        ' INNER JOIN VENDEDOR VENDEDOR ON CUPOMITEM.VENDICOD = VENDEDOR.V' +
        'ENDICOD'
      'where'
      '  CUPOM.CUPOCSTATUS = "A" and'
      '  CUPOMITEM.CPITN3QTD > 0 and'
      '  CUPOMITEM.CPITCSTATUS = "A" and'
      
        '  CUPOM.CUPON2TOTITENS+CUPOM.CUPON3CREDTAXA+CUPOM.CUPON2ACRESC-C' +
        'UPOM.CUPON2DESC-CUPOM.CUPON3BONUSTROCA > 0 and'
      '  (%MVendedor) and'
      '  (%MData)'
      ''
      'union all'
      ''
      'SELECT'
      'cast(NOTAFISCAL.NOFIINUMERO as CHAR(13)) as CUPOA13ID,'
      'NOTAFISCAL.VENDICOD as VENDICOD,'
      'NOTAFISCALITEM.NFITN3QUANT as CPITN3QTD,'
      'NOTAFISCALITEM.NFITN2VLRUNIT as CPITN3VLRUNIT,'
      'NOTAFISCAL.NOFIDEMIS as CUPODEMIS,'
      'NOTAFISCAL.NOFICSTATUS as CUPOCSTATUS,'
      'CAST('#39'CRD'#39' AS CHAR(5)) as CUPOCTIPOPADRAO,'
      'NOTAFISCAL.NOFIN2VLRDESC as CUPON2DESC,'
      'NOTAFISCAL.NOFIN2VLRPRODUTO as CUPON2TOTITENS,'
      'NOTAFISCAL.PLRCICOD as PLRCICOD,'
      'NOTAFISCAL.CLIEA13ID as CLIEA13ID,'
      'VENDEDOR.VENDN2COMISP,'
      'VENDEDOR.VENDN2COMISV,'
      'NOTAFISCALITEM.PRODICOD'
      'from'
      'NOTAFISCAL'
      
        'inner join NOTAFISCALITEM ON NOTAFISCAL.NOFIA13ID = NOTAFISCALIT' +
        'EM.NOFIA13ID'
      
        'left outer join VENDEDOR ON NOTAFISCAL.VENDICOD = VENDEDOR.VENDI' +
        'COD'
      'where'
      'NOTAFISCAL.NOFICSTATUS = "E" and'
      'NOTAFISCALITEM.NFITN3QUANT > 0 and'
      '(%MVendedor) and'
      '(%MData1)'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MVendedor'
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
        Name = 'MData1'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 179
    Top = 16
    object SQLItensVendaCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLItensVendaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLItensVendaCUPON2DESC: TFloatField
      FieldName = 'CUPON2DESC'
    end
    object SQLItensVendaCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
    end
    object SQLItensVendaCPITN3VLRUNIT: TFloatField
      FieldName = 'CPITN3VLRUNIT'
    end
    object SQLItensVendaCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLItensVendaCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLItensVendaCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLItensVendaVENDN2COMISP: TFloatField
      FieldName = 'VENDN2COMISP'
    end
    object SQLItensVendaVENDN2COMISV: TFloatField
      FieldName = 'VENDN2COMISV'
    end
    object SQLItensVendaCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
    end
    object SQLItensVendaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object SQLItensVendaPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object SQLItensVendaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Size = 13
    end
  end
  object SQLPlanoRecebimento: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PlanoRecebimento'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 318
    Top = 16
    object SQLPlanoRecebimentoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoRecebimentoPLRCCDFIX: TStringField
      FieldName = 'PLRCCDFIX'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIX'
      FixedChar = True
      Size = 1
    end
    object SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField
      FieldName = 'PLRCIDFIXNROPARC'
      Origin = 'DB.PLANORECEBIMENTO.PLRCIDFIXNROPARC'
    end
    object SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField
      FieldName = 'PLRCCDFIXENTR'
      Origin = 'DB.PLANORECEBIMENTO.PLRCCDFIXENTR'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPlanoRecebimentoParcela: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from PlanoRecebimentoParcela'
      'where %MFiltro')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 290
    Top = 16
    object SQLPlanoRecebimentoParcelaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.PLANORECEBIMENTO.PLRCICOD'
    end
    object SQLPlanoRecebimentoParcelaPLRPINROPARC: TIntegerField
      FieldName = 'PLRPINROPARC'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRPINROPARC'
    end
    object SQLPlanoRecebimentoParcelaPLRPINRODIAS: TIntegerField
      FieldName = 'PLRPINRODIAS'
      Origin = 'DB.PLANORECEBIMENTOPARCELA.PLRPINRODIAS'
    end
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '*'
      'from'
      'ContasReceber'
      'Where'
      ' (CTRCN2TOTREC >0) and (CTRCCSTATUS<>'#39'C'#39')'
      'and'
      '(%Data)'
      'and'
      '(%Emissao)')
    Macros = <
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Emissao'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 23
    Top = 132
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCTRCICOD: TIntegerField
      FieldName = 'CTRCICOD'
      Origin = 'DB.CONTASRECEBER.CTRCICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLContasReceberNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CONTASRECEBER.NUMEICOD'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCN2TXMULTA: TFloatField
      FieldName = 'CTRCN2TXMULTA'
      Origin = 'DB.CONTASRECEBER.CTRCN2TXMULTA'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCN2TOTJUROREC: TFloatField
      FieldName = 'CTRCN2TOTJUROREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTJUROREC'
    end
    object SQLContasReceberCTRCN2TOTMULTAREC: TFloatField
      FieldName = 'CTRCN2TOTMULTAREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTAREC'
    end
    object SQLContasReceberCTRCN2TOTDESCREC: TFloatField
      FieldName = 'CTRCN2TOTDESCREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTDESCREC'
    end
    object SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField
      FieldName = 'CTRCN2TOTMULTACOBR'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTMULTACOBR'
    end
    object SQLContasReceberEMPRICODULTREC: TIntegerField
      FieldName = 'EMPRICODULTREC'
      Origin = 'DB.CONTASRECEBER.EMPRICODULTREC'
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
      Origin = 'DB.CONTASRECEBER.TPDCICOD'
    end
    object SQLContasReceberPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      Origin = 'DB.CONTASRECEBER.PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      Origin = 'DB.CONTASRECEBER.CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CONTASRECEBER.NOFIA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
      Origin = 'DB.CONTASRECEBER.CTRCDEMIS'
    end
    object SQLContasReceberPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.CONTASRECEBER.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.CONTASRECEBER.REGISTRO'
    end
    object SQLContasReceberCTRCDREABILSPC: TDateTimeField
      FieldName = 'CTRCDREABILSPC'
      Origin = 'DB.CONTASRECEBER.CTRCDREABILSPC'
    end
    object SQLContasReceberBANCA5CODCHQ: TStringField
      FieldName = 'BANCA5CODCHQ'
      Origin = 'DB.CONTASRECEBER.BANCA5CODCHQ'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCTRCA10AGENCIACHQ: TStringField
      FieldName = 'CTRCA10AGENCIACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA10AGENCIACHQ'
      FixedChar = True
      Size = 10
    end
    object SQLContasReceberCTRCA15CONTACHQ: TStringField
      FieldName = 'CTRCA15CONTACHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15CONTACHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA15NROCHQ: TStringField
      FieldName = 'CTRCA15NROCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA15NROCHQ'
      FixedChar = True
      Size = 15
    end
    object SQLContasReceberCTRCA60TITULARCHQ: TStringField
      FieldName = 'CTRCA60TITULARCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA60TITULARCHQ'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberCTRCA20CGCCPFCHQ: TStringField
      FieldName = 'CTRCA20CGCCPFCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCA20CGCCPFCHQ'
      FixedChar = True
    end
    object SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField
      FieldName = 'CTRCDDEPOSCHQ'
      Origin = 'DB.CONTASRECEBER.CTRCDDEPOSCHQ'
    end
    object SQLContasReceberALINICOD: TIntegerField
      FieldName = 'ALINICOD'
      Origin = 'DB.CONTASRECEBER.ALINICOD'
    end
    object SQLContasReceberPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Origin = 'DB.CONTASRECEBER.PDVDA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLCupomNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from CupomNumerario'
      'Where (%Cupom) and (CPNMN2VLR>0) and (CPNMCAUTENT='#39'S'#39')'
      'ORDER BY CUPOA13ID')
    Macros = <
      item
        DataType = ftString
        Name = 'Cupom'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 367
    Top = 15
    object SQLCupomNumerarioCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMNUMERARIO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomNumerarioNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.CUPOMNUMERARIO.NUMEICOD'
    end
    object SQLCupomNumerarioCONMCSTATUS: TStringField
      FieldName = 'CONMCSTATUS'
      Origin = 'DB.CUPOMNUMERARIO.CONMCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomNumerarioCPNMN2VLR: TFloatField
      FieldName = 'CPNMN2VLR'
      Origin = 'DB.CUPOMNUMERARIO.CPNMN2VLR'
    end
    object SQLCupomNumerarioCPNMCAUTENT: TStringField
      FieldName = 'CPNMCAUTENT'
      Origin = 'DB.CUPOMNUMERARIO.CPNMCAUTENT'
      FixedChar = True
      Size = 1
    end
    object SQLCupomNumerarioCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOMNUMERARIO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
  end
  object SQLConsulta: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from VendedorComissao where '
      'Vendicod = :Vendedor'
      'and '
      'Cupoa13id = :Cupom')
    Macros = <>
    Left = 395
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Cupom'
        ParamType = ptUnknown
      end>
  end
  object SQLProduto: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'PRODCGERACOMIS,'
      'PRODN2COMISVISTA,'
      'PRODN2COMISPRAZO'
      'FROM'
      'PRODUTO'
      'WHERE'
      'PRODICOD = :PRODUTO')
    Macros = <>
    Left = 432
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object SQLProdutoPRODCGERACOMIS: TStringField
      FieldName = 'PRODCGERACOMIS'
      Origin = 'DB.PRODUTO.PRODCGERACOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoPRODN2COMISVISTA: TFloatField
      FieldName = 'PRODN2COMISVISTA'
      Origin = 'DB.PRODUTO.PRODN2COMISVISTA'
    end
    object SQLProdutoPRODN2COMISPRAZO: TFloatField
      FieldName = 'PRODN2COMISPRAZO'
      Origin = 'DB.PRODUTO.PRODN2COMISPRAZO'
    end
  end
  object SQLVendasFidelizadas: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOM.CUPOA13ID,'
      '  CUPOM.CLIEA13ID,'
      '  CUPOM.CUPODEMIS as CUPODEMIS,'
      '  Cliente.VENDICOD,'
      '  CUPOM.PLRCICOD,'
      '  CUPOM.CUPON2TOTITENS,'
      '  CUPOM.CUPON2ACRESC,'
      '  CUPOM.CUPOCTIPOPADRAO,'
      '  VENDEDOR.VENDN2PERCFIDEL as VENDN2COMISV,'
      '  VENDEDOR.VENDN2PERCFIDEL as VENDN2COMISP,'
      '  CUPOM.CUPON3BONUSTROCA,'
      '  '#39'CP'#39' as TIPODOC'
      'from'
      '  CUPOM'
      
        '  left outer join Cliente  on Cupom.cliea13id   = Cliente.cliea1' +
        '3id'
      
        '  left outer join Vendedor on cliente.vendicod  = vendedor.vendi' +
        'cod'
      
        '  left outer join OperacaoEstoque on Cupom.OPESICOD = OperacaoEs' +
        'toque.OPESICOD'
      'where'
      '  CUPOM.CUPOCSTATUS = "A"  and'
      '  (%MData) and'
      'cliente.vendicod > 0 and'
      'cliente.vendicod <> cupom.vendicod'
      ''
      'union all'
      'select'
      'CAST(NOTAFISCAL.NOFIINUMERO AS CHAR(13)) AS CUPOA13ID,'
      'NOTAFISCAL.CLIEA13ID,'
      'NOTAFISCAL.NOFIDEMIS AS CUPODEMIS,'
      'CLIENTE.VENDICOD AS VENDICOD,'
      'NOTAFISCAL.PLRCICOD AS PLRCICOD,'
      'NOTAFISCAL.NOFIN2VLRPRODUTO AS CUPON2TOTITENS,'
      'NOTAFISCAL.NOFIN2VLROUTRASDESP AS CUPON2ACRESC,'
      'CAST('#39'CRD'#39' AS CHAR(5)) AS CUPOCTIPOPADRAO,'
      'VENDEDOR.VENDN2PERCFIDEL as VENDN2COMISV,'
      'VENDEDOR.VENDN2PERCFIDEL as VENDN2COMISP,'
      'NOTAFISCAL.NOFIN2VLRDESCPROM,'
      #39'NF'#39' as TIPODOC'
      'from'
      'NOTAFISCAL'
      
        'left outer join cliente on  NOTAFISCAL.cliea13id = cliente.cliea' +
        '13id'
      'left outer join VENDEDOR ON cliente.VENDICOD = VENDEDOR.VENDICOD'
      
        'left outer join OperacaoEstoque on NOTAFISCAL.OPESICOD = Operaca' +
        'oEstoque.OPESICOD'
      'where'
      'NOTAFISCAL.NOFICSTATUS = '#39'E'#39' and'
      '(%MData1)'
      'and'
      'cliente.vendicod > 0'
      'and'
      'cliente.vendicod <> NOTAFISCAL.vendicod')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData1'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 112
    Top = 16
    object SQLVendasFidelizadasCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasFidelizadasCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLVendasFidelizadasCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
    end
    object SQLVendasFidelizadasVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLVendasFidelizadasPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object SQLVendasFidelizadasCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
    end
    object SQLVendasFidelizadasCUPON2ACRESC: TFloatField
      FieldName = 'CUPON2ACRESC'
    end
    object SQLVendasFidelizadasCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLVendasFidelizadasVENDN2COMISV: TFloatField
      FieldName = 'VENDN2COMISV'
    end
    object SQLVendasFidelizadasVENDN2COMISP: TFloatField
      FieldName = 'VENDN2COMISP'
    end
    object SQLVendasFidelizadasCUPON3BONUSTROCA: TFloatField
      FieldName = 'CUPON3BONUSTROCA'
    end
    object SQLVendasFidelizadasTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 2
    end
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM VENDEDOR')
    Macros = <>
    Left = 480
    Top = 16
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDN2COMISV: TFloatField
      FieldName = 'VENDN2COMISV'
      Origin = 'DB.VENDEDOR.VENDN2COMISV'
    end
    object SQLVendedorVENDN2COMISP: TFloatField
      FieldName = 'VENDN2COMISP'
      Origin = 'DB.VENDEDOR.VENDN2COMISP'
    end
    object SQLVendedorVENDCTIPCOMIS: TStringField
      FieldName = 'VENDCTIPCOMIS'
      Origin = 'DB.VENDEDOR.VENDCTIPCOMIS'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorVENDCCOMISACRESC: TStringField
      FieldName = 'VENDCCOMISACRESC'
      Origin = 'DB.VENDEDOR.VENDCCOMISACRESC'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VENDEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLVendedorREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VENDEDOR.REGISTRO'
    end
    object SQLVendedorVENDA60EMAIL: TStringField
      FieldName = 'VENDA60EMAIL'
      Origin = 'DB.VENDEDOR.VENDA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA5FISJURID: TStringField
      FieldName = 'VENDA5FISJURID'
      Origin = 'DB.VENDEDOR.VENDA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA14CGC: TStringField
      FieldName = 'VENDA14CGC'
      Origin = 'DB.VENDEDOR.VENDA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLVendedorVENDA20IE: TStringField
      FieldName = 'VENDA20IE'
      Origin = 'DB.VENDEDOR.VENDA20IE'
      FixedChar = True
    end
    object SQLVendedorVENDA11CPF: TStringField
      FieldName = 'VENDA11CPF'
      Origin = 'DB.VENDEDOR.VENDA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLVendedorVENDA10RG: TStringField
      FieldName = 'VENDA10RG'
      Origin = 'DB.VENDEDOR.VENDA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLVendedorVENDA60CONTATO: TStringField
      FieldName = 'VENDA60CONTATO'
      Origin = 'DB.VENDEDOR.VENDA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA15FONE1: TStringField
      FieldName = 'VENDA15FONE1'
      Origin = 'DB.VENDEDOR.VENDA15FONE1'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA15FONE2: TStringField
      FieldName = 'VENDA15FONE2'
      Origin = 'DB.VENDEDOR.VENDA15FONE2'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA15FAX: TStringField
      FieldName = 'VENDA15FAX'
      Origin = 'DB.VENDEDOR.VENDA15FAX'
      FixedChar = True
      Size = 15
    end
    object SQLVendedorVENDA60END: TStringField
      FieldName = 'VENDA60END'
      Origin = 'DB.VENDEDOR.VENDA60END'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA60BAI: TStringField
      FieldName = 'VENDA60BAI'
      Origin = 'DB.VENDEDOR.VENDA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA60CID: TStringField
      FieldName = 'VENDA60CID'
      Origin = 'DB.VENDEDOR.VENDA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDA2UF: TStringField
      FieldName = 'VENDA2UF'
      Origin = 'DB.VENDEDOR.VENDA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLVendedorVENDA8CEP: TStringField
      FieldName = 'VENDA8CEP'
      Origin = 'DB.VENDEDOR.VENDA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLVendedorBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      Origin = 'DB.VENDEDOR.BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA5AGENCIA: TStringField
      FieldName = 'VENDA5AGENCIA'
      Origin = 'DB.VENDEDOR.VENDA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object SQLVendedorVENDA10CONTA: TStringField
      FieldName = 'VENDA10CONTA'
      Origin = 'DB.VENDEDOR.VENDA10CONTA'
      FixedChar = True
      Size = 10
    end
    object SQLVendedorVENDA60TITULAR: TStringField
      FieldName = 'VENDA60TITULAR'
      Origin = 'DB.VENDEDOR.VENDA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDDABERTCONTA: TDateTimeField
      FieldName = 'VENDDABERTCONTA'
      Origin = 'DB.VENDEDOR.VENDDABERTCONTA'
    end
    object SQLVendedorVENDA254OBS: TStringField
      FieldName = 'VENDA254OBS'
      Origin = 'DB.VENDEDOR.VENDA254OBS'
      FixedChar = True
      Size = 254
    end
    object SQLVendedorVENDA30CORE: TStringField
      FieldName = 'VENDA30CORE'
      Origin = 'DB.VENDEDOR.VENDA30CORE'
      FixedChar = True
      Size = 30
    end
    object SQLVendedorVENDA60RAZAOSOCIAL: TStringField
      FieldName = 'VENDA60RAZAOSOCIAL'
      Origin = 'DB.VENDEDOR.VENDA60RAZAOSOCIAL'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDN2PERCFIDEL: TFloatField
      FieldName = 'VENDN2PERCFIDEL'
      Origin = 'DB.VENDEDOR.VENDN2PERCFIDEL'
    end
    object SQLVendedorVENDIDIASVALFIDEL: TIntegerField
      FieldName = 'VENDIDIASVALFIDEL'
      Origin = 'DB.VENDEDOR.VENDIDIASVALFIDEL'
    end
  end
  object SQLPedidoVenda: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      'PEDIDOVENDA.PDVDA13ID,'
      'PEDIDOVENDA.PDVDDEMISSAO,'
      'PEDIDOVENDA.VENDICOD,'
      'PEDIDOVENDA.PLRCICOD,'
      'PEDIDOVENDA.PDVDN2TOTPED,'
      'VENDEDOR.VENDN2COMISV,'
      'VENDEDOR.VENDN2COMISP,'
      'PEDIDOVENDA.CLIEA13ID,'
      #39'PV'#39' as TIPODOC,'
      'PEDIDOVENDA.PDVDN2PERCOMIS,'
      'PEDIDOVENDA.PDVDN2VLRFRETE'
      'from'
      'PEDIDOVENDA'
      
        'left outer join Vendedor on PEDIDOVENDA.vendicod = VENDEDOR.vend' +
        'icod'
      'where'
      'PEDIDOVENDA.PDVDCTIPO   = '#39'P'#39' and'
      
        '(PEDIDOVENDA.PDVDCSTATUS = '#39'E'#39' or PEDIDOVENDA.PDVDCSTATUS = '#39'A'#39')' +
        '  and'
      '(%MData)'
      ''
      ''
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 512
    Top = 16
    object SQLPedidoVendaPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaPDVDDEMISSAO: TDateTimeField
      FieldName = 'PDVDDEMISSAO'
    end
    object SQLPedidoVendaVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLPedidoVendaPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object SQLPedidoVendaPDVDN2TOTPED: TFloatField
      FieldName = 'PDVDN2TOTPED'
    end
    object SQLPedidoVendaVENDN2COMISV: TFloatField
      FieldName = 'VENDN2COMISV'
    end
    object SQLPedidoVendaVENDN2COMISP: TFloatField
      FieldName = 'VENDN2COMISP'
    end
    object SQLPedidoVendaCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 2
    end
    object SQLPedidoVendaPDVDN2PERCOMIS: TFloatField
      FieldName = 'PDVDN2PERCOMIS'
    end
    object SQLPedidoVendaPDVDN2VLRFRETE: TFloatField
      FieldName = 'PDVDN2VLRFRETE'
    end
  end
  object DSSQLContasReceber: TDataSource
    DataSet = SQLContasReceber
    Left = 24
    Top = 104
  end
  object SQLRecebimento: TRxQuery
    DatabaseName = 'DB'
    DataSource = DSSQLContasReceber
    SQL.Strings = (
      'Select'
      '*'
      'from'
      'Recebimento'
      'Where'
      '(RECEN2VLRRECTO>0)'
      'and'
      'CTRCA13ID =:CTRCA13ID'
      'and'
      '(%Data)')
    Macros = <
      item
        DataType = ftString
        Name = 'Data'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 55
    Top = 132
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
      FieldName = 'RECEDRECTO'
      Origin = 'DB.RECEBIMENTO.RECEDRECTO'
    end
    object SQLRecebimentoRECEN2VLRRECTO: TFloatField
      FieldName = 'RECEN2VLRRECTO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRRECTO'
    end
    object SQLRecebimentoRECEN2VLRJURO: TFloatField
      FieldName = 'RECEN2VLRJURO'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRJURO'
    end
    object SQLRecebimentoRECEN2VLRMULTA: TFloatField
      FieldName = 'RECEN2VLRMULTA'
      Origin = 'DB.RECEBIMENTO.RECEN2VLRMULTA'
    end
    object SQLRecebimentoRECEN2DESC: TFloatField
      FieldName = 'RECEN2DESC'
      Origin = 'DB.RECEBIMENTO.RECEN2DESC'
    end
    object SQLRecebimentoRECEN2MULTACOBR: TFloatField
      FieldName = 'RECEN2MULTACOBR'
      Origin = 'DB.RECEBIMENTO.RECEN2MULTACOBR'
    end
    object SQLRecebimentoEMPRICODREC: TIntegerField
      FieldName = 'EMPRICODREC'
      Origin = 'DB.RECEBIMENTO.EMPRICODREC'
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
    object SQLRecebimentoRECEA254HISTORICO: TStringField
      FieldName = 'RECEA254HISTORICO'
      Origin = 'DB.RECEBIMENTO.RECEA254HISTORICO'
      Size = 254
    end
    object SQLRecebimentoTPLQICOD: TIntegerField
      FieldName = 'TPLQICOD'
      Origin = 'DB.RECEBIMENTO.TPLQICOD'
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
    object SQLRecebimentoRECEDDATAMOV: TDateTimeField
      FieldName = 'RECEDDATAMOV'
      Origin = 'DB.RECEBIMENTO.RECEDDATAMOV'
    end
    object SQLRecebimentoCTRCA13IDCREDITO: TStringField
      FieldName = 'CTRCA13IDCREDITO'
      Origin = 'DB.RECEBIMENTO.CTRCA13IDCREDITO'
      FixedChar = True
      Size = 13
    end
    object SQLRecebimentoRECECSTATUS: TStringField
      FieldName = 'RECECSTATUS'
      Origin = 'DB.RECEBIMENTO.RECECSTATUS'
      FixedChar = True
      Size = 1
    end
  end
  object SQLPedidoVendaItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  PEDIDOVENDA.PDVDA13ID,'
      '  PEDIDOVENDA.PDVDDEMISSAO,'
      '  PEDIDOVENDA.VENDICOD,'
      '  PEDIDOVENDA.PLRCICOD,'
      '  PEDIDOVENDA.PDVDN2TOTPED,'
      '  VENDEDOR.VENDN2COMISV,'
      '  VENDEDOR.VENDN2COMISP,'
      '  PEDIDOVENDA.CLIEA13ID,'
      '  '#39'PV'#39' as TIPODOC,'
      '  PEDIDOVENDAITEM.PVITN2VLRUNIT,'
      '  PEDIDOVENDAITEM.PVITN3QUANT,'
      '  PEDIDOVENDAITEM.PVITN2VLRDESC,'
      '  PEDIDOVENDAITEM.PVITN3TOTVENDITEM,'
      '  PEDIDOVENDAITEM.PRODICOD'
      'from'
      
        ' (PEDIDOVENDA PEDIDOVENDA INNER JOIN PEDIDOVENDAITEM PEDIDOVENDA' +
        'ITEM ON PEDIDOVENDA.PDVDA13ID = PEDIDOVENDAITEM.PDVDA13ID)'
      
        ' INNER JOIN VENDEDOR VENDEDOR ON PEDIDOVENDA.VENDICOD = VENDEDOR' +
        '.VENDICOD'
      'where'
      '  PEDIDOVENDA.PDVDCTIPO   = '#39'P'#39' and'
      
        '  (PEDIDOVENDA.PDVDCSTATUS = '#39'E'#39' or PEDIDOVENDA.PDVDCSTATUS = '#39'A' +
        #39') and'
      '  PEDIDOVENDAITEM.PVITN3TOTVENDITEM > 0 and'
      '  (%MVendedor) and'
      '  (%MData)')
    Macros = <
      item
        DataType = ftString
        Name = 'MVendedor'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 544
    Top = 16
    object SQLPedidoVendaItemPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaItemPDVDDEMISSAO: TDateTimeField
      FieldName = 'PDVDDEMISSAO'
    end
    object SQLPedidoVendaItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLPedidoVendaItemPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object SQLPedidoVendaItemPDVDN2TOTPED: TFloatField
      FieldName = 'PDVDN2TOTPED'
    end
    object SQLPedidoVendaItemVENDN2COMISV: TFloatField
      FieldName = 'VENDN2COMISV'
    end
    object SQLPedidoVendaItemVENDN2COMISP: TFloatField
      FieldName = 'VENDN2COMISP'
    end
    object SQLPedidoVendaItemCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLPedidoVendaItemTIPODOC: TStringField
      FieldName = 'TIPODOC'
      FixedChar = True
      Size = 2
    end
    object SQLPedidoVendaItemPVITN2VLRUNIT: TFloatField
      FieldName = 'PVITN2VLRUNIT'
    end
    object SQLPedidoVendaItemPVITN3QUANT: TFloatField
      FieldName = 'PVITN3QUANT'
    end
    object SQLPedidoVendaItemPVITN2VLRDESC: TFloatField
      FieldName = 'PVITN2VLRDESC'
    end
    object SQLPedidoVendaItemPVITN3TOTVENDITEM: TFloatField
      FieldName = 'PVITN3TOTVENDITEM'
    end
    object SQLPedidoVendaItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
  end
  object SQLCupomItem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CUPOMITEM.CUPOA13ID,'
      '  CUPOMITEM.VENDICOD,'
      '  CUPOMITEM.CPITN3QTD,'
      '  CUPOMITEM.CPITN3VLRUNIT,'
      '  CUPOM.CUPODEMIS,'
      '  CUPOM.CUPOCSTATUS,'
      '  CUPOM.CUPOCTIPOPADRAO,'
      '  CUPOM.CUPON2DESC,'
      '  CUPOM.CUPON2TOTITENS,'
      '  CUPOM.PLRCICOD,'
      '  CUPOM.CLIEA13ID,'
      '  CUPOMITEM.PRODICOD,'
      '  CUPOMITEM.EMPRICOD'
      'from'
      
        '  CUPOMITEM inner join CUPOM  on CUPOMITEM.CUPOA13ID = CUPOM.CUP' +
        'OA13ID'
      'where'
      '  CUPOM.CUPOCSTATUS = "A" and'
      '  CUPOMITEM.CPITN3QTD > 0 and'
      '  CUPOMITEM.CPITCSTATUS <> "C" and'
      '  (%MEmpresa) and'
      '  (%MData)')
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
      end>
    Left = 667
    Top = 14
    object SQLCupomItemCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOMITEM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomItemVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOMITEM.VENDICOD'
    end
    object SQLCupomItemCPITN3QTD: TFloatField
      FieldName = 'CPITN3QTD'
      Origin = 'DB.CUPOMITEM.CPITN3QTD'
    end
    object SQLCupomItemCPITN3VLRUNIT: TFloatField
      FieldName = 'CPITN3VLRUNIT'
      Origin = 'DB.CUPOMITEM.CPITN3VLRUNIT'
    end
    object SQLCupomItemCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object SQLCupomItemCUPOCSTATUS: TStringField
      FieldName = 'CUPOCSTATUS'
      Origin = 'DB.CUPOM.CUPOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLCupomItemCUPOCTIPOPADRAO: TStringField
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLCupomItemCUPON2DESC: TFloatField
      FieldName = 'CUPON2DESC'
      Origin = 'DB.CUPOM.CUPON2DESC'
    end
    object SQLCupomItemCUPON2TOTITENS: TFloatField
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
    end
    object SQLCupomItemPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
      Origin = 'DB.CUPOM.PLRCICOD'
    end
    object SQLCupomItemCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLCupomItemPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.CUPOMITEM.PRODICOD'
    end
    object SQLCupomItemEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CUPOMITEM.EMPRICOD'
    end
  end
  object SQLEmpresaComissao: TRxQuery
    Tag = 1
    BeforePost = SQLEmpresaComissaoBeforePost
    OnCalcFields = SQLEmpresaComissaoCalcFields
    OnNewRecord = SQLEmpresaComissaoNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From EMPRESACOMISSAO Where (%MFiltro)'
      'Order by EMPRICOD ASC')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 209
    Top = 51
    object SQLEmpresaComissaoID: TIntegerField
      FieldName = 'ID'
      Origin = 'DB.EMPRESACOMISSAO.ID'
    end
    object SQLEmpresaComissaoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESACOMISSAO.EMPRICOD'
    end
    object SQLEmpresaComissaoCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.EMPRESACOMISSAO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEmpresaComissaoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.EMPRESACOMISSAO.PRODICOD'
    end
    object SQLEmpresaComissaoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.EMPRESACOMISSAO.VENDICOD'
    end
    object SQLEmpresaComissaoCUPODEMIS: TDateTimeField
      FieldName = 'CUPODEMIS'
      Origin = 'DB.EMPRESACOMISSAO.CUPODEMIS'
    end
    object SQLEmpresaComissaoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.EMPRESACOMISSAO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLEmpresaComissaoVDCON3QTDVEND: TFloatField
      FieldName = 'VDCON3QTDVEND'
      Origin = 'DB.EMPRESACOMISSAO.VDCON3QTDVEND'
    end
    object SQLEmpresaComissaoVDCON2TOTVENDVISTA: TFloatField
      FieldName = 'VDCON2TOTVENDVISTA'
      Origin = 'DB.EMPRESACOMISSAO.VDCON2TOTVENDVISTA'
    end
    object SQLEmpresaComissaoVDCON2TOTVENDPRAZO: TFloatField
      FieldName = 'VDCON2TOTVENDPRAZO'
      Origin = 'DB.EMPRESACOMISSAO.VDCON2TOTVENDPRAZO'
    end
    object SQLEmpresaComissaoVDCON2PERCOMISSAO: TFloatField
      FieldName = 'VDCON2PERCOMISSAO'
      Origin = 'DB.EMPRESACOMISSAO.VDCON2PERCOMISSAO'
    end
    object SQLEmpresaComissaoVDCON2VLRCOMISS: TFloatField
      FieldName = 'VDCON2VLRCOMISS'
      Origin = 'DB.EMPRESACOMISSAO.VDCON2VLRCOMISS'
    end
    object SQLEmpresaComissaoVDCON2VLRCOMISS3: TFloatField
      FieldName = 'VDCON2VLRCOMISS3'
      Origin = 'DB.EMPRESACOMISSAO.VDCON2VLRCOMISS3'
    end
    object SQLEmpresaComissaoVDCON2VLRCOMISS35: TFloatField
      FieldName = 'VDCON2VLRCOMISS35'
      Origin = 'DB.EMPRESACOMISSAO.VDCON2VLRCOMISS35'
    end
    object SQLEmpresaComissaoVDCON2VLRCOMISS4: TFloatField
      FieldName = 'VDCON2VLRCOMISS4'
      Origin = 'DB.EMPRESACOMISSAO.VDCON2VLRCOMISS4'
    end
    object SQLEmpresaComissaoVDCON2VLRCOMISS5: TFloatField
      FieldName = 'VDCON2VLRCOMISS5'
      Origin = 'DB.EMPRESACOMISSAO.VDCON2VLRCOMISS5'
    end
    object SQLEmpresaComissaoTotalVendasCalc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalVendasCalc'
      Calculated = True
    end
  end
  object ppReportVertebralle: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 584
    Top = 64
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Relatorio de Comiss'#245'es por Filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        mmHeight = 7324
        mmLeft = 10054
        mmTop = 4498
        mmWidth = 92922
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 10583
        mmTop = 21431
        mmWidth = 6604
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Venda A Vista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3629
        mmLeft = 88371
        mmTop = 21167
        mmWidth = 19769
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '3,00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 184944
        mmTop = 21167
        mmWidth = 8884
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '4,00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3629
        mmLeft = 241565
        mmTop = 21167
        mmWidth = 8884
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '5,00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 266436
        mmTop = 21167
        mmWidth = 8884
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 9260
        mmTop = 25400
        mmWidth = 269611
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Venda A Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3629
        mmLeft = 116152
        mmTop = 21167
        mmWidth = 20770
        BandType = 0
      end
      object lbPeriodo: TppLabel
        UserName = 'lbPeriodo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Periodo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 10583
        mmTop = 15875
        mmWidth = 11896
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 144727
        mmTop = 21167
        mmWidth = 24045
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '3,50%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3629
        mmLeft = 212461
        mmTop = 20902
        mmWidth = 8884
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VDCON2TOTVENDVISTA'
        DataPipeline = ppBDEPipeline
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3810
        mmLeft = 79375
        mmTop = 3440
        mmWidth = 28840
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VDCON2TOTVENDPRAZO'
        DataPipeline = ppBDEPipeline
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3704
        mmLeft = 109273
        mmTop = 3440
        mmWidth = 27781
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VDCON2VLRCOMISS3'
        DataPipeline = ppBDEPipeline
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3810
        mmLeft = 173038
        mmTop = 3440
        mmWidth = 21431
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VDCON2VLRCOMISS4'
        DataPipeline = ppBDEPipeline
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3810
        mmLeft = 226219
        mmTop = 3440
        mmWidth = 24077
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VDCON2VLRCOMISS5'
        DataPipeline = ppBDEPipeline
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3810
        mmLeft = 257705
        mmTop = 3440
        mmWidth = 18256
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 8996
        mmTop = 2117
        mmWidth = 269346
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalVendasCalc'
        DataPipeline = ppBDEPipeline
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3704
        mmLeft = 141023
        mmTop = 3440
        mmWidth = 27781
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'VDCON2VLRCOMISS35'
        DataPipeline = ppBDEPipeline
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline'
        mmHeight = 3810
        mmLeft = 199496
        mmTop = 3440
        mmWidth = 21431
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'EMPRICOD'
      DataPipeline = ppBDEPipeline
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        BeforePrint = ppGroupFooterBand1BeforePrint
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'VDCON2TOTVENDVISTA'
          DataPipeline = ppBDEPipeline
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline'
          mmHeight = 3598
          mmLeft = 84138
          mmTop = 794
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'VDCON2TOTVENDPRAZO'
          DataPipeline = ppBDEPipeline
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline'
          mmHeight = 3704
          mmLeft = 112977
          mmTop = 794
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'VDCON2VLRCOMISS3'
          DataPipeline = ppBDEPipeline
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline'
          mmHeight = 3704
          mmLeft = 173038
          mmTop = 794
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'VDCON2VLRCOMISS4'
          DataPipeline = ppBDEPipeline
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline'
          mmHeight = 3704
          mmLeft = 229130
          mmTop = 794
          mmWidth = 21430
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'VDCON2VLRCOMISS5'
          DataPipeline = ppBDEPipeline
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline'
          mmHeight = 3704
          mmLeft = 254001
          mmTop = 794
          mmWidth = 21430
          BandType = 5
          GroupNo = 0
        end
        object lbFilial: TppLabel
          UserName = 'lbFilial'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Filial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 1058
          mmWidth = 67204
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'TotalVendasCalc'
          DataPipeline = ppBDEPipeline
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline'
          mmHeight = 3810
          mmLeft = 144727
          mmTop = 794
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'VDCON2VLRCOMISS35'
          DataPipeline = ppBDEPipeline
          DisplayFormat = '##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppBDEPipeline'
          mmHeight = 3704
          mmLeft = 200290
          mmTop = 794
          mmWidth = 21431
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object dsSQLEmpresaComissao: TDataSource
    DataSet = SQLEmpresaComissao
    Left = 520
    Top = 64
  end
  object ppBDEPipeline: TppBDEPipeline
    DataSource = dsSQLEmpresaComissao
    UserName = 'BDEPipeline'
    Left = 552
    Top = 64
    object ppBDEPipelineppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRICOD'
      FieldName = 'EMPRICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppBDEPipelineppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDICOD'
      FieldName = 'VENDICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppBDEPipelineppField3: TppField
      FieldAlias = 'CUPODEMIS'
      FieldName = 'CUPODEMIS'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object ppBDEPipelineppField4: TppField
      FieldAlias = 'CUPOA13ID'
      FieldName = 'CUPOA13ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 3
    end
    object ppBDEPipelineppField5: TppField
      FieldAlias = 'CLIEA13ID'
      FieldName = 'CLIEA13ID'
      FieldLength = 13
      DisplayWidth = 13
      Position = 4
    end
    object ppBDEPipelineppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODICOD'
      FieldName = 'PRODICOD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppBDEPipelineppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDCON3QTDVEND'
      FieldName = 'VDCON3QTDVEND'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object ppBDEPipelineppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDCON2TOTVENDVISTA'
      FieldName = 'VDCON2TOTVENDVISTA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object ppBDEPipelineppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDCON2TOTVENDPRAZO'
      FieldName = 'VDCON2TOTVENDPRAZO'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 8
    end
    object ppBDEPipelineppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDCON2PERCOMISSAO'
      FieldName = 'VDCON2PERCOMISSAO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object ppBDEPipelineppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDCON2VLRCOMISS'
      FieldName = 'VDCON2VLRCOMISS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object ppBDEPipelineppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDCON2VLRCOMISS3'
      FieldName = 'VDCON2VLRCOMISS3'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object ppBDEPipelineppField15: TppField
      FieldAlias = 'VDCON2VLRCOMISS35'
      FieldName = 'VDCON2VLRCOMISS35'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object ppBDEPipelineppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDCON2VLRCOMISS4'
      FieldName = 'VDCON2VLRCOMISS4'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 13
    end
    object ppBDEPipelineppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDCON2VLRCOMISS5'
      FieldName = 'VDCON2VLRCOMISS5'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object TotalVendasCalc: TppField
      FieldAlias = 'TotalVendasCalc'
      FieldName = 'TotalVendasCalc'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
  end
end
