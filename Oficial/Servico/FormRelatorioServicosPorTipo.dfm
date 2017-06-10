inherited FormRelatorioOrdPorTipoServico: TFormRelatorioOrdPorTipoServico
  Caption = 'Relat'#243'rio de Servi'#231'o por Tipo'
  ClientHeight = 549
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 533
  end
  inherited ScrollBox: TScrollBox
    Height = 533
    inherited PanelCentro: TPanel
      Height = 378
      inherited BtnVisualizar: TSpeedButton
        Top = 338
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 262
        Width = 407
        Height = 67
        Caption = ' Status '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object CheckTodas: TCheckBox
          Left = 4
          Top = 16
          Width = 249
          Height = 17
          Caption = 'Todas - Exceto Canceladas'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object CheckAbertas: TCheckBox
          Left = 4
          Top = 40
          Width = 77
          Height = 17
          Caption = 'Abertas'
          TabOrder = 1
        end
        object CheckEncerradas: TCheckBox
          Left = 72
          Top = 40
          Width = 86
          Height = 17
          Caption = 'Encerradas'
          TabOrder = 2
        end
        object CheckFinalizadas: TCheckBox
          Left = 160
          Top = 40
          Width = 83
          Height = 17
          Caption = 'Finalizadas'
          TabOrder = 3
        end
        object CheckProntas: TCheckBox
          Left = 246
          Top = 40
          Width = 61
          Height = 17
          Caption = 'Prontas'
          TabOrder = 4
        end
        object CheckCanceladas: TCheckBox
          Left = 316
          Top = 40
          Width = 85
          Height = 17
          Caption = 'Canceladas'
          TabOrder = 5
        end
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 210
        Width = 407
        Height = 47
        Caption = '  Tipo de Servi'#231'o '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboCliente: TRxDBLookupCombo
          Left = 5
          Top = 15
          Width = 396
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'ORMCTIPOSERVICOID'
          LookupDisplay = 'ORMCA30TIPOSERVICO'
          LookupSource = DSSQLTipoServico
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object SQLTipoServico: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '* '
      'From'
      'ORD_MEC_TIPOSERVICO'
      'Order by'
      'ORMCA30TIPOSERVICO'
      '')
    Macros = <>
    Left = 428
    Top = 4
    object SQLTipoServicoORMCTIPOSERVICOID: TIntegerField
      FieldName = 'ORMCTIPOSERVICOID'
      Origin = 'DB.ORD_MEC_TIPOSERVICO.ORMCTIPOSERVICOID'
    end
    object SQLTipoServicoORMCA30TIPOSERVICO: TStringField
      FieldName = 'ORMCA30TIPOSERVICO'
      Origin = 'DB.ORD_MEC_TIPOSERVICO.ORMCA30TIPOSERVICO'
      Size = 30
    end
  end
  object DSSQLTipoServico: TDataSource
    DataSet = SQLTipoServico
    Left = 456
    Top = 4
  end
end
