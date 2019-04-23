unit classe.CalcularImpostos;

interface

uses
  contnrs, Classes;

const

        //                                AC AL AM AP BA CE DF ES GO MA MT MS MG PA PB PR PE PI RN RS RJ RO RR SC SP SE TO

  cAliquotaAC: array[0..26] of Integer = (17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaAL: array[0..26] of Integer = (12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaAM: array[0..26] of Integer = (12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaAP: array[0..26] of Integer = (12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaBA: array[0..26] of Integer = (12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaCE: array[0..26] of Integer = (12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaDF: array[0..26] of Integer = (12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaES: array[0..26] of Integer = (12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaGO: array[0..26] of Integer = (12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaMA: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaMT: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaMS: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaMG: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,18,07,07,12,07,07,07,12,12,07,07,12,12,07,07);
  cAliquotaPA: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaPB: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12,12,12);
  cAliquotaPR: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,18,07,07,07,12,12,07,07,12,12,07,07);
  cAliquotaPE: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12,12);
  cAliquotaPI: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12,12);
  cAliquotaRN: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12,12,12,12);
  cAliquotaRS: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,12,07,07,07,17,12,07,07,12,12,07,07);
  cAliquotaRJ: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,12,07,07,07,12,18,07,07,12,12,07,07);
  cAliquotaRO: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12,12);
  cAliquotaRR: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12,12,12,12);
  cAliquotaSC: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,12,07,07,07,12,12,07,07,17,12,07,07);
  cAliquotaSP: array[0..26] of Integer = (07,07,07,07,07,07,07,07,07,07,07,07,12,07,07,12,07,07,07,12,12,07,07,12,18,07,07);
  cAliquotaSE: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17,12);
  cAliquotaTO: array[0..26] of Integer = (12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,17);

