object FormTelaConsultaRapidaNumerario: TFormTelaConsultaRapidaNumerario
  Left = -1317
  Top = 234
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 557
  ClientWidth = 740
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
  object ScrollBoxPrincipal: TScrollBox
    Left = 0
    Top = 0
    Width = 740
    Height = 557
    Align = alClient
    BorderStyle = bsNone
    Color = 10053171
    ParentColor = False
    TabOrder = 0
    object LblTituloTela: TRxLabel
      Left = 0
      Top = 0
      Width = 740
      Height = 38
      Align = alTop
      Alignment = taCenter
      Caption = 'Forma de Pagamento'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowSize = 2
      ShadowPos = spRightBottom
      Transparent = True
    end
    object AdvSmoothPanel3: TAdvSmoothPanel
      Left = 10
      Top = 45
      Width = 727
      Height = 508
      Cursor = crDefault
      Caption.HTMLFont.Charset = DEFAULT_CHARSET
      Caption.HTMLFont.Color = clWindowText
      Caption.HTMLFont.Height = -11
      Caption.HTMLFont.Name = 'Tahoma'
      Caption.HTMLFont.Style = []
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -16
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.ColorStart = 11563548
      Caption.ColorEnd = 10446362
      Caption.Line = False
      Fill.Color = 16445929
      Fill.ColorTo = 15587527
      Fill.ColorMirror = 15587527
      Fill.ColorMirrorTo = 16773863
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = 14922381
      Fill.Rounding = 10
      Fill.ShadowColor = 3355443
      Fill.ShadowOffset = 10
      Version = '1.0.9.0'
      TabOrder = 0
      object DBGridLista: TDBGrid
        Left = 8
        Top = 9
        Width = 700
        Height = 481
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
        TitleFont.Height = -37
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyDown = DBGridListaKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMEICOD'
            Title.Alignment = taCenter
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -37
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMEA30DESCR'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWhite
            Title.Font.Height = -37
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 572
            Visible = True
          end>
      end
    end
    object VALOR: TEdit
      Left = 16
      Top = 5
      Width = 152
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
  end
  object DSTemplate: TDataSource
    AutoEdit = False
    DataSet = SQLNumerario
    Left = 124
    Top = 282
  end
  object SQLNumerario: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  NUMERARIO'
      'where '
      '  (NUMECATIVO = '#39'S'#39') and'
      '  (%MTipo) and '
      '  (%MLike)'
      'order by '
      '  NUMEA30DESCR')
    Macros = <
      item
        DataType = ftString
        Name = 'MTipo'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MLike'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 96
    Top = 282
    object SQLNumerarioNUMEICOD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'NUMEICOD'
      Origin = 'DB.NUMERARIO.NUMEICOD'
    end
    object SQLNumerarioNUMECVISTAPRAZO: TStringField
      FieldName = 'NUMECVISTAPRAZO'
      Origin = 'DB.NUMERARIO.NUMECVISTAPRAZO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMEA30DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NUMEA30DESCR'
      Origin = 'DB.NUMERARIO.NUMEA30DESCR'
      FixedChar = True
      Size = 30
    end
    object SQLNumerarioNUMECATIVO: TStringField
      FieldName = 'NUMECATIVO'
      Origin = 'DB.NUMERARIO.NUMECATIVO'
      FixedChar = True
      Size = 1
    end
    object SQLNumerarioNUMEA5TIPO: TStringField
      FieldName = 'NUMEA5TIPO'
      Origin = 'DB.NUMERARIO.NUMEA5TIPO'
      FixedChar = True
      Size = 5
    end
  end
end
