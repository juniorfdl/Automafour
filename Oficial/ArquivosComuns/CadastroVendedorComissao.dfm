inherited FormCadastroVendedorComissao: TFormCadastroVendedorComissao
  Caption = 'Cadastro de Comiss'#245'es'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            Top = 117
            Height = 332
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 259
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'VENDICOD'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VENDA60NOME'
                    Width = 234
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VDCON2TOTVENDVISTA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VDCON2TOTVENDPRAZO'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VDCOINROVEND'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VDCON2VENDMEDIA'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VDCON3QTDVEND'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VDCON2VLRCOMISS'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VDCODEMIS'
                    Width = 71
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
              object Label2: TLabel
                Left = 1
                Top = 0
                Width = 162
                Height = 13
                Caption = 'ID Cupom/NotaFiscal/Pedido'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label3: TLabel
                Left = 1
                Top = 39
                Width = 91
                Height = 13
                Caption = 'Tot. Venda Vista'
                FocusControl = DBEditVV
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 108
                Top = 39
                Width = 95
                Height = 13
                Caption = 'Tot. Venda Prazo'
                FocusControl = DBEditVP
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 177
                Top = 0
                Width = 90
                Height = 13
                Caption = 'Cr'#233'dito / D'#233'bito'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 1
                Top = 16
                Width = 173
                Height = 21
                DataField = 'CUPOA13ID'
                DataSource = DSTemplate
                TabOrder = 0
              end
              object DBEditVV: TDBEdit
                Left = 1
                Top = 55
                Width = 104
                Height = 21
                DataField = 'VDCON2TOTVENDVISTA'
                DataSource = DSTemplate
                TabOrder = 3
              end
              object DBEditVP: TDBEdit
                Left = 108
                Top = 55
                Width = 104
                Height = 21
                DataField = 'VDCON2TOTVENDPRAZO'
                DataSource = DSTemplate
                TabOrder = 4
              end
              object RxDBComboBox1: TRxDBComboBox
                Left = 177
                Top = 16
                Width = 104
                Height = 21
                Style = csDropDownList
                DataField = 'VDCOCDEBCRED'
                DataSource = DSTemplate
                EnableValues = True
                ItemHeight = 13
                Items.Strings = (
                  'Cr'#233'dito'
                  'D'#233'bito')
                TabOrder = 1
                Values.Strings = (
                  'C'
                  'D')
              end
              object GroupCredito: TGroupBox
                Left = 282
                Top = 0
                Width = 303
                Height = 57
                Caption = 'Cr'#233'dito/D'#233'bito'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                object Label6: TLabel
                  Left = 6
                  Top = 14
                  Width = 46
                  Height = 13
                  Caption = 'Emiss'#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label5: TLabel
                  Left = 115
                  Top = 15
                  Width = 29
                  Height = 13
                  Caption = 'Valor'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 220
                  Top = 14
                  Width = 70
                  Height = 13
                  Caption = '% Comiss'#227'o'
                  FocusControl = DBEdit2
                end
                object DBDateEdit1: TDBDateEdit
                  Left = 5
                  Top = 30
                  Width = 104
                  Height = 21
                  DataField = 'VDCODEMIS'
                  DataSource = DSTemplate
                  NumGlyphs = 2
                  TabOrder = 0
                end
                object DBEdit4: TDBEdit
                  Left = 113
                  Top = 30
                  Width = 104
                  Height = 21
                  DataField = 'VDCON2VLRCOMISS'
                  DataSource = DSTemplate
                  TabOrder = 1
                end
                object DBEdit2: TDBEdit
                  Left = 220
                  Top = 30
                  Width = 79
                  Height = 21
                  DataField = 'VDCON2PERCOMISSAO'
                  DataSource = DSTemplate
                  TabOrder = 2
                end
              end
            end
          end
          inherited PanelMaster: TPanel
            Top = 76
          end
          inherited PanelCodigoDescricao: TPanel
            Height = 76
            object Label1: TLabel
              Left = 6
              Top = 4
              Width = 54
              Height = 13
              Caption = 'Vendedor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 6
              Top = 41
              Width = 39
              Height = 13
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ComboVendedor: TRxDBLookupCombo
              Left = 4
              Top = 18
              Width = 542
              Height = 21
              DropDownCount = 8
              DataField = 'VENDICOD'
              DataSource = DSTemplate
              LookupField = 'VENDICOD'
              LookupDisplay = 'VENDA60NOME'
              LookupSource = DSSQLVendedor
              TabOrder = 0
            end
            object ComboCliente: TRxDBLookupCombo
              Left = 4
              Top = 54
              Width = 542
              Height = 21
              DropDownCount = 8
              DataField = 'CLIEA13ID'
              DataSource = DSTemplate
              LookupField = 'CLIEA13ID'
              LookupDisplay = 'CLIEA60RAZAOSOC'
              LookupSource = DSSQLCliente
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select'
      '*'
      'From'
      'VENDEDORCOMISSAO'
      'Where'
      'VENDEDORCOMISSAO.VDCOA5TIPODOC = '#39'MN'#39
      'and'
      '(%MFiltro)')
    object SQLTemplateVENDICOD: TIntegerField
      Tag = 1
      ConstraintErrorMessage = '1'
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDORCOMISSAO.VENDICOD'
    end
    object SQLTemplateCUPOA13ID: TStringField
      Tag = 1
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.VENDEDORCOMISSAO.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateVDCOICOD: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'VDCOICOD'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOICOD'
    end
    object SQLTemplateVDCON2TOTVENDVISTA: TBCDField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tot. Venda Vista'
      FieldName = 'VDCON2TOTVENDVISTA'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDVISTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVDCON2TOTVENDPRAZO: TBCDField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Tot. Venda Prazo'
      FieldName = 'VDCON2TOTVENDPRAZO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2TOTVENDPRAZO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVDCOINROVEND: TIntegerField
      DisplayLabel = 'Nro. Vendas'
      FieldName = 'VDCOINROVEND'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOINROVEND'
      DisplayFormat = '#,##0.00'
    end
    object SQLTemplateVDCON2VENDMEDIA: TBCDField
      DisplayLabel = 'Venda M'#233'dia'
      FieldName = 'VDCON2VENDMEDIA'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2VENDMEDIA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVDCON3QTDVEND: TBCDField
      DisplayLabel = 'Qde. Vendida'
      FieldName = 'VDCON3QTDVEND'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON3QTDVEND'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVDCON2VLRCOMISS: TBCDField
      DisplayLabel = 'Vlr. Comiss'#227'o'
      FieldName = 'VDCON2VLRCOMISS'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2VLRCOMISS'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVDCODEMIS: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'VDCODEMIS'
      Origin = 'DB.VENDEDORCOMISSAO.VDCODEMIS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SQLTemplatePENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.VENDEDORCOMISSAO.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.VENDEDORCOMISSAO.REGISTRO'
    end
    object SQLTemplateVENDA60NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'VENDA60NOME'
      LookupDataSet = SQLVendedor
      LookupKeyFields = 'VENDICOD'
      LookupResultField = 'VENDA60NOME'
      KeyFields = 'VENDICOD'
      Size = 60
      Lookup = True
    end
    object SQLTemplateCLIEA13ID: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.VENDEDORCOMISSAO.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateVDCOA5TIPODOC: TStringField
      DisplayLabel = 'Tipo Doc.'
      FieldName = 'VDCOA5TIPODOC'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOA5TIPODOC'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateVDCOCDEBCRED: TStringField
      ConstraintErrorMessage = '1'
      DisplayLabel = 'Cr'#233'd/D'#233'b.'
      FieldName = 'VDCOCDEBCRED'
      Origin = 'DB.VENDEDORCOMISSAO.VDCOCDEBCRED'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateVDCODESTORNO: TDateTimeField
      DisplayLabel = 'Data Estorno'
      FieldName = 'VDCODESTORNO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCODESTORNO'
    end
    object SQLTemplateVDCON3VLRESTORNO: TBCDField
      DisplayLabel = 'Vlr. Estorno'
      FieldName = 'VDCON3VLRESTORNO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON3VLRESTORNO'
      Precision = 15
      Size = 3
    end
    object SQLTemplateVDCON2PERCOMISSAO: TBCDField
      DisplayLabel = '% Comiss'#227'o'
      FieldName = 'VDCON2PERCOMISSAO'
      Origin = 'DB.VENDEDORCOMISSAO.VDCON2PERCOMISSAO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
  end
  object SQLVendedor: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT VENDICOD, VENDA60NOME FROM VENDEDOR')
    Macros = <>
    Left = 24
    Top = 192
    object SQLVendedorVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
      Origin = 'DB.VENDEDOR.VENDICOD'
    end
    object SQLVendedorVENDA60NOME: TStringField
      FieldName = 'VENDA60NOME'
      Origin = 'DB.VENDEDOR.VENDA60NOME'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLVendedor: TDataSource
    DataSet = SQLVendedor
    Left = 52
    Top = 192
  end
  object SQLCliente: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      'CLIEA13ID,'
      'CLIEA60RAZAOSOC'
      'FROM'
      'CLIENTE'
      'ORDER BY'
      'CLIEA60RAZAOSOC')
    Macros = <>
    Left = 24
    Top = 220
    object SQLClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CLIENTE.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
  end
  object DSSQLCliente: TDataSource
    DataSet = SQLCliente
    Left = 52
    Top = 220
  end
end
