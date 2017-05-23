inherited FormTelaLancamentoGradeXML: TFormTelaLancamentoGradeXML
  Left = 389
  Top = 172
  Caption = 'FormTelaLancamentoGradeXML'
  ClientHeight = 430
  ClientWidth = 832
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Top = 84
    Width = 832
    Height = 309
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 832
      Height = 309
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 10
      ParentColor = True
      TabOrder = 0
      object DBGridLista: TDBGrid
        Left = 10
        Top = 10
        Width = 812
        Height = 289
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DSTblQtde
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnEnter = DBGridListaEnter
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 832
    Height = 84
    inherited PanelCabecalho: TPanel
      Width = 832
      Height = 84
      object lbMarcaReferencia: TLabel [1]
        Left = 5
        Top = 26
        Width = 144
        Height = 22
        Caption = 'MarcaReferencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited PanelNavigator: TPanel
        Top = 52
        Width = 832
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 832
          inherited BtnFecharTela: TSpeedButton
            Left = 732
          end
          object BtnOk: TSpeedButton
            Left = 3
            Top = 3
            Width = 75
            Height = 25
            Caption = '&OK'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              DE040000424DDE0400000000000036040000280000000C0000000E0000000100
              080000000000A8000000130B0000130B0000000100000001000000000000A7C2
              B300588C7000719D85004D7B620086AB9700436C56009EBDA2007497780084AC
              88004A765E006685690055886D00518268005080660056896D003E634F00FFFF
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
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000111111111100
              11111111111111111111000B0011111111111111110009090011111111111111
              1100090F10001111111111110009090D0E0011111111110009090B000C060011
              11111100090800000A0200111111000909000011000206001111000708001111
              0003020011111100001111111100030600111111111111111100050200111111
              1111111111110003040011111111111111110001020011111111111111111100
              0011}
            ParentFont = False
            OnClick = BtnOkClick
          end
        end
      end
    end
  end
  object Panel5: TPanel [2]
    Left = 0
    Top = 393
    Width = 832
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object Label5: TLabel
      Left = 599
      Top = 14
      Width = 109
      Height = 13
      Caption = 'Qtde.Total Digitado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditTotal: TCurrencyEdit
      Left = 717
      Top = 7
      Width = 95
      Height = 24
      TabStop = False
      AutoSize = False
      Color = 14737632
      DisplayFormat = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object qry: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 228
    Top = 4
  end
  object DsMasterTemplate: TDataSource
    Left = 172
    Top = 37
  end
  object DSSQLMovimentoItem: TDataSource
    DataSet = FormCadastroMovimentosDiversosEstoqueItem.SQLTemplate
    Left = 200
    Top = 37
  end
  object SQLGradeTamanho: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    GRADETAMANHO'
      'Where '
      '    GRADICOD=:GRADICOD'
      'ORDER BY GRTMICOD')
    Macros = <>
    Left = 228
    Top = 37
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRADICOD'
        ParamType = ptUnknown
      end>
    object SQLGradeTamanhoGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.GRADETAMANHO.GRADICOD'
    end
    object SQLGradeTamanhoGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.GRADETAMANHO.GRTMICOD'
    end
    object SQLGradeTamanhoGRTMA5DESCR: TStringField
      FieldName = 'GRTMA5DESCR'
      Origin = 'DB.GRADETAMANHO.GRTMA5DESCR'
      FixedChar = True
      Size = 5
    end
  end
  object SQLCor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From COR')
    Macros = <>
    Left = 256
    Top = 37
    object SQLCorCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.COR.CORICOD'
    end
    object SQLCorCORA30DESCR: TStringField
      FieldName = 'CORA30DESCR'
      Origin = 'DB.COR.CORA30DESCR'
      FixedChar = True
      Size = 30
    end
  end
  object TblQtde: TMemoryTable
    BeforeInsert = TblQtdeBeforeInsert
    BeforeDelete = TblQtdeBeforeDelete
    OnCalcFields = TblQtdeCalcFields
    OnNewRecord = TblQtdeNewRecord
    DatabaseName = 'Easy_Temp'
    EnableDelete = False
    TableName = 'TblQtde'
    Left = 284
    Top = 37
    object TblQtdeCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Visible = False
    end
    object TblQtdeCorLookUp: TStringField
      DisplayLabel = 'Cor'
      FieldKind = fkLookup
      FieldName = 'CorLookUp'
      LookupDataSet = SQLCor
      LookupKeyFields = 'CORICOD'
      LookupResultField = 'CORA30DESCR'
      KeyFields = 'CORICOD'
      ReadOnly = True
      Size = 60
      Lookup = True
    end
    object TblQtdeField1: TFloatField
      FieldName = '1'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField2: TFloatField
      FieldName = '2'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField3: TFloatField
      FieldName = '3'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField4: TFloatField
      FieldName = '4'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField5: TFloatField
      FieldName = '5'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField6: TFloatField
      FieldName = '6'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField7: TFloatField
      FieldName = '7'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField8: TFloatField
      FieldName = '8'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField9: TFloatField
      FieldName = '9'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField10: TFloatField
      FieldName = '10'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField11: TFloatField
      FieldName = '11'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField12: TFloatField
      FieldName = '12'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField13: TFloatField
      FieldName = '13'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField14: TFloatField
      FieldName = '14'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeBCDField15: TFloatField
      FieldName = '15'
      Visible = False
      OnChange = TblQtdeField1Change
      DisplayFormat = '#,###'
      EditFormat = '#,###'
    end
    object TblQtdeCod1: TIntegerField
      FieldName = 'Cod1'
      Visible = False
    end
    object TblQtdeCod2: TIntegerField
      FieldName = 'Cod2'
      Visible = False
    end
    object TblQtdeCod3: TIntegerField
      FieldName = 'Cod3'
      Visible = False
    end
    object TblQtdeCod4: TIntegerField
      FieldName = 'Cod4'
      Visible = False
    end
    object TblQtdeCod5: TIntegerField
      FieldName = 'Cod5'
      Visible = False
    end
    object TblQtdeCod6: TIntegerField
      FieldName = 'Cod6'
      Visible = False
    end
    object TblQtdeCod7: TIntegerField
      FieldName = 'Cod7'
      Visible = False
    end
    object TblQtdeCod8: TIntegerField
      FieldName = 'Cod8'
      Visible = False
    end
    object TblQtdeCod9: TIntegerField
      FieldName = 'Cod9'
      Visible = False
    end
    object TblQtdeCod10: TIntegerField
      FieldName = 'Cod10'
      Visible = False
    end
    object TblQtdeCod11: TIntegerField
      FieldName = 'Cod11'
      Visible = False
    end
    object TblQtdeCod12: TIntegerField
      FieldName = 'Cod12'
      Visible = False
    end
    object TblQtdeCod13: TIntegerField
      FieldName = 'Cod13'
      Visible = False
    end
    object TblQtdeCod14: TIntegerField
      FieldName = 'Cod14'
      Visible = False
    end
    object TblQtdeCod15: TIntegerField
      FieldName = 'Cod15'
      Visible = False
    end
    object TblQtdeTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      ReadOnly = True
      Calculated = True
    end
  end
  object DSTblQtde: TDataSource
    DataSet = TblQtde
    Left = 312
    Top = 37
  end
  object SQLProdutoGrade: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select'
      '    *'
      'From'
      '    PRODUTO'
      'Where'
      '    PRODIAGRUPGRADE=:PRODIAGRUPGRADE'
      'order by'
      '    CORICOD,GRADICOD,GRTMICOD')
    Macros = <>
    Left = 340
    Top = 37
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PRODIAGRUPGRADE'
        ParamType = ptUnknown
      end>
    object SQLProdutoGradePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO.PRODICOD'
    end
    object SQLProdutoGradeGRADICOD: TIntegerField
      FieldName = 'GRADICOD'
      Origin = 'DB.PRODUTO.GRADICOD'
    end
    object SQLProdutoGradeGRTMICOD: TIntegerField
      FieldName = 'GRTMICOD'
      Origin = 'DB.PRODUTO.GRTMICOD'
    end
    object SQLProdutoGradeCORICOD: TIntegerField
      FieldName = 'CORICOD'
      Origin = 'DB.PRODUTO.CORICOD'
    end
    object SQLProdutoGradePRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.VIEW_GRADEPRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGradePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.VIEW_GRADEPRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLProdutoGrade: TDataSource
    DataSet = SQLProdutoGrade
    Left = 368
    Top = 37
  end
end
