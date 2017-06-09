object TelaConsultaPlacaCliente: TTelaConsultaPlacaCliente
  Left = 281
  Top = 130
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Consuta Placas Cadastradas'
  ClientHeight = 497
  ClientWidth = 640
  Color = 14731440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 60
    Top = 458
    Width = 436
    Height = 29
    Caption = 'Pressione <ESC> para Fechar a Tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 12
    Top = 8
    Width = 621
    Height = 65
    Color = 14731440
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 189
      Height = 29
      Caption = 'Informe a Placa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtPlaca: TEdit
      Left = 255
      Top = 7
      Width = 245
      Height = 52
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -37
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtPlacaKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 619
    Height = 369
    DataSource = dtsVeiculosCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VICLA15PLACA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Placa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VICLA40MODELO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Veiculo / Modelo'
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliea60razaosoc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'Nome / Raz'#227'o Social'
        Width = 327
        Visible = True
      end>
  end
  object SQLVeiculosCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select  v.VICLA15PLACA, v.VICLA40MODELO, C.cliea60razaosoc '
      'From veiculoscliente v'
      'left join cliente c on c.cliea13id = v.cliea13id '
      ' where v.VICLA15PLACA = :xplaca')
    Macros = <>
    Left = 132
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'xplaca'
        ParamType = ptUnknown
      end>
  end
  object dtsVeiculosCliente: TDataSource
    DataSet = SQLVeiculosCliente
    Left = 164
    Top = 100
  end
end
