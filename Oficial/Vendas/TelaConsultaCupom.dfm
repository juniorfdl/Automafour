inherited FormTelaConsultaCupom: TFormTelaConsultaCupom
  Left = 222
  Top = 79
  Width = 1075
  Height = 493
  Caption = 'Consulta de Cupom'
  OldCreateOrder = True
  WindowState = wsNormal
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 1059
    Height = 455
    inherited PanelCentral: TPanel
      Width = 1017
      inherited PanelProcura: TPanel
        Width = 1017
        Height = 49
        object Label1: TLabel [0]
          Left = 318
          Top = 1
          Width = 81
          Height = 13
          Caption = 'Emitidos Entre'
          FocusControl = ComboOrdem
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited EditProcura: TMaskEdit
          Left = 522
          Top = 15
          TabOrder = 3
        end
        inherited PanelIndice: TPanel
          Height = 49
          inherited LblProcurarPor: TLabel
            Top = 2
          end
          inherited LblOrdenarPor: TLabel
            Left = 165
            Top = 2
          end
          inherited ComboOrdem: TComboBox
            Top = 16
            Width = 160
          end
          inherited ComboOrder: TComboBox
            Left = 163
            Top = 16
            Width = 150
          end
        end
        object De: TDateEdit
          Left = 316
          Top = 16
          Width = 101
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object Ate: TDateEdit
          Left = 419
          Top = 16
          Width = 101
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
          OnExit = AteExit
        end
      end
      inherited DBGridLista: TDBGrid
        Top = 49
        Width = 1017
        Height = 309
        OnDrawColumnCell = DBGridListaDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CUPOA13ID'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TERMA60DESCR'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUPOINRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUPODEMIS'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalGeral'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIEA60RAZAOSOC'
            Width = 307
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDA60NOME'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUPOCTIPOPADRAO'
            PickList.Strings = (
              'CRD'
              'CREDIARIO')
            Visible = True
          end>
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 1055
      inherited PanelCabecalho: TPanel
        Width = 1055
        inherited PanelNavigator: TPanel
          Width = 1055
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 1055
            inherited LabelRetornar: TSpeedButton
              Left = 11
              Font.Color = clRed
            end
            object CheckFiltro: TCheckBox
              Left = 101
              Top = 8
              Width = 188
              Height = 17
              Caption = '&Filtrar cupons emitidos hoje'
              Color = 14922381
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              OnClick = CheckFiltroClick
            end
          end
        end
      end
    end
  end
  inherited DSTemplate: TDataSource
    Left = 147
  end
  inherited SQLTemplate: TRxQuery
    OnCalcFields = SQLTemplateCalcFields
    RequestLive = False
    SQL.Strings = (
      'Select '
      '*'
      'From'
      
        '(CUPOM CUPOM left outer join CLIENTE CLIENTE ON CUPOM.CLIEA13ID ' +
        '= CLIENTE.CLIEA13ID'
      
        'left outer join VENDEDOR VENDEDOR on CUPOM.VENDICOD = VENDEDOR.V' +
        'ENDICOD'
      
        'left outer join TERMINAL TERMINAL on CUPOM.TERMICOD = TERMINAL.T' +
        'ERMICOD)'
      'Where'
      'CUPOCSTATUS <> '#39'C'#39' '
      'and'
      '(%MData)'
      'and'
      '(%MFiltro)')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MFiltro'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 119
    object SQLTemplateCUPOA13ID: TStringField
      DisplayLabel = 'ID Cupom'
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CUPOM.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateTERMICOD: TIntegerField
      DisplayLabel = 'Cd.Term'
      FieldName = 'TERMICOD'
      Origin = 'DB.CUPOM.TERMICOD'
    end
    object SQLTemplateCUPODEMIS: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'CUPODEMIS'
      Origin = 'DB.CUPOM.CUPODEMIS'
    end
    object SQLTemplateCLIEA13ID: TStringField
      DisplayLabel = 'ID Cliente'
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CUPOM.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLTemplateVENDICOD: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDICOD'
      Origin = 'DB.CUPOM.VENDICOD'
    end
    object SQLTemplateCUPON2TOTITENS: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'CUPON2TOTITENS'
      Origin = 'DB.CUPOM.CUPON2TOTITENS'
      DisplayFormat = '###0.00'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPOCTIPOPADRAO: TStringField
      DisplayLabel = 'Tipo Padr'#227'o'
      FieldName = 'CUPOCTIPOPADRAO'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLTemplateCLIEA60RAZAOSOC: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CUPOM.CUPOCTIPOPADRAO'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateVENDA60NOME: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDA60NOME'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTERMA60DESCR: TStringField
      DisplayLabel = 'Terminal'
      FieldName = 'TERMA60DESCR'
      FixedChar = True
      Size = 60
    end
    object SQLTemplateTotalGeral: TFloatField
      DisplayLabel = 'Valor'
      FieldKind = fkCalculated
      FieldName = 'TotalGeral'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object SQLTemplateCUPON2JUROATRAS: TBCDField
      FieldName = 'CUPON2JUROATRAS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPON2MULTAATRAS: TBCDField
      FieldName = 'CUPON2MULTAATRAS'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPON3CREDTAXA: TBCDField
      FieldName = 'CUPON3CREDTAXA'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPON2ACRESC: TBCDField
      FieldName = 'CUPON2ACRESC'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPON2DESC: TBCDField
      FieldName = 'CUPON2DESC'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPON3BONUSTROCA: TBCDField
      FieldName = 'CUPON3BONUSTROCA'
      Precision = 15
      Size = 3
    end
    object SQLTemplateCUPOINRO: TIntegerField
      DisplayLabel = 'Cupom Nro'
      FieldName = 'CUPOINRO'
    end
  end
  object FormStorage: TFormStorage
    StoredValues = <>
    Left = 224
    Top = 12
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 256
    Top = 12
  end
  object RxMemory: TRxMemoryData
    FieldDefs = <
      item
        Name = 'RxCupom'
        DataType = ftString
        Size = 13
      end>
    Left = 300
    Top = 12
    object RxMemoryRxCupom: TStringField
      FieldName = 'RxCupom'
      Size = 13
    end
    object RxMemoryRxNumCOO: TStringField
      FieldName = 'RxNumCOO'
      Size = 10
    end
  end
end
