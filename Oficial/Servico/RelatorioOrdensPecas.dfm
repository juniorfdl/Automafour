inherited FormRelatorioOrdPecas: TFormRelatorioOrdPecas
  Caption = 'Relat'#243'rio de Pe'#231'as Incluidas nas Ordens de Servi'#231'os'
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBox: TScrollBox
    inherited PanelCentro: TPanel
      Left = 212
      Height = 311
      inherited BtnVisualizar: TSpeedButton
        Top = 274
      end
      inherited EmpresaGroup: TGroupBox
        Height = 133
        inherited ListaEmpresas: TListBox
          Height = 50
        end
      end
      inherited GroupBox1: TGroupBox
        Left = 16
        Top = 209
        Height = 46
        inherited Label4: TLabel
          Left = 211
        end
        inherited De: TDateEdit
          Width = 150
        end
        inherited Ate: TDateEdit
          Left = 233
          Width = 150
        end
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 142
        Width = 407
        Height = 67
        Caption = ' Status '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
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
    inherited ScrollBoxTopo: TScrollBox
      inherited PanelCabecalho: TPanel
        inherited PanelNavigator: TPanel
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            inherited BtnFecharTela: TSpeedButton
              Left = 693
            end
          end
        end
      end
    end
  end
end
