unit udmNFSe;

interface

uses
  SysUtils, Classes, ACBrNFSeDANFSeClass, ACBrNFSeDANFSeRLClass, ACBrBase,
  ACBrDFe, ACBrNFSe, DBTables, pcnConversao, Forms, DB, RxQuery, pnfsConversao, DateUtils, dialogs,
  ACBrIntegrador, ACBrMail;

type
  TdmNFSe = class(TDataModule)
    ACBrNFSe1: TACBrNFSe;
    ACBrNFSeDANFSeRL1: TACBrNFSeDANFSeRL;
    sqlNOTASERVICO_COMUNICACAO: TRxQuery;
    sqlNOTASERVICO_COMUNICACAOID: TIntegerField;
    sqlNOTASERVICO_COMUNICACAOID_NOTASERVICO: TIntegerField;
    sqlNOTASERVICO_COMUNICACAODATA_HORA: TDateTimeField;
    sqlNOTASERVICO_COMUNICACAOTIPO: TStringField;
    sqlNOTASERVICO_COMUNICACAOPROTOCOLO: TStringField;
    sqlNOTASERVICO_COMUNICACAOOBS: TStringField;
    sqlNOTASERVICO_COMUNICACAOXML: TBlobField;
    sqlNOTASERVICO_COMUNICACAOCODIGOVERIFICACAO: TStringField;
    sqlNOTASERVICO_COMUNICACAONFSE_NUMERO: TStringField;
    ACBrMail1: TACBrMail;
    procedure DataModuleCreate(Sender: TObject);
    procedure sqlNOTASERVICO_COMUNICACAOBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    fNumeroLote, fID_NOTA: Integer;
    Isql_Tomador, isql_Emitente, isqlParametro, IsqlDadosNota: TQuery;
    NumNFSe:String;
    OffLine:Boolean;
    procedure ConfigurarComponente;
    procedure GerarNFSe;
    function GetAliquotaCad_Servico: Currency;
    function GetCodigoMunicipio(Estado, Cidade: string): string;
    procedure AbrirDadosNota;
    function Caracter_XML_Invalido(Dados: string): string;
    function GetMontaDescricaoImpressao: string;
    procedure Enviar_Nfse;
    procedure Cancelar_Nfse;
    function GetNotaEnviada: Boolean;
    function GetNotaCancelada: Boolean;
    procedure ImprimirNfse;
    procedure TestarNotaPodeEnviar;
    procedure ConsultaNfse;

    procedure SetID_NOTA(Value: Integer);
    procedure GravarCancelamento;
    procedure EnviarEmailNfse;
  public
    { Public declarations }
    procedure Enviar;

    procedure TestarCertificado;
    class procedure Gerar(pID_NOTA: Integer);
    class procedure Cancelar(pID_NOTA: Integer);
    class procedure Consultar(pID_NOTA: Integer);
    class procedure GerarOffline(pID_NOTA: Integer);
    class procedure EnviarEmail(pID_NOTA: Integer);
  end;

var
  dmNFSe: TdmNFSe;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TdmNFSe.TestarNotaPodeEnviar;
var
  NUMERO: Integer;
