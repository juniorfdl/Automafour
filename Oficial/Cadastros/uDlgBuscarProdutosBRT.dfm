object fDlgBuscarProdutosBRT: TfDlgBuscarProdutosBRT
  Left = 123
  Top = 50
  Width = 1009
  Height = 531
  Caption = 'Buscar Produtos Brasil Tribut'#225'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 94
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Segmento'
    end
    object Label2: TLabel
      Left = 179
      Top = 8
      Width = 22
      Height = 13
      Caption = 'EAN'
    end
    object Label3: TLabel
      Left = 303
      Top = 8
      Width = 24
      Height = 13
      Caption = 'NCM'
    end
    object Label4: TLabel
      Left = 8
      Top = 49
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label5: TLabel
      Left = 425
      Top = 8
      Width = 60
      Height = 13
      Caption = 'Limite Busca'
    end
    object cmbSegmento: TComboBox
      Left = 8
      Top = 24
      Width = 169
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Agropecu'#225'ria'
        'Autope'#231'as'
        'Refei'#231#227'o'
        'Confec'#231#227'o'
        'Farm'#225'cia'
        'Inform'#225'tica'
        'Supermercado'
        'Ortopedia'
        'Constru'#231#227'o')
    end
    object edtEAN: TEdit
      Left = 179
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtNCM: TEdit
      Left = 303
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtNome: TEdit
      Left = 8
      Top = 65
      Width = 417
      Height = 21
      TabOrder = 4
    end
    object Button1: TButton
      Left = 427
      Top = 62
      Width = 80
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 5
      OnClick = Button1Click
    end
    object edtLimite: TdxSpinEdit
      Left = 426
      Top = 24
      Width = 81
      TabOrder = 3
      Value = 10.000000000000000000
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 94
    Width = 993
    Height = 399
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsDados
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.Indicator = True
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Caption = 'Utililizar'
            Default = True
            Kind = bkText
          end>
        Properties.ViewStyle = vsButtonsAutoWidth
        Properties.OnButtonClick = cxGrid1DBTableView1Column1PropertiesButtonClick
        IsCaptionAssigned = True
      end
      object cxGrid1DBTableView1Nome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        Width = 100
      end
      object cxGrid1DBTableView1Nome_tipi: TcxGridDBColumn
        DataBinding.FieldName = 'Nome_tipi'
        Width = 100
      end
      object cxGrid1DBTableView1EAN: TcxGridDBColumn
        DataBinding.FieldName = 'EAN'
        Width = 100
      end
      object cxGrid1DBTableView1Unidade: TcxGridDBColumn
        DataBinding.FieldName = 'Unidade'
      end
      object cxGrid1DBTableView1NCM: TcxGridDBColumn
        DataBinding.FieldName = 'NCM'
        Width = 100
      end
      object cxGrid1DBTableView1EX: TcxGridDBColumn
        DataBinding.FieldName = 'EX'
      end
      object cxGrid1DBTableView1CEST: TcxGridDBColumn
        DataBinding.FieldName = 'CEST'
      end
      object cxGrid1DBTableView1CST_ICMS: TcxGridDBColumn
        DataBinding.FieldName = 'CST_ICMS'
      end
      object cxGrid1DBTableView1CST_ICMS_DESCR: TcxGridDBColumn
        DataBinding.FieldName = 'CST_ICMS_DESCR'
        Width = 100
      end
      object cxGrid1DBTableView1CSOSN_ICMS: TcxGridDBColumn
        DataBinding.FieldName = 'CSOSN_ICMS'
      end
      object cxGrid1DBTableView1CSOSN_ICMS_DESCR: TcxGridDBColumn
        DataBinding.FieldName = 'CSOSN_ICMS_DESCR'
        Width = 100
      end
      object cxGrid1DBTableView1BASE_ICMS_VAREJO: TcxGridDBColumn
        DataBinding.FieldName = 'BASE_ICMS_VAREJO'
      end
      object cxGrid1DBTableView1ALIQUOTA_ICMS_VAREJO: TcxGridDBColumn
        DataBinding.FieldName = 'ALIQUOTA_ICMS_VAREJO'
      end
      object cxGrid1DBTableView1PERC_MVA_RS: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_MVA_RS'
      end
      object cxGrid1DBTableView1PERC_MVA_4: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_MVA_4'
      end
      object cxGrid1DBTableView1PERC_MVA_7: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_MVA_7'
      end
      object cxGrid1DBTableView1PERC_MVA_OUTROS: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_MVA_OUTROS'
      end
      object cxGrid1DBTableView1BASE_ICMS: TcxGridDBColumn
        DataBinding.FieldName = 'BASE_ICMS'
      end
      object cxGrid1DBTableView1ALIQUOTA_ICMS: TcxGridDBColumn
        DataBinding.FieldName = 'ALIQUOTA_ICMS'
      end
      object cxGrid1DBTableView1BASE_LEGAL_ICMS: TcxGridDBColumn
        DataBinding.FieldName = 'BASE_LEGAL_ICMS'
        Width = 100
      end
      object cxGrid1DBTableView1CST_PIS: TcxGridDBColumn
        DataBinding.FieldName = 'CST_PIS'
      end
      object cxGrid1DBTableView1CST_PIS_DESCR: TcxGridDBColumn
        DataBinding.FieldName = 'CST_PIS_DESCR'
        Width = 100
      end
      object cxGrid1DBTableView1TIPO_CREDITO: TcxGridDBColumn
        DataBinding.FieldName = 'TIPO_CREDITO'
      end
      object cxGrid1DBTableView1CST_COFINS: TcxGridDBColumn
        DataBinding.FieldName = 'CST_COFINS'
      end
      object cxGrid1DBTableView1CST_COFINS_DESCR: TcxGridDBColumn
        DataBinding.FieldName = 'CST_COFINS_DESCR'
        Width = 100
      end
      object cxGrid1DBTableView1BASE_PIS_COFINS: TcxGridDBColumn
        DataBinding.FieldName = 'BASE_PIS_COFINS'
      end
      object cxGrid1DBTableView1ALIQUOTA_PIS_REAL: TcxGridDBColumn
        DataBinding.FieldName = 'ALIQUOTA_PIS_REAL'
      end
      object cxGrid1DBTableView1ALIQUOTA_PIS_PRESUMIDO: TcxGridDBColumn
        DataBinding.FieldName = 'ALIQUOTA_PIS_PRESUMIDO'
      end
      object cxGrid1DBTableView1ALIQUOTA_COFINS_REAL: TcxGridDBColumn
        DataBinding.FieldName = 'ALIQUOTA_COFINS_REAL'
      end
      object cxGrid1DBTableView1ALIQUOTA_COFINS_PRESUMIDO: TcxGridDBColumn
        DataBinding.FieldName = 'ALIQUOTA_COFINS_PRESUMIDO'
      end
      object cxGrid1DBTableView1ALIQUOTA_ICMS_ECF: TcxGridDBColumn
        DataBinding.FieldName = 'ALIQUOTA_ICMS_ECF'
      end
      object cxGrid1DBTableView1BASE_LEGAL_PIS_COFINS: TcxGridDBColumn
        DataBinding.FieldName = 'BASE_LEGAL_PIS_COFINS'
        Width = 100
      end
      object cxGrid1DBTableView1NATUREZA_OPERACAO: TcxGridDBColumn
        DataBinding.FieldName = 'NATUREZA_OPERACAO'
      end
      object cxGrid1DBTableView1FAR_REGISTRO: TcxGridDBColumn
        DataBinding.FieldName = 'FAR_REGISTRO'
        Width = 100
      end
      object cxGrid1DBTableView1FAR_GGREM: TcxGridDBColumn
        DataBinding.FieldName = 'FAR_GGREM'
        Width = 100
      end
      object cxGrid1DBTableView1FAR_FABRICANTE: TcxGridDBColumn
        DataBinding.FieldName = 'FAR_FABRICANTE'
        Width = 100
      end
      object cxGrid1DBTableView1FAR_COMPOSICAO: TcxGridDBColumn
        DataBinding.FieldName = 'FAR_COMPOSICAO'
      end
      object cxGrid1DBTableView1FAR_PMF: TcxGridDBColumn
        DataBinding.FieldName = 'FAR_PMF'
      end
      object cxGrid1DBTableView1FAR_PMC: TcxGridDBColumn
        DataBinding.FieldName = 'FAR_PMC'
      end
      object cxGrid1DBTableView1FAR_TIPO: TcxGridDBColumn
        DataBinding.FieldName = 'FAR_TIPO'
        Width = 100
      end
      object cxGrid1DBTableView1FAR_LISTA: TcxGridDBColumn
        DataBinding.FieldName = 'FAR_LISTA'
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 24
    object cdsDadosNome: TStringField
      FieldName = 'Nome'
      Size = 500
    end
    object cdsDadosNome_tipi: TStringField
      FieldName = 'Nome_tipi'
      Size = 500
    end
    object cdsDadosEAN: TStringField
      FieldName = 'EAN'
      Size = 100
    end
    object cdsDadosUnidade: TStringField
      FieldName = 'Unidade'
    end
    object cdsDadosNCM: TStringField
      FieldName = 'NCM'
      Size = 200
    end
    object cdsDadosEX: TStringField
      FieldName = 'EX'
      Size = 3
    end
    object cdsDadosCEST: TStringField
      FieldName = 'CEST'
      Size = 7
    end
    object cdsDadosCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 10
    end
    object cdsDadosCST_ICMS_DESCR: TStringField
      FieldName = 'CST_ICMS_DESCR'
      Size = 100
    end
    object cdsDadosCSOSN_ICMS: TStringField
      FieldName = 'CSOSN_ICMS'
      Size = 10
    end
    object cdsDadosCSOSN_ICMS_DESCR: TStringField
      FieldName = 'CSOSN_ICMS_DESCR'
      Size = 100
    end
    object cdsDadosBASE_ICMS_VAREJO: TFloatField
      FieldName = 'BASE_ICMS_VAREJO'
    end
    object cdsDadosALIQUOTA_ICMS_VAREJO: TFloatField
      FieldName = 'ALIQUOTA_ICMS_VAREJO'
    end
    object cdsDadosPERC_MVA_RS: TFloatField
      FieldName = 'PERC_MVA_RS'
    end
    object cdsDadosPERC_MVA_4: TFloatField
      FieldName = 'PERC_MVA_4'
    end
    object cdsDadosPERC_MVA_7: TFloatField
      FieldName = 'PERC_MVA_7'
    end
    object cdsDadosPERC_MVA_OUTROS: TFloatField
      FieldName = 'PERC_MVA_OUTROS'
    end
    object cdsDadosBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object cdsDadosALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object cdsDadosBASE_LEGAL_ICMS: TStringField
      FieldName = 'BASE_LEGAL_ICMS'
      Size = 500
    end
    object cdsDadosCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 10
    end
    object cdsDadosCST_PIS_DESCR: TStringField
      FieldName = 'CST_PIS_DESCR'
      Size = 200
    end
    object cdsDadosTIPO_CREDITO: TStringField
      FieldName = 'TIPO_CREDITO'
      Size = 4
    end
    object cdsDadosCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 10
    end
    object cdsDadosCST_COFINS_DESCR: TStringField
      FieldName = 'CST_COFINS_DESCR'
      Size = 100
    end
    object cdsDadosBASE_PIS_COFINS: TFloatField
      FieldName = 'BASE_PIS_COFINS'
    end
    object cdsDadosALIQUOTA_PIS_REAL: TFloatField
      FieldName = 'ALIQUOTA_PIS_REAL'
    end
    object cdsDadosALIQUOTA_PIS_PRESUMIDO: TFloatField
      FieldName = 'ALIQUOTA_PIS_PRESUMIDO'
    end
    object cdsDadosALIQUOTA_COFINS_REAL: TFloatField
      FieldName = 'ALIQUOTA_COFINS_REAL'
    end
    object cdsDadosALIQUOTA_COFINS_PRESUMIDO: TFloatField
      FieldName = 'ALIQUOTA_COFINS_PRESUMIDO'
    end
    object cdsDadosALIQUOTA_ICMS_ECF: TStringField
      FieldName = 'ALIQUOTA_ICMS_ECF'
      Size = 14
    end
    object cdsDadosBASE_LEGAL_PIS_COFINS: TStringField
      FieldName = 'BASE_LEGAL_PIS_COFINS'
      Size = 500
    end
    object cdsDadosNATUREZA_OPERACAO: TStringField
      FieldName = 'NATUREZA_OPERACAO'
      Size = 3
    end
    object cdsDadosFAR_REGISTRO: TStringField
      FieldName = 'FAR_REGISTRO'
      Size = 100
    end
    object cdsDadosFAR_GGREM: TStringField
      FieldName = 'FAR_GGREM'
      Size = 100
    end
    object cdsDadosFAR_FABRICANTE: TStringField
      FieldName = 'FAR_FABRICANTE'
      Size = 200
    end
    object cdsDadosFAR_COMPOSICAO: TMemoField
      FieldName = 'FAR_COMPOSICAO'
      BlobType = ftMemo
    end
    object cdsDadosFAR_PMF: TStringField
      FieldName = 'FAR_PMF'
    end
    object cdsDadosFAR_PMC: TFloatField
      FieldName = 'FAR_PMC'
    end
    object cdsDadosFAR_TIPO: TStringField
      FieldName = 'FAR_TIPO'
      Size = 30
    end
    object cdsDadosFAR_LISTA: TStringField
      FieldName = 'FAR_LISTA'
      Size = 30
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 608
    Top = 32
  end
end
