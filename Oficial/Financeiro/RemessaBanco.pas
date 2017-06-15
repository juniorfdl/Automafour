unit RemessaBanco;

interface

uses
  SysUtils, Dialogs;

type
  TRemessa = record
    //************************************************************************//
    // REGISTROS UTILIZADOS NA GERAÇÃO DO HEADER DO ARQUIVO, PODENDO SER USADO//
    // POSTERIOMENTE POR OUTRAS ROTINAS                                       //
    //************************************************************************//
    CODIGOEMPRESA : string; {CÓDIGO DA EMPRESA - INFORMADO PELO BANCO NO CADASTRAMENTO DA CONTA}
    NOMEEMPRESA : string; {NOME DA EMPRESA}
    NUMEROBANCO : string; {NÚMERO DO BANCO NA CÂMARA DE COMPENSAÇÃO}
    NOMEBANCO : string; {NOME DO BANCO POR EXTENSO}
    NUMEROREMESSA : string; {NÚMERO DE REMESSA DO ARQUIVO !JAMAIS PODE SER ZERADO OU REPETIDO!}
    //************************************************************************//
    // REGISTROS UTILIZADOS NA GERAÇÃO DOS REGISTROS DE COBRANÇA DO ARQUIVO,  //
    // PODENDO SER USADO POSTERIOMENTE POR OUTRAS ROTINAS                     //
    //************************************************************************//
    CODIGOCARTEIRA : string; {CÓDIGO DA CARTEIRA DA EMPRESA CEDENTE NO BANCO}
    CODIGOAGENCIA : string; {CÓDIGO DA AGÊNCIA CEDENTE, SEM O DÍGITO, DA EMPRESA CEDENTE NO BANCO}
    CONTACORRENTE : string; {NÚMERO DA CONTA CORRENTE, COM O DÍGITO, DA EMPRESA CEDENTE NO BANCO}
    CONTARECEBER : string; {NÚMERO DE CONTROLE DO PARTICIPANTE}
    DESCONTOBONIFICACAO : string; {VALOR DO DESCONTO DE BONIFICAÇÃO POR DIA}
    RATEIOCREDITO : string; {INDICADOR DE RATEIO DE CRÉDITO}
    IDENTIFICACAOOCORRENCIA : string; {IDENTIFICAÇÃO DE OCORRÊNCIA}
    DATAVENCIMENTOTITULO : string; {DATA DE VENCIMENTO DO TÍTULO}
    VALORTITULO : string; {VALOR DO TÍTULO}
    PRIMEIRAINSTRUCAO : string; {PRIMEIRA INSTRUÇÃO}
    SEGUNDAINSTRUCAO : string; {SEGUNDA INSTRUÇÃO}
    VALORDIAATRASO : string; {VALOR A SER COBRADO POR DIA DE ATRASO}
    DATALIMITEDESCONTO : string; {DATA LIMITE PARA CONCESSÃO DO DESCONTO}
    VALORDESCONTO : string; {VALOR DO DESCONTO}
    IDENTIFICACAOSACADO : string; {IDENTIFICAÇÃO DO TIPO DE INSCRIÇÃO DO SACADO}
    NUMEROINSCRICAOSACADO : string; {NÚMERO DE INSCRICAO DO SACADO}
    NOMESACADO : string; {NOME DO SACADO}
    ENDERECOSACADO : string; {ENDERECO COMPLETO DO SACADO}
    CEPSACADO : string; {CEP COMPLETO NÃO CONTENDO TRACO ENTRE CEP E O SUFIXO}
    PRIMEIRAMENSAGEM : string; {PRIMEIRA MENSAGEM}
    SEGUNDAMENSAGEM : string; {SEGUNDA MENSAGEM}
    SEQUENCIALREGISTRO : integer; {NÚMERO SEQUENCIAL DO ARQUIVO INCREMENTANDO DE UM}
  end;

var
  Texto : TextFile;

  function NoPointComma(Value : double) : string;
  function CorrectDate(Data : TDateTime) : string;
  function DocumentNumber(Doc : string) : string;

  procedure GeraHeader(Registro : TRemessa;Caminho : string);
  procedure GeraRegistroCobranca(Registro : TRemessa);
  procedure GeraTrailler(Sequencial : integer);

