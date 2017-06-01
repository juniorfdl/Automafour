inherited FormTelaProdutosSemMov: TFormTelaProdutosSemMov
  Width = 797
  Height = 462
  Caption = 'Produtos Sem Movimenta'#231#227'o de Estoque a X dias...'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 781
    Height = 423
    inherited PanelCentral: TPanel
      Width = 777
      Height = 339
      inherited PanelBarra: TPanel
        Top = 35
        Width = 0
        Height = 304
      end
      object PanelTopBxDocREc: TPanel
        Left = 0
        Top = 0
        Width = 777
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Color = 16249066
        TabOrder = 1
        object Label3: TLabel
          Left = 7
          Top = 10
          Width = 155
          Height = 13
          Caption = 'Sem movimento Maior que '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Data2: TDateEdit
          Left = 168
          Top = 7
          Width = 90
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object CKAtivos: TCheckBox
          Left = 277
          Top = 8
          Width = 112
          Height = 17
          Caption = 'Somente Ativos'
          Checked = True
          Color = 16249066
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 1
        end
        object CKInativos: TCheckBox
          Left = 396
          Top = 8
          Width = 121
          Height = 17
          Caption = 'Somente Inativos'
          Color = 16249066
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object DBGridLista: TDBGrid
        Left = 0
        Top = 35
        Width = 777
        Height = 304
        Align = alClient
        BorderStyle = bsNone
        Color = 16249066
        DataSource = dsProdutosTemp
        FixedColor = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgAlwaysShowSelection, dgConfirmDelete]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGridListaCellClick
        OnColEnter = DBGridListaColEnter
        OnColExit = DBGridListaColExit
        OnDrawColumnCell = DBGridListaDrawColumnCell
        OnKeyDown = DBGridListaKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o do Produto'
            Width = 394
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Caption = 'Estoque'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UltCompra'
            Title.Caption = 'Dt.Ult.Compra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UltVenda'
            Title.Caption = 'Dt.Ult.Venda'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Marcar'
            Width = 45
            Visible = True
          end>
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 777
      inherited PanelCabecalho: TPanel
        Width = 777
        inherited PanelNavigator: TPanel
          Width = 777
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 777
            inherited BtnFecharTela: TSpeedButton
              Left = 692
            end
            object BtnBaixarDoc: TSpeedButton
              Tag = 3
              Left = 107
              Top = 4
              Width = 135
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Trocar para Inativo'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                92050000424D860900000000000036080000280000000C0000000E0000000100
                1000030000005001000000000000000000000001000000000000007C0000E003
                00001F00000000000000A7C2B300588C7000719D85004D7B620086AB9700436C
                56009EBDA2007497780084AC88004A765E006685690055886D00518268005080
                660056896D003E634F00FFFFFF00000000000000000000000000000000000000
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
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FF7FFF7FFF7FFF7FFF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7FFF7F00000C320000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B042
                B0420000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000B0420A3687250000FF7F
                FF7FFF7FFF7FFF7FFF7F0000B042B0420932E9310000FF7FFF7FFF7FFF7FFF7F
                0000B042B0420C3200000A36A7290000FF7FFF7FFF7FFF7F0000B0424E3A0000
                0000C82D2A360000FF7FFF7FFF7F0000B042B04200000000FF7F00002A36A729
                0000FF7FFF7F0000F34E4E3A0000FF7FFF7F00006D422A360000FF7FFF7FFF7F
                00000000FF7FFF7FFF7FFF7F00006D42A7290000FF7FFF7FFF7FFF7FFF7FFF7F
                FF7FFF7F0000B04A2A360000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000
                6D42E92D0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000014572A360000FF7F
                FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000FF7F}
              ParentFont = False
              Spacing = 10
              OnClick = BtnBaixarDocClick
            end
            object BtnSelecionarDoc: TSpeedButton
              Tag = 3
              Left = 2
              Top = 4
              Width = 100
              Height = 25
              Cursor = crHandPoint
              Hint = 'Fechar Tela'
              Caption = '&Selecionar'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                96040000424D9604000000000000360000002800000012000000140000000100
                18000000000060040000CE0E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000084A8B491B1BB9CB9C29CB9C284A8
                B484A8B443555C000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFF00000069869091B1BB9CB9C29CB9C291B1BB84A8B484A8B4546B7300
                0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000546B7384
                A8B484A8B49CB9C29CB9C29CB9C284A8B484A8B469869043555C000000FFFFFF
                00000000000000000000000000000000000000006986909CB9C29CB9C29CB9C2
                9CB9C291B1BB84A8B484A8B4698690546B73000000FFFFFF0000000000E0E4E0
                E0E4E0E0E4E0000000546B7384A8B491B1BB9CB9C29CB9C291B1BB9CB9C284A8
                B484A8B484A8B4698690000000FFFFFF0000000000E0E4E0E0E4E0E0E4E00000
                0069869084A8B49CB9C29CB9C29CB9C29CB9C291B1BB84A8B484A8B484A8B469
                86903544490000000000000000E0E4E0E0E4E0000000698690708F9991B1BB9C
                B9C29CB9C29CB9C291B1BB9CB9C284A8B484A8B484A8B484A8B443555C000000
                000000000000000000000000000084A8B400000084A8B49CB9C29CB9C291B1BB
                9CB9C284A8B484A8B484A8B484A8B484A8B4546B730000000000000000E0E4E0
                E0E4E000000084A8B400000099B7C09CB9C29CB9C291B1BB91B1BB84A8B484A8
                B484A8B484A8B484A8B4546B730000000000000000E0E4E0E0E4E00000006986
                9000000099B7C091B1BB69869084A8B484A8B469869084A8B484A8B484A8B484
                A8B46986900000000000000000E0E4E0E0E4E0000000546B7300000099B7C069
                869000000084A8B469869000000084A8B4698690000000698690546B73000000
                000000000000000000000000000000000000000099B7C069869000000084A8B4
                546B730000006D8B94546B730000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000AAC3CA6986900000005A737A3240430708080000
                000000008C9C94E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0000000AAC3CA698690000000000000000000A3A5A3E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0000000B8CDD369
                86900000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000AAC3CA698690000000000000
                0000000000000000000000000000000000000000000000000000000000E0E4E0
                E0E4E0E0E4E0E0E4E0000000698690546B730000008C9C94E0E4E0E0E4E0E0E4
                E0E0E4E0E0E4E0E0E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4
                E0E0E4E00000000000008C9C94E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E00000000000000000E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0
                E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0E0E4E0000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              Spacing = 10
              OnClick = BtnSelecionarDocClick
            end
          end
        end
      end
    end
  end
  object dsProdutosTemp: TDataSource
    DataSet = TblProdutosTemp
    Left = 290
    Top = 5
  end
  object TblProdutosTemp: TTable
    DatabaseName = 'UNITGESTAO_TEMP'
    TableName = 'ProdutosTemp.db'
    Left = 262
    Top = 5
    object TblProdutosTempCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object TblProdutosTempDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object TblProdutosTempSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object TblProdutosTempUltCompra: TDateField
      FieldName = 'UltCompra'
    end
    object TblProdutosTempUltVenda: TDateField
      FieldName = 'UltVenda'
    end
    object TblProdutosTempMarcar: TBooleanField
      FieldName = 'Marcar'
    end
  end
  object SQLProdutos: TRxQuery
    Tag = 2
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  produto.PRODICOD,'
      '  produto.PRODA60DESCR,'
      '  produto.PRODCATIVO,'
      '  produto.PRODDULTCOMPRA,'
      '  produto.PRODDULTVENDA,'
      '  produtosaldo.PSLDN3QTDE'
      'from'
      
        '  PRODUTOSALDO INNER JOIN PRODUTO ON PRODUTO.PRODICOD = PRODUTOS' +
        'ALDO.PRODICOD AND %MEmpresa'
      'where'
      '  (produtosaldo.PSLDN3QTDE <=0) and (%MAtivo)'
      'order by'
      '  PRODA60DESCR asc')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MAtivo'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 322
    Top = 5
  end
end
