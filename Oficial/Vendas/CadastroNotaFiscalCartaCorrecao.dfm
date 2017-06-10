inherited FormCadastroNotaFiscalCartaCorrecao: TFormCadastroNotaFiscalCartaCorrecao
  Left = 209
  Top = 119
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ScrollBoxFundo: TScrollBox
    inherited PanelCentral: TPanel
      inherited PanelBarra: TPanel
        OnClick = ImrprimirCartaCorrecaoClick
        inherited Button3: TRxSpeedButton
          Caption = '&3 Enviar CCe'
          Visible = True
          OnClick = Button3Click
        end
        object Button4: TRxSpeedButton
          Left = 1
          Top = 74
          Width = 127
          Height = 25
          Cursor = crHandPoint
          Caption = '&4 Re-Imprimir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000130B0000130B00000001000000010000000000000606
            060026262600272727002D2D2D002E2E2E002F2F2F0031313100333333003434
            340035353500363636003737370038383800393939003A3A3A003B3B3B003C3C
            3C003E3E3E003F3F3F003F3F4000404040004141410042424200434444004545
            4500464646004747470048484800494949004A4A4A004B4B4B004D4D4D004E4E
            4E004F4F4F004C4F5000505050005454540055555500585858005B5B5B005C5E
            5F005E5E5E006060600061616100636363006062640060636400646464006666
            660067676700696969006E6E6E006F6F6F007070700071717100727272007B7B
            7B007B7D7D007F7F7F0081838400868686008D8D8D0090929200959595009999
            9900989A9A009E9E9E009EA2A500A0A0A000A1A1A100A2A2A200A3A3A300A5A5
            A500A6A6A600A7A7A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADAD
            AD00AFAFAF00B1B1B100B2B2B200B3B3B300B0B3B500B2B3B500B4B4B400B6B6
            B600B7B7B700BBBBBB00BBBCBC00BEBEBE00C3C3C300C3C5C500C6C6C600C7C9
            CB00C6CBCD00C9C9C900CBCBCB00CECECE00D2D2D200D5D5D500DBDBDB00D9DC
            DD00D8DDDE00D9DEDF00DCE0E200DDE1E300DEE2E300DFE3E400E0E0E000E1E1
            E100E2E2E200E0E4E500E1E5E600E2E6E700E5E5E500E3E7E800E5E8E900E6E9
            EA00E7E9EA00E8E8E800E9E9E900E8EAEB00EAEAEA00EBEBEB00E9EBEC00EAEC
            ED00EBEDEE00EDEDED00ECEEEF00EEEEEE00EFEFEF00EDEFF000EEF0F100EFF1
            F100F0F0F000F0F2F200F1F3F300F2F2F200F3F3F300F2F4F400F3F4F500F4F4
            F400F4F5F600F5F6F700F6F6F600F6F7F700F6F7F800F9FAFA00FAFAFA00BEBE
            BE00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000999999999999
            9999999999999999999999999999999999999999999999999999999999999999
            9999999999999999999999999999999999999999999999999999999999999999
            9999999999999999999999999900000000009999999999999999999999999999
            99990000001C36380F1200999999999999999999999999000000162826303735
            15070C000099999999999999990000202426221A19212C390E10040A09009999
            999999990028281F1A1E2B3D4745433B0C0F11080E1100009999999900311B2D
            48514F4D4B49403908020F11130F0A00999999990033465A58544E4745416670
            5E17060A1215100099999999005553524D4C4D6676868A7B8D681B0E110D1600
            9999999900504E4C5B718E838D867F7E7B7C6716030B0F0099999999003E5A7F
            9894918D8A85833F2E232F18321D050099999999990000647C837C725729293C
            566A62142A3400009999999999999900006559423A8079756F6C6B5C00009999
            99999999999999999900014A8B87817A77736D69279999999999999999999999
            99999904928C88827D78746E6100999999999999999999999999990060938F89
            848079756F440099999999999999999999999999009796908B885F1A00000099
            9999999999999999999999999900956325000099999999999999999999999999
            9999999999990000999999999999999999999999999999999999999999999999
            9999999999999999999999999999999999999999999999999999999999999999
            9999999999999999999999999999999999999999999999999999}
          GrayedInactive = False
          Layout = blGlyphLeft
          Margin = 0
          MarkDropDown = False
          ParentFont = False
          Transparent = True
          WordWrap = True
          OnClick = Button4Click
        end
      end
      inherited PanelFundoDados: TPanel
        inherited Panel5: TPanel
          inherited PagePrincipal: TPageControl
            inherited TabSheetConsulta: TTabSheet
              inherited DBGridLista: TDBGrid
                Height = 205
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NOFIA13ID'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CCEINSEQEVENTO'
                    Title.Caption = 'Seq.'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CCEA1CENVIADO'
                    Visible = True
                  end>
              end
              inherited PanelProcura: TPanel
                inherited PanelBetween: TPanel
                  inherited AdvPanel1: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelEditProcura: TPanel
                  inherited AdvPanelEditProcura: TAdvPanel
                    FullHeight = 0
                  end
                end
                inherited PanelIndice: TPanel
                  inherited AdvPanelIndice: TAdvPanel
                    FullHeight = 0
                  end
                end
              end
              object DBMemo1: TDBMemo
                Left = 0
                Top = 252
                Width = 749
                Height = 89
                Align = alBottom
                BevelInner = bvLowered
                BevelOuter = bvRaised
                Color = 16249066
                DataField = 'CCETXCORRECAO'
                DataSource = DSTemplate
                ReadOnly = True
                TabOrder = 3
              end
            end
            inherited TabSheetDadosPrincipais: TTabSheet
              object Label1: TLabel
                Left = 16
                Top = 8
                Width = 32
                Height = 13
                Caption = 'Motivo'
              end
              object DBMemo2: TDBMemo
                Left = 16
                Top = 28
                Width = 609
                Height = 293
                DataField = 'CCETXCORRECAO'
                DataSource = DSTemplate
                TabOrder = 0
              end
            end
          end
          inherited PanelCodigoDescricao: TPanel
            object Label4: TLabel
              Left = 31
              Top = 3
              Width = 76
              Height = 13
              Caption = 'Data Emissão'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 156
              Top = 3
              Width = 104
              Height = 13
              Caption = 'Cod.Retorno Sefaz'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit28: TDBEdit
              Left = 155
              Top = 18
              Width = 104
              Height = 19
              TabStop = False
              Color = 16249066
              Ctl3D = False
              DataField = 'CCEA5CODRETORNO'
              DataSource = DSTemplate
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit4: TDBDateEdit
              Left = 30
              Top = 17
              Width = 112
              Height = 21
              DataField = 'CCEDEMISSAO'
              DataSource = DSTemplate
              NumGlyphs = 2
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited PopupMenuDiversos: TPopupMenu
    object EnviarCarta: TMenuItem
      Caption = 'Enviar Carta de Correção'
      OnClick = EnviarCartaClick
    end
  end
  inherited PopupMenuImpressao: TPopupMenu
    object ImrprimirCartaCorrecao: TMenuItem
      Caption = 'Imrprimir Carta de Correção'
      OnClick = ImrprimirCartaCorrecaoClick
    end
  end
  inherited SQLTemplate: TRxQuery
    Tag = 1
    SQL.Strings = (
      'Select * From CCE Where (%MFiltro)  and NOFIA13ID = :NOFIA13ID')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NOFIA13ID'
        ParamType = ptUnknown
      end>
    object SQLTemplateNOFIA13ID: TStringField
      DisplayLabel = 'ID NFe'
      FieldName = 'NOFIA13ID'
      Origin = 'DB.CCE.NOFIA13ID'
      Size = 13
    end
    object SQLTemplateCCEINSEQEVENTO: TIntegerField
      Tag = 1
      FieldName = 'CCEINSEQEVENTO'
      Origin = 'DB.CCE.CCEINSEQEVENTO'
    end
    object SQLTemplateCCETXCORRECAO: TBlobField
      DisplayLabel = 'Motivo'
      FieldName = 'CCETXCORRECAO'
      Origin = 'DB.CCE.CCETXCORRECAO'
      Size = 1
    end
    object SQLTemplateCCEA1CENVIADO: TStringField
      DisplayLabel = 'Enviado'
      FieldName = 'CCEA1CENVIADO'
      Origin = 'DB.CCE.CCEA1CENVIADO'
      FixedChar = True
      Size = 1
    end
    object SQLTemplateCCEA5CODRETORNO: TStringField
      FieldName = 'CCEA5CODRETORNO'
      Size = 5
    end
    object SQLTemplateCCEDEMISSAO: TDateTimeField
      FieldName = 'CCEDEMISSAO'
      Origin = 'DB.CCE.CCEDEMISSAO'
    end
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    OnStatusChange = ACBrNFe1StatusChange
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.WebServices.UF = 'RS'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.Salvar = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFeRL1
    Left = 509
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    ACBrNFe = ACBrNFe1
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 4
    CasasDecimais._vUnCom = 4
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = False
    LarguraCodProd = 54
    ExibirEAN = False
    QuebraLinhaEmDetalhamentoEspecifico = True
    ExibeCampoFatura = False
    ImprimirUnQtVlComercial = iuComercial
    Left = 496
    Top = 77
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 526
    Top = 76
  end
  object SQLEmpresa: TRxQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from EMPRESA'
      'where %MEmpresa')
    Macros = <
      item
        DataType = ftString
        Name = 'MEmpresa'
        ParamType = ptInput
        Value = '0=0'
      end>
    Left = 587
    Top = 8
    object SQLEmpresaEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
      Origin = 'DB.EMPRESA.EMPRICOD'
    end
    object SQLEmpresaEMPRA60RAZAOSOC: TStringField
      FieldName = 'EMPRA60RAZAOSOC'
      Origin = 'DB.EMPRESA.EMPRA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60NOMEFANT: TStringField
      FieldName = 'EMPRA60NOMEFANT'
      Origin = 'DB.EMPRESA.EMPRA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRCMATRIZFILIAL: TStringField
      FieldName = 'EMPRCMATRIZFILIAL'
      Origin = 'DB.EMPRESA.EMPRCMATRIZFILIAL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA20FONE: TStringField
      FieldName = 'EMPRA20FONE'
      Origin = 'DB.EMPRESA.EMPRA20FONE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA20FAX: TStringField
      FieldName = 'EMPRA20FAX'
      Origin = 'DB.EMPRESA.EMPRA20FAX'
      FixedChar = True
    end
    object SQLEmpresaEMPRA60END: TStringField
      FieldName = 'EMPRA60END'
      Origin = 'DB.EMPRESA.EMPRA60END'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60BAI: TStringField
      FieldName = 'EMPRA60BAI'
      Origin = 'DB.EMPRESA.EMPRA60BAI'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60CID: TStringField
      FieldName = 'EMPRA60CID'
      Origin = 'DB.EMPRESA.EMPRA60CID'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA2UF: TStringField
      FieldName = 'EMPRA2UF'
      Origin = 'DB.EMPRESA.EMPRA2UF'
      FixedChar = True
      Size = 2
    end
    object SQLEmpresaEMPRA8CEP: TStringField
      FieldName = 'EMPRA8CEP'
      Origin = 'DB.EMPRESA.EMPRA8CEP'
      FixedChar = True
      Size = 8
    end
    object SQLEmpresaEMPRCFISJURID: TStringField
      FieldName = 'EMPRCFISJURID'
      Origin = 'DB.EMPRESA.EMPRCFISJURID'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA14CGC: TStringField
      FieldName = 'EMPRA14CGC'
      Origin = 'DB.EMPRESA.EMPRA14CGC'
      FixedChar = True
      Size = 14
    end
    object SQLEmpresaEMPRA20IE: TStringField
      FieldName = 'EMPRA20IE'
      Origin = 'DB.EMPRESA.EMPRA20IE'
      FixedChar = True
    end
    object SQLEmpresaEMPRA11CPF: TStringField
      FieldName = 'EMPRA11CPF'
      Origin = 'DB.EMPRESA.EMPRA11CPF'
      FixedChar = True
      Size = 11
    end
    object SQLEmpresaEMPRA10RG: TStringField
      FieldName = 'EMPRA10RG'
      Origin = 'DB.EMPRESA.EMPRA10RG'
      FixedChar = True
      Size = 10
    end
    object SQLEmpresaEMPRA60EMAIL: TStringField
      FieldName = 'EMPRA60EMAIL'
      Origin = 'DB.EMPRESA.EMPRA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRA60URL: TStringField
      FieldName = 'EMPRA60URL'
      Origin = 'DB.EMPRESA.EMPRA60URL'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Origin = 'DB.EMPRESA.PENDENTE'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaREGISTRO: TDateTimeField
      FieldName = 'REGISTRO'
      Origin = 'DB.EMPRESA.REGISTRO'
    end
    object SQLEmpresaEMPRA100INFSPC: TStringField
      FieldName = 'EMPRA100INFSPC'
      Origin = 'DB.EMPRESA.EMPRA100INFSPC'
      FixedChar = True
      Size = 100
    end
    object SQLEmpresaEMPRA15CODEAN: TStringField
      FieldName = 'EMPRA15CODEAN'
      Origin = 'DB.EMPRESA.EMPRA15CODEAN'
      FixedChar = True
      Size = 15
    end
    object SQLEmpresaEMPRBLOGOTIPO: TBlobField
      FieldName = 'EMPRBLOGOTIPO'
      Origin = 'DB.EMPRESA.EMPRBLOGOTIPO'
      Size = 1
    end
    object SQLEmpresaEMPRA60CONTATO: TStringField
      FieldName = 'EMPRA60CONTATO'
      Origin = 'DB.EMPRESA.EMPRA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object SQLEmpresaEMPRCLUCROREAL: TStringField
      FieldName = 'EMPRCLUCROREAL'
      Origin = 'DB.EMPRESA.EMPRCLUCROREAL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRN2VLRFUNDOPROMO: TFloatField
      FieldName = 'EMPRN2VLRFUNDOPROMO'
      Origin = 'DB.EMPRESA.EMPRN2VLRFUNDOPROMO'
    end
    object SQLEmpresaEMPRA15REGJUNTA: TStringField
      FieldName = 'EMPRA15REGJUNTA'
      Origin = 'DB.EMPRESA.EMPRA15REGJUNTA'
      FixedChar = True
      Size = 15
    end
    object SQLEmpresaEMPRIUFCODFED: TIntegerField
      FieldName = 'EMPRIUFCODFED'
      Origin = 'DB.EMPRESA.EMPRIUFCODFED'
    end
    object SQLEmpresaEMPRA3CRT: TStringField
      FieldName = 'EMPRA3CRT'
      Origin = 'DB.EMPRESA.EMPRA3CRT'
      Size = 3
    end
    object SQLEmpresaEMPRIENDNRO: TIntegerField
      FieldName = 'EMPRIENDNRO'
      Origin = 'DB.EMPRESA.EMPRIENDNRO'
    end
    object SQLEmpresaEMPRA100CERTIFSERIE: TStringField
      FieldName = 'EMPRA100CERTIFSERIE'
      Origin = 'DB.EMPRESA.EMPRA100CERTIFSERIE'
      Size = 100
    end
    object SQLEmpresaEMPRA35CERTIFSENHA: TStringField
      FieldName = 'EMPRA35CERTIFSENHA'
      Origin = 'DB.EMPRESA.EMPRA35CERTIFSENHA'
      Size = 35
    end
    object SQLEmpresaEMPRIFORMAEMISDANFE: TIntegerField
      FieldName = 'EMPRIFORMAEMISDANFE'
      Origin = 'DB.EMPRESA.EMPRIFORMAEMISDANFE'
    end
    object SQLEmpresaEMPRIFORMAEMISNFE: TIntegerField
      FieldName = 'EMPRIFORMAEMISNFE'
      Origin = 'DB.EMPRESA.EMPRIFORMAEMISNFE'
    end
    object SQLEmpresaEMPRA100CAMINHOLOGO: TStringField
      FieldName = 'EMPRA100CAMINHOLOGO'
      Origin = 'DB.EMPRESA.EMPRA100CAMINHOLOGO'
      Size = 100
    end
    object SQLEmpresaEMPRA100CAMINHOXML: TStringField
      FieldName = 'EMPRA100CAMINHOXML'
      Origin = 'DB.EMPRESA.EMPRA100CAMINHOXML'
      Size = 100
    end
    object SQLEmpresaEMPRA100CAMINHODANFES: TStringField
      FieldName = 'EMPRA100CAMINHODANFES'
      Origin = 'DB.EMPRESA.EMPRA100CAMINHODANFES'
      Size = 100
    end
    object SQLEmpresaEMPRA2WSUF: TStringField
      FieldName = 'EMPRA2WSUF'
      Origin = 'DB.EMPRESA.EMPRA2WSUF'
      Size = 2
    end
    object SQLEmpresaEMPRIWSAMBIENTE: TIntegerField
      FieldName = 'EMPRIWSAMBIENTE'
      Origin = 'DB.EMPRESA.EMPRIWSAMBIENTE'
    end
    object SQLEmpresaEMPRA1VISUALIZAMSG: TStringField
      FieldName = 'EMPRA1VISUALIZAMSG'
      Origin = 'DB.EMPRESA.EMPRA1VISUALIZAMSG'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA100PROXYHOST: TStringField
      FieldName = 'EMPRA100PROXYHOST'
      Origin = 'DB.EMPRESA.EMPRA100PROXYHOST'
      Size = 100
    end
    object SQLEmpresaEMPRIPROXYPORTA: TIntegerField
      FieldName = 'EMPRIPROXYPORTA'
      Origin = 'DB.EMPRESA.EMPRIPROXYPORTA'
    end
    object SQLEmpresaEMPRA50PROXYUSUARIO: TStringField
      FieldName = 'EMPRA50PROXYUSUARIO'
      Origin = 'DB.EMPRESA.EMPRA50PROXYUSUARIO'
      Size = 50
    end
    object SQLEmpresaEMPRA50PROXYSENHA: TStringField
      FieldName = 'EMPRA50PROXYSENHA'
      Origin = 'DB.EMPRESA.EMPRA50PROXYSENHA'
      Size = 50
    end
    object SQLEmpresaEMPRA50EMAILHOST: TStringField
      FieldName = 'EMPRA50EMAILHOST'
      Origin = 'DB.EMPRESA.EMPRA50EMAILHOST'
      Size = 50
    end
    object SQLEmpresaEMPRIEMAILPORTA: TIntegerField
      FieldName = 'EMPRIEMAILPORTA'
      Origin = 'DB.EMPRESA.EMPRIEMAILPORTA'
    end
    object SQLEmpresaEMPRA50EMAILSENHA: TStringField
      FieldName = 'EMPRA50EMAILSENHA'
      Origin = 'DB.EMPRESA.EMPRA50EMAILSENHA'
      Size = 50
    end
    object SQLEmpresaEMPRA1SSL: TStringField
      FieldName = 'EMPRA1SSL'
      Origin = 'DB.EMPRESA.EMPRA1SSL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA60EMAILCOPIA: TStringField
      FieldName = 'EMPRA60EMAILCOPIA'
      Origin = 'DB.EMPRESA.EMPRA60EMAILCOPIA'
      Size = 60
    end
    object SQLEmpresaEMPRA1TSL: TStringField
      FieldName = 'EMPRA1TSL'
      Origin = 'DB.EMPRESA.EMPRA1TSL'
      FixedChar = True
      Size = 1
    end
    object SQLEmpresaEMPRA75EMAILUSUARIO: TStringField
      FieldName = 'EMPRA75EMAILUSUARIO'
      Origin = 'DB.EMPRESA.EMPRA75EMAILUSUARIO'
      Size = 75
    end
  end
end