type

  TClassTributaria = (
    cst00, // Tributada integralmente
    cst10, // Tributada e com cobrança do ICMS por substituição tributária
    cst20, // Com redução de base de cálculo
    cst30, // Isenta ou não tributada e com cobrança do ICMS por substituição tributária
    cst40, // Isenta
    cst41, // Não tributada
    cst50, // Suspensão
    cst51, // Diferimento
    cst60, // ICMS cobrado anteriormente por substituição tributária
    cst70, // Com redução de base de cálculo e cobrança do ICMS por substituição tributária
    cst90  // Outras
    );

  TNotaFiscal = class;

  TEstados = class
  private
    {private declarations}
  protected
    {protected declarations}
  public
    {public declarations}
    class function CodEstado(const pEstado: String): SmallInt;
    class function CodIBGEEstado(const pEstado: String): SmallInt;
    class function AliquotaInterEstadual(const pEstadoOrigem: String; const pEstadoDestino: String): Double; overload;
    class function AliquotaInterEstadual(const pEstadoOrigem: String): Double; overload;
  end;

  TPessoaFisJur = class(TComponent)
  private
    {private declarations}
    FNomeRazaoSocial: String;
    FEstado: String;
  protected
    {protected declarations}
  public
    {public declarations}
    constructor Create(AOwner: TComponent); override;
    procedure Assign(const pPessoaFisJur: TPessoaFisJur); reintroduce;
    procedure Inicializar;
    property NomeRazaoSocial: String read FNomeRazaoSocial write FNomeRazaoSocial;
    property Estado: String read FEstado write FEstado;
  end;

  TDuplicataNF = class(TComponent)
  private
    {private declarations}
  protected
    {protected declarations}
  public
    {public declarations}
    constructor Create(AOwner: TComponent); override;
    procedure Assign(const pDuplicataNF: TDuplicataNF); reintroduce;
    procedure Inicializar; virtual;
  end;

  TDuplicatasNF = class(TObjectList)
  protected
    {protected declarations}
    function GetDuplicataNF(Index: Integer): TDuplicataNF;
    procedure SetDuplicataNF(Index: Integer; ADuplicataNF: TDuplicataNF);
  public
    {public declarations}
    function Add(ANotaFiscal: TNotaFiscal; ADuplicataNF: TDuplicataNF): Integer;
    function Remove(ADuplicataNF: TDuplicataNF): Integer;
    function IndexOf(ADuplicataNF: TDuplicataNF): Integer;
    procedure Insert(Index: Integer; ADuplicataNF: TDuplicataNF);
    property Items[Index]: TDuplicataNF read GetDuplicataNF write SetDuplicataNF; default;
  end;

  TItemNF = class(TComponent)
  private
    {private declarations}
    FCodProduto: String;
    FValorUnitario: Currency;
    FValorDesconto: Currency;
    FQuantidade: Double;
    FDescProduto: String;
    FItem: Integer;
    FClassFiscal: String;
    FAliqIPI: Double;
    FAliqMVA: Double;
    FPeso: Double;
    FClassTributaria: TClassTributaria;
    FReducaoICMS: Double;
    procedure SetCodProduto(const Value: String);
    procedure SetDescProduto(const Value: String);
    procedure SetQuantidade(const Value: Double);
    procedure SetValorDesconto(const Value: Currency);
    procedure SetValorUnitario(const Value: Currency);
    procedure SetItem(const Value: Integer);
    procedure SetClassFiscal(const Value: String);
    procedure SetAliqIPI(const Value: Double);
    procedure SetAliqMVA(const Value: Double);
    procedure SetPeso(const Value: Double);
    procedure SetClassTributaria(const Value: TClassTributaria);
    procedure SetReducaoICMS(const Value: Double);

    function GetBC_ICMS_ST: Currency;
    function GetBC_ICMS_OP: Currency;
    function GetBC_IPI: Currency;

    function GetVL_DESPAC_PROP: Currency;
    function GetVL_FRETE_PROP: Currency;
    function GetVL_SEGUR_PROP: Currency;

    function GetPC_PROP_NF: Double;

    function GetVL_TOTAL_BRT: Currency;
    function GetVL_ICMS_OP: Currency;
    function GetVL_IPI: Currency;
    function GetVL_MVA: Currency;
    function GetVL_ICMS_ST: Currency;
    function GetVL_TOTAL_LIQ: Currency;

  protected
    {protected declarations}
    function NotaFiscal: TNotaFiscal;
  public
    {public declarations}
    constructor Create(AOwner: TComponent); override;

    procedure Assign(const pItemNF: TItemNF); reintroduce;
    procedure Inicializar; virtual;

    property Item: Integer read FItem write SetItem;
    property CodProduto: String read FCodProduto write SetCodProduto;
    property DescProduto: String read FDescProduto write SetDescProduto;
    property Quantidade: Double read FQuantidade write SetQuantidade;
    property ValorUnitario: Currency read FValorUnitario write SetValorUnitario;
    property ValorDesconto: Currency read FValorDesconto write SetValorDesconto;
    property ClassFiscal: String read FClassFiscal write SetClassFiscal;
    property AliqIPI: Double read FAliqIPI write SetAliqIPI;
    property AliqMVA: Double read FAliqMVA write SetAliqMVA;
    property Peso: Double read FPeso write SetPeso;
    property ClassTributaria: TClassTributaria read FClassTributaria write SetClassTributaria;
    property ReducaoICMS: Double read FReducaoICMS write SetReducaoICMS;
    property VL_TOTAL_LIQ: Currency read GetVL_TOTAL_LIQ;
    property VL_TOTAL_BRT: Currency read GetVL_TOTAL_BRT;
    property BC_ICMS_OP: Currency read GetBC_ICMS_OP;
    property BC_ICMS_ST: Currency read GetBC_ICMS_ST;
    property VL_ICMS_OP: Currency read GetVL_ICMS_OP;
    property VL_ICMS_ST: Currency read GetVL_ICMS_ST;
    property BC_IPI: Currency read GetBC_IPI;
    property VL_IPI: Currency read GetVL_IPI;
    property VL_FRETE_PROP: Currency read GetVL_FRETE_PROP;
    property VL_SEGUR_PROP: Currency read GetVL_SEGUR_PROP;
    property VL_DESPAC_PROP: Currency read GetVL_DESPAC_PROP;
    property PC_PROP_NF: Double read GetPC_PROP_NF;
    property VL_MVA: Currency read GetVL_MVA;
  end;

  TEmitenteNF = class(TPessoaFisJur)
  private
    {private declarations}
  protected
    {protected declarations}
  public
    {public declarations}
  end;

  TDestinatarioNF = class(TPessoaFisJur)
  private
    {private declarations}
  protected
    {protected declarations}
  public
    {public declarations}
  end;

  TTransporteNF = class(TPessoaFisJur)
  private
    {private declarations}
  protected
    {protected declarations}
  public
    {public declarations}
  end;

  TItensNF = class(TObjectList)
  protected
    {protected declarations}
    function GetItemNF(Index: Integer): TItemNF;
    procedure SetItemNF(Index: Integer; AItemNF: TItemNF);
  public
    {public declarations}
    function Add(ANotaFiscal: TNotaFiscal; AItemNF: TItemNF): Integer;
    function Remove(AItemNF: TItemNF): Integer;
    function IndexOf(AItemNF: TItemNF): Integer;
    procedure Insert(Index: Integer; AItemNF: TItemNF);
    property Items[Index]: TItemNF read GetItemNF write SetItemNF; default;
  end;

  TValoresNF = class(TComponent)
  private
    {private declarations}
    FVL_SEGURO: Currency;
    FVL_FRETE: Currency;
    FVL_DESPACESS: Currency;
    function GetVL_TOTAL_PROD: Currency;
    function GetVL_TOTAL_NF: Currency;
    function GetBS_ICMS: Currency;
    function GetVL_ICMS: Currency;
    function GetBS_ICMS_ST: Currency;
    function GetVL_ICMS_ST: Currency;
  protected
    {protected declarations}
    function NotaFiscal: TNotaFiscal;
  public
    {public declarations}
    constructor Create(AOwner: TComponent); override;

    procedure Assign(const pValoresNF: TValoresNF); reintroduce;
    procedure Inicializar; virtual;

    property VL_FRETE: Currency read FVL_FRETE write FVL_FRETE;
    property VL_SEGURO: Currency read FVL_SEGURO write FVL_SEGURO;
    property VL_DESPACESS: Currency read FVL_DESPACESS write FVL_DESPACESS;
    property VL_TOTAL_PROD: Currency read GetVL_TOTAL_PROD;
    property VL_TOTAL_NF: Currency read GetVL_TOTAL_NF;
    property BS_ICMS: Currency read GetBS_ICMS;
    property VL_ICMS: Currency read GetVL_ICMS;
    property BS_ICMS_ST: Currency read GetBS_ICMS_ST;
    property VL_ICMS_ST: Currency read GetVL_ICMS_ST;
  end;

  TNotaFiscal = class(TComponent)
  private
    {private declarations}
    FItensNF: TItensNF;
    FDuplicatasNF: TDuplicatasNF;
    FDestinatarioNF: TDestinatarioNF;
    FEmitenteNF: TEmitenteNF;
    FTransporteNF: TTransporteNF;
    FValoresNF: TValoresNF;
    FObservacoes: TStrings;
    procedure SetObservacoes(const Value: TStrings);
    function GetPeso: Double;
    function GetNroItens: Integer;
  public
    {public declarations}
    constructor Create(AOwner: TComponent); override;
    procedure Inicializar;

    property EmitenteNF: TEmitenteNF read FEmitenteNF write FEmitenteNF;
    property DestinatarioNF: TDestinatarioNF read FDestinatarioNF write FDestinatarioNF;
    property TransporteNF: TTransporteNF read FTransporteNF write FTransporteNF;
    property ItensNF: TItensNF read FItensNF write FItensNF;
    property DuplicatasNF: TDuplicatasNF read FDuplicatasNF write FDuplicatasNF;
    property ValoresNF: TValoresNF read FValoresNF write FValoresNF;
    property Observacoes: TStrings read FObservacoes write SetObservacoes;
    property Peso: Double read GetPeso;
    property NroItens: Integer read GetNroItens;
  end;

  TFuncoes = class
    class function Percentual(const pPercentual: Double; const pValor: Currency): Currency;
    class function RetornaPercentual(const pValorTotal: Currency; const pValor: Currency): Currency;
  end;

