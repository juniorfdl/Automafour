unit ECFCheckout;

interface

uses Dialogs, SysUtils, RxQuery , ShellApi, Windows, Forms, classes;
var
  StrAux        : string ;

  function  AbrirPortaECF(Impressora, Porta : String) : Boolean ;
  function  FecharPortaECF(Impressora, Porta : String) : Boolean ;
  function  Leitura_X(Impressora, Porta : String) : Boolean ;
  function  Resumo_X(Impressora, Porta : String; TextoRes : TStringList) : Boolean ;
  function  Reducao_Z(Impressora, Porta : String) : Boolean ;
  function  AbreRelatorioGerencial(Impressora, Porta : String) : boolean;
  function  RelatorioGerencial(Impressora, Porta, Texto : String) : Boolean;
  function  FechamentoRelatorioGerencial(Impressora, Porta : String) : boolean;
  function  AbrirGaveta(Impressora, Porta : String) : Boolean;
  function  Guilhotina(Impressora, Porta : String) : Boolean;
  function  VerificaECFLigada(Impressora, Porta : String) : Boolean ;
  function  VerificaZPendente(Impressora, Porta : String) : Boolean ;

  function  AbrirCupomFiscal(Impressora, Porta : String; Var NroCupom : string) : Boolean ;
  function  ImprimeItemECF(Impressora, Porta, Numitem, Codigo, Descricao, Tributo, TipoDesc, Unid:String ; Qtde, Valor, Percdesc, Vlrdesco : Double ; NumDecQuant : integer) : Boolean ;
  function  CancelarItemECF(Impressora, Porta, Posicao : string) : boolean ;
  function  FecharCupomFiscal(Impressora, Porta, Ecf_CNFV : String; Valor, VlrAcresc, VlrDesc, VlrTroco : Double; SQLFPVista, SQLFPPrazo : TRxQuery; NomeCli, EnderecoCli, CidadeCli, DocumentoCli, IDCupom, Vendedor, Plano, Placa:string) : Boolean ;

  function  EmiteCNFNV(Impressora, Porta, Identificador, MSG, Cod_Numerario : String; Valor : double) : Boolean ;
  function  FecharCNFNV(Impressora, Porta : string) : Boolean ;

  function  AbrirCNFV(Impressora, Porta : string; Identificador,TipoDoc : char; Ecf_ID, NroCupom, DescriNumerario : string; Valor : double) : Boolean ;
  function  LinhaTextoLivre(Impressora, Porta, Texto : string) : Boolean ;
  function  FecharCNFV(Impressora, Porta : string) : Boolean ;

  procedure AbrirReciboFiscal(Impressora: String; Texto:String);

  function  EmiteCNFV_Corisco(Impressora,Porta,Titulo,Texto:String):Boolean;

  function  CancelarCupomFiscal(Impressora, Porta : String) : Boolean ;

  function  RetornaNroCupomFiscal(Impressora,Porta : String) : String ;

  function  Autenticacao(Impressora, Porta, Identificador, Ecf_ID, Documento, Parcela, Tipo : String; Valor : double; NumerarioCod : integer; Msg : String) : Boolean ;

  function  ImprimeRespostaCartao(Impressora, Porta, CaminhoRespostaCartao, CartaoDescricao, TravaTeclado : string) : Boolean ; // Criada por Adilson e nao usada até o  momento
var
  Parametros,ParametrosItem: PChar;
  DadosItem, CupomFormatado : String;
  ArquivoCupom : TextFile;

implementation

uses BemaFi32, Sigtron_FS345, UnitLibrary, SWEDA7000_AFRAC, Elgin_FIT, Epson_Termica, Sweda_Termica,
     SWEDA7000, DataModulo, Schalter_SCF_ECF, Corisco_CT7000_V3, TelaImportaItens, TelaItens, WaitWindow, Urano_1EFC, Urano_LoggerII;

function VerificaECFLigada(Impressora, Porta : String) : Boolean ;
begin
  if Impressora = 'DARUMA FRAMEWORK' then
    VerificaECFLigada := VerificaECFLigada_DARUMA_FRAMEWORK ;
  if Impressora = 'EPSON TERMICA' then
    VerificaECFLigada := True ;
end;

function VerificaZPendente(Impressora, Porta : String) : Boolean ;
begin
  if Impressora = 'DARUMA FRAMEWORK' then
    VerificaZPendente := VerificaZPendente_DARUMA_FRAMEWORK ;
end;

function AbrirPortaECF(Impressora, Porta : String) : Boolean ;
begin
  if FileExists('TesteECF.Arq') then
    begin
      exit ;
    end ;
  try
    if Impressora = 'BEMATECH MP-25 FI' then
      AbrirPortaECF := AbrirPortaECF_Bematech_MP25_FI ;

    if Impressora = 'ELGIN MFD FIT 1E' then
      AbrirPortaECF := AbrirPortaECF_Elgin_FIT ;

    if Impressora = 'EPSON TERMICA' then
      AbrirPortaECF := AbrirPortaECF_Epson_Termica ;

    if Impressora = 'SWEDA_TERMICA' then
      AbrirPortaECF := AbrirPortaECF_Sweda_Termica;

    if Impressora = 'SWEDAS7000' then
      begin
        if Porta = 'COM1' then
          AbrePorta(1,5);
        if Porta = 'COM2' then
          AbrePorta(2,5);
        if Porta = 'COM3' then
          AbrePorta(3,5);
        if Porta = 'COM4' then
          AbrePorta(4,5);
      end;

    if Impressora = 'SWEDAS7000_AFRAC' then
      begin
        MakeWindowMessage('Comunicando com o ECF');
        AbrirPortaECF := AbrirPortaSWEDAS7000_AFRAC(Porta);
        DestroyWindow;
      end;

    if Impressora = 'SCHALTER SCF_ECF' then
      begin
        AbrirPortaECF := AbrirPorta_SCHALTER_SCR_ECF(Porta);
      end;

    if (Impressora = 'CORISCO CT7000 V3') then
      begin
        AbrirPortaECF := AbrirPortaECF_Corisco_CT3000_V3(Porta);
      end;

    if Impressora = 'URANO_1EFC' then
      begin
        AbrirPortaECF := AbrirPortaECF_Urano_1ECF(Porta);
      end;

    if Impressora = 'URANO_LOGGERII' then
      AbrirPortaECF := AbrirPortaECF_Urano_LoggerII(Porta);

  except
    ShowMessage('Problemas ao tentar abrir a Porta Serial para comunicar com o ECF.') ;
    Application.ProcessMessages;
  end ;
end ;

