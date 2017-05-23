inherited FormVinculoCfopOperacaoEstoque: TFormVinculoCfopOperacaoEstoque
  Left = 669
  Top = 173
  Caption = 'V'#237'nculo de CFOP com Opera'#231#227'o de Estoque'
  ClientHeight = 208
  ClientWidth = 660
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Width = 660
    Height = 128
    object Label1: TLabel
      Left = 13
      Top = 16
      Width = 110
      Height = 13
      Caption = 'Opera'#231#227'o Estoque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 43
      Top = 40
      Width = 80
      Height = 13
      Caption = 'CFOP Origem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblOpEstoque: TLabel
      Left = 128
      Top = 16
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblCFOPOrigem: TLabel
      Left = 128
      Top = 40
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 73
      Width = 637
      Height = 48
      Caption = 'CFOP Resultante'
      TabOrder = 0
      object dblkcbbCfop: TDBLookupComboBox
        Left = 7
        Top = 19
        Width = 586
        Height = 21
        KeyField = 'CFOPA5COD'
        ListField = 'CFOPA60DESCR;CFOPA5COD'
        ListSource = dsCfop
        TabOrder = 0
      end
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 660
    inherited PanelCabecalho: TPanel
      Width = 660
      inherited PanelNavigator: TPanel
        Width = 660
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 660
          object SpeedButton1: TSpeedButton
            Left = 4
            Top = 4
            Width = 74
            Height = 25
            Caption = 'Gravar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF03FFFFFF0CFFFFFF17FFFFFF20FFFFFF27FFFFFF2AFFFF
              FF29FFFFFF24FFFFFF1BFFFFFF10FFFFFF06FFFFFF00FFFFFF00000000070404
              04D00D0D0DD80D0D0DD8141414DB171717DE191919E01A1A1AE21A1A1AE31A1A
              1AE2191919E1151515E0121111DE101010DC0B0B0BAAFFFFFF000101019F0F0A
              08EC0C0604FF16110FFDA4A4A4FEB1AFAFFFADABABFFA4A4A3FFA6A6A6FFA5A5
              A5FFABABABFF3A3635FF0B0402FF100908FF0E0907E3FFFFFF00040303AE221B
              19FF211A17FF2E2725FF999999FF36302DFF221A17FF8D8D8CFF99999AFF9797
              97FFA0A0A1FF504B49FF1E1614FF251E1BFF271F1DE3FFFFFF00040303AE2720
              1DFF27201DFF342D2AFFA2A2A2FF413A38FF2D2522FF989897FFA4A4A4FFA1A1
              A1FFA8A9A9FF56514FFF251D1AFF28201EFF29221FE3FFFFFF00050403AE2D26
              23FF2E2622FF3B3431FFB4B4B4FF47403DFF302824FFA6A5A5FFB3B3B3FFB1B1
              B1FFB8B9B9FF605B58FF2C2320FF2A2320FF2B2421E3FFFFFF00050404AE332B
              28FF332B28FF3E3632FF9D9B9AFFCBC9C9FFC8C6C5FFC7C6C6FFCBC9C9FFCBC9
              C9FFA7A6A5FF5A5452FF2C2421FF2E2723FF302926E3FFFFFF00060504AE3930
              2DFF362D2AFF352B28FF372D2BFF413835FF463C39FF403633FF403633FF3E34
              31FF3B312EFF372D2AFF342B28FF3B322EFF352D2AE3FFFFFF00060504AE3930
              2DFFBBB6B3FFEAE7E6FFE9E6E5FFE9E6E5FFEAE7E5FFEAE8E6FFEAE8E6FFEAE7
              E5FFE9E6E5FFE9E6E5FFCDC8C5FF463C39FF39302DE3FFFFFF00060505AE3B31
              2EFFE0DBD9FFEFE5DDFFE7DDD5FFE6DCD5FFE6DCD5FFE6DCD5FFE6DCD5FFE6DC
              D5FFE6DDD5FFE8DED7FFF0EBE7FF544A46FF3D3431E3FFFFFF00070605AE4036
              34FFE0DCDBFFECE4DEFFE5DDD7FFE5DDD7FFE5DDD7FFE5DDD7FFE5DDD7FFE5DD
              D7FFE5DDD7FFE6DED8FFEFEBE8FF594F4BFF423836E3FFFFFF00070606AE453B
              38FFE2DEDCFFF1EBE6FFEAE4DFFFEAE4DFFFEAE4DFFFEAE4DFFFEAE4DFFFEAE4
              DFFFEAE4DFFFEBE5E0FFF2EFECFF5E5450FF463D39E3FFFFFF00070606AE4A40
              3CFFE3E1DFFFF7F3EFFFF0EBE8FFF0EBE8FFF0EBE8FFF0EBE8FFF0EBE8FFF0EB
              E8FFF0EBE8FFF1ECE9FFF5F2F0FF645955FF4A413EE3FFFFFF00080706AE4E44
              40FFE5E2E1FFFDFCFAFFF6F4F2FFF6F4F2FFF6F4F2FFF6F4F2FFF6F4F2FFF6F4
              F2FFF6F4F2FFF7F5F4FFF8F6F4FF685E5AFF4F4642E3FFFFFF00080706AE544A
              46FFE7E4E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF8F6F5FF6B615DFF514743E3FFFFFF000A0909A95950
              4CEE918B88F1AAA8A7F4A6A4A3F4A6A4A3F4A6A4A3F4A6A4A3F4A6A4A3F4A6A4
              A3F4A6A4A3F4A7A4A4F4A19F9DF4736965F22D292794FFFFFF00}
            ParentFont = False
            OnClick = SpeedButton1Click
          end
        end
      end
    end
  end
  object dsCfop: TDataSource
    DataSet = SQLCFOP
    Left = 253
    Top = 17
  end
  object SQLCFOP: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CFOPA5COD, CFOPA60DESCR from CFOP')
    Macros = <>
    Left = 222
    Top = 17
    object SQLCFOPCFOPA5COD: TStringField
      FieldName = 'CFOPA5COD'
      Origin = 'DB.CFOP.CFOPA5COD'
      FixedChar = True
      Size = 5
    end
    object SQLCFOPCFOPA60DESCR: TStringField
      FieldName = 'CFOPA60DESCR'
      Origin = 'DB.CFOP.CFOPA60DESCR'
      FixedChar = True
      Size = 60
    end
  end
end