implementation

uses
  dialogs,
  SysUtils;

{ TNotaFiscal }

constructor TNotaFiscal.Create(AOwner: TComponent);
begin
  inherited;
  FObservacoes := TStringList.Create;
  ItensNF := TItensNF.Create;
  DuplicatasNF := TDuplicatasNF.Create;
  EmitenteNF := TEmitenteNF.Create(Self);
  DestinatarioNF := TDestinatarioNF.Create(Self);
  TransporteNF := TTransporteNF.Create(Self);
  ValoresNF := TValoresNF.Create(Self);
end;

function TNotaFiscal.GetNroItens: Integer;
begin
  Result := FItensNF.Count;
end;

function TNotaFiscal.GetPeso: Double;
var
  lItens: SmallInt;
begin
  Result := 0;
  for lItens := 0 to ItensNF.Count -1 do
    Result := Result + ItensNF[lItens].Peso;
end;

procedure TNotaFiscal.Inicializar;
begin
  EmitenteNF.Inicializar;
  DestinatarioNF.Inicializar;
  TransporteNF.Inicializar;
  ValoresNF.Inicializar;
  ItensNF.Clear;
  DuplicatasNF.Clear;
  Observacoes.Clear;
end;

procedure TNotaFiscal.SetObservacoes(const Value: TStrings);
begin
  FObservacoes := Value;