begin

  {NUMERO :=
      ExecSql(' SELECT FIRST(1) B.NUMERO FROM NOTASERVICO_COMUNICACAO A '
      + ' INNER JOIN NOTASERVICO B ON B.ID = A.ID_NOTASERVICO '
      + ' WHERE B.SERIE = ' + QuotedStr(IsqlDadosNota.fieldbyname('SER').AsString)
      + ' AND EXTRACT(YEAR FROM A.DATA_HORA) = ' + FormatDateTime('YYYY', IsqlDadosNota.fieldbyname('DEMI').AsDateTime)
      + ' AND A.TIPO <> ''2'' '
      + ' ORDER BY B.ID DESC ').FieldByName('NUMERO').AsInteger;

  if NUMERO > 0 then
  begin
    NUMERO := NUMERO + 1;
    if IsqlDadosNota.fieldbyname('NNOT').AsInteger <> NUMERO then
    begin
      dmbase.ShowMessageDlg('Nota de Serviço fora da sequência de envio!'
        + #13 + 'Próxima Nota: ' + FormatFloat('0000', NUMERO));
    end;
  end;}
end;

procedure TdmNFSe.ImprimirNfse;
begin
  ACBrNFSe1.NotasFiscais.Imprimir;
  ACBrNFSe1.NotasFiscais.ImprimirPDF;
  //EnviarNfsEmail;
end;

function TdmNFSe.GetNotaCancelada: Boolean;
begin
  Result := sqlNOTASERVICO_COMUNICACAO.Locate('TIPO', '2', []);
end;

function TdmNFSe.GetNotaEnviada: Boolean;
begin
  result := sqlNOTASERVICO_COMUNICACAO.Locate('TIPO', '1', []);
end;

procedure TdmNFSe.ConfigurarComponente;
var
  Ok: Boolean;
begin
    isqlParametro := ExecSql(' SELECT EMPRA100CERTIFSERIE, EMPRA35CERTIFSENHA, EMPRIMUNICODFED,SENHA, USER_WEB, '
    +' AGUARDARCONSULTARETORNO, CONSULTARLOTEAPOSENVIO, INTERVALOTENTATIVAS,EMPRA100PROXYHOST, TIPO_RPS, '
    +' EMPRA100CAMINHOLOGO, PREFEITURA, EMPRA60EMAIL, EMPRIWSAMBIENTE FROM EMPRESA WHERE EMPRICOD = '
    + EmpresaPadrao);

   {$IFDEF ACBrNFSeOpenSSL}
    ACBrNFSe1.Configuracoes.Certificados.Certificado := isqlParametro.fieldbyname('EMPRA100CERTIFSERIE').AsString;
    ACBrNFSe1.Configuracoes.Certificados.Senha := isqlParametro.fieldbyname('EMPRA35CERTIFSENHA').AsString;
   {$ELSE}
    ACBrNFSe1.Configuracoes.Certificados.NumeroSerie := isqlParametro.fieldbyname('EMPRA100CERTIFSERIE').AsString;
   {$ENDIF}

    ACBrNFSe1.DANFSe.Prefeitura := isqlParametro.fieldbyname('PREFEITURA').AsString;
    ACBrNFSe1.DANFSe.PrestLogo := isqlParametro.fieldbyname('EMPRA100CAMINHOLOGO').AsString;
    ACBrNFSe1.Configuracoes.WebServices.Ambiente := StrToTpAmb(Ok, IntToStr(isqlParametro.fieldbyname('EMPRIWSAMBIENTE').AsInteger + 1));
    ACBrNFSe1.Configuracoes.Geral.CodigoMunicipio := StrToIntDef(isqlParametro.fieldbyname('EMPRIMUNICODFED').AsString, 0);

    ACBrNFSe1.Configuracoes.Geral.SenhaWeb := isqlParametro.fieldbyname('SENHA').AsString;
    ACBrNFSe1.Configuracoes.Geral.UserWeb := isqlParametro.fieldbyname('USER_WEB').AsString;

    ACBrNFSe1.Configuracoes.WebServices.ProxyHost := isqlParametro.fieldbyname('EMPRA100PROXYHOST').AsString;

    if isqlParametro.fieldbyname('AGUARDARCONSULTARETORNO').AsInteger > 0 then
      ACBrNFSe1.Configuracoes.WebServices.AguardarConsultaRet := isqlParametro.fieldbyname('AGUARDARCONSULTARETORNO').AsInteger;

    if isqlParametro.fieldbyname('CONSULTARLOTEAPOSENVIO').AsString = 'S' then
      ACBrNFSe1.Configuracoes.Geral.ConsultaLoteAposEnvio := True
    else
      ACBrNFSe1.Configuracoes.Geral.ConsultaLoteAposEnvio := False;

    if isqlParametro.fieldbyname('INTERVALOTENTATIVAS').AsInteger > 0 then
      ACBrNFSe1.Configuracoes.WebServices.IntervaloTentativas := isqlParametro.fieldbyname('INTERVALOTENTATIVAS').AsInteger;

  ACBrNFSe1.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName) + 'Xml-Nfs';
  ACBrNFSe1.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName) + 'Schemas';
  ACBrNFSe1.Configuracoes.Arquivos.PathNFSe := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.PathCan := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.PathRPS := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.PathGer := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSeDANFSeRL1.PathPDF := ExtractFilePath(Application.ExeName) + 'Xml-Nfs\PDF';

  ACBrNFSe1.Configuracoes.Arquivos.AdicionarLiteral := True;
  ACBrNFSe1.Configuracoes.Arquivos.EmissaoPathNFSe := True;
  ACBrNFSe1.Configuracoes.Arquivos.PathCan := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.PathNFSe := ACBrNFSe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFSe1.Configuracoes.Arquivos.Salvar := True;
  ACBrNFSe1.Configuracoes.Geral.Salvar := true; 
end;

class procedure TdmNFSe.Consultar(pID_NOTA: Integer);
begin
  if not Assigned(dmNFSe) then
    dmNFSe:= TdmNFSe.Create(nil);

  dmNFSe.SetID_NOTA(pID_NOTA);
  dmNFSe.ConsultaNfse;
end;

function TdmNFSe.GetAliquotaCad_Servico: Currency;
begin
  result := 0;
  {if cdsCad_ServicoCOD_CADSERVICO.AsString = '' then exit;
  if isql_Emitente.fieldbyname('CID').AsString = '' then exit;

  result := dmbase.ExecSql(' SELECT A.ISS_VLR FROM CAD_SERVICO_IMPOSTO A '
    + ' INNER JOIN END_CIDADES C ON C.CODIGO_CIDADE = A.CODIGO_CIDADE '
    + ' WHERE A.COD_CADSERVICO = ' + cdsCad_ServicoCOD_CADSERVICO.AsString
    + ' AND C.NOME_CIDADE = ' + QuotedStr(isql_Emitente.fieldbyname('CID').AsString)
    ).FieldByName('ISS_VLR').AsCurrency; }
end;

procedure TdmNFSe.GerarNFSe;
var
  ValorISS, BaseCalculo: Currency;
  OK: Boolean;
  EXIGIBILIDADEISS, CodigoMunicipio, NATUREZA_PADRAO, CIDADE_TOMADOR, UF_TOMADOR, xDiscriminacao: string;
  i: Integer;
