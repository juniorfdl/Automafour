inherited FormTelaRecalcularTotalizador: TFormTelaRecalcularTotalizador
  Left = 218
  Top = 182
  Width = 771
  Height = 412
  Caption = 'Recalcular Totalizadores de Caixa'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 755
    Height = 373
    inherited PanelCentral: TPanel
      Width = 751
      Height = 289
      object Label1: TLabel [0]
        Left = 103
        Top = 177
        Width = 559
        Height = 13
        Caption = 
          '*** Esta rotina ir'#225' recalcular apenas os movimentos de caixa que' +
          ' ocorreram nao empresa corrente!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelBarra: TPanel
        Width = 74
        Height = 289
        TabOrder = 3
      end
      object GroupBox2: TGroupBox
        Left = 252
        Top = 127
        Width = 249
        Height = 41
        Caption = ' Per'#237'odo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label3: TLabel
          Left = 8
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
          Left = 131
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
        object Ate: TDateEdit
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
      object GroupBox1: TGroupBox
        Left = 180
        Top = 31
        Width = 407
        Height = 42
        Caption = ' Terminal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object ComboTerminal: TRxDBLookupCombo
          Left = 6
          Top = 16
          Width = 395
          Height = 21
          DropDownCount = 8
          LookupField = 'TERMICOD'
          LookupDisplay = 'TERMA60DESCR'
          LookupSource = DSSQLTerminal1
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 181
        Top = 77
        Width = 407
        Height = 42
        Caption = ' Consolidar com o Terminal '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object ComboTerminal2: TRxDBLookupCombo
          Left = 6
          Top = 16
          Width = 395
          Height = 21
          DropDownCount = 8
          LookupField = 'TERMICOD'
          LookupDisplay = 'TERMA60DESCR'
          LookupSource = DSSQLTerminal2
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 751
      inherited PanelCabecalho: TPanel
        Width = 751
        inherited PanelNavigator: TPanel
          Width = 751
          object BtnVisualizar: TSpeedButton [0]
            Left = 3
            Top = 4
            Width = 123
            Height = 24
            Cursor = crHandPoint
            Hint = 'Cancelat altera'#231#227'o/inclus'#227'o registro atual(F12)'
            Caption = '&Calcular/Recalcular'
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
          object Msg: TLabel [1]
            Left = 285
            Top = 9
            Width = 23
            Height = 13
            Caption = 'Msg'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 751
          end
          object Progress: TProgressBar
            Left = 129
            Top = 6
            Width = 150
            Height = 21
            Smooth = True
            TabOrder = 0
          end
        end
      end
    end
  end
  object SQLTotalizadorDiarioCaixa: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  TOTALIZADORDIARIOCAIXA'
      'where '
      '  (%MEmpresa) and'
      '  (%MFiltro)')
    UpdateObject = UpdateSQLTotalizadorDiarioCaixa
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 191
    Top = 8
    object SQLTotalizadorDiarioCaixaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TOTALIZADORDIARIOCAIXA.EMPRICOD'
    end
    object SQLTotalizadorDiarioCaixaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TOTALIZADORDIARIOCAIXA.TERMICOD'
    end
    object SQLTotalizadorDiarioCaixaTODIDMOV: TDateTimeField
      FieldName = 'TODIDMOV'
      Origin = 'DB.TOTALIZADORDIARIOCAIXA.TODIDMOV'
    end
    object SQLTotalizadorDiarioCaixaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.TOTALIZADORDIARIOCAIXA.USUAICOD'
    end
    object SQLTotalizadorDiarioCaixaTOTAICOD: TIntegerField
      FieldName = 'TOTAICOD'
      Origin = 'DB.TOTALIZADORDIARIOCAIXA.TOTAICOD'
    end
    object SQLTotalizadorDiarioCaixaTODIN2VLRDEBITO: TFloatField
      FieldName = 'TODIN2VLRDEBITO'
      Origin = 'DB.TOTALIZADORDIARIOCAIXA.TODIN2VLRDEBITO'
    end
    object SQLTotalizadorDiarioCaixaTODIN2VLRCREDITO: TFloatField
      FieldName = 'TODIN2VLRCREDITO'
      Origin = 'DB.TOTALIZADORDIARIOCAIXA.TODIN2VLRCREDITO'
    end
    object SQLTotalizadorDiarioCaixaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.TOTALIZADORDIARIOCAIXA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTotalizadorDiarioCaixaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.TOTALIZADORDIARIOCAIXA.REGISTRO'
    end
  end
  object UpdateSQLTotalizadorDiarioCaixa: TUpdateSQL
    ModifySQL.Strings = (
      'update TOTALIZADORDIARIOCAIXA'
      'set'
      '  EMPRICOD = :EMPRICOD,'
      '  TERMICOD = :TERMICOD,'
      '  TODIDMOV = :TODIDMOV,'
      '  USUAICOD = :USUAICOD,'
      '  TOTAICOD = :TOTAICOD,'
      '  TODIN2VLRDEBITO = :TODIN2VLRDEBITO,'
      '  TODIN2VLRCREDITO = :TODIN2VLRCREDITO,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  TODIDMOV = :OLD_TODIDMOV and'
      '  USUAICOD = :OLD_USUAICOD and'
      '  TOTAICOD = :OLD_TOTAICOD')
    InsertSQL.Strings = (
      'insert into TOTALIZADORDIARIOCAIXA'
      
        '  (EMPRICOD, TERMICOD, TODIDMOV, USUAICOD, TOTAICOD, TODIN2VLRDE' +
        'BITO, TODIN2VLRCREDITO, '
      '   PENDENTE, REGISTRO)'
      'values'
      
        '  (:EMPRICOD, :TERMICOD, :TODIDMOV, :USUAICOD, :TOTAICOD, :TODIN' +
        '2VLRDEBITO, '
      '   :TODIN2VLRCREDITO, :PENDENTE, :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from TOTALIZADORDIARIOCAIXA'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  TERMICOD = :OLD_TERMICOD and'
      '  TODIDMOV = :OLD_TODIDMOV and'
      '  USUAICOD = :OLD_USUAICOD and'
      '  TOTAICOD = :OLD_TOTAICOD')
    Left = 219
    Top = 8
  end
  object SQLTotalizadorCaixa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TOTALIZADORCAIXA')
    Macros = <>
    Left = 160
    Top = 8
    object SQLTotalizadorCaixaTOTAICOD: TIntegerField
      FieldName = 'TOTAICOD'
      Origin = 'DB.TOTALIZADORCAIXA.TOTAICOD'
    end
    object SQLTotalizadorCaixaTOTAA60DESCR: TStringField
      FieldName = 'TOTAA60DESCR'
      Origin = 'DB.TOTALIZADORCAIXA.TOTAA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTotalizadorCaixaTOTACTRANSFSALDO: TStringField
      FieldName = 'TOTACTRANSFSALDO'
      Origin = 'DB.TOTALIZADORCAIXA.TOTACTRANSFSALDO'
      FixedChar = True
      Size = 1
    end
    object SQLTotalizadorCaixaTOTACDEBITOCREDITO: TStringField
      FieldName = 'TOTACDEBITOCREDITO'
      Origin = 'DB.TOTALIZADORCAIXA.TOTACDEBITOCREDITO'
      FixedChar = True
      Size = 1
    end
    object SQLTotalizadorCaixaTOTAIORDLIST: TIntegerField
      FieldName = 'TOTAIORDLIST'
      Origin = 'DB.TOTALIZADORCAIXA.TOTAIORDLIST'
    end
  end
  object SQLMovimentoCaixa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MOVIMENTOCAIXA'
      'where '
      '%MFiltro and '
      '%Terminal and'
      '(MVCXN2VLRDEB > 0 or MVCXN2VLRCRED > 0)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'Terminal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 250
    Top = 8
    object SQLMovimentoCaixaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.MOVIMENTOCAIXA.EMPRICOD'
    end
    object SQLMovimentoCaixaTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.MOVIMENTOCAIXA.TERMICOD'
    end
    object SQLMovimentoCaixaMVCXDMOV: TDateTimeField
      FieldName = 'MVCXDMOV'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXDMOV'
    end
    object SQLMovimentoCaixaMVCXICOD: TIntegerField
      FieldName = 'MVCXICOD'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXICOD'
    end
    object SQLMovimentoCaixaNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
      Origin = 'DB.MOVIMENTOCAIXA.NUMEICOD'
    end
    object SQLMovimentoCaixaOPCXICOD: TIntegerField
      FieldName = 'OPCXICOD'
      Origin = 'DB.MOVIMENTOCAIXA.OPCXICOD'
    end
    object SQLMovimentoCaixaUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
      Origin = 'DB.MOVIMENTOCAIXA.USUAICOD'
    end
    object SQLMovimentoCaixaMVCXN2VLRDEB: TFloatField
      FieldName = 'MVCXN2VLRDEB'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRDEB'
    end
    object SQLMovimentoCaixaMVCXN2VLRCRED: TFloatField
      FieldName = 'MVCXN2VLRCRED'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXN2VLRCRED'
    end
    object SQLMovimentoCaixaMVCXCNORMREV: TStringField
      FieldName = 'MVCXCNORMREV'
      Origin = 'DB.MOVIMENTOCAIXA.MVCXCNORMREV'
      FixedChar = True
      Size = 1
    end
  end
  object SQLTotalizar: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 281
    Top = 8
  end
  object DSSQLTerminal1: TDataSource
    DataSet = SQLTerminal1
    Left = 510
    Top = 5
  end
  object SQLTerminal1: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  TERMICOD,'
      '  EMPRICOD,'
      '  TERMCTIPO,'
      '  TERMA60DESCR'
      'from'
      '  TERMINAL'
      'where'
      '  TERMCTIPO = "C" and'
      '  (%MEmpresa)'
      'order by'
      '  TERMA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 538
    Top = 5
    object SQLTerminal1TERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminal1EMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TERMINAL.EMPRICOD'
    end
    object SQLTerminal1TERMCTIPO: TStringField
      FieldName = 'TERMCTIPO'
      Origin = 'DB.TERMINAL.TERMCTIPO'
      FixedChar = True
      Size = 1
    end
    object SQLTerminal1TERMA60DESCR: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object SQLTerminal2: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '  TERMICOD,'
      '  EMPRICOD,'
      '  TERMCTIPO,'
      '  TERMA60DESCR'
      'from'
      '  TERMINAL'
      'where'
      '  TERMCTIPO = "C" and'
      '  (%MEmpresa)'
      'order by'
      '  TERMA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 603
    Top = 5
    object IntegerField1: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object IntegerField2: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TERMINAL.EMPRICOD'
    end
    object StringField1: TStringField
      FieldName = 'TERMCTIPO'
      Origin = 'DB.TERMINAL.TERMCTIPO'
      FixedChar = True
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'TERMA60DESCR'
      Origin = 'DB.TERMINAL.TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLTerminal2: TDataSource
    DataSet = SQLTerminal2
    Left = 575
    Top = 5
  end
  object SQLTerminal: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from TERMINAL'
      'where '
      '  (%MEmpresa) and'
      '  (%MTerminal)')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTerminal'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 128
    Top = 8
    object SQLTerminalTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.TERMINAL.TERMICOD'
    end
    object SQLTerminalEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.TERMINAL.EMPRICOD'
    end
  end
end