implementation

//****************************************************************************//
// MÉTODO QUE ''LIMPA'' A STRING PASSADA DOS CARACTERES ''SUJOS'' CONTIDOS NELA   //
//****************************************************************************//
function CleanString(Clean : string; Dirty : array of string) : string;
var
  I : integer;
begin
  Result := Clean;
  for I := 0  to length(Dirty) -1 do
    while Pos(Dirty[I],Result) > 0 do
      Delete(Result,Pos(Dirty[I],Result),1);
end;

//****************************************************************************//
// MÉTODO QUE PREENCHE A STRING ENVIADA COM OS CARACTERES DESEJADOS           //
//****************************************************************************//
function CompleteString(Text : string; WithText : string; Size : integer) : string;
begin
  Result := Text;
  while length(Result) < Size do
    Result := Result + WithText;
end;

//****************************************************************************//
// MÉTODO QUE DEVOLVE O DIGITO DE AUTO CONFERÊNCIA PARA COBRANÇA              //
//****************************************************************************//
function DigitoVerificador(NroCarteira,Nro : string) : string;
const
  FM : array [0..12] of integer = (2,7,6,5,4,3,2,7,6,5,4,3,2);
var
  Sum,I : integer;
begin
  Sum := 0;
  Result := '0';
  for I := 1 to 11 do
    begin
      if I < 3 then
        Sum := Sum + (StrToInt(NroCarteira[I]) * FM[I - 1]);
      Sum := Sum + (StrToInt(Nro[I]) * FM[I + 1]);
    end;
  Sum := (Sum mod 11);
  if Sum > 0 then
    Result := IntToStr(11 - Sum);
  if Result = '10' then
    Result := 'P';
end;

//****************************************************************************//
// MÉTODO QUE DEVOLVE O VALOR PASSADO SEM PONTOS E SEM VÍRGULAS               //
//****************************************************************************//
function NoPointComma(Value : double) : string;
begin
  try
    Result := FloatToStr(Value);
  except
    Result := '0';
  end;
  Result := CleanString(Result,[',','.']);
end;

//****************************************************************************//
// MÉTODO QUE DEVOLVE A DATA PASSADA NO FORMATO DDMMAA CONFORME SOLICITADO    //
//****************************************************************************//
function CorrectDate(Data : TDateTime) : string;
begin
  try
    Result := DateToStr(Data);
    Result := FormatDateTime('ddmmyy',Data);
  except
    Result := '000000';
  end;
end;

//****************************************************************************//
// MÉTODO QUE DEVOLVE O NUMERO DA INSCRIÇÃO DO SACADO NO FORMATO SOLICITADO   //
//****************************************************************************//
function DocumentNumber(Doc : string) : string;
begin
  Doc := CleanString(Doc,['-','/','.']);
  if length(Trim(Doc)) = 11 then
    Result := '000';
  Result := Result + Doc;
end;

//****************************************************************************//
// MÉTODO QUE CONTROLA TODO O PROCESSO DE ESCRITA NO ARQUIVO JÁ CRIADO        //
//****************************************************************************//
procedure WriteText(var FileText : TextFile; Text : string);
begin
  Append(FileText);
  Writeln(FileText,Text);
  CloseFile(FileText);
end;

//****************************************************************************//
// MÉTODO QUE GERA O HEADER DO ARQUIVO DE REMESSA PARA COBRANÇA BANCÁRIA      //
//****************************************************************************//
procedure GeraHeader(Registro : TRemessa;Caminho : string);
var
  Info : string;