begin
  AbrirDadosNota;

  fNumeroLote := fID_NOTA;
  isql_Emitente := ExecSql(' SELECT EMPRA14CGC AS NDOC, EMPRA20IMUNIC AS IMUN, EMPRA60RAZAOSOC AS NOM, EMPRA60NOMEFANT AS FANT, '
   +' EMPRA60END AS ENDE, '''' AS LGR, EMPRIENDNRO AS NR, EMPRA60BAI AS BAI , EMPRA60CID AS CID, CNAEFISCAL, EMPRIMUNICODFED, '
   +' EMPRA2UF AS EST, '''' AS CEND, EMPRA8CEP AS CEP, EMPRA60EMAIL AS EMAIL, EMPRA20FONE AS NFON1, '''' AS PFON1  '
   +' FROM EMPRESA where EMPRICOD  = ' + QuotedStr(EmpresaPadrao));

  Isql_Tomador := ExecSql(' SELECT CLIEA14CGC AS NDOC, CLIEA60RAZAOSOC AS NOM, CLIEA60ENDRES AS ENDE, CLIEA60CIDRES AS CID, '
  +' CLIEA60BAIRES AS BAI, CLIEA2UFRES AS EST, '''' AS CEND, '''' AS LGR, CLIEA5NROENDRES AS NR, CLIEA8CEPRES as CEP, '
  +' CLIEA15FONE1 AS NFON, '''' AS PFON, CLIEA60URL AS HPAG, CLIEA60EMAIL AS EMAIL '
  +' FROM CLIENTE where CLIEA13ID  = ' + QuotedStr(IsqlDadosNota.fieldbyname('COD_CADCLI').AsString));

  NumNFSe := inttostr(IsqlDadosNota.fieldbyname('NNOT').AsInteger);

  ACBrNFSe1.NotasFiscais.Clear;
  with ACBrNFSe1 do
  begin
    NotasFiscais.NumeroLote := IntToStr(fNumeroLote);

    with NotasFiscais.Add.NFSe do
    begin   
      if (IsqlDadosNota.FindField('MES_COMPETENCIA') <> nil)
        and (IsqlDadosNota.fieldbyname('MES_COMPETENCIA').Value > 0) then
      begin
        Competencia := IsqlDadosNota.fieldbyname('ANO_COMPETENCIA').AsString + '/' +
          FormatFloat('00', IsqlDadosNota.fieldbyname('MES_COMPETENCIA').Value);
      end
      else
        Competencia := FormatDateTime('yyyy/mm', IsqlDadosNota.fieldbyname('DEMI').AsDateTime);

      Numero := IsqlDadosNota.fieldbyname('NNOT').AsString;
      IdentificacaoRps.Tipo := trRPS;
      IdentificacaoRps.Numero := NumNFSe;
      IdentificacaoRps.Serie := IsqlDadosNota.fieldbyname('SER').AsString;

      {if trim(isqlParametro.fieldbyname('TIPO_RPS').AsString) <> '' then
      begin
        //if (isql_Emitente.fieldbyname('NDOC').AsString = '10656686000127') then
        //  NumNFSe := IntToStr(StrToInt(Numero) + 2);  ///apenas para rodcar

        IdentificacaoRps.Numero := NumNFSe;
        IdentificacaoRps.Serie := IsqlDadosNota.fieldbyname('SER').AsString;

        if isqlParametro.fieldbyname('TIPO_RPS').AsString = 'R' then
          IdentificacaoRps.Tipo := trRPS
        else
          if isqlParametro.fieldbyname('TIPO_RPS').AsString = 'N' then
            IdentificacaoRps.Tipo := trNFConjugada
          else
            if isqlParametro.fieldbyname('TIPO_RPS').AsString = 'C' then
              IdentificacaoRps.Tipo := trCupom;
      end;}

      DataEmissao := IsqlDadosNota.fieldbyname('DEMI').AsDateTime + TimeOf(Now);
      NATUREZA_PADRAO := IsqlDadosNota.fieldbyname('NATUREZA_OPERACAO').AsString;

      NaturezaOperacao := StrToNaturezaOperacao(OK, trim(NATUREZA_PADRAO));

      if not OK then
        NaturezaOperacao := no0;

      {if cdsCad_ServicoREGIMEESPECIALTRIBUTACAO.AsString <> '' then
        RegimeEspecialTributacao := StrToRegimeEspecialTributacao(OK, cdsCad_ServicoREGIMEESPECIALTRIBUTACAO.AsString)
      else
        RegimeEspecialTributacao := StrToRegimeEspecialTributacao(OK, isqlParametro.fieldbyname('REGIMEESPECIALTRIBUTACAO').AsString);}

      {if isqlParametro.fieldbyname('OPTANTESIMPLESNACIONAL').AsString = 'S' then
        OptanteSimplesNacional := snSim
      else
        OptanteSimplesNacional := snNao; 

      if isqlParametro.fieldbyname('INCENTIVADORCULTURAL').AsString = 'S' then
        IncentivadorCultural := snSim
      else
        IncentivadorCultural := snNao;}

      IncentivadorCultural := snNao;
      OptanteSimplesNacional := snNao;

      if ACBrNFSe1.Configuracoes.WebServices.Ambiente = taProducao then
        Producao := snSim
      else
        Producao := snNao;

     // TnfseStatusRPS = ( srNormal, srCancelado );
      Status := srNormal;
      Servico.Valores.ValorServicos := IsqlDadosNota.fieldbyname('VNOT').AsCurrency;
      Servico.Valores.DescontoIncondicionado := IsqlDadosNota.fieldbyname('VDES').AsCurrency;
      Servico.Valores.ValorPis := IsqlDadosNota.fieldbyname('VPIS').AsCurrency;
      Servico.Valores.ValorCofins := IsqlDadosNota.fieldbyname('VCOF').AsCurrency;
      Servico.Valores.ValorInss := IsqlDadosNota.fieldbyname('VINSS').AsCurrency;
      Servico.Valores.ValorIr := IsqlDadosNota.fieldbyname('VIRF').AsCurrency;
      Servico.Valores.ValorCsll := IsqlDadosNota.fieldbyname('CSSL').AsCurrency;

      if IsqlDadosNota.fieldbyname('ISS_RETIDO').AsString = 'S' then
        Servico.Valores.IssRetido := stRetencao
      else
        Servico.Valores.IssRetido := stNormal;

      Servico.Valores.OutrasRetencoes := 0.00;
      Servico.Valores.DescontoCondicionado := 0.00;

      BaseCalculo := Servico.Valores.ValorServicos -
        Servico.Valores.ValorDeducoes -
        Servico.Valores.DescontoIncondicionado;

      if IsqlDadosNota.fieldbyname('VISS').AsCurrency > 0 then
      begin
        Servico.Valores.BaseCalculo := IsqlDadosNota.fieldbyname('BISS').AsCurrency;
        Servico.Valores.Aliquota := IsqlDadosNota.fieldbyname('AISS').AsCurrency / 100;

        if Servico.Valores.IssRetido = stNormal then
        begin
          ValorISS := IsqlDadosNota.fieldbyname('VISS').AsCurrency;
          Servico.Valores.ValorIss := ValorISS;
          Servico.Valores.ValorIssRetido := 0.00;
        end
        else begin
          ValorISS := IsqlDadosNota.fieldbyname('VISS').AsCurrency;
          Servico.Valores.ValorIss := ValorISS;
          Servico.Valores.ValorIssRetido := ValorISS;
        end;
      end
      else begin
        Servico.Valores.BaseCalculo := BaseCalculo;
        Servico.Valores.Aliquota := GetAliquotaCad_Servico;
        Servico.Valores.ValorIss := 0;
        Servico.Valores.ValorIssRetido := 0;
      end;

      Servico.Valores.ValorLiquidoNfse := Servico.Valores.ValorServicos -
        Servico.Valores.ValorPis -
        Servico.Valores.ValorCofins -
        Servico.Valores.ValorInss -
        Servico.Valores.ValorIr -
        Servico.Valores.ValorCsll -
        Servico.Valores.OutrasRetencoes -
        Servico.Valores.ValorIssRetido -
        Servico.Valores.DescontoIncondicionado -
        Servico.Valores.DescontoCondicionado;

      //cdsCad_Servico.Locate('COD_CADSERVICO', cdsComunicacaoCOD_CADSERVICO.AsInteger, []);
      Servico.ItemListaServico := IsqlDadosNota.fieldbyname('COD_SERVICO').AsString;
      Servico.xItemListaServico := IsqlDadosNota.fieldbyname('NOME_SERVICO').AsString;

     // Para o provedor ISS.NET em ambiente de Homologação
     // o Codigo CNAE tem que ser '6511102'

      Servico.CodigoCnae := isql_Emitente.fieldbyname('CNAEFISCAL').AsString;

      if ACBrNFSe1.Configuracoes.WebServices.Ambiente <> taProducao  then
        Servico.CodigoCnae := '6511102';

      { #ver
      if cdsCad_ServicoCODIGOTRIBUTACAOMUNICIPIO.AsString <> '' then
        Servico.CodigoTributacaoMunicipio := cdsCad_ServicoCODIGOTRIBUTACAOMUNICIPIO.AsString
      else
        if isqlParametro.fieldbyname('CODIGOTRIBUTACAOMUNICIPIO').AsString <> '' then
          Servico.CodigoTributacaoMunicipio := isqlParametro.fieldbyname('CODIGOTRIBUTACAOMUNICIPIO').AsString;}

      Servico.CodigoTributacaoMunicipio := isql_Emitente.fieldbyname('EMPRIMUNICODFED').AsString;
          
      if NaturezaOperacao = no2 then /// FORA DO MUNICIPIO
      begin
        CIDADE_TOMADOR := IsqlDadosNota.fieldbyname('CIDADE_TOMADOR').AsString;
        UF_TOMADOR := IsqlDadosNota.fieldbyname('UF_TOMADOR').AsString;

        if CIDADE_TOMADOR = '' then
        begin
          CIDADE_TOMADOR := Isql_Tomador.fieldbyname('CID').AsString;
          UF_TOMADOR := Isql_Tomador.fieldbyname('EST').AsString;
        end;

        if CIDADE_TOMADOR <> '' then
        begin
          CodigoMunicipio := GetCodigoMunicipio(UF_TOMADOR, CIDADE_TOMADOR);
          Servico.CodigoMunicipio := CodigoMunicipio;
        end;

        if Servico.CodigoMunicipio = '' then
        begin
          ShowMessage('Código do Município do Tomador não Localizado!'
            + #13 + 'Município: ' + CIDADE_TOMADOR + '\' + UF_TOMADOR);
        end;
      end;

      if Servico.CodigoMunicipio = '' then
        Servico.CodigoMunicipio := isql_Emitente.fieldbyname('EMPRIMUNICODFED').AsString;

      {if isqlParametro.fieldbyname('EXIGIBILIDADEISS').AsString <> '' then
        EXIGIBILIDADEISS := ExecSql('SELECT CODIGO FROM TABELA_NOMES WHERE COD_TABELA_NOMES = '
          + isqlParametro.fieldbyname('EXIGIBILIDADEISS').AsString).fieldbyname('CODIGO').AsString;

      //EXIGIBILIDADEISS := '2';
      Servico.ExigibilidadeISS := StrToExigibilidadeISS(ok, EXIGIBILIDADEISS); }

     // Informar para Saatri
      Servico.CodigoPais := 1058; // Brasil
      Servico.Discriminacao := IsqlDadosNota.fieldbyname('DESCRICAO_SERVICO').AsString;

      with Servico.ItemServico.Add do
      begin
        Descricao := IsqlDadosNota.fieldbyname('DESCRICAO_SERVICO').AsString;
        Quantidade := 1;
        ValorUnitario := IsqlDadosNota.fieldbyname('VNOT').AsCurrency;
      end;

      xDiscriminacao := Servico.Discriminacao;
      Servico.Discriminacao := Caracter_XML_Invalido(xDiscriminacao);

      if Trim(IsqlDadosNota.FieldByName('OBS').AsString) <> '' then
        OutrasInformacoes := IsqlDadosNota.FieldByName('OBS').AsString;

      PrestadorServico.IdentificacaoPrestador.Cnpj := TiraCaracteres(isql_Emitente.fieldbyname('NDOC').AsString);
      PrestadorServico.IdentificacaoPrestador.InscricaoMunicipal := isql_Emitente.fieldbyname('IMUN').AsString;
      PrestadorServico.IdentificacaoPrestador.Senha := isqlParametro.fieldbyname('Senha').AsString;
      //PrestadorServico.IdentificacaoPrestador.FraseSecreta := isqlParametro.fieldbyname('FRASE_SECRETA').AsString;
      PrestadorServico.IdentificacaoPrestador.cUF := 43;
      PrestadorServico.RazaoSocial := Caracter_XML_Invalido(isql_Emitente.fieldbyname('NOM').AsString);
      PrestadorServico.NomeFantasia := Caracter_XML_Invalido(isql_Emitente.fieldbyname('FANT').AsString);
      PrestadorServico.Endereco.TipoLogradouro := Caracter_XML_Invalido(isql_Emitente.fieldbyname('LGR').AsString);
      PrestadorServico.Endereco.Endereco := Caracter_XML_Invalido(isql_Emitente.fieldbyname('ENDE').AsString);
      PrestadorServico.Endereco.Numero := isql_Emitente.fieldbyname('NR').AsString;
      PrestadorServico.Endereco.Complemento := Caracter_XML_Invalido(isql_Emitente.fieldbyname('CEND').AsString);
      PrestadorServico.Endereco.Bairro := Caracter_XML_Invalido(isql_Emitente.fieldbyname('BAI').AsString);
      PrestadorServico.Endereco.CodigoMunicipio := isql_Emitente.fieldbyname('EMPRIMUNICODFED').AsString;
      PrestadorServico.Endereco.UF := isql_Emitente.fieldbyname('EST').AsString;
      PrestadorServico.Endereco.CEP := isql_Emitente.fieldbyname('CEP').AsString;
      PrestadorServico.Endereco.xMunicipio := Caracter_XML_Invalido(isql_Emitente.fieldbyname('CID').AsString);
      PrestadorServico.Endereco.CodigoPais := 1058;
      PrestadorServico.Contato.Telefone := isql_Emitente.fieldbyname('PFON1').AsString + isql_Emitente.fieldbyname('NFON1').AsString;
      PrestadorServico.Contato.Email := isql_Emitente.fieldbyname('EMAIL').AsString;

      ACBrNFSe1.Configuracoes.Geral.Emitente.InscMun := PrestadorServico.IdentificacaoPrestador.InscricaoMunicipal;
      ACBrNFSe1.Configuracoes.Geral.Emitente.CNPJ := PrestadorServico.IdentificacaoPrestador.Cnpj;
      ACBrNFSe1.Configuracoes.Geral.Emitente.RazSocial := PrestadorServico.RazaoSocial;

      Prestador.Cnpj := TiraCaracteres(isql_Emitente.fieldbyname('NDOC').AsString);
      Prestador.InscricaoMunicipal := isql_Emitente.fieldbyname('IMUN').AsString;
      Prestador.cUF := 43;

      if isqlParametro.fieldbyname('SENHA').AsString <> '' then
        Prestador.Senha := isqlParametro.fieldbyname('SENHA').AsString;

      {if isqlParametro.fieldbyname('FRASE_SECRETA').AsString <> '' then
        Prestador.FraseSecreta := isqlParametro.fieldbyname('FRASE_SECRETA').AsString;}

      CodigoMunicipio := GetCodigoMunicipio(Isql_Tomador.fieldbyname('EST').AsString, Isql_Tomador.fieldbyname('CID').AsString);
      Tomador.Endereco.CodigoMunicipio := CodigoMunicipio;

      Tomador.IdentificacaoTomador.CpfCnpj := TiraCaracteres(Isql_Tomador.fieldbyname('NDOC').AsString);

      with ExecSql(' SELECT CLIEIMUNICODFED, CLIEA20IE FROM CLIENTE WHERE CLIEA13ID = '
        + quotedstr(IsqlDadosNota.fieldbyname('COD_CADCLI').AsString)) do
      begin
        if FieldByName('CLIEIMUNICODFED').AsString <> '' then
          Tomador.IdentificacaoTomador.InscricaoMunicipal := FieldByName('CLIEIMUNICODFED').AsString;

        if FieldByName('CLIEA20IE').AsString <> '' then
          Tomador.IdentificacaoTomador.InscricaoEstadual := FieldByName('CLIEA20IE').AsString;
      end;

      //      Tomador.IdentificacaoTomador.DocTomadorEstrangeiro

      Tomador.RazaoSocial := Caracter_XML_Invalido(Isql_Tomador.fieldbyname('NOM').AsString);
      Tomador.Endereco.Endereco :=
        Caracter_XML_Invalido(IIF(Isql_Tomador.fieldbyname('LGR').AsString <> '', Isql_Tomador.fieldbyname('LGR').AsString + ' ', '') +
        Isql_Tomador.fieldbyname('ENDE').AsString);
      Tomador.Endereco.Numero := Isql_Tomador.fieldbyname('NR').AsString;
      Tomador.Endereco.Complemento := Caracter_XML_Invalido(Isql_Tomador.fieldbyname('CEND').AsString);
      Tomador.Endereco.Bairro := Isql_Tomador.fieldbyname('BAI').AsString;
      Tomador.Endereco.UF := Isql_Tomador.fieldbyname('EST').AsString;
      Tomador.Endereco.CEP := Isql_Tomador.fieldbyname('CEP').AsString;
      Tomador.Endereco.xMunicipio := Isql_Tomador.fieldbyname('CID').AsString;

      {if CIDADE_TOMADOR <> '' then
        Tomador.Endereco.xMunicipio_Incidencia := CIDADE_TOMADOR
      else
        Tomador.Endereco.xMunicipio_Incidencia := Isql_Tomador.fieldbyname('CID').AsString;}

      Tomador.Contato.Telefone := Isql_Tomador.fieldbyname('PFON').AsString + Isql_Tomador.fieldbyname('NFON').AsString;
      Tomador.Contato.Email := Isql_Tomador.fieldbyname('EMAIL').AsString;
    end;
  end;
end;

function TdmNFSe.Caracter_XML_Invalido(Dados: string): string;
begin
  Result := StringReplace(Dados, '&', 'E', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '>', ' ', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '<', ' ', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '=', ' ', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '"', ' ', [rfReplaceAll, rfIgnoreCase]);
end;

function TdmNFSe.GetMontaDescricaoImpressao: string;
begin
  if IsqlDadosNota.FieldByName('AISS').AsCurrency > 0 then
    Result := Result + '(' +
      'ISSQN ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('AISS').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VISS').AsCurrency)) + ')  ';

  if IsqlDadosNota.FieldByName('AIRF').AsCurrency > 0 then
    Result := Result + '('
      + 'IRRF ' + formatfloat('0.0#%', IsqlDadosNota.FieldByName('AIRF').AsCurrency)
      + formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VIRF').AsCurrency) + ')  ';

  if IsqlDadosNota.FieldByName('ACSLL').AsCurrency > 0 then
    Result := Result + '('
      + 'CSLL ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('ACSLL').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('CSSL').AsCurrency)) + ')  ';

  if IsqlDadosNota.FieldByName('ACOF').AsCurrency > 0 then
    Result := Result + '('
      + 'Cofins ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('ACOF').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VCOF').AsCurrency)) + ')  ';

  if IsqlDadosNota.FieldByName('APIS').AsCurrency > 0 then
    Result := Result + '('
      + 'PIS ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('APIS').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VPIS').AsCurrency)) + ')  ';

  if IsqlDadosNota.FieldByName('AINSS').AsCurrency > 0 then
    Result := Result + '('
      + 'INSS ' + (formatfloat('0.0#%', IsqlDadosNota.FieldByName('AINSS').AsCurrency)) +
      (formatfloat(' #,##0.00', IsqlDadosNota.FieldByName('VINSS').AsCurrency)) + ')  ';
