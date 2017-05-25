inherited FormTelaPedidoParcial: TFormTelaPedidoParcial
  Left = 343
  Top = 177
  Caption = 'Confirma'#231#227'o de Pedido Parcial'
  ClientWidth = 718
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Top = 66
    Width = 718
    Height = 335
    object DBGridItens: TDBGrid
      Left = 0
      Top = 0
      Width = 718
      Height = 335
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
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'QTDEATENDIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Atendido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Color = 12572888
          Expanded = False
          FieldName = 'PVITN3QUANT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Qtde'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = 12572888
          Expanded = False
          FieldName = 'PRODICOD'
          Title.Caption = 'C'#243'd.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Color = 12572888
          Expanded = False
          FieldName = 'PRODA60DESCR'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 308
          Visible = True
        end
        item
          Color = 12572888
          Expanded = False
          FieldName = 'PVITN3VLRUNIT'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr.Unit'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Color = 12572888
          Expanded = False
          FieldName = 'VlrTotalItem'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr Total Item'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end>
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 718
    Height = 66
    inherited PanelCabecalho: TPanel
      Width = 718
      Height = 66
      inherited LabelTitulo: TLabel
        Top = 4
      end
      inherited PanelNavigator: TPanel
        Top = 34
        Width = 718
        object BtnOk: TSpeedButton [0]
          Left = 5
          Top = 3
          Width = 75
          Height = 25
          Caption = 'OK'
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
        object Label1: TLabel [1]
          Left = 204
          Top = 9
          Width = 123
          Height = 13
          Caption = 'Quantidade do Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel [2]
          Left = 341
          Top = 9
          Width = 71
          Height = 13
          Caption = '<- Legenda ->'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel [3]
          Left = 427
          Top = 9
          Width = 119
          Height = 13
          Caption = 'Quantidade Atendida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 718
          inherited BtnFecharTela: TSpeedButton
            Left = 618
          end
        end
      end
    end
  end
  object TblQtde: TMemoryTable
    TableName = 'TblQtde'
    Left = 89
    Top = 2
    object TblQtdePRODICOD: TIntegerField
      FieldName = 'PRODICOD'
    end
    object TblQtdePRODA60DESCR: TStringField
      FieldName = 'PRODA60DESCR'
      Size = 60
    end
    object TblQtdePVITN3QUANT: TBCDField
      FieldName = 'PVITN3QUANT'
      Size = 3
    end
    object TblQtdePVITN3VLRUNIT: TBCDField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'PVITN3VLRUNIT'
      Origin = 'DB.PEDIDOCOMPRAITEM.PVITN3VLRUNIT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Size = 3
    end
    object TblQtdeVlrTotalItem: TBCDField
      FieldName = 'VlrTotalItem'
      Size = 3
    end
    object TblQtdeQTDEATENDIDO: TBCDField
      FieldName = 'QTDEATENDIDO'
      Size = 3
    end
    object TblQtdeCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object TblQtdeVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object TblQtdePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object TblQtdePDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Size = 13
    end
    object TblQtdeROTAICOD: TIntegerField
      FieldName = 'ROTAICOD'
    end
  end
  object DSTblQtde: TDataSource
    DataSet = TblQtde
    Left = 89
    Top = 30
  end
end
