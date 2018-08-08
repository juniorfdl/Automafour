inherited FormTelaEmissaoEtiquetaGrade: TFormTelaEmissaoEtiquetaGrade
  Left = 317
  Top = 173
  Width = 796
  Height = 546
  Caption = 'Lan'#231'amento por Grade'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 780
    Height = 508
    inherited PanelCentral: TPanel
      Width = 776
      Height = 424
      inherited PanelBarra: TPanel
        Top = 92
        Width = 0
        Height = 295
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 92
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        object Label1: TLabel
          Left = 12
          Top = 8
          Width = 96
          Height = 13
          Caption = 'Produto Principal'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 500
          Top = 8
          Width = 61
          Height = 13
          Caption = 'Refer'#234'ncia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 11
          Top = 46
          Width = 35
          Height = 13
          Caption = 'Marca'
          Font.Charset = ANSI_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 12
          Top = 22
          Width = 99
          Height = 21
          TabStop = False
          Color = 16249066
          DataField = 'PRODICOD'
          DataSource = FormTelaEmissaoEtiquetasCodigoBarras.DSSQLProduto
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 115
          Top = 22
          Width = 381
          Height = 21
          TabStop = False
          Color = 16249066
          Ctl3D = True
          DataField = 'PRODA60DESCR'
          DataSource = FormTelaEmissaoEtiquetasCodigoBarras.DSSQLProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 501
          Top = 22
          Width = 255
          Height = 21
          TabStop = False
          Color = 16249066
          Ctl3D = True
          DataField = 'PRODA60REFER'
          DataSource = FormTelaEmissaoEtiquetasCodigoBarras.DSSQLProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 11
          Top = 60
          Width = 484
          Height = 21
          TabStop = False
          Color = 16249066
          Ctl3D = True
          DataField = 'MarcaLookup'
          DataSource = FormTelaEmissaoEtiquetasCodigoBarras.DSSQLProduto
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 92
        Width = 776
        Height = 295
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 20
        ParentColor = True
        TabOrder = 2
        object DBGridLista: TDBGrid
          Left = 20
          Top = 20
          Width = 736
          Height = 255
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
      object Panel5: TPanel
        Left = 0
        Top = 387
        Width = 776
        Height = 37
        Align = alBottom
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        object Label5: TLabel
          Left = 604
          Top = 12
          Width = 59
          Height = 13
          Caption = 'Qtde.Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditTotal: TCurrencyEdit
          Left = 671
          Top = 8
          Width = 85
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16249066
          Ctl3D = True
          DisplayFormat = '0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 776
      inherited PanelCabecalho: TPanel
        Width = 776
        inherited PanelNavigator: TPanel
          Width = 776
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 776
            inherited BtnFecharTela: TSpeedButton
              Left = 680
            end
            object BtnOk: TSpeedButton
              Left = 3
              Top = 3
              Width = 87
              Height = 25
              Caption = '&OK'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
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
  end
  object SQLProdutoGrade: TRxQuery
    DatabaseName = 'DB'
    DataSource = FormTelaEmissaoEtiquetasCodigoBarras.DSSQLProduto
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    PRODUTO'
      'Where '
      '    PRODIAGRUPGRADE=:PRODIAGRUPGRADE'
      'order by'
      '    PRODIAGRUPGRADE,CORICOD,GRADICOD,GRTMICOD')
    Macros = <>
    Left = 61
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODIAGRUPGRADE'
        ParamType = ptUnknown
        Size = 4
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
    object SQLProdutoGradePRODA30CODESTRUT: TStringField
      FieldName = 'PRODA30CODESTRUT'
      Origin = 'DB.PRODUTO.PRODA30CODESTRUT'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoGradePRODA60CODBAR: TStringField
      FieldName = 'PRODA60CODBAR'
      Origin = 'DB.PRODUTO.PRODA60CODBAR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGradePRODA15CODANT: TStringField
      FieldName = 'PRODA15CODANT'
      Origin = 'DB.PRODUTO.PRODA15CODANT'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoGradePRODIAGRUPGRADE: TIntegerField
      FieldName = 'PRODIAGRUPGRADE'
      Origin = 'DB.PRODUTO.PRODIAGRUPGRADE'
    end
    object SQLProdutoGradePRODA60REFER: TStringField
      FieldName = 'PRODA60REFER'
      Origin = 'DB.PRODUTO.PRODA60REFER'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGradePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Origin = 'DB.PRODUTO.PRODA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLProdutoGradePRODA30ADESCRREDUZ: TStringField
      FieldName = 'PRODA30ADESCRREDUZ'
      Origin = 'DB.PRODUTO.PRODA30ADESCRREDUZ'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoGradePRODA15APAVIM: TStringField
      FieldName = 'PRODA15APAVIM'
      Origin = 'DB.PRODUTO.PRODA15APAVIM'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoGradePRODA15RUA: TStringField
      FieldName = 'PRODA15RUA'
      Origin = 'DB.PRODUTO.PRODA15RUA'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoGradePRODA15PRATEL: TStringField
      FieldName = 'PRODA15PRATEL'
      Origin = 'DB.PRODUTO.PRODA15PRATEL'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoGradeCLFSICOD: TIntegerField
      FieldName = 'CLFSICOD'
      Origin = 'DB.PRODUTO.CLFSICOD'
    end
    object SQLProdutoGradeMARCICOD: TIntegerField
      FieldName = 'MARCICOD'
      Origin = 'DB.PRODUTO.MARCICOD'
    end
    object SQLProdutoGradeUNIDICOD: TIntegerField
      FieldName = 'UNIDICOD'
      Origin = 'DB.PRODUTO.UNIDICOD'
    end
    object SQLProdutoGradeGRUPICOD: TIntegerField
      FieldName = 'GRUPICOD'
      Origin = 'DB.PRODUTO.GRUPICOD'
    end
    object SQLProdutoGradeSUBGICOD: TIntegerField
      FieldName = 'SUBGICOD'
      Origin = 'DB.PRODUTO.SUBGICOD'
    end
    object SQLProdutoGradeVARIICOD: TIntegerField
      FieldName = 'VARIICOD'
      Origin = 'DB.PRODUTO.VARIICOD'
    end
    object SQLProdutoGradeICMSICOD: TIntegerField
      FieldName = 'ICMSICOD'
      Origin = 'DB.PRODUTO.ICMSICOD'
    end
    object SQLProdutoGradePRODN3PESOBRUTO: TFloatField
      FieldName = 'PRODN3PESOBRUTO'
      Origin = 'DB.PRODUTO.PRODN3PESOBRUTO'
    end
    object SQLProdutoGradePRODN3PESOLIQ: TFloatField
      FieldName = 'PRODN3PESOLIQ'
      Origin = 'DB.PRODUTO.PRODN3PESOLIQ'
    end
    object SQLProdutoGradePRODN3CAPACEMBAL: TFloatField
      FieldName = 'PRODN3CAPACEMBAL'
      Origin = 'DB.PRODUTO.PRODN3CAPACEMBAL'
    end
    object SQLProdutoGradePRODDCAD: TDateTimeField
      FieldName = 'PRODDCAD'
      Origin = 'DB.PRODUTO.PRODDCAD'
    end
    object SQLProdutoGradePRODDULTALTER: TDateTimeField
      FieldName = 'PRODDULTALTER'
      Origin = 'DB.PRODUTO.PRODDULTALTER'
    end
    object SQLProdutoGradePRODN3VLRVENDA: TFloatField
      FieldName = 'PRODN3VLRVENDA'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDA'
    end
    object SQLProdutoGradePRODN3VLRVENDAPROM: TFloatField
      FieldName = 'PRODN3VLRVENDAPROM'
      Origin = 'DB.PRODUTO.PRODN3VLRVENDAPROM'
    end
    object SQLProdutoGradePRODDINIPROMO: TDateTimeField
      FieldName = 'PRODDINIPROMO'
      Origin = 'DB.PRODUTO.PRODDINIPROMO'
    end
    object SQLProdutoGradePRODDFIMPROMO: TDateTimeField
      FieldName = 'PRODDFIMPROMO'
      Origin = 'DB.PRODUTO.PRODDFIMPROMO'
    end
    object SQLProdutoGradePRODN3VLRCOMPRA: TFloatField
      FieldName = 'PRODN3VLRCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3VLRCOMPRA'
    end
    object SQLProdutoGradePRODN3VLRCUSTO: TFloatField
      FieldName = 'PRODN3VLRCUSTO'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTO'
    end
    object SQLProdutoGradePRODN3VLRCUSTOMED: TFloatField
      FieldName = 'PRODN3VLRCUSTOMED'
      Origin = 'DB.PRODUTO.PRODN3VLRCUSTOMED'
    end
    object SQLProdutoGradePRODN3PERCIPI: TFloatField
      FieldName = 'PRODN3PERCIPI'
      Origin = 'DB.PRODUTO.PRODN3PERCIPI'
    end
    object SQLProdutoGradePRODN3PERCMARGLUCR: TFloatField
      FieldName = 'PRODN3PERCMARGLUCR'
      Origin = 'DB.PRODUTO.PRODN3PERCMARGLUCR'
    end
    object SQLProdutoGradePRODCATIVO: TStringField
      FieldName = 'PRODCATIVO'
      Origin = 'DB.PRODUTO.PRODCATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoGradePRODCSERVICO: TStringField
      FieldName = 'PRODCSERVICO'
      Origin = 'DB.PRODUTO.PRODCSERVICO'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoGradePRODISITTRIB: TIntegerField
      FieldName = 'PRODISITTRIB'
      Origin = 'DB.PRODUTO.PRODISITTRIB'
    end
    object SQLProdutoGradePRODITIPOPRODBALAN: TStringField
      FieldName = 'PRODITIPOPRODBALAN'
      Origin = 'DB.PRODUTO.PRODITIPOPRODBALAN'
      FixedChar = True
      Size = 15
    end
    object SQLProdutoGradePRODICODETIQBAL: TIntegerField
      FieldName = 'PRODICODETIQBAL'
      Origin = 'DB.PRODUTO.PRODICODETIQBAL'
    end
    object SQLProdutoGradePRODIDIASVALIDADE: TIntegerField
      FieldName = 'PRODIDIASVALIDADE'
      Origin = 'DB.PRODUTO.PRODIDIASVALIDADE'
    end
    object SQLProdutoGradePRODBIMAGEM: TBlobField
      FieldName = 'PRODBIMAGEM'
      Origin = 'DB.PRODUTO.PRODBIMAGEM'
      Size = 1
    end
    object SQLProdutoGradePRODA30INF01ETQBARRAS: TStringField
      FieldName = 'PRODA30INF01ETQBARRAS'
      Origin = 'DB.PRODUTO.PRODA30INF01ETQBARRAS'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoGradePRODA30INF02ETQBARRAS: TStringField
      FieldName = 'PRODA30INF02ETQBARRAS'
      Origin = 'DB.PRODUTO.PRODA30INF02ETQBARRAS'
      FixedChar = True
      Size = 30
    end
    object SQLProdutoGradePRODDULTCOMPRA: TDateTimeField
      FieldName = 'PRODDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODDULTCOMPRA'
    end
    object SQLProdutoGradePRODN3QTDULTCOMPRA: TFloatField
      FieldName = 'PRODN3QTDULTCOMPRA'
      Origin = 'DB.PRODUTO.PRODN3QTDULTCOMPRA'
    end
  end
  object SQLGradeTamanho: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    GRADETAMANHO'
      'Where '
      '    GRADICOD=:GRADICOD')
    Macros = <>
    Left = 89
    Top = 4
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
    Left = 117
    Top = 4
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
    EnableDelete = False
    TableName = 'TblQtde'
    Left = 145
    Top = 4
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
      Calculated = True
    end
  end
  object DSTblQtde: TDataSource
    DataSet = TblQtde
    Left = 173
    Top = 4
  end
  object DSSQLProdutoGrade: TDataSource
    DataSet = SQLProdutoGrade
    Left = 33
    Top = 4
  end
  object DSSQLConfigEtiquetaCodigoBarra: TDataSource
    DataSet = SQLConfigEtiquetaCodigoBarra
    Left = 229
    Top = 4
  end
  object SQLConfigEtiquetaCodigoBarra: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      '  CONFIGETIQUETACODIGOBARRA'
      'order by'
      '  CFCBA60DESCR')
    Macros = <>
    Left = 201
    Top = 4
    object SQLConfigEtiquetaCodigoBarraCFCBICOD: TIntegerField
      FieldName = 'CFCBICOD'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBICOD'
    end
    object SQLConfigEtiquetaCodigoBarraCFCBA60DESCR: TStringField
      FieldName = 'CFCBA60DESCR'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLConfigEtiquetaCodigoBarraCFCBA20MODELOIMPRESSORA: TStringField
      FieldName = 'CFCBA20MODELOIMPRESSORA'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA20MODELOIMPRESSORA'
      FixedChar = True
    end
    object SQLConfigEtiquetaCodigoBarraCFCBA4PORTASERIAL: TStringField
      FieldName = 'CFCBA4PORTASERIAL'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA4PORTASERIAL'
      FixedChar = True
      Size = 4
    end
    object SQLConfigEtiquetaCodigoBarraCFCBA100PATHEXEIMP: TStringField
      FieldName = 'CFCBA100PATHEXEIMP'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA100PATHEXEIMP'
      FixedChar = True
      Size = 100
    end
    object SQLConfigEtiquetaCodigoBarraCFCBA100PATHARQTXT: TStringField
      FieldName = 'CFCBA100PATHARQTXT'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA100PATHARQTXT'
      FixedChar = True
      Size = 100
    end
    object SQLConfigEtiquetaCodigoBarraCFCBINROCOL: TIntegerField
      FieldName = 'CFCBINROCOL'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBINROCOL'
    end
    object SQLConfigEtiquetaCodigoBarraCFCBA254TEXTOTERM: TMemoField
      FieldName = 'CFCBA254TEXTOTERM'
      Origin = 'DB.CONFIGETIQUETACODIGOBARRA.CFCBA254TEXTOTERM'
      BlobType = ftMemo
      Size = 500
    end
  end
end