function FecharPortaECF(Impressora, Porta : String) : Boolean ;
begin
  if FileExists('TesteECF.Arq') then
     exit ;

  try
    if Impressora = 'BEMATECH MP-25 FI' then
      FecharPortaECF := FecharPortaECF_Bematech_MP25_FI ;

    if Impressora = 'ELGIN MFD FIT 1E' then
      FecharPortaECF := FecharPortaECF_Elgin_FIT ;

    if Impressora = 'EPSON TERMICA' then
      FecharPortaECF := FecharPortaECF_Epson_Termica ;

    if Impressora = 'SWEDA_TERMICA' then
      FecharPortaECF := FecharPortaECF_Sweda_Termica ;

    if Impressora='SWEDAS7000' then
      begin
        if Porta = 'COM1' then
          FecharPortaECF := FechaPorta(1);
        if Porta = 'COM2' then
          FecharPortaECF := FechaPorta(2);
        if Porta = 'COM3' then
          FecharPortaECF := FechaPorta(3);
        if Porta = 'COM4' then
          FecharPortaECF := FechaPorta(4);
      end;

    if Impressora='SWEDAS7000_AFRAC' then
      FecharPortaECF := FecharPortaSWEDAS7000_AFRAC;

    if (Impressora = 'CORISCO CT7000 V3') then
      FecharPortaECF := FecharPortaECF_Corisco_CT3000_V3;

    if Impressora = 'URANO_1EFC' then
      FecharPortaECF := FecharPortaECF_Urano_1EFC();

   if Impressora = 'URANO_LOGGERII' then
      FecharPortaECF := FecharPortaECF_Urano_LoggerII();

  except
    ShowMessage('Problemas ao tentar fechar a Porta Serial para comunicar com o ECF.') ;
    Application.ProcessMessages;
  end;
end ;

function  Leitura_X(Impressora, Porta : String) : Boolean ;
begin
  if FileExists('TesteECF.Arq') then
  begin
    ShowMessage('Leitura X') ;
    exit ;
  end ;
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    Bematech_FI_LeituraX;

  if Impressora = 'DARUMA FRAMEWORK' then
    Leitura_X := Leitura_X_DARUMA_FRAMEWORK ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    Leitura_X_Elgin_FIT;

  if Impressora = 'EPSON TERMICA' then
    Leitura_X_Epson_Termica ;


  if Impressora = 'SWEDAS7000' then
    Leitura_X := Leitura_X_SWEDAS7000;

  if Impressora = 'SWEDA_TERMICA' then
    Leitura_X := Leitura_X_Sweda_Termica;

  if Impressora = 'SWEDAS7000_AFRAC' then
    Leitura_X := Leitura_X_SWEDAS7000_AFRAC;

  if Impressora = 'SCHALTER SCF_ECF' then
    Leitura_X := LeituraX_Schalter;

  if Impressora = 'CORISCO CT7000 V3' then
    begin
      LeituraX_Corisco_CT3000_V3;
    end;

  if Impressora = 'URANO_1EFC' then
    begin
      Leitura_X := LeituraX_Urano_1EFC();
    end;

 if Impressora = 'URANO_LOGGERII' then
    Leitura_X := EmiteLeituraX_Urano_LoggerII();

  FecharPortaECF(Impressora, Porta) ;
end ;

function Resumo_X(Impressora, Porta : String; TextoRes : TStringList) : Boolean ;
Var
  nPos : Integer;
begin
  if FileExists('TesteECF.Arq') then
  begin
    ShowMessage('Resumo X') ;
    exit ;
  end;

  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
  begin
    For nPos := 0 to TextoRes.Count - 1 do
      Bematech_FI_RelatorioGerencial(TextoRes.Strings[nPos]);

    Bematech_FI_FechaRelatorioGerencial;
  end;

  FecharPortaECF(Impressora, Porta) ;
end;

function Reducao_Z(Impressora, Porta : String) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    Bematech_FI_ReducaoZ('','');

  if Impressora = 'DARUMA FRAMEWORK' then
    Reducao_Z_DARUMA_FRAMEWORK ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    Reducao_Z_Elgin_FIT;

  if Impressora = 'EPSON TERMICA' then
    Reducao_Z := Reducao_Z_Epson_Termica;

  if Impressora = 'SWEDAS7000' then
    Reducao_Z := Reducao_Z_SWEDAS7000;

  if Impressora = 'SWEDA_TERMICA' then
    Reducao_Z := Reducao_Z_Sweda_Termica;

  if Impressora = 'SWEDAS7000_AFRAC' then
    Reducao_Z := Reducao_Z_SWEDAS7000_AFRAC;

  if Impressora = 'SCHALTER SCF_ECF' then
    Reducao_Z_SCHALTER_SCF_ECF;

  if Impressora = 'CORISCO CT7000 V3' then
    Reducao_Z_Corisco_CT3000_V3 ;

  if Impressora = 'URANO_1EFC' then
    Reducao_Z :=  Reducao_Z_Urano_1EFC ;

  if Impressora = 'URANO_LOGGERII' then
    Reducao_Z :=  EmiteReducaoZ_Urano_LoggerII ;

  FecharPortaECF(Impressora, Porta) ;
end ;

function AbreRelatorioGerencial(Impressora, Porta : String) : boolean;
begin
  AbrirPortaECF(Impressora,Porta);

  if Impressora = 'DARUMA FRAMEWORK' then
    AbreRelatorioGerencial := AbreRelatorioGerencial_DARUMA_FrameWork;

  if Impressora = 'ELGIN MFD FIT 1E' then
    AbreRelatorioGerencial := AbreRelatorioGerencial_Elgin_FIT ;

  if Impressora = 'EPSON TERMICA' then
    AbreRelatorioGerencial := AbreRelatorioGerencial_Epson_Termica ;

  if Impressora = 'SWEDA_TERMICA' then
    AbreRelatorioGerencial := AbreRelatorioGerencial_Sweda_Termica ;

  FecharPortaECF(Impressora, Porta) ;
end;

function RelatorioGerencial(Impressora, Porta, Texto : String) : Boolean;
begin
  AbrirPortaECF(Impressora,Porta);

  if Impressora = 'BEMATECH MP-25 FI' then
    RelatorioGerencial := EmiteRelatorioGerencial_Bematech_MP25_FI(Texto);

  if Impressora = 'DARUMA FRAMEWORK' then
    RelatorioGerencial := EmiteRelatorioGerencial_DARUMA_FrameWork(Texto);

  if Impressora = 'ELGIN MFD FIT 1E' then
    RelatorioGerencial := EmiteRelatorioGerencial_Elgin_FIT(Texto) ;

  if Impressora = 'EPSON TERMICA' then
    RelatorioGerencial := EmiteRelatorioGerencial_Epson_Termica(Texto) ;

  if Impressora = 'URANO_1EFC' then
    RelatorioGerencial := RelatorioGerencial_Urano_1EFC(Texto);

  if Impressora = 'SWEDA_TERMICA' then
    RelatorioGerencial := EmiteRelatorioGerencial_Sweda_Termica(Texto);

  FecharPortaECF(Impressora, Porta) ;
end;