end;

{ TItensNF }
function TItensNF.Add(ANotaFiscal: TNotaFiscal; AItemNF: TItemNF): Integer;
var
  lNovoItemNF: TItemNF;
begin
  lNovoItemNF := TItemNF.Create(ANotaFiscal);
  lNovoItemNF.Assign(AItemNF);
  Result := inherited Add(lNovoItemNF);
end;

function TItensNF.GetItemNF(Index: Integer): TItemNF;
begin
  Result := inherited Items[Index] as TItemNF;
end;

function TItensNF.IndexOf(AItemNF: TItemNF): Integer;
begin
  Result := inherited IndexOf(AItemNF);
end;

procedure TItensNF.Insert(Index: Integer; AItemNF: TItemNF);
begin
  inherited Insert(Index, AItemNF);
end;

function TItensNF.Remove(AItemNF: TItemNF): Integer;
begin
  Result := inherited Remove(AItemNF);
end;

procedure TItensNF.SetItemNF(Index: Integer; AItemNF: TItemNF);
begin
  Items[Index] := AItemNF;
end;

{ TDuplicatasNF }

function TDuplicatasNF.Add(ANotaFiscal: TNotaFiscal; ADuplicataNF: TDuplicataNF): Integer;
var
  lNovaDuplicataNF: TDuplicataNF;
begin
  lNovaDuplicataNF := TDuplicataNF.Create(ANotaFiscal);
  lNovaDuplicataNF.Assign(ADuplicataNF);
  Result := inherited Add(lNovaDuplicataNF);
end;

function TDuplicatasNF.GetDuplicataNF(Index: Integer): TDuplicataNF;
begin
  Result := inherited Items[Index] as TDuplicataNF;
end;

function TDuplicatasNF.IndexOf(ADuplicataNF: TDuplicataNF): Integer;
begin
  Result := inherited IndexOf(ADuplicataNF);
end;

procedure TDuplicatasNF.Insert(Index: Integer; ADuplicataNF: TDuplicataNF);
begin
  inherited Insert(Index, ADuplicataNF);
end;

function TDuplicatasNF.Remove(ADuplicataNF: TDuplicataNF): Integer;
begin
  Result := inherited Remove(ADuplicataNF);
end;

procedure TDuplicatasNF.SetDuplicataNF(Index: Integer; ADuplicataNF: TDuplicataNF);
begin
  Items[Index] := ADuplicataNF;
end;

{ TItemNF }

