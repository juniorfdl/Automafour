inherited fSobre: TfSobre
  Width = 659
  Caption = 'Retaguarda - Sobre'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 643
    inherited PanelCentral: TPanel
      Width = 639
      object SpeedButton1: TSpeedButton [0]
        Left = 5
        Top = 9
        Width = 160
        Height = 28
        Caption = 'Verificar Atualiza'#231#245'es'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton [1]
        Left = 5
        Top = 39
        Width = 160
        Height = 28
        Caption = 'Atualizar'
        OnClick = SpeedButton2Click
      end
      inherited PanelBarra: TPanel
        Width = 0
        Visible = False
      end
      object cxGrid1: TcxGrid
        Left = 270
        Top = 0
        Width = 369
        Height = 268
        Align = alRight
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object cxGrid1DBTableView1Nome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
            Width = 142
          end
          object cxGrid1DBTableView1Informacao: TcxGridDBColumn
            DataBinding.FieldName = 'Informacao'
            Width = 241
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 639
      inherited PanelCabecalho: TPanel
        Width = 639
        inherited PanelNavigator: TPanel
          Width = 639
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 639
          end
        end
      end
    end
  end
  object IdFTP1: TIdFTP
    IPVersion = Id_IPv4
    ConnectTimeout = 10000
    Password = 'programacao'
    Username = 'programacao'
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ServerHOST = 'ftp://200.98.202.84/Sistema/Update'
    Left = 176
    Top = 216
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 200
    object cdsDadosNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object cdsDadosInformacao: TStringField
      FieldName = 'Informacao'
      Size = 255
    end
  end
  object dsDados: TDataSource
    DataSet = cdsDados
    Left = 416
    Top = 200
  end
end