function FechamentoRelatorioGerencial(Impressora, Porta : String) : boolean;
begin
  AbrirPortaECF(Impressora,Porta);

  if Impressora = 'BEMATECH MP-25 FI' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_Bematech_MP25_FI;

  if Impressora = 'DARUMA FRAMEWORK' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_DARUMA_FrameWork;

  if Impressora = 'ELGIN MFD FIT 1E' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_Elgin_FIT ;

  if Impressora = 'EPSON TERMICA' then
    FechamentoRelatorioGerencial := FechaRelatorioGerencial_Epson_Termica ;

  if Impressora = 'URANO_1EFC' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_Urano_1EFC(Impressora,Porta);

  if Impressora = 'SWEDA_TERMICA' then
    FechamentoRelatorioGerencial := FechamentoRelatorioGerencial_Sweda_Termica;

  FecharPortaECF(Impressora, Porta) ;
end;

function AbrirCupomFiscal(Impressora, Porta : String; Var NroCupom : string) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    AbrirCupomFiscal := AbrirCupomFiscal_Bematech_MP25_FI(NroCupom) ;

  if Impressora = 'DARUMA FRAMEWORK' then
    AbrirCupomFiscal := AbrirCupomFiscal_DARUMA_FRAMEWORK(NroCupom) ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    AbrirCupomFiscal := AbrirCupomFiscal_Elgin_FIT(NroCupom, DocumentoClienteVenda) ;

  if Impressora = 'EPSON TERMICA' then
    AbrirCupomFiscal := AbrirCupomFiscal_Epson_Termica(NroCupom) ;

  if Impressora = 'SWEDAS7000' then
  begin
    AbrirCupomFiscal := AbrirCupomSWEDAS7000(NroCupom);
  end ;

  if Impressora = 'SWEDA_TERMICA' then
    AbrirCupomFiscal := AbrirCupomFiscal_Sweda_Termica(NroCupom) ;

  if Impressora = 'SWEDAS7000_AFRAC' then
  begin
    MakeWindowMessage('Abrindo Cupom Fiscal');
    AbrirCupomFiscal := AbrirCupomSWEDAS7000_AFRAC(NroCupom);
    DestroyWindow;
  end ;

  if Impressora = 'SCHALTER SCF_ECF' then
    AbrirCupomFiscal := AbreCupom_SCHALTER_SCR_ECF;

  if Impressora = 'CORISCO CT7000 V3' then
    AbrirCupomFiscal := AbrirCupomFiscal_Corisco_CT3000_V3(NroCupom);

  if Impressora = 'URANO_1EFC' then
    AbrirCupomFiscal := AbrirCupomFiscal_Urano_1EFC(NroCupom);

  if Impressora = 'URANO_LOGGERII' then
    AbrirCupomFiscal := AbrirCupomFiscal_Urano_LoggerII(NroCupom);

  FecharPortaECF(Impressora, Porta) ;
end ;

function  ImprimeItemECF(Impressora, Porta, Numitem, Codigo, Descricao, Tributo, TipoDesc, Unid : String ; Qtde, Valor, Percdesc, Vlrdesco : Double ; NumDecQuant : integer) : Boolean ;
var
 DESCO,
 Quant,
 VlUnit,
 Preco : String;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    if PercDesc > 0 then
      ImprimeItemECF := ImprimeItem_Bematech_MP25_FI(Codigo,
                                              Descricao,
                                              Tributo,
                                              '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                              Qtde,
                                              DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger,
                                              Valor,
                                              '%',
                                              PercDesc)
  else
    ImprimeItemECF := ImprimeItem_Bematech_MP25_FI(Codigo,
                                              Descricao,
                                              Tributo,
                                              '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                              Qtde,
                                              DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger,
                                              Valor,
                                              '$',
                                              Vlrdesco) ;

  if Impressora = 'DARUMA FRAMEWORK' then
    if PercDesc > 0 then
      ImprimeItemECF := ImprimeItem_DARUMA_FRAMEWORK(Codigo,
                                                     Descricao,
                                                     Tributo,
                                                     '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                                     Qtde,
                                                     DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger,
                                                     Valor,
                                                     'D%',
                                                     PercDesc,
                                                     Unid)
    else
      ImprimeItemECF := ImprimeItem_DARUMA_FRAMEWORK(Codigo,
                                                     Descricao,
                                                     Tributo,
                                                     '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                                     Qtde,
                                                     DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger,
                                                     Valor,
                                                     'D$',
                                                     Vlrdesco,
                                                     Unid);

  if Impressora = 'ELGIN MFD FIT 1E' then
    ImprimeItemECF := ImprimeItem_Elgin_FIT(Codigo,
                                            Descricao,
                                            Tributo,
                                            '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                            Qtde,
                                            DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger,
                                            Valor,
                                            '%',
                                            PercDesc) ;

  if Impressora = 'SWEDA_TERMICA' then
    ImprimeItemECF := ImprimeItem_Sweda_Termica(Codigo,
                                                Descricao,
                                                Tributo,
                                                '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                                Qtde,
                                                DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger,
                                                Valor,
                                                '%',
                                                PercDesc) ;

  if Impressora = 'EPSON TERMICA' then
    if PercDesc > 0 then
      ImprimeItemECF := ImprimeItem_Epson_Termica(Codigo,
                                                  Descricao,
                                                  Tributo,
                                                  '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                                  Qtde,
                                                  DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger,
                                                  Valor,
                                                  'C',  // Tipo Desconto V=Valor, C=Percentual
                                                  PercDesc) // Perc ou Valor do Desconto conforme o caso
    else
      ImprimeItemECF := ImprimeItem_Epson_Termica(Codigo,
                                                  Descricao,
                                                  Tributo,
                                                  '', // Tipo Quantidade I=Inteiro ou F=Fracionado
                                                  Qtde,
                                                  DM.SQLTerminalAtivo.FieldByName('TERMINRODECQUANT').AsInteger,
                                                  Valor,
                                                  'V',       // Tipo Desconto V=Valor, C=Percentual
                                                  Vlrdesco); // Perc ou Valor do Desconto conforme o caso


  if Impressora = 'SWEDAS7000' then
  begin
    ImprimeItemECF := ImprimeItemSWEDAS7000(Codigo,Descricao,Tributo,Unid,Valor,Qtde,VlrDesco);
  end ;

  if Impressora = 'SWEDAS7000_AFRAC' then
  begin
    MakeWindowMessage('Imprindo Item');
    ImprimeItemECF := ImprimeItemSWEDAS7000_AFRAC(Codigo,Descricao,Tributo,Unid,Valor,Qtde,VlrDesco);
    DestroyWindow;
  end ;
  if Impressora = 'SCHALTER SCF_ECF' then
    ImprimeItemECF := ImprimeItem_SCHALTER_SCF_ECF(Numitem,Codigo,Descricao,Tributo,Unid,Qtde,Valor,Percdesc,Vlrdesco,NumDecQuant);

  if Impressora = 'CORISCO CT7000 V3' then
    ImprimeItem_Corisco_CT3000_V3(Codigo,
                                  Descricao,
                                  Tributo,
                                  Qtde,
                                  Valor,
                                  Vlrdesco) ;

  if Impressora = 'URANO_1EFC' then
    begin
      ImprimeItemECF := ImprimeItem_Urano_1EFC(Codigo,
                                               Descricao,
                                               Tributo,
                                               Unid,
                                               Qtde,
                                               Valor,
                                               Vlrdesco);
    end;

  if Impressora = 'URANO_LOGGERII' then
    begin
      ImprimeItemECF := ImprimeItem_Urano_LoggerII(Codigo,
                                                   Descricao,
                                                   Tributo,
                                                   Unid,
                                                   Qtde,
                                                   Valor,
                                                   Vlrdesco);
    end;

  FecharPortaECF(Impressora, Porta) ;