begin
  AssignFile(Texto,Caminho);
  ReWrite(Texto);
  Reset(Texto);
  Info := '0'; {IDENTIFICAÇÃO DO REGISTRO}
  Info := Info + '1'; {IDENTIFICAÇÃO DO ARQUIVO}
  Info := Info + 'REMESSA'; {LITERAL DA REMESSA}
  Info := Info + '01'; {CÓDIGO DO SERVIÇO}
  Info := CompleteString(Info + 'COBRANCA',' ',26); {LITERAL DO SERVIÇO}
  Info := CompleteString(Info,'0',46 - length(Trim(Copy(Registro.CODIGOEMPRESA,1,20)))) + Trim(Copy(Registro.CODIGOEMPRESA,1,20)); {CÓDIGO DA EMPRESA}
  Info := CompleteString(Info + Copy(Registro.NOMEEMPRESA,1,30),' ',76); {NOME DA EMPRESA}
  Info := CompleteString(Info,'0',79 - length(Registro.NUMEROBANCO)) + Registro.NUMEROBANCO; {NÚMERO DO BANCO}
  Info := CompleteString(Info + Copy(Registro.NOMEBANCO,1,15),' ',94); {NOME DO BANCO}
  Info := Info + CorrectDate(Date); {DATA DO ARQUIVO}
  Info := CompleteString(Info,' ',108); {BRANCO}
  Info := Info + 'MX'; {IDENTIFICAÇÃO DO SISTEMA}
  Info := CompleteString(Info,'0',117 - length(Registro.NUMEROREMESSA)) + Registro.NUMEROREMESSA; {NÚMERO SEQUENCIAL DO ARQUIVO}
  Info := CompleteString(Info,' ',394); {BRANCO}
  Info := Info + '000001'; {SEQUENCIAL DO REGISTRO}
  WriteText(Texto,Info);
end;

//****************************************************************************//
// MÉTODO QUE GERA OS REGISTROS PARA COBRANÇA BANCÁRIA                        //
//****************************************************************************//
procedure GeraRegistroCobranca(Registro : TRemessa);
var
  Info : string;