end;

function TdmNFSe.GetCodigoMunicipio(Estado,
  Cidade: string): string;
begin
  Result := '';

  if (Cidade = '') or (Estado = '') then exit;

  Result := ExecSql(' SELECT ID FROM CIDADE WHERE UPPER(NOME) = '
    +QuotedStr(UpperCase(Cidade))+' AND SIGLA = '+ QuotedStr(Estado)).FieldByName('ID').AsString;
end;


procedure TdmNFSe.Enviar;
begin

end;

procedure TdmNFSe.TestarCertificado;
begin

end;

procedure TdmNFSe.DataModuleCreate(Sender: TObject);
begin
  ConfigurarComponente;
end;

procedure TdmNFSe.AbrirDadosNota;
begin
  IsqlDadosNota := ExecSql(' SELECT * FROM V_NOTA_SERVICO WHERE COD = ' + IntToStr(fID_NOTA));
end;

procedure TdmNFSe.Enviar_Nfse;
var
  CaminhoNfse, vAux, vNumLote, Caminho, xCodigoVerificacao, xProtocolo: string;
  i: Integer;
begin
  inherited;

  ConfigurarComponente;
  Caminho := ExtractFilePath(Application.ExeName) + 'Xml-Nfs\Nfs.xml';

  NumNFSe := IntToStr(IsqlDadosNota.fieldbyname('NNOT').AsInteger);
  vNumLote := IntToStr(fID_NOTA);
  ACBrNFSe1.NotasFiscais.Clear;
  GerarNFSe;

  if (OffLine) or (GetNotaEnviada) then
  begin
    if OffLine then
    begin
      ACBrNFSe1.NotasFiscais.GerarNFSe;
      ACBrNFSe1.NotasFiscais.GravarXML(ExtractFilePath(Application.ExeName) + 'Xml-Nfs\NfsOffline.xml');
    end;

    if (GetNotaEnviada) and (not OffLine) then
    begin
      if Application.MessageBox('Nota já foi enviada deseja imprimir? ', 'Atenção', 36) <> 6 then
        Abort;
    end;

    if ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero = '' then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero := IsqlDadosNota.fieldbyname('NNOT').AsString;

    ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := sqlNOTASERVICO_COMUNICACAOCODIGOVERIFICACAO.AsString;

    if OffLine then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.Producao := snNao;

    if ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero = '' then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero := '0';

    if ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao = '' then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := '0';

    if GetNotaCancelada then
    begin
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.Cancelada := snSim;
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.NfseCancelamento.DataHora := sqlNOTASERVICO_COMUNICACAODATA_HORA.AsDateTime;
    end;

    ImprimirNfse;
  end
  else begin
    TestarNotaPodeEnviar;
    try
      (ACBrNFSe1.Enviar(vNumLote, False));

      {ShowMessage(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero);
      ShowMessage(ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero);
      ShowMessage(ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao);}

      if not OffLine then
      begin
        Sleep(1000);
        ConsultaNfse;
      end;

    except
      on E: Exception do
        raise Exception.Create(e.message);
    end;
  end;

  ACBrNFSe1.NotasFiscais.Clear;
