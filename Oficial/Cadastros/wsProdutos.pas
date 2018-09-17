// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://www.brasiltributario.com.br/webservices/wsProdutos.asmx?wsdl
// Encoding : utf-8
// Version  : 1.0
// (15/09/2018 14:45:24 - 1.33.2.5)
// ************************************************************************ //

unit wsProdutos;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"

  Produto              = class;                 { "http://tempuri.org/" }



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Produto = class(TRemotable)
  private
    FidSegmento: Integer;
    Fuf: WideString;
    Fnome: WideString;
    Fnome_tipi: WideString;
    Fean: WideString;
    Funidade: WideString;
    Fncm: WideString;
    Fex: WideString;
    Fcest: WideString;
    Fcst_icms: WideString;
    Fcst_icms_descr: WideString;
    Fcsosn_icms: WideString;
    Fcsosn_icms_descr: WideString;
    Fbase_icms_varejo: TXSDecimal;
    Faliquota_icms_varejo: TXSDecimal;
    Fperc_mva_rs: TXSDecimal;
    Fperc_mva_4: TXSDecimal;
    Fperc_mva_7: TXSDecimal;
    Fperc_mva_outros: TXSDecimal;
    Fbase_icms: TXSDecimal;
    Faliquota_icms: TXSDecimal;
    Fbase_legal_icms: WideString;
    Fcst_pis: WideString;
    Fcst_pis_descr: WideString;
    Ftipo_credito: WideString;
    Fcst_cofins: WideString;
    Fcst_cofins_descr: WideString;
    Fbase_pis_cofins: TXSDecimal;
    Faliquota_pis_real: TXSDecimal;
    Faliquota_pis_presumido: TXSDecimal;
    Faliquota_cofins_real: TXSDecimal;
    Faliquota_cofins_presumido: TXSDecimal;
    Faliquota_icms_ecf: TXSDecimal;
    Fbase_legal_pis_cofins: WideString;
    Fnatureza_operacao: WideString;
    Ffar_registro: WideString;
    Ffar_ggrem: WideString;
    Ffar_fabricante: WideString;
    Ffar_composicao: WideString;
    Ffar_substancia: WideString;
    Ffar_pmf: WideString;
    Ffar_pmf_icms0: WideString;
    Ffar_pmc: TXSDecimal;
    Ffar_pmc_icms0: WideString;
    Ffar_tipo: WideString;
    Ffar_lista: WideString;
  public
    destructor Destroy; override;
  published
    property idSegmento: Integer read FidSegmento write FidSegmento;
    property uf: WideString read Fuf write Fuf;
    property nome: WideString read Fnome write Fnome;
    property nome_tipi: WideString read Fnome_tipi write Fnome_tipi;
    property ean: WideString read Fean write Fean;
    property unidade: WideString read Funidade write Funidade;
    property ncm: WideString read Fncm write Fncm;
    property ex: WideString read Fex write Fex;
    property cest: WideString read Fcest write Fcest;
    property cst_icms: WideString read Fcst_icms write Fcst_icms;
    property cst_icms_descr: WideString read Fcst_icms_descr write Fcst_icms_descr;
    property csosn_icms: WideString read Fcsosn_icms write Fcsosn_icms;
    property csosn_icms_descr: WideString read Fcsosn_icms_descr write Fcsosn_icms_descr;
    property base_icms_varejo: TXSDecimal read Fbase_icms_varejo write Fbase_icms_varejo;
    property aliquota_icms_varejo: TXSDecimal read Faliquota_icms_varejo write Faliquota_icms_varejo;
    property perc_mva_rs: TXSDecimal read Fperc_mva_rs write Fperc_mva_rs;
    property perc_mva_4: TXSDecimal read Fperc_mva_4 write Fperc_mva_4;
    property perc_mva_7: TXSDecimal read Fperc_mva_7 write Fperc_mva_7;
    property perc_mva_outros: TXSDecimal read Fperc_mva_outros write Fperc_mva_outros;
    property base_icms: TXSDecimal read Fbase_icms write Fbase_icms;
    property aliquota_icms: TXSDecimal read Faliquota_icms write Faliquota_icms;
    property base_legal_icms: WideString read Fbase_legal_icms write Fbase_legal_icms;
    property cst_pis: WideString read Fcst_pis write Fcst_pis;
    property cst_pis_descr: WideString read Fcst_pis_descr write Fcst_pis_descr;
    property tipo_credito: WideString read Ftipo_credito write Ftipo_credito;
    property cst_cofins: WideString read Fcst_cofins write Fcst_cofins;
    property cst_cofins_descr: WideString read Fcst_cofins_descr write Fcst_cofins_descr;
    property base_pis_cofins: TXSDecimal read Fbase_pis_cofins write Fbase_pis_cofins;
    property aliquota_pis_real: TXSDecimal read Faliquota_pis_real write Faliquota_pis_real;
    property aliquota_pis_presumido: TXSDecimal read Faliquota_pis_presumido write Faliquota_pis_presumido;
    property aliquota_cofins_real: TXSDecimal read Faliquota_cofins_real write Faliquota_cofins_real;
    property aliquota_cofins_presumido: TXSDecimal read Faliquota_cofins_presumido write Faliquota_cofins_presumido;
    property aliquota_icms_ecf: TXSDecimal read Faliquota_icms_ecf write Faliquota_icms_ecf;
    property base_legal_pis_cofins: WideString read Fbase_legal_pis_cofins write Fbase_legal_pis_cofins;
    property natureza_operacao: WideString read Fnatureza_operacao write Fnatureza_operacao;
    property far_registro: WideString read Ffar_registro write Ffar_registro;
    property far_ggrem: WideString read Ffar_ggrem write Ffar_ggrem;
    property far_fabricante: WideString read Ffar_fabricante write Ffar_fabricante;
    property far_composicao: WideString read Ffar_composicao write Ffar_composicao;
    property far_substancia: WideString read Ffar_substancia write Ffar_substancia;
    property far_pmf: WideString read Ffar_pmf write Ffar_pmf;
    property far_pmf_icms0: WideString read Ffar_pmf_icms0 write Ffar_pmf_icms0;
    property far_pmc: TXSDecimal read Ffar_pmc write Ffar_pmc;
    property far_pmc_icms0: WideString read Ffar_pmc_icms0 write Ffar_pmc_icms0;
    property far_tipo: WideString read Ffar_tipo write Ffar_tipo;
    property far_lista: WideString read Ffar_lista write Ffar_lista;
  end;

  ArrayOfProduto = array of Produto;            { "http://tempuri.org/" }

  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : wsProdutosSoap
  // service   : wsProdutos
  // port      : wsProdutosSoap
  // URL       : http://www.brasiltributario.com.br/webservices/wsProdutos.asmx
  // ************************************************************************ //
  wsProdutosSoap = interface(IInvokable)
  ['{59381EB9-4374-390A-FE5E-CF41BEA8E17A}']
    function  retornarInformacoesProdutoV2(const idSegmento: WideString; const usuario: WideString; const senha: WideString; const ean: WideString; const ncm: WideString; const nome: WideString; const uf: WideString): Produto; stdcall;
    function  retornarInformacoesProdutoV3(const idSegmento: WideString; const usuario: WideString; const senha: WideString; const ean: WideString; const ncm: WideString; const nome: WideString; const uf: WideString; const limite: WideString): ArrayOfProduto; stdcall;
  end;

function GetwsProdutosSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): wsProdutosSoap;


implementation

function GetwsProdutosSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): wsProdutosSoap;
const
  defWSDL = 'http://www.brasiltributario.com.br/webservices/wsProdutos.asmx?wsdl';
  defURL  = 'http://www.brasiltributario.com.br/webservices/wsProdutos.asmx';
  defSvc  = 'wsProdutos';
  defPrt  = 'wsProdutosSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as wsProdutosSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor Produto.Destroy;
begin
  if Assigned(Fbase_icms_varejo) then
    Fbase_icms_varejo.Free;
  if Assigned(Faliquota_icms_varejo) then
    Faliquota_icms_varejo.Free;
  if Assigned(Fperc_mva_rs) then
    Fperc_mva_rs.Free;
  if Assigned(Fperc_mva_4) then
    Fperc_mva_4.Free;
  if Assigned(Fperc_mva_7) then
    Fperc_mva_7.Free;
  if Assigned(Fperc_mva_outros) then
    Fperc_mva_outros.Free;
  if Assigned(Fbase_icms) then
    Fbase_icms.Free;
  if Assigned(Faliquota_icms) then
    Faliquota_icms.Free;
  if Assigned(Fbase_pis_cofins) then
    Fbase_pis_cofins.Free;
  if Assigned(Faliquota_pis_real) then
    Faliquota_pis_real.Free;
  if Assigned(Faliquota_pis_presumido) then
    Faliquota_pis_presumido.Free;
  if Assigned(Faliquota_cofins_real) then
    Faliquota_cofins_real.Free;
  if Assigned(Faliquota_cofins_presumido) then
    Faliquota_cofins_presumido.Free;
  if Assigned(Faliquota_icms_ecf) then
    Faliquota_icms_ecf.Free;
  if Assigned(Ffar_pmc) then
    Ffar_pmc.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(wsProdutosSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(wsProdutosSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(wsProdutosSoap),ioDocument);

  RemClassRegistry.RegisterXSClass(Produto, 'http://tempuri.org/', 'Produto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfProduto), 'http://tempuri.org/', 'ArrayOfProduto');
  InvRegistry.RegisterInterface(TypeInfo(wsProdutosSoap), 'http://WebServicesNameSpace', 'utf-8');

end. 