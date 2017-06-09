object FormTelaConsultaRapidaDependente: TFormTelaConsultaRapidaDependente
  Left = 231
  Top = 142
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 368
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
    Height = 45
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta de Autorizados'
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
  object DBGridLista: TDBGrid
    Left = 9
    Top = 59
    Width = 671
    Height = 300
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSSQLDependentes
    FixedColor = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -32
    TitleFont.Name = 'Verdana'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGridListaKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CLDPA60NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Nome / Placa'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -32
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 481
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLDPCAUTORIZADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Autorizado'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -32
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object SQLDependentes: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CLIENTEDEPENDENTE'
      'where (%MFiltro) and CLDPCAUTORIZADO = '#39'S'#39)
    Macros = <
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 177
    Top = 250
    object SQLDependentesCLIEA13ID: TStringField
      DisplayLabel = 'ID Autorizado'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTEDEPENDENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLDependentesCLDPICOD: TIntegerField
      FieldName = 'CLDPICOD'
      Origin = 'DB.CLIENTEDEPENDENTE.CLDPICOD'
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
end
