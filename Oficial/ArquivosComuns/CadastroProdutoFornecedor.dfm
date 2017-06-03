inherited FormCadastroProdutoFornecedor: TFormCadastroProdutoFornecedor
  Left = 421
  Top = 125
  Caption = 'Fornecedores por Produto'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 41
            Height = 408
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 335
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'FORNICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FornecedorLookup'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRFOA30REFERENCIA'
                    Visible = True
                  end>
              end
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
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label1: TLabel
                Left = 6
                Top = 3
                Width = 64
                Height = 13
                Caption = 'Fornecedor'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 6
                Top = 47
                Width = 122
                Height = 13
                Caption = 'Codigo no Fornecedor'
                FocusControl = DBEdit2
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 8404992
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object AcessaFornecedor: TSpeedButton
                Left = 68
                Top = 16
                Width = 21
                Height = 21
                Hint = 'Acessa Fornecedor'
                Flat = True
                Glyph.Data = {
                  9E020000424D9E0200000000000036000000280000000E0000000E0000000100
                  18000000000068020000C40E0000C40E00000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FF000000000000FF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF0000FF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000
                  0000FF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FF000000000000000000FF00FFFF00FFFF00FF0000FF00FFFF00FFA0B8BF3F
                  48400000000000003F383F6F686F000000000000FF00FFFF00FFFF00FFFF00FF
                  0000FF00FFA0B8B02F302F7080808F989F7F908F60706F000000000000FF00FF
                  FF00FFFF00FFFF00FFFF00FF0000FF00FF3F40407F908FA0B8B090A8AF8F989F
                  7F888F60706F404840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000
                  B0C8C0CFD8DFA0B0B090A8A08098907F888F000000FF00FFFF00FFFF00FFFF00
                  FFFF00FF0000FF00FF000000BFD0D0F0F8F0AFC0BF9FB0B090A0A08090900000
                  00FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF3F40408F989FCFE0DFE0E8
                  EFAFB8BF9FB0AF70807F3F4840FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00
                  FF9FA8AF2F302F8F989FB0C8CFAFC0C07F888F2F3030AFC0BFFF00FFFF00FFFF
                  00FFFF00FFFF00FF0000FF00FFFF00FF9FB0B03F40400000000000003F4840AF
                  B8BFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  0000}
                OnClick = AcessaFornecedorClick
              end
              object DBEdit1: TDBEdit
                Left = 4
                Top = 16
                Width = 64
                Height = 21
                DataField = 'FORNICOD'
                DataSource = DSTemplate
                TabOrder = 0
                OnKeyDown = DBEdit1KeyDown
              end
              object DBEdit2: TDBEdit
                Left = 4
                Top = 60
                Width = 184
                Height = 21
                DataField = 'PRFOA30REFERENCIA'
                DataSource = DSTemplate
                TabOrder = 1
              end
              object DBEdit12: TDBEdit
                Left = 91
                Top = 16
                Width = 398
                Height = 21
                TabStop = False
                AutoSize = False
                Ctl3D = True
                DataField = 'FornecedorLookup'
                DataSource = DSTemplate
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 2
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 0
          end
          inherited PanelCodigoDescricao: TPanel
            Top = 41
            Height = 0
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    SQL.Strings = (
      'Select '
      '  * '
      'From '
      '  PRODUTOFORNECEDOR'
      'Where   '
      '  PRODICOD = :PRODICOD and'
      '  (%MFiltro)')
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PRODICOD'
        ParamType = ptUnknown
      end>
    object SQLTemplatePRODICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'PRODICOD'
      Origin = 'DB.PRODUTOFORNECEDOR.PRODICOD'
    end
    object SQLTemplateFORNICOD: TIntegerField
      DisplayLabel = 'C'#243'd.Fornecedor'
      FieldName = 'FORNICOD'
      Origin = 'DB.PRODUTOFORNECEDOR.FORNICOD'
    end
    object SQLTemplatePRFOA30REFERENCIA: TStringField
      DisplayLabel = 'Codigo no Fornecedor'
      FieldName = 'PRFOA30REFERENCIA'
      Origin = 'DB.PRODUTOFORNECEDOR.PRFOA30REFERENCIA'
      FixedChar = True
      Size = 30
    end
    object SQLTemplateFornecedorLookup: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkLookup
      FieldName = 'FornecedorLookup'
      LookupDataSet = SQLFornecedor
      LookupKeyFields = 'FORNICOD'
      LookupResultField = 'FORNA60RAZAOSOC'
      KeyFields = 'FORNICOD'
      Visible = False
      Size = 60
      Lookup = True
    end
    object SQLTemplatePENDENTE: TStringField
      DisplayLabel = 'Pendente'
      FieldName = 'PENDENTE'
      Origin = 'DB.PRODUTOFORNECEDOR.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'REGISTRO'
      Origin = 'DB.PRODUTOFORNECEDOR.REGISTRO'
    end
  end
  object SQLFornecedor: TTable
    DatabaseName = 'DB'
    TableName = 'FORNECEDOR'
    Left = 24
    Top = 192
    object SQLFornecedorFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
      Required = True
    end
    object SQLFornecedorFORNA60RAZAOSOC: TStringField
      FieldName = 'FORNA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
end