end;

procedure TdmNFSe.ConsultaNfse;
var
  vAux, vProtocolo, Caminho, vCodigoVerificacao: string;
begin
  ConfigurarComponente;
  Caminho := ExtractFilePath(Application.ExeName) + 'Xml-Nfs\Nfs.xml';
  vProtocolo := '';
  vCodigoVerificacao := '';

  NumNFSe := IntToStr(IsqlDadosNota.fieldbyname('NNOT').AsInteger);
  ACBrNFSe1.NotasFiscais.Clear;
  GerarNFSe;

  if ACBrNFSe1.ConsultarNFSeporRps(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero,
    ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Serie,
    TipoRPSToStr(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Tipo)) then
  begin
    vCodigoVerificacao :=
      ACBrNFSe1.WebServices.ConsNfseRps.RetornoNFSe.ListaNfse.CompNfse.Items[0].Nfse.CodigoVerificacao;

    if vCodigoVerificacao <> '' then
    begin
      ACBrNFSe1.NotasFiscais.Clear;
      GerarNFSe;
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := vCodigoVerificacao;
      ACBrNFSe1.NotasFiscais.Items[0].GravarXML(ExtractFileName(Caminho), ExtractFilePath(Caminho));
      GetNotaEnviada;

      sqlNOTASERVICO_COMUNICACAO.Edit;
      sqlNOTASERVICO_COMUNICACAOTIPO.AsString := '1';
      sqlNOTASERVICO_COMUNICACAOID_NOTASERVICO.AsInteger := fID_NOTA;
      sqlNOTASERVICO_COMUNICACAOPROTOCOLO.AsString := vProtocolo;
      sqlNOTASERVICO_COMUNICACAOCODIGOVERIFICACAO.AsString := vCodigoVerificacao;
      sqlNOTASERVICO_COMUNICACAONFSE_NUMERO.AsString := ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero;
      sqlNOTASERVICO_COMUNICACAOXML.LoadFromFile(Caminho);
      sqlNOTASERVICO_COMUNICACAO.Post;
    end;
    
    ImprimirNfse;
  end
  else
    ShowMessage('Nfse não encontrada!');