end ;

function CancelarItemECF(Impressora, Porta, Posicao : string) : boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    CancelarItemECF := CancelaItem_Bematech_MP25_FI(Posicao) ;

  if Impressora = 'DARUMA FRAMEWORK' then
    CancelarItemECF := CancelaItem_DARUMA_FRAMEWORK(Posicao) ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    CancelarItemECF := CancelaItem_Elgin_FIT(Posicao) ;

  if Impressora = 'EPSON TERMICA' then
    CancelarItemECF := CancelaItem_Epson_Termica(Posicao) ;

  if Impressora = 'SWEDAS7000' then
    begin
      CancelarItemECF := CancelarItemSWEDAS7000;
    end;

  if Impressora = 'SWEDA_TERMICA' then
    CancelarItemECF := CancelaItem_Sweda_Termica(Posicao) ;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Cancelando Item');
      CancelarItemECF := CancelarItemSWEDAS7000_AFRAC(Posicao);
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    CancelarItemECF := CancelarItem_SCHALTER_SCF_ECF(StrToInt(Posicao),'');

{  if Impressora = 'CORISCO CT7000 V3' then
    CancelarItemECF := CancelaItem_Corisco_CT3000_V3(Posicao);}

  if Impressora = 'URANO_1EFC' then
    CancelarItemECF := CancelaItem_Urano_1EFC(Posicao);

  if Impressora = 'URANO_LOGGERII' then
    CancelarItemECF := CancelaItemFiscal_Urano_LoggerII(0,Posicao,'');

  FecharPortaECF(Impressora, Porta) ;
end ;

function  FecharCupomFiscal(Impressora, Porta, Ecf_CNFV : String; Valor, VlrAcresc, VlrDesc, VlrTroco : Double; SQLFPVista, SQLFPPrazo : TRxQuery;NomeCli,EnderecoCli,CidadeCli,DocumentoCli, IDCupom, Vendedor, Plano, Placa:string) : Boolean ;
var
 AcrescDesc : String;
 VlrImpostoMedio, AliqImpostoMedio : Double;
