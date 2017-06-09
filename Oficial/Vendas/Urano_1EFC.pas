unit Urano_1EFC;

interface

  uses RXCtrls, RxQuery, Forms, DBTables, SysUtils, Dialogs, Windows, Variants ;

  function  AbrirPortaECF_Urano_1ECF(Porta:String) : Boolean;
  function  FecharPortaECF_Urano_1EFC() : boolean ;
  function  LeituraX_Urano_1EFC : boolean;
  function  Reducao_Z_Urano_1EFC : Boolean ;
  function  AbrirGaveta_Urano_1EFC : Boolean ;
  function  AbrirCupomFiscal_Urano_1EFC(Var NroCupom : String) : boolean ;
  function  ImprimeItem_Urano_1EFC(Codigo, Descricao, Tributo, Unidade : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
  function  CancelaItem_Urano_1EFC(Posicao: String) : boolean ;
//  function  Envia_FP_Urano_1EFC(FP:string) : boolean ;
  function  EfetuaFPCupom_Urano_1EFC(FPNum:String;Valor : Double; Acumula : Boolean) : boolean ;
  function  FecharCupomFiscal_Urano_1EFC(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : boolean ;
  function  CancelarCupomFiscal_Urano_1EFC : boolean ;
  function  CancelarCupomFiscalAberto_Urano_1EFC : boolean ;
  function  AberturaCNFV_Urano_1EFC(FP, NroCupom :string) : boolean ;
  function  LinhaTextoLivre_Urano_1EFC(Texto:String) : boolean ;
  function  FechamentoCNFV_Urano_1EFC(Operador:String): boolean ;
  function  EmiteCNFNV_Urano_1EFC(Identificador, Texto:string; Valor:Double) : boolean ;
  function  FecharCNFNV_Urano_1EFC(Operador : String) : boolean ;
  function  RelatorioGerencial_Urano_1EFC(Texto : String) : boolean ;
  function  FechamentoRelatorioGerencial_Urano_1EFC(Impressora, Porta : String) : boolean ;
  function  Autenticacao_Urano_1EFC : boolean ;
//  function  StatusImpressora_Urano_1EFC() : boolean;
  // funções da DLL
  function  InicializaDLL(Porta : String): Integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  FinalizaDLL(): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  ImprimeCabecalho(): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  VendaItem(Codigo, Descricao, Quantidade, ValorUnitario, Taxa, Unidade, Tipo:String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  CancelaItem(Descricao, Transacao : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  DescontoItem(Cancela, Descricao, Valor : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  Pagamento(Forma, Descricao, Valor, Acumular : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  FechaCupom(Operador : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  LinhasLivres(Texto : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  CancelaVenda(Operador : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  CancelaCupom(Autorizacao, Operador : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  AcrescimoSubtotal(Operacao, Descricao, Valor : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  DescontoSubtotal(Operacao, Descricao, Valor : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  Relatorio_XZ(TipoRel : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  FinalizaRelatorio(Operador : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  CargaAliquota(Aliquota, Valor : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  CargaAliquotaTipo(Aliquota, Valor, Tipo : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  AbreGaveta(): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  AvancaLinhas(nLinhas : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  Autentica(): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  IdComprador(RazaoSocial, Tipo, Documento, Linha1, Linha2 : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  FormaPagamento(Forma, Descricao : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  CargaNaoVinculado(Codigo, Descricao : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  EmiteNaoVinculado(Codigo, Descricao, Valor : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  EmiteVinculado(COO, Sequencia : String): integer; stdcall; external 'DLL1EFC3.DLL' ;
  function  LeRegistrador(posicao, NroCupom : String): integer; stdcall; external 'DLL1EFC3.DLL' ;

  // Outras Funcoes
  procedure MostraErro(Erro:Integer);
  function  ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
  function  RetornaNumeroCupom(Var NroCupomTemp : String) : String ;
  function  TiraPontoVirgula(Numero : String) : string ;
implementation

uses UnitLibrary, DataModulo, DB;
var
  Retorno : Integer;

function ConvFloatToStrECF(Numero : Double; Tam : integer) : string ;
var Valor : string ;
begin
  Valor := FormatFloat('#,##0.00', Numero);
  if Pos(',', Valor) > 0 then
    Delete(Valor, Pos(',', Valor), 1);
  if Pos('.',Valor) > 0 then
    Delete(Valor, Pos('.', Valor), 1);
  if tam > 0 then
    ConvFloatToStrECF := Zeros(Valor, Tam, 'Dir')
  else
    ConvFloatToStrECF := Valor;
end ;

function TiraPontoVirgula(Numero : String) : string ;
var Valor : string ;
begin
  Valor := Numero;
  if Pos(',', Valor) > 0 then
    Delete(Valor, Pos(',', Valor), 1);
  if Pos('.',Valor) > 0 then
    Delete(Valor, Pos('.', Valor), 1);

  TiraPontoVirgula := Valor;
end ;

procedure MostraErro(Erro:Integer);
var
  Msg : String;
begin
  Msg := '';
  case erro of
    1  : Msg := 'DLL já inicializada';
    2  : Msg := 'DLL não inicializada';
    3  : Msg := 'Falha no acesso a porta serial';
    4  : Msg := 'Falha na configuração da porta serial';
    5  : Msg := 'Porta serial não inicializada';
    6  : Msg := 'Falha na transmissão: outra transmissão em andamento.';
    7  : Msg := 'Tamanho do comando muito grande para a DLL';
    8  : Msg := 'Impressora fora de linha, desligada ou desconectada.';
    9  : Msg := 'Falha geral na transmissão do comando.';
    10 : Msg := 'Timeout na recepção da resposta da impressora.';
    11 : Msg := 'Falha geral na recepção da resposta.';
    12 : Msg := 'Falha no acesso aos buffers internos da porta serial';
    13 : Msg := 'Erro de Frame na comunicação';
    14 : Msg := 'Erro de OverRun na comunicação';
    15 : Msg := 'Break Detectado na comunicação';
    16 : Msg := 'Erro de acesso a porta serial durante a recepção';
    17 : Msg := 'Tamanho do buffer de recepção da porta serial insuficiente para recepção dos dados.';
    18 : Msg := 'Erro de paridade na comunicação';
    19 : Msg := 'Tamanho do buffer de transmissão da porta serial insuficiente para comunicação.';
    20 : Msg := 'Falha no acesso ao arquivo de leitura da memória fiscal';
    33 : Msg := 'Comando executado com sucesso.';
 else
   if Erro <> 0 then
     Msg := 'Erro Desconhecido: ' + IntToStr(Erro);
 end;
  if Msg <> '' then
    Application.MessageBox(Pchar(MSG),'Retorno da Impressora Fiscal URANO 1EFC',MB_OK + MB_ICONERROR + MB_SYSTEMMODAL + MB_SETFOREGROUND);

end;
function  RetornaNumeroCupom(Var NroCupomTemp : String) : String;
var
  Cupom : String;
begin
  SetLength(Cupom,22);
  Retorno := LeRegistrador('18', Cupom);

  Cupom := Trim(Copy(Cupom,1,21));
//  IntToStr(StrToInt(Cupom) + 1)
  if Retorno in [1,33] then
    RetornaNumeroCupom := Cupom
  else
    MostraErro(Retorno);
end;
function  AbrirPortaECF_Urano_1ECF(Porta:String) : Boolean;
begin
  AbrirPortaECF_Urano_1ECF := False;

  Retorno :=  InicializaDLL(Porta);

  if Retorno in [1,33] then
    AbrirPortaECF_Urano_1ECF := True;
end;
function  FecharPortaECF_Urano_1EFC() : boolean ;
begin
  FecharPortaECF_Urano_1EFC := False;
  Retorno := FinalizaDLL;
  if Retorno in [1,33] then
    FecharPortaECF_Urano_1EFC := True;
end;
function  LeituraX_Urano_1EFC : boolean;
begin
  LeituraX_Urano_1EFC := False;
  // 0 Leitura X
  // 1 Redução Z
  Retorno := Relatorio_XZ('0');
  if Retorno in [1,33] then
    LeituraX_Urano_1EFC := True
  else
    MostraErro(Retorno);
end;
function  Reducao_Z_Urano_1EFC : Boolean ;
begin
  Reducao_Z_Urano_1EFC := False;
  // 0 Leitura X
  // 1 Redução Z
  Retorno := Relatorio_XZ('1');
  if Retorno in [1,33] then
    Reducao_Z_Urano_1EFC := True
  else
    MostraErro(Retorno);
end;
function  AbrirGaveta_Urano_1EFC : Boolean ;
begin
  AbrirGaveta_Urano_1EFC := False;
  Retorno := AbreGaveta;
  if Retorno in [1,33] then
    AbrirGaveta_Urano_1EFC := True
  else
    MostraErro(Retorno);
end;
function  AbrirCupomFiscal_Urano_1EFC(Var NroCupom : String) : boolean ;
begin
  AbrirCupomFiscal_Urano_1EFC := False;
  Retorno := ImprimeCabecalho;
  if Retorno in [1,33] then
    begin
      AbrirCupomFiscal_Urano_1EFC := True;
      NroCupom := RetornaNumeroCupom(NroCupom);
    end
  else
    MostraErro(Retorno);
end;

function  ImprimeItem_Urano_1EFC(Codigo, Descricao, Tributo, Unidade : String ; Qtde, Valor, Vlrdesco : Double) : boolean ;
begin
  ImprimeItem_Urano_1EFC := False;
  // Codigo 13 chr

  Retorno := VendaItem(Copy(Codigo, 1, 13),
                       Format('%-66s',[Copy(Descricao, 1, 66)]),
                       FormatFloat('#,###0.000', Qtde),
                       TiraPontoVirgula(FormatFloat('#,##0.00',Valor)),
                       Tributo,
                       Unidade,
                       '0');

  if Retorno in [1,33] then
    begin
      if Vlrdesco > 0 then
        begin
          Retorno := DescontoItem('0','Desconto Por Item',ConvFloatToStrECF(Vlrdesco,0));
          if not Retorno in [1,33] then
            MostraErro(Retorno);
        end;
      ImprimeItem_Urano_1EFC := True
    end
  else
    MostraErro(Retorno);

end;

function  CancelaItem_Urano_1EFC(Posicao: String) : boolean ;
begin
  CancelaItem_Urano_1EFC := False;

  Retorno := CancelaItem('Cancelamento de Item',Posicao);

  if Retorno in [1,33] then
    CancelaItem_Urano_1EFC := True
  else
    MostraErro(Retorno);
end;

function  EfetuaFPCupom_Urano_1EFC(FPNum:String;Valor : Double; Acumula : Boolean) : boolean ;
begin
  EfetuaFPCupom_Urano_1EFC := False;

  if Acumula then
    Retorno := Pagamento(FPNum,'...',ConvFloatToStrECF(Valor,0),'1')
  else
    Retorno := Pagamento(FPNum,'...',ConvFloatToStrECF(Valor,0),'0');

  if Retorno in [1,33] then
    EfetuaFPCupom_Urano_1EFC := True
  else
    MostraErro(Retorno);
end;

function  FecharCupomFiscal_Urano_1EFC(TipoAcrescDesc : String; Valor, VlrAcrescDesc, VlrTroco : Double ; Ecf_CNFV, Msg : String; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano:string) : boolean ;
var
  MsgFimCupom,
  AcrescDesc : string ;
  TotalVista,
  TotalPrazo : double ;
  I : Integer;
begin
  //TOTALIZAR CUPOM
  AcrescDesc := ConvFloatToStrECF(VlrAcrescDesc, 0);
  if VlrAcrescDesc > 0 then
    begin
      if TipoAcrescDesc = 'A' then
        AcrescimoSubtotal('0', 'Valor', AcrescDesc);
      if TipoAcrescDesc = 'D' then
        DescontoSubtotal('0', 'Valor', AcrescDesc);
    end;    
  //CALCULAR TOTAL VENDA PRAZO
  SQLFPPrazo.First ;
  TotalPrazo := 0 ;
  while not SQLFPPrazo.EOF do
  begin
    TotalPrazo :=  TotalPrazo + SQLFPPrazo.Fieldbyname('VALORVENCTO').AsFloat ;
    SQLFPPrazo.Next
  end ;
  //ENVIAR VALORES POR NUMERARIO AVISTA
  SQLFPVista.First ;
  while not SQLFPVista.EOF do
  begin
    EfetuaFPCupom_Urano_1EFC(RetornaTotalizadorNumerarioECF(Ecf_ID, SQLFPVista.Fieldbyname('NUMEICOD').AsString),
                             SQLFPVista.Fieldbyname('VALORPARC').AsFloat, True);
    TotalVista := TotalVista + SQLFPVista.Fieldbyname('VALORPARC').AsFloat ;
    SQLFPVista.Next ;
  end ;

  if (TotalVista + TotalPrazo) < Valor then
    TotalPrazo := TotalPrazo + (Valor-(TotalVista + TotalPrazo)) ;

  if (TotalVista + TotalPrazo) > Valor then
    TotalPrazo := TotalPrazo - ((TotalVista + TotalPrazo)-Valor) ;

  if TotalPrazo > 0 then
  begin
    if (SQLFPPrazo.Fieldbyname('TIPOPADR').AsString = 'CRD') or (SQLFPPrazo.Fieldbyname('TIPOPADR').AsString = 'CRTF') or
    (SQLFPPrazo.Fieldbyname('TIPOPADR').AsString = 'CRT') then
      EfetuaFPCupom_Urano_1EFC(RetornaTotalizadorNumerarioECF(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString),
                               TotalPrazo, True)
    else
      EfetuaFPCupom_Urano_1EFC(RetornaTotalizadorNumerarioECF(Ecf_ID,SQLFPPrazo.Fieldbyname('NUMEICOD').AsString),
                               TotalPrazo, False);
  end ;
  //IMPRIMIR DADOS DO CLIENTE

  if (Application.FindComponent('FormTelaFechamentoVenda') <> nil) and
     (ImprimeDadosClienteCupom = 'S') and (NomeCli <> SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').AsString+'"')) then
       IdComprador(ConverteAcentos(NomeCli),
                   '0',
                   ConverteAcentos(DocumentoCli) + ' VD: ' + Vendedor +
                   ' PV: ' + Plano,
                   'END: ' + ConverteAcentos(Copy(EnderecoClienteVenda, 1, 42)),
                   'OBS: ' + ConverteAcentos(Copy(OBSImpressaoCupom, 1, 42)));

  Retorno := FechaCupom(UsuarioAtualNome);

  if Retorno in [1,33] then
    begin
      AvancaLinhas('6');
      if FileExists(DM.PathAplicacao + 'Urano.ecf') then
        AvancaLinhas('10');
      FecharCupomFiscal_Urano_1EFC := True;
    end
  else
    MostraErro(Retorno);
end;

function  CancelarCupomFiscal_Urano_1EFC : boolean ;
begin
  CancelarCupomFiscal_Urano_1EFC := False;

  Retorno := CancelaCupom('1',UsuarioAtualNome);

  if Retorno in [1,33] then
    CancelarCupomFiscal_Urano_1EFC := True
  else
    begin
      Retorno := CancelaVenda(UsuarioAtualNome);
      if Retorno in [1,33] then
        CancelarCupomFiscal_Urano_1EFC := True
      else
        MostraErro(Retorno);
    end;

end;

function  CancelarCupomFiscalAberto_Urano_1EFC : boolean ;
begin
  CancelarCupomFiscalAberto_Urano_1EFC := False;

  Retorno := CancelaVenda(UsuarioAtualNome);

  if Retorno in [1,33] then
    CancelarCupomFiscalAberto_Urano_1EFC := True
  else
    MostraErro(Retorno);
end;

function  AberturaCNFV_Urano_1EFC(FP, NroCupom :string) : boolean ;
begin
  AberturaCNFV_Urano_1EFC := False;

  Retorno := EmiteVinculado(NroCupom,FP);

  if Retorno in [1,33] then
    begin
      AberturaCNFV_Urano_1EFC := True;
      AvancaLinhas('2');
    end
  else
    MostraErro(Retorno);

end;
function  LinhaTextoLivre_Urano_1EFC(Texto:String) : boolean ;
begin
  LinhaTextoLivre_Urano_1EFC := False;

  Retorno := LinhasLivres(Texto);

  if Retorno in [1,33] then
    LinhaTextoLivre_Urano_1EFC := True
  else
    MostraErro(Retorno);
end;
function  FechamentoCNFV_Urano_1EFC(Operador:String): boolean;
begin
  FechamentoCNFV_Urano_1EFC := False;

  Retorno := FechaCupom(UsuarioAtualNome);

  if Retorno in [1,33] then
    begin
      FechamentoCNFV_Urano_1EFC := True;
      AvancaLinhas('6');
    end;

end;
function  EmiteCNFNV_Urano_1EFC(Identificador, Texto :string; Valor:Double) : boolean;
begin
  EmiteCNFNV_Urano_1EFC := False;

  Retorno := EmiteNaoVinculado(Identificador,Texto,ConvFloatToStrECF(Valor,0));

  if Retorno in [1,33] then
    EmiteCNFNV_Urano_1EFC := True
  else
    MostraErro(Retorno);
end;
function  FecharCNFNV_Urano_1EFC(Operador : String) : boolean;
begin
  FecharCNFNV_Urano_1EFC := False;

  Retorno := FechaCupom(UsuarioAtualNome);

  if Retorno in [1,33] then
    begin
      FecharCNFNV_Urano_1EFC := True;
      AvancaLinhas('6');
    end;
end;
function  RelatorioGerencial_Urano_1EFC(Texto : String) : boolean ;
begin
  RelatorioGerencial_Urano_1EFC := False;

  Retorno := Relatorio_XZ('2');

  if Retorno in [1,33] then
    begin
      RelatorioGerencial_Urano_1EFC := True;
    end
  else
    MostraErro(Retorno);
end;
function  FechamentoRelatorioGerencial_Urano_1EFC(Impressora, Porta : String) : boolean;
begin
  FechamentoRelatorioGerencial_Urano_1EFC := False;

  Retorno := FinalizaRelatorio(UsuarioAtualNome);

  if Retorno in [1,33] then
    FechamentoRelatorioGerencial_Urano_1EFC := True;
end;
function  Autenticacao_Urano_1EFC : boolean ;
begin
  Autenticacao_Urano_1EFC := False;

  Retorno := Autentica;

  if Retorno in [1,33] then
    Autenticacao_Urano_1EFC := True
  else
    MostraErro(Retorno);
end;

end.