procedure TItemNF.Assign(const pItemNF: TItemNF);
begin
  Inicializar;
  CodProduto := pItemNF.CodProduto;
  ValorUnitario := pItemNF.ValorUnitario;
  ValorDesconto := pItemNF.ValorDesconto;
  Quantidade := pItemNF.Quantidade;
  DescProduto := pItemNF.DescProduto;
  Item := pItemNF.Item;
  ClassFiscal := pItemNF.ClassFiscal;
  AliqIPI := pItemNF.AliqIPI;
  AliqMVA := pItemNF.AliqMVA;
  Peso := pItemNF.Peso;
  ClassTributaria := pItemNF.ClassTributaria;
  ReducaoICMS := pItemNF.ReducaoICMS;
end;

constructor TItemNF.Create(AOwner: TComponent);
begin
  inherited;
  Inicializar;
end;

function TItemNF.GetBC_ICMS_OP: Currency;
begin
  if ClassTributaria in [cst30, cst40, cst41, cst50, cst60] then
    Result := 0
  else
  begin
    Result := VL_TOTAL_BRT + VL_FRETE_PROP + VL_SEGUR_PROP + VL_DESPAC_PROP;
    if ClassTributaria in [cst20, cst51, cst70, cst90] then
      Result := (Result - TFuncoes.Percentual(ReducaoICMS, Result));
  end;
end;

function TItemNF.GetBC_ICMS_ST: Currency;
begin
  if ClassTributaria in [cst00, cst20, cst40, cst41, cst50, cst51] then
    Result := 0
  else
    Result := VL_TOTAL_BRT + VL_FRETE_PROP + VL_SEGUR_PROP + VL_DESPAC_PROP + VL_IPI + VL_MVA;
end;

function TItemNF.GetBC_IPI: Currency;
begin
  Result := VL_TOTAL_BRT + VL_FRETE_PROP + VL_SEGUR_PROP + VL_DESPAC_PROP;
end;

function TItemNF.GetPC_PROP_NF: Double;
var
  lPart: Double;
begin
  Result := 100;
  if NotaFiscal.NroItens > 1 then
  begin
    lPart := TFuncoes.RetornaPercentual(NotaFiscal.ValoresNF.VL_TOTAL_PROD, VL_TOTAL_BRT);
    Result := TFuncoes.Percentual(lPart, Result);
  end;
end;

function TItemNF.GetVL_IPI: Currency;
begin
  Result := TFuncoes.Percentual(AliqIPI, BC_IPI);
end;

function TItemNF.GetVL_MVA: Currency;
begin
  Result := VL_TOTAL_BRT + VL_FRETE_PROP + VL_SEGUR_PROP + VL_DESPAC_PROP + VL_IPI;
  Result := TFuncoes.Percentual(AliqMVA, Result);
end;

function TItemNF.GetVL_DESPAC_PROP: Currency;
begin
  Result := TFuncoes.Percentual(PC_PROP_NF, NotaFiscal.ValoresNF.VL_DESPACESS);
end;

function TItemNF.GetVL_FRETE_PROP: Currency;
begin
  Result := TFuncoes.Percentual(PC_PROP_NF, NotaFiscal.ValoresNF.VL_FRETE);
end;

function TItemNF.GetVL_SEGUR_PROP: Currency;
begin
  Result := TFuncoes.Percentual(PC_PROP_NF, NotaFiscal.ValoresNF.VL_SEGURO);
end;

function TItemNF.GetVL_TOTAL_BRT: Currency;
begin
  Result := Quantidade * ValorUnitario;
end;

function TItemNF.GetVL_ICMS_OP: Currency;
var
  lAliq: Double;
begin
  if ClassTributaria in [cst30, cst40, cst41, cst50, cst60] then
    Result := 0
  else
  begin
    lAliq := TEstados.AliquotaInterEstadual(NotaFiscal.EmitenteNF.Estado, NotaFiscal.DestinatarioNF.Estado);
    Result := TFuncoes.Percentual(lAliq, BC_ICMS_OP);
  end;
end;

procedure TItemNF.Inicializar;
begin
  Item := 0;
  CodProduto := EmptyStr;
  DescProduto := EmptyStr;
  Quantidade := 0;
  ValorUnitario := 0;
  ValorDesconto := 0;
  ClassFiscal := EmptyStr;
  AliqIPI := 0;
  Peso := 0;
  AliqMVA := 0;
  ClassTributaria := cst00;
end;

function TItemNF.NotaFiscal: TNotaFiscal;
begin
  Result := (Owner as TNotaFiscal);
end;

procedure TItemNF.SetAliqIPI(const Value: Double);
begin
  FAliqIPI := Value;
end;

procedure TItemNF.SetAliqMVA(const Value: Double);
begin
  FAliqMVA := Value;
end;

procedure TItemNF.SetClassFiscal(const Value: String);
begin
  FClassFiscal := Value;
end;

procedure TItemNF.SetCodProduto(const Value: String);
begin
  FCodProduto := Value;
end;

procedure TItemNF.SetDescProduto(const Value: String);
begin
  FDescProduto := Value;
end;

procedure TItemNF.SetItem(const Value: Integer);
begin
  FItem := Value;
end;

procedure TItemNF.SetPeso(const Value: Double);
begin
  FPeso := Value;
end;

procedure TItemNF.SetQuantidade(const Value: Double);
begin
  FQuantidade := Value;
end;

procedure TItemNF.SetValorDesconto(const Value: Currency);
begin
  FValorDesconto := Value;
end;

procedure TItemNF.SetValorUnitario(const Value: Currency);
begin
  FValorUnitario := Value;
end;

function TItemNF.GetVL_ICMS_ST: Currency;
var
  lAliq: Double;
begin
  if ClassTributaria in [cst00, cst20, cst40, cst41, cst50, cst51] then
    Result := 0
  else
  begin
    lAliq := TEstados.AliquotaInterEstadual(NotaFiscal.EmitenteNF.Estado);
    Result := TFuncoes.Percentual(lAliq, BC_ICMS_ST);
    Result := Result - VL_ICMS_OP;
  end;
end;

function TItemNF.GetVL_TOTAL_LIQ: Currency;
begin
  Result := VL_TOTAL_BRT + VL_IPI + VL_FRETE_PROP + VL_SEGUR_PROP + VL_DESPAC_PROP + VL_ICMS_ST;
end;

procedure TItemNF.SetClassTributaria(const Value: TClassTributaria);
begin
  FClassTributaria := Value;
end;

procedure TItemNF.SetReducaoICMS(const Value: Double);
begin
  FReducaoICMS := Value;
end;

{ TDuplicataNF }

procedure TDuplicataNF.Assign(const pDuplicataNF: TDuplicataNF);
begin


end;

constructor TDuplicataNF.Create(AOwner: TComponent);
begin
  inherited;
  Inicializar;
end;

procedure TDuplicataNF.Inicializar;
begin

end;

{ TPessoaFisJur }

procedure TPessoaFisJur.Assign(const pPessoaFisJur: TPessoaFisJur);
begin
  Inicializar;
  NomeRazaoSocial := pPessoaFisJur.NomeRazaoSocial;
  Estado := pPessoaFisJur.Estado;
end;

constructor TPessoaFisJur.Create(AOwner: TComponent);
begin
  inherited;
  Inicializar;
end;

procedure TPessoaFisJur.Inicializar;
begin
  NomeRazaoSocial := EmptyStr;
  Estado := EmptyStr;
end;

{ TValoresNF }

procedure TValoresNF.Assign(const pValoresNF: TValoresNF);
begin

end;

constructor TValoresNF.Create(AOwner: TComponent);
begin
  inherited;
  Inicializar;
end;

function TValoresNF.GetBS_ICMS: Currency;
var
  lItens: SmallInt;
begin
  Result := 0;
  for lItens := 0 to NotaFiscal.ItensNF.Count -1 do
    Result := Result + NotaFiscal.ItensNF[lItens].BC_ICMS_OP;
end;

function TValoresNF.GetVL_TOTAL_NF: Currency;
var
  lItens: SmallInt;
begin
  Result := 0;
  for lItens := 0 to NotaFiscal.ItensNF.Count -1 do
    Result := Result + NotaFiscal.ItensNF[lItens].VL_TOTAL_LIQ;
end;

function TValoresNF.GetVL_TOTAL_PROD: Currency;
var
  lItens: SmallInt;
