inherited RelatorioOrdPorMecanico: TRelatorioOrdPorMecanico
  Left = 116
  Top = 40
  Caption = 'Relat'#243'rio de Servi'#231'os Prestados Por Mec'#226'nico'
  ClientHeight = 469
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 453
  end
  inherited ScrollBox: TScrollBox
    Height = 453
    inherited PanelCentro: TPanel
      Height = 279
      inherited BtnVisualizar: TSpeedButton
        Left = 148
        Top = 234
      end
      inherited EmpresaGroup: TGroupBox
        Height = 127
        inherited ListaEmpresas: TListBox
          Height = 51
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 133
        Height = 42
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 177
        Width = 407
        Height = 47
        Caption = ' Mec'#226'nico '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object ComboCliente: TRxDBLookupCombo
          Left = 5
          Top = 14
          Width = 396
          Height = 21
          DropDownCount = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LookupField = 'IDMECANICO'
          LookupDisplay = 'ORDMECA40NOME'
          LookupSource = DSSQLMecanico
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object SQLMecanico: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      '  *'
      'FROM'
      '  ORD_MECANICOS'
      'ORDER BY'
      '  ORDMECA40NOME')
    Macros = <>
    Left = 388
    Top = 80
    object IDMECANICO: TIntegerField
      FieldName = 'IDMECANICO'
      Origin = 'DB.ORD_MECANICOS.IDMECANICO'
    end
    object ORDMECA40NOME: TStringField
      FieldName = 'ORDMECA40NOME'
      Origin = 'DB.ORD_MECANICOS.ORDMECA40NOME'
      Size = 40
    end
  end
  object DSSQLMecanico: TDataSource
    DataSet = SQLMecanico
    Left = 416
    Top = 80
  end
end