begin
  AbrirPortaECF(Impressora, Porta) ;

  {Programa de Olho no Imposto}
  // Somar o valor Total de imposto Medio
  if not FileExists('Confirma.txt') then
    begin
      formtelaitens.SQLItensVendaTemp.First;
      VlrImpostoMedio := 0;
      while not formtelaitens.SQLItensVendaTemp.eof do
        begin
          VlrImpostoMedio := VlrImpostoMedio + formtelaitens.SQLItensVendaTempValorImpostoMedio.value;
          formtelaitens.SQLItensVendaTemp.next;
        end;
      formtelaitens.SQLItensVendaTemp.First;
      AliqImpostoMedio := (VlrImpostoMedio / Valor) * 100;
    end
  else
    begin
      if AliqOlhoImpostoSimples > 0 then
        begin
          AliqImpostoMedio := AliqOlhoImpostoSimples;
          VlrImpostoMedio  := (Valor + VlrAcresc - VlrDesc) * AliqOlhoImpostoSimples / 100;
        end;
    end;

  //------------------------------------------------------

  if Impressora = 'BEMATECH MP-25 FI' then
    begin
      if VlrAcresc > 0 then
          FecharCupomFiscal := FecharCupomFiscal_Bematech_MP25_FI('A',
                                                              Valor,
                                                              VlrAcresc,
                                                              VlrTroco,
                                                              Ecf_CNFV,
                                                              '',
                                                              SQLFPVista,
                                                              SQLFPPrazo,
                                                              NomeCli,
                                                              EnderecoCli,
                                                              CidadeCli,
                                                              DocumentoCli,
                                                              IDCupom,
                                                              Vendedor,
                                                              Plano,
                                                              VlrImpostoMedio,
                                                              AliqImpostoMedio);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP25_FI('D',
                                                            Valor,
                                                            VlrDesc,
                                                            VlrTroco,
                                                            Ecf_CNFV,
                                                            '',
                                                            SQLFPVista,
                                                            SQLFPPrazo,
                                                            NomeCli,
                                                            EnderecoCli,
                                                            CidadeCli,
                                                            DocumentoCli,
                                                            IDCupom,
                                                            Vendedor,
                                                            Plano,
                                                            VlrImpostoMedio,
                                                            AliqImpostoMedio);

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Bematech_MP25_FI('D',
                                                            Valor,
                                                            0,
                                                            VlrTroco,
                                                            Ecf_CNFV,
                                                            '',
                                                            SQLFPVista,
                                                            SQLFPPrazo,
                                                            NomeCli,
                                                            EnderecoCli,
                                                            CidadeCli,
                                                            DocumentoCli,
                                                            IDCupom,
                                                            Vendedor,
                                                            Plano,
                                                            VlrImpostoMedio,
                                                            AliqImpostoMedio);
    end;

  if Impressora = 'DARUMA FRAMEWORK' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_DARUMA_FRAMEWORK('A',
                                                            Valor,
                                                            VlrAcresc,
                                                            VlrTroco,
                                                            Ecf_CNFV,
                                                            '',
                                                            SQLFPVista,
                                                            SQLFPPrazo,
                                                            NomeCli,
                                                            EnderecoCli,
                                                            CidadeCli,
                                                            DocumentoCli,
                                                            IDCupom,
                                                            Vendedor,
                                                            Plano,
                                                            Placa,
                                                            VlrImpostoMedio,
                                                            AliqImpostoMedio);

      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_DARUMA_FRAMEWORK('D',
                                                            Valor,
                                                            VlrDesc,
                                                            VlrTroco,
                                                            Ecf_CNFV,
                                                            '',
                                                            SQLFPVista,
                                                            SQLFPPrazo,
                                                            NomeCli,
                                                            EnderecoCli,
                                                            CidadeCli,
                                                            DocumentoCli,
                                                            IDCupom,
                                                            Vendedor,
                                                            Plano,
                                                            Placa,
                                                            VlrImpostoMedio,
                                                            AliqImpostoMedio);
      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_DARUMA_FRAMEWORK('D',
                                                            Valor,
                                                            0,
                                                            VlrTroco,
                                                            Ecf_CNFV,
                                                            '',
                                                            SQLFPVista,
                                                            SQLFPPrazo,
                                                            NomeCli,
                                                            EnderecoCli,
                                                            CidadeCli,
                                                            DocumentoCli,
                                                            IDCupom,
                                                            Vendedor,
                                                            Plano,
                                                            Placa,
                                                            VlrImpostoMedio,
                                                            AliqImpostoMedio);
    end;

  if Impressora = 'ELGIN MFD FIT 1E' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Elgin_FIT('A',
                                                         Valor,
                                                         VlrAcresc,
                                                         VlrTroco,
                                                         Ecf_CNFV,
                                                         '',
                                                         SQLFPVista,
                                                         SQLFPPrazo,
                                                         NomeCli,
                                                         EnderecoCli,
                                                         CidadeCli,
                                                         DocumentoCli,
                                                         IDCupom,
                                                         Vendedor,
                                                         Plano,
                                                         VlrImpostoMedio,
                                                         AliqImpostoMedio);


      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Elgin_FIT('D',
                                                         Valor,
                                                         VlrDesc,
                                                         VlrTroco,
                                                         Ecf_CNFV,
                                                         '',
                                                         SQLFPVista,
                                                         SQLFPPrazo,
                                                         NomeCli,
                                                         EnderecoCli,
                                                         CidadeCli,
                                                         DocumentoCli,
                                                         IDCupom,
                                                         Vendedor,
                                                         Plano,
                                                         VlrImpostoMedio,
                                                         AliqImpostoMedio);
      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Elgin_FIT('D',
                                                         Valor,
                                                         0,
                                                         VlrTroco,
                                                         Ecf_CNFV,
                                                         '',
                                                         SQLFPVista,
                                                         SQLFPPrazo,
                                                         NomeCli,
                                                         EnderecoCli,
                                                         CidadeCli,
                                                         DocumentoCli,
                                                         IDCupom,
                                                         Vendedor,
                                                         Plano,
                                                         VlrImpostoMedio,
                                                         AliqImpostoMedio);
    end;

  if Impressora = 'SWEDA_TERMICA' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Sweda_Termica('A',
                                                         Valor,
                                                         VlrAcresc,
                                                         VlrTroco,
                                                         Ecf_CNFV,
                                                         '',
                                                         SQLFPVista,
                                                         SQLFPPrazo,
                                                         NomeCli,
                                                         EnderecoCli,
                                                         CidadeCli,
                                                         DocumentoCli,
                                                         IDCupom,
                                                         Vendedor,
                                                         Plano,
                                                         VlrImpostoMedio,
                                                         AliqImpostoMedio);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Sweda_Termica('D',
                                                         Valor,
                                                         VlrDesc,
                                                         VlrTroco,
                                                         Ecf_CNFV,
                                                         '',
                                                         SQLFPVista,
                                                         SQLFPPrazo,
                                                         NomeCli,
                                                         EnderecoCli,
                                                         CidadeCli,
                                                         DocumentoCli,
                                                         IDCupom,
                                                         Vendedor,
                                                         Plano,
                                                         VlrImpostoMedio,
                                                         AliqImpostoMedio);
      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Sweda_Termica('D',
                                                         Valor,
                                                         0,
                                                         VlrTroco,
                                                         Ecf_CNFV,
                                                         '',
                                                         SQLFPVista,
                                                         SQLFPPrazo,
                                                         NomeCli,
                                                         EnderecoCli,
                                                         CidadeCli,
                                                         DocumentoCli,
                                                         IDCupom,
                                                         Vendedor,
                                                         Plano,
                                                         VlrImpostoMedio,
                                                         AliqImpostoMedio);
    end;

  if Impressora = 'EPSON TERMICA' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Epson_Termica('A',
                                                             Valor,
                                                             VlrAcresc,
                                                             VlrTroco,
                                                             Ecf_CNFV,
                                                             '',
                                                             SQLFPVista,
                                                             SQLFPPrazo,
                                                             NomeCli,
                                                             EnderecoCli,
                                                             CidadeCli,
                                                             DocumentoCli,
                                                             IDCupom,
                                                             Vendedor,
                                                             Plano,
                                                             VlrImpostoMedio,
                                                             AliqImpostoMedio);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Epson_Termica('D',
                                                             Valor,
                                                             VlrDesc,
                                                             VlrTroco,
                                                             Ecf_CNFV,
                                                             '',
                                                             SQLFPVista,
                                                             SQLFPPrazo,
                                                             NomeCli,
                                                             EnderecoCli,
                                                             CidadeCli,
                                                             DocumentoCli,
                                                             IDCupom,
                                                             Vendedor,
                                                             Plano,
                                                             VlrImpostoMedio,
                                                             AliqImpostoMedio);
      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Epson_Termica('D',
                                                             Valor,
                                                             0,
                                                             VlrTroco,
                                                             Ecf_CNFV,
                                                             '',
                                                             SQLFPVista,
                                                             SQLFPPrazo,
                                                             NomeCli,
                                                             EnderecoCli,
                                                             CidadeCli,
                                                             DocumentoCli,
                                                             IDCupom,
                                                             Vendedor,
                                                             Plano,
                                                             VlrImpostoMedio,
                                                             AliqImpostoMedio);
    end;

  if Impressora = 'SWEDAS7000' then
    begin
      if VlrAcresc > 0 then
        begin
          LancarAcrescimoSWEDAS7000(VlrAcresc);
        end;
      FecharCupomSWEDAS7000('D',Valor,VlrDesc,0,Ecf_CNFV,'',SQLFPVista,SQLFPPrazo,NomeCli,EnderecoCli,CidadeCli,DocumentoCli,IDCupom);
    end;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Finalizando Cupom');
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomSWEDAS7000_AFRAC('A',
                                                   Valor,
                                                   VlrAcresc,
                                                   VlrTroco,
                                                   Ecf_CNFV,
                                                   '',
                                                   SQLFPVista,
                                                   SQLFPPrazo,
                                                   NomeCli,
                                                   EnderecoCli,
                                                   CidadeCli,
                                                   DocumentoCli,
                                                   IDCupom,
                                                   Vendedor,
                                                   Plano);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomSWEDAS7000_AFRAC('D',
                                                   Valor,
                                                   VlrDesc,
                                                   VlrTroco,
                                                   Ecf_CNFV,
                                                   '',
                                                   SQLFPVista,
                                                   SQLFPPrazo,
                                                   NomeCli,
                                                   EnderecoCli,
                                                   CidadeCli,
                                                   DocumentoCli,
                                                   IDCupom,
                                                   Vendedor,
                                                   Plano);

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomSWEDAS7000_AFRAC('A',
                                                   Valor,
                                                   0,
                                                   VlrTroco,
                                                   Ecf_CNFV,
                                                   '',
                                                   SQLFPVista,
                                                   SQLFPPrazo,
                                                   NomeCli,
                                                   EnderecoCli,
                                                   CidadeCli,
                                                   DocumentoCli,
                                                   IDCupom,
                                                   Vendedor,
                                                   Plano);
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupom_SCHALTER_SCF_ECF('A',Valor,VlrDesc,0,Ecf_CNFV,'',SQLFPVista,SQLFPPrazo,NomeCli,EnderecoCli,CidadeCli,DocumentoCli,IDCupom)
      else
        FecharCupomFiscal := FecharCupom_SCHALTER_SCF_ECF('D',Valor,VlrDesc,0,Ecf_CNFV,'',SQLFPVista,SQLFPPrazo,NomeCli,EnderecoCli,CidadeCli,DocumentoCli,IDCupom);
    end;

  if Impressora = 'CORISCO CT7000 V3' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Corisco_CT3000_V3('A',
                                                                 Valor,
                                                                 VlrAcresc,
                                                                 VlrTroco,
                                                                 Ecf_CNFV,
                                                                 '',
                                                                 SQLFPVista,
                                                                 SQLFPPrazo,
                                                                 NomeCli,
                                                                 EnderecoCli,
                                                                 CidadeCli,
                                                                 DocumentoCli,
                                                                 IDCupom,
                                                                 Vendedor,
                                                                 Plano);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Corisco_CT3000_V3('D',
                                                                 Valor,
                                                                 VlrDesc,
                                                                 VlrTroco,
                                                                 Ecf_CNFV,
                                                                 '',
                                                                 SQLFPVista,
                                                                 SQLFPPrazo,
                                                                 NomeCli,
                                                                 EnderecoCli,
                                                                 CidadeCli,
                                                                 DocumentoCli,
                                                                 IDCupom,
                                                                 Vendedor,
                                                                 Plano);

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Corisco_CT3000_V3('A',
                                                                 Valor,
                                                                 0,
                                                                 VlrTroco,
                                                                 Ecf_CNFV,
                                                                 '',
                                                                 SQLFPVista,
                                                                 SQLFPPrazo,
                                                                 NomeCli,
                                                                 EnderecoCli,
                                                                 CidadeCli,
                                                                 DocumentoCli,
                                                                 IDCupom,
                                                                 Vendedor,
                                                                 Plano);
    end ;

  if Impressora = 'URANO_1EFC' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Urano_1EFC('A',
                                                          Valor,
                                                          VlrAcresc,
                                                          VlrTroco,
                                                          Ecf_CNFV,
                                                          '',
                                                          SQLFPVista,
                                                          SQLFPPrazo,
                                                          NomeCli,
                                                          EnderecoCli,
                                                          CidadeCli,
                                                          DocumentoCli,
                                                          IDCupom,
                                                          Vendedor,
                                                          Plano);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Urano_1EFC('D',
                                                          Valor,
                                                          VlrDesc,
                                                          VlrTroco,
                                                          Ecf_CNFV,
                                                          '',
                                                          SQLFPVista,
                                                          SQLFPPrazo,
                                                          NomeCli,
                                                          EnderecoCli,
                                                          CidadeCli,
                                                          DocumentoCli,
                                                          IDCupom,
                                                          Vendedor,
                                                          Plano);

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Urano_1EFC('A',
                                                          Valor,
                                                          0,
                                                          VlrTroco,
                                                          Ecf_CNFV,
                                                          '',
                                                          SQLFPVista,
                                                          SQLFPPrazo,
                                                          NomeCli,
                                                          EnderecoCli,
                                                          CidadeCli,
                                                          DocumentoCli,
                                                          IDCupom,
                                                          Vendedor,
                                                          Plano);
    end;

  if Impressora = 'URANO_LOGGERII' then
    begin
      if VlrAcresc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Urano_LoggerII('A',
                                                              Valor,
                                                              VlrAcresc,
                                                              VlrTroco,
                                                              Ecf_CNFV,
                                                              '',
                                                              SQLFPVista,
                                                              SQLFPPrazo,
                                                              NomeCli,
                                                              EnderecoCli,
                                                              CidadeCli,
                                                              DocumentoCli,
                                                              IDCupom,
                                                              Vendedor,
                                                              Plano);
      if VlrDesc > 0 then
        FecharCupomFiscal := FecharCupomFiscal_Urano_LoggerII('D',
                                                              Valor,
                                                              VlrDesc,
                                                              VlrTroco,
                                                              Ecf_CNFV,
                                                              '',
                                                              SQLFPVista,
                                                              SQLFPPrazo,
                                                              NomeCli,
                                                              EnderecoCli,
                                                              CidadeCli,
                                                              DocumentoCli,
                                                              IDCupom,
                                                              Vendedor,
                                                              Plano);

      if (VlrAcresc = 0) and (VlrDesc = 0) then
        FecharCupomFiscal := FecharCupomFiscal_Urano_LoggerII('A',
                                                              Valor,
                                                              0,
                                                              VlrTroco,
                                                              Ecf_CNFV,
                                                              '',
                                                              SQLFPVista,
                                                              SQLFPPrazo,
                                                              NomeCli,
                                                              EnderecoCli,
                                                              CidadeCli,
                                                              DocumentoCli,
                                                              IDCupom,
                                                              Vendedor,
                                                              Plano);
    end;

  FecharPortaECF(Impressora, Porta) ;