begin
  Result := 0;
  for lItens := 0 to NotaFiscal.ItensNF.Count -1 do
    Result := Result + NotaFiscal.ItensNF[lItens].VL_TOTAL_BRT;
end;

function TValoresNF.GetVL_ICMS: Currency;
var
  lItens: SmallInt;
begin
  Result := 0;
  for lItens := 0 to NotaFiscal.ItensNF.Count -1 do
    Result := Result + NotaFiscal.ItensNF[lItens].VL_ICMS_OP;
end;

procedure TValoresNF.Inicializar;
begin
  VL_FRETE := 0;
  VL_SEGURO := 0;
  VL_DESPACESS := 0;
end;

function TValoresNF.NotaFiscal: TNotaFiscal;
begin
  Result := (Owner as TNotaFiscal);
end;

function TValoresNF.GetBS_ICMS_ST: Currency;
var
  lItens: SmallInt;
begin
  Result := 0;
  for lItens := 0 to NotaFiscal.ItensNF.Count -1 do
    Result := Result + NotaFiscal.ItensNF[lItens].BC_ICMS_ST;
end;

function TValoresNF.GetVL_ICMS_ST: Currency;
var
  lItens: SmallInt;
begin
  Result := 0;
  for lItens := 0 to NotaFiscal.ItensNF.Count -1 do
    Result := Result + NotaFiscal.ItensNF[lItens].VL_ICMS_ST;
end;

{ TEstados }

class function TEstados.AliquotaInterEstadual(const pEstadoOrigem, pEstadoDestino: String): Double;
var
  lEstadoDestino: SmallInt;
begin
  lEstadoDestino := TEstados.CodEstado(pEstadoDestino);
  if pEstadoOrigem = 'AC' then Result := cAliquotaAC[lEstadoDestino] else
  if pEstadoOrigem = 'AL' then Result := cAliquotaAL[lEstadoDestino] else
  if pEstadoOrigem = 'AM' then Result := cAliquotaAM[lEstadoDestino] else
  if pEstadoOrigem = 'AP' then Result := cAliquotaAP[lEstadoDestino] else
  if pEstadoOrigem = 'BA' then Result := cAliquotaBA[lEstadoDestino] else
  if pEstadoOrigem = 'CE' then Result := cAliquotaCE[lEstadoDestino] else
  if pEstadoOrigem = 'DF' then Result := cAliquotaDF[lEstadoDestino] else
  if pEstadoOrigem = 'ES' then Result := cAliquotaES[lEstadoDestino] else
  if pEstadoOrigem = 'GO' then Result := cAliquotaGO[lEstadoDestino] else
  if pEstadoOrigem = 'MA' then Result := cAliquotaMA[lEstadoDestino] else
  if pEstadoOrigem = 'MT' then Result := cAliquotaMT[lEstadoDestino] else
  if pEstadoOrigem = 'MS' then Result := cAliquotaMS[lEstadoDestino] else
  if pEstadoOrigem = 'MG' then Result := cAliquotaMG[lEstadoDestino] else
  if pEstadoOrigem = 'PA' then Result := cAliquotaPA[lEstadoDestino] else
  if pEstadoOrigem = 'PB' then Result := cAliquotaPB[lEstadoDestino] else
  if pEstadoOrigem = 'PR' then Result := cAliquotaPR[lEstadoDestino] else
  if pEstadoOrigem = 'PE' then Result := cAliquotaPE[lEstadoDestino] else
  if pEstadoOrigem = 'PI' then Result := cAliquotaPI[lEstadoDestino] else
  if pEstadoOrigem = 'RN' then Result := cAliquotaRN[lEstadoDestino] else
  if pEstadoOrigem = 'RS' then Result := cAliquotaRS[lEstadoDestino] else
  if pEstadoOrigem = 'RJ' then Result := cAliquotaRJ[lEstadoDestino] else
  if pEstadoOrigem = 'RO' then Result := cAliquotaRO[lEstadoDestino] else
  if pEstadoOrigem = 'RR' then Result := cAliquotaRR[lEstadoDestino] else
  if pEstadoOrigem = 'SC' then Result := cAliquotaSC[lEstadoDestino] else
  if pEstadoOrigem = 'SP' then Result := cAliquotaSP[lEstadoDestino] else
  if pEstadoOrigem = 'SE' then Result := cAliquotaSE[lEstadoDestino] else
  if pEstadoOrigem = 'TO' then Result := cAliquotaTO[lEstadoDestino] else Result := 0;
