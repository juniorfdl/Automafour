inherited FormCadastroProdutoSabores: TFormCadastroProdutoSabores
  Left = 339
  Top = 73
  Caption = 'Cadastro Sabores'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            object Label9: TLabel
              Left = 7
              Top = 2
              Width = 46
              Height = 13
              Caption = 'Sabores'
              FocusControl = DBEditProduto
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object BtnProduto: TSpeedButton
              Left = 82
              Top = 16
              Width = 24
              Height = 23
              Hint = 'Acessa Produtos'
              Flat = True
              Glyph.Data = {
                E6000000424DE60000000000000076000000280000000E0000000E0000000100
                0400000000007000000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
                DD00DDDDDDDDDDD00D00DDDDDDDDDD000D00DDDDDDDDD000DD00DDDDDDDD000D
                DD00DD73000800DDDD00D70888800DDDDD00D38788888DDDDD00D07778880DDD
                DD00D07F77880DDDDD00D387F7783DDDDD00D70877807DDDDD00DD730037DDDD
                DD00DDDDDDDDDDDDDD00}
              OnClick = BtnProdutoClick
            end
            object DBEditProduto: TDBEdit
              Left = 4
              Top = 16
              Width = 77
              Height = 21
              DataField = 'ID_SABOR'
              DataSource = DSTemplate
              TabOrder = 0
              OnKeyDown = DBEditProdutoKeyDown
            end
            object DBEdit11: TDBEdit
              Left = 109
              Top = 16
              Width = 441
              Height = 21
              TabStop = False
              Color = 16249066
              Ctl3D = True
              DataField = 'SaboresLookup'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label2: TLabel
              Left = 7
              Top = 4
              Width = 38
              Height = 13
              Caption = 'C'#243'digo'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 74
              Top = 4
              Width = 96
              Height = 13
              Caption = 'Produto Principal'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 411
              Top = 4
              Width = 110
              Height = 13
              Caption = 'Descri'#231#227'o Reduzida'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit2: TDBEdit
              Left = 5
              Top = 17
              Width = 64
              Height = 21
              DataField = 'PRODICOD'
              DataSource = DSMasterTemplate
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 71
              Top = 17
              Width = 336
              Height = 21
              DataField = 'PRODA60DESCR'
              DataSource = DSMasterTemplate
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 409
              Top = 17
              Width = 239
              Height = 21
              DataField = 'PRODA30ADESCRREDUZ'
              DataSource = DSMasterTemplate
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select * From PRODUTO_SABORES'
      'Where PRODICOD=:PRODICOD and (%MFiltro)')
    Left = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptInput
      end>
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTO_SABORES.PRODICOD'
    end
    object SQLTemplateID_SABOR: TIntegerField
      DisplayLabel = 'Cod.Sabor'
      FieldName = 'ID_SABOR'
      Origin = 'DB.PRODUTO_SABORES.ID_SABOR'
    end
    object SQLTemplateSaboresLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'SaboresLookup'
      LookupDataSet = SQLSabores
      LookupKeyFields = 'ID_SABOR'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_SABOR'
      Size = 100
      Lookup = True
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTO_SABORES.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTO_SABORES.REGISTRO'
    end
  end
  inherited DSMasterTemplate: TDataSource
    DataSet = SQLTemplate
  end
  object SQLSabores: TTable
    DatabaseName = 'DB'
    TableName = 'SABORES'
    Left = 56
    Top = 240
    object SQLSaboresID_SABOR: TIntegerField
      FieldName = 'ID_SABOR'
      Required = True
    end
    object SQLSaboresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