end ;

function CancelarCupomFiscal(Impressora, Porta : String) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    CancelarCupomFiscal := CancelarCupomFiscal_Bematech_MP25_FI ;

  if Impressora = 'DARUMA FRAMEWORK' then
    CancelarCupomFiscal := CancelarCupomFiscal_DARUMA_FRAMEWORK ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    CancelarCupomFiscal := CancelarCupomFiscal_Elgin_FIT ;

  if Impressora = 'EPSON TERMICA' then
    CancelarCupomFiscal := CancelarCupomFiscal_Epson_Termica ;

  if Impressora = 'SWEDAS7000' then
    CancelarCupomFiscal := CancelarCupomSWEDAS7000;

  if Impressora = 'SWEDA_TERMICA' then
    CancelarCupomFiscal := CancelarCupomFiscal_Sweda_Termica;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      CancelarCupomFiscal := CancelarCupomSWEDAS7000_AFRAC;
      Sleep(2000);
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    if Application.FindComponent('FormTelaMovimentoCaixa') <> nil then
      CancelarCupomFiscal := CancelarCupom_SCHALTER_SCF_ECF('F')
    else
      CancelarCupomFiscal := CancelarCupom_SCHALTER_SCF_ECF('A');

  if Impressora = 'CORISCO CT7000 V3' then
    Result := CancelarCupomFiscal_Corisco_CT3000_V3('0') ;

  if Impressora = 'URANO_1EFC' then
    begin
      Result := CancelarCupomFiscal_Urano_1EFC();
    end;

  if Impressora = 'URANO_LOGGERII' then
    Result := CancelaCupom_Urano_LoggerII(0,'');

  FecharPortaECF(Impressora, Porta) ;
end ;

