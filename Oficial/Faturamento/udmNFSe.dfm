object dmNFSe: TdmNFSe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 284
  Top = 124
  Height = 419
  Width = 619
  object ACBrNFSe1: TACBrNFSe
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = False
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.EmissaoPathNFSe = True
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFSE = ACBrNFSeDANFSeRL1
    Left = 96
    Top = 12
  end
  object ACBrNFSeDANFSeRL1: TACBrNFSeDANFSeRL
    ACBrNFSe = ACBrNFSe1
    PathPDF = '.\'
    MostrarPreview = True
    MostrarStatus = True
    NumCopias = 1
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    NFSeCancelada = True
    Provedor = proNenhum
    TamanhoFonte = 6
    FormatarNumeroDocumentoNFSe = True
    PrintDialog = True
    Left = 192
    Top = 12
  end
  object sqlNOTASERVICO_COMUNICACAO: TRxQuery
    AutoCalcFields = False
    BeforePost = sqlNOTASERVICO_COMUNICACAOBeforePost
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM NOTASERVICO_COMUNICACAO'
      'WHERE ID_NOTASERVICO = :ID_NOTASERVICO')
    Macros = <>
    Left = 92
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_NOTASERVICO'
        ParamType = ptInput
      end>
    object sqlNOTASERVICO_COMUNICACAOID: TIntegerField
      FieldName = 'ID'
      Origin = 'DB.NOTASERVICO_COMUNICACAO.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqlNOTASERVICO_COMUNICACAOID_NOTASERVICO: TIntegerField
      FieldName = 'ID_NOTASERVICO'
      Origin = 'DB.NOTASERVICO_COMUNICACAO.ID_NOTASERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlNOTASERVICO_COMUNICACAODATA_HORA: TDateTimeField
      FieldName = 'DATA_HORA'
      Origin = 'DB.NOTASERVICO_COMUNICACAO.DATA_HORA'
      ProviderFlags = [pfInUpdate]
    end
    object sqlNOTASERVICO_COMUNICACAOTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'DB.NOTASERVICO_COMUNICACAO.TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sqlNOTASERVICO_COMUNICACAOPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'DB.NOTASERVICO_COMUNICACAO.PROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 100
    end
    object sqlNOTASERVICO_COMUNICACAOOBS: TStringField
      FieldName = 'OBS'
      Origin = 'DB.NOTASERVICO_COMUNICACAO.OBS'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object sqlNOTASERVICO_COMUNICACAOXML: TBlobField
      FieldName = 'XML'
      Origin = 'DB.NOTASERVICO_COMUNICACAO.XML'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object sqlNOTASERVICO_COMUNICACAOCODIGOVERIFICACAO: TStringField
      FieldName = 'CODIGOVERIFICACAO'
      Origin = 'DB.NOTASERVICO_COMUNICACAO.CODIGOVERIFICACAO'
      ProviderFlags = [pfInUpdate]
    end
    object sqlNOTASERVICO_COMUNICACAONFSE_NUMERO: TStringField
      FieldName = 'NFSE_NUMERO'
      Origin = 'DB.NOTASERVICO_COMUNICACAO.NFSE_NUMERO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    ReadingConfirmation = True
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 254
    Top = 108
  end
end
