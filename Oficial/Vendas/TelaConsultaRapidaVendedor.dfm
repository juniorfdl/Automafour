object FormTelaConsultaRapidaVendedor: TFormTelaConsultaRapidaVendedor
  Left = 56
  Top = 65
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 466
  ClientWidth = 803
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
  object LblNomeSistema: TRxLabel
    Left = 0
    Top = 0
    Width = 803
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta de Vendedores'
    Color = clNavy
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
  object VALOR: TEdit
    Left = 17
    Top = 50
    Width = 654
    Height = 35
    TabStop = False
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
    TabOrder = 1
    Visible = False
    OnKeyDown = VALORKeyDown
  end
  object DBGridLista: TDBGrid
    Left = 16
    Top = 49
    Width = 775
    Height = 410
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSTemplate
    FixedColor = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGridListaKeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VENDICOD'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -37
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDA60NOME'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -37
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 613
        Visible = True
      end>
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLVendedor
    Left = 124
    Top = 250
  end
  object SQLVendedor: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from VENDEDOR'
      'where VENDCATIVO = '#39'S'#39
      'order by VENDA60NOME')
    Left = 96
    Top = 250
    object SQLVendedorVENDICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLVendedorVENDCATIVO: TStringField
      FieldName = 'VENDCATIVO'
      Origin = 'DB.VENDEDOR.VENDCATIVO'
      FixedChar = True
      Size = 1
    end
  end
end
