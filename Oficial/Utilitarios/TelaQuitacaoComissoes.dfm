inherited FormTelaQuitacaoComissoes: TFormTelaQuitacaoComissoes
  Left = 218
  Top = 161
  Caption = 'Tela Quita'#231#227'o Comiss'#245'es'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        Width = 0
        Visible = False
      end
      object pnCentral: TPanel
        Left = 28
        Top = 4
        Width = 717
        Height = 305
        BevelInner = bvLowered
        ParentColor = True
        TabOrder = 1
        object GroupBox2: TGroupBox
          Left = 2
          Top = 2
          Width = 713
          Height = 46
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label3: TLabel
            Left = 38
            Top = 22
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
            Left = 154
            Top = 22
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
          object Label2: TLabel
            Left = 288
            Top = 19
            Width = 295
            Height = 13
            Caption = 'DIMINUIR O VALOR PAGO COM LIQUIDA'#199#195'O PARCIAL'
          end
          object De: TDateEdit
            Left = 60
            Top = 18
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
            Left = 182
            Top = 18
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
          object chkPeriodo: TCheckBox
            Left = 8
            Top = 0
            Width = 65
            Height = 17
            Caption = 'Periodo'
            TabOrder = 2
          end
        end
        object chlVendedor: TCheckListBox
          Left = 2
          Top = 48
          Width = 550
          Height = 171
          Cursor = crHandPoint
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          ItemHeight = 13
          TabOrder = 1
        end
        object ProgressBar: TProgressBar
          Left = 2
          Top = 286
          Width = 713
          Height = 17
          Align = alBottom
          Smooth = True
          TabOrder = 2
        end
        object Panel1: TPanel
          Left = 2
          Top = 219
          Width = 713
          Height = 67
          Align = alBottom
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 3
          object BtnVisualizar: TSpeedButton
            Left = 552
            Top = 3
            Width = 161
            Height = 62
            Cursor = crHandPoint
            Hint = 'Calcula as Comiss'#245'es do Per'#237'odo'
            Caption = '&Quitar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
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
          object BtAtualizar: TSpeedButton
            Left = 391
            Top = 3
            Width = 161
            Height = 62
            Cursor = crHandPoint
            Hint = 'Calcula as Comiss'#245'es do Per'#237'odo'
            Caption = '&Atualizar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Spacing = 5
            OnClick = BtAtualizarClick
          end
          object chkCUPOM: TCheckBox
            Left = 8
            Top = 3
            Width = 180
            Height = 17
            Cursor = crHandPoint
            Caption = 'Comiss'#245'es de CUPOM'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 0
          end
          object chkNF: TCheckBox
            Left = 8
            Top = 24
            Width = 180
            Height = 17
            Cursor = crHandPoint
            Caption = 'Comiss'#245'es de NOTA FISCAL'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 1
          end
          object chkMANUTENCAO: TCheckBox
            Left = 8
            Top = 45
            Width = 180
            Height = 17
            Cursor = crHandPoint
            Caption = 'Comiss'#245'es de MANUTEN'#199#195'O'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 2
          end
        end
        object Panel2: TPanel
          Left = 552
          Top = 48
          Width = 163
          Height = 171
          Align = alRight
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 4
          object Label1: TLabel
            Left = 0
            Top = 5
            Width = 156
            Height = 13
            Caption = 'Valor M'#225'ximo por Vendedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblStatus: TLabel
            Left = 0
            Top = 104
            Width = 163
            Height = 67
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'Status'
            Layout = tlCenter
          end
          object ceValorLimitePorUsuario: TCurrencyEdit
            Left = 32
            Top = 22
            Width = 113
            Height = 21
            AutoSize = False
            TabOrder = 0
          end
        end
        object DBGridTotais: TDBGrid
          Left = 2
          Top = 48
          Width = 550
          Height = 171
          Cursor = crHandPoint
          Align = alClient
          DataSource = DsCdsTotais
          FixedColor = 15853540
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 5
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGridTotaisCellClick
          OnDrawColumnCell = DBGridTotaisDrawColumnCell
          OnDblClick = DBGridTotaisDblClick
          OnKeyPress = DBGridTotaisKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'SEL'
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDA60NOME'
              Width = 207
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTALVISTA'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTALPRAZO'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValoTotal'
              Width = 101
              Visible = True
            end>
        end
      end
    end
  end
  object SQLComissao: TRxQuery
    DatabaseName = 'DB'
    DataSource = DsCdsTotais
    RequestLive = True
    SQL.Strings = (
      'Select '
      '* '
      'From '
      'VENDEDORCOMISSAO'
      'Where '
      'VENDICOD = :VENDICOD'
      'and'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 73
    Top = 17
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VENDICOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object SQLComissaoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDORCOMISSAO.VENDICOD'
    end
    object SQLComissaoCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.VENDEDORCOMISSAO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLComissaoVDCOICOD: TIntegerField
      FieldName = 'VDCOICOD'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOICOD'
    end
    object SQLComissaoVDCON2TOTVENDVISTA: TFloatField
      FieldName = 'VDCON2TOTVENDVISTA'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDVISTA'
    end
    object SQLComissaoVDCON2TOTVENDPRAZO: TFloatField
      FieldName = 'VDCON2TOTVENDPRAZO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDPRAZO'
    end
    object SQLComissaoVDCOINROVEND: TIntegerField
      FieldName = 'VDCOINROVEND'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOINROVEND'
    end
    object SQLComissaoVDCON2VENDMEDIA: TFloatField
      FieldName = 'VDCON2VENDMEDIA'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2VENDMEDIA'
    end
    object SQLComissaoVDCON3QTDVEND: TFloatField
      FieldName = 'VDCON3QTDVEND'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON3QTDVEND'
    end
    object SQLComissaoVDCON2VLRCOMISS: TFloatField
      FieldName = 'VDCON2VLRCOMISS'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2VLRCOMISS'
    end
    object SQLComissaoVDCODEMIS: TDateTimeField
      FieldName = 'VDCODEMIS'
      Origin = 'DB.VENDEDORCOMISSAO.VDCODEMIS'
    end
    object SQLComissaoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VENDEDORCOMISSAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLComissaoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VENDEDORCOMISSAO.REGISTRO'
    end
    object SQLComissaoVDCODESTORNO: TDateTimeField
      FieldName = 'VDCODESTORNO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCODESTORNO'
    end
    object SQLComissaoVDCON3VLRESTORNO: TFloatField
      FieldName = 'VDCON3VLRESTORNO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON3VLRESTORNO'
    end
    object SQLComissaoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.VENDEDORCOMISSAO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLComissaoVDCOA5TIPODOC: TStringField
      FieldName = 'VDCOA5TIPODOC'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOA5TIPODOC'
      FixedChar = True
      Size = 5
    end
    object SQLComissaoVDCOCDEBCRED: TStringField
      FieldName = 'VDCOCDEBCRED'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOCDEBCRED'
      FixedChar = True
      Size = 1
    end
    object SQLComissaoVDCON2PERCOMISSAO: TFloatField
      FieldName = 'VDCON2PERCOMISSAO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2PERCOMISSAO'
    end
    object SQLComissaoVDCOCSTATUS: TStringField
      FieldName = 'VDCOCSTATUS'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLComissaoVDCON3VLRQUITADO: TFloatField
      FieldName = 'VDCON3VLRQUITADO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON3VLRQUITADO'
    end
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  VENDICOD,'
      '  VENDA60NOME'
      'from '
      'VENDEDOR')
    Macros = <>
    Left = 104
    Top = 17
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
  end
  object SQLTotais: TRxQuery
    OnCalcFields = SQLTotaisCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '"S" SEL,'
      'VD.VENDICOD,'
      'VD.VENDA60NOME,'
      'Sum(VC.VDCON2TOTVENDVISTA) TOTALVISTA,'
      'Sum(VC.VDCON2TOTVENDPRAZO) TOTALPRAZO,'
      'Sum(VC.VDCON2VLRCOMISS) TOTALCOMISSAO,'
      'Sum(VC.VDCON3VLRQUITADO) TOTALPARCIAL'
      'From '
      'VENDEDORCOMISSAO VC'
      'left outer join VENDEDOR VD on VD.VENDICOD = VC.VENDICOD'
      ''
      'where (%MFiltro)'
      'group by'
      'VD.VENDICOD,'
      'VD.VENDA60NOME')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 136
    Top = 17
    object SQLTotaisSEL: TStringField
      DisplayLabel = ' '
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
    object SQLTotaisVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object SQLTotaisVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTotaisTOTALVISTA: TFloatField
      FieldName = 'TOTALVISTA'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDVISTA'
    end
    object SQLTotaisTOTALPRAZO: TFloatField
      FieldName = 'TOTALPRAZO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDPRAZO'
    end
    object SQLTotaisTOTALCOMISSAO: TFloatField
      FieldName = 'TOTALCOMISSAO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2VLRCOMISS'
    end
    object SQLTotaisTOTALPARCIAL: TFloatField
      FieldName = 'TOTALPARCIAL'
    end
  end
  object dspTotais: TDataSetProvider
    DataSet = SQLTotais
    Left = 167
    Top = 17
  end
  object CdsTotais: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SEL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VENDICOD'
        DataType = ftInteger
      end
      item
        Name = 'VENDA60NOME'
        Attributes = [faFixed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TOTALVISTA'
        DataType = ftBCD
        Precision = 15
        Size = 3
      end
      item
        Name = 'TOTALPRAZO'
        DataType = ftBCD
        Precision = 15
        Size = 3
      end
      item
        Name = 'TOTALCOMISSAO'
        DataType = ftBCD
        Precision = 15
        Size = 3
      end>
    IndexDefs = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'dspTotais'
    StoreDefs = True
    Left = 197
    Top = 17
    object CdsTotaisSEL: TStringField
      DisplayLabel = ' '
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
    object CdsTotaisVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object CdsTotaisVENDA60NOME: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 57
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object CdsTotaisTOTALVISTA: TFloatField
      DisplayLabel = 'Total '#192' Vista'
      DisplayWidth = 19
      FieldName = 'TOTALVISTA'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDVISTA'
      DisplayFormat = '#,##0.00'
    end
    object CdsTotaisTOTALPRAZO: TFloatField
      DisplayLabel = 'Total '#192' Prazo'
      DisplayWidth = 19
      FieldName = 'TOTALPRAZO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDPRAZO'
      DisplayFormat = '#,##0.00'
    end
    object CdsTotaisTOTALCOMISSAO: TFloatField
      DisplayLabel = 'Total Geral'
      DisplayWidth = 19
      FieldName = 'TOTALCOMISSAO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2VLRCOMISS'
      DisplayFormat = '#,##0.00'
    end
    object CdsTotaisTOTALPARCIAL: TFloatField
      FieldName = 'TOTALPARCIAL'
    end
    object CdsTotaisValoTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValoTotal'
      Calculated = True
    end
  end
  object DsCdsTotais: TDataSource
    DataSet = CdsTotais
    Left = 226
    Top = 17
  end
end