end;


class procedure TdmNFSe.Gerar(pID_NOTA: Integer);
begin
  if not Assigned(dmNFSe) then
    dmNFSe:= TdmNFSe.Create(nil);

  dmNFSe.SetID_NOTA(pID_NOTA);
  dmNFSe.AbrirDadosNota;

  dmNFSe.Enviar_Nfse;
end;

procedure TdmNFSe.SetID_NOTA(Value: Integer);
begin
  fID_NOTA := Value;

  sqlNOTASERVICO_COMUNICACAO.Close;
  sqlNOTASERVICO_COMUNICACAO.ParamByName('ID_NOTASERVICO').Value := Value;
  sqlNOTASERVICO_COMUNICACAO.Open;   
end;

class procedure TdmNFSe.Cancelar(pID_NOTA: Integer);
begin
  if not Assigned(dmNFSe) then
    dmNFSe:= TdmNFSe.Create(nil);

  dmNFSe.SetID_NOTA(pID_NOTA);
  dmNFSe.Cancelar_Nfse;
end;

procedure TdmNFSe.GravarCancelamento;
var
  COD_CADSERVICO: integer;
  NFSE_NUMERO, Caminho: string;
begin
  Caminho := ExtractFilePath(Application.ExeName) + 'Xml-Nfs\Nfs.xml';
  ACBrNFSe1.NotasFiscais.Items[0].GravarXML(ExtractFileName(Caminho), ExtractFilePath(Caminho)); 

  //COD_CADSERVICO := sqlNOTASERVICO_COMUNICACAOCOD_CADSERVICO.asinteger;
  NFSE_NUMERO := sqlNOTASERVICO_COMUNICACAONFSE_NUMERO.AsString;

  if sqlNOTASERVICO_COMUNICACAO.Locate('TIPO', '2', []) then
    sqlNOTASERVICO_COMUNICACAO.Edit
  else
    sqlNOTASERVICO_COMUNICACAO.Insert;

  //if COD_CADSERVICO > 0 then
  //  sqlNOTASERVICO_COMUNICACAOCOD_CADSERVICO.asinteger := COD_CADSERVICO;

  sqlNOTASERVICO_COMUNICACAONFSE_NUMERO.AsString := NFSE_NUMERO;
  sqlNOTASERVICO_COMUNICACAOID_NOTASERVICO.AsInteger := fID_NOTA;
  sqlNOTASERVICO_COMUNICACAOTIPO.AsString := '2';
  sqlNOTASERVICO_COMUNICACAOPROTOCOLO.AsString := ACBrNFSe1.WebServices.CancNfse.CodigoCancelamento;
  sqlNOTASERVICO_COMUNICACAOXML.LoadFromFile(Caminho);
  sqlNOTASERVICO_COMUNICACAO.Post;    
