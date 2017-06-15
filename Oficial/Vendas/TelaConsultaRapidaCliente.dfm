object FormTelaConsultaRapidaCliente: TFormTelaConsultaRapidaCliente
  Left = 58
  Top = 58
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 466
  ClientWidth = 692
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblTituloTela: TRxLabel
    Left = 0
    Top = 0
    Width = 692
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta de Clientes'
    Color = 10567680
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ShadowColor = clBlack
    ShadowSize = 2
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Label11: TLabel
    Left = 12
    Top = 324
    Width = 87
    Height = 13
    Caption = 'Tipo de Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 276
    Top = 324
    Width = 110
    Height = 13
    Caption = 'Motivo de Bloqueio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object VALOR: TEdit
    Left = 9
    Top = 48
    Width = 672
    Height = 35
    CharCase = ecUpperCase
    Color = clWhite
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyDown = VALORKeyDown
  end
  object DBGridLista: TDBGrid
    Left = 9
    Top = 89
    Width = 671
    Height = 232
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSTemplate
    FixedColor = 14731440
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGridListaKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CLIEA13ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'ID Cliente'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA60RAZAOSOC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'Nome'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA11CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIEA10RG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '1Aviso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = '2Aviso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SPCAviso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 43
        Visible = True
      end>
  end
  object DBGridAutorizados: TDBGrid
    Left = 9
    Top = 361
    Width = 671
    Height = 98
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSSQLDependentes
    FixedColor = 16380658
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGridListaKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CLDPA60NOME'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 433
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLDPA15PARENTESCO'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AutorizadoCalcField'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBEdit9: TDBEdit
    Left = 10
    Top = 337
    Width = 243
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'TipoClienteCalc'
    DataSource = DSTemplate
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 271
    Top = 337
    Width = 243
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'MotiBloqCalc'
    DataSource = DSTemplate
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 4
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLCliente
    Left = 121
    Top = 250
  end
  object SQLCliente: TRxQuery
    AfterScroll = SQLClienteAfterScroll
    OnCalcFields = SQLClienteCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTE'
      'where CLIECATIVO=''S'''
      'order by CLIEA60RAZAOSOC')
    Macros = <>
    Left = 93
    Top = 250
    object SQLClienteCLIEA13ID: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CLIENTE.EMPRICOD'
    end
    object SQLClienteCLIEICOD: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'CLIEICOD'
      Origin = 'DB.CLIENTE.CLIEICOD'
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60NOMEFANT: TStringField
      DisplayLabel = 'NOME FANTASIA'
      FieldName = 'CLIEA60NOMEFANT'
      Origin = 'DB.CLIENTE.CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA11CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLIEA11CPF'
      Origin = 'DB.CLIENTE.CLIEA11CPF'
      EditMask = '#########-##;0;_'
      FixedChar = True
      Size = 11
    end
    object SQLClienteCLIEA10RG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'CLIEA10RG'
      Origin = 'DB.CLIENTE.CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLClienteCLIEA60ENDRES: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'CLIEA60ENDRES'
      Origin = 'DB.CLIENTE.CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60BAIRES: TStringField
      DisplayLabel = 'BAIRRO'
      FieldName = 'CLIEA60BAIRES'
      Origin = 'DB.CLIENTE.CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA60CIDRES: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'CLIEA60CIDRES'
      Origin = 'DB.CLIENTE.CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object SQLClienteCLIEA2UFRES: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CLIEA2UFRES'
      Origin = 'DB.CLIENTE.CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object SQLClienteCLIEA8CEPRES: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLIEA8CEPRES'
      Origin = 'DB.CLIENTE.CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object SQLClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
      Origin = 'DB.CLIENTE.MTBLICOD'
    end
    object SQLClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
      Origin = 'DB.CLIENTE.TPCLICOD'
    end
    object SQLCliente1Aviso: TStringField
      DisplayLabel = '1'#186' Aviso'
      FieldKind = fkCalculated
      FieldName = '1Aviso'
      Size = 15
      Calculated = True
    end
    object SQLCliente2Aviso: TStringField
      DisplayLabel = '2'#186' Aviso'
      FieldKind = fkCalculated
      FieldName = '2Aviso'
      Calculated = True
    end
    object SQLClienteSPCAviso: TStringField
      DisplayLabel = 'SPC'
      FieldKind = fkCalculated
      FieldName = 'SPCAviso'
      Calculated = True
    end
    object SQLClienteTipoClienteCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoClienteCalc'
      Size = 30
      Calculated = True
    end
    object SQLClienteMotiBloqCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'MotiBloqCalc'
      Size = 30
      Calculated = True
    end
  end
  object SQLDependentes: TRxQuery
    OnCalcFields = SQLDependentesCalcFields
    DatabaseName = 'DB'
    DataSource = DSTemplate
    SQL.Strings = (
      'select * from CLIENTEDEPENDENTE'
      'where CLIEA13ID = :CLIEA13ID')
    Macros = <>
    Left = 177
    Top = 250
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLIEA13ID'
        ParamType = ptUnknown
        Size = 14
      end>
    object SQLDependentesCLIEA13ID: TStringField
      DisplayLabel = 'ID Autorizado'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEDEPENDENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDependentesCLDPA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLDPA60NOME'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLDependentesCLDPA15PARENTESCO: TStringField
      DisplayLabel = 'Parentesco'
      FieldName = 'CLDPA15PARENTESCO'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPA15PARENTESCO'
      FixedChar = True
      Size = 15
    end
    object SQLDependentesCLDPCAUTORIZADO: TStringField
      DisplayLabel = 'AUTORIZADO'
      FieldName = 'CLDPCAUTORIZADO'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPCAUTORIZADO'
      FixedChar = True
      Size = 1
    end
    object SQLDependentesAutorizadoCalcField: TStringField
      DisplayLabel = 'Autorizado'
      FieldKind = fkCalculated
      FieldName = 'AutorizadoCalcField'
      Size = 5
      Calculated = True
    end
  end
  object DSSQLDependentes: TDataSource
    AutoEdit = False
    DataSet = SQLDependentes
    Left = 205
    Top = 250
  end
  object TimerLeitor: TTimer
    Enabled = False
    Interval = 500
    Left = 265
    Top = 249
  end
end