end;

class function TEstados.AliquotaInterEstadual(const pEstadoOrigem: String): Double;
begin
  Result := AliquotaInterEstadual(pEstadoOrigem, pEstadoOrigem);
end;

class function TEstados.CodEstado(const pEstado: String): SmallInt;
begin
  if pEstado = 'AC' then Result := 00 else
  if pEstado = 'AL' then Result := 01 else
  if pEstado = 'AM' then Result := 02 else
  if pEstado = 'AP' then Result := 03 else
  if pEstado = 'BA' then Result := 04 else
  if pEstado = 'CE' then Result := 05 else
  if pEstado = 'DF' then Result := 06 else
  if pEstado = 'ES' then Result := 07 else
  if pEstado = 'GO' then Result := 08 else
  if pEstado = 'MA' then Result := 09 else
  if pEstado = 'MT' then Result := 10 else
  if pEstado = 'MS' then Result := 11 else
  if pEstado = 'MG' then Result := 12 else
  if pEstado = 'PA' then Result := 13 else
  if pEstado = 'PB' then Result := 14 else
  if pEstado = 'PR' then Result := 15 else
  if pEstado = 'PE' then Result := 16 else
  if pEstado = 'PI' then Result := 17 else
  if pEstado = 'RN' then Result := 18 else
  if pEstado = 'RS' then Result := 19 else
  if pEstado = 'RJ' then Result := 20 else
  if pEstado = 'RO' then Result := 21 else
  if pEstado = 'RR' then Result := 22 else
  if pEstado = 'SC' then Result := 23 else
  if pEstado = 'SP' then Result := 24 else
  if pEstado = 'SE' then Result := 25 else
  if pEstado = 'TO' then Result := 26 else Result := 0;
end;

class function TEstados.CodIBGEEstado(const pEstado: String): SmallInt;
begin
  if pEstado = 'RO' then Result := 11 else
  if pEstado = 'AC' then Result := 12 else
  if pEstado = 'AM' then Result := 13 else
  if pEstado = 'RR' then Result := 14 else
  if pEstado = 'PA' then Result := 15 else
  if pEstado = 'AP' then Result := 16 else
  if pEstado = 'TO' then Result := 17 else
  if pEstado = 'MA' then Result := 21 else
  if pEstado = 'PI' then Result := 22 else
  if pEstado = 'CE' then Result := 23 else
  if pEstado = 'RN' then Result := 24 else
  if pEstado = 'PB' then Result := 25 else
  if pEstado = 'PE' then Result := 26 else
  if pEstado = 'AL' then Result := 27 else
  if pEstado = 'SE' then Result := 28 else
  if pEstado = 'BA' then Result := 29 else
  if pEstado = 'MG' then Result := 31 else
  if pEstado = 'ES' then Result := 32 else
  if pEstado = 'RJ' then Result := 33 else
  if pEstado = 'SP' then Result := 35 else
  if pEstado = 'PR' then Result := 41 else
  if pEstado = 'SC' then Result := 42 else
  if pEstado = 'RS' then Result := 43 else
  if pEstado = 'MS' then Result := 50 else
  if pEstado = 'MT' then Result := 51 else
  if pEstado = 'GO' then Result := 52 else
  if pEstado = 'DF' then Result := 53 else Result := 0;
end;

{ TFuncoes }

class function TFuncoes.Percentual(const pPercentual: Double; const pValor: Currency): Currency;
begin
  Result := 0;
  if pValor > 0 then
    Result := (pValor * pPercentual) / 100;
end;

class function TFuncoes.RetornaPercentual(const pValorTotal, pValor: Currency): Currency;
begin
  Result := 0;
  if pValorTotal > 0 then
    Result := ((pValor / pValorTotal) * 100);
end;

end.
