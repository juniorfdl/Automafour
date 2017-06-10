inherited RelatorioOrdPorExecucao: TRelatorioOrdPorExecucao
  Caption = 'Relat'#243'rio de Ordens de Servi'#231'o Por Execu'#231#227'o'
  ClientHeight = 528
  PixelsPerInch = 96
  TextHeight = 13
  inherited Progresso: TProgressBar
    Top = 512
  end
  inherited ScrollBox: TScrollBox
    Height = 512
    inherited PanelCentro: TPanel
      Height = 395
      inherited BtnVisualizar: TSpeedButton
        Top = 314
      end
      inherited EmpresaGroup: TGroupBox
        Height = 126
        inherited ListaEmpresas: TListBox
          Height = 50
        end
      end
      inherited GroupBox1: TGroupBox
        Top = 132
      end
      object GroupBox2: TGroupBox
        Left = 13
        Top = 177
        Width = 407
        Height = 47
        Caption = ' Executado Em '
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
          LookupField = 'ORDEXEID'
          LookupDisplay = 'ORDA25EXECUTAEM'
          LookupSource = DSSQLExecutarem
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 226
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
          TabOrder = 0
          OnClick = CheckTodasClick
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
    end
  end
  object SQLExecutarem: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT'
      '* '
      'From'
      'ORD_EXECUTAREM'
      'Order by'
      'ORDA25executaem'
      '')
    Macros = <>
    Left = 428
    Top = 4
    object SQLExecutaremORDEXEID: TIntegerField
      FieldName = 'ORDEXEID'
      Origin = 'DB.ORD_EXECUTAREM.ORDEXEID'
    end
    object SQLExecutaremORDA25EXECUTAEM: TStringField
      FieldName = 'ORDA25EXECUTAEM'
      Origin = 'DB.ORD_EXECUTAREM.ORDA25EXECUTAEM'
      Size = 25
    end
  end
  object DSSQLExecutarem: TDataSource
    DataSet = SQLExecutarem
    Left = 456
    Top = 4
  end
end