end;

procedure TdmNFSe.Cancelar_Nfse;
var
  Codigo, vAux: string;
begin
  if GetNotaCancelada then
  begin
    raise Exception.Create('Nota Fiscal ja foi cancelada!');
  end;

  if not GetNotaEnviada then
  begin
    raise Exception.Create('Nota Fiscal não foi enviada!');
  end;

  ACBrNFSe1.NotasFiscais.Clear;
  ConfigurarComponente;
  GerarNFSe;

  if not (InputQuery('Cancelar NFSe', 'Código de Cancelamento: '
    + #13 + '1 - Erro de Emissão'
    + #13 + '2 - Serviço não Concluido'
    + #13 + '3 - RPS Cancelado na Emissão', Codigo)) then exit;

  try

    if ACBrNFSe1.Configuracoes.Geral.Provedor in [proDBSeller, proBHISS] then
      ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero :=
        FormatDateTime('yyyy', ACBrNFSe1.NotasFiscais.Items[0].NFSe.DataEmissao) +
        FormatFloat('00000000000', StrToIntDef(ACBrNFSe1.NotasFiscais.Items[0].NFSe.Numero, 0));

    try
      if ACBrNFSe1.CancelarNFSe(Codigo) then
      begin
        GravarCancelamento;
        MessageDlg('Nfs-e Cancelada com sucesso!', mtInformation, [mbOK], 0);
      end
      else begin

        if ACBrNFSe1.WebServices.CancNfse <> nil then
          if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe <> nil then
          begin
            if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Count > 0 then
            begin
              if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Items[0].Codigo = 'E79' then
              begin
                GravarCancelamento;
                exit;
              end;
            end;
          end;

        try
          ACBrNFSe1.CancelarNFSe(Codigo);
        finally

          if ACBrNFSe1.WebServices.CancNfse <> nil then
            if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe <> nil then
            begin
              if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Count > 0 then
              begin
                if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Items[0].Codigo = 'E79' then
                begin
                  GravarCancelamento;
                end;
              end;
            end;
        end;
      end;
    except

      if ACBrNFSe1.WebServices.CancNfse <> nil then
        if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe <> nil then
        begin
          if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Count > 0 then
          begin
            if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Items[0].Codigo = 'E79' then
            begin
              GravarCancelamento;
              exit;
            end;
          end;
        end;

      try
        ACBrNFSe1.CancelarNFSe(Codigo);
      finally

        if ACBrNFSe1.WebServices.CancNfse <> nil then
          if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe <> nil then
          begin
            if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Count > 0 then
            begin
              if ACBrNFSe1.WebServices.CancNfse.RetCancNFSe.InfCanc.MsgRetorno.Items[0].Codigo = 'E79' then
              begin
                GravarCancelamento;
              end;
            end;
          end;
      end;
    end;
  except
    on E: Exception do
    begin
      raise Exception.Create(E.message);
    end;
  end;

end;

procedure TdmNFSe.sqlNOTASERVICO_COMUNICACAOBeforePost(DataSet: TDataSet);
begin
  if sqlNOTASERVICO_COMUNICACAOID.Value = 0 then
  begin
    sqlNOTASERVICO_COMUNICACAOID.Value := ExecSql(' SELECT MAX(ID) AS ID FROM NOTASERVICO_COMUNICACAO ').FieldByName('ID').AsInteger + 1;
  end;
end;

class procedure TdmNFSe.GerarOffLine(pID_NOTA: Integer);
begin
  if not Assigned(dmNFSe) then
    dmNFSe:= TdmNFSe.Create(nil);

  dmNFSe.OffLine := True;  
  dmNFSe.SetID_NOTA(pID_NOTA);
  dmNFSe.Enviar_Nfse;
end;

class procedure TdmNFSe.EnviarEmail(pID_NOTA: Integer);
begin
  if not Assigned(dmNFSe) then
    dmNFSe:= TdmNFSe.Create(nil);

  dmNFSe.SetID_NOTA(pID_NOTA);
  dmNFSe.EnviarEmailNfse;
end;

procedure TdmNFSe.EnviarEmailNfse;
begin
  
end;

end.
