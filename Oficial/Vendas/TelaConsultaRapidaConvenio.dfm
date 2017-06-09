object FormTelaConsultaRapidaConvenio: TFormTelaConsultaRapidaConvenio
  Left = 280
  Top = 107
  BorderIcons = []
  BorderStyle = bsNone
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object LblTituloTela: TRxLabel
    Left = 0
    Top = 0
    Width = 692
    Height = 35
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta de Conv'#234'nios'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
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
    Left = 15
    Top = 39
    Width = 660
    Height = 35
    CharCase = ecUpperCase
    Color = 16380658
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
    Left = 18
    Top = 85
    Width = 654
    Height = 371
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSTemplate
    FixedColor = 16380658
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'CONVICOD'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONVA60DESCR'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 398
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'CONVDVENC'
        Title.Color = 10567680
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 153
        Visible = True
      end>
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLConvenio
    Left = 120
    Top = 282
  end
  object SQLConvenio: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  CONVENIO'
      'where'
      '   (%MLike)'
      'order by '
      '  CONVA60DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MLike'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 92
    Top = 282
    object SQLConvenioCONVICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CONVICOD'
      Origin = 'DB.CONVENIO.CONVICOD'
    end
    object SQLConvenioCONVA60DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CONVA60DESCR'
      Origin = 'DB.CONVENIO.CONVA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLConvenioCONVDVENC: TIntegerField
      DisplayLabel = 'Dia Vencto.'
      FieldName = 'CONVDVENC'
      Origin = 'DB.CONVENIO.REGISTRO'
    end
  end
end
