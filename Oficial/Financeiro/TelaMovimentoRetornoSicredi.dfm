inherited FormTelaMovimentoRetornoSicredi: TFormTelaMovimentoRetornoSicredi
  Left = 74
  Top = 88
  Caption = 'Ocorr'#234'ncias do Retorno '
  ClientHeight = 497
  ClientWidth = 1291
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelCentral: TPanel
    Width = 1291
    Height = 417
    object DBGridLista: TDBGrid
      Left = 0
      Top = 0
      Width = 1291
      Height = 417
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DSMasterTemplate
      FixedColor = 10053171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'TITULO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Emissao'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DtVencimento'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClienteNome'
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 257
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIEA13ID'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGOOCORRENCIA'
          Title.Caption = 'C'#243'digo Movimento'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Caption = 'Valor Documento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorJuros'
          Title.Caption = 'Valor Juros'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorMulta'
          Title.Caption = 'Valor Multa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorRecebido'
          Title.Caption = 'Valor Recebido'
          Visible = True
        end>
    end
  end
  inherited ScrollBoxTopo: TScrollBox
    Width = 1291
    inherited PanelCabecalho: TPanel
      Width = 1291
      inherited PanelNavigator: TPanel
        Width = 1291
        inherited AdvPanelNavigator: TAdvOfficeStatusBar
          Width = 1291
          inherited BtnFecharTela: TSpeedButton
            Left = 880
          end
        end
      end
    end
  end
  object DSMasterTemplate: TDataSource
    DataSet = TempOcorrencias
    Left = 190
    Top = 12
  end
  object TempOcorrencias: TRxMemoryData
    FieldDefs = <>
    Left = 96
    Top = 16
    object TempOcorrenciasCODIGOOCORRENCIA: TStringField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'CODIGOOCORRENCIA'
      OnChange = TempOcorrenciasCODIGOOCORRENCIAChange
      Size = 2
    end
    object TempOcorrenciasDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object TempOcorrenciasTITULO: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'TITULO'
      OnChange = TempOcorrenciasTITULOChange
      Size = 10
    end
    object TempOcorrenciasCLIEA13ID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIEA13ID'
      Size = 13
    end
    object TempOcorrenciasClienteNome: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'ClienteNome'
      Size = 60
    end
    object TempOcorrenciasEmissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'Emissao'
    end
    object TempOcorrenciasDtVencimento: TDateTimeField
      DisplayLabel = 'Dt. Vcto'
      FieldName = 'DtVencimento'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TempOcorrenciasValor: TFloatField
      FieldName = 'Valor'
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
    end
    object TempOcorrenciasValorJuros: TFloatField
      FieldName = 'ValorJuros'
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
    end
    object TempOcorrenciasValorMulta: TFloatField
      FieldName = 'ValorMulta'
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
    end
    object TempOcorrenciasValorRecebido: TFloatField
      FieldName = 'ValorRecebido'
      DisplayFormat = '0.,00'
      EditFormat = '0.00'
    end
  end
  object SQLContasReceber: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select'
      '  CR.CTRCA13ID,'
      '  CR.EMPRICOD,'
      '  CR.TERMICOD,'
      '  CR.CLIEA13ID,'
      '  CR.CTRCCSTATUS,'
      '  CR.CTRCINROPARC,'
      '  CR.CTRCDVENC,'
      '  CR.CTRCDEMIS,'
      '  CR.CTRCN2VLR,'
      '  (CR.CTRCN2VLR - CR.CTRCN2TOTREC) as Saldo,'
      '  CR.CTRCN2DESCFIN,'
      '  CR.CTRCN2TOTREC,'
      '  CR.CTRCDULTREC,'
      '  CR.PORTICOD,'
      '  CR.CTRCA5TIPOPADRAO,'
      '  CR.CUPOA13ID,'
      '  CL.CLIEA60RAZAOSOC,'
      '  CR.NOFIA13ID,'
      '  CR.CTRCA30NRODUPLICBANCO,'
      '  CR.CTRCCTIPOREGISTRO,'
      '  CR.CTRCA254HIST,'
      '  CR.CTRCN2TXJURO,'
      '  CR.CTRCA15NOSSONUMERO'
      'from'
      '  CONTASRECEBER CR, CLIENTE CL'
      'where'
      '  %MData   and'
      '  ((CR.CTRCCSTATUS <> '#39'C'#39') or (CR.CTRCCSTATUS is null)) and'
      '  (CR.CTRCA5TIPOPADRAO not in ('#39'CHQ'#39','#39'CHQV'#39','#39'CHQP'#39')) and'
      
        '  (CR.CTRCN2TOTREC    < CR.CTRCN2VLR or CR.CTRCN2TOTREC is null)' +
        ' and'
      '   CR.CLIEA13ID =  CL.CLIEA13ID and'
      '  (%MEmpresa) and'
      '  (%MCliente) and'
      '  (%MPortador) and'
      '  (%MTipoDoc) and'
      '  (%MNumerario) and'
      '  (%MDocumento)'
      'Order By'
      ' %MOrdem'
      '')
    Macros = <
      item
        DataType = ftString
        Name = 'MData'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MCliente'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MPortador'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MTipoDoc'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MNumerario'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MDocumento'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftString
        Name = 'MOrdem'
        ParamType = ptInput
        Value = 'CR.CTRCA13ID'
      end>
    Left = 264
    Top = 5
    object SQLContasReceberCTRCA13ID: TStringField
      FieldName = 'CTRCA13ID'
      Origin = 'DB.CONTASRECEBER.CTRCA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.CONTASRECEBER.EMPRICOD'
    end
    object SQLContasReceberTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
      Origin = 'DB.CONTASRECEBER.TERMICOD'
    end
    object SQLContasReceberCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Origin = 'DB.CONTASRECEBER.CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCTRCCSTATUS: TStringField
      FieldName = 'CTRCCSTATUS'
      Origin = 'DB.CONTASRECEBER.CTRCCSTATUS'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCINROPARC: TIntegerField
      FieldName = 'CTRCINROPARC'
      Origin = 'DB.CONTASRECEBER.CTRCINROPARC'
    end
    object SQLContasReceberCTRCDEMIS: TDateTimeField
      FieldName = 'CTRCDEMIS'
    end
    object SQLContasReceberCTRCDVENC: TDateTimeField
      FieldName = 'CTRCDVENC'
      Origin = 'DB.CONTASRECEBER.CTRCDVENC'
    end
    object SQLContasReceberCTRCN2VLR: TFloatField
      FieldName = 'CTRCN2VLR'
      Origin = 'DB.CONTASRECEBER.CTRCN2VLR'
    end
    object SQLContasReceberCTRCN2DESCFIN: TFloatField
      FieldName = 'CTRCN2DESCFIN'
      Origin = 'DB.CONTASRECEBER.CTRCN2DESCFIN'
    end
    object SQLContasReceberCTRCN2TOTREC: TFloatField
      FieldName = 'CTRCN2TOTREC'
      Origin = 'DB.CONTASRECEBER.CTRCN2TOTREC'
    end
    object SQLContasReceberCTRCDULTREC: TDateTimeField
      FieldName = 'CTRCDULTREC'
      Origin = 'DB.CONTASRECEBER.CTRCDULTREC'
    end
    object SQLContasReceberPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
      Origin = 'DB.CONTASRECEBER.PORTICOD'
    end
    object SQLContasReceberCTRCA5TIPOPADRAO: TStringField
      FieldName = 'CTRCA5TIPOPADRAO'
      Origin = 'DB.CONTASRECEBER.CTRCA5TIPOPADRAO'
      FixedChar = True
      Size = 5
    end
    object SQLContasReceberCUPOA13ID: TStringField
      FieldName = 'CUPOA13ID'
      Origin = 'DB.CONTASRECEBER.CUPOA13ID'
      FixedChar = True
      Size = 13
    end
    object SQLContasReceberCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      Origin = 'DB.CLIENTE.CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLContasReceberNOFIA13ID: TStringField
      FieldName = 'NOFIA13ID'
      Size = 13
    end
    object SQLContasReceberSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField
      FieldName = 'CTRCA30NRODUPLICBANCO'
      FixedChar = True
      Size = 30
    end
    object SQLContasReceberCTRCCTIPOREGISTRO: TStringField
      FieldName = 'CTRCCTIPOREGISTRO'
      FixedChar = True
      Size = 1
    end
    object SQLContasReceberCTRCA254HIST: TStringField
      FieldName = 'CTRCA254HIST'
      FixedChar = True
      Size = 254
    end
    object SQLContasReceberCTRCN2TXJURO: TFloatField
      FieldName = 'CTRCN2TXJURO'
    end
    object SQLContasReceberCTRCA15NOSSONUMERO: TStringField
      FieldName = 'CTRCA15NOSSONUMERO'
      Size = 15
    end
  end
end
