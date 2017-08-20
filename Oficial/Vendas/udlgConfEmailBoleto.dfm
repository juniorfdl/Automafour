inherited fdlgConfEmailBoleto: TfdlgConfEmailBoleto
  Left = 285
  Top = 81
  Width = 808
  Height = 475
  Hint = 
    '<NOME> '#9#9'- Raz'#227'o Social do Cliente'#13'<FANTASIA>'#9'- Nome Fantasia do' +
    ' Cliente'#13'<CIDADE>'#9'- Cidade do Cliente'#13'<BAIRRO>'#9'- Bairro do Clien' +
    'te'#13'<VALOR>'#9'- Valor do Boleto'#13'<VENCIMENTO>'#9'- Vencimento do Boleto'
  Caption = 'Configura'#231#245'es de E-Mail - fdlgConfEmailBoleto'
  OldCreateOrder = True
  Position = poDesktopCenter
  ShowHint = True
  Visible = False
  WindowState = wsNormal
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    Width = 792
    Height = 436
    inherited PanelCentral: TPanel
      Width = 788
      Height = 352
      object Label1: TLabel [0]
        Left = 8
        Top = 8
        Width = 39
        Height = 13
        Caption = 'Assunto'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 8
        Top = 48
        Width = 51
        Height = 13
        Caption = 'Mensagem'
      end
      inherited PanelBarra: TPanel
        Width = 0
        Height = 352
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 24
        Width = 773
        Height = 21
        DataField = 'ASSUNTO'
        DataSource = dsConfigEmail
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 64
        Width = 773
        Height = 281
        Hint = 
          '<NOME> '#9#9'- Raz'#227'o Social do Cliente'#13'<FANTASIA>'#9'- Nome Fantasia do' +
          ' Cliente'#13'<CIDADE>'#9'- Cidade do Cliente'#13'<BAIRRO>'#9'- Bairro do Clien' +
          'te'#13'<VALOR>'#9'- Valor do Boleto'#13'<VENCIMENTO>'#9'- Vencimento do Boleto'
        DataField = 'MENSAGEM'
        DataSource = dsConfigEmail
        ParentShowHint = False
        ScrollBars = ssBoth
        ShowHint = True
        TabOrder = 2
      end
    end
    inherited ScrollBoxTopo: TScrollBox
      Width = 788
      inherited PanelCabecalho: TPanel
        Width = 788
        inherited LabelTitulo: TLabel
          Width = 262
          Caption = 'Configura'#231#245'es de E-Mail '
        end
        inherited PanelNavigator: TPanel
          Width = 788
          inherited AdvPanelNavigator: TAdvOfficeStatusBar
            Width = 788
          end
        end
      end
    end
  end
  object dsConfigEmail: TDataSource
    DataSet = tConfigEmail
    Left = 325
    Top = 16
  end
  object tConfigEmail: TTable
    DatabaseName = 'DB'
    TableName = 'CONFIGEMAIL'
    Left = 280
    Top = 32
    object tConfigEmailASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Origin = 'DB.CONFIGEMAIL.ASSUNTO'
      Size = 100
    end
    object tConfigEmailMENSAGEM: TMemoField
      FieldName = 'MENSAGEM'
      Origin = 'DB.CONFIGEMAIL.MENSAGEM'
      BlobType = ftMemo
      Size = 1
    end
  end
end