function EmiteCNFNV(Impressora, Porta, Identificador, MSG, Cod_Numerario : String; Valor : double) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    EmiteCNFNV := EmiteCNFNV_Bematech_MP25_FI(Identificador,Cod_Numerario,Valor);

  if Impressora = 'URANO_1EFC' then
    EmiteCNFNV := EmiteCNFNV_Urano_1EFC(Identificador,MSG,Valor);

  if Impressora = 'SWEDA_TERMICA' then
    EmiteCNFNV := EmiteCNFNV_Sweda_Termica(Identificador,MSG,Valor);

  FecharPortaECF(Impressora, Porta) ;
end;

function  FecharCNFNV(Impressora, Porta : string) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'URANO_1EFC' then
    FecharCNFNV := FecharCNFNV_Urano_1EFC(UsuarioAtualNome);

  FecharPortaECF(Impressora, Porta) ;
end;

function Autenticacao(Impressora, Porta, Identificador, Ecf_ID, Documento, Parcela, Tipo : String; Valor : double; NumerarioCod : integer; Msg : String) : Boolean ;
var
  Mensag, ClienteNomeAut : string ;
  IDNum,DescrNumerario  : string ;
begin
  if Tipo = 'Recebimento' then
    Mensag := '* * * DESEJA AUTENTICAR O DOCUMENTO ' + Documento + '/' + Parcela + ' ? * * *' ;
  if Tipo = 'Entrada' then
    Mensag := '* * * DESEJA AUTENTICAR A ENTRADA DO DOCUMENTO ' + Documento + ' ? * * *' ;
  if Tipo = 'Diversos' then
    Mensag := '* * * DESEJA AUTENTICAR ESTE DOCUMENTO ? * * *' ;

  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    begin
      if Pergunta('SIM', Mensag) then
      begin
        EmiteCNFNV_Bematech_MP25_FI(Identificador, IntToStr(NumerarioCod), Valor);
        Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
        Autenticacao_Bematech_MP25_FI;

        if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
           begin
            Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
            Autenticacao_Bematech_MP25_FI;
          end;
      end ;
    end ;

  if Impressora = 'SWEDAS7000' then
    begin
      if Pergunta('SIM', Mensag) then
      begin
        Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
            AutenticacaoSWEDAS7000(Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
        if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
          begin
            Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
            AutenticacaoSWEDAS7000(Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
          end;
      end ;
    end ;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      if Pergunta('SIM', Mensag) then
      begin
        MakeWindowMessage('Iniciando autenticação');
        IDNum := RetornaTotalizadorNumerarioECF(Ecf_ID, IntToStr(NumerarioCod));
        DescrNumerario := RetornaNumerario(IntToStr(NumerarioCod));
        AbreCNFNV_SWEDAS7000_AFRAC;
        RegistraItemCNFNV_SWEDAS7000_AFRAC(IDNum,Documento + ' ' + Parcela,Valor);
        PagaCNFNV_SWEDAS7000_AFRAC(DescrNumerario,IDNum,Documento + ' ' + Parcela,Valor);
        Sleep(1000);
        DestroyWindow;
        Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
            AutenticacaoSWEDAS7000_AFRAC('',Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
        if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
          begin
            Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
            RepeteAutenticacaoSWEDAS7000_AFRAC;
          end;
        FechaCNFNV_SWEDAS7000_AFRAC;
      end ;
    end ;

  if Impressora = 'SCHALTER SCF_ECF' then
    begin
      if Pergunta('SIM', Mensag) then
      begin
        Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
            Autencticacao_SCHALTER_SCF_ECF(Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
        if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
          begin
            Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
            Autencticacao_SCHALTER_SCF_ECF(Documento + ' ' + Parcela + ' ' + FormatFloat('###,0.00',Valor));
          end;
      end ;
    end ;

  if Impressora = 'CORISCO CT7000 V3' then
    begin
      if Pergunta('SIM', Mensag) then
        begin
          AbreCNFNV__Corisco_CT3000_V3;
          EmiteCNFNV_Corisco_CT3000_V3(Ecf_CNFNV,'',Documento + '/' + Parcela,Valor);
          Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
          Autenticacao_Corisco_CT3000_V3(Valor, Documento + '/' + Parcela) ;
{          if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
            begin
              EmiteCNFNV_Corisco_CT3000_V3(Ecf_CNFNV,'','AUTENTICACAO DE DOCUMENTO',Valor);
              Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
              Autenticacao_Corisco_CT3000_V3(Valor, Documento + '/' + Parcela) ;
            end;}
          FechaCNFNV__Corisco_CT3000_V3;
        end ;
    end ;

  if Impressora = 'URANO_1EFC' then
    begin
      if Pergunta('SIM', Mensag) then
      begin
        IDNum := RetornaTotalizadorNumerarioECF(Ecf_ID, IntToStr(NumerarioCod)) ;
        if IDNum = '' then
        begin
          Informa('A posição do Numerário não foi cadastrada') ;
          exit ;
        end ;
        EmiteCNFNV_Urano_1EFC(Identificador, Documento + '/' + Parcela , Valor) ;
        IDNum := RetornaTotalizadorNumerarioECF(Ecf_ID, IntToStr(NumerarioCod)) ;
        EfetuaFPCupom_Urano_1EFC(IDNum,Valor, False);
        Informa('Insira o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
        Autenticacao_Urano_1EFC();
        if Pergunta('SIM', '* * * DESEJA AUTENTICAR A 2º VIA DO DOCUMENTO '  + Documento + '/' + Parcela + ' ? * * *') then
          begin
            Informa('Inisra o Documento '  + Documento + '/' + Parcela + ' no ECF.') ;
            Autenticacao_Urano_1EFC();
          end;
        FecharCNFNV_Urano_1EFC(UsuarioAtualNome);
      end ;
    end ;

  if Impressora = 'EPSON TERMICA' then
    begin
      if Pergunta('SIM', Mensag) then
        begin
          EPSON_NaoFiscal_Abrir_Relatorio_Gerencial('1');
          EPSON_NaoFiscal_Imprimir_Linha(pchar(''));
          EPSON_NaoFiscal_Imprimir_Linha(pchar('                 RECIBO DE PAGAMENTO'));
          EPSON_NaoFiscal_Imprimir_Linha(pchar(''));
          EPSON_NaoFiscal_Imprimir_Linha(pchar('Data Recto....: ' + FormatDateTime('dd/mm/yyyy',now)));
          EPSON_NaoFiscal_Imprimir_Linha(pchar('Contrato .....: ' + Documento));
          EPSON_NaoFiscal_Imprimir_Linha(pchar('Parcela ......: ' + Parcela));
          EPSON_NaoFiscal_Imprimir_Linha(pchar('Valor Recto...: ' + FormatFloat('###,0.00',Valor)));
          EPSON_NaoFiscal_Fechar_Relatorio_Gerencial(true);
        end ;
    end;

  FecharPortaECF(Impressora, Porta) ;
end ;

function AbrirCNFV(Impressora, Porta : string; Identificador,TipoDoc : char; Ecf_ID, NroCupom, DescriNumerario : string; Valor : double) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta);

  if Impressora = 'BEMATECH MP-25 FI' then
    AbrirCNFV := AbrirCNFV_Bematech_MP25_FI(DescriNumerario, Valor, NroCupom);

  if Impressora = 'DARUMA FRAMEWORK' then
    AbrirCNFV := AbrirCNFV_DARUMA_FRAMEWORK(DescriNumerario, Valor, NroCupom);

  if Impressora = 'EPSON TERMICA' then
    AbrirCNFV := AbrirCNFV_Epson_Termica(Identificador, Valor, NroCupom);


  if Impressora = 'SWEDAS7000' then
    AbrirCNFV := EmiteCupomNaoFiscalSWEDA;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Abrindo cupom não fiscal');
      AbrirCNFV := AbreCupomNaoFiscalVinculadoSWEDAS7000_AFRAC(DescriNumerario,Valor);
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    begin
      //AbreCupomNFV_SCHALTER_SCR_ECF(NroCupom,Identificador,Valor);
      exit;
    end;

  if Impressora = 'URANO_1EFC' then
    begin
      // a FP aqui é enviada como 01 pq na urano é a seguencia de pagamentos e n o totalizado do numerario
      AbrirCNFV := AberturaCNFV_Urano_1EFC('01', NroCupomFiscal);
      Sleep(3000);
    end;

  FecharPortaECF(Impressora, Porta) ;
end ;

function LinhaTextoLivre(Impressora, Porta, Texto : string) : Boolean ;
begin
  LinhaTextoLivre := False;
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    LinhaTextoLivre := LinhaTextoLivre_Bematech_MP25_FI(Texto);

  if Impressora = 'DARUMA FRAMEWORK' then
    LinhaTextoLivre := LinhaTextoLivre_DARUMA_FRAMEWORK(Texto);

  if Impressora = 'EPSON TERMICA' then
    LinhaTextoLivre := LinhaTextoLivre_Epson_Termica(Texto);

  if Impressora = 'SWEDAS7000' then
    LinhaTextoLivre := ImprimeTextoNaoFical(Texto);

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Imprimindo texto não fiscal');
      LinhaTextoLivre := ImprimeTextoNaoFicalSWEDAS7000_AFRAC(Texto);
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    LinhaTextoLivre := LinhaTexto_SCHALTER_SCF_ECF(Texto);

  if Impressora = 'URANO_1EFC' then
    LinhaTextoLivre := LinhaTextoLivre_Urano_1EFC(Texto);

  FecharPortaECF(Impressora, Porta) ;
end ;

function FecharCNFV(Impressora, Porta : string) : Boolean ;
begin
  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    FecharCNFV := FecharCNFV_Bematech_MP25_FI ;

  if Impressora = 'DARUMA FRAMEWORK' then
    FecharCNFV := FecharCNFV_DARUMA_FRAMEWORK ;

  if Impressora = 'EPSON TERMICA' then
    FecharCNFV := FecharCNFV_Epson_Termica ;

  if Impressora = 'SWEDAS7000' then
    FecharCNFV := FecharCupomSemFP_SEWDAS7000;

  if Impressora = 'SWEDAS7000_AFRAC' then
    begin
      MakeWindowMessage('Fechando cupom não fiscal');
      FecharCNFV := FecharCupomSemFP_SEWDAS7000;
      DestroyWindow;
    end;

  if Impressora = 'SCHALTER SCF_ECF' then
    FecharCNFV := FechaCupomNFV_SCHALTER_SCF_ECF(NroCupomFiscal);

  if Impressora = 'URANO_1EFC' then
    FecharCNFV := FechamentoCNFV_Urano_1EFC(UsuarioAtualNome);

  FecharPortaECF(Impressora, Porta) ;
end ;

function RetornaNroCupomFiscal(Impressora,Porta : String) : String ;
var
  Str : String;
begin
  AssignFile(ArquivoCupom,Dm.PathAplicacao + 'NumeroCupom.Txt');
  Reset(ArquivoCupom);
  Readln(ArquivoCupom,Str);
  Result := Trim(Copy(Str,1,10));
  CloseFile(ArquivoCupom);
end;

function AbrirGaveta(Impressora, Porta : String) : Boolean;
begin
  AbrirGaveta := True;

  AbrirPortaECF(Impressora, Porta) ;

  if Impressora = 'BEMATECH MP-25 FI' then
    AbrirGaveta := AbrirGaveta_Bematech_MP25_FI ;

  if (Impressora = 'DARUMA FRAMEWORK') then
    AbrirGaveta := AbrirGaveta_Daruma_FRAMEWORK ;

  if Impressora = 'ELGIN MFD FIT 1E' then
    AbrirGaveta := AbrirGaveta_Elgin_FIT ;

  if Impressora = 'EPSON TERMICA' then
    AbrirGaveta := AbrirGaveta_Epson_Termica ;

  if Impressora = 'SWEDAS7000' then
    AbrirGavetaSWEDAS7000;

  if Impressora = 'SWEDAS7000_AFRAC' then
    AbrirGavetaSWEDAS7000_AFRAC;

  if Impressora = 'SWEDA_TERMICA' then
    AbrirGaveta_Sweda_Termica;

  if Impressora = 'CORISCO CT7000 V3' then
    AbrirGaveta_Corisco_CT3000_V3;

  if Impressora = 'URANO_1EFC' then
    AbrirGaveta_Urano_1EFC;

  FecharPortaECF(Impressora, Porta) ;
end ;

function Guilhotina(Impressora, Porta : String) : Boolean;
begin
  if Impressora = 'BEMATECH MP-25 FI' then
    Guilhotina := Guilhotina_Bematech_MP25_FI ;
end;

function  EmiteCNFV_Corisco(Impressora,Porta,Titulo,Texto:String):Boolean;
begin
  AbrirPortaECF(Impressora,Porta);
  EmiteCNFV_Corisco := EmiteCNFV_Corisco_CT3000_V3(Titulo,Texto);
  FecharPortaECF(Impressora,Porta);
end;

function  ImprimeRespostaCartao(Impressora, Porta,CaminhoRespostaCartao, CartaoDescricao, TravaTeclado : string) : Boolean ;
begin
  {}
end;

Procedure AbrirReciboFiscal(Impressora:String; Texto:String);
begin
  AbrirPortaECF(Impressora,Porta);

  if Impressora = 'DARUMA FRAMEWORK' then
    begin
      EmiteRelatorioGerencial_DARUMA_FrameWork(Texto);
      FechamentoRelatorioGerencial_DARUMA_FrameWork();
    end;

 if (Impressora = 'BEMATECH MP-25 FI') then
    begin
      Bematech_FI_RelatorioGerencial(Texto);
      Bematech_FI_FechaRelatorioGerencial();
    end;

  if Impressora = 'EPSON TERMICA' then
    begin
      AbreRelatorioGerencial_Epson_Termica;
      LinhaTextoLivre_Epson_Termica(Texto);
      FechaRelatorioGerencial_Epson_Termica;
    end ;
end;

end.
