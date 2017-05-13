inherited FormTelaCriacaoGrade: TFormTelaCriacaoGrade
  Left = 333
  Top = 81
  Width = 773
  Height = 555
  Caption = 'Gera'#231#227'o da Grade'
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 757
    Height = 516
    inherited PanelCentral: TPanel
      Width = 753
      Height = 432
      object Label1: TLabel [0]
        Left = 130
        Top = 2
        Width = 69
        Height = 13
        Caption = 'C'#243'd.Produto'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel [1]
        Left = 233
        Top = 2
        Width = 55
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BtnOk: TSpeedButton [2]
        Left = 257
        Top = 379
        Width = 329
        Height = 30
        Caption = '&Gerar Grade'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        Transparent = False
        OnClick = BtnOkClick
      end
      inherited PanelBarra: TPanel
        Width = 0
        Height = 416
      end
      object DBEdit1: TDBEdit
        Left = 130
        Top = 18
        Width = 99
        Height = 21
        TabStop = False
        DataField = 'PRODA60DESCR'
        DataSource = FormCadastroProduto.DSTemplate
        ReadOnly = True
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 129
        Top = 39
        Width = 245
        Height = 23
        BevelOuter = bvNone
        Caption = 'Cores Poss'#237'veis'
        Color = 10053171
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel5: TPanel
        Left = 129
        Top = 208
        Width = 245
        Height = 23
        BevelOuter = bvNone
        Caption = 'Tamanhos Poss'#237'veis'
        Color = 10053171
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Panel6: TPanel
        Left = 449
        Top = 37
        Width = 245
        Height = 23
        BevelOuter = bvNone
        Caption = 'Cores Selecionadas'
        Color = 10053171
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Panel7: TPanel
        Left = 449
        Top = 206
        Width = 245
        Height = 23
        BevelOuter = bvNone
        Caption = 'Tamanhos Selecionados'
        Color = 10053171
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object Button1: TButton
        Left = 373
        Top = 79
        Width = 77
        Height = 25
        Hint = 'Incluir Todas as Cores'
        Caption = 'Todas ->>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 373
        Top = 104
        Width = 77
        Height = 25
        Hint = 'Incluir Cor Selecionada'
        Caption = 'Sele'#231#227'o ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 373
        Top = 129
        Width = 77
        Height = 25
        Hint = 'Desfazer Todas as Cores Selecionadas'
        Caption = '<- Sele'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 373
        Top = 154
        Width = 77
        Height = 25
        Hint = 'Desfazer Cor Selecionada'
        Caption = '<<- Todas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 373
        Top = 247
        Width = 77
        Height = 25
        Hint = 'Incluir Todos os Tamanhos'
        Caption = 'Todos ->>'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 373
        Top = 272
        Width = 77
        Height = 25
        Hint = 'Incluir Tamanho Selecionado'
        Caption = 'Sele'#231#227'o ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 373
        Top = 297
        Width = 77
        Height = 25
        Hint = 'Desfazer Tamanho Selecionado'
        Caption = '<- Sele'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 373
        Top = 322
        Width = 77
        Height = 25
        Hint = 'Desfazer Todos os Tamanhos'
        Caption = '<<- Todos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnClick = Button8Click
      end
      object ListaCorDisp: TListBox
        Left = 129
        Top = 62
        Width = 246
        Height = 142
        TabStop = False
        ItemHeight = 13
        TabOrder = 14
      end
      object ListaTamDisp: TListBox
        Left = 129
        Top = 231
        Width = 246
        Height = 142
        TabStop = False
        ItemHeight = 13
        TabOrder = 15
      end
      object ListaTamSel: TListBox
        Left = 449
        Top = 229
        Width = 246
        Height = 142
        TabStop = False
        ItemHeight = 13
        TabOrder = 16
      end
      object ListaCorSel: TListBox
        Left = 449
        Top = 60
        Width = 246
        Height = 142
        TabStop = False
        ItemHeight = 13
        TabOrder = 17
      end
      object DBEdit2: TDBEdit
        Left = 232
        Top = 18
        Width = 463
        Height = 21
        TabStop = False
        DataField = 'PRODA60DESCR'
        DataSource = FormCadastroProduto.DSTemplate
        ReadOnly = True
        TabOrder = 18
      end
      object ProgressBar: TProgressBar
        Left = 0
        Top = 416
        Width = 753
        Height = 16
        Align = alBottom
        TabOrder = 19
        Visible = False
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 753
      inherited PanelCabecalho: TPanel
        Width = 753
        inherited PanelNavigator: TPanel
          Width = 753
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 753
            inherited BtnFecharTela: TSpeedButton
              Left = 670
            end
          end
        end
      end
    end
  end
  object TblCorPossivel: TMemoryTable
    TableName = 'TblCorPossivel'
    Left = 24
    Top = 120
  end
  object TblTamanhoPossivel: TMemoryTable
    TableName = 'TblTamanhoPossivel'
    Left = 24
    Top = 186
  end
  object TblCorSelecionada: TMemoryTable
    TableName = 'TblCorSelecionada'
    Left = 52
    Top = 120
  end
  object TblTamanhoSelecionado: TMemoryTable
    TableName = 'TblTamanhoSelecionado'
    Left = 52
    Top = 186
  end
  object DSTamanhoPossivel: TDataSource
    DataSet = TblTamanhoPossivel
    Left = 24
    Top = 214
  end
  object DSTamanhoSelecionado: TDataSource
    DataSet = TblTamanhoSelecionado
    Left = 52
    Top = 214
  end
  object DSCorPossivel: TDataSource
    DataSet = TblCorPossivel
    Left = 24
    Top = 148
  end
  object DSCorSelecionada: TDataSource
    DataSet = TblCorSelecionada
    Left = 52
    Top = 148
  end
  object SQLGradeTamanho: TRxQuery
    DatabaseName = 'DB'
    DataSource = FormCadastroProduto.DSTemplate
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    GRADETAMANHO'
      'Where '
      '    GRADICOD = :GRADICOD'
      'order by '
      '    GRADICOD'
      '')
    Macros = <>
    Left = 92
    Top = 120
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
    DataSource = FormCadastroProduto.DSTemplate
    SQL.Strings = (
      'Select '
      '    * '
      'From '
      '    COR'
      'order by '
      '   CORA30DESCR')
    Macros = <>
    Left = 92
    Top = 148
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
  object SQLProduto: TRxQuery
    Tag = 1
    AutoCalcFields = False
    BeforePost = SQLProdutoBeforePost
    AfterPost = SQLProdutoAfterPost
    OnPostError = SQLProdutoPostError
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from PRODUTO Where PRODICOD is NULL')
    UpdateObject = UpdateSQLProduto
    Macros = <>
    Left = 92
    Top = 186
  end
  object UpdateSQLProduto: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  PRODICOD = :PRODICOD,'
      '  PRODA30CODESTRUT = :PRODA30CODESTRUT,'
      '  PRODA60CODBAR = :PRODA60CODBAR,'
      '  PRODA15CODANT = :PRODA15CODANT,'
      '  PRODIAGRUPGRADE = :PRODIAGRUPGRADE,'
      '  PRODA60REFER = :PRODA60REFER,'
      '  PRODA60DESCR = :PRODA60DESCR,'
      '  PRODA30ADESCRREDUZ = :PRODA30ADESCRREDUZ,'
      '  PRODA255DESCRTEC = :PRODA255DESCRTEC,'
      '  PRODICODBALANCA = :PRODICODBALANCA,'
      '  PRODA15APAVIM = :PRODA15APAVIM,'
      '  PRODA15RUA = :PRODA15RUA,'
      '  PRODA15PRATEL = :PRODA15PRATEL,'
      '  CLFSICOD = :CLFSICOD,'
      '  MARCICOD = :MARCICOD,'
      '  UNIDICOD = :UNIDICOD,'
      '  GRADICOD = :GRADICOD,'
      '  GRTMICOD = :GRTMICOD,'
      '  GRUPICOD = :GRUPICOD,'
      '  SUBGICOD = :SUBGICOD,'
      '  VARIICOD = :VARIICOD,'
      '  ICMSICOD = :ICMSICOD,'
      '  PRODN3PESOBRUTO = :PRODN3PESOBRUTO,'
      '  PRODN3PESOLIQ = :PRODN3PESOLIQ,'
      '  PRODN3CAPACEMBAL = :PRODN3CAPACEMBAL,'
      '  PRODDCAD = :PRODDCAD,'
      '  PRODDULTALTER = :PRODDULTALTER,'
      '  PRODN3VLRVENDA = :PRODN3VLRVENDA,'
      '  PRODN3VLRVENDAPROM = :PRODN3VLRVENDAPROM,'
      '  PRODDINIPROMO = :PRODDINIPROMO,'
      '  PRODDFIMPROMO = :PRODDFIMPROMO,'
      '  PRODN3VLRCOMPRA = :PRODN3VLRCOMPRA,'
      '  PRODN3VLRCUSTO = :PRODN3VLRCUSTO,'
      '  PRODN3VLRCUSTOMED = :PRODN3VLRCUSTOMED,'
      '  PRODN3PERCIPI = :PRODN3PERCIPI,'
      '  PRODN3PERCMARGLUCR = :PRODN3PERCMARGLUCR,'
      '  PRODCATIVO = :PRODCATIVO,'
      '  PRODCSERVICO = :PRODCSERVICO,'
      '  PRODCGERACOMIS = :PRODCGERACOMIS,'
      '  PRODN2COMISVISTA = :PRODN2COMISVISTA,'
      '  PRODN2COMISPRAZO = :PRODN2COMISPRAZO,'
      '  PRODDIMOBOLIZ = :PRODDIMOBOLIZ,'
      '  PRODICODPAI = :PRODICODPAI,'
      '  PRODCTIPOBAIXA = :PRODCTIPOBAIXA,'
      '  PRODN3QTDEBAIXA = :PRODN3QTDEBAIXA,'
      '  CORICOD = :CORICOD,'
      '  PRODIORIGEM = :PRODIORIGEM,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO,'
      '  PRODDULTATUALIZ = :PRODDULTATUALIZ'
      'where'
      '  PRODICOD = :OLD_PRODICOD')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (PRODICOD, PRODA30CODESTRUT, PRODA60CODBAR, PRODA15CODANT, PRO' +
        'DIAGRUPGRADE, '
      
        '   PRODA60REFER, PRODA60DESCR, PRODA30ADESCRREDUZ, PRODA255DESCR' +
        'TEC, PRODICODBALANCA, '
      
        '   PRODA15APAVIM, PRODA15RUA, PRODA15PRATEL, CLFSICOD, MARCICOD,' +
        ' UNIDICOD, '
      
        '   GRADICOD, GRTMICOD, GRUPICOD, SUBGICOD, VARIICOD, ICMSICOD, P' +
        'RODN3PESOBRUTO, '
      
        '   PRODN3PESOLIQ, PRODN3CAPACEMBAL, PRODDCAD, PRODDULTALTER, PRO' +
        'DN3VLRVENDA, '
      
        '   PRODN3VLRVENDAPROM, PRODDINIPROMO, PRODDFIMPROMO, PRODN3VLRCO' +
        'MPRA, PRODN3VLRCUSTO, '
      
        '   PRODN3VLRCUSTOMED, PRODN3PERCIPI, PRODN3PERCMARGLUCR, PRODCAT' +
        'IVO, PRODCSERVICO, '
      
        '   PRODCGERACOMIS, PRODN2COMISVISTA, PRODN2COMISPRAZO, PRODDIMOB' +
        'OLIZ, PRODICODPAI, '
      
        '   PRODCTIPOBAIXA, PRODN3QTDEBAIXA, CORICOD, PRODIORIGEM, PENDEN' +
        'TE, REGISTRO, '
      '   PRODDULTATUALIZ)'
      'values'
      
        '  (:PRODICOD, :PRODA30CODESTRUT, :PRODA60CODBAR, :PRODA15CODANT,' +
        ' :PRODIAGRUPGRADE, '
      
        '   :PRODA60REFER, :PRODA60DESCR, :PRODA30ADESCRREDUZ, :PRODA255D' +
        'ESCRTEC, '
      
        '   :PRODICODBALANCA, :PRODA15APAVIM, :PRODA15RUA, :PRODA15PRATEL' +
        ', :CLFSICOD, '
      
        '   :MARCICOD, :UNIDICOD, :GRADICOD, :GRTMICOD, :GRUPICOD, :SUBGI' +
        'COD, :VARIICOD, '
      
        '   :ICMSICOD, :PRODN3PESOBRUTO, :PRODN3PESOLIQ, :PRODN3CAPACEMBA' +
        'L, :PRODDCAD, '
      
        '   :PRODDULTALTER, :PRODN3VLRVENDA, :PRODN3VLRVENDAPROM, :PRODDI' +
        'NIPROMO, '
      
        '   :PRODDFIMPROMO, :PRODN3VLRCOMPRA, :PRODN3VLRCUSTO, :PRODN3VLR' +
        'CUSTOMED, '
      
        '   :PRODN3PERCIPI, :PRODN3PERCMARGLUCR, :PRODCATIVO, :PRODCSERVI' +
        'CO, :PRODCGERACOMIS, '
      
        '   :PRODN2COMISVISTA, :PRODN2COMISPRAZO, :PRODDIMOBOLIZ, :PRODIC' +
        'ODPAI, '
      
        '   :PRODCTIPOBAIXA, :PRODN3QTDEBAIXA, :CORICOD, :PRODIORIGEM, :P' +
        'ENDENTE, '
      '   :REGISTRO, :PRODDULTATUALIZ)')
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  PRODICOD = :OLD_PRODICOD')
    Left = 92
    Top = 214
  end
  object DSProduto: TDataSource
    DataSet = SQLProduto
    Left = 121
    Top = 186
  end
  object SQLProdutoSaldo: TRxQuery
    BeforePost = SQLProdutoSaldoBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * From PRODUTOSALDO '
      'Where PRODICOD is NULL and EMPRICOD is NULL')
    UpdateObject = UpdateSQLProdutoSaldo
    Macros = <>
    Left = 91
    Top = 251
    object SQLProdutoSaldoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.PRODUTOSALDO.EMPRICOD'
    end
    object SQLProdutoSaldoPRODICOD: TIntegerField
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOSALDO.PRODICOD'
    end
    object SQLProdutoSaldoPSLDN3QTDE: TFloatField
      FieldName = 'PSLDN3QTDE'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDE'
    end
    object SQLProdutoSaldoPSLDN3QTDMIN: TFloatField
      FieldName = 'PSLDN3QTDMIN'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMIN'
    end
    object SQLProdutoSaldoPSLDN3QTDMAX: TFloatField
      FieldName = 'PSLDN3QTDMAX'
      Origin = 'DB.PRODUTOSALDO.PSLDN3QTDMAX'
    end
    object SQLProdutoSaldoPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOSALDO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLProdutoSaldoREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOSALDO.REGISTRO'
    end
  end
  object UpdateSQLProdutoSaldo: TUpdateSQL
    ModifySQL.Strings = (
      'update PRODUTOSALDO'
      'set'
      '  EMPRICOD = :EMPRICOD,'
      '  PRODICOD = :PRODICOD,'
      '  PSLDN3QTDE = :PSLDN3QTDE,'
      '  PSLDN3QTDMIN = :PSLDN3QTDMIN,'
      '  PSLDN3QTDMAX = :PSLDN3QTDMAX,'
      '  PENDENTE = :PENDENTE,'
      '  REGISTRO = :REGISTRO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD')
    InsertSQL.Strings = (
      'insert into PRODUTOSALDO'
      
        '  (EMPRICOD, PRODICOD, PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX, P' +
        'ENDENTE, '
      '   REGISTRO)'
      'values'
      
        '  (:EMPRICOD, :PRODICOD, :PSLDN3QTDE, :PSLDN3QTDMIN, :PSLDN3QTDM' +
        'AX, :PENDENTE, '
      '   :REGISTRO)')
    DeleteSQL.Strings = (
      'delete from PRODUTOSALDO'
      'where'
      '  EMPRICOD = :OLD_EMPRICOD and'
      '  PRODICOD = :OLD_PRODICOD')
    Left = 91
    Top = 279
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * From EMPRESA')
    Macros = <>
    Left = 91
    Top = 307
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
  end
  object ConsultaGrade: TRxQuery
    DatabaseName = 'DB'
    Macros = <>
    Left = 50
    Top = 254
  end
  object DSConsultaGrade: TDataSource
    DataSet = ConsultaGrade
    Left = 22
    Top = 254
  end
  object SQLProdutoPdvs: TRxQuery
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select * from PRODUTOPDVS'
      'where (%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 479
    Top = 9
  end
end
