object FormTelaImportaItens: TFormTelaImportaItens
  Left = 325
  Top = 137
  Width = 542
  Height = 408
  Caption = 'Importar Itens do Coletor'
  Color = 16249066
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object LabelPath: TLabel
    Left = 8
    Top = 64
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 20
    Top = 14
    Width = 47
    Height = 16
    Caption = 'Coletor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 20
    Top = 169
    Width = 236
    Height = 13
    Caption = 'Lista de Problemas durante a importa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ProgressBar: TGauge
    Left = 16
    Top = 118
    Width = 489
    Height = 22
    Progress = 0
  end
  object LBLinha: TLabel
    Left = 21
    Top = 104
    Width = 107
    Height = 13
    Caption = 'Lendo Linha Nro.: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBQTDE: TLabel
    Left = 437
    Top = 104
    Width = 65
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtde Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboColetor: TDBLookupComboBox
    Left = 13
    Top = 30
    Width = 491
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'CFCOA13ID'
    ListField = 'CFCOA60DESCR'
    ListSource = DsQueryConfigColetor
    ParentFont = False
    TabOrder = 0
  end
  object ButtonImport: TBitBtn
    Left = 290
    Top = 63
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Importar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = ButtonImportClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object ButtonCancel: TBitBtn
    Left = 402
    Top = 63
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Kind = bkCancel
  end
  object Memo: TMemo
    Left = 15
    Top = 184
    Width = 489
    Height = 152
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object EditTipoInv: TEdit
    Left = 35
    Top = 64
    Width = 34
    Height = 21
    TabOrder = 4
    Visible = False
  end
  object QueryConfigColetor: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CONFIGCOLETOR')
    Left = 344
  end
  object DsQueryConfigColetor: TDataSource
    DataSet = QueryConfigColetor
    OnDataChange = DsQueryConfigColetorDataChange
    Left = 372
  end
  object QueryProduto: TQuery
    DatabaseName = 'DB'
    Left = 400
  end
  object SQLConsultaInventario: TRxQuery
    Tag = 1
    BeforePost = SQLConsultaInventarioBeforePost
    OnNewRecord = SQLConsultaInventarioNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM INVENTARIOESTOQUE'
      'WHERE %MFILTRO')
    Macros = <
      item
        DataType = ftString
        Name = 'MFILTRO'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 454
    object SQLConsultaInventarioEMPRICOD: TIntegerField
      Tag = 1
      FieldName = 'EMPRICOD'
      Origin = 'DB.INVENTARIOESTOQUE.EMPRICOD'
    end
    object SQLConsultaInventarioTERMICOD: TIntegerField
      Tag = 1
      FieldName = 'TERMICOD'
      Origin = 'DB.INVENTARIOESTOQUE.TERMICOD'
    end
    object SQLConsultaInventarioINVDDATA: TDateTimeField
      Tag = 1
      FieldName = 'INVDDATA'
      Origin = 'DB.INVENTARIOESTOQUE.INVDDATA'
    end
    object SQLConsultaInventarioTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'DB.INVENTARIOESTOQUE.TIPO'
      FixedChar = True
      Size = 1
    end
    object SQLConsultaInventarioINVIPRODPOS: TIntegerField
      FieldName = 'INVIPRODPOS'
      Origin = 'DB.INVENTARIOESTOQUE.INVIPRODPOS'
    end
    object SQLConsultaInventarioPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.INVENTARIOESTOQUE.PRODICOD'
    end
    object SQLConsultaInventarioINVICONTAGEM1: TBCDField
      FieldName = 'INVICONTAGEM1'
      Origin = 'DB.INVENTARIOESTOQUE.INVICONTAGEM1'
      Precision = 15
      Size = 3
    end
    object SQLConsultaInventarioINVICONTAGEM2: TBCDField
      FieldName = 'INVICONTAGEM2'
      Origin = 'DB.INVENTARIOESTOQUE.INVICONTAGEM2'
      Precision = 15
      Size = 3
    end
    object SQLConsultaInventarioINVICONTAGEM3: TBCDField
      FieldName = 'INVICONTAGEM3'
      Origin = 'DB.INVENTARIOESTOQUE.INVICONTAGEM3'
      Precision = 15
      Size = 3
    end
    object SQLConsultaInventarioINVDFECHAMENTO: TDateTimeField
      FieldName = 'INVDFECHAMENTO'
      Origin = 'DB.INVENTARIOESTOQUE.INVDFECHAMENTO'
    end
    object SQLConsultaInventarioPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.INVENTARIOESTOQUE.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLConsultaInventarioREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.INVENTARIOESTOQUE.REGISTRO'
    end
  end
  object DSSQLConsultaInventario: TDataSource
    DataSet = SQLConsultaInventario
    Left = 484
  end
end