begin
  Info := '1'; {IDENTIFICAÇÃO DO REGISTRO}
  Info := CompleteString(Info,'0',6); {AGÊNCIA DE DÉBITO}
  Info := CompleteString(Info,' ',7); {DV DA AGÊNCIA DE DÉBITO}
  Info := CompleteString(Info,'0',12); {RAZÃO DA CONTA CORRENTE DE DÉBITO}
  Info := CompleteString(Info,'0',19); {NÚMERO DA CONTA CORRENTE DE DÉBITO}
  Info := CompleteString(Info,' ',20); {DV DA CONTA CORRENTE DE DÉBITO}
  Info := CompleteString(Info + '0' + Registro.CODIGOCARTEIRA + Registro.CODIGOAGENCIA + Registro.CONTACORRENTE,' ',37); {IDENTIFICAÇÃO DA EMPRESA CEDENTE NO BANCO}
  Info := CompleteString(Info + Copy(Registro.CONTARECEBER,1,25),' ',62); {NÚMERO DE CONTROLE DO PARTICIPANTE}
  Info := CompleteString(Info + Registro.NUMEROBANCO,' ',65); {CÓDIGO DO BANCO A SER DEBITADO NA CÂMARA DE COMPENSAÇÃO}
  Info := CompleteString(Info,'0',70); {ZERO}
  Info := CompleteString(Info,'0',81); {IDENTIFICAÇÃO DO TÍTULO NO BANCO}
  Info := CompleteString(Info,'0',82); {DÍGITO DE AUTO CONFERÊNCIA}
  Info := CompleteString(Info,'0',92 - length(Registro.DESCONTOBONIFICACAO)) + Registro.DESCONTOBONIFICACAO; {DESCONTO BONIFICAÇÃO POR DIA}
  Info := CompleteString(Info + '1',' ',93); {CONDIÇÃO PARA EMISSÃO DA PAPELETA DE COBRANÇA}
  Info := CompleteString(Info + 'N',' ',94); {IDENTIFICAÇÃO SE EMITE PAPELETA PARA DEBITO AUTOMATICO}
  Info := CompleteString(Info,' ',104); {IDENTIFICAÇÃO DA OPERAÇÃO DO BANCO}
  Info := CompleteString(Info + Registro.RATEIOCREDITO,' ',105); {INDICADOR DE RATEIO DE CRÉDITO}
  Info := CompleteString(Info + '2',' ',106); {ENDEREÇAMENTO PARA AVISO DE DÉBITO AUTOMÁTICO EM CONTA CORRENTE}
  Info := CompleteString(Info,' ',108); {BRANCO}
  Info := CompleteString(Info,'0',110 - length(Registro.IDENTIFICACAOOCORRENCIA)) + Registro.IDENTIFICACAOOCORRENCIA; {IDENTIFICAÇÃO DA OCORRÊNCIA}
  Info := CompleteString(Info,' ',120); {NÚMERO DO DOCUMENTO}
  Info := Info + Registro.DATAVENCIMENTOTITULO; {DATA DE VENCIMENTO DO TÍTULO}
  Info := CompleteString(Info,' ',139 - length(Registro.VALORTITULO)) + Registro.VALORTITULO; {VALOR DO TÍTULO}
  Info := CompleteString(Info,'0',142); {BANCO ENCARREGADO DA COBRANÇA}
  Info := CompleteString(Info,'0',147); {AGÊNCIA DEPOSITÁRIA}
  Info := Info + '99'; {ESPÉCIE DE TÍTULO}
  Info := Info + 'A'; {IDENTIFICAÇÃO}
  Info := Info + CorrectDate(Date); {DATA DE EMISSÃO DO TÍTULO}
  Info := Info + Registro.PRIMEIRAINSTRUCAO; {PRIMEIRA INSTRUÇÃO}
  Info := Info + Registro.SEGUNDAINSTRUCAO; {SEGUNDA INSTRUÇÃO}
  Info := CompleteString(Info,'0',173 - length(Registro.VALORDIAATRASO)) + Registro.VALORDIAATRASO; {VALOR A SER COBRADO POR DIA DE ATRASO}
  Info := Info + Registro.DATALIMITEDESCONTO; {DATA LIMITE PARA CONCESSÃO DE DESCONTO}
  Info := CompleteString(Info,'0',192 - length(Registro.VALORDESCONTO)) + Registro.VALORDESCONTO; {VALOR DO DESCONTO}
  Info := CompleteString(Info,'0',205); {VALOR DO IOF}
  Info := CompleteString(Info,'0',218); {VALOR DO ABATIMENTO A SER CONCEDIDO OU CANCELADO}
  Info := Info + Registro.IDENTIFICACAOSACADO; {IDENTIFICAÇÃO DO TIPO DE INSCRIÇÃO DO SACADO}
  Info := CompleteString(Info,'0',234 - length(Registro.NUMEROINSCRICAOSACADO)) + Registro.NUMEROINSCRICAOSACADO; {NÚMERO DE INSCRIÇÃO DO SACADO}
  Info := CompleteString(Info + Copy(Registro.NOMESACADO,1,40),' ',274); {NOME DO SACADO}
  Info := CompleteString(Info + Copy(Registro.ENDERECOSACADO,1,40),' ',314); {ENDEREÇO COMPLETO}
  Info := CompleteString(Info + Copy(Registro.PRIMEIRAMENSAGEM,1,12),' ',326); {PRIMEIRA MENSAGEM}
  Info := CompleteString(Info,'0',334 - length(Registro.CEPSACADO)) + Registro.CEPSACADO; {CEP DO SACADO E SUFIXO DO CEP}
  Info := CompleteString(Info + Copy(Registro.SEGUNDAMENSAGEM,1,60),' ',394); {SACADOR AVALISTA OU SEGUNDA MENSAGEM}
  Info := CompleteString(Info,'0',400 - length(IntToStr(Registro.SEQUENCIALREGISTRO))) + IntToStr(Registro.SEQUENCIALREGISTRO); {SEQUENCIAL DO REGISTRO}
  WriteText(Texto,Info);
end;

//****************************************************************************//
// MÉTODO QUE GERA O TRAILLER DO ARQUIVO DE REMESSA PARA COBRANÇA BANCÁRIA    //
//****************************************************************************//
procedure GeraTrailler(Sequencial : integer);
var
  Info : string;
begin
  Info := '9'; {IDENTIFICAÇÃO DO REGISTRO}
  Info := CompleteString(Info,' ',394); {BRANCO}
  Info := CompleteString(Info,'0',400 - length(IntToStr(Sequencial))) + IntToStr(Sequencial); {SEQUENCIAL DO REGISTRO}
  WriteText(Texto,Info);
end;

end.
