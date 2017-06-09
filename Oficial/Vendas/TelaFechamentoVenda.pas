unit TelaFechamentoVenda;
interface

uses
  FormResources, Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RXCtrls, jpeg, Grids, DBGrids, Mask, VarSys, ToolEdit, CurrEdit, Db, BDE ,
  DBTables, RxQuery, MemTable, EWall, OleCtrls, UCrpe32, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppTxPipe, ppPrnabl, ppStrtch, ppMemo, ppCache, ppBands, CartaoCredito,
  Buttons, ConerBtn, UnSoundPlay, RXSwitch, WindowsLibrary, IniFiles,
  DBClient, Provider, AdvGlowButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvSmoothPanel, AdvReflectionLabel;

const
  InformandoVendedor            = 'InformandoVendedor';
  InformandoPlano               = 'InformandoPlano';
  InformandoNumerarioVista      = 'InformandoNumerarioVista' ;
  InformandoValorNumerarioVista = 'InformandoValorNumerarioVista' ;
  InformandoNumerarioPrazo      = 'InformandoNumerarioPrazo' ;
  InformandoDesconto            = 'InformandoDesconto' ;
  AlterandoEntrada              = 'AlterandoEntrada' ;
  ExcluindoNumerarioVista       = 'ExcluindoNumerarioVista' ;
  InformandoPosicaoData         = 'InformandoPosicaoData' ;
  AlterandoData                 = 'AlterandoData' ;
  InformandoPosicaoParcelaPrazo = 'InformandoPosicaoParcelaPrazo' ;
  AlterandoParcelaPrazo         = 'AlterandoParcelaPrazo' ;
  DiminuirAcrescimo             = 'DiminuirAcrescimo' ;
  InformandoCliente             = 'InformandoCliente';
  InformandoClienteDependente   = 'InformandoClienteDependente';
  FinalizandoVenda              = 'FinalizandoVenda' ;
  TipoPadraoLiberacao : array [0..3] of string = ('CRD','CNV','CHQP','CHQ');
type
  TFormTelaFechamentoVenda = class(TForm)
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoParcela: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TBCDField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    UpdateSQLParcelasPrazoVendaTemp: TUpdateSQL;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLNumerario: TRxQuery;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    UpdateSQLParcelasVistaVendaTemp: TUpdateSQL;
    DSSQLParcelasVistaVendaTemp: TDataSource;
    SQLParcelasVistaVendaTemp: TRxQuery;
    SQLParcelasVistaVendaTempVALORPARC: TBCDField;
    SQLParcelasVistaVendaTempNUMEICOD: TIntegerField;
    SQLParcelasVistaVendaTempTERMICOD: TIntegerField;
    SQLParcelasVistaVendaTempNROITEM: TIntegerField;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoPLRCA60DESCR: TStringField;
    SQLPlanoRecebimentoPLRCN2TXJURO: TBCDField;
    SQLPlanoRecebimentoPLRCN2TXMULTA: TBCDField;
    SQLPlanoRecebimentoPLRCN2TXCRED: TBCDField;
    SQLPlanoRecebimentoPLRCN2PERCDESC: TBCDField;
    SQLPlanoRecebimentoPLRCCDFIX: TStringField;
    SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoRecebimentoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField;
    SQLPlanoRecebimentoPLRCCATIVO: TStringField;
    SQLPlanoRecebimentoPENDENTE: TStringField;
    SQLPlanoRecebimentoREGISTRO: TDateTimeField;
    SQLPlanoRecebimentoParcelaPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoParcelaPLRPINROPARC: TIntegerField;
    SQLPlanoRecebimentoParcelaPLRPINRODIAS: TIntegerField;
    SQLPlanoRecebimentoParcelaPENDENTE: TStringField;
    SQLPlanoRecebimentoParcelaREGISTRO: TDateTimeField;
    SQLPlanoRecebimentoPLRCN2PERCENTR: TBCDField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    SQLParcelasVistaVendaTempTIPOPADR: TStringField;
    TblCarne: TTable;
    SQLParcelasVistaVendaTempNumerarioLookup: TStringField;
    SQLGeral : TRxQuery;
    DSTblCarne: TDataSource;
    TblTicketDadosVenda: TTable;
    TblTicketDadosVendaNomeEmpresa: TStringField;
    TblTicketDadosVendaFoneEmpresa: TStringField;
    TblTicketDadosVendaNomeVendedor: TStringField;
    TblTicketDadosVendaNomePlano: TStringField;
    TblTicketDadosVendaCodigoCliente: TStringField;
    TblTicketDadosVendaNomeCliente: TStringField;
    TblTicketDadosVendaCodProd: TIntegerField;
    TblTicketDadosVendaDescriProd: TStringField;
    TblTicketDadosVendaMarcaProd: TStringField;
    TblTicketDadosVendaRefProd: TStringField;
    TblTicketDadosVendaQtdeProd: TFloatField;
    TblTicketDadosVendaPrecoProd: TFloatField;
    TblTicketDadosVendaTotalProd: TFloatField;
    TblTicketDadosVendaTaxaCred: TFloatField;
    TblTicketDadosVendaAcrescimo: TFloatField;
    TblTicketDadosVendaDesconto: TFloatField;
    TblTicketDadosVendaIDCupom: TStringField;
    TblTicketDadosVendaDataVenda: TDateField;
    TblTicketDadosVendaNumerarioPagto: TStringField;
    TblTicketDadosVendaMensagem: TStringField;
    TblTicketDadosVendaTipoVenda: TStringField;
    SQLPreVendaItem: TRxQuery;
    SQLPreVendaItemTERMICOD: TIntegerField;
    SQLPreVendaItemPRVDICOD: TIntegerField;
    SQLPreVendaItemPVITIPOS: TIntegerField;
    SQLPreVendaItemPRODICOD: TIntegerField;
    SQLPreVendaItemPVITN3QTD: TBCDField;
    SQLPreVendaItemPVITN3VLRUNIT: TBCDField;
    SQLPreVendaItemPVITN3VLRCUSTUNIT: TBCDField;
    SQLPreVendaItemPVITN2DESC: TBCDField;
    SQLPreVendaItemVENDICOD: TIntegerField;
    SQLPreVendaItemPVITN3VLRUNITLUCR: TBCDField;
    SQLPreVendaItemPVITCSTATUS: TStringField;
    SQLPreVendaItemPVITN2ICMSALIQ: TBCDField;
    TblTicketDadosVendaFoneCliente: TStringField;
    TblTicketDadosVendaNroCreditCard: TStringField;
    TblTicketDadosVendaDataEntrega: TStringField;
    TblCarneEmpresaNome: TStringField;
    TblCarneEmpresaEnder: TStringField;
    TblCarneEmpresaBairro: TStringField;
    TblCarneEmpresaCidade: TStringField;
    TblCarneEmpresaUF: TStringField;
    TblCarneEmpresaFone: TStringField;
    TblCarneMensagem: TStringField;
    TblCarneCliente: TStringField;
    TblCarneEndereco: TStringField;
    TblCarneBairro: TStringField;
    TblCarneCidade: TStringField;
    TblCarneCodigoCliente: TStringField;
    TblCarneNumeroContrato: TStringField;
    TblCarneNumeroParcela: TIntegerField;
    TblCarneContadorParcelas: TIntegerField;
    TblCarneDataVencimento: TDateField;
    TblCarneValorParcela: TFloatField;
    TblCarneVendedor: TStringField;
    TblCarneTotalCupom: TFloatField;
    TblCarnePlano: TStringField;
    TblCarneDataEmissao: TDateField;
    TblCarneNroCupom: TStringField;
    SQLCupomNumerarioAut: TRxQuery;
    SQLCupomNumerarioAutCUPOA13ID: TStringField;
    SQLCupomNumerarioAutNUMEICOD: TIntegerField;
    SQLCupomNumerarioAutCPNMN2VLR: TBCDField;
    SQLCupomNumerarioAutCPNMCAUTENT: TStringField;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TBCDField;
    SQLRecebimentoRECEN2VLRJURO: TBCDField;
    SQLRecebimentoRECEN2VLRMULTA: TBCDField;
    SQLRecebimentoRECEN2DESC: TBCDField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoRECEN2MULTACOBR: TBCDField;
    SQLRecebimentoRECEA30HIST: TStringField;
    TblCartaoTemp: TTable;
    TblCartaoTempValor: TFloatField;
    TblCartaoTempCartao: TStringField;
    TblCartaoTempProvedor: TStringField;
    MemoCartao: TMemo;
    MemoImpressao: TMemo;
    MemoRetorno: TMemo;
    TimerCartao: TTimer;
    SQLParcelasPrazoVendaTempPRCAA13ID: TStringField;
    SQLParcelasPrazoVendaTempPRCAA60CARTAO: TStringField;
    SQLParcelasPrazoVendaTempPRCATPATHENVIA: TStringField;
    SQLParcelasPrazoVendaTempPRCATPATHRECEBE: TStringField;
    SQLParcelasVistaVendaTempPRCAA13ID: TStringField;
    SQLParcelasVistaVendaTempPRCAA60CARTAO: TStringField;
    SQLParcelasVistaVendaTempPRCATPATHENVIA: TStringField;
    SQLParcelasVistaVendaTempPRCATPATHRECEBE: TStringField;
    SQLProvedorCartao: TRxQuery;
    SQLProvedorCartaoPRCAA13ID: TStringField;
    SQLProvedorCartaoEMPRICOD: TIntegerField;
    SQLProvedorCartaoPRCAICOD: TIntegerField;
    SQLProvedorCartaoPRCAA60DESCR: TStringField;
    SQLProvedorCartaoPRCATPATHENVIA: TMemoField;
    SQLProvedorCartaoPRCATPATHRECEBE: TMemoField;
    SQLProvedorCartaoPRCAA60CARTAO: TStringField;
    TblCarneTaxaCrediario: TFloatField;
    TblCarneValorDesconto: TFloatField;
    TblCarneAcrescimo: TFloatField;
    TblCarneEntrada: TFloatField;
    SQLPlanoRecebimentoPLRCN2PERCACRESC: TBCDField;
    SQLConvenio: TRxQuery;
    SQLConvenioCONVICOD: TIntegerField;
    SQLConvenioCONVA60DESCR: TStringField;
    SQLConvenioCONVN2DESC: TBCDField;
    SQLConvenioCONVN2TAXA: TBCDField;
    SQLConvenioCONVDVENC: TIntegerField;
    SQLConvenioCONVDFIMCOMPRA: TDateTimeField;
    SQLConvenioCONVDINICIOCOMPRA: TDateTimeField;
    SQLProvedorCartaoPRCACCONSCHEQUE: TStringField;
    SQLParcelasVistaVendaTempPRCACCONSCHEQUE: TStringField;
    SQLParcelasPrazoVendaTempPRCACCONSCHEQUE: TStringField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    SQLPreVendaItemPRODA60NROSERIE: TStringField;
    SQLPreVendaItemPVITN3QTDTROCA: TBCDField;
    SQLPlanoRecebimentoPLRCFATCASH: TStringField;
    SQLRecebimentoNUMEICOD: TIntegerField;
    TblCarneClienteDependente: TIntegerField;
    SQLQuotas: TRxQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    SQLPlanoRecebimentoPLRCCSOLICITASENHA: TStringField;
    TblCarneTerminalSTR: TStringField;
    TblCarneUsuarioSTR: TStringField;
    ScrollBoxPrincipal: TScrollBox;
    btnF1: TAdvGlowButton;
    ConerBtn1: TAdvGlowButton;
    btnF11: TAdvGlowButton;
    btnSair: TAdvGlowButton;
    LblNomeSistema: TRxLabel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    rxClienteNome: TRxLabel;
    LblCLiente: TRxLabel;
    LblCodigoCliente: TRxLabel;
    LblNomeCliente: TRxLabel;
    LblPlano: TRxLabel;
    LblNomePlano: TRxLabel;
    LblVendedor: TRxLabel;
    LblNomeVendedor: TRxLabel;
    LblTxCrediario: TRxLabel;
    LblNomeClienteDep: TRxLabel;
    LBTotalJuroDia: TCurrencyEdit;
    LblRetorno: TRxLabel;
    VlrTxCrediario: TCurrencyEdit;
    LblBonusTroca: TRxLabel;
    ValorBonusTroca: TCurrencyEdit;
    VlrRetornoCliente: TCurrencyEdit;
    RxLabel2: TRxLabel;
    AdvSmoothPanel3: TAdvSmoothPanel;
    ListaParcelasVista: TDBGrid;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    RxLabel7: TRxLabel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    RxLabel3: TRxLabel;
    ListaParcelasPrazo: TDBGrid;
    AdvSmoothPanel4: TAdvSmoothPanel;
    LblInstrucoes: TRxLabel;
    EntradaDados: TEdit;
    AdvSmoothPanel1: TAdvSmoothPanel;
    LblTotalVenda: TRxLabel;
    LblValorDescontoAcrescimo: TRxLabel;
    LblEntrada: TRxLabel;
    LblRecebido: TRxLabel;
    LblTroco: TRxLabel;
    ValorTotalVenda: TCurrencyEdit;
    ValorDescontoAcrescimo: TCurrencyEdit;
    ValorEntrada: TCurrencyEdit;
    ValorRecebido: TCurrencyEdit;
    ValorTroco: TCurrencyEdit;
    ScrollBoxEsquerda: TScrollBox;
    ScrollBoxDireita: TScrollBox;
    AdvReflectionLabel1: TAdvReflectionLabel;
    shpStatusServidor: TShape;
    lbStatusServidor: TRxLabel;
    SQLClienteCredito: TRxQuery;
    SQLClienteCreditoID: TIntegerField;
    SQLClienteCreditoDATA: TDateTimeField;
    SQLClienteCreditoCLIEA13ID: TStringField;
    SQLClienteCreditoCUPOA13ID: TStringField;
    SQLClienteCreditoVALORCREDITO: TBCDField;
    SQLClienteCreditoVALORDEBITO: TBCDField;
    SQLClienteCreditoHISTORICO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EntradaDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ValorAcrescimoEnter(Sender: TObject);
    procedure ListaParcelasVistaEnter(Sender: TObject);
    procedure ListaParcelasPrazoEnter(Sender: TObject);
    procedure ValorEntradaEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    function  ParcelasPrazoTemNumerario : boolean ;
    procedure TblTicketDadosVendaNewRecord(DataSet: TDataSet);
    procedure BtnF1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure ConerBtn1Click(Sender: TObject);
    procedure btnF11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Tempo, TempoLimite, TempoIntervalo, MesParcelaTemp, AnoParcelaTemp : integer;

    HoraInicial, HoraAtual : TDateTime;
    HoraInicialStr, HoraAtualStr: String;
    MsgBloqueioVenda,
    CodNextContaRec,
    DiaVctoCartaoCliente  : string ;
    NumParc, NumParcPlanoVariavel, NroIt, ProxCod,
    CodNextPVContaRec, I  : Integer  ;
    TotalRetorno, VlrEntr, VlrJuro, VlrAcresc, VlrTxCred, TotalVistaAut, ValorCartaoFidelizacao,
    ValorPrazo, ValorCartaoVista, ValorCartaoPrazo : double ;
    DescTotVenda, ForcaDescTotVenda , FechandoVenda, SairRec, Gravou, SolicitarLiberacao : boolean ;
    DataVctoCartao : TDateTime;
    Dia,Mes,Ano,AnoVctoConvenio : Word;
    procedure OnPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure GravarCaixaPrazo ;
    procedure GravarMontanteCaixa ;
    function  InformarDadosCheque : boolean ;
    //ORCAMENTO
    function  GravarOrcamento : boolean ;
    function  GravarItensOrcamento : boolean ;
    function  GravarNumerarioAPrazoOrcamento : boolean ;
    //CUPOM

    function  BloquearVenda : boolean ;
    function  VerificandoTotalVenda : Double ;
    function  Pontos(NumPOntos : Integer) : string ;
    function  VerificaCartaoCredito : Boolean;

  public
    { Public declarations }
    ParcelaVistaCartao,
    ParcelaPrazoCartao,
    NomeCartao,
    ProvedorCartao,
    NomeNumerarioCartao,
    DataTransacaoCartao,
    HoraTransacaoCartao,
    NSUProvedorCartao,
    NSUInstituicaoCartao,
    NumeroLiberacaoOk,
    Msg, NomeNumerario, NomeNumerarioDaruma345,
    RetornoCampoUsuario,
    TermCod, PrvCod, Tipo_Orc_Ped  : string;
    IncrementaNroCheque,
    TemNumerarioCartaoVista,
    TemNumerarioCartaoPrazo,
    FechouCupomFiscal, AbrirTelaCliente : boolean ;
    Tecla : Word;
    VlrTotalOriginal, ValorEntradaAut, VlrTotJuroDia, PercJuroDia, VlrRetConfig_SldCad : Double;
    Ndias : TDateTime;
    //PRÉ-VENDA
    function  GravarPreVenda : boolean ;
    function  GravarItensPreVenda : boolean ;
    function  GravarNumerarioAVistaPreVenda : boolean ;
    function  GravarNumerarioAPrazoPreVenda : boolean ;

    function  GravarCupom : boolean ;
    function  GravarItensCupom : boolean ;
    function  GravarNumerarioAVistaCupom : boolean ; // Nesta Funct esta o lancto no mov.Caixa dos Numerarios a Vista
    function  GravarNumerarioAPrazoCupom : boolean ;

    function  TemInformacaoPendente : boolean ;
    procedure PreparaEstadoFech(Estado : string) ;
    procedure AtualizaDadosPlanoNumerario(Sender: TObject) ;
    function  ImprimeConfissaoDividaNAOFISCAL(Impressora,Porta : String) : Boolean;
  end ;

var
  FormTelaFechamentoVenda: TFormTelaFechamentoVenda ;

implementation

uses TelaItens, TelaConsultaRapidaCliente, DataModulo,
     TelaConsultaRapidaVendedor, TelaConsultaRapidaPlano,
     TelaConsultaRapidaNumerario, TelaTeclasAtalhoTelaFechamentoVenda,
     ECFCheckout, TelaDadosCheque, UnitCheckoutLibrary, BemaFi32, Daruma_Framework_FISCAL,
     TelaImpressaoPreVenda, CadastroCliente, TelaImpressaoCarne, TelaCadastroDadosVenda, TelaImpressaoDadosVenda, TelaTipoDescontoItem,
     ImportarPreVenda, TelaFechamentoOrcamento, TelaDadosCliente, TelaCadastroObs, UnitLibrary, TelaConsultaLiberacaoCredito, DataModuloTemplate,
     IMPNAOFISCAL, TelaDadosCartaoCreditoManual, TelaTroco, TelaAssistenteLancamentoContasReceber, TelaAssistenteLancamentoPlanoVariavelCheckout,
     TelaConsultaRapidaDependente, LeitorCodigoBarrasCheckout, TelaGeracaoXMLVendas, TelaDataEntrega;

{$R *.DFM}
procedure TFormTelaFechamentoVenda.FormCreate(Sender: TObject);
var i : integer ;
begin
  {Ajustar paineis na Tela}
  Width    := Screen.Width;
  Height   := Screen.Height;
  ScrollBoxEsquerda.Width := (Screen.Width - ScrollBoxPrincipal.Width) div 2;

  if DM.SQLTerminalAtivo.FieldByName('TERMCTIPO').Value = 'C' then
    begin
      BtnF11.Visible := True;
    end;
  VarValorTroco    := 0;
  VarValorRecebido := 0;
  ValorCartaoFidelizacao := 0;
  TempoLimite := DM.SQLTerminalAtivo.FieldByName('TERMITMPLIMITESERV').AsInteger;
  TempoIntervalo := DM.SQLTerminalAtivo.FieldByName('TERMIINTERVALOSERV').AsInteger;
  if not SQLProvedorCartao.Active then SQLProvedorCartao.Open;
  FinalizacaodeVenda  := False;
  AbrirTelaCliente    := False;
  //ESTA VARIAVEL SERA USADA PARA COMO BONUS DE RETORNO DE CONSIGNACAO + SALDO CADERNO
  VlrRetConfig_SldCad := 0 ;
  //SE O VALOR DE RETORNO DE CONSIGNAÇÃO + SALDO CADERNO FOR MAIOR QUE A VENDA
  //O CLIENTE NÃO IRÁ PAGAR NADA ENTÃO DEVE ZERAR A VARIAVEL PARA QUE A ROTINA
  //NO FORMACTIVATE FECHE A VENDA AUTOMATICAMENTE
  {if VlrRetConfig_SldCad > FormTelaItens.CurSubTotal.Value then
     VlrRetConfig_SldCad := 0 ;}
  if VlrRetConfig_SldCad > FormTelaItens.CurSubTotal.Value then
     VlrRetConfig_SldCad := FormTelaItens.CurSubTotal.Value ;

  ValorDiminuirAcresc := 0 ;

  IncrementaNroCheque := false ;
  FechandoVenda       := false ;

  VlrTxCred := 0 ;

  if (VlrBonusTroca + VlrRetConfig_SldCad) > 0 then
    LblTotalVenda.Caption := 'TOTAL À PAGAR' ;

  if VlrDescPromoImportado > 0 then
    begin
      LblValorDescontoAcrescimo.Caption := 'DESCONTO' ;
      LblValorDescontoAcrescimo.Refresh ;
      ValorDescontoAcrescimo.Value := VlrDescPromoImportado;
    end;

  ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value - VlrDescPromoImportado -
                           (VlrBonusTroca + VlrRetConfig_SldCad) ;

  VlrTotalOriginal      := ValorTotalVenda.Value;

  LblCodigoCliente.Caption  := '' ;
  LblNomeCliente.Caption    := '' ;
  LblNomeVendedor.Caption   := '' ;
  LblNomePlano.Caption      := '' ;
  LblInstrucoes.Caption     := '' ;
  EstadoFechVendaAnt        := '' ;
end ;

procedure TFormTelaFechamentoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.TblPedidoCab.Close;
  DM.TblPedidoItens.Close;
  DM.TblPedidoFinan.Close;

  ValorDiminuirAcresc := 0;
  ClienteCadastro := '';
  SolicitarLiberacao := False;
  Action := caFree;
end ;

procedure TFormTelaFechamentoVenda.EntradaDadosKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  TotNumECF   : string ;
  Valor1, Valor2, ValorDevido : double ;
  DiaVctoConvenio, MesVctoConvenio, MesVctoConvenioAnt, DataConevio : String;
  InicioCompraConvenio, FimCompraConveio, PrimeiraParcela, Ndias : TDateTime;
  TamanhoArray, Tipo, DifMes, MesInicioCompra : Integer;
  RetornoUser : TInfoRetornoUser;
  ImprimeConfDivida:Boolean;
begin
  if (Key = VK_ESCAPE) and (EstadoFechVenda = FinalizandoVenda) then
    begin
      if Pergunta('Não', '* * * TEM CERTEZA QUE DESEJA CANCELAR ESTA VENDA ? * * *') then
        begin
          if not FileExists('SemTransacao.Arq') then
            if DM.DB.InTransaction then
              DM.DB.Rollback ;
          if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
            if DM.SQLUsuario.FieldByName('USUACCANCVENDA').AsString <> 'S' then
              if Pergunta('SIM','Você não tem permissão para cancelar venda. Deseja Informar Outro Usuário?') then
                begin
                  // MANDA DADOS DISPLAY TECLADO
                  IF TecladoReduzidoModelo = 'TEC44DIS' THEN
                    EnviaTecladoTextoDisplay44('Sem permissao para cancelar venda','');
                  IF TecladoReduzidoModelo = 'TEC65' THEN
                    EnviaTecladoTextoDisplay65('Sem permissao para cancelar venda','');
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACCANCVENDA',RetornoUser);
                  EntradaDados.Clear;
                  EstadoFechVendaAnt := '';
                  EstadoFechVenda := FinalizandoVenda;
                  PreparaEstadoFech(EstadoFechVenda);
                  if RetornoCampoUsuario <> 'S' then
                    Exit;
                end
              else
                Exit;

          ContinuarPreVenda       := False ;
          ReativarPreVenda        := False ;
          vImportarPreVenda       := False ;
          ImportandoPreVenda      := False ;
          DescTotVenda            := false ;
          ForcaDescTotVenda       := False ;

          FormTelaItens.CancelarVenda ;
          FormTelaItens.LimparVariaveis ;
          FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda' ;
          FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;
        end
      else
        exit;

      if not FileExists('Confirma.txt') then
        if (ECFAtual <> '') and (copy(ECFAtual,1,4) <> 'NFCE') then
          if not CancelarCupomFiscal(ECFAtual, PortaECFAtual) then
            exit ;


      ImpCupomAutomatico := False;
      Close ;
      exit ;
    end ;
  //ESTA ROTINA FOI COLOCADA PARA PODER TECLAR SETA PARA BAIXO E ABRIR AS LISTAS
  //DE PLANO, VENDENDOR, NUMERÁRIO A VISTA E A PRAZO
  if (Key = VK_Down) then
    begin
      if EstadoFechVenda = InformandoNumerarioVista then
        begin
          Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "V" or NUMECVISTAPRAZO = "B"' ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;

          FormTelaConsultaRapidaNumerario.ShowModal ;
          EntradaDados.text := IntToStr(NumerarioAtual) ;
          EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
        end ;

      if EstadoFechVenda = InformandoNumerarioPrazo then
        begin
          Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "P" or NUMECVISTAPRAZO = "B"' ;
          FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;

          FormTelaConsultaRapidaNumerario.ShowModal ;
          EntradaDados.text := IntToStr(NumerarioAtual) ;
          EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
        end ;

      if EstadoFechVenda = InformandoVendedor then
        begin
          Application.CreateForm(TFormTelaConsultaRapidaVendedor, FormTelaConsultaRapidaVendedor) ;
          FormTelaConsultaRapidaVendedor.ShowModal ;
          EntradaDados.text := IntToStr(VendedorVenda) ;
          EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
          exit ;
        end ;

      if EstadoFechVenda = InformandoPlano then
        begin
          Application.CreateForm(TFormTelaConsultaRapidaPlano, FormTelaConsultaRapidaPlano);
          FormTelaConsultaRapidaPlano.ShowModal;
          EntradaDados.text := IntToStr(PlanoVenda);
          EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
          exit;
        end;

      if EstadoFechVenda = InformandoCliente then
        begin
          if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
            if DM.SQLUsuario.FieldByName('USUACPVERCLICASH').AsString <> 'S' then
              begin
                if Pergunta('SIM','Você não tem permissão para abrir Cadastro de Clientes. Deseja Informar Outro Usuário?') then
                  begin
                    RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPVERCLICASH',RetornoUser);
                    if RetornoCampoUsuario <> 'S' then
                      begin
                        EntradaDados.SelectAll ;
                        Exit;
                      end
                    else
                      begin
                        Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente);
                        FormTelaConsultaRapidaCliente.ShowModal;
                        EntradaDados.text := ClienteVenda;
                        EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
                        exit;
                      end;
                  end;
              end
            else
              begin
                Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente);
                FormTelaConsultaRapidaCliente.ShowModal;
                EntradaDados.text := ClienteVenda;
                EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
                exit;
              end;
        end;
    end;

  if (Key = VK_Return) then
    begin
      // Teste para nao colocar sugeira nos totais de venda
      if EstadoFechVenda = FinalizandoVenda then
        if entradadados.Text <> '' then
          entradadados.Text := '';

      //INFORMADO CLIENTE
      if EstadoFechVenda = InformandoCliente then
        begin
          if  ((EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'FLOAT')) or (LeitorCodigoBarras <> ''))
          and (AbrirTelaCliente) then
            begin
              Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente) ;
              FormTelaConsultaRapidaCliente.ShowModal ;
              EntradaDados.text := ClienteVenda ;
            end ;
          if  (EntradaDados.text <> '') and not IsNumeric(EntradaDados.Text, 'FLOAT') then
            begin
              Application.CreateForm(TFormTelaConsultaRapidaCliente, FormTelaConsultaRapidaCliente) ;
              FormTelaConsultaRapidaCliente.VALOR.Text := EntradaDados.text ;
              FormTelaConsultaRapidaCliente.ShowModal ;
              EntradaDados.text := ClienteVenda ;
            end ;
          if (Length(EntradaDados.Text) > 0) and (Length(EntradaDados.Text) < 11) then
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from CLIENTE') ;
              DM.SQLTemplate.SQL.Add('where CLIECATIVO="S" and ') ;
              DM.SQLTemplate.SQL.Add('CLIEA35NROCARTCRED = "' + EntradaDados.text + '"') ;
              DM.SQLTemplate.Open ;
            end;
          if Length(EntradaDados.Text) = 11 then
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from CLIENTE') ;
              DM.SQLTemplate.SQL.Add('where CLIECATIVO="S" and ') ;
              DM.SQLTemplate.SQL.Add('CLIEA11CPF = "' + EntradaDados.text + '"') ;
              DM.SQLTemplate.Open ;
            end;
          if Length(EntradaDados.Text) = 12 then
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from CLIENTE') ;
              DM.SQLTemplate.SQL.Add('where CLIECATIVO="S" and ') ;
              DM.SQLTemplate.SQL.Add('CLIEA13ID = "0' + EntradaDados.text + '"') ;
              DM.SQLTemplate.Open ;
            end ;
          if Length(EntradaDados.Text) = 13 then
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from CLIENTE') ;
              DM.SQLTemplate.SQL.Add('where CLIECATIVO="S" and  ') ;
              DM.SQLTemplate.SQL.Add('CLIEA13ID = "' + EntradaDados.text + '"') ;
              DM.SQLTemplate.Open ;
            end ;
          if Length(EntradaDados.Text) = 14 then
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from CLIENTE') ;
              DM.SQLTemplate.SQL.Add('where CLIECATIVO="S" and ') ;
              DM.SQLTemplate.SQL.Add('CLIEA14CGC = "' + EntradaDados.text + '"') ;
              DM.SQLTemplate.Open ;
            end ;

          DM.SQLTemplate.First ;
          if not DM.SQLTemplate.EOF then
            begin
              if not ImportandoPreVenda then
                begin
                  NomeClienteVenda     := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString ;
                  EnderecoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString +','+
                                          DM.SQLTemplate.FieldByName('CLIEA5NROENDRES').AsString ;
                  CidadeClienteVenda   := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString ;
                  BairroClienteVenda   := DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString ;
                  FoneClienteVenda     := DM.SQLTemplate.FieldByName('CLIEA15FONE1').AsString ;
                  BairroClienteVenda   := DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString ;
                  vCLIEINDIACHQSJURO   := DM.SQLTemplate.FieldByName('CLIEINDIACHQSJURO').AsInteger ;
                end;

              if DM.SQLTemplate.FieldByName('CLIEA5FISJURID').AsString = 'F' then
                begin
                  if DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString <> '' then
                    begin
                      DocumentoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString;
                      CPFCGCClienteVenda    := DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString;
                    end
                  else
                    if DM.SQLTemplate.FieldByName('CLIEA10RG').AsString <> '' then
                      DocumentoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA10RG').AsString
                    else
                      if DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString <> '' then
                        DocumentoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString ;
                end
              else
                begin
                  if DM.SQLTemplate.FieldByName('CLIEA14CGC').AsString <> '' then
                    begin
                      DocumentoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA14CGC').AsString;
                      CPFCGCClienteVenda    := DM.SQLTemplate.FieldByName('CLIEA14CGC').AsString;
                    end
                  else
                    if DM.SQLTemplate.FieldByName('CLIEA20IE').AsString <> '' then
                      DocumentoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA20IE').AsString
                    else
                      if DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString <> '' then
                        DocumentoClienteVenda := DM.SQLTemplate.FieldByName('CLIEA30OUTROSDOC').AsString ;
                end;
              ClienteVenda := DM.SQLTemplate.FieldByName('CLIEA13ID').AsString ;
              LblCodigoCliente.Caption := DM.SQLTemplate.FieldByName('CLIEA13ID').AsString ;
              if DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString <> '' then
                LblNomeCliente.Caption := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString
              else
                LblNomeCliente.Caption := DM.SQLTemplate.FieldByName('CLIEA60NOMEFANT').AsString;

              if ImportandoPreVenda then
                LblNomeCliente.Caption := NomeClienteVenda;

            end
          else
            begin
              EntradaDados.SelectAll ;
              Informa('Cliente não encontrado !');
              exit ;
            end ;

          if PlanoVenda > 0 then
            try
              PercJuroDia := StrToFloat(dm.sqllocate('PLANORECEBIMENTO','PLRCICOD','PLRCN2PERCJURDIA',IntToStr(PlanoVenda)));
            except
              PercJuroDia := 0;
            end;
          if PercJuroDia > 0 then
            begin
              if not SQLParcelasPrazoVendaTemp.Active then SQLParcelasPrazoVendaTemp.Open;
              if (SQLParcelasPrazoVendaTemp.RecordCount = 1) and ((SQLParcelasPrazoVendaTempTIPOPADR.Value = 'CRD') or (SQLParcelasPrazoVendaTempTIPOPADR.Value = 'CHQP')) then
                begin
                  Ndias := (SQLParcelasPrazoVendaTempDATAVENCTO.Value-Date-vCLIEINDIACHQSJURO);
                  if Ndias < 0 then
                    Ndias := 0;
                  VlrTotJuroDia := SQLParcelasPrazoVendaTempVALORVENCTO.Value * Ndias * PercJuroDia/100;

                  SQLParcelasPrazoVendaTemp.Edit ;
                  SQLParcelasPrazoVendaTempVALORVENCTO.Value := SQLParcelasPrazoVendaTempVALORVENCTO.Value + VlrTotJuroDia;
                  SQLParcelasPrazoVendaTemp.Post ;

                  if VlrTotJuroDia > 0 then
                    LBTotalJuroDia.Value := VlrTotJuroDia
                  else
                    LBTotalJuroDia.Value := 0;

                  ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value + LBTotalJuroDia.Value +
                                           VlrTxCrediario.Value -
                                           (VlrBonusTroca + VlrRetConfig_SldCad) ;

                end;
            end;

          EntradaDados.Clear ;
          if EstadoFechVendaAnt = '' then
            begin
              if FormTelaItens.rxVendedor.Caption <> '' then
                LblNomeVendedor.Caption := FormTelaItens.rxVendedor.Caption;
              if LblNomeVendedor.Caption = '' then
                EstadoFechVenda := InformandoVendedor
              else
                TemInformacaoPendente ;
            end
          else
            EstadoFechVenda := EstadoFechVendaAnt ;

          if EstadoFechVendaAnt = FinalizandoVenda then
            begin
              EstadoFechVendaAnt := '';
              EstadoFechVenda := FinalizandoVenda;
              PreparaEstadoFech(EstadoFechVenda) ;
            end
          else
            begin
              EstadoFechVendaAnt := '';
              if FormTelaItens.rxVendedor.Caption <> '' then
                LblNomeVendedor.Caption := FormTelaItens.rxVendedor.Caption;
              if LblNomeVendedor.Caption = '' then
                begin
                  EstadoFechVenda := InformandoVendedor;
                  PreparaEstadoFech(EstadoFechVenda) ;
                end;
            end;

          exit ;
        end ;
      //INFORMANDO VENDEDOR
      if EstadoFechVenda = InformandoVendedor then
        begin
          if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'INTEGER')) then
            begin
              if (not IsNumeric(EntradaDados.Text, 'INTEGER')) and (SQLLocate('VENDEDOR', 'VENDA60NOME', 'VENDICOD', '"' + EntradaDados.Text + '"') <> '') then
                begin
                  EntradaDados.text := SQLLocate('VENDEDOR', 'VENDA60NOME', 'VENDICOD', '"' + EntradaDados.Text + '"') ;
                end
              else
                begin
                  Application.CreateForm(TFormTelaConsultaRapidaVendedor, FormTelaConsultaRapidaVendedor) ;
                  FormTelaConsultaRapidaVendedor.ShowModal ;
                  EntradaDados.text := IntToStr(VendedorVenda) ;
                end ;
            end ;

          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select * from VENDEDOR') ;
          DM.SQLTemplate.SQL.Add('where') ;
          DM.SQLTemplate.SQL.Add('VENDICOD = ' + EntradaDados.text) ;
          DM.SQLTemplate.Open ;

          DM.SQLTemplate.First ;
          if not DM.SQLTemplate.EOF then
            begin
              VendedorVenda           := DM.SQLTemplate.FieldByName('VENDICOD').AsInteger ;
              LblNomeVendedor.Caption := DM.SQLTemplate.FieldByName('VENDA60NOME').AsString ;
              FormTelaItens.rxVendedor.Caption := LblNomeVendedor.Caption ;
            end
          else
            begin
              EntradaDados.SelectAll ;
              Informa('Vendedor não encontrado !') ;
              exit ;
            end ;

          EntradaDados.Clear ;

          if EstadoFechVendaAnt = '' then
            begin
              if TemInformacaoPendente then
                exit
              else
                EstadoFechVenda := FinalizandoVenda ;
            end
          else
            EstadoFechVenda := EstadoFechVendaAnt ;

          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //INFORMANDO PLANO
      if EstadoFechVenda = InformandoPlano then
        begin
          if (EntradaDados.text = '') or (not IsNumeric(FormTelaFechamentoVenda.EntradaDados.Text, 'INTEGER')) then
            begin
              Application.CreateForm(TFormTelaConsultaRapidaPlano, FormTelaConsultaRapidaPlano) ;
              FormTelaConsultaRapidaPlano.ShowModal ;
              EntradaDados.text := IntToStr(PlanoVenda) ;
            end ;

          SQLPlanoRecebimento.Close ;
          SQLPlanoRecebimento.MacroByName('MFiltro').Value := 'PLRCICOD = ' + EntradaDados.text ;
          SQLPlanoRecebimento.Open ;
          SQLPlanoRecebimentoParcela.Close ;
          SQLPlanoRecebimentoParcela.MacroByName('MFiltro').Value := 'PLRCICOD = ' + EntradaDados.text ;
          SQLPlanoRecebimentoParcela.Open ;

          if (VlrDescPromoImportado = 0) and (LblValorDescontoAcrescimo.Caption = 'DESCONTO') then
            begin
              if SQLPlanoRecebimentoPLRCN2PERCDESC.Value = 0 then
                begin
                  {adilson jonas modas quando importava uma venda com desc e depois trocava no cx pra plano sem desc, se mantia o desc anterior}
                  ValorTotalVenda.value := ValorTotalVenda.value + ValorDescontoAcrescimo.Value;
                  ValorDescontoAcrescimo.Value := ValorDescontoAcrescimo.Value; //adilson VlrDescPromoImportado;
                  ValorDescontoAcrescimo.Update;
                end
              else
                begin
                  ValorDescontoAcrescimo.Value := (ValorTotalVenda.value * (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100)) ;
                  ValorTotalVenda.value := ValorTotalVenda.value + ValorDescontoAcrescimo.Value;
                  ValorDescontoAcrescimo.Update;
                  ValorTotalVenda.Update;
                end;
            end;

          if (FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCCDFIX.Value = 'N') and
             (SQLPlanoRecebimentoParcela.Recordcount = 0) then
            begin
              EntradaDados.SelectAll ;
              Informa('Este Plano não possui parcelas!') ;
              exit ;
            end ;

          // Testa se o plano solicita senha.
          if SQLPlanoRecebimentoPLRCCSOLICITASENHA.Value = 'S' then
            begin
              // Testa se o usuario corrente NAO pode vender nesses planos
              if SQLLocate('USUARIO','USUAICOD','USUACPLANOCOMSENHA', IntToStr(UsuarioCorrente)) <> 'S' then
                begin
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPLANOCOMSENHA',RetornoUser);
                  if RetornoCampoUsuario <> 'S' then
                    begin
                      EntradaDados.SelectAll ;
                      Informa('O Usuario não tem poder para vender com esse plano!') ;
                      exit ;
                    end;
                end;
            end;

          // Limpar tabelas temp Vista e Prazo do Financeiro da Venda
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
          DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
          DM.SQLTemplate.ExecSQL ;
          SQLParcelasVistaVendaTemp.Close ;
          SQLParcelasVistaVendaTemp.SQL.Clear ;
          SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
          SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
          SQLParcelasVistaVendaTemp.SQL.Add('order by NROITEM') ;
          SQLParcelasVistaVendaTemp.Open ;
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
          DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
          DM.SQLTemplate.ExecSQL ;
          SQLParcelasPrazoVendaTemp.Close ;
          SQLParcelasPrazoVendaTemp.SQL.Clear ;
          SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP') ;
          SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
          SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA') ;
          SQLParcelasPrazoVendaTemp.Open ;

          // Ver se é plano Variavel
           if (FormTelaFechamentoVenda.SQLPlanoRecebimentoPLRCCDFIX.Value = 'V') then
             begin
               Application.CreateForm(TFormTelaAssistenteLancamentoPlanoVariavelCheckout,FormTelaAssistenteLancamentoPlanoVariavelCheckout);
               FormTelaAssistenteLancamentoPlanoVariavelCheckout.edtTotal.Text := FormatCurr('##0.00',ValorTotalVenda.value);
               FormTelaAssistenteLancamentoPlanoVariavelCheckout.edtTotal.ReadOnly := True;
               FormTelaAssistenteLancamentoPlanoVariavelCheckout.edtTotal.TabStop  := False;
               FormTelaAssistenteLancamentoPlanoVariavelCheckout.ShowModal;
               if FormTelaAssistenteLancamentoPlanoVariavelCheckout.ModalResult = MrOk then
                 begin
                   NumParcPlanoVariavel := 1;
                   FormTelaAssistenteLancamentoPlanoVariavelCheckout.RxTable.First;
                   While not FormTelaAssistenteLancamentoPlanoVariavelCheckout.RxTable.Eof Do
                     begin
                       if FormTelaAssistenteLancamentoPlanoVariavelCheckout.RxTableEMI.Value = FormTelaAssistenteLancamentoPlanoVariavelCheckout.RxTableVENCI.Value then
                         begin
                           NumParcPlanoVariavel := NumParcPlanoVariavel-1;
                           VlrEntr := FormTelaAssistenteLancamentoPlanoVariavelCheckout.RxTableVALOR.Value;
                         end
                       else
                         begin
                           SQLParcelasPrazoVendaTemp.Append;
                           SQLParcelasPrazoVendaTempDATAVENCTO.Value   := FormTelaAssistenteLancamentoPlanoVariavelCheckout.RxTableVENCI.Value;
                           SQLParcelasPrazoVendaTempTERMICOD.Value     := TerminalAtual;
                           SQLParcelasPrazoVendaTempNROPARCELA.Value   := NumParcPlanoVariavel;
                           SQLParcelasPrazoVendaTempVALORVENCTO.Value  := FormTelaAssistenteLancamentoPlanoVariavelCheckout.RxTableVALOR.Value;
                           SQLParcelasPrazoVendaTempNUMEICOD.Value     := dm.SQLTerminalAtivo.FieldByName('TERMINUMEPRAZO').Value;
                           // SQLParcelasPrazoVendaTempTIPOPADR.Value     :=
                           SQLParcelasPrazoVendaTemp.Post;
                         end;
                       NumParcPlanoVariavel := NumParcPlanoVariavel+1;
                       FormTelaAssistenteLancamentoPlanoVariavelCheckout.RxTable.Next;
                     end;
                   NumParcPlanoVariavel := 0;
                   if ValorTotalVenda.Value <> FormTelaAssistenteLancamentoPlanoVariavelCheckout.edttotal.Value then
                     begin
                       ValorDescontoAcrescimo.value := ValorTotalVenda.value - FormTelaAssistenteLancamentoPlanoVariavelCheckout.edttotal.Value;
                       ForcaDescTotVenda := True;
                     end;
                   FormTelaAssistenteLancamentoPlanoVariavelCheckout.Close;
                   FormTelaAssistenteLancamentoPlanoVariavelCheckout.Free;
                 end
               else
                 begin
                   FormTelaAssistenteLancamentoPlanoVariavelCheckout.Close;
                   FormTelaAssistenteLancamentoPlanoVariavelCheckout.Free;
                   EntradaDados.SelectAll ;
                   Informa('Operação Cancelada pelo Usuário!') ;
                   Exit ;
                 end;
             end;

          SQLPlanoRecebimento.First ;
          if not SQLPlanoRecebimento.EOF then
            begin
              PlanoVenda           := SQLPlanoRecebimentoPLRCICOD.AsInteger ;
              LblNomePlano.Caption := SQLPlanoRecebimentoPLRCA60DESCR.AsString ;

              if (SQLPlanoRecebimentoPLRCN2PERCDESC.Value > 0) and (not ForcaDescTotVenda) then
                begin
                  if DescTotVenda then
                    begin
                     // Informa('O plano escolhido possui DESCONTO, ' +
                     //           'porém este desconto não será aplicado pois já foi dado um desconto pelo operador !') ;
                    end
                  else
                    begin
                      if ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) then
                        ValorDescontoAcrescimo.Value := ((FormTelaItens.CurSubTotal.Value - VlrBonusTroca) *
                                                         (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100))
                      else
                        ValorDescontoAcrescimo.Value := ((FormTelaItens.CurSubTotal.Value - VlrBonusTroca) *
                                                         (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100)) ;

                      LblValorDescontoAcrescimo.Caption := 'DESCONTO' ;
                      LblValorDescontoAcrescimo.Refresh ;
                    end ;
                end ;

              VlrTxCrediario.Value := 0 ;
              //SUBTRAIR DESCONTO NO PLANO SE NAO ESTIVER IMPORTANDO PREVENDA
              if (not ImportandoPreVenda) and (not ForcaDescTotVenda) then
                ValorTotalVenda.Value := (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad)) -
                                         ((FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad)) *
                                         (SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100))
              else
                ValorTotalVenda.Value := (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value) - (VlrBonusTroca + VlrRetConfig_SldCad + ValorDescontoAcrescimo.Value);

              if ValorEntrada.Value = 0 then
                ValorEntrada.Value := ValorEntrada.Value +
                                      ((SQLPlanoRecebimentoPLRCN2PERCENTR.Value/100) *
                                        (ValorTotalVenda.Value-(0+((SQLPlanoRecebimentoPLRCN2PERCDESC.Value/100)*ValorTotalVenda.Value)))) ;

              CriaParcelas(SQLParcelasPrazoVendaTemp,
                           SQLPlanoRecebimento,
                           SQLPlanoRecebimentoParcela,
                           ValorEntrada.Value,
                           0,
                           TiraPontoMilhar(ValorTotalVenda.Value),
                           PlanoVenda,
                           Date,
                           'TpRecVistaTel', 'TpRecPrazoTel', 'TpRecVistaPDV', 'TpRecPrazoPDV', 'Documento',
                           ValorDiminuirAcresc,
                           VlrJuro,
                           VlrAcresc,
                           VlrEntr,
                           VlrTxCred) ;

              SQLNumerario.Close;
              SQLNumerario.Open;

              if ConvenioVenda > 0 then
                begin
                  SQLConvenio.Close;
                  SQLConvenio.ParamByName('CONVICOD').AsInteger := ConvenioVenda;
                  SQLConvenio.Open;
                  if SQLConvenio.FieldByName('CONVDVENC').AsString = '' then
                    begin
                      Informa('O Dia de Vencimento do Convenio não foi informado, favor verificar!');
                      Exit;
                    end;
                  if SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime = 0 then
                    begin
                      Informa('O Dia de Inicio do Periodo de Compra do Convenio não foi informado, favor verificar!');
                      Exit;
                    end;
                  if SQLConvenio.FieldByName('CONVDFIMCOMPRA').AsDateTime = 0 then
                    begin
                      Informa('O Dia de Termino do Período de Compra do Convenio não foi informado, favor verificar!');
                      Exit;
                    end;

                  InicioCompraConvenio := SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime;
                  FimCompraConveio     := SQLConvenio.FieldByName('CONVDFIMCOMPRA').AsDateTime;
                  DiaVctoConvenio      := SQLConvenio.FieldByName('CONVDVENC').AsString;
                  if DiaVctoConvenio <> '' then
                    begin
                      SQLParcelasPrazoVendaTemp.First;
                      MesInicioCompra    := StrToInt(FormatDateTime('mm',SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime));
                      while not SQLParcelasPrazoVendaTemp.Eof do
                        begin
                          MesVctoConvenio    := FormatDateTime('mm',SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime);
                          MesVctoConvenioAnt := MesVctoConvenio;
                          if (Date >= SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime) and
                             (StrToInt(FormatDateTime('mm',Now)) = MesInicioCompra) and
                             (Date <= SQLConvenio.FieldByName('CONVDFIMCOMPRA').AsDateTime) then
                            begin
                             if MesInicioCompra = StrToInt(FormatDateTime('mm',Date)) then
                               MesVctoConvenio := FormatDateTime('mm',IncMonth(SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime,1))
                             else
                               MesVctoConvenio := FormatDateTime('mm',SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime);
                            end;
{                          else
                            if (Date >= SQLConvenio.FieldByName('CONVDINICIOCOMPRA').AsDateTime) and
                               (StrToInt(FormatDateTime('dd',Now)) <= UltiDiaMes(FormatDateTime('mm',Now),FormatDateTime('yyyy',Now))) and
                               (Date <= SQLConvenio.FieldByName('CONVDFIMCOMPRA').AsDateTime) then
                              begin
                                MesVctoConvenio := FormatDateTime('mm',IncMonth(SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime,1));
                              end;}
                          SQLParcelasPrazoVendaTemp.Edit;
                          DecodeDate(SQLParcelasPrazoVendaTempDATAVENCTO.AsDateTime,AnoVctoConvenio,Mes,Dia);
                          if MesVctoConvenioAnt =  '12' then
                            Inc(AnoVctoConvenio);
                          DataConevio := DiaVctoConvenio + '/' + MesVctoConvenio + '/' + Format('%.4d',[AnoVctoConvenio]);
                          SQLParcelasPrazoVendaTempDATAVENCTO.AsString := DataConevio;
                          SQLParcelasPrazoVendaTemp.Post;
                          SQLParcelasPrazoVendaTemp.Next;
                        end;
                    end;
                end;
              if VlrTxCred > 0 then
                begin
                  LblTxCrediario.Visible := true;
                  VlrTxCrediario.Visible := true;
                  VlrTxCrediario.Value   := VlrTxCred;
                end
              else
                begin
                  LblTxCrediario.Visible := false;
                  VlrTxCrediario.Visible := false;
                  VlrTxCrediario.Value   := 0;
                end;

              ListaParcelasPrazo.DataSource.DataSet.Close;
              ListaParcelasPrazo.DataSource.DataSet.Open;
              ListaParcelasPrazo.Refresh;

              if ValorEntrada.Value = 0 then
                ValorEntrada.Value := VlrEntr;
              //ACRESCENTAR TAXA DE CREDIÁRIO E ACRÉSCIMO
              ValorTotalVenda.Value := ValorTotalVenda.Value +
                                       SQLPlanoRecebimentoPLRCN2TXCRED.Value +
                                       VlrAcresc;

              if (DescTotVenda) and (VlrAcresc > 0) then
                begin
                  Informa('O plano escolhido possui ACRÉSCIMO, ' +
                          'porém você concedeu um desconto e não é possível mandar Desconto e Acréscimo simultaneamente para o ECF. O plano deverá ser trocado!') ;

                  ValorEntrada.Value    := 0;
                  ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value +
                                           VlrTxCrediario.Value -
                                           ValorDescontoAcrescimo.Value -
                                           (VlrBonusTroca + VlrRetConfig_SldCad) ;

                  EstadoFechVenda := InformandoPlano;
                  PreparaEstadoFech(EstadoFechVenda);
                  EntradaDados.Clear;
                  exit;
                end;

              if ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) and (VlrAcresc > 0) then
                begin
                  Informa('O plano escolhido possui ACRÉSCIMO, ' +
                          'porém este cupom é de troca e não é possível mandar Desconto e Acréscimo simultaneamente para o ECF. O plano deverá ser trocado!') ;

                  EstadoFechVenda := InformandoPlano ;
                  PreparaEstadoFech(EstadoFechVenda) ;
                  EntradaDados.Clear ;
                  exit ;
                end ;

              if VlrAcresc > 0 then
                begin
                  ValorDescontoAcrescimo.Value      := VlrAcresc ;
                  LblValorDescontoAcrescimo.Caption := 'ACRÉSCIMO' ;
                  LblValorDescontoAcrescimo.Refresh ;
                end
              else
                if LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO' then
                  ValorDescontoAcrescimo.Value := 0 ;

              LblEntrada.Caption := 'ENTRADA' ;
              LblEntrada.Refresh ;
              if (ValorEntrada.Value <= ValorTotalVenda.Value) and
                 (SQLParcelasPrazoVendaTemp.RecordCount = 0) then
                begin
                  LblEntrada.Caption := 'SALDO' ;
                  LblEntrada.Refresh ;
                end ;

              if ValorEntrada.Value > 0 then
                begin
                  EstadoFechVenda := InformandoNumerarioVista ;
                  PreparaEstadoFech(EstadoFechVenda) ;
                  EntradaDados.Clear ;
                  EntradaDados.SelectAll ;
                  exit ;
                end ;
            end
          else
            begin
              EntradaDados.SelectAll ;
              Informa('Plano não encontrado !') ;
              exit ;
            end ;

          EntradaDados.Clear ;
          if EstadoFechVendaAnt = '' then
            begin
              if SQLParcelasPrazoVendaTemp.RecordCount = 0 then
                EstadoFechVenda := FinalizandoVenda
              else
                EstadoFechVenda := InformandoNumerarioPrazo ;
            end
          else
            EstadoFechVenda := EstadoFechVendaAnt ;

          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;

      //INFORMANDO NUMERÁRIO A VISTA
      if EstadoFechVenda = InformandoNumerarioVista then
        begin
          if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'INTEGER')) then
            begin
              if (not IsNumeric(EntradaDados.Text, 'INTEGER')) and (SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') <> '') then
                begin
                  EntradaDados.text := SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') ;
                end
              else
                begin
                  Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "V" or NUMECVISTAPRAZO = "B"' ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;

                  FormTelaConsultaRapidaNumerario.ShowModal ;
                  EntradaDados.text := IntToStr(NumerarioAtual) ;
                end ;
            end ;

          NumerarioVista := 0 ;
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select * from NUMERARIO') ;
          DM.SQLTemplate.SQL.Add('where') ;
          DM.SQLTemplate.SQL.Add('NUMEICOD = ' + EntradaDados.text) ;
          DM.SQLTemplate.Open ;

          DM.SQLTemplate.First ;
          if DM.SQLTemplate.EOF then
            begin
              EntradaDados.SelectAll ;
              Informa('Numerário não encontrado !') ;
              exit ;
            end ;

{          if DM.SQLTemplate.FieldByName('NUMECVISTAPRAZO').Value <> 'V' then
            begin
              EntradaDados.SelectAll ;
              Informa('Este não é um numerário a vista!') ;
              exit ;
            end ;}

          NumerarioVista      := StrToInt(EntradaDados.Text) ;
          NumerarioVistaDescr := DM.SQLTemplate.Fieldbyname('NUMEA30DESCR').AsString ;
          TipoPadrao          := DM.SQLTemplate.FieldByName('NUMEA5TIPO').Value ;

          EntradaDados.Clear ;
          EstadoFechVenda := InformandoValorNumerarioVista ;
          PreparaEstadoFech(EstadoFechVenda) ;
          EntradaDados.Text := FormatFloat('##0.00', ValorEntrada.Value - ValorRecebido.Value) ;
          EntradaDados.SelectAll ;
          exit ;
        end ;
      //INFORMANDO VALOR NUMERÁRIO A VISTA
      if EstadoFechVenda = InformandoValorNumerarioVista then
        begin
          EntradaDados.Text := TrocaPontoPorVirgula(EntradaDados.Text) ;
          try
            StrToFloat(EntradaDados.Text) ;
            EntradaDados.SelectAll ;
          except
            Informa('Valor inválido para o Numerário!') ;
            EntradaDados.SelectAll ;
            exit ;
          end ;

          if not (StrToFloat(EntradaDados.Text) > 0) and (ValorBonusTroca.Value = 0)then
            begin
              Informa('Valor deve ser maior que Zero!') ;
              EntradaDados.SelectAll ;
              exit ;
            end ;

          // MANDA DADOS DISPLAY TECLADO
          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
            EnviaTecladoTextoDisplay44('Valor Recebido',EntradaDados.Text);
          IF TecladoReduzidoModelo = 'TEC65' THEN
            EnviaTecladoTextoDisplay65('Valor Recebido',EntradaDados.Text);

          if (TipoPadrao = 'DIN')  or
             (TipoPadrao = 'CHQV') or
             (TipoPadrao = 'CRTF') or
             (TipoPadrao = 'CRT') or
             (TipoPadrao = 'CRD') then
            begin

              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
              DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
              DM.SQLTemplate.SQL.Add('and   NUMEICOD = ' + IntToStr(NumerarioVista)) ;
              DM.SQLTemplate.Open ;
              if DM.SQLTemplate.EOF then
                begin
                  ValorDevido := ValorEntrada.Value - ValorRecebido.Value ;
                  SQLParcelasVistaVendaTemp.Last ;
                  NroIt := SQLParcelasVistaVendaTempNROITEM.Value + 1 ;

                  SQLParcelasVistaVendaTemp.Append ;
                  SQLParcelasVistaVendaTempTERMICOD.Value := TerminalAtual ;
                  SQLParcelasVistaVendaTempNROITEM.Value  := NroIt ;
                  SQLParcelasVistaVendaTempNUMEICOD.Value := NumerarioVista ;
                  Valor1 := StrToFloat(EntradaDados.Text) ;
                  if (Valor1 > ValorDevido) and (ValorDevido > 0) then
                    begin
                      //SQLParcelasVistaVendaTempVALORPARC.Value := StrToFloat(EntradaDados.Text) - (StrToFloat(EntradaDados.Text) - ValorDevido) ;
                      SQLParcelasVistaVendaTempVALORPARC.Value := StrToFloat(EntradaDados.Text);
                    end
                  else
                    SQLParcelasVistaVendaTempVALORPARC.Value := StrToFloat(EntradaDados.Text) ;
                  SQLParcelasVistaVendaTempTIPOPADR.Value    := TipoPadrao ;
                  SQLParcelasVistaVendaTemp.Post ;
                end
              else
                begin
                  SQLParcelasVistaVendaTemp.Close ;
                  SQLParcelasVistaVendaTemp.SQL.Clear ;
                  SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
                  SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                  SQLParcelasVistaVendaTemp.SQL.Add('and   NUMEICOD = ' + IntToStr(NumerarioVista)) ;
                  SQLParcelasVistaVendaTemp.Open ;

                  ValorDevido := ValorEntrada.Value - ValorRecebido.Value ;

                  SQLParcelasVistaVendaTemp.Edit ;
                 // SQLParcelasVistaVendaTempVALORPARC.Value := StrToFloat(EntradaDados.Text) - ValorDevido ;
                 SQLParcelasVistaVendaTempVALORPARC.Value := StrToFloat(EntradaDados.Text) + VarValorRecebido ;

                  SQLParcelasVistaVendaTempTIPOPADR.Value  := TipoPadrao ;
                  SQLParcelasVistaVendaTemp.Post ;
                end ;

              SQLParcelasVistaVendaTemp.Close ;
              SQLParcelasVistaVendaTemp.SQL.Clear ;
              SQLParcelasVistaVendaTemp.SQL.Add('select * from PARCELASVISTAVENDATEMP') ;
              SQLParcelasVistaVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
              SQLParcelasVistaVendaTemp.Open ;

              ValorRecebido.Value := ValorRecebido.Value + StrToFloat(EntradaDados.Text) ;
              VarValorRecebido    := ValorRecebido.Value;
              EntradaDados.Clear ;

              if ValorRecebido.Value >= ValorEntrada.Value then
                begin
                  if EstadoFechVendaAnt = '' then
                    begin
                              if SQLParcelasPrazoVendaTemp.RecordCount = 0 then
                        EstadoFechVenda := FinalizandoVenda
                      else
                        EstadoFechVenda := InformandoNumerarioPrazo ;
                    end
                  else
                    EstadoFechVenda := EstadoFechVendaAnt ;

                  EstadoFechVendaAnt := '' ;
                  PreparaEstadoFech(EstadoFechVenda) ;
                  if (ValorRecebido.Value > ValorEntrada.Value) and (ValorDevido > 0) then
                    begin
                      ValorTroco.Value := ValorRecebido.Value - ValorEntrada.Value ;
                      VarValorTroco    := ValorTroco.Value;
                    end;
                end
              else
                begin
                  EntradaDados.Clear ;
                  if EstadoFechVendaAnt = '' then
                    EstadoFechVenda := InformandoNumerarioVista
                  else
                    EstadoFechVenda := EstadoFechVendaAnt;
                  EstadoFechVendaAnt := '';
                  PreparaEstadoFech(EstadoFechVenda);
                end;

              if VarValorTroco > 0 then
                begin
                  // MANDA DADOS DISPLAY TECLADO
                  IF TecladoReduzidoModelo = 'TEC44DIS' THEN
                    EnviaTecladoTextoDisplay44('Valor Troco',FormatFloat('##0.00', VarValorTroco));
                  IF TecladoReduzidoModelo = 'TEC65' THEN
                    EnviaTecladoTextoDisplay65('Valor Troco',FormatFloat('##0.00', VarValorTroco));
                end;
              exit;
            end
          else
            begin
              Informa('Este numerário não pode ser considerado como À VISTA!');
              EntradaDados.Clear;
              EstadoFechVenda  := InformandoNumerarioVista;
              PreparaEstadoFech(EstadoFechVenda);
            end;
        end;
      //INFORMANDO NUMERÁRIO A PRAZO
      if EstadoFechVenda = InformandoNumerarioPrazo then
        begin
          if (EntradaDados.text = '') or (not IsNumeric(EntradaDados.Text, 'INTEGER')) then
            begin
              if (not IsNumeric(EntradaDados.Text, 'INTEGER')) and
                 (SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') <> '') and
                 (Key <> VK_Down) then
                begin
                  EntradaDados.text := SQLLocate('NUMERARIO', 'NUMEA30DESCR', 'NUMEICOD', '"' + EntradaDados.Text + '"') ;
                end
              else
                begin
                  Application.CreateForm(TFormTelaConsultaRapidaNumerario, FormTelaConsultaRapidaNumerario) ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.Close ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.MacroByName('MTipo').Value := 'NUMECVISTAPRAZO = "P" or NUMECVISTAPRAZO = "B"' ;
                  FormTelaConsultaRapidaNumerario.SQLNumerario.Open ;
                  FormTelaConsultaRapidaNumerario.ShowModal ;
                  EntradaDados.text := IntToStr(NumerarioAtual) ;
                end ;
            end ;

          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select Count(*) from PARCELASPRAZOVENDATEMP') ;
          DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
          DM.SQLTemplate.Open ;
          if DM.SQLTemplate.FieldByName('Count').Value = 0 then
            begin
              EntradaDados.Clear ;
              if EstadoFechVendaAnt = '' then
                EstadoFechVenda := FinalizandoVenda
              else
                EstadoFechVenda := EstadoFechVendaAnt ;

              EstadoFechVendaAnt := '' ;
              PreparaEstadoFech(EstadoFechVenda) ;
              Exit ;
            end ;

          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select * from NUMERARIO') ;
          DM.SQLTemplate.SQL.Add('where') ;
          DM.SQLTemplate.SQL.Add('NUMEICOD = ' + EntradaDados.text) ;
          DM.SQLTemplate.Open ;

          if DM.SQLTemplate.FieldByName('NUMECVISTAPRAZO').Value = 'V' then
            begin
              EntradaDados.SelectAll ;
              Informa('Este Numerário é a Vista!') ;
              exit ;
            end ;

          DM.SQLTemplate.First ;
          if not DM.SQLTemplate.EOF then
            begin
              NumerarioPrazo := DM.SQLTemplate.FieldByName('NUMEICOD').AsInteger ;

              SQLParcelasPrazoVendaTemp.DisableControls;
              SQLParcelasPrazoVendaTemp.First ;
              while not SQLParcelasPrazoVendaTemp.EOF do
                begin
                  SQLParcelasPrazoVendaTemp.Edit ;
                  SQLParcelasPrazoVendaTempNUMEICOD.Value  := NumerarioPrazo ;
                  SQLParcelasPrazoVendaTempTIPOPADR.Value  := DM.SQLTemplate.FieldByName('NUMEA5TIPO').AsString ;
                  if SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRT' then
                    begin
                      if (SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString <> SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString) and (SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString <> '' ) then
                        begin
                          InformaG('Você selecionou uma forma de pagamento cartão para as parcelas a vista e deve escolher a mesma para as parcelas a prazo');
                          EstadoFechVenda := InformandoNumerarioPrazo;
                          PreparaEstadoFech(EstadoFechVenda);
                          Exit;
                        end;
                    end;

                  TipoPadrao := SQLParcelasPrazoVendaTempTIPOPADR.Value;
                  SQLParcelasPrazoVendaTemp.Post ;

                  SQLParcelasPrazoVendaTemp.Next ;
                end ;
              SQLParcelasPrazoVendaTemp.First ;
              SQLParcelasPrazoVendaTemp.EnableControls;

              // Testa se tem algum produto q nao pode vender Fiado ou Cheque Pre
              if (TipoPadrao = 'CRD') or (TipoPadrao = 'CHQP') then
                begin
                  FormTelaItens.SQLItensVendaTemp.First;
                  while not FormTelaItens.SQLItensVendaTemp.eof do
                    begin
                      if SQLLocate('PRODUTO','PRODICOD','PRODCBLOQVPRAZO',FormTelaItens.SQLItensVendaTempCODIGO.AsString) = 'S' then
                        begin
                          InformaG('Existem produtos que nao podem ser vendidos a Prazo! Verifique!');
                          EstadoFechVenda := InformandoNumerarioPrazo;
                          PreparaEstadoFech(EstadoFechVenda);
                          Exit;
                        end;
                      FormTelaItens.SQLItensVendaTemp.Next;
                    end;
                end;
            end
          else
            begin
              EntradaDados.SelectAll ;
              Informa('Numerário não encontrado!') ;
              exit ;
            end ;

          ListaParcelasPrazo.DataSource.DataSet.Close;
          ListaParcelasPrazo.DataSource.DataSet.Open;
          ListaParcelasPrazo.Refresh;

          EntradaDados.Clear ;
          if EstadoFechVendaAnt = '' then
            EstadoFechVenda := FinalizandoVenda
          else
            EstadoFechVenda := EstadoFechVendaAnt ;

          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;

      //INFORMANDO A POSICAO DA DATA A SER ALTERADA
      if EstadoFechVenda = InformandoPosicaoData then
        begin
          if EntradaDados.Text = '' then
            exit ;

          Screen.Cursor := crHourglass ;
          if not SQLParcelasPrazoVendaTemp.Locate('NROPARCELA', EntradaDados.Text, []) then
            begin
              Informa('Parcela não encontrada!') ;
              exit ;
            end ;
          Screen.Cursor := crDefault ;
          EntradaDados.Text := FormatDateTime('dd/mm/yyyy',SQLParcelasPrazoVendaTempDATAVENCTO.Value);

          EstadoFechVenda := AlterandoData ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //ALTERANDO DATA VENCIMENTO
      if EstadoFechVenda = AlterandoData then
        begin
          //TESTAR SE A DATA DIGITADAD É VÁLIDA
          try
            EntradaDados.Text := FormatDateTime('dd/mm/yyyy',StrToDate(EntradaDados.Text)) ;
          except
            Informa('Data inválida !') ;
            EntradaDados.Text := SQLParcelasPrazoVendaTempDATAVENCTO.AsString ;
            exit ;
          end ;
          // Testa se nova data eh menor que a data atual do micro, se for sair pois nao posso ter parcelas com data menor!
          if StrToDate(EntradaDados.Text) < Date then
            begin
              Informa('A nova data nao pode ser inferior a data atual!') ;
              EntradaDados.Text := SQLParcelasPrazoVendaTempDATAVENCTO.AsString ;
              exit ;
            end;

          //ALTERANDO DATA VENCIMENTO
          SQLParcelasPrazoVendaTemp.Edit ;
          SQLParcelasPrazoVendaTempDATAVENCTO.AsString := EntradaDados.Text ;
          SQLParcelasPrazoVendaTemp.Post ;

          if PlanoVenda > 0 then
            try
              PercJuroDia := StrToFloat(dm.sqllocate('PLANORECEBIMENTO','PLRCICOD','PLRCN2PERCJURDIA',IntToStr(PlanoVenda)));
            except
              PercJuroDia := 0;
            end;
          if PercJuroDia > 0 then
            begin
              if (SQLParcelasPrazoVendaTemp.RecordCount = 1) and ((SQLParcelasPrazoVendaTempTIPOPADR.Value = 'CRD') or (SQLParcelasPrazoVendaTempTIPOPADR.Value = 'CHQP')) then
                begin
                  Ndias := (SQLParcelasPrazoVendaTempDATAVENCTO.Value-Date-vCLIEINDIACHQSJURO);
                  if Ndias < 0 then
                    Ndias := 0;
                  VlrTotJuroDia := (FormTelaItens.CurSubTotal.Value+VlrTxCrediario.Value-(VlrBonusTroca + VlrRetConfig_SldCad))
                                    * Ndias * PercJuroDia/100;

                  SQLParcelasPrazoVendaTemp.Edit ;
                  SQLParcelasPrazoVendaTempVALORVENCTO.Value := (FormTelaItens.CurSubTotal.Value+VlrTxCrediario.Value-(VlrBonusTroca + VlrRetConfig_SldCad)) + VlrTotJuroDia;
                  SQLParcelasPrazoVendaTemp.Post ;

                  if VlrTotJuroDia > 0 then
                    LBTotalJuroDia.Value := VlrTotJuroDia
                  else
                    LBTotalJuroDia.Value := 0;

                  ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value + LBTotalJuroDia.Value +
                                           VlrTxCrediario.Value -
                                           (VlrBonusTroca + VlrRetConfig_SldCad) ;
                end;
            end;

          if (SQLParcelasPrazoVendaTemp.RecordCount > 1) and Pergunta('SIM','Deseja alterar as demais parcelas com o mesmo dia de vencimento') then
            begin
              SQLParcelasPrazoVendaTemp.Next;
              MesParcelaTemp := StrToInt(copy(EntradaDados.Text,4,2));
              AnoParcelaTemp := StrToInt(copy(EntradaDados.Text,7,4));

              while not SQLParcelasPrazoVendaTemp.eof do
                begin
                  MesParcelaTemp := MesParcelaTemp + 1;
                  if MesParcelaTemp > 12 then
                    begin
                      MesParcelaTemp := 1;
                      AnoParcelaTemp := AnoParcelaTemp+1;
                    end;
                  SQLParcelasPrazoVendaTemp.Edit;
                  try
                    SQLParcelasPrazoVendaTempDATAVENCTO.Value := StrToDate(copy(EntradaDados.Text,1,2)+'/'+
                                                                 FormatFloat('##00',MesParcelaTemp)+'/'+
                                                                 FormatFloat('####0000',AnoParcelaTemp));
                    SQLParcelasPrazoVendaTemp.Post;
                  except
                    Application.ProcessMessages;
                    SQLParcelasPrazoVendaTemp.Cancel;
                  end;
                  SQLParcelasPrazoVendaTemp.Next;
                end;
            end;
          SQLParcelasPrazoVendaTemp.Close ;
          SQLParcelasPrazoVendaTemp.SQL.Clear ;
          SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP') ;
          SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
          SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA') ;
          SQLParcelasPrazoVendaTemp.Open ;
          SQLParcelasPrazoVendaTemp.First;
          ListaParcelasPrazo.Refresh ;

          EntradaDados.Clear ;
          EstadoFechVenda    := EstadoFechVendaAnt ;
          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //INFORMANDO A POSICAO DA PRACELA PRAZO A SER ALTERADA
      if EstadoFechVenda = InformandoPosicaoParcelaPrazo then
        begin
          if EntradaDados.Text = '' then
            exit ;

          Screen.Cursor := crHourglass ;
          if not SQLParcelasPrazoVendaTemp.Locate('NROPARCELA', EntradaDados.Text, []) then
            begin
              Informa('Parcela não encontrada!') ;
              exit ;
            end ;
          Screen.Cursor := crDefault ;
          EntradaDados.Text := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;

          EstadoFechVenda := AlterandoParcelaPrazo ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //ALTERANDO VALOR DA PARCELA PRAZO
      if EstadoFechVenda = AlterandoParcelaPrazo then
        begin
          //TESTAR SE A VALOR DIGITADO É VÁLIDO
          try
            EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
          except
            Informa('Valor inválido !') ;
            EntradaDados.Text := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;
            exit ;
          end ;

          //ALTERANDO VALOR VENCIMENTO
          SQLParcelasPrazoVendaTemp.Edit ;
          SQLParcelasPrazoVendaTempVALORVENCTO.AsString := EntradaDados.Text ;
          SQLParcelasPrazoVendaTemp.Post ;

          SQLParcelasPrazoVendaTemp.Close ;
          SQLParcelasPrazoVendaTemp.Open ;
          ListaParcelasPrazo.Refresh;

          EntradaDados.Clear ;
          EstadoFechVenda    := EstadoFechVendaAnt ;
          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //DIMINUIR ACRESCIMO
      if EstadoFechVenda = DiminuirAcrescimo then
        begin
          //TESTAR SE A VALOR DIGITADO É VÁLIDO
          try
            EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
          except
            Informa('Valor inválido !') ;
            EntradaDados.Text := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;
            exit ;
          end ;

          ValorDiminuirAcresc := StrToFloat(EntradaDados.Text) ;
          ValorDescontoAcrescimo.Value := 0 ;
          ValorEntrada.Value           := 0 ;

          EntradaDados.Clear ;
          EstadoFechVenda    := InformandoPlano ;
          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //INFORMANDO DESCONTO
      if EstadoFechVenda = InformandoDesconto then
        begin
         { try
            EntradaDados.Text := FloatToStr(StrToFloat(EntradaDados.Text)) ;
          except
            Informa('Valor inválido !') ;
            exit ;
          end ; }

        end ;

      //ALTERANDO ENTRADA
      if EstadoFechVenda = AlterandoEntrada then
        begin
          ValorEntrada.Text := EntradaDados.Text ;
          EntradaDados.Clear ;

          AtualizaDadosPlanoNumerario(Sender) ;

          exit ;
        end ;

      //EXCLUINDO NUMERÁRIO A VISTA
      if EstadoFechVenda = ExcluindoNumerarioVista then
        begin
          if not SQLParcelasVistaVendaTemp.Locate('NROITEM', EntradaDados.Text, []) then
            begin
              Informa('Não há nenhum Numerário a Vista na posição informada!') ;
              exit ;
            end ;

          ValorRecebido.Value := ValorRecebido.Value - SQLParcelasVistaVendaTempVALORPARC.Value ;
          VarValorRecebido    := ValorRecebido.Value;
          SQLParcelasVistaVendaTemp.Delete ;

          EntradaDados.Clear ;
          EstadoFechVenda := InformandoNumerarioVista ;
          EstadoFechVendaAnt := '' ;
          PreparaEstadoFech(EstadoFechVenda) ;
          exit ;
        end ;
      //--------------------- FECHAMENTO DA VENDA --------------------\\
      if (EstadoFechVenda = FinalizandoVenda) and (not FechandoVenda) then
      begin
        // FinalizacaodeVenda := true ;
        if BloquearVenda then
          begin
            FinalizacaodeVenda := False;
            ImportandoPreVenda := False;
            AbrirTelaCliente   := True;
            EstadoFechVendaAnt := EstadoFechVenda ;
            EstadoFechVenda    := InformandoCliente ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end;

        if ClienteVenda = '' then
          begin
            FinalizacaodeVenda := False;
            ImportandoPreVenda := False;
            AbrirTelaCliente   := True;
            EstadoFechVendaAnt := EstadoFechVenda ;
            EstadoFechVenda    := InformandoCliente ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

        if (ClienteVenda = DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').AsString) and
           ((TipoPadrao <> 'DIN')  and (TipoPadrao <> 'VISTA') and (TipoPadrao <> 'CRT')) then
          begin
            ImportandoPreVenda := False;
            AbrirTelaCliente   := True;
            EstadoFechVendaAnt := FinalizandoVenda;
            EstadoFechVenda    := InformandoCliente;
            PreparaEstadoFech(EstadoFechVenda);
//            Tecla := Vk_Return;
            EntradaDados.Text := '';
//            EntradaDadosKeyDown(EntradaDados,Tecla,[ssCtrl]);
            exit ;
          end ;

        if VendedorVenda = 0 then
          begin
            Informa('O Vendedor deve ser informado !') ;
            EstadoFechVendaAnt := EstadoFechVenda ;
            EstadoFechVenda    := InformandoVendedor ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

        //ESTA VARIAVEL FOI CRIADA POIS QUANDO SE CLIACAVA F3 PARA FINALIZAR A VENDA
        //E RAPIDAMENTE DAVA-SE 5 ENTER O SISTEMA TENTAVA FECHAR DUAS VEZES A
        //VENDA E DAVA ERRO
        FechandoVenda := true ;
        FinalizacaodeVenda := true ;

        //CONSISTENCIAS
        if ValorRecebido.Value < ValorEntrada.Value then
          begin
            Informa('O valor recebido está menor que o valor da Entrada/Saldo !') ;
            EstadoFechVenda := InformandoNumerarioVista ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

        TipoPadrao := '' ;
        SolicitarLiberacao := False;
        //TESTAR SE ALGUM VALOR AVISTA ESTÁ SEM NUMERÁRIO
        SQLProvedorCartao.Close;
        SQLProvedorCartao.Open;
        SQLParcelasVistaVendaTemp.DisableControls;
        SQLParcelasVistaVendaTemp.First;
        Dm.SQLConfigVenda.Close;
        Dm.SQLConfigVenda.Open;
        while not SQLParcelasVistaVendaTemp.EOF do
          begin
            if SQLParcelasVistaVendaTempNUMEICOD.Value > 0 then
              begin
                //VERIFICA SE PRECISA SOLICITAR LIBERACAO DE CREDITO
                if Dm.SQLConfigVenda.FieldByName('CFVECUSALIBERCRED').AsString = 'S' then
                  begin
                    TamanhoArray := Length(TipoPadraoLiberacao);
                    for Tipo:=0 to TamanhoArray -1 do
                      begin
                        if SQLParcelasVistaVendaTempTIPOPADR.AsString = TipoPadraoLiberacao[Tipo] then
                           SolicitarLiberacao := True;
                      end;
                  end;
                if ((SQLParcelasVistaVendaTempTIPOPADR.AsString = 'CRT')
                     and (SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString <> '')) or
                    ((Copy(SQLParcelasVistaVendaTempTIPOPADR.AsString,1,3) = 'CHQ')
                      and (SQLParcelasVistaVendaTempPRCACCONSCHEQUE.AsString = 'S')) then
                  begin
                    TemNumerarioCartaoVista := True;
                 {  ProvedorCartao      := SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString;
                    SendDirectory       := SQLParcelasVistaVendaTempPRCATPATHENVIA.AsString;
                    ReceiveDirectory    := SQLParcelasVistaVendaTempPRCATPATHRECEBE.AsString; }

                    dm.NumerarioCartao  := SQLParcelasVistaVendaTempNUMEICOD.AsString;
                    NomeNumerarioCartao := SQLParcelasVistaVendaTempNumerarioLookup.AsString;
                    ProvedorCartao   := dm.SQLLocate('PROVEDORCARTAO','PRCAA13ID','PRCAA60CARTAO',  '"'+dm.SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',dm.NumerarioCartao)+'"');
                    SendDirectory    := dm.SQLLocate('PROVEDORCARTAO','PRCAA13ID','PRCATPATHENVIA', '"'+dm.SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',dm.NumerarioCartao)+'"');
                    ReceiveDirectory := dm.SQLLocate('PROVEDORCARTAO','PRCAA13ID','PRCATPATHRECEBE','"'+dm.SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',dm.NumerarioCartao)+'"');
                  end
                else
                  begin
                    if SQLParcelasVistaVendaTempTIPOPADR.AsString = 'CRTF' then
                      begin
                        if ClienteVenda = DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').AsString then
                          begin
                            ImportandoPreVenda := False;
                            Informa('Você deve informar o cliente para uma venda com cartão!');
                            FechandoVenda := False;
                            FinalizacaodeVenda := False;
                            EntradaDados.SetFocus;
                            EntradaDados.Clear;
                            AbrirTelaCliente   := False;
                            EstadoFechVendaAnt := FinalizandoVenda;
                            EstadoFechVenda    := InformandoCliente;
                            PreparaEstadoFech(EstadoFechVenda);
                            Exit;
                          end;
                      end;
                  end;
              end
            else
              begin
              Informa('Existe um valor a vista sem Numerário !') ;
              EstadoFechVenda := InformandoNumerarioVista ;
              PreparaEstadoFech(EstadoFechVenda) ;
              exit ;
            end ;

            TipoPadrao    := SQLParcelasVistaVendaTempTIPOPADR.Value ;
            TotalVistaAut := TotalVistaAut + SQLParcelasVistaVendaTempVALORPARC.Value ;

            if TipoPadrao = 'CRTF' then
              ValorCartaoFidelizacao := ValorCartaoFidelizacao + SQLParcelasVistaVendaTempVALORPARC.Value;

            SQLParcelasVistaVendaTemp.Next ;
          end ;
        SQLParcelasVistaVendaTemp.First ;
        SQLParcelasVistaVendaTemp.EnableControls ;

        //TESTAR SE ALGUM VALOR APRAZO ESTÁ SEM NUMERÁRIO
        NumParc := SQLParcelasPrazoVendaTemp.RecordCount ;
        SQLParcelasPrazoVendaTemp.DisableControls ;
        SQLParcelasPrazoVendaTemp.First ;

        //VERIFICA SE PRECISA SOLICITAR LIBERACAO DE CREDITO
        Dm.SQLConfigVenda.Close;
        Dm.SQLConfigVenda.Open;
        if Dm.SQLConfigVenda.FieldByName('CFVECUSALIBERCRED').AsString = 'S' then
          begin
            TamanhoArray := Length(TipoPadraoLiberacao);
            for Tipo:=0 to TamanhoArray - 1 do
              begin
                if SQLParcelasPrazoVendaTempTIPOPADR.AsString =  TipoPadraoLiberacao[Tipo] then
                   SolicitarLiberacao := True;
              end;
            //SOLICITA LIBERACAO DO CLIENTE SELECIONADO
            if SolicitarLiberacao and (ClienteVenda <> Dm.SQLTerminalAtivo.FieldByName('CLIEA13ID').AsString)then
              begin
                NumeroLiberacaoOk := '';
                Application.CreateForm(TFormTelaConsultaLiberacaoCredito,FormTelaConsultaLiberacaoCredito);
                FormTelaConsultaLiberacaoCredito.Hide;
                FormTelaConsultaLiberacaoCredito.SQLLiberacao.Close;
                FormTelaConsultaLiberacaoCredito.SQLLiberacao.ParamByName('CLIEA13ID').AsString := ClienteVenda;
                FormTelaConsultaLiberacaoCredito.SQLLiberacao.ParamByName('DataAtual').AsString := FormatDateTime('mm/dd/yyyy',Now);
                FormTelaConsultaLiberacaoCredito.SQLLiberacao.Open;
                if FormTelaConsultaLiberacaoCredito.SQLLiberacao.IsEmpty then
                  begin
                    InformaG('Nenhuma liberação foi encontrada para o cliente no dia de hoje, impossível encerrar a venda!');
                    FechandoVenda := False;
                    FinalizacaodeVenda := False;
                    EstadoFechVendaAnt := '';
                    EstadoFechVenda    := FinalizandoVenda;
                    PreparaEstadoFech(EstadoFechVenda);
                    Exit;
                  end
                else
                  begin
                    FormTelaConsultaLiberacaoCredito.SQLCliente.Close;
                    FormTelaConsultaLiberacaoCredito.SQLCliente.Open;
                    FormTelaConsultaLiberacaoCredito.ShowModal;
                    if FormTelaConsultaLiberacaoCredito.ModalResult = MrOk then
                      begin
                        if FormTelaConsultaLiberacaoCredito.SQLLiberacaoCATCN2VLRCREDITO.AsFloat < ValorTotalVenda.Value then
                          begin
                            InformaG('O valor desta venda é maior que o valor liberado para o cliente, favor verifique!');
                            FechandoVenda := False;
                            FinalizacaodeVenda := False;
                            EstadoFechVendaAnt := '';
                            EstadoFechVenda    := FinalizandoVenda;
                            PreparaEstadoFech(EstadoFechVenda);
                            Exit;
                          end
                        else
                          begin
                            FormTelaConsultaLiberacaoCredito.SQLLiberacao.Edit;
                            FormTelaConsultaLiberacaoCredito.SQLLiberacaoCATCCSTATUS.AsString := 'F';
                            FormTelaConsultaLiberacaoCredito.SQLLiberacao.Post;
                            NumeroLiberacaoOk := FormTelaConsultaLiberacaoCredito.SQLLiberacaoCATCA13ID.AsString;
                            FormTelaConsultaLiberacaoCredito.SQLLiberacao.Free;
                          end;
                      end
                    else
                      begin
                        FechandoVenda := False;
                        FinalizacaodeVenda := False;
                        EstadoFechVendaAnt := '';
                        EstadoFechVenda    := FinalizandoVenda;
                        PreparaEstadoFech(EstadoFechVenda);
                        Exit;
                      end;
                  end;
                FormTelaConsultaLiberacaoCredito.Close;
                FormTelaConsultaLiberacaoCredito.Free;
                Application.ProcessMessages;
              end;
            ////////////////////////////////////////////////////////
          end;
        ValorPrazo := 0 ;
        if ((SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRD') and
          (FileExists(UPPERCASE(DM.PathAplicacao + '\CARNES.EXE')))) or
          ((FileExists(UPPERCASE(DM.PathAplicacao + '\CARNESITEM.EXE'))))then
          begin
            TblCarne.Close ;
            try
              TblCarne.DeleteTable ;
              TblCarne.CreateTable ;
            except
               TblCarne.CreateTable ;
            end ;
            TblCarne.Open ;
          end;

        while not SQLParcelasPrazoVendaTemp.EOF do
          begin
            if SQLParcelasPrazoVendaTempNUMEICOD.Value > 0 then
              begin
                if ((SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRT')
                     and (SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString <> '')) or
                   ((Copy(SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString,1,3) = 'CHQ')
                     and (SQLParcelasPrazoVendaTempPRCACCONSCHEQUE.AsString = 'S')) then
                  begin
                    TemNumerarioCartaoPrazo := True;
                    {ProvedorCartao := SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString;
                    SendDirectory := SQLParcelasPrazoVendaTempPRCATPATHENVIA.AsString;
                    ReceiveDirectory := SQLParcelasPrazoVendaTempPRCATPATHRECEBE.AsString;}
                    dm.NumerarioCartao := SQLParcelasPrazoVendaTempNUMEICOD.AsString;
                    NomeNumerarioCartao := SQLParcelasPrazoVendaTempNumerarioLookup.AsString;
                    ProvedorCartao   := dm.SQLLocate('PROVEDORCARTAO','PRCAA13ID','PRCAA60CARTAO',  '"'+dm.SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',dm.NumerarioCartao)+'"');
                    SendDirectory    := dm.SQLLocate('PROVEDORCARTAO','PRCAA13ID','PRCATPATHENVIA', '"'+dm.SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',dm.NumerarioCartao)+'"');
                    ReceiveDirectory := dm.SQLLocate('PROVEDORCARTAO','PRCAA13ID','PRCATPATHRECEBE','"'+dm.SQLLocate('NUMERARIO','NUMEICOD','PRCAA13ID',dm.NumerarioCartao)+'"');
                  end;
              end
            else
              begin
                Informa('Existe um valor a prazo sem Numerário !') ;
                exit ;
              end ;

            TipoPadrao := SQLParcelasPrazoVendaTempTIPOPADR.Value ;
            ValorPrazo := ValorPrazo + SQLParcelasPrazoVendaTempVALORVENCTO.Value ;

            if TemNumerarioCartaoVista or TemNumerarioCartaoPrazo then
              if ValorTroco.Value > 0 then
                begin
                  InformaG('Você selecionou um numerário do tipo cartão, portanto está venda não poderá ter troco!' + #13 +
                           'A operação será cancelada!');
                  FechandoVenda := False;
                  FinalizacaodeVenda := False;
                  EstadoFechVendaAnt := '';
                  EstadoFechVenda    := FinalizandoVenda;
                  PreparaEstadoFech(EstadoFechVenda);
                  Exit;
                end;
            //GRAVAR PARCELAS NA TABELA TEMPORARIA DE CARNE
            if ((SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRD')
              and (FileExists(UPPERCASE(DM.PathAplicacao + '\CARNES.EXE'))))
              or (FileExists(UPPERCASE(DM.PathAplicacao + '\CARNESITEM.EXE'))) then
              begin
                if not TblCarne.Active then
                  TblCarne.Open ;
                //GRAVAR PARCELA A VISTA NO CARNE PARA AUTENTICAR
                if (TotalVistaAut > 0) and
                   (SQLParcelasPrazoVendaTempNROPARCELA.Value = 1)        and
                   ((DM.SQLConfigVenda.FieldByName('CFVECPARC0ENTRBAIX').AsString <> 'S') or
                   (DM.SQLTerminalAtivo.FieldByName('TERMCIMPENTCARNE').AsString = 'S'))  then
                  begin
                    TblCarne.Append;
                    TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao);
                    TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao);
                    TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao);
                    TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao);
                    TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao);
                    TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao);
                    TblCarneMensagem.AsString       := DM.SQLTerminalAtivo.FieldByName('TERMA255MSGCARNE').Value;
                    TblCarneCliente.AsString        := LblNomeCliente.Caption;
                    TblCarneEndereco.AsString       := EnderecoClienteVenda;
                    TblCarneBairro.AsString         := BairroClienteVenda;
                    TblCarneCidade.AsString         := CidadeClienteVenda;
                    TblCarneCodigoCliente.AsString  := ClienteVenda;
                    TblCarneClienteDependente.AsString  := ClienteDependente;
                    TblCarneNumeroParcela.AsString  := '0';
                    TblCarneContadorParcelas.Value  := NumParc;
                    TblCarneDataVencimento.Value    := Date;
                    TblCarneValorParcela.Value      := TotalVistaAut;
                    TblCarneVendedor.AsString       := LblNomeVendedor.Caption;
                    TblCarneTotalCupom.Value        := ValorTotalVenda.Value;

                    if LblValorDescontoAcrescimo.Caption = 'DESCONTO' then
                      TblCarneValorDesconto.Value   := ValorDescontoAcrescimo.Value
                    else
                      TblCarneAcrescimo.Value       := ValorDescontoAcrescimo.Value;

                    TblCarneEntrada.Value           := ValorEntrada.Value;
                    TblCarneTaxaCrediario.Value     := VlrTxCrediario.Value;

                    TblCarnePlano.Value             := LblNomePlano.Caption ;
                    TblCarneDataEmissao.Value       := Date ;
                    TblCarneNroCupom.Value          := NroCupomFiscal ;
                    TblCarneTerminalSTR.Value       := dm.SQLTerminalAtivo.FieldByName('TERMA60DESCR').Value;
                    TblCarneUsuarioSTR.Value        := UsuarioAtualNome;
                    TblCarne.Post ;
                  end ;

                TblCarne.Append ;
                TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
                TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
                TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
                TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
                TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
                TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
                TblCarneMensagem.AsString       := DM.SQLTerminalAtivo.FieldByName('TERMA255MSGCARNE').Value ;
                TblCarneCliente.AsString        := LblNomeCliente.Caption ;
                TblCarneEndereco.AsString       := EnderecoClienteVenda ;
                TblCarneBairro.AsString         := BairroClienteVenda;
                TblCarneCidade.AsString         := CidadeClienteVenda;
                TblCarneCodigoCliente.AsString  := ClienteVenda ;
                TblCarneClienteDependente.AsString  := ClienteDependente;
                TblCarneNumeroParcela.AsString  := SQLParcelasPrazoVendaTempNROPARCELA.AsString ;
                TblCarneContadorParcelas.Value  := NumParc ;
                TblCarneDataVencimento.AsString := SQLParcelasPrazoVendaTempDATAVENCTO.AsString ;
                TblCarneValorParcela.AsString   := SQLParcelasPrazoVendaTempVALORVENCTO.AsString ;
                TblCarneVendedor.AsString       := LblNomeVendedor.Caption ;
                TblCarneTotalCupom.Value        := ValorTotalVenda.Value ;
                TblCarnePlano.Value             := LblNomePlano.Caption ;
                TblCarneDataEmissao.Value       := Date ;
                TblCarneNroCupom.Value          := NroCupomFiscal ;

                if LblValorDescontoAcrescimo.Caption = 'DESCONTO' then
                  TblCarneValorDesconto.Value   := ValorDescontoAcrescimo.Value
                else
                  TblCarneAcrescimo.Value       := ValorDescontoAcrescimo.Value;

                TblCarneEntrada.Value           := ValorEntrada.Value;
                TblCarneTaxaCrediario.Value     := VlrTxCrediario.Value;

                TblCarneTerminalSTR.Value       := dm.SQLTerminalAtivo.FieldByName('TERMA60DESCR').Value;
                TblCarneUsuarioSTR.Value        := UsuarioAtualNome;
                TblCarne.Post ;
              end ;

            SQLParcelasPrazoVendaTemp.Next ;
          end ;
        SQLParcelasPrazoVendaTemp.First ;
        SQLParcelasPrazoVendaTemp.EnableControls ;

        //SE NÃO TIVER MAIS DE UM NUMERARIO A VISTA IRÁ GRAVAR VENDA A VISTA
        //COMO DESCRICAO NO CAIXA POIS NÃO PODE ESCOLHER UM NUMERÁRIO
        SQLParcelasVistaVendaTemp.First;
        if (SQLParcelasVistaVendaTemp.RecordCount = 1)
          and (SQLParcelasVistaVendaTempTIPOPADR.AsString = 'DIN')
          and (SQLParcelasPrazoVendaTemp.IsEmpty) then
           TipoPadrao := 'VISTA';

        //* * * * * * * * * * * * * * * * * * * * * * * * *
        //*               GRAVANDO PRÉ-VENDA              *
        //* * * * * * * * * * * * * * * * * * * * * * * * *
        if (TerminalModo = 'P') and (not E_Orcamento) then
          begin
            if DM.SQLTerminalAtivo.FieldByName('TERMCCONFFECHCUPOM').Value <> 'N' then
              if not Pergunta('SIM', '* * * CONFIRMA O ENCERRAMENTO DESTA PRÉ-VENDA ? * * *') then
                Exit ;

            if (Dm.SQLTerminalAtivo.FieldByName('TERMCINFDADOCLIPAD').AsVariant = 'S') then
              begin
                Application.CreateForm(TFormTelaDadosCliente,FormTelaDadosCliente);
                FormTelaDadosCliente.ShowModal;
                if FormTelaDadosCliente.ModalResult = mrCancel then
                  begin
                    FechandoVenda := False;
                    FinalizacaodeVenda := False;
                    Exit;
                  end;
              end;

            if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Rollback ;

            if not FileExists('SemTransacao.Arq') then
              DM.DB.StartTransaction ;

            GravarPreVenda ;

            if FileExists('FinalVenda.wav') then
              SoundPlay('FinalVenda.wav',Sender);

            /////////// INICIA FECHAMENTO DE CUPOM NA PRE-VENDA ////////////////////

            if (ECFAtual <> '') and (copy(ECFAtual,1,4) <> 'NFCE')  and (not FileExists('Confirma.txt')) then
            begin
              LblInstrucoes.Caption := 'Aguarde! Encerramento Cupom PRE-VENDA...' ;
              LblInstrucoes.Refresh ;

              if VlrTxCrediario.Value > 0 then
                if (ECFAtual <> 'SIGTRON FS300') then
                if not ImprimeItemECF(ECFAtual,             //Impressora
                                       PortaECFAtual,        //Porta
                                       '',                   //Numitem
                                       '0',                  //Codigo
                                       'Taxa Crediario',     //Descricao
                                       TributoTaxaCrediario, //Tributo
                                       '',                   //TipoDesc do item
                                       'UN',                 //Unid
                                       1,                    //Qtde
                                       VlrTxCrediario.Value, //Valor
                                       0,                    //Percdesc
                                       0,                    //Vlrdesco
                                       2) then               //NumDecQuant}
                begin
                  Informa('Problemas ao imprimir o item no ECF !') ;
                  exit ;
                end ;
              //EMITIR FECHAMENTO CUPOM FISCAL
              if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') or
                 ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) then
                begin
                  if not FecharCupomFiscal(ECFAtual,
                                           PortaECFAtual,
                                           Ecf_CNFV,
                                           ValorTotalVenda.Value, // StrToFloat(FormatFloat('##0.00', ValorTotalVenda.Value)),
                                           0, //ACRESCIMO
                                           ValorDescontoAcrescimo.Value +
                                           VlrBonusTroca +
                                           VlrRetConfig_SldCad, //DESCONTO
                                           ValorTroco.Value,
                                           SQLParcelasVistaVendaTemp,
                                           SQLParcelasPrazoVendaTemp,
                                           NomeClienteVenda,
                                           EnderecoClienteVenda,
                                           CidadeClienteVenda,
                                           DocumentoClienteVenda,
                                           DM.CodNextCupom,
                                           LblNomeVendedor.Caption,
                                           LblNomePlano.Caption,
                                           PlacaCliente) then
                    begin
                      Informa('Houveram problemas ao encerrar este cupom !') ;
                      exit ;
                    end ;
                end ;

              if LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO' then
                if not FecharCupomFiscal(ECFAtual,
                                         PortaECFAtual,
                                         Ecf_CNFV,
                                         ValorTotalVenda.Value,  // StrToFloat(FormatFloat('###0.00', ValorTotalVenda.Value)),
                                         ValorDescontoAcrescimo.Value,//ACRESCIMO
                                         0,//DESCONTO
                                         ValorTroco.Value,
                                         SQLParcelasVistaVendaTemp,
                                         SQLParcelasPrazoVendaTemp,
                                         NomeClienteVenda,
                                         EnderecoClienteVenda,
                                         CidadeClienteVenda,
                                         DocumentoClienteVenda,
                                         DM.CodNextCupom,
                                         LblNomeVendedor.Caption,
                                         Trim(LblNomePlano.Caption),
                                         PlacaCliente) then
                  begin
                    Informa('Houveram problemas ao encerrar este cupom !') ;
                    exit ;
                  end ;

              //EMITIR CONFISS3ÃO DE DÍVIDA
              if ((TipoPadrao = 'CRD') or (TipoPadrao = 'CRTF')) and (DM.SQLTerminalAtivo.FieldByName('TERMCIMPCONFDIVIDA').Value = 'S') then
                begin
                  ImprimeConfDivida := True;
                  If DM.SQLTerminalAtivo.FieldByName('TERMCECFIMPRCONFDIVPERGUNTA').Value = 'S' then
                    imprimeConfDivida:= Pergunta('SIM','Imprimir a Confissão de Dívida?');
                  if ImprimeConfDivida = True then
                    begin
                      SQLParcelasVistaVendaTemp.Last;
                      if (ECFAtual <> 'BEMATECH MP-20 FI') then
                        if TipoPadrao = 'CRD' then
                          TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLParcelasPrazoVendaTempNUMEICOD.AsString)
                        else
                          if TipoPadrao = 'CRTF' then
                            TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLParcelasVistaVendaTempNUMEICOD.AsString);

                      // Retorna Nome Numerario
                      if (TipoPadrao = 'CRD') or (TipoPadrao = 'CRTF') then
                        NomeNumerario := SQLParcelasPrazoVendaTempNumerarioLookup.AsString
                      else
                        NomeNumerario := SQLParcelasVistaVendaTempNumerarioLookup.AsString;

                      if NomeNumerario = '' then
                        NomeNumerario := 'Dinheiro';
                      /////////////////////////

                      if (TotNumECF <> '') or (ECFAtual = 'BEMATECH MP-20 FI') then
                        begin
                          LblInstrucoes.Caption := 'Emitindo Confissão de Dívida' ;
                          LblInstrucoes.Refresh ;

                          //ACERTAR VALOR A PRAZO CASO TENHA DIF.ARREDONDAMENTO
                          if (ValorEntrada.Value + ValorPrazo) < ValorTotalVenda.Value then
                            ValorPrazo := ValorPrazo + (ValorTotalVenda.Value - (ValorEntrada.Value + ValorPrazo)) ;
                          if (ValorEntrada.Value + ValorPrazo) > ValorTotalVenda.Value then
                            ValorPrazo := ValorPrazo - ((ValorEntrada.Value + ValorPrazo)-ValorTotalVenda.Value) ;

                          // Alimenta Variável
                          if ValorPrazo <= 0 then
                            ValorPrazo := ValorCartaoFidelizacao;

                          if (ECFAtual <> 'CORISCO CT7000 V3') and (ECFAtual <> 'SWEDAS7000') and (ECFAtual <> 'URANO_1EFC') then
                            begin
                              if TipoPadrao <> 'CRTF' then
                                AbrirCNFV(ECFAtual,
                                          PortaECFAtual,
                                          TotNumECF[1],
                                          Ecf_CNFV[1],
                                          Ecf_ID,
                                          NroCupomFiscal,
                                          SQLParcelasPrazoVendaTempNumerarioLookup.AsString,
                                          ValorPrazo)
                              else
                                AbrirCNFV(ECFAtual,
                                          PortaECFAtual,
                                          TotNumECF[1],
                                          Ecf_CNFV[1],
                                          Ecf_ID,
                                          NroCupomFiscal,
                                          NomeNumerario,
                                          ValorCartaoFidelizacao);

                              if (ECFAtual <> 'SIGTRON FS300') then
                                begin
                                  if (ECFAtual <> 'SIGTRON FS300') then
                                    begin
                                      if (DM.SQLTerminalAtivo.FieldByName('TERMCECFIMPRCONFDIVIMPITENS').AsString = 'S') then
                                        begin
                                          LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Codigo Produto                              '   + Chr(10));
                                          LinhaTextoLivre(ECFAtual, PortaECFAtual, '  V.Unit   Quantidade    Desc.    Total Item'   + Chr(10));
                                          LinhaTextoLivre(ECFAtual, PortaECFAtual, '--------------------------------------------'   + Chr(10));
                                          FormTelaItens.SQLItensVendaTemp.First;
                                          while not FormTelaItens.SQLItensVendaTemp.Eof do
                                            begin
                                              LinhaTextoLivre(ECFAtual, PortaECFAtual, FormatFloat('######000000',FormTelaItens.SQLItensVendaTempCODIGO.Value) +
                                                              '  ' + Copy(FormTelaItens.SQLItensVendaTempDESCRICAO.Value,1,25)) ;
                                              LinhaTextoLivre(ECFAtual, PortaECFAtual, '  ' + FormatFloat('##0.000', FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value)+
                                                                                       '  ' + FormatFloat('##0.000', FormTelaItens.SQLItensVendaTempQUANTIDADE.Value) +
                                                                                       '  ' + FormatFloat('##0.00', FormTelaItens.SQLItensVendaTempVLRDESC.Value) +
                                                                                       '  ' + FormatFloat('##0.00', FormTelaItens.SQLItensVendaTempVLRTOTAL.Value)) ;
                                              formtelaitens.SQLItensVendaTemp.Next;
                                            end;
                                          LinhaTextoLivre(ECFAtual, PortaECFAtual, '--------------------------------------------'   + Chr(10));
                                          if FileExists('Posto.txt') then
                                            begin
                                              LinhaTextoLivre(ECFAtual, PortaECFAtual, 'PLACA.: ' + PlacaCliente  + Chr(10));
                                              LinhaTextoLivre(ECFAtual, PortaECFAtual, 'KM....: ' + KmCliente     + Chr(10));
                                            end;
                                        end;

                                      if DM.SQLTerminalAtivo.FieldByName('TERMCECFIMPRCONFDIVIMPFAT').AsString = 'S' then
                                        begin
                                          if not SQLParcelasPrazoVendaTemp.Active then
                                            SQLParcelasPrazoVendaTemp.open;
                                          SQLParcelasPrazoVendaTemp.First;
                                          if not SQLParcelasPrazoVendaTemp.IsEmpty then
                                            begin
                                              LinhaTextoLivre(ECFAtual, PortaECFAtual, '  Parcela        Vencimento        R$ Valor '   + Chr(10));
                                              LinhaTextoLivre(ECFAtual, PortaECFAtual, '--------------------------------------------'   + Chr(10));

                                              while not SQLParcelasPrazoVendaTemp.Eof do
                                                begin
                                                  LinhaTextoLivre(ECFAtual, PortaECFAtual, '  ' + copy(SQLParcelasPrazoVendaTempNROPARCELA.AsString+'            ',1,12) +
                                                                                           '   '+ SQLParcelasPrazoVendaTempDATAVENCTO.AsString+
                                                                                           '        ' + FormatFloat('##0.000', SQLParcelasPrazoVendaTempVALORVENCTO.Value));
                                                  SQLParcelasPrazoVendaTemp.Next;
                                                end;
                                              LinhaTextoLivre(ECFAtual, PortaECFAtual, '--------------------------------------------');
                                            end;
                                        end;
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)    ' +
                                                                               'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM    ' +
                                                                               'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO    ' +
                                                                               'AUTORIZO A EMISSAO DE CARNE DE COBRANCA DECOR-  ' +
                                                                               '-RENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo) + Chr(13)) ;
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Ass.________________________________________' + Chr(10));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '    ' + LblNomeCliente.Caption  + Chr(10)) ;
                                    end
                                  else
                                    begin
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, FormatFloat('#,##0.00', ValorPrazo) + ' ' + LblNomeCliente.Caption) ;
                                    end;
                                end;
                              // Este tempo foi colocado porque o comando estava sendo enviado antes da impressora terminar
                              //de imprimir, e por isso não fechava o CNFV;
                              Sleep(1000);
                              FecharCNFV(ECFAtual, PortaECFAtual) ;
                            end
                          else
                            begin
                              if ECFAtual = 'CORISCO CT7000 V3' then
                                EmiteCNFV_Corisco(ECFAtual,PortaECFAtual,'CONFISSAO DE DIVIDA' + Chr(13),'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)    '  + Chr(10) +
                                                                        'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM    ' + Chr(10) +
                                                                        'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO    ' + Chr(10) +
                                                                        'AUTORIZO A EMISSAO DE CARNE DE COBRANCA DECOR-  ' + Chr(10) +
                                                                        '-RENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo) + Chr(13) +
                                                                        'Ass.____________________________________________' + Chr(10) +
                                                                        '    ' + LblNomeCliente.Caption  + Chr(13));
                              if (ECFAtual = 'SWEDAS7000') or (ECFAtual = 'URANO_1EFC') then
                                begin
                                  if TipoPadrao <> 'CRTF' then
                                    AbrirCNFV(ECFAtual,
                                              PortaECFAtual,
                                              TotNumECF[1],
                                              Ecf_CNFV[1],
                                              Ecf_ID,
                                              NroCupomFiscal,
                                              SQLParcelasPrazoVendaTempNumerarioLookup.AsString,
                                              ValorPrazo)
                                  else
                                    AbrirCNFV(ECFAtual,
                                              PortaECFAtual,
                                              TotNumECF[1],
                                              Ecf_CNFV[1],
                                              Ecf_ID,
                                              NroCupomFiscal,
                                              NomeNumerario,
                                              ValorCartaoFidelizacao);
                                      if ECFAtual = 'URANO_1EFC' then
                                        LinhaTextoLivre(ECFAtual,PortaECFAtual,'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)    '+
                                                                               'MERCADORIA(S) CONSTANTE(S) NO PRESENTE          '+
                                                                               'CUPOM FISCAL DE PAGAMENTO(S) PREVISTO(S),       '+
                                                                               'BEM COMO AUTORIZO A EMISSAO DE CARNE DE COBRANCA'+
                                                                               'DECORRENTE DA PRESENTE COMPRA DE R$     ' + FormatFloat('#,##0.00', ValorPrazo) +
                                                                               '________________________________________________'+
                                                                               '      ' + LblNomeCliente.Caption)
                                      else
                                        LinhaTextoLivre(ECFAtual,PortaECFAtual,'DECLARO QUE RECEBI A(S) MERCADORIA(S)'+
                                                                               'CONSTANTE(S) NO PRESENTE CUPOM'+
                                                                               'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO'+
                                                                               'AUTORIZO A EMISSAO DE CARNE DE COBRANCA DECOR-'+
                                                                               '-RENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo)+
                                                                               'Ass.____________________________________________'+
                                                                               '    ' + LblNomeCliente.Caption);

                                      Sleep(500);
                                      FecharCNFV(ECFAtual,PortaECFAtual);
                                end;
                            end;
                        end
                      else
                        begin
                          Informa('O Indentificador de CNFV do Numerário "' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString + '" não foi informado, não será possível emitir a confissão de dívida!') ;
                        end ;
                    end;
                end ;
            end;
            //FIM FECHAMENTO CUPOM
            /////////// FINALIZA FECHAMENTO DE CUPOM NA PRE-VENDA ////////////////////

            GravarNumerarioAVistaPreVenda ;

            GravarNumerarioAPrazoPreVenda ;

            GravarItensPreVenda ;

            if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Commit ;
          end ;

        if (TerminalModo = 'C') and (not E_Orcamento) and (SolicitaDataEntrega = 'S') then
          begin
            Application.CreateForm(TFormDataEntrega,FormDataEntrega) ;
            FormDataEntrega.ShowModal ;
            if FormDataEntrega.ModalResult = MrOk then
              begin
                DataEntregaVenda := FormDataEntrega.edtDataEntrega.Text ;
                FormDataEntrega.Close;
              end;
          end;

        //* * * * * * * * * * * * * * * * * * * * * * * * *
        //*               GRAVANDO CUPOM                  *
        //* * * * * * * * * * * * * * * * * * * * * * * * *
        if (TerminalModo = 'C') and (not E_Orcamento)  then
          begin
            if DM.SQLTerminalAtivo.FieldByName('TERMCCONFFECHCUPOM').Value <> 'N' then
              if not Pergunta('SIM', '* * * CONFIRMA O ENCERRAMENTO DESTA VENDA ? * * *') then
                begin
                  FechandoVenda := false ;
                  Exit ;
                end ;

            if (Dm.SQLTerminalAtivo.FieldByName('TERMCINFDADOCLIPAD').AsVariant = 'S') then
              begin
                Application.CreateForm(TFormTelaDadosCliente,FormTelaDadosCliente);
                FormTelaDadosCliente.ShowModal;
                if FormTelaDadosCliente.ModalResult = mrCancel then
                  begin
                    FechandoVenda := False;
                    FinalizacaodeVenda := False;
                    Exit;
                  end;
              end;


            // Informa Dados de identificacao do cliente em vendas NFg
            if (NotaGaucha = 'S') and (ValorTotalVenda.Value > 0) and (ECFAtual <> '') and (ECFAtual <> 'EPSON TERMICA') then
              begin
                repeat
                  CpfOK := False;
                  DocumentoClienteVenda := InputBox('Nota Fiscal Gaucha!','Informar CPF no Cupom?',DocumentoClienteVenda);
                  if DocumentoClienteVenda <> '' then
                    begin
                      if length(DocumentoClienteVenda)=11 then
                        begin
                          if ValidaCPF(DocumentoClienteVenda) then
                            CpfOK := True
                          else
                           ShowMessage('ERRO: O CPF DIGITADO É INVÁLIDO!');
                        end;
                      if length(DocumentoClienteVenda)=14 then
                        begin
                          if ValidaCGC(DocumentoClienteVenda) then
                            CpfOK := True
                          else
                           ShowMessage('ERRO: O CNPJ DIGITADO É INVÁLIDO!');
                        end;
                    end;
                  if DocumentoClienteVenda = '' then
                    CpfOK := True;
                until
                  CpfOK;
              end;

            // Testa os numerarios para nao deixar fechar uma venda se o total for maior que a soma dos numerarios informados
            TotalRetorno := 0;
            SQLParcelasVistaVendaTemp.First;
             while not SQLParcelasVistaVendaTemp.eof do
              begin
                TotalRetorno := TotalRetorno + SQLParcelasVistaVendaTempVALORPARC.Value;
                SQLParcelasVistaVendaTemp.Next;
              end;
            SQLParcelasVistaVendaTemp.First;
            SQLParcelasPrazoVendaTemp.First;
            while not SQLParcelasPrazoVendaTemp.eof do
              begin
                TotalRetorno := TotalRetorno + SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                SQLParcelasPrazoVendaTemp.Next;
              end;
            SQLParcelasPrazoVendaTemp.First;

            {if ValorTotalVenda.Value > TotalRetorno then
              begin
                TotalRetorno := 0;
                ValorRecebido.Value := 0;
                InformaG('O Total de Numerarios são inferiores ao Total da Venda, Verifique!');
                FechandoVenda := False;
                FinalizacaodeVenda := False;
                EstadoFechVendaAnt := '';
                EstadoFechVenda    := FinalizandoVenda;
                PreparaEstadoFech(EstadoFechVenda);
                Exit;
              end;
            TotalRetorno := 0;}
            //------------------------------------------------------------------------------------------

            ImportandoPreVenda := False;

            if copy(TipoPadrao,1,3) = 'CHQ' then
              if not InformarDadosCheque then
                begin
                  FechandoVenda := False;
                  FinalizacaodeVenda := False;
                  Exit;
                end;

            if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Rollback ;

            if not FileExists('SemTransacao.Arq') then
              DM.DB.StartTransaction ;

            if FileExists('FinalVenda.wav') then
              SoundPlay('FinalVenda.wav',Sender);

            if DM.SQLConfigVenda.FieldByName('OPESICODCUPOM').AsVariant <> Null then
              if DM.SQLConfigVenda.FieldByName('OPESICODCUPOM').AsInteger <= 0 then
                begin
                  Informa('A operação de estoque para venda não foi configurada, favor verificar!');
                  FechandoVenda := False;
                  FinalizacaodeVenda := False;
                  EstadoFechVendaAnt := '';
                  EstadoFechVenda    := FinalizandoVenda;
                  PreparaEstadoFech(EstadoFechVenda);
                  Exit;
                end;

            //AQUI CHAMA A TELA P/INFORMAR OS DADOS DO CARTAO CREDITO MANUAL POR ADILSON
            if (DM.SQLTerminalAtivo.FieldByName('TERMCINFDADOCARTAO').Value = 'S') and (TipoPadrao = 'CRT') then
            begin
              Application.CreateForm(TFormTelaDadosCartaoCreditoManual, FormTelaDadosCartaoCreditoManual);
              FormTelaDadosCartaoCreditoManual.EditData.Text := FormatDateTime('dd/mm/yyyy',now);
              FormTelaDadosCartaoCreditoManual.ShowModal ;
            end ;

            // VERIFICANDO SE O CRÉDITO DO CARTÃO FOI APROVADO
            if (ECFAtual <> '')  then
              begin
                if TemNumerarioCartaoVista or TemNumerarioCartaoPrazo then
                  if not VerificaCartaoCredito then
                    begin
                      LblInstrucoes.Caption := 'Executando Transaçã0 TEF...' ;
                      LblInstrucoes.Refresh ;
                      TemNumerarioCartaoPrazo := False;
                      TemNumerarioCartaoVista := False;
                      Application.Restore;
                      Exit;
                    end;
              end;
            //---------------------------------------------------------------------------------------

            // Tenta abrir a gaveta sem ECF
            if (ECFAtual = '') and (PortaECFAtual <> '') then
              begin
                if not DM.SQLECF.Active then DM.SQLECF.Open;
                DM.SQLECF.First;
                while not DM.SQLECF.Eof do
                  begin
                    try
                      if AbrirGaveta(DM.SQLECF.FieldByName('ECFA30MODELO').AsString,PortaECFAtual) then
                      // DM.SQLECF.Last;
                    except
                      Application.ProcessMessages;
                    end;
                    DM.SQLECF.Next;
                  end;
              end;
              if (ECFAtual <> '') and (copy(EcfAtual,1,4) <> 'NFCE') then
                AbrirGaveta(ECFAtual, PortaECFAtual);

              if ImpNaoFiscalAtual <> '' then
                AbrirGaveta_NAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual);

              if FileExists('GAVETA.EXE') then
                WinExec(Pchar('GAVETA.EXE'),sw_Show);

              if (EcfAtual = 'NFCE DR800') and not (FileExists('GAVETA.EXE')) then
                begin
                  dm.ACBrPosPrinter.Device.Desativar;
                  dm.ACBrPosPrinter.Device.Ativar;
                  try
                    dm.ACBrPosPrinter.AbrirGaveta;
                  except
                    Application.ProcessMessages;
                  end;
                end;

            //--------------------------------------------------------------------

            // Grava Cabecalho da Venda
            GravarCupom ;

            //IMPRESSAO DO CARNE
            if (TipoPadrao = 'CRD')
              and (Dm.SQLTerminalAtivo.FieldByName('TERMCCONFIMPCARNE').AsString = 'S')
              and (FileExists(UPPERCASE(DM.PathAplicacao + '\CARNES.EXE'))) then
              begin
                if Pergunta('SIM','* * * DESEJA IMPRIMIR CARNÊ ? * * *') then
                begin
                  //O WHILE ABAIXO SERVE PARA GRAVAR O ID DO CUPOM NA TABELA TEMP.DE CARNE
                  //POIS SOMENTE APOS A GRAVACAO DO CUPOM E POSSIVEL SABER O ID E NAO ONDE AS
                  //PARCELAS ESTAO SENDO GERADAS ACIMA
                  TblCarne.First ;
                  while not TblCarne.EOF do
                  begin
                    TblCarne.Edit ;
                    TblCarneNumeroContrato.AsString := DM.CodNextCupom ;
                    TblCarne.Post ;

                    TblCarne.Next ;
                    Application.ProcessMessages;
                  end ;

                  if FileExists(UPPERCASE(DM.PathAplicacao + '\CARNES.EXE')) then
                    WinExec(Pchar(DM.PathAplicacao + '\CARNES.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show)
                  else
                    Informa('O programa de impressão de carnê não foi encontrado !') ;
                end ;
              end
            else
              begin
                if (TipoPadrao = 'CRD') and (FileExists(UPPERCASE(DM.PathAplicacao + '\CARNES.EXE'))) then
                  begin
                    TblCarne.First ;
                    while not TblCarne.EOF do
                    begin
                      TblCarne.Edit ;
                      TblCarneNumeroContrato.AsString := DM.CodNextCupom ;
                      TblCarne.Post ;
                      TblCarne.Next ;
                      Application.ProcessMessages;
                    end ;

                    if FileExists(UPPERCASE(DM.PathAplicacao + '\CARNES.EXE')) then
                      WinExec(Pchar(DM.PathAplicacao + '\CARNES.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show)
                    else
                      Informa('O programa de impressão de carnê não foi encontrado !') ;

                  end;
              end;

            //INICIO FECHAMENTO CUPOM FISCAL

            if (ECFAtual <> '') and (copy(EcfAtual,1,4) <> 'NFCE') and not (FileExists('Confirma.txt')) then
            begin
              LblInstrucoes.Caption := 'Encerrando Cupom Fiscal' ;
              LblInstrucoes.Refresh ;

              {SE FOI APROVADO O CARTAO DE CREDITO E POSSUI TAXA DE CREDIARIO A
               SER IMPRESSA}
              if VlrTxCrediario.Value > 0 then
                if (ECFAtual <> '') and (PortaECFAtual <> '') and (ECFAtual <> 'SIGTRON FS300') then
                  if not ImprimeItemECF( ECFAtual,             //Impressora
                                         PortaECFAtual,        //Porta
                                         '',                   //Numitem
                                         '0',                  //Codigo
                                         'Taxa Crediario',     //Descricao
                                         TributoTaxaCrediario, //Tributo
                                         '',                   //TipoDesc do Item
                                         'UN',                 //Unid
                                         1,                    //Qtde
                                         VlrTxCrediario.Value, //Valor
                                         0,                    //Percdesc
                                         0,                    //Vlrdesco
                                         2) then               //NumDecQuant}
                    begin
                      Informa('Problemas ao imprimir o item no ECF !');
                      exit;
                    end;

              //EMITIR FECHAMENTO CUPOM FISCAL
              FechouCupomFiscal   := False;
              EnviouNumerariosECF := False;
              repeat
                if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') or
                   ((VlrBonusTroca > 0) or (VlrRetConfig_SldCad > 0)) then
                  begin
                    if not FecharCupomFiscal(ECFAtual,
                                             PortaECFAtual,
                                             Ecf_CNFV,
                                             ValorTotalVenda.Value, // StrToFloat(FormatFloat('###0.00', ValorTotalVenda.Value)),
                                             0, //ACRESCIMO
                                             ValorDescontoAcrescimo.Value +
                                             VlrBonusTroca +
                                             VlrRetConfig_SldCad, //DESCONTO
                                             ValorTroco.Value,
                                             SQLParcelasVistaVendaTemp,
                                             SQLParcelasPrazoVendaTemp,
                                             NomeClienteVenda,
                                             EnderecoClienteVenda,
                                             CidadeClienteVenda,
                                             DocumentoClienteVenda,
                                             DM.CodNextCupom,
                                             LblNomeVendedor.Caption,
                                             Trim(LblNomePlano.Caption),
                                             PlacaCliente) then
                      begin
                        if (ECFAtual <> 'SCHALTER SCF_ECF') then
                          begin
                            if Pergunta('SIM','A impressora fiscal não responde. Deseja tentar novamente?') then
                              FechouCupomFiscal := False
                            else
                              Break;
                          end
                        else
                          FechouCupomFiscal := True;

                        {if Pergunta('SIM','A impressora fiscal não responde. Deseja tentar novamente?') then
                          FechouCupomFiscal := False
                        else
                          Break;}
                      end
                    else
                      FechouCupomFiscal := True;
                  end;

                if LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO' then
                  if not FecharCupomFiscal(ECFAtual,
                                           PortaECFAtual,
                                           Ecf_CNFV,
                                           ValorTotalVenda.Value, // StrToFloat(FormatFloat('###0.00', ValorTotalVenda.Value)),
                                           ValorDescontoAcrescimo.Value,//ACRESCIMO
                                           0,//DESCONTO
                                           ValorTroco.Value,
                                           SQLParcelasVistaVendaTemp,
                                           SQLParcelasPrazoVendaTemp,
                                           NomeClienteVenda,
                                           EnderecoClienteVenda,
                                           CidadeClienteVenda,
                                           DocumentoClienteVenda,
                                           DM.CodNextCupom,
                                           LblNomeVendedor.Caption,
                                           Trim(LblNomePlano.Caption),
                                           PlacaCliente) then
                    begin
                      if (ECFAtual <> 'SCHALTER SCF_ECF') then
                        begin
                          if Pergunta('SIM','A impressora fiscal não responde. Deseja tentar novamente?') then
                            FechouCupomFiscal := False
                          else
                            Break;
                        end
                      else
                        FechouCupomFiscal := True;
                    end
                  else
                    FechouCupomFiscal := True;
               until
                 FechouCupomFiscal;

               if not FechouCupomFiscal then
                 begin
                   if RetornoCartao.TransacaoAutorizada then
                     begin
                       Msg := 'Transação TEF foi cancelada!' + #13 + #13 +
                              'Rede --> ' + RetornoCartao.NomeRede + #13 +
                              'Documento(NSU) --> ' + RetornoCartao.NroTransacao + #13;
                       if RetornoCartao.ValorTotal <> ' ' then
                         Msg := Msg + 'Valor --> ' + FormatFloat('#,##0.00',StrToFloat(RetornoCartao.ValorTotal)/ 100);
                       Application.MessageBox(PChar(Msg),'Atenção',MB_OK + MB_SYSTEMMODAL + MB_ICONINFORMATION + MB_SETFOREGROUND);
                       Confirma(RetornoCartao.NomeRede,RetornoCartao.NroTransacao,RetornoCartao.Finalizacao,False);
                     end;
                     FechandoVenda := False;
                     FinalizacaodeVenda := False;
                     EstadoFechVendaAnt := '';
                     EstadoFechVenda    := FinalizandoVenda;
                     PreparaEstadoFech(EstadoFechVenda);
                     Application.Restore;
                     Exit;
                 end;

              //EMITIR CONFISSAO DE DÍVIDA PARA CUPOM FISCAL
              if ((TipoPadrao = 'CRD') or (TipoPadrao = 'CRTF') or (TipoPadrao = 'CHQP')) and (DM.SQLTerminalAtivo.FieldByName('TERMCIMPCONFDIVIDA').Value = 'S') then
                begin
                  ImprimeConfDivida := True;
                  If DM.SQLTerminalAtivo.FieldByName('TERMCECFIMPRCONFDIVPERGUNTA').Value = 'S' then
                    imprimeConfDivida:= Pergunta('SIM','Imprimir a Confissão de Dívida?');
                  if ImprimeConfDivida = True then
                    begin
                      SQLParcelasVistaVendaTemp.Last;
                      if (ECFAtual <> 'BEMATECH MP-20 FI') then
                        if (TipoPadrao = 'CRD') or (TipoPadrao = 'CHQP') then
                          TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLParcelasPrazoVendaTempNUMEICOD.AsString)
                        else
                          if TipoPadrao = 'CRTF' then
                            TotNumECF := RetornaTotalizadorNumerarioECF(Ecf_ID, SQLParcelasVistaVendaTempNUMEICOD.AsString);
                      // Retorna Nome Numerario
                      if (TipoPadrao = 'CRD') or (TipoPadrao = 'CHQP') then
                        NomeNumerario := SQLParcelasPrazoVendaTempNumerarioLookup.AsString
                      else
                        NomeNumerario := SQLParcelasVistaVendaTempNumerarioLookup.AsString;

                      if NomeNumerario = '' then
                        NomeNumerario := 'Dinheiro';

                      if (ECFAtual = 'DARUMA FS345') or (ECFAtual = 'BEMATECH MP-25 FI') then
                        NomeNumerarioDaruma345 := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID, SQLParcelasPrazoVendaTempNUMEICOD.AsString);

                      if (TotNumECF <> '') or (ECFAtual = 'BEMATECH MP-20 FI') then
                        begin
                          LblInstrucoes.Caption := 'Emitindo Confissão de Dívida';
                          LblInstrucoes.Refresh ;

                          //ACERTAR VALOR A PRAZO CASO TENHA DIF.ARREDONDAMENTO
                          if (ValorEntrada.Value + ValorPrazo) < ValorTotalVenda.Value then
                            ValorPrazo := ValorPrazo + (ValorTotalVenda.Value - (ValorEntrada.Value+ValorPrazo)) ;
                          if (ValorEntrada.Value + ValorPrazo) > ValorTotalVenda.Value then
                            ValorPrazo := ValorPrazo - ((ValorEntrada.Value+ValorPrazo)-ValorTotalVenda.Value) ;

                          // Alimenta Variável
                          if ValorPrazo <= 0 then
                            ValorPrazo := ValorCartaoFidelizacao;

                          /////////////////////////////////////
                          if (ECFAtual <> 'CORISCO CT7000 V3') and (ECFAtual <> 'SWEDAS7000') and (ECFAtual <> 'URANO_1EFC') then
                            begin
                              if ((ECFAtual <> 'DARUMA FS345') and (ECFAtual <> 'BEMATECH MP-25 FI')) then
                                begin
                                  if TipoPadrao <> 'CRTF' then
                                    AbrirCNFV(ECFAtual,
                                              PortaECFAtual,
                                              TotNumECF[1],
                                              Ecf_CNFV[1],
                                              Ecf_ID,
                                              NroCupomFiscal,
                                              SQLParcelasPrazoVendaTempNumerarioLookup.AsString,
                                              ValorPrazo)
                                  else
                                    AbrirCNFV(ECFAtual,
                                              PortaECFAtual,
                                              TotNumECF[1],
                                              Ecf_CNFV[1],
                                              Ecf_ID,
                                              NroCupomFiscal,
                                              NomeNumerario,
                                              ValorCartaoFidelizacao);
                                end
                              else
                                AbrirCNFV(ECFAtual,
                                          PortaECFAtual,
                                          TotNumECF[1],
                                          Ecf_CNFV[1],
                                          Ecf_ID,
                                          NroCupomFiscal,
                                          NomeNumerarioDaruma345,
                                          ValorTotalVenda.Value);

                              if (ECFAtual <> 'SIGTRON FS300') then
                                begin
                                   if DM.SQLTerminalAtivo.FieldByName('TERMCECFIMPRCONFDIVIMPFAT').AsString = 'S' then
                                begin
                                  if not SQLParcelasPrazoVendaTemp.Active then
                                    SQLParcelasPrazoVendaTemp.open;
                                  SQLParcelasPrazoVendaTemp.First;
                                  if not SQLParcelasPrazoVendaTemp.IsEmpty then
                                  begin
                                    LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Contrato: ' + DM.CodNextCupom);
                                    LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ');
                                    LinhaTextoLivre(ECFAtual, PortaECFAtual, '  Parcela        Vencimento        R$ Valor '   + Chr(10));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '------------------------------------------------');

                                    while not SQLParcelasPrazoVendaTemp.Eof do
                                      begin
                                        LinhaTextoLivre(ECFAtual, PortaECFAtual, '  ' + copy(SQLParcelasPrazoVendaTempNROPARCELA.AsString+'            ',1,12) +
                                                                                 '   '+ SQLParcelasPrazoVendaTempDATAVENCTO.AsString+
                                                                                 '        ' + FormatFloat('##0.000', SQLParcelasPrazoVendaTempVALORVENCTO.Value));
                                        SQLParcelasPrazoVendaTemp.Next;
                                      end;
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '------------------------------------------------');
                                  end;
                                end;
                                if (DM.SQLTerminalAtivo.FieldByName('TERMCECFIMPRCONFDIVIMPITENS').AsString = 'S') then
                                    begin
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Contrato: ' + DM.CodNextCupom);
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ');
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Codigo Produto                              ');
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '  V.Unit   Quantidade    Desc.    Total Item');
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '--------------------------------------------');
                                      FormTelaItens.SQLItensVendaTemp.First;
                                      while not FormTelaItens.SQLItensVendaTemp.Eof do
                                        begin
                                          LinhaTextoLivre(ECFAtual, PortaECFAtual, FormatFloat('######000000',FormTelaItens.SQLItensVendaTempCODIGO.Value) +
                                                          '  ' + Copy(FormTelaItens.SQLItensVendaTempDESCRICAO.Value,1,25)) ;
                                          LinhaTextoLivre(ECFAtual, PortaECFAtual, '  ' + FormatFloat('##0.000', FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value)+
                                                                                   '      ' + FormatFloat('##0.000', FormTelaItens.SQLItensVendaTempQUANTIDADE.Value) +
                                                                                   '       ' + FormatFloat('##0.00', FormTelaItens.SQLItensVendaTempVLRDESC.Value) +
                                                                                   '        ' + FormatFloat('##0.00', FormTelaItens.SQLItensVendaTempVLRTOTAL.Value)) ;
                                          formtelaitens.SQLItensVendaTemp.Next;
                                        end;


                                      {LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Produto                V.Unit  Quant  Total Item');
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '------------------------------------------------');
                                      FormTelaItens.SQLItensVendaTemp.First;
                                      while not FormTelaItens.SQLItensVendaTemp.Eof do
                                        begin
                                          LinhaTextoLivre(ECFAtual, PortaECFAtual, copy(FormTelaItens.SQLItensVendaTempDESCRICAO.Value+'                       ',1,23) +
                                                                                   ' ' + FormatFloat('##0.000', (FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value-FormTelaItens.SQLItensVendaTempVLRDESC.Value))+
                                                                                   '  ' + FormatFloat('##0.000', FormTelaItens.SQLItensVendaTempQUANTIDADE.Value) +
                                                                                   '     ' + FormatFloat('#,##0.00', FormTelaItens.SQLItensVendaTempVLRTOTAL.Value)) ;
                                          formtelaitens.SQLItensVendaTemp.Next;
                                        end;
                                      }
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '------------------------------------------------');
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'CLIENTE: ' + copy(ConverteAcentos(NomeClienteVenda),1,30) + Chr(13));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, DocumentoClienteVenda + Chr(13));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'END: ' + ConverteAcentos(Copy(EnderecoClienteVenda, 01, 35)) + Chr(13));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'CID: ' + ConverteAcentos(Copy(CidadeClienteVenda,   01, 35)) + Chr(13));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'PLACA.: ' + PlacaCliente  + '  KM.: ' + KmCliente);
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'VEND: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomeVendedor') as TRxLabel).Caption),1,10) + Chr(13));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'PLANO: ' + copy(ConverteAcentos((Application.FindComponent('FormTelaFechamentoVenda').FindComponent('LblNomePlano') as TRxLabel).Caption),1,17) + Chr(13));
                                    end;
                                  if (TipoPadrao <> 'CHQP') then
                                    begin
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '------------------------------------------------');
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, '               CONFISSAO  DE  DIVIDA           ');
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, 'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)');
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, 'MERCADORIA(S) CONSTANTE(S)  NO  CUPOM FISCAL');
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, 'VINCULADO A ESTE.   CONFESSO-ME DEVEDOR(A) E');
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, 'AUTORIZO  A  EMISSAO DE COBRANCA  DECORRENTE');
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, 'DA PRESENTE COMPRA DE R$ ' + FormatFloat('##0.00', ValorPrazo));
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ' + Chr(10));
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Ass.________________________________________');
                                       LinhaTextoLivre(ECFAtual, PortaECFAtual, '    ' + LblNomeCliente.Caption) ;
                                    end
                                  else
                                    begin
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'CLIENTE    : ' + Copy(LblNomeCliente.Caption,1,30) + Chr(10)) ;
                                      if SQLParcelasPrazoVendaTemp.RecordCount = 1 then
                                        LinhaTextoLivre(ECFAtual, PortaECFAtual, 'VENCTO   : ' + FormatDateTime('dd/mm/yyyy',SQLParcelasPrazoVendaTempDATAVENCTO.Value)+ Chr(10));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'VLR.COMPRA :          ' + FormatFloat('##0.00', ValorTotalVenda.Value-(ValorDescontoAcrescimo.Value+VlrTotJuroDia)) + Chr(10));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, 'JUROS      :          ' + FormatFloat('##0.00', ValorDescontoAcrescimo.Value+VlrTotJuroDia) + Chr(10));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '           --------------' + Chr(10));
                                      LinhaTextoLivre(ECFAtual, PortaECFAtual, '                    ' + FormatFloat('##0.00', (SQLParcelasPrazoVendaTempVALORVENCTO.Value+ValorDescontoAcrescimo.Value)) + Chr(10));
                                    end;
                                end
                              else
                                begin
                                   LinhaTextoLivre(ECFAtual, PortaECFAtual, 'Contrato: ' + DM.CodNextCupom);
                                   LinhaTextoLivre(ECFAtual, PortaECFAtual, ' ');
                                   LinhaTextoLivre(ECFAtual, PortaECFAtual, FormatFloat('##0.00', ValorTotalVenda.Value) + ' ' + LblNomeCliente.Caption) ;
                                end;

                              // Este tempo foi colocado porque o comando estava sendo enviado antes da impressora terminar
                              //de imprimir, e por isso não fechava o CNFV;
                              Sleep(1000);
                              FecharCNFV(ECFAtual, PortaECFAtual) ;
                            end
                          else
                            begin
                              if ECFAtual = 'CORISCO CT7000 V3' then
                                EmiteCNFV_Corisco(ECFAtual,PortaECFAtual,'CONFISSAO DE DIVIDA' + Chr(13),'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)    '  + Chr(10) +
                                                                         'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM    ' + Chr(10) +
                                                                         'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO    ' + Chr(10) +
                                                                         'AUTORIZO A EMISSAO DE CARNE DE COBRANCA DECOR-  ' + Chr(10) +
                                                                         '-RENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo) + Chr(13) +
                                                                         'Ass.____________________________________________' + Chr(10) +
                                                                         '    ' + LblNomeCliente.Caption  + Chr(13));
                              if (ECFAtual = 'SWEDAS7000') or (ECFAtual = 'URANO_1EFC') then
                                begin
                                  if TipoPadrao <> 'CRTF' then
                                    AbrirCNFV(ECFAtual,
                                              PortaECFAtual,
                                              TotNumECF[1],
                                              Ecf_CNFV[1],
                                              Ecf_ID,
                                              NroCupomFiscal,
                                              SQLParcelasPrazoVendaTempNumerarioLookup.AsString,
                                              ValorPrazo)
                                  else
                                    AbrirCNFV(ECFAtual,
                                              PortaECFAtual,
                                              TotNumECF[1],
                                              Ecf_CNFV[1],
                                              Ecf_ID,
                                              NroCupomFiscal,
                                              NomeNumerario,
                                              ValorCartaoFidelizacao);

                                      if ECFAtual = 'URANO_1EFC' then
                                        LinhaTextoLivre(ECFAtual,PortaECFAtual,'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)    '+
                                                                               'MERCADORIA(S) CONSTANTE(S) NO PRESENTE          '+
                                                                               'CUPOM FISCAL DE PAGAMENTO(S) PREVISTO(S),       '+
                                                                               'BEM COMO AUTORIZO A EMISSAO DE CARNE DE COBRANCA'+
                                                                               'DECORRENTE DA PRESENTE COMPRA DE R$     ' + FormatFloat('#,##0.00', ValorPrazo) +
                                                                               '________________________________________________'+
                                                                               '      ' + LblNomeCliente.Caption)
                                      else
                                        LinhaTextoLivre(ECFAtual,PortaECFAtual,'DECLARO QUE RECEBI A(S) MERCADORIA(S)'+
                                                                               'CONSTANTE(S) NO PRESENTE CUPOM'+
                                                                               'FISCAL DE PAGAMENTO(S) PREVISTO(S), BEM COMO'+
                                                                               'AUTORIZO A EMISSAO DE CARNE DE COBRANCA DECOR-'+
                                                                               '-RENTE DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo)+
                                                                               'Ass.____________________________________________'+
                                                                               '    ' + LblNomeCliente.Caption);
                                      Sleep(500);
                                      FecharCNFV(ECFAtual,PortaECFAtual);
                                end;
                            end;
                        end
                      else
                        begin
                          Informa('O Indentificador de CNFV do Numerário "' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString + '" não foi informado, não será possível emitir a confissão de dívida!') ;
                        end;
                    end;
                end;
              LblInstrucoes.Caption := 'Finalizando Cupom Fiscal';
              LblInstrucoes.Refresh ;
            end;

            GravarItensCupom ;

            GravarMontanteCaixa ;

            GravarNumerarioAVistaCupom;

            GravarNumerarioAPrazoCupom;

            GravarCaixaPrazo;

            //IMPRIMIR PRE-VENDA - DENTRO DESTA ROTINA TEM A CHAMADA DA TELA
            if (DM.SQLTerminalAtivo.FieldByName('TERMCIMPPREVENDA').AsString = 'S') then
              GravarTabelaTempImpPreVendaDeCupom(DM.CodNextCupom, SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, DM.SQLCup, DM.SQLCupomIt, TotalVistaAut, 'N');

            //IMPRIMIR DADOS DA ENTREGA DA VENDA ATUAL
            if (DM.SQLConfigVenda.FieldByName('CFVECINFDADOVENDA').Value = 'S') then
              begin
                if Pergunta('Nao', '* * * IMPRIMIR DADOS DE ENTREGA DA VENDA ATUAL ? * * *') then
                  begin
                    Application.CreateForm(TFormTelaImpressaoDadosVenda, FormTelaImpressaoDadosVenda) ;
                    FormTelaImpressaoDadosVenda.ImprimeClick(Nil) ;
                  end;
              end ;

            if (ECFAtual = '') and (ImpNaoFiscalAtual <> '') and
               ((TipoPadrao = 'CRD') or (TipoPadrao = 'CRTF')) and (DM.SQLTerminalAtivo.FieldByName('TERMCIMPCONFDIVIDA').Value = 'S') then
              begin
                ImprimeConfDivida := True;
                If DM.SQLTerminalAtivo.FieldByName('TERMCECFIMPRCONFDIVPERGUNTA').Value = 'S' then
                  imprimeConfDivida:= Pergunta('SIM','Imprimir a Confissão de Dívida?');
                if ImprimeConfDivida = True then
                  begin
                    LblInstrucoes.Caption := 'Emitindo Confissão de Dívida' ;
                    LblInstrucoes.Refresh ;
                    // Alimenta Variável
                    if ValorPrazo <= 0 then
                      ValorPrazo := ValorCartaoFidelizacao;

                    if not ImprimeConfissaoDividaNAOFISCAL(ImpNaoFiscalAtual,PortaImpNaoFiscalAtual) then
                      Informa('Problemas ao Imprimir a Confissão de Dívida, verifique a impressora!');
                  end;
              end;

            FinalizacaodeVenda := false ;

            if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Commit ;

            //IMPRESSAO DO CARNE COM ITENS /////////////////
            if (TipoPadrao = 'CRD') and (FileExists(UPPERCASE('CARNESITEM.EXE'))) then
              begin
                if Pergunta('SIM','* * * DESEJA IMPRIMIR CARNÊ COM OS ITENS DA VENDA? * * *') then
                  begin
                    //O WHILE ABAIXO SERVE PARA GRAVAR O ID DO CUPOM NA TABELA TEMP.DE CARNE
                    //POIS SOMENTE APOS A GRAVACAO DO CUPOM E POSSIVEL SABER O ID E NAO ONDE AS
                    //PARCELAS ESTAO SENDO GERADAS ACIMA
                    TblCarne.Open;
                    TblCarne.First;
                    while not TblCarne.EOF do
                      begin
                        TblCarne.Edit;
                        TblCarneNumeroContrato.AsString := DM.CodNextCupom;
                        TblCarne.Post;

                        TblCarne.Next;
                        Application.ProcessMessages;
                      end ;
                    WinExec(Pchar('CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show);
                  end;
              end;
            //////////////////////////////// fim impressao do carne com itens ///////

            // Verifica se tem que imprimir Vale Troco ----------------------------
            if (ECFAtual <> '') and (PortaECFAtual <> '') and (ValorTroco.Value>0) then
              begin
                ImpValeTroco := False;
                SQLParcelasVistaVendaTemp.First;
                while not SQLParcelasVistaVendaTemp.eof do
                  begin
                    if (SQLLocate('NUMERARIO','NUMEICOD','NUMECVALETROCO',SQLParcelasVistaVendaTempNUMEICOD.asstring) = 'S') then
                      begin
                        TxtReciboECF := 'V A L E   T R O C O' +#13+#10+ #13+#10+
                        'Valor..: '+FormatFloat('##0.00',ValorTroco.Value)+#13+#10;
                        AbrirReciboFiscal(ECFAtual, TxtReciboECF);
                        AbrirReciboFiscal(ECFAtual, TxtReciboECF);
                        SQLParcelasVistaVendaTemp.Last;
                        ImpValeTroco := True;
                      end;
                    SQLParcelasVistaVendaTemp.next;
                  end;
                SQLParcelasPrazoVendaTemp.First;
                while not SQLParcelasPrazoVendaTemp.eof do
                  begin
                    if not ImpValeTroco then
                      if (SQLLocate('NUMERARIO','NUMEICOD','NUMECVALETROCO',SQLParcelasPrazoVendaTempNUMEICOD.asstring) = 'S') then
                        begin
                          TxtReciboECF := 'V A L E   T R O C O' +#13+#10+ #13+#10+
                          'Valor..: '+FormatFloat('##0.00',ValorTroco.Value)+#13+#10;
                          AbrirReciboFiscal(ECFAtual, TxtReciboECF);
                          AbrirReciboFiscal(ECFAtual, TxtReciboECF);
                          SQLParcelasPrazoVendaTemp.Last;
                          ImpValeTroco := True;
                        end;
                    SQLParcelasPrazoVendaTemp.next;
                  end;
              end;
            // --------------------------------------------------------------------
          end ;

        if (TerminalModo = 'P') and (E_Orcamento)  then
          begin
            if DM.SQLTerminalAtivo.FieldByName('TERMCCONFFECHCUPOM').Value <> 'N' then
              if not Pergunta('SIM', '* * * CONFIRMA O ENCERRAMENTO DESTE ORÇAMENTO ? * * *') then
                Exit ;

            Application.CreateForm(TFormTelaFechamentoOrcamento, FormTelaFechamentoOrcamento) ;
            FormTelaFechamentoOrcamento.ShowModal ;
            Tipo_Orc_Ped := 'O' ;

            {if not FileExists('SemTransacao.Arq') then
              if DM.DB.InTransaction then
                DM.DB.Rollback ;}

            if not FileExists('SemTransacao.Arq') then
              DM.DB.StartTransaction;

            DeleteFile(DM.DBRel.Directory + 'PedidoCab*.*');

            GravarOrcamento;
            GravarItensOrcamento;
            GravarNumerarioAPrazoOrcamento;
            FormTelaFechamentoOrcamento.Destroy ;

            if DM.DB.InTransaction then
              DM.DB.Commit;

            if E_Orcamento then
              begin
                if (DM.SQLTerminalAtivo.FieldByName('TERMACTIPOIMPPEDORC').AsString <> '') then
                  begin
                    LblInstrucoes.Caption := 'Impressão do Orçamento ' + DM.CodNextOrc;
                    LblInstrucoes.Refresh;
                    Case DM.SQLTerminalAtivo.FieldByName('TERMACTIPOIMPPEDORC').AsString[1] of
                      '0' : begin
                              // Prepara Impressão de Pedido/Orçamento
                              // Padrao 80 Colunas bobina;
                              GravarTabelaTempImpOrcamento(DM.CodNextOrc,DM.SQLPedidoOrcamento,DM.SQLPedidoOrcamentoItem);
                              Application.CreateForm(TFormTelaImpressaoPreVenda, FormTelaImpressaoPreVenda);
                              FormTelaImpressaoPreVenda.ImprimeClick(Nil);
                            end;
                      '1' : begin
                              // Padrão Matricial/Deskjet/Laser
                              if DM.SQLConfigGeralCFGEA255PATHREPORT.AsString <> '' then
                                begin
                                  if Pergunta('Nao', '* * * IMPRIMIR ORÇAMENTO ATUAL ? * * *') then
                                    begin
                                      GeraArquivoExternoParaImpOrcamento(DM.CodNextOrc,SQLParcelasPrazoVendaTempVALORVENCTO.FieldName,SQLParcelasPrazoVendaTempDATAVENCTO.FieldName,DM.SQLPedidoOrcamento,DM.SQLPedidoOrcamentoItem,SQLParcelasVistaVendaTemp,SQLParcelasPrazoVendaTemp);
                                      DM.Report.DiscardSavedData    := True;
                                      DM.Report.ReportName          := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Pedido Orcamento.rpt';
                                      DM.Report.ReportTitle         := 'Orçamento';
                                      DM.Report.WindowStyle.Title   := 'Orçamento';
                                      if Dm.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').AsString <> '' then
                                        begin
                                          DM.Report.Output          := toPrinter;
                                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').AsString;
                                        end
                                      else
                                        DM.Report.Output            := toWindow;
                                      DM.Report.Execute;
                                      if Pergunta('Nao', '* * * IMPRIMIR 2 VIA DO ORÇAMENTO ATUAL ? * * *') then
                                        DM.Report.Execute;
                                    end;
                                end
                              else
                                Informa('O pedido/orçamento padrão não foi encontrado, verifique suas configurações!');
                            end;
                      '2' : begin
                              // Personalizado
                              if FileExists(DM.SQLTerminalAtivo.FieldByName('TERMTPATHPEDORC').AsString) then
                                begin
                                  if Pergunta('Nao', '* * * IMPRIMIR ORÇAMENTO ATUAL ? * * *') then
                                    begin
                                      GeraArquivoExternoParaImpOrcamento(DM.CodNextOrc,SQLParcelasPrazoVendaTempVALORVENCTO.FieldName,SQLParcelasPrazoVendaTempDATAVENCTO.FieldName,DM.SQLPedidoOrcamento,DM.SQLPedidoOrcamentoItem,SQLParcelasVistaVendaTemp,SQLParcelasPrazoVendaTemp);
                                      DM.Report.DiscardSavedData    := True;
                                      DM.Report.ReportName          := DM.SQLTerminalAtivo.FieldByName('TERMTPATHPEDORC').Value;
                                      DM.Report.ReportTitle         := 'Orçamento';
                                      DM.Report.WindowStyle.Title   := 'Orçamento';
                                      if Dm.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').AsString <> '' then
                                        begin
                                          DM.Report.Output          := toPrinter;
                                          DM.Report.Printer.Name    := Dm.SQLTerminalAtivo.FieldByName('TERMA60IMPPEDIDO').AsString;
                                        end
                                      else
                                        DM.Report.Output            := toWindow;
                                      DM.Report.Execute;
                                      if Pergunta('Nao', '* * * IMPRIMIR 2 VIA DO ORÇAMENTO ATUAL ? * * *') then
                                        DM.Report.Execute;
                                    end;
                                end
                              else
                                Informa('O arquivo para impressão de pedido/orçamento personalizado não foi encontrado, verifique suas configurações!');
                            end;
                      '3' : begin
                              // Arquivo Externo PedidoVenda.exe
                              if FileExists('PedidoVenda.exe') then
                                begin
                                  if Pergunta('Nao', '* * * IMPRIMIR ORÇAMENTO ATUAL ? * * *') then
                                    WinExec(PChar('PedidoVenda.exe '+ DM.CodNextOrc + ' PDV'),SW_SHOW);
                                end
                              else
                                begin
                                  Informa('Você configurou o sistema para imprimir Pedido/Orçamento com arquivo externo, mas o arquivo PEDIDOVENDA.EXE, não foi encontrado favor verificar!');
                                end;
                            end;
                    end;
                  end
                else
                  begin
                    Informa('Este orçamento não será impresso porque as configurações estão incompletas!');
                  end;
              end;
          end;
        if (PedidosImportados <> '') and (not AtualizarPedidos)  then
          begin
            while PedidosImportados <> '' do
              begin
                LblInstrucoes.Caption := 'Atualizando Status PRÉ-VENDA';
                LblInstrucoes.Refresh ;
                TermCod := Copy(PedidosImportados, 1, Pos('-',PedidosImportados)-1);
                PrvCod  := Copy(PedidosImportados, Pos('-',PedidosImportados)+1, 6);

                Delete(PedidosImportados,1,Pos('-',PedidosImportados)+7);

                DM.SQLTemplate.Close;
                DM.SQLTemplate.SQL.Clear;
                DM.SQLTemplate.SQL.Add('Update PREVENDA');
                if ContinuarPrevenda then
                  DM.SQLTemplate.SQL.Add('Set PRVDCIMPORT = "C"')
                else
                  DM.SQLTemplate.SQL.Add('Set PRVDCIMPORT = "S"');
                DM.SQLTemplate.SQL.Add('Where');
                DM.SQLTemplate.SQL.Add('TERMICOD = ' + TermCod + ' And ');
                DM.SQLTemplate.SQL.Add('PRVDICOD = ' + PrvCod);
                DM.SQLTemplate.ExecSQL;

                ContinuarPrevenda      := False;
                ReativarPreVenda       := False;
                vImportarPrevenda      := False;
                vImportarOrcamento     := False;
              end;
          end;
        if (PedidosImportados <> '') and (AtualizarPedidos) then
          begin
            while PedidosImportados <> '' do
              begin
                LblInstrucoes.Caption := 'Atualizando Status PEDIDOS/ORÇAMENTOS';
                LblInstrucoes.Refresh;
                if Pos(',',PedidosImportados) > 0 then
                  begin
                    IDPedido := Copy(PedidosImportados, 1, Pos(',',PedidosImportados)-1);
                    Delete(PedidosImportados,1,Pos(',',PedidosImportados))
                  end
                else
                  begin
                    IDPedido := Copy(PedidosImportados, 1, Length(PedidosImportados));
                    Delete(PedidosImportados,1,Length(PedidosImportados));
                  end;

                DM.SQLTemplate.Close;
                DM.SQLTemplate.SQL.Clear;
                DM.SQLTemplate.SQL.Add('Update PEDIDOVENDA');
                DM.SQLTemplate.SQL.Add('Set Pendente="S", PDVDCIMPORTADO = "S"');
                DM.SQLTemplate.SQL.Add('Where');
                DM.SQLTemplate.SQL.Add('PDVDA13ID = "' + IDPedido + '"');
                DM.SQLTemplate.ExecSQL;
              end;
          end;
        PedidosImportados := '';

        //AUTENTICAR ENTRADA DE VENDA A PRAZO
        if (DM.SQLTerminalAtivo.FieldByName('TERMCAUTENTRFIMCUP').Value = 'S') and (TipoPadrao = 'CRD') then
          begin
            ValorEntradaAut := 0;
            SQLCupomNumerarioAut.Close;
            SQLCupomNumerarioAut.MacroByName('MFiltro').Value := 'CUPOA13ID = "' + DM.CodNextCupom +
                                                                 '" and CPNMCAUTENT is null';
            SQLCupomNumerarioAut.Open;
            if not SQLCupomNumerarioAut.EOF then
              while not SQLCupomNumerarioAut.Eof do
                begin
                  ValorEntradaAut := ValorEntradaAut + SQLCupomNumerarioAutCPNMN2VLR.Value;
                  SQLCupomNumerarioAut.Next;
                end ;
            //ENVIAR AUTENTICACAO PARA O ECF
            if (ValorEntradaAut > 0) and (ECFAtual <> '') and (PortaECFAtual <> '')
              and (ECFAtual <> 'SCHALTER SCF_ECF')then //ESTE TESTE EXISTE PQ NA SCHALTER A AUTENT.
                                                      //TEM QUE SER FEITA ANTES DE FECHAR O CUMPOM.
              Autenticacao( ECFAtual,       //Impressora
                            PortaECFAtual,  //Porta,
                            Ecf_CNFNV,      //Identificador
                            Ecf_ID,         //Ecf_ID
                            DM.CodNextCupom,//Documento
                            '0',            //Parcela
                            'Entrada',
                            ValorEntradaAut,//Valor
                            SQLCupomNumerarioAutNUMEICOD.Value,'');//NumerarioCod

            SQLCupomNumerarioAut.First ;
            while not SQLCupomNumerarioAut.Eof do
              begin
                SQLCupomNumerarioAut.Edit ;
                SQLCupomNumerarioAutCPNMCAUTENT.Value := 'S' ;
                SQLCupomNumerarioAut.Post ;
                SQLCupomNumerarioAut.Next ;
              end ;
          end ;

        FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda' ;
        FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;

        // IMPRIME AUTORIZACAO DO CARTAO DE CREDITO
        if (ECFAtual <> '') and (copy(ECFAtual,1,4) <> 'NFCE') and (RetornoCartao.TransacaoAutorizada) then
          begin
            LockWindowUpdate(FormTelaFechamentoVenda.Handle);
            DadosImpressora.ECFAtual := ECFAtual;
            DadosImpressora.PortaECFAtual := PortaECFAtual;
            DadosImpressora.TotNumECFImp := RetornaTotalizadorNumerarioECF(Ecf_ID,dm.NumerarioCartao);
            DadosImpressora.Ecf_CNFV := Ecf_CNFV;
            DadosImpressora.Ecf_ID := Ecf_ID;
            DadosImpressora.NroCupomFiscal := NroCupomFiscal;
            if ((ECFAtual = 'DARUMA FS345') or (ECFAtual = 'BEMATECH MP-25 FI')) then
              DadosImpressora.DescricaoNumerario := RetornaTotalizadorNumerarioECFDarumaFS345(Ecf_ID, dm.NumerarioCartao)
            else
              DadosImpressora.DescricaoNumerario := NomeNumerarioCartao;

            DadosImpressora.ValorImp := dm.TotalCartao;

            // SE LINHAS MAIOR QUE ZERO DENTRO DO RETORNO IMPRIMIR O CUPOM TEF
            if RetornoCartao.QtdeLinhas > 0 then
              begin
                if not ImprimeRetorno(RetornoCartao,DadosImpressora,NroViasTEF,False) then
                  begin
                    CancelarCupomFiscal(ECFAtual,PortaECFAtual);
                    CancelamentoCupom(DM.CodNextCupom,IntToStr(UsuarioCorrente));
                  end;
              end
            else
              begin
                if (Copy(TipoPadrao,1,3) = 'CHQ') and (RetornoCartao.TransacaoAutorizada) then
                  begin
                    Application.Restore;
                    Informa(RetornoCartao.RetornoOperador);
                  end;
              end;
          end;
        LockWindowUpdate(0);

        // MOSTRA INFORMACOES AO USUARIO ANTES DE FECHAR A TELA DE FECHAMENTO DE VENDA
        if (TerminalModo = 'P') and (DM.SQLTerminalAtivo.FieldByName('TERMCMOSTRAIDCUPOM').AsString = 'S') and (not E_Orcamento) then
          begin
            LblInstrucoes.Caption := 'PRÉ-VENDA FINALIZADA COM SUCESSO !' ;
            LblInstrucoes.Refresh ;
            InformaG('ANOTE O CÓDIGO DESTA PRÉ-VENDA :' + #13 + '* * * [ ' + IntToStr(TerminalAtual) + '.' +  IntToStr(CodNextPreVenda) + ' ] * * *') ;
          end ;
        if (TerminalModo = 'C') and (DM.SQLTerminalAtivo.FieldByName('TERMCMOSTRAIDCUPOM').AsString = 'S') and (not E_Orcamento) then
          begin
            LblInstrucoes.Caption := 'CUPOM FINALIZADO COM SUCESSO !' ;
            LblInstrucoes.Refresh ;
            InformaG('ANOTE O CÓDIGO DO CUPOM :' + #13 + '* * * [ ' + DM.CodNextCupom + ' ] * * *') ;
          end ;

        if (DM.SQLTerminalAtivo.FieldByName('TERMCMOSTRAIDCUPOM').AsString = 'S') and (E_Orcamento) then
          begin
            LblInstrucoes.Caption := 'ORÇAMENTO FINALIZADO COM SUCESSO !' ;
            LblInstrucoes.Refresh ;
            InformaG('ANOTE O CÓDIGO DO ORÇAMENTO :' + #13 + '* * * [ ' + DM.CodNextOrc + ' ] * * *') ;
          end ;

        if (NroCupomFiscal = '') and (ECFAtual <> '') and (not E_Orcamento) and (copy(EcfAtual,1,4) <> 'NFCE') then
          begin
            InformaG('O NÚMERO DO CUPOM FISCAL NÃO SERÁ REGISTRADO NESTA VENDA, FAVOR INFORMAR MANUALMENTE NA MANUTENÇÃO DE CUPOM!' +#13+ 'ID CUPOM : [ ' + DM.CodNextCupom + ' ]');
          end ;

        if (TerminalModo = 'C') and (DM.SQLTerminalAtivo.FieldByName('TERMCMOSTRATROCOCUP').AsString = 'S') and (not E_Orcamento) and (VarValorTroco > 0) then
          begin
            // MANDA DADOS DISPLAY TECLADO
            IF TecladoReduzidoModelo = 'TEC44DIS' THEN
              EnviaTecladoTextoDisplay44('Troco para o Cliente',FormatFloat('R$ ##0.00',VarValorTroco));
            IF TecladoReduzidoModelo = 'TEC65' THEN
              EnviaTecladoTextoDisplay65('Troco para o Cliente',FormatFloat('R$ ##0.00',VarValorTroco));

            Application.CreateForm(TFormTelaTroco,FormTelaTroco);
            FormTelaTroco.labeltroco.Caption :=  FormatFloat('R$ ##0.00',VarValorTroco);
            FormTelaTroco.ShowModal;
          end ;

        // MANDA DADOS DISPLAY TECLADO
        IF TecladoReduzidoModelo = 'TEC44DIS' THEN
          EnviaTecladoTextoDisplay44('Caixa Livre','');
        IF TecladoReduzidoModelo = 'TEC65' THEN
          EnviaTecladoTextoDisplay65('Caixa Livre','');

        // CHAMAR EXEC DE IMPRESSAO PASSANDO PARAMETRO CUPOM PARA MONTAGEM SEM USAR TAB TEMPORARIA, VERTEBRALLE
        if (DM.SQLTerminalAtivo.FieldByName('TERMCIMPPREVENDA').AsString = 'S') then
          begin
            try
              if FileExists(DM.PathAplicacao   + 'ImpressaoViaParametro.exe') then
                WinExec(Pchar(DM.PathAplicacao + 'ImpressaoViaParametro.exe ' + dm.CodNextCupom),sw_Show);
            except
              Application.ProcessMessages;
            end;
          end;

        FormTelaItens.LimparTabTempItens;
        FormTelaItens.CurSubTotal.Value := 0;
        FormTelaItens.CurSubTotal.Update;
        FormTelaItens.LblSubTotal.caption := '0,00';
        FormTelaItens.lblSubTotal.Update;
        Close ;
        if not FileExists('Confirma.txt') then
          ImpCupomAutomatico := True;
      end ;
    end ;
end;

procedure TFormTelaFechamentoVenda.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  NomeClie : string ;
  RetornoUser : TInfoRetornoUser;
begin
  case Key of
     VK_F1:begin
             if FinalizacaodeVenda then exit;
             Application.CreateForm(TFormTelaTeclasAtalhoTelaFechamentoVenda, FormTelaTeclasAtalhoTelaFechamentoVenda);
             FormTelaTeclasAtalhoTelaFechamentoVenda.ShowModal;
           end;
     VK_F2:begin
             if FinalizacaodeVenda then exit;
           end;
     VK_F3:begin
             if FinalizacaodeVenda then exit;
           end;
     VK_F4:begin
             if FinalizacaodeVenda then exit;
           end;
     VK_F5:begin
             if FinalizacaodeVenda then exit;
             ImprimeDadosClienteCupom := 'S';
             if (Key = VK_F5) and (Dm.SQLTerminalAtivo.FieldByName('TERMCINFDADOCLIPAD').AsVariant <> 'S')then
               begin
                  Application.CreateForm(TFormTelaDadosCliente,FormTelaDadosCliente);
                  FormTelaDadosCliente.ShowModal;
               end;
           end;
     VK_F6:begin
             if FinalizacaodeVenda then exit;
           end;
     VK_F7:begin
             // Aplicar desconto no total apenas na Prevenda
             {if TerminalModo = 'C' then
               begin
                 InformaG('O desconto só pode ser aplicado nos itens da venda, conforme nova legislação SPED!');
                 Exit;
               end;}

             if FinalizacaodeVenda then exit;

            { if (copy(ECFAtual,1,4) = 'NFCE') then
               begin
                 InformaG('Usuario de Cupom Eletronico só poderá efetuar desconto nos itens!');
                 Exit;
               end; }

             if (EstadoFechVenda = InformandoNumerarioVista) then
               begin
                 InformaG('O desconto só pode ser aplicado após informar o numerário à vista');
                 Exit;
               end;
             if (EstadoFechVenda = InformandoValorNumerarioVista) then
               begin
                 InformaG('O desconto só pode ser aplicado após informar o valor do numerário à vista');
                 Exit;
               end;

        {     if PercDesqMaxUsario = 0 then
               if Pergunta('SIM','Você não tem permissão para dar desconto na venda. Deseja Informar Outro Usuário?') then
                 begin
                   RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUAN2PERCDESC',RetornoUser);
                   if (RetornoCampoUsuario = '') or (RetornoCampoUsuario = '0') then
                     begin
                       Informa('Você não tem permissão para dar desconto na venda') ;
                       exit ;
                     end;
                 end
               else
                 exit;  }


            { EntradaDados.Clear ;
             EstadoFechVendaAnt := EstadoFechVenda ;
             EstadoFechVenda    := InformandoDesconto ;
             PreparaEstadoFech(EstadoFechVenda) ; }

             Application.CreateForm(TFormTelaTipoDescontoItem, FormTelaTipoDescontoItem) ;
             FormTelaTipoDescontoItem.ShowModal ;
              if TipoDescFech = '' then
                Exit ;

              if (LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO') and
                 (ValorDescontoAcrescimo.Value > 0) then
                begin
                  ValorDescontoAcrescimo.Value := 0 ;
                  ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value ;
                end ;

              if TipoDescFech = 'VALOR' then
                ValorDescontoAcrescimo.Value := ValorDescontoAcrescimo.Value + FormTelaTipoDescontoItem.EditDesconto.Value  ;

              if TipoDescFech = 'PERCENTUAL' then
                ValorDescontoAcrescimo.Value := (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - VlrBonusTroca) *
                                                (FormTelaTipoDescontoItem.EditDesconto.Value/100) ;

              if not ImportandoPreVenda and (PercDesqMaxUsario < (ValorDescontoAcrescimo.Value / (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - VlrBonusTroca)*100)) then
                begin
                  Informa('Limite de Desconto Excedido! Informe outro usuário!') ;
                  // MANDA DADOS DISPLAY TECLADO
                  IF TecladoReduzidoModelo = 'TEC44DIS' THEN
                    EnviaTecladoTextoDisplay44('Limite de Desconto Excedido!','');
                  IF TecladoReduzidoModelo = 'TEC65' THEN
                    EnviaTecladoTextoDisplay65('Limite de Desconto Excedido!','');
                  RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUAN2PERCDESC',RetornoUser);
                  if RetornoCampoUsuario <> '' then
                    begin
                      try
                        PercDesqMaxUsarioAutenticado := StrToFloat(RetornoCampoUsuario);
                      except
                        PercDesqMaxUsarioAutenticado := 0;
                      end;
                      if PercDesqMaxUsarioAutenticado < (ValorDescontoAcrescimo.Value / (FormTelaItens.CurSubTotal.Value + VlrTxCrediario.Value - (VlrBonusTroca + VlrRetConfig_SldCad))*100) then
                        begin
                          // MANDA DADOS DISPLAY TECLADO
                          IF TecladoReduzidoModelo = 'TEC44DIS' THEN
                            EnviaTecladoTextoDisplay44('Limite de Desconto Excedido!','');
                          IF TecladoReduzidoModelo = 'TEC65' THEN
                            EnviaTecladoTextoDisplay65('Limite de Desconto Excedido!','');
                          Informa('Você não tem permissão para dar esse desconto na venda!') ;
                          ValorDescontoAcrescimo.Value := 0 ;
                        end
                      else
                        begin
                          EntradaDados.Clear ;
                          //SUBTRAIR DESCONTO DO TOTAL DA VENDA
                          if ValorDescontoAcrescimo.Value > 0 then
                            begin
                              LblValorDescontoAcrescimo.Caption := 'DESCONTO' ;

                              ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value  +
                                                       VlrTxCrediario.Value -
                                                       ValorDescontoAcrescimo.Value -
                                                       (VlrBonusTroca + VlrRetConfig_SldCad) ;
                             ForcaDescTotVenda := True;
                            end
                          else
                            ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value +
                                                     VlrTxCrediario.Value -
                                                     (VlrBonusTroca + VlrRetConfig_SldCad) ;

                          ValorEntrada.Value  := 0 ;
                          ValorRecebido.Value := 0 ;
                          //LIMPAR PARCELAS A VISTA
                          DM.SQLTemplate.Close ;
                          DM.SQLTemplate.SQL.Clear ;
                          DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
                          DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                          DM.SQLTemplate.ExecSQL ;
                          SQLParcelasVistaVendaTemp.Close ;
                          SQLParcelasVistaVendaTemp.Open ;
                          //LIMPAR PARCELAS A PRAZO
                          DM.SQLTemplate.Close ;
                          DM.SQLTemplate.SQL.Clear ;
                          DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
                          DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                          DM.SQLTemplate.ExecSQL ;
                          SQLParcelasPrazoVendaTemp.Close ;
                          SQLParcelasPrazoVendaTemp.Open ;
                        end;
                    end
                  else
                    begin
                      Informa('Você não tem permissão para dar esse desconto na venda!') ;
                      ValorDescontoAcrescimo.Value := 0 ;
                    end;
                end
              else
                begin
                  EntradaDados.Clear ;
                  //SUBTRAIR DESCONTO DO TOTAL DA VENDA
                  if ValorDescontoAcrescimo.Value > 0 then
                    begin
                      LblValorDescontoAcrescimo.Caption := 'DESCONTO' ;

                      ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value  +
                                               VlrTxCrediario.Value -
                                               ValorDescontoAcrescimo.Value -
                                               (VlrBonusTroca + VlrRetConfig_SldCad) ;
                     ForcaDescTotVenda := True;
                    end
                  else
                    ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value +
                                             VlrTxCrediario.Value -
                                             (VlrBonusTroca + VlrRetConfig_SldCad) ;

                  ValorEntrada.Value  := 0 ;
                  ValorRecebido.Value := 0 ;
                  //LIMPAR PARCELAS A VISTA
                  DM.SQLTemplate.Close ;
                  DM.SQLTemplate.SQL.Clear ;
                  DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
                  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                  DM.SQLTemplate.ExecSQL ;
                  SQLParcelasVistaVendaTemp.Close ;
                  SQLParcelasVistaVendaTemp.Open ;
                  //LIMPAR PARCELAS A PRAZO
                  DM.SQLTemplate.Close ;
                  DM.SQLTemplate.SQL.Clear ;
                  DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
                  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                  DM.SQLTemplate.ExecSQL ;
                  SQLParcelasPrazoVendaTemp.Close ;
                  SQLParcelasPrazoVendaTemp.Open ;
                end ;

              if ValorDescontoAcrescimo.Value > 0 then
                DescTotVenda := true
              else
                begin
                  LblValorDescontoAcrescimo.Caption := 'ACRÉSCIMO' ;
                  LblValorDescontoAcrescimo.Refresh ;
                  DescTotVenda := false ;
                end ;

              EstadoFechVendaAnt := '' ;
              //EstadoFechVenda    := InformandoPlano ;

              AtualizaDadosPlanoNumerario(Sender) ;

              //              exit ;


           end;
     VK_F8:begin
             if FinalizacaodeVenda then exit;
           end;
     VK_F9:begin
             if FinalizacaodeVenda then exit;
           end;
    VK_F10:begin
             if FinalizacaodeVenda then exit;
           end;
    VK_F11:begin
             if FinalizacaodeVenda then exit;
             // Esta Rotina chama o cadastro de clientes e grava o cliente numa variável(ClienteCadastro)
             // na unit 'VarSys', no evento close do Cadastro de Clientes;
             // No Activate deste form a variável ClienteAtual recebe o cliente selecionado no cadastro ;
             ValorVenda :=  ValorTotalVenda.Value;
             ImportandoPreVenda := False;

             if DM.SQLUsuario.Locate('USUAICOD',UsuarioCorrente,[]) then
               if DM.SQLUsuario.FieldByName('USUACPVERCLICASH').AsString <> 'S' then
                 begin
                   if Pergunta('SIM','Você não tem permissão para abrir Cadastro de Clientes. Deseja Informar Outro Usuário?') then
                     begin
                       RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACPVERCLICASH',RetornoUser);
                       if RetornoCampoUsuario <> 'S' then
                         begin
                           EntradaDados.SelectAll ;
                           Exit;
                         end
                       else
                         CriaFormulario(TFormCadastroCliente,
                                        'FormCadastroCliente',
                                        False,
                                        True,
                                        False,
                                        '');

                     end;
                 end
               else
                 CriaFormulario(TFormCadastroCliente,
                                'FormCadastroCliente',
                                False,
                                True,
                                False,
                                '');

           end ;
    VK_F12:begin
             if FinalizacaodeVenda then exit;
           end ;
  else
    begin
      if ssAlt in Shift then
        case Upcase(Char(Key)) of
          'A' : begin
                  if FinalizacaodeVenda then exit;
                end ;
        end ;
      if ssCtrl in Shift then
        case Upcase(Char(Key)) of
          'A':begin//Excluir Numerario a Vista
                if FinalizacaodeVenda then exit;
                EntradaDados.Clear ;
                EstadoFechVenda    := ExcluindoNumerarioVista ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'C':begin//Consulta de Clientes
                LblNomeClienteDep.Caption := '';
                ClienteDependente         := '';
                ClienteDependenteNome     := '';
                ImportandoPreVenda := False;
                if FinalizacaodeVenda then exit;
                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := InformandoCliente ;
                PreparaEstadoFech(EstadoFechVenda) ;
                AbrirTelaCliente := False;
//                Tecla := Vk_Return;
                EntradaDados.Text := '';
                EntradaDadosKeyDown(EntradaDados,Tecla,[ssCtrl]);
              end ;
          'D':begin // INFORMA DEPENDENTE
                if FinalizacaodeVenda then exit;
                Application.CreateForm(TFormTelaConsultaRapidaDependente, FormTelaConsultaRapidaDependente);
                FormTelaConsultaRapidaDependente.SQLDependentes.Close ;
                FormTelaConsultaRapidaDependente.SQLDependentes.MacroByName('MFiltro').Value := 'CLIEA13ID = "'+ClienteVenda+'"' ;
                FormTelaConsultaRapidaDependente.SQLDependentes.Open ;
                FormTelaConsultaRapidaDependente.ShowModal;
                if ClienteDependente <> '' then
                  LblNomeClienteDep.Caption := ClienteDependenteNome;

                EntradaDados.SetFocus;
              end ;
          'E':begin //Alterar Entrada
                if FinalizacaodeVenda then exit;

                EntradaDados.Clear ;
                ValorRecebido.Value  := 0;
                ValorDescontoAcrescimo.Value := 0;
                VlrAcresc := 0;
                VlrJuro   := 0;
                VlrEntr   := 0;

                DM.SQLTemplate.Close ;
                DM.SQLTemplate.SQL.Clear ;
                DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
                DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                DM.SQLTemplate.ExecSQL ;

                DM.SQLTemplate.Close ;
                DM.SQLTemplate.SQL.Clear ;
                DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
                DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                DM.SQLTemplate.ExecSQL ;

                SQLParcelasVistaVendaTemp.Close ;
                SQLParcelasVistaVendaTemp.Open ;

                EstadoFechVenda    := AlterandoEntrada ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          //DIMINUIR ACRÉSCIMO
          'F':begin
                if FinalizacaodeVenda then exit;

                if LblValorDescontoAcrescimo.Caption = 'DESCONTO' then
                begin
                  Informa('Não é possível abater valor do acréscimo pois está sendo informa do o valor do desconto. Escolha um plano com acréscimo antes !') ;
                  exit ;
                end ;
                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := DiminuirAcrescimo ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'L':begin//Valor Parcela Prazo
                if FinalizacaodeVenda then exit;
                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := InformandoPosicaoParcelaPrazo ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'N':begin
                if FinalizacaodeVenda then exit;

                if SQLParcelasPrazoVendaTemp.RecordCount = 0 then
                begin
                  Informa('Não há parcelas a prazo !') ;
                  exit ;
                end ;

                EntradaDados.Clear ;
                EstadoFechVenda    := InformandoNumerarioPrazo ;

                NumerarioPrazo     := 0 ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'O':begin
                if FinalizacaodeVenda then exit;

                EstadoFechVendaAnt := EstadoFechVenda;
                Application.CreateForm(TFormTelaCadastroObs,FormTelaCadastroObs);
                FormTelaCadastroObs.ShowModal;
                EstadoFechVenda    := EstadoFechVendaAnt;
                PreparaEstadoFech(EstadoFechVenda);
                EstadoFechVendaAnt := '';
              end ;

          'P':begin //Alterar Plano
                if FinalizacaodeVenda then exit;

                EntradaDados.Clear ;
                EstadoFechVenda    := InformandoPlano ;

                if not DescTotVenda then
                begin
                  LblValorDescontoAcrescimo.Caption := 'ACRÉSCIMO' ;
                  ValorDescontoAcrescimo.Value      := 0 ;
                  VlrAcresc              := 0;
                end ;
                VlrTxCrediario.Value   := 0 ;
                VlrTxCred              := 0;
                LblTxCrediario.Visible := false ;
                VlrTxCrediario.Visible := false ;
                VlrTxCrediario.Value   := 0 ;

                ValorTroco.Value       := 0 ;
                ValorEntrada.Value     := 0 ;
                ValorRecebido.Value    := 0 ;
                PlanoVenda             := 0 ;
                NumerarioPrazo         := 0 ;

                ValorTotalVenda.Value := FormTelaItens.CurSubTotal.Value +
                                         VlrTxCrediario.Value -
                                         (VlrBonusTroca + VlrRetConfig_SldCad);
                //LIMPAR PARCELAS A PRAZO
                SQLParcelasPrazoVendaTemp.Close ;
                DM.SQLTemplate.Close ;
                DM.SQLTemplate.SQL.Clear ;
                DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
                DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                DM.SQLTemplate.ExecSQL ;
                SQLParcelasPrazoVendaTemp.Open ;
                //LIMPAR PARCEAS A VISTA
                SQLParcelasVistaVendaTemp.Close ;
                DM.SQLTemplate.Close ;
                DM.SQLTemplate.SQL.Clear ;
                DM.SQLTemplate.SQL.Add('delete from PARCELASVISTAVENDATEMP') ;
                DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
                DM.SQLTemplate.ExecSQL ;
                SQLParcelasVistaVendaTemp.Open ;

                PreparaEstadoFech(EstadoFechVenda) ;
                Tecla := Vk_Return;
                EntradaDados.Text := '';
                EntradaDadosKeyDown(EntradaDados,Tecla,[ssCtrl]);
              end ;
          'S':begin
                ImpCupomAutomatico := False;
                Close ;
              end ;
          'T':begin
                if FinalizacaodeVenda then exit;
                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := InformandoPosicaoData ;
                PreparaEstadoFech(EstadoFechVenda) ;
              end ;
          'U':begin
                if FinalizacaodeVenda then exit;
                EntradaDados.Clear ;
                EstadoFechVendaAnt := EstadoFechVenda ;
                EstadoFechVenda    := InformandoVendedor ;
                PreparaEstadoFech(EstadoFechVenda) ;
                Tecla := Vk_Return;
                EntradaDados.Text := '';
                EntradaDadosKeyDown(EntradaDados,Tecla,[ssCtrl]);
              end ;
        end ;
    end ;
  end ;
end;

procedure TFormTelaFechamentoVenda.PreparaEstadoFech(Estado : string) ;
begin
  if EstadoFechVenda = InformandoVendedor then
  begin
    LblInstrucoes.Caption := 'Informe o Vendedor...' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivo.FieldByName('VENDICOD').Value > 0 then
    begin
      EntradaDados.Text := DM.SQLTerminalAtivo.FieldByName('VENDICOD').AsString ;
      EntradaDados.SelectAll ;
    end ;

    if VendedorVenda > 0 then
    begin
      EntradaDados.Text := IntToStr(VendedorVenda) ;
      EntradaDados.SelectAll ;
    end ;

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');
    exit ;
  end ;

  if EstadoFechVenda = InformandoPlano then
  begin
    LblInstrucoes.Caption := 'Informe a Condição de Pagamento...' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivo.FieldByName('PLRCICOD').Value > 0 then
    begin
      EntradaDados.Text := DM.SQLTerminalAtivo.FieldByName('PLRCICOD').AsString ;
      EntradaDados.SelectAll ;
    end ;

    if PlanoVenda > 0 then
    begin
      EntradaDados.Text := IntToStr(PlanoVenda) ;
      EntradaDados.SelectAll ;
    end ;

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Subtotal =>  '+ FormatFloat('##0.00',ValorTotalVenda.Value),'Informe a Condicao de Pagamento');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Subtotal =>  '+ FormatFloat('##0.00',ValorTotalVenda.Value),'Informe a Condicao de Pagamento');
    exit ;
  end ;

  if EstadoFechVenda = InformandoNumerarioVista then
  begin
    LblInstrucoes.Caption := 'Forma de Pagamento da Parcela à Vista' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivo.FieldByName('TERMINUMEVISTA').Value > 0 then
      begin
        EntradaDados.Text := DM.SQLTerminalAtivo.FieldByName('TERMINUMEVISTA').AsString ;
        EntradaDados.SelectAll ;
      end
    else
      begin
        EntradaDados.Text := '' ;
        EntradaDados.SelectAll ;
      end;

    if (NumerarioVista > 0) and ImportandoPreVenda  then
      begin
        EntradaDados.Text := IntToStr(NumerarioVista) ;
        EntradaDados.SelectAll ;
      end;

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Forma de Pagamento a Vista','');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Forma de Pagamento a Vista','');
    exit ;
  end ;

  if EstadoFechVenda = InformandoValorNumerarioVista then
  begin
    EntradaDados.Text := FormatFloat('###0.00', ValorEntrada.Value - ValorRecebido.Value) ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'Informe o Valor Recebido em ' + NumerarioVistaDescr ;
    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Valor Recebido em '+ NumerarioVistaDescr, FormatFloat('###0.00', ValorEntrada.Value - ValorRecebido.Value));
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Valor Recebido em '+ NumerarioVistaDescr, FormatFloat('###0.00', ValorEntrada.Value - ValorRecebido.Value));
    exit ;
  end ;

  if EstadoFechVenda = InformandoNumerarioPrazo then
  begin
    LblInstrucoes.Caption := 'Forma de Pagamento da Parcela à Prazo' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivo.FieldByName('TERMINUMEPRAZO').Value > 0 then
    begin
      EntradaDados.Text := DM.SQLTerminalAtivo.FieldByName('TERMINUMEPRAZO').AsString ;
      EntradaDados.SelectAll ;
    end ;
    if NumerarioPrazo > 0 then
    begin
      EntradaDados.Text := IntToStr(NumerarioPrazo) ;
      EntradaDados.SelectAll ;
    end ;

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Forma de Pagamento a Prazo','');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Forma de Pagamento a Prazo','');
    exit ;
  end ;

  if EstadoFechVenda = AlterandoEntrada then
  begin
    LblInstrucoes.Caption := 'Informe o Valor da Entrada...' ;
    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');
    exit ;
  end ;

  if EstadoFechVenda = DiminuirAcrescimo then
  begin
    LblInstrucoes.Caption := 'Informe o Valor que deseja diminuir do Acrescimo...' ;
    LblInstrucoes.Refresh ;
    EntradaDados.Text := ValorDescontoAcrescimo.Text ;
    EntradaDados.SelectAll ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Valor a Diminuir do Acrescimo','');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Valor a Diminuir do Acrescimo','');
    exit ;
  end ;

  if EstadoFechVenda = ExcluindoNumerarioVista then
  begin
    SQLParcelasVistaVendaTemp.Last ;
    EntradaDados.Text := SQLParcelasVistaVendaTempNROITEM.AsString ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'Informe a Posição do Numerário a Vista que deseja Excluir...' ;
    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Informe a posicao a Excluir','');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Informe a posicao a Excluir','');
    exit ;
  end ;

  if EstadoFechVenda = InformandoPosicaoData then
  begin
    EntradaDados.Clear ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'Informe a Parcela que deseja alterar a Data...' ;
    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Informe a posicao para alterar a Data.','');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Informe a posicao para alterar a Data.','');
    exit ;
  end ;

  if EstadoFechVenda = AlterandoData then
  begin
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'Informe a Nova Data de Vencimento...' ;
    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');
    exit ;
  end ;

  if EstadoFechVenda = InformandoPosicaoParcelaPrazo then
  begin
    EntradaDados.Clear ;
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'Informe a Parcela que deseja alterar o Valor...' ;
    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Parcela que deseja alterar o Valor','');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Parcela que deseja alterar o Valor','');
    exit ;
  end ;

  if EstadoFechVenda = AlterandoParcelaPrazo then
  begin
    EntradaDados.SelectAll ;
    LblInstrucoes.Caption := 'Informe o Novo Valor da Parcela a Prazo...' ;
    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Informe o Novo Valor da Parc a Prazo','');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Informe o Novo Valor da Parc a Prazo','');
    exit ;
  end ;

  if EstadoFechVenda = InformandoDesconto then
  begin
   { EntradaDados.Clear ;
    EntradaDados.SelectAll ;
    if TipoDescFech = 'VALOR' then
      LblInstrucoes.Caption := 'Informe o Valor do Desconto no Total de Venda...' ;
    if TipoDescFech = 'PERCENTUAL' then
      LblInstrucoes.Caption := 'Informe o Percentual do Desconto no Total de Venda...' ;

    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('Inf. Valor Desc.Total Venda...','');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('Inf. Valor Desc.Total Venda...','');
    exit ; }
  end ;

  if EstadoFechVenda = InformandoCliente then
  begin
    LblInstrucoes.Caption := 'Informe o Cliente pelo (CPF, CNPJ, NOME)' ;
    LblInstrucoes.Refresh ;

    if DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').Value <> '' then
    begin
      EntradaDados.Text := DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').AsString ;
      EntradaDados.SelectAll ;
    end ;

    if (ClienteVenda <> '') then
    begin
      EntradaDados.Text := ClienteVenda ;
      EntradaDados.SelectAll ;
    end ;

    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44(LblInstrucoes.Caption,'');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65(LblInstrucoes.Caption,'');
    exit ;
  end ;

  if EstadoFechVenda = FinalizandoVenda then
  begin
    if TemInformacaoPendente then
      exit ;

    if TerminalModo = 'C' then
      LblInstrucoes.Caption := '[ENTER] Finalizar ou [ESC] Cancelar...' ;
    if (TerminalModo = 'P') and (not E_Orcamento) then
      LblInstrucoes.Caption := '[ENTER] Finalizar ou [ESC] Cancelar...' ;
    if (TerminalModo = 'P') and (E_Orcamento) then
      LblInstrucoes.Caption := '[ENTER] Finalizar ou [ESC] Cancelar...' ;

    LblInstrucoes.Refresh ;
    // MANDA DADOS DISPLAY TECLADO
    IF TecladoReduzidoModelo = 'TEC44DIS' THEN
      EnviaTecladoTextoDisplay44('[ENTER] Finalizar','[ESC] Cancelar...');
    IF TecladoReduzidoModelo = 'TEC65' THEN
      EnviaTecladoTextoDisplay65('[ENTER] Finalizar','[ESC] Cancelar...');
    exit ;
  end ;

end ;

procedure TFormTelaFechamentoVenda.ValorAcrescimoEnter(Sender: TObject);
begin
  EntradaDados.SetFocus ;
  EntradaDados.SelectAll ;
end;

procedure TFormTelaFechamentoVenda.ListaParcelasVistaEnter(Sender: TObject);
begin
  EntradaDados.SetFocus ;
  EntradaDados.SelectAll ;
end;

procedure TFormTelaFechamentoVenda.ListaParcelasPrazoEnter(Sender: TObject);
begin
  EntradaDados.SetFocus ;
  EntradaDados.SelectAll ;
end;

procedure TFormTelaFechamentoVenda.ValorEntradaEnter(Sender: TObject);
begin
  EntradaDados.SetFocus ;
  EntradaDados.SelectAll ;
end;

procedure TFormTelaFechamentoVenda.OnPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
  Tabela : TObject ;
begin
 Tabela := DataSet ;
 if E is EDBEngineError then
   with EDBEngineError(E) do
   begin
     ShowMessage(Errors[ErrorCount-1].Message) ;
   end ;
end ;

procedure TFormTelaFechamentoVenda.FormActivate(Sender: TObject);
var planoCliente : string;
begin
  if SolicitarLiberacao then
    exit;

  if not vImportarPrevenda  then
    DescTotVenda := false
  else
    begin
      if ValorDescontoASerImportado > 0 then
        begin
          DescTotVenda := True;
          ValorDescontoAcrescimo.Value := ValorDescontoASerImportado;
        end;
    end;

  if DM.SQLTerminalAtivo.FieldByName('TERMCHIDECLIVENDPL').Value = 'S' then
    begin
      LblCLiente.Visible       := false ;
      LblCodigoCliente.Visible := false ;
      LblNomeCliente.Visible   := false ;
      LblVendedor.Visible      := false ;
      LblNomeVendedor.Visible  := false ;
      LblPlano.Visible         := false ;
      LblNomePlano.Visible     := false ;
    end ;

  if ClienteCadastro <> '' then
    ClienteVenda := ClienteCadastro;

  if (DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').Value <> '') or (ClienteVenda <> '') then
    begin
      if ClienteVenda = '' then
        ClienteVenda  := DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').Value ;
      EstadoFechVenda := InformandoCliente ;
      EntradaDados.Text := ClienteVenda ;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);

      // Se Cliente Tem Plano Vendas, USAR
      if (DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').Value <> ClienteVenda) then
        begin
          planoCliente := SQLLocate('CLIENTE','CLIEA13ID','PLRCICOD','"'+ClienteVenda+'"');
          if planoCliente <> '' then
            begin
              PlanoVenda := strToint(planoCliente);
              EstadoFechVenda   := InformandoPlano ;
              EntradaDados.Text := IntToStr(PlanoVenda) ;
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
            end;  
        end;  
    end;

  if (DM.SQLTerminalAtivo.FieldByName('VENDICOD').Value > 0) or (VendedorVenda > 0) then
    begin
      if VendedorVenda = 0 then
        VendedorVenda := DM.SQLTerminalAtivo.FieldByName('VENDICOD').Value ;
      EstadoFechVenda := InformandoVendedor ;
      EntradaDados.Text := IntToStr(VendedorVenda) ;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
    end ;

  if ClienteCadastro = '' then
    if (DM.SQLTerminalAtivo.FieldByName('PLRCICOD').Value > 0) or (PlanoVenda > 0) then
      begin
        if PlanoVenda = 0 then
          PlanoVenda := DM.SQLTerminalAtivo.FieldByName('PLRCICOD').Value ;

        EstadoFechVenda := InformandoPlano ;
        EntradaDados.Text := IntToStr(PlanoVenda) ;
        EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
      end ;

  if (VlrBonusTroca > 0) then
    begin
      LblBonusTroca.Visible   := true ;
      ValorBonusTroca.Visible := true ;
      ValorBonusTroca.Value   := VlrBonusTroca ;
    end ;

  //SE ESTIVER IMPORTANDO PRE-VENDA NÃO PODE TER A LINHA ABAIXO SENÃO
  if Application.FindComponent('FormTelaImportarPreVenda') = nil then
    TemInformacaoPendente ;

  //PEGAR DADOS DO PLANO DA PRÉ-VENDA
  if (DM.SQLConfigVenda.FieldByName('CFVECFINVENDADPREVD').Value = 'S') and
     (TerminalModo = 'C') then
    begin
      DM.SQLPreVendaNumerario.Open ;
      DM.SQLPreVendaNumerario.Last ;
      if DM.SQLPreVendaNumerario.RecordCount > 0 then
        begin
          if EstadoFechVenda = InformandoNumerarioVista then
            begin
              DM.SQLPreVendaNumerario.First ;
              EntradaDados.Text := DM.SQLPreVendaNumerarioNUMEICOD.AsString ;
              NumerarioVista    := DM.SQLPreVendaNumerarioNUMEICOD.Value ;
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
            end ;

          if EstadoFechVenda = InformandoValorNumerarioVista then
            begin
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
            end ;
        end ;

      DM.SQLPreVendaContasReceber.Open ;
      DM.SQLPreVendaContasReceber.Last ;
      if DM.SQLPreVendaContasReceber.RecordCount > 0 then
        begin
          if EstadoFechVenda = InformandoNumerarioPrazo then
            begin
              DM.SQLPreVendaContasReceber.First ;
              EntradaDados.Text := DM.SQLPreVendaContasReceberNUMEICOD.AsString ;
              NumerarioVista    := DM.SQLPreVendaContasReceberNUMEICOD.Value ;
              EntradaDadosKeyDown(Sender, Enter, [ssAlt]) ;
            end ;
        end ;
    end ;
end ;

procedure TFormTelaFechamentoVenda.GravarMontanteCaixa ;
var
  VlrLanc,
  VlrAcresc,
  VlrDesc : double ;
  MsgErro,
  Sigla, Descri  : string ;
begin
  MsgErro   := '' ;
  Sigla     := '' ;
  VlrDesc   := 0 ;
  VlrAcresc := 0 ;

  if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') and (ValorDescontoAcrescimo.Value > 0) then
    VlrDesc := ValorDescontoAcrescimo.Value ;

  if (LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO') and (ValorDescontoAcrescimo.Value > 0) then
    VlrAcresc := ValorDescontoAcrescimo.Value ;

  if (TipoPadrao = 'VISTA') or (TipoPadrao = 'DIN') or (TipoPadrao = 'RTC') then
    begin
      Sigla   := 'VDVIS' ;
      MsgErro := 'Não há nenhuma Operação de Caixa configurada com a sigla de Venda a Vista!' ;
      VlrLanc := ValorTotalVenda.Value ;
    end ;

  if Copy(TipoPadrao,1,3) = 'CHQ' then
    begin
      if TipoPadrao = 'CHQP' then
        Sigla   := 'VDCHQ'
      else
        Sigla   := 'VDVIS';
      MsgErro := 'Não há nenhuma Operação de Caixa configurada com a sigla de Venda Cheque!' ;
      VlrLanc := ValorTotalVenda.Value ;
    end ;

  if TipoPadrao = 'CRD' then
    begin
      Sigla   := 'VDCRD' ;
      MsgErro := 'Não há nenhuma Operação de Caixa configurada com a sigla de Venda Crediário!' ;
      VlrLanc := ValorTotalVenda.Value ;
    end ;

  if TipoPadrao = 'CNV' then
    begin
      Sigla   := 'VDCNV' ;
      MsgErro := 'Não há nenhuma Operação de Caixa configurada com a sigla de Venda Convênio!' ;
      VlrLanc := ValorTotalVenda.Value ;
    end ;

  if (TipoPadrao = 'CRT') or (TipoPadrao = 'CRTF') then
    begin
      Sigla   := 'VDCRT' ;
      MsgErro := 'Não há nenhuma Operação de Caixa configurada com a sigla de Venda Cartão!' ;
      VlrLanc := ValorTotalVenda.Value ;
    end ;

  //TESTAR SE MOVIMENTO DO CAIXA PADRAO PARA TIPO VENDA EXISTE
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
  DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "' + Sigla + '"') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.IsEmpty then
    begin
       Informa(MsgErro) ;

      if not FileExists('SemTransacao.Arq') then
        if DM.DB.InTransaction then
          DM.DB.RollBack ;

      if (ECFAtual <> '') and (PortaECFAtual <> '') then
        if not CancelarCupomFiscal(ECFAtual, PortaECFAtual) then
          exit ;
      FormTelaItens.CancelarVenda ;
      FormTelaItens.EstadoPDVChk := 'AguardandoNovaVenda' ;
      FormTelaItens.PreparaEstadoBalcao(FormTelaItens.EstadoPDVChk) ;
      Close ;

      exit ;
    end ;

  if VlrLanc > 0 then
    if (TotalVistaAut > 0)  and (ValorPrazo > 0) then
      GravaMovimentoCaixa(DM.SQLTotalizadorCaixa,
                          DM.SQLTotalizar,
                          EmpresaPadrao,//WEMPRICOD
                          IntToStr(TerminalAtual),//WTERMICOD
                          FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                          'Null',//WNUMEICOD
                          DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                          IntToStr(DM.UsuarioAtual),//WUSUAICOD
                          DM.CodNextCupom,//WMVCIXA15DOCORIG
                          ValorPrazo,//WMOVICAIXN2VLR
                          VlrAcresc,//WMOVICAIXN2VLRJURO
                          0,//WMOVICAIXN2VLRMULTA
                          FormTelaItens.TotalDescItens+VlrDesc,//WMOVICAIXN2VLRDEC
                          'Null',//WMOVICAIXA6NUMCUPOM
                          'C',//WTIPO
                          UsuarioAtualNome+'/'+UsuarioAutorizouOperacao+' Cliente: '+NomeClienteVenda,//WMVCXA255HIST
                          'N',
                          '')
    else
      GravaMovimentoCaixa(DM.SQLTotalizadorCaixa,
                          DM.SQLTotalizar,
                          EmpresaPadrao,//WEMPRICOD
                          IntToStr(TerminalAtual),//WTERMICOD
                          FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                          'Null',//WNUMEICOD
                          DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                          IntToStr(DM.UsuarioAtual),//WUSUAICOD
                          DM.CodNextCupom,//WMVCIXA15DOCORIG
                          VlrLanc,//WMOVICAIXN2VLR
                          VlrAcresc,//WMOVICAIXN2VLRJURO
                          0,//WMOVICAIXN2VLRMULTA
                          FormTelaItens.TotalDescItens+VlrDesc,//WMOVICAIXN2VLRDEC
                          'Null',//WMOVICAIXA6NUMCUPOM
                          'C',//WTIPO
                          UsuarioAtualNome+'/'+UsuarioAutorizouOperacao+' Cliente: '+NomeClienteVenda,//WMVCXA255HIST
                          'N',
                          '');
end;

procedure TFormTelaFechamentoVenda.GravarCaixaPrazo ;
begin
  if ValorPrazo = 0 then
    exit ;
  LblInstrucoes.Caption := 'Gravando Movimento de Caixa...' ;
  LblInstrucoes.Refresh ;
  //MOVIMENTO REF.TOTALIZAÇÃO DE NUM.PRAZO NO BOLETIM
  GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                       DM.SQLTotalizar,
                       EmpresaPadrao,//WEMPRICOD
                       IntToStr(TerminalAtual),//WTERMICOD
                       FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                       SQLParcelasPrazoVendaTempNUMEICOD.AsString,//WNUMEICOD
                       'Null',//WOPCXICOD
                       IntToStr(DM.UsuarioAtual),//WUSUAICOD
                       DM.CodNextCupom,//WMVCIXA15DOCORIG
                       ValorPrazo,//WMOVICAIXN2VLR
                       0,//WMOVICAIXN2VLRJURO
                       0,//WMOVICAIXN2VLRMULTA
                       0,//WMOVICAIXN2VLRDEC
                       'Null',//WMOVICAIXA6NUMCUPOM
                       'C',//WTIPO
                       'Lancto.Numer.Prazo: ' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString,//WMVCXA255HIST
                       'N',
                       '') ;
end ;

function TFormTelaFechamentoVenda.ParcelasPrazoTemNumerario : boolean ;
begin
  SQLParcelasPrazoVendaTemp.DisableControls ;
  SQLParcelasPrazoVendaTemp.First ;
  ParcelasPrazoTemNumerario := true ;
  while not SQLParcelasPrazoVendaTemp.EOF do
  begin
    if SQLParcelasPrazoVendaTempNUMEICOD.Value > 0 then
    else begin
      ParcelasPrazoTemNumerario := false ;
      Break ;
    end ;

    SQLParcelasPrazoVendaTemp.Next ;
  end ;
  SQLParcelasPrazoVendaTemp.EnableControls ;
end ;

function TFormTelaFechamentoVenda.InformarDadosCheque : boolean ;
begin
  if (DM.SQLConfigVenda.FieldByName('CFVECDADOSCHQPDV').Value = 'S') and (ClienteVenda <> DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').AsString) then
    begin
      IncrementaNroCheque := false ;
      if not dm.TblCheques.Active then
        dm.TblCheques.Open ;
      dm.TblCheques.First;
      while not dm.TblCheques.eof do
        begin
          dm.TblCheques.delete;
          Application.ProcessMessages;
        end;
      //VERIFICAR SEM TEM CHEQUE A VISTA
      SQLParcelasVistaVendaTemp.DisableControls ;
      SQLParcelasVistaVendaTemp.First ;
      while not SQLParcelasVistaVendaTemp.EOF do
      begin
        Application.ProcessMessages;
        if Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CHQ' then
        begin
          dm.TblCheques.Append ;
          dm.TblChequesDataVecto.Value := Date ;
          dm.TblChequesTITULAR.Value   := NomeClienteVenda;
          dm.TblChequesCGCCPF.Value    := CPFCGCClienteVenda;
          dm.TblChequesValor.Value     := SQLParcelasVistaVendaTempVALORPARC.Value ;
          dm.TblChequesNroDias.Value   := 0;
          dm.TblCheques.Post ;
        end ;
        SQLParcelasVistaVendaTemp.Next ;
      end ;
      SQLParcelasVistaVendaTemp.First ;
      SQLParcelasVistaVendaTemp.EnableControls ;
      //VERIFICAR SEM TEM CHEQUE A PRAZO
      SQLParcelasPrazoVendaTemp.DisableControls ;
      SQLParcelasPrazoVendaTemp.First ;
      while not SQLParcelasPrazoVendaTemp.EOF do
      begin
        Application.ProcessMessages;
        if Copy(SQLParcelasPrazoVendaTempTIPOPADR.Value,1,3) = 'CHQ' then
        begin
          dm.TblCheques.Append ;
          dm.TblChequesDataVecto.Value := SQLParcelasPrazoVendaTempDATAVENCTO.Value ;
          dm.TblChequesNroDias.AsVariant := SQLParcelasPrazoVendaTempDATAVENCTO.Value - Date;
          if (VlrTotJuroDia>0) and (SQLParcelasPrazoVendaTemp.RecordCount = 1) then
            dm.TblChequesValor.Value := SQLParcelasPrazoVendaTempVALORVENCTO.Value;

          dm.TblCheques.Post ;
        end ;
        SQLParcelasPrazoVendaTemp.Next ;
      end ;
      SQLParcelasPrazoVendaTemp.First ;
      SQLParcelasPrazoVendaTemp.EnableControls ;
      //VERIFICAR SEM TEM DE INFORMAR DADOS DO CHEQUE
      dm.TblCheques.First ;
      if not dm.TblCheques.EOF then
      begin
        IncrementaNroCheque := true ;
        Application.CreateForm(TFormTelaDadosCheque, FormTelaDadosCheque);
        FormTelaDadosCheque.NomeTitular.Text := NomeClienteVenda;
        FormTelaDadosCheque.CGCPFChq.Text    := CPFCGCClienteVenda;
        FormTelaDadosCheque.ShowModal ;
        // if FormTelaDadosCheque.ModalResult = MrOK then
          Result := True;
        IncrementaNroCheque := False ;
      end ;
    end
  else
    Result := True;
end ;

function TFormTelaFechamentoVenda.GravarPreVenda : boolean ;
begin
  //CAPTURAR O ID DO PRÉ-VENDA
  LblInstrucoes.Caption := 'Gerando Código Pré-Venda...' ;
  LblInstrucoes.Refresh ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Max(PRVDICOD) as Contador from PREVENDA') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('Contador').Value <> Null then
    ProxCod := DM.SQLTemplate.FieldByName('Contador').Value + 1
  else
    ProxCod := 1 ;

  //GRAVAR CABECALHO PRÉ-VENDA
  Gravou := false ;
  while not Gravou do
  begin
    LblInstrucoes.Caption := 'Gravando Pré-Venda...' ;
    LblInstrucoes.Refresh ;

    CodNextPreVenda := ProxCod ;

    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('Insert into PREVENDA') ;
    DM.SQLTemplate.SQL.Add('(TERMICOD, PRVDICOD, CLIEA13ID, PLRCICOD, VENDICOD, CONVICOD, PRVDN2TOTITENS,') ;
    DM.SQLTemplate.SQL.Add('PRVDN2DESC, PRVDN2ACRESC, PRVDN2TOTITENSRET, PRVDCTIPOPADRAO, PRVDN2CONVTAXA,') ;
    DM.SQLTemplate.SQL.Add('PRVDINROORDCOMPRA, PRVDCIMPORT, PRVDCMARCADO, PDVDDHVENDA, CLIENTENOME, CLIENTECNPJ, CLIENTEENDE, CLIENTECIDA,CLIENTEOBS, PDVCPRECONCLU, CLIENTEFONE, CLDPICOD, TROCO)') ;
    DM.SQLTemplate.SQL.Add('Values (') ;
    DM.SQLTemplate.SQL.Add(IntToStr(TerminalAtual) + ',') ;//TERMICOD
    DM.SQLTemplate.SQL.Add(IntToStr(CodNextPreVenda) + ', ') ;//PRVDICOD
    DM.SQLTemplate.SQL.Add('"' + ClienteVenda + '",') ;//CLIEA13ID
    DM.SQLTemplate.SQL.Add(IntToStr(PlanoVenda) + ',') ;//PLRCICOD
    DM.SQLTemplate.SQL.Add(IntToStr(VendedorVenda) + ',') ;//VENDICOD
    if ConvenioVenda > 0 then
      DM.SQLTemplate.SQL.Add(IntToStr(ConvenioVenda) + ', ') //CONVICOD
    else
      DM.SQLTemplate.SQL.Add('null,') ;//CONVICOD
    DM.SQLTemplate.SQL.Add(ConvFloatToStr(ValorTotalVenda.Value) + ',') ;//PRVDN2TOTITENS
    if LblValorDescontoAcrescimo.Caption = 'DESCONTO' then
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(ValorDescontoAcrescimo.Value) + ',')//PRVDN2DESC
    else
      DM.SQLTemplate.SQL.Add('0,') ;//PRVDN2DESC
    if LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO' then
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(ValorDescontoAcrescimo.Value) + ',')//PRVDN2ACRESC
    else
      DM.SQLTemplate.SQL.Add('0,') ;//PRVDN2ACRESC
    DM.SQLTemplate.SQL.Add('0,') ;//PRVDN2TOTITENSRET
    DM.SQLTemplate.SQL.Add('"' + TipoPadrao + '",') ;//PRVDCTIPOPADRAO
    DM.SQLTemplate.SQL.Add('0,') ;//PRVDN2CONVTAXA
    if NroOrdemCompraConvenio > 0 then
      DM.SQLTemplate.SQL.Add('null,') {PRVDINROORDCOMPRA}
    else
      DM.SQLTemplate.SQL.Add('null,') ;{PRVDINROORDCOMPRA}
    DM.SQLTemplate.SQL.Add('"N",') ;{PRVDCIMPORT}
    DM.SQLTemplate.SQL.Add('"N",') ;{PRVDCMARCADO}
    DM.SQLTemplate.SQL.Add('"'+FormatDateTime('mm/dd/yyyy hh:mm:ss',Now)+'",') ;{DAtaHora Venda}

    if NomeClienteVenda <> '' then
      DM.SQLTemplate.SQL.Add('"'+copy(NomeClienteVenda,1,60)+'",') {nome do cliente}
    else
      DM.SQLTemplate.SQL.Add('Null,') ;{vazio}
    if DocumentoClienteVenda <> '' then
      DM.SQLTemplate.SQL.Add('"'+copy(DocumentoClienteVenda,1,20)+'",') {Documento do cliente}
    else
      DM.SQLTemplate.SQL.Add('Null,') ;{vazio}
    if EnderecoClienteVenda <> '' then
      DM.SQLTemplate.SQL.Add('"'+copy(EnderecoClienteVenda,1,60)+'",') {endereco do cliente}
    else
      DM.SQLTemplate.SQL.Add('Null,') ;{vazio}
    if CidadeClienteVenda <> '' then
      DM.SQLTemplate.SQL.Add('"'+copy(CidadeClienteVenda,1,30)+'",') {cidade do cliente}
    else
      DM.SQLTemplate.SQL.Add('Null,') ;{vazio}
    if OBSImpressaoCupom <> '' then
      DM.SQLTemplate.SQL.Add('"'+copy(OBSImpressaoCupom,1,60)+'",') {obs do cliente}
    else
      DM.SQLTemplate.SQL.Add('Null,') ;{vazio}

    DM.SQLTemplate.SQL.Add('"S",') ;{PDVCPRECONCLU}

    if FoneClienteVenda <> '' then
      DM.SQLTemplate.SQL.Add('"'+copy(FoneClienteVenda,1,15)+'",') {Fone do cliente}
    else
      DM.SQLTemplate.SQL.Add('Null,') ;{vazio}

    if ClienteDependente <> '' then
      DM.SQLTemplate.SQL.Add(ClienteDependente+',') {Cliente Dependente}
    else
      DM.SQLTemplate.SQL.Add('Null,') ;{vazio}

    if ValorTroco.Value > 0 then
      DM.SQLTemplate.SQL.Add(ConvFloatToStr(ValorTroco.Value) + ')')//TROCO
    else
      DM.SQLTemplate.SQL.Add('0)') ;//TROCO

    try
      DM.SQLTemplate.ExecSQL ;
      Gravou := true ;
    except
      Inc(ProxCod) ;
    end ;
  end ;
end ;

function TFormTelaFechamentoVenda.GravarItensPreVenda : boolean ;
begin
  if not DM.SQLPreVendaItem2.Active then
    DM.SQLPreVendaItem2.Open ;


  LblInstrucoes.Caption := 'Gravando Itens da Pré-Venda...' ;
  LblInstrucoes.Refresh ;

  FormTelaItens.SQLItensVendaTemp.First ;
  while not FormTelaItens.SQLItensVendaTemp.EOF do
  begin
    if FormTelaItens.SQLItensVendaTempCANCELADO.Value <> 'S' then
      begin
        DM.SQLPreVendaItem2.Append ;
        DM.SQLPreVendaItem2TERMICOD.Value           := TerminalAtual ;
        DM.SQLPreVendaItem2PRVDICOD.Value           := CodNextPreVenda ;
        DM.SQLPreVendaItem2PVITIPOS.Value           := FormTelaItens.SQLItensVendaTempNUMITEM.Value ;
        DM.SQLPreVendaItem2PRODICOD.Value           := FormTelaItens.SQLItensVendaTempCODIGO.Value ;
        if FormTelaItens.SQLItensVendaTempTROCA.Value <> 'S' then
          DM.SQLPreVendaItem2PVITN3QTD.Value        := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value
        else
          DM.SQLPreVendaItem2PVITN3QTDTROCA.Value   := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value;
        DM.SQLPreVendaItem2PVITN3VLRUNIT.Value      := FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value ;
        DM.SQLPreVendaItem2PVITN3VLRCUSTUNIT.Value  := 0 ;
        DM.SQLPreVendaItem2PVITN2DESC.Value         := FormTelaItens.SQLItensVendaTempVLRDESC.Value ;
        DM.SQLPreVendaItem2VENDICOD.Value           := VendedorVenda ;
        DM.SQLPreVendaItem2PVITN3VLRUNITLUCR.Value  := 0 ;
        DM.SQLPreVendaItem2PVITCSTATUS.Value        := 'A' ;
        DM.SQLPreVendaItem2PVITN2ICMSALIQ.Value     := 0 ;
        DM.SQLPreVendaItem2PRODA60NROSERIE.AsString := FormTelaItens.SQLItensVendaTempNROSERIE.AsString;
        DM.SQLPreVendaItem2PVITTOBS.Value           := FormTelaItens.SQLItensVendaTempDESCRICAOTEC.Value;
        DM.SQLPreVendaItem2M3_ESPESSURA.Value       := FormTelaItens.SQLItensVendaTempM3_ESPESSURA.Value;
        DM.SQLPreVendaItem2M3_LARGURA.Value         := FormTelaItens.SQLItensVendaTempM3_LARGURA.Value;
        DM.SQLPreVendaItem2M3_COMPRI.Value          := FormTelaItens.SQLItensVendaTempM3_COMPRI.Value;

        DM.SQLPreVendaItem2.Post ;
      end;

    FormTelaItens.SQLItensVendaTemp.Next ;
  end ;

  if not GravaPrevendaSemFinanceiro then
    GravarTabelaTempImpPreVenda(IntToStr(TerminalAtual),
                                IntToStr(CodNextPreVenda),
                                '',
                                DM.SQLPreVD,
                                DM.SQLPreVDIt) ;
end ;

function TFormTelaFechamentoVenda.GravarNumerarioAVistaPreVenda : boolean ;
begin
  SQLParcelasVistaVendaTemp.DisableControls ;
  SQLParcelasVistaVendaTemp.First ;
  LblInstrucoes.Caption := 'Gravando Numerários à Vista...' ;
  LblInstrucoes.Refresh ;

  while not SQLParcelasVistaVendaTemp.EOF do
  begin
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('insert into PREVENDANUMERARIO') ;
    DM.SQLTemplate.SQL.Add('(TERMICOD, PRVDICOD, NUMEICOD, PVNUN2VLR)') ;
    DM.SQLTemplate.SQL.Add('values (') ;
    DM.SQLTemplate.SQL.Add(IntToStr(TerminalAtual) + ',') ;{TERMICOD}
    DM.SQLTemplate.SQL.Add(IntToStr(CodNextPreVenda) + ', ') ;{CUPOA13ID}
    DM.SQLTemplate.SQL.Add(SQLParcelasVistaVendaTempNUMEICOD.AsString + ',');{NUMEICOD}
    DM.SQLTemplate.SQL.Add(ConvFloatToStr(SQLParcelasVistaVendaTempVALORPARC.Value) + ')');{PVNUN2VLR}
    DM.SQLTemplate.ExecSQL ;
    SQLParcelasVistaVendaTemp.Next ;
  end ;
  SQLParcelasVistaVendaTemp.First ;
  SQLParcelasVistaVendaTemp.EnableControls ;
end ;

function TFormTelaFechamentoVenda.GravarNumerarioAPrazoPreVenda : boolean ;
begin
  SQLParcelasPrazoVendaTemp.DisableControls ;
  SQLParcelasPrazoVendaTemp.First ;

  LblInstrucoes.Caption := 'Gravando Numerários à Prazo...';
  LblInstrucoes.Refresh ;

  while not SQLParcelasPrazoVendaTemp.EOF do
  begin
    //CAPTURAR O ID DO CONTA A RECEBER
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select Max(PVCRICOD) as Contador from PREVENDACONTASRECEBER') ;
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
    DM.SQLTemplate.Open ;
    if DM.SQLTemplate.FieldByName('Contador').Value <> Null then
      ProxCod := DM.SQLTemplate.FieldByName('Contador').Value + 1
    else
      ProxCod := 1 ;

    Gravou := false ;
    while not Gravou do
    begin
      CodNextPVContaRec := ProxCod ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('insert into PREVENDACONTASRECEBER') ;
      DM.SQLTemplate.SQL.Add('(PVCRICOD, TERMICOD, PRVDICOD, CLIEA13ID, PORTICOD, NUMEICOD, PVCRINROPARC,') ;
      DM.SQLTemplate.SQL.Add('PVCRDVENC, PVCRN2VLR, PVCRN2TXJURO, PVCRN2TXMULTA, PVCRN2DESCFIN)') ;
      DM.SQLTemplate.SQL.Add('values (') ;
      DM.SQLTemplate.SQL.Add(IntToStr(CodNextPVContaRec) + ',') ; {PVCRICOD}
      DM.SQLTemplate.SQL.Add(IntToStr(TerminalAtual) + ', ') ; {TERMICOD}
      DM.SQLTemplate.SQL.Add(IntToStr(CodNextPreVenda) + ', ') ;{PRVDICOD}
      DM.SQLTemplate.SQL.Add( '"' + ClienteVenda + '", ') ; {CLIEA13ID}
      DM.SQLTemplate.SQL.Add( 'null, ') ; {PORTICOD}
      DM.SQLTemplate.SQL.Add( SQLParcelasPrazoVendaTempNUMEICOD.AsString + ',') ; {NUMEICOD}
      DM.SQLTemplate.SQL.Add( SQLParcelasPrazoVendaTempNROPARCELA.AsString + ', ') ; {PVCRINROPARC}
      DM.SQLTemplate.SQL.Add( '"' + FormatDateTime('mm/dd/yyyy', SQLParcelasPrazoVendaTempDATAVENCTO.Value) + '", ') ; {PVCRDVENC}
      DM.SQLTemplate.SQL.Add( ConvFloatToStr(SQLParcelasPrazoVendaTempVALORVENCTO.Value) + ',') ; {PVCRN2VLR}
      DM.SQLTemplate.SQL.Add( '0, ') ; {PVCRN2TXJURO}
      DM.SQLTemplate.SQL.Add( '0, ') ; {PVCRN2TXMULTA}
      DM.SQLTemplate.SQL.Add( '0)') ; {PVCRN2DESCFIN}
      try
        DM.SQLTemplate.ExecSQL ;
        Gravou := true ;
      except
        Inc(ProxCod) ;
      end ;
    end ;

    SQLParcelasPrazoVendaTemp.Next ;
  end ;
end ;

function TFormTelaFechamentoVenda.GravarNumerarioAPrazoOrcamento : boolean ;
begin
  SQLParcelasPrazoVendaTemp.DisableControls ;
  SQLParcelasPrazoVendaTemp.First ;

  LblInstrucoes.Caption := 'Gravando Numerários a Prazo...';
  LblInstrucoes.Refresh ;

  while not SQLParcelasPrazoVendaTemp.EOF do
  begin
    //CAPTURAR O ID DO CONTA A RECEBER
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select Max(CTRCICOD) as Contador from CONTASRECEBER') ;
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)+ ' and EMPRICOD = '+ EmpresaPadrao) ;
    DM.SQLTemplate.Open ;
    if DM.SQLTemplate.FieldByName('Contador').Value <> Null then
      ProxCod := DM.SQLTemplate.FieldByName('Contador').Value + 1
    else
      ProxCod := 1 ;

    CodNextContaRec := FormatFloat('000' ,StrToFloat(EmpresaPadrao)) +
                       FormatFloat('000' ,StrToFloat(IntToStr(TerminalAtual))) +
                       Format('%.6d', [ProxCod]) ;
    CodNextContaRec := CodNextContaRec + DigitVerifEAN(CodNextContaRec)  ;

    Gravou := false ;
    while not Gravou do
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('insert into CONTASRECEBER') ;
      DM.SQLTemplate.SQL.Add('(CTRCA13ID, EMPRICOD, TERMICOD, CTRCICOD, CLIEA13ID, PDVDA13ID, NUMEICOD, CTRCINROPARC,') ;
      DM.SQLTemplate.SQL.Add('CTRCDVENC, CTRCN2VLR, CTRCN2TXJURO, CTRCN2TXMULTA, CTRCN2DESCFIN, CTRCCEMITIDOBOLETO)') ;
      DM.SQLTemplate.SQL.Add('values (') ;
      DM.SQLTemplate.SQL.Add( '"' + CodNextContaRec + '", ') ; {CTRCA13ID}
      DM.SQLTemplate.SQL.Add(IntToStr(EmpresaCorrente) + ', ') ; {EMPRICOD}
      DM.SQLTemplate.SQL.Add(IntToStr(TerminalAtual) + ', ') ; {TERMICOD}
      DM.SQLTemplate.SQL.Add(IntToStr(ProxCod) + ', ') ;{CTRCICOD}
      DM.SQLTemplate.SQL.Add( '"' + ClienteVenda + '", ') ; {CLIEA13ID}
      DM.SQLTemplate.SQL.Add( '"' + DM.CodNextOrc + '", ') ; {PDVDA13ID}
      DM.SQLTemplate.SQL.Add( SQLParcelasPrazoVendaTempNUMEICOD.AsString + ',') ; {NUMEICOD}
      DM.SQLTemplate.SQL.Add( SQLParcelasPrazoVendaTempNROPARCELA.AsString + ', ') ; {PVCRINROPARC}
      DM.SQLTemplate.SQL.Add( '"' + FormatDateTime('mm/dd/yyyy', SQLParcelasPrazoVendaTempDATAVENCTO.Value) + '", ') ; {PVCRDVENC}
      DM.SQLTemplate.SQL.Add( ConvFloatToStr(SQLParcelasPrazoVendaTempVALORVENCTO.Value) + ',') ; {PVCRN2VLR}
      if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').AsFloat > 0 then
        DM.SQLTemplate.SQL.Add( ConvFloatToStr(Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value)+',')
      else
        DM.SQLTemplate.SQL.Add( '0,') ; {PVCRN2TXJURO}
      if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').AsFloat > 0 then
       DM.SQLTemplate.SQL.Add( ConvFloatToStr(Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value)+',')
      else
       DM.SQLTemplate.SQL.Add( '0,') ; {PVCRN2TXMULTA}

      DM.SQLTemplate.SQL.Add( '0,') ; {PVCRN2DESCFIN}
      DM.SQLTemplate.SQL.Add( '"N")') ; {BoletosEmitidos}
      try
        DM.SQLTemplate.ExecSQL ;
        Gravou := true ;
      except
        Inc(ProxCod) ;
        CodNextContaRec := FormatFloat('000' ,StrToFloat(EmpresaPadrao)) +
                           FormatFloat('000' ,StrToFloat(IntToStr(TerminalAtual))) +
                           Format('%.6d', [ProxCod]) ;
        CodNextContaRec := CodNextContaRec + DigitVerifEAN(CodNextContaRec)  ;
      end ;
    end ;
    SQLParcelasPrazoVendaTemp.Next ;
  end ;
  SQLParcelasPrazoVendaTemp.EnableControls ;
end ;

function  TFormTelaFechamentoVenda.GravarCupom : boolean ;
var GravouCupom : Boolean ;
begin
  //GRAVAR CABECALHO CUPOM
  LblInstrucoes.Caption := 'Inicio => Gravando Cupom Fiscal...';
  LblInstrucoes.Refresh;
  GravouCupom := False;
  while not GravouCupom do
    begin
      DM.SQLCupom.Close;
      DM.SQLCupom.MacroByName('MFiltro').Value := 'CUPOA13ID is null And TERMICOD = ' + IntToStr(TerminalAtual)+' And EMPRICOD = ' + EmpresaPadrao;
      DM.SQLCupom.Open;

      DM.SQLCupom.Append;

      DM.SQLConfigVenda.Close;
      DM.SQLConfigVenda.Open;

      if DM.SQLConfigVenda.FieldByName('OPESICODCUPOM').AsVariant <> Null then
        begin
          DM.SQLCupomOPESICOD.Value        := DM.SQLConfigVenda.FieldByName('OPESICODCUPOM').Value;
          if DM.ProcuraRegistro('OPERACAOESTOQUE',['OPESICOD'],[DM.SQLConfigVenda.FieldByName('OPESICODCUPOM').AsString],1) then
            begin
              if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
                DM.SQLCupomPLCTA15CODDEB.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;

              if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
                DM.SQLCupomPLCTA15CODCRED.AsString := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;

              if DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString <> '' then
                DM.SQLCupomCFOPA5COD.AsString      := DM.SQLTemplate.FieldByName('CFOPA5CODDENTROUF').AsString;
            end;
        end;

      DM.SQLCupomEMPRICOD.AsString   := EmpresaPadrao;
      DM.SQLCupomTERMICOD.Value      := TerminalAtual;
      DM.SQLCupomCUPODEMIS.Value     := Date;
      DM.SQLCupomCLIEA13ID.Value     := ClienteVenda;
      DM.SQLCupomCLDPICOD.AsString   := ClienteDependente;
      DM.SQLCupomPLRCICOD.Value      := PlanoVenda;
      DM.SQLCupomVENDICOD.Value      := VendedorVenda;
      DM.SQLCupomUSUAICODVENDA.Value := UsuarioCorrente;
      if ConvenioVenda > 0 then
        DM.SQLCupomCONVICOD.Value := ConvenioVenda;

      // Para clientes que querem ter um numero sequencial de venda sem filtrar terminal. Ex.Dutoal
      if GravarDisplaySequencial = 'S' then
        DM.SQLCupomDISPICOD.Value := SQLMax('CUPOM','DISPICOD','EMPRICOD = '+DM.SQLEmpresaEMPRICOD.AsString);

      DM.SQLCupomCUPOCSTATUS.Value       := 'A';
      DM.SQLCupomCUPON2TOTITENS.Value    := ValorTotalVenda.Value - LBTotalJuroDia.Value -
                                            VlrTxCrediario.Value  + LBTotalJuroDia.Value +
                                            (VlrBonusTroca + VlrRetConfig_SldCad);

      if VlrRetornoCliente.Value > 0 then
        DM.SQLCupomCUPON2TOTITENSRET.Value := VlrRetornoCliente.Value;

      if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') then
        begin
          DM.SQLCupomCUPON2DESC.Value      := ValorDescontoAcrescimo.Value;
          DM.SQLCupomCUPON2DESCITENS.Value := FormTelaItens.TotalDescItens;
          //ESTA LINHA FOI COLOCADA PARA COLOCAR O DESCONTO NO TOTAL DA VENDA POIS
          //ELE É ABATIDO DO CAMPO TOTAL DA TELA
          DM.SQLCupomCUPON2TOTITENS.Value := DM.SQLCupomCUPON2TOTITENS.Value +
                                             ValorDescontoAcrescimo.Value;
        end;
      if (LblValorDescontoAcrescimo.Caption = 'ACRÉSCIMO') or (LBTotalJuroDia.Value > 0) then
        begin
          DM.SQLCupomCUPON2ACRESC.Value   := ValorDescontoAcrescimo.Value + LBTotalJuroDia.Value;
          DM.SQLCupomCUPON2TOTITENS.Value := DM.SQLCupomCUPON2TOTITENS.Value -
                                             ValorDescontoAcrescimo.Value - LBTotalJuroDia.Value;
        end;

      {alimentei pra nao der erro no Sped de campo nulo}
      if DM.SQLCupomCUPON2DESC.isnull then
        DM.SQLCupomCUPON2DESC.value := 0;
      if DM.SQLCupomCUPON2DESCITENS.isnull then
        DM.SQLCupomCUPON2DESCITENS.value := 0;


      if (ECFAtual = 'SIGTRON FS300') then
        NroCupomFiscal := RetornaNroCupomFiscal(ECFAtual,PortaECFAtual);

      if ECFAtual = 'SWEDAS7000' then
        NroCupomFiscal := '';

      if NroCupomFiscal <> '' then
        DM.SQLCupomCUPOINRO.AsString := NroCupomFiscal ;

      if (TipoPadrao = 'CRT') and (FileExists('Confirma.txt')) then
        ImpCupomAutomatico := True;

      DM.SQLCupomCUPOCTIPOPADRAO.Value := TipoPadrao;
      if (TipoPadrao = 'DIN') or (TipoPadrao = 'VISTA') then
        DM.SQLCupomCUPODQUITACAO.AsDateTime := Date;

      DM.SQLCupomCUPON2CONVTAXA.Value    := 0 ;
      DM.SQLCupomCUPOINROORDCOMPRA.Value := 0 ;

      if CupomOrigemTroca <> '' then
        DM.SQLCupomCUPOA13IDTROCA.Value := CupomOrigemTroca;

      DM.SQLCupomCUPON2VLRCOMISSAO.Value := 0 ;
      if CodigoAntigoCupom <> '' then
        DM.SQLCupomCUPOA20CODANT.Value := CodigoAntigoCupom;

      DM.SQLCupomCUPON2JUROATRAS.Value   := 0 ;
      DM.SQLCupomCUPON2MULTAATRAS.Value  := 0 ;
      if VlrBonusTroca > 0 then
        DM.SQLCupomCUPON3BONUSTROCA.Value := VlrBonusTroca
      else
        DM.SQLCupomCUPON3BONUSTROCA.Value := 0 ;

      if DataEntregaVenda <> '' then
        DM.SQLCupomCUPODENTREGA.AsString  := Copy(DataEntregaVenda, 1, 10) ;

      if TipoVenda > 0 then
        DM.SQLCupomTPVDICOD.Value  := TipoVenda ;

      if VlrTxCrediario.Value > 0 then
        DM.SQLCupomCUPON3CREDTAXA.Value := VlrTxCrediario.Value
      else
        DM.SQLCupomCUPON3CREDTAXA.Value := 0 ;

      if VendaConsignada then
        DM.SQLCupomCUPOCCONSIG.Value := 'S' ;

      // dados cartao
      if DataTransacaoCartao <> '' then
        begin
          DM.SQLCupomCUPOA30DATACARTAO.AsString     := DataTransacaoCartao;
          DM.SQLCupomCUPOA30HORACARTAO.AsString     := HoraTransacaoCartao;
          DM.SQLCupomCUPOA30NSUPROVEDOR.AsString    := NSUProvedorCartao;
          DM.SQLCupomCUPOA30NSUINSTITUICAO.AsString := NSUInstituicaoCartao;
        end;

      if NumeroLiberacaoOk <> '' then
        DM.SQLCupomCATCA13ID.AsString    := NumeroLiberacaoOk;

      // ICMS
      DM.SQLCupomCUPON2BASEICMS.AsFloat  := RetornaBaseIcmsProdutosVenda(TerminalAtual);
      DM.SQLCupomCUPON2VLRICMS.AsFloat   := RetornaValorIcmsProdutosVenda(TerminalAtual);


      DM.SQLCupomCLIENTENOME.Value       := NomeClienteVenda ;
      DM.SQLCupomCLIENTEENDE.Value       := EnderecoClienteVenda ;
      DM.SQLCupomCLIENTECNPJ.Value       := DocumentoClienteVenda ;
      DM.SQLCupomCLIENTECIDA.Value       := CidadeClienteVenda ;
      DM.SQLCupomCLIENTEFONE.Value       := FoneClienteVenda ;
      DM.SQLCupomCUPOV254OBS.AsString    := OBSImpressaoCupom;
      if ObsCupom <> '' then
        DM.SQLCupomCUPOV254OBS.AsString := OBSImpressaoCupom +' - '+ObsCupom;

      DM.SQLCupomPENDENTE.Value          := 'S' ;
      DM.SQLCupomREGISTRO.Value          := Now ;
      DM.SQLCupomCUPOA8PLACAVEIC.Value   := PlacaCliente;

      if ValorTroco.Value > 0 then
        DM.SQLCupomTROCO.value := ValorTroco.Value
      else
        DM.SQLCupomTROCO.value := 0;

      try
        DM.SQLCupom.Post;
        GravouCupom := True;
        Application.ProcessMessages;
      except
        DM.SQLCupom.Cancel;
        GravouCupom := False;
        Application.ProcessMessages;
      end;
    end;

  LblInstrucoes.Caption := 'Gravando Data Ultima Compra no cliente';
  LblInstrucoes.Refresh;
  //ALTERAR DATA DE PRIMEIRA E ULTIMA COMPRA DO CLIENTE
  try
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('Update CLIENTE SET CLIEDPRICOMPRA = "'+FormatDateTime('mm/dd/yyyy',Date)+'"');
    DM.SQLTemplate.SQL.Add('Where CLIEA13ID = "' + ClienteVenda + '" and CLIEDPRICOMPRA is Null');
    DM.SQLTemplate.ExecSQL;
  except
    Application.ProcessMessages;
  end;
  try
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('Update CLIENTE SET CLIEDULTCOMPRA = "'+FormatDateTime('mm/dd/yyyy',Date)+'"');
    DM.SQLTemplate.SQL.Add('Where CLIEA13ID = "' + ClienteVenda + '"');
    DM.SQLTemplate.ExecSQL;
  except
    Application.ProcessMessages;
  end;
end ;

function TFormTelaFechamentoVenda.GravarItensCupom : boolean ;
var
  PercItemSobreTot,VlrDesc : double ;
  GravouItem : Boolean;
  Tentativa : integer;
  IniFile: TiniFile;
begin
  FormTelaItens.SQLItensVendaTemp.First;
  while not FormTelaItens.SQLItensVendaTemp.EOF do
  begin
    //TESTAR SE HOUVE DESCONTO NO TOTAL DA VENDA PARA RATEAR NOS ITENS
    VlrDesc          := 0;
    PercItemSobreTot := 0;
    { Judimar, Removi a rotina abaixo, pq os calculos que ela resulta estao Errados, por hora o sistema nao fara mais rateio nos itens
    if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') and (ValorDescontoAcrescimo.Value > 0) then
      begin
        PercItemSobreTot := (FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value *
                             FormTelaItens.SQLItensVendaTempQUANTIDADE.Value) - FormTelaItens.SQLItensVendaTempVLRDESC.Value;
        PercItemSobreTot := (PercItemSobreTot /
                            (ValorTotalVenda.Value + ValorDescontoAcrescimo.Value))*100;
        VlrDesc          := ValorDescontoAcrescimo.Value * (PercItemSobreTot/100);
        VlrDesc          := VlrDesc / FormTelaItens.SQLItensVendaTempQUANTIDADE.Value;
      end; }

    Tentativa := 1;
    GravouItem := False;
    if (copy(EcfAtual,1,4) = 'NFCE') and (FormTelaItens.SQLItensVendaTempCANCELADO.Value = 'S') then
      Tentativa := 9;

    while not GravouItem and (Tentativa < 4) do
      begin
        DM.SQLCupomItem.Close;
        DM.SQLCupomItem.MacroByName('MFiltro').Value := 'CUPOA13ID is null';
        DM.SQLCupomItem.Open;
        LblInstrucoes.Caption := 'Gravando Produto('+FormatFloat('#####00000',FormTelaItens.SQLItensVendaTempCODIGO.AsFloat)+') ...Tentativa N.'+IntToStr(Tentativa);
        LblInstrucoes.Refresh;
        DM.SQLCupomItem.Append;
        DM.SQLCupomItemCUPOA13ID.Value         := DM.CodNextCupom;
        DM.SQLCupomItemEMPRICOD.AsString       := copy(DM.CodNextCupom,1,3);
        DM.SQLCupomItemTERMICOD.AsString       := copy(DM.CodNextCupom,4,3);
        DM.SQLCupomItemCPITIPOS.Value          := FormTelaItens.SQLItensVendaTempNUMITEM.Value;
        DM.SQLCupomItemPRODICOD.Value          := FormTelaItens.SQLItensVendaTempCODIGO.Value;
        DM.SQLCUPOMITEMADICIONAIS.ASSTRING     := FormTelaItens.SQLItensVendaTempNROSERIE.AsString;

        {Programa de Olho no Imposto}
        DM.SQLCupomItemCPITN2IMPOSTOMED.Value  := FormTelaItens.SQLItensVendaTempAliquotaMedia.Value;

        if FormTelaItens.SQLItensVendaTempCANCELADO.Value <> 'S' then
          DM.SQLCupomItemCPITCSTATUS.Value       := 'A'
        else
          DM.SQLCupomItemCPITCSTATUS.Value       := 'C';

        if FormTelaItens.SQLItensVendaTempTROCA.Value <> 'S' then
          DM.SQLCupomItemCPITN3QTD.Value       := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value
        else
          DM.SQLCupomItemCPITN3QTDTROCA.Value  := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value;

        if VlrDesc > 0 then
          Dm.SQLCupomItemCPITN2VLRDESCSOBTOT.AsFloat := VlrDesc;

        if Dm.SQLCupomItemCPITN2VLRDESCSOBTOT.AsVariant = null then
          Dm.SQLCupomItemCPITN2VLRDESCSOBTOT.AsVariant := 0;

        DM.SQLCupomItemCPITN3VLRUNIT.Value     := FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value;
        { Removido Adilson porque estava ficando o valor unitario errado diminuindo o desconto do Unitario
                                                  - (FormTelaItens.SQLItensVendaTempVLRDESC.Value / FormTelaItens.SQLItensVendaTempQUANTIDADE.Value )-
                                                  VlrDesc;}
        try
          DM.SQLCupomItemCPITN3VLRCUSTUNIT.Value := FormTelaItens.SQLItensVendaTempVLRCUSTO.Value;
        except
          DM.SQLCupomItemCPITN3VLRCUSTUNIT.Value := 0;
        end;

        if FormTelaItens.SQLItensVendaTempVLRDESC.Value > 0 then
          // Alterado pelo Judi + DM.SQLCupomItemCPITN2DESC.Value := FormTelaItens.SQLItensVendaTempVLRDESC.Value / FormTelaItens.SQLItensVendaTempQUANTIDADE.Value
          DM.SQLCupomItemCPITN2DESC.asFloat := StrToFloat(FormatFloat('0.00',FormTelaItens.SQLItensVendaTempVLRDESC.Value))
        else
          DM.SQLCupomItemCPITN2DESC.Value := 0;

        // CALCULA O VALOR DE LUCRO DO PRODUTO
        if (FormTelaItens.SQLItensVendaTempVLRCUSTO.Value > 0) and (DM.SQLCupomItemCPITN3QTD.Value > 0) then
          // alterado pelo Judi +       DM.SQLCupomItemCPITN3VLRUNITLUCR.Value :=  (DM.SQLCupomItemCPITN3VLRUNIT.Value-DM.SQLCupomItemCPITN2DESC.Value)-FormTelaItens.SQLItensVendaTempVLRCUSTO.Value
          DM.SQLCupomItemCPITN3VLRUNITLUCR.Value :=  (DM.SQLCupomItemCPITN3VLRUNIT.Value-( DM.SQLCupomItemCPITN2DESC.Value / DM.SQLCupomItemCPITN3QTD.Value))-FormTelaItens.SQLItensVendaTempVLRCUSTO.Value
        else
          DM.SQLCupomItemCPITN3VLRUNITLUCR.Value := 0;


        if FormTelaItens.SQLItensVendaTempVENDICOD.AsVariant <> Null then
          begin
            if FormTelaItens.SQLItensVendaTempVENDICOD.AsInteger > 0 then
              DM.SQLCupomItemVENDICOD.Value := FormTelaItens.SQLItensVendaTempVENDICOD.Value
          end
        else
          if VendedorVenda > 0 then
            DM.SQLCupomItemVENDICOD.Value := VendedorVenda;

        DM.SQLCupomItemCOITN2ICMSALIQ.AsFloat  := FormTelaItens.SQLItensVendaTempALIQUOTA.AsFloat;

        if (FormTelaItens.SQLItensVendaTempTROCA.Value <> 'S') then
          begin
            DM.SQLCupomItemCPITN2BASEICMS.AsFloat  := FormTelaItens.SQLItensVendaTempBASEICMS.AsFloat;
            DM.SQLCupomItemCPITN2VLRICMS.AsFloat   := FormTelaItens.SQLItensVendaTempVLRICMS.AsFloat;
          end
        else
          begin
            DM.SQLCupomItemCPITN2BASEICMS.AsFloat  := 0;
            DM.SQLCupomItemCPITN2VLRICMS.AsFloat   := 0;
          end;

        DM.SQLCupomItemCPITN2VLRQDEVERIAVENDER.value := FormTelaItens.SQLItensVendaTempVLRQDEVERIAVENDER.Value;
        DM.SQLCupomItemCPITTOBS.Value                := FormTelaItens.SQLItensVendaTempDESCRICAOTEC.Value;
        DM.SQLCupomItemDENSIDADE.Value               := FormTelaItens.SQLItensVendaTempDENSIDADE.Value;
        DM.SQLCupomItemMEDIDA.Value                  := FormTelaItens.SQLItensVendaTempMEDIDA.Value;
        DM.SQLCupomItemESPESSURA.Value               := FormTelaItens.SQLItensVendaTempESPESSURA.Value;
        DM.SQLCupomItemTECIDO.Value                  := FormTelaItens.SQLItensVendaTempTECIDO.Value;

        DM.SQLCupomItemM3_ESPESSURA.Value            := FormTelaItens.SQLItensVendaTempM3_ESPESSURA.Value;
        DM.SQLCupomItemM3_LARGURA.Value              := FormTelaItens.SQLItensVendaTempM3_LARGURA.Value;
        DM.SQLCupomItemM3_COMPRI.Value               := FormTelaItens.SQLItensVendaTempM3_COMPRI.Value;

        DM.SQLCupomItemPENDENTE.Value                := 'S';
        DM.SQLCupomItemREGISTRO.Value                := Now;
        TRY
          GravouItem := True;
          DM.SQLCupomItem.Post;
          Application.ProcessMessages;
        Except
          GravouItem := False;
          DM.SQLCupomItem.Cancel;
          Application.ProcessMessages;
        End;
        if not GravouItem then
          Tentativa := Tentativa+1
        else
          Tentativa := 5;
      end;

    if (DM.SQLTerminalAtivo.FieldByName('TERMCMOVESTOQUE').Value = 'S') and GravouItem then
      begin
        LblInstrucoes.Caption := 'Atualizando Estoque Item('+FormatFloat('####0000',FormTelaItens.SQLItensVendaTempNUMITEM.Value)+') ...';
        LblInstrucoes.Refresh;
        if (FormTelaItens.SQLItensVendaTempCANCELADO.Value <> 'S')  then
          if (FormTelaItens.SQLItensVendaTempTROCA.Value <> 'S')  then
            GravaMovimentoEstoque(DM.SQLProduto,
                                  DM.SQLProdutoFilho,
                                  DM.SQLProdutoSaldo,
                                  StrToInt(EmpresaPadrao),//Empresa
                                  FormTelaItens.SQLItensVendaTempCODIGO.Value,//Produto
                                  DM.SQLConfigVenda.FieldByName('OPESICODCUPOM').Value,//Operacao
                                  FormTelaItens.SQLItensVendaTempQUANTIDADE.Value,//Quantidade
                                  'S',//ENTRADA/SAIDA
                                  FormatDateTime('mm/dd/yyyy', Now),
                                  FormTelaItens.SQLItensVendaTempVLRUNITBRUT.AsString,
                                  'CUPOM',
                                  DM.CodNextCupom,
                                  '')
          else
            GravaMovimentoEstoque(DM.SQLProduto,
                                  DM.SQLProdutoFilho,
                                  DM.SQLProdutoSaldo,
                                  StrToInt(EmpresaPadrao),//Empresa
                                  FormTelaItens.SQLItensVendaTempCODIGO.Value,//Produto
                                  DM.SQLConfigVenda.FieldByName('OPESICODTROCA').Value,//Operacao
                                  FormTelaItens.SQLItensVendaTempQUANTIDADE.Value,//Quantidade
                                  'E',//ENTRADA/SAIDA
                                  FormatDateTime('mm/dd/yyyy', Now),
                                  FormTelaItens.SQLItensVendaTempVLRUNITBRUT.AsString,
                                  'CUPOM',
                                  DM.CodNextCupom,
                                  '');
      end;

    // Grava Nro de Serie
    if (FormTelaItens.SQLItensVendaTempCANCELADO.Value <> 'S')  then
      if FormTelaItens.SQLItensVendaTempNROSERIE.AsString <> '' then
        GravaSaidaNroSerieProduto(FormTelaItens.SQLItensVendaTempNROSERIE.AsString,
                                  FormTelaItens.SQLItensVendaTempCODIGO.AsString,
                                  'I',
                                  EmpresaPadrao,
                                  ClienteVenda,
                                  DM.CodNextCupom,
                                  '',
                                  '',
                                  '');

    // Atualizar Ficha Produto com a Data Ult Venda
    if (FormTelaItens.SQLItensVendaTempCANCELADO.Value <> 'S')  then
      begin
        try
          LblInstrucoes.Caption := 'Atualizando Data Ult.Venda Item('+FormatFloat('####0000',FormTelaItens.SQLItensVendaTempNUMITEM.Value)+') ...';
          LblInstrucoes.Refresh;
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('Update PRODUTO set Pendente="S", PRODDULTVENDA = "' + FormatDateTime('mm/dd/yyyy',Now)+'"');
          DM.SQLTemplate.SQL.Add('Where PRODICOD = ' + FormTelaItens.SQLItensVendaTempCODIGO.AsString) ;
          DM.SQLTemplate.ExecSQL;
        except
          Application.ProcessMessages;
        end;
      end;
    FormTelaItens.SQLItensVendaTemp.Next;
  end;
end;

function TFormTelaFechamentoVenda.GravarNumerarioAVistaCupom : boolean ;
var
  Historico  : string ;
  i : integer;
  ValorCorrigido : Double;
begin
  DM.SQLCupomNumerario.Close ;
  DM.SQLCupomNumerario.MacroByName('MFiltro').Value := 'CUPOA13ID is null' ;
  DM.SQLCupomNumerario.Open ;

  TotalVistaAut := 0 ;
  SQLParcelasVistaVendaTemp.DisableControls ;
  SQLParcelasVistaVendaTemp.First ;
  LblInstrucoes.Caption := 'Gravando Numerarios a Vista...' ;
  LblInstrucoes.Refresh ;

  i := SQLParcelasVistaVendaTemp.RecordCount;

  while not SQLParcelasVistaVendaTemp.EOF do
    begin
      if ((Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CHQ') and
         (DM.SQLConfigVenda.FieldByName('CFVECDADOSCHQPDV').Value = 'S')) or
         (Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CRT') then
        begin
          DM.SQLContasReceber.Close ;
          DM.SQLContasReceber.MacroByName('MFiltro').Value := 'CTRCA13ID is null' ;
          DM.SQLContasReceber.Open ;

          SairRec := false ;
          while not SairRec do
          begin
            if not dm.TblCheques.Active then
              dm.TblCheques.Open ;

            dm.TblCheques.First ;

            //CAPTURAR O ID DO CONTA A RECEBER
            if Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CHQ' then
              LblInstrucoes.Caption := 'Gravando no Cadastro de Cheques...'
            else
              LblInstrucoes.Caption := 'Gravando no Contas a Receber...';

            LblInstrucoes.Refresh ;

            Inc(CodProxCntRecTemp) ;

            CodNextContaRec := FormatFloat('000' ,StrToFloat(EmpresaPadrao)) +
                               FormatFloat('000' ,StrToFloat(IntToStr(TerminalAtual))) +
                               Format('%.6d', [CodProxCntRecTemp]) ;
            CodNextContaRec := CodNextContaRec + DigitVerifEAN(CodNextContaRec)  ;

            DM.SQLContasReceber.Append ;
            DM.SQLContasReceberCTRCA13ID.Value         := CodNextContaRec ;
            DM.SQLContasReceberEMPRICOD.AsString       := EmpresaPadrao ;
            DM.SQLContasReceberTERMICOD.Value          := TerminalAtual ;
            DM.SQLContasReceberCTRCICOD.Value          := CodProxCntRecTemp ;
            DM.SQLContasReceberCLIEA13ID.Value         := ClienteVenda ;
            DM.SQLContasReceberCTRCCSTATUS.Value       := 'A' ;
            DM.SQLContasReceberCTRCCTIPOREGISTRO.Value := 'N';

           // DM.SQLContasReceberCTRCINROPARC.Value      := DM.SQLContasReceberCTRCINROPARC.AsInteger + 1;
            DM.SQLContasReceberCTRCINROPARC.Value      := 0;
            if Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,4) = 'CRTF' then
              begin
                DiaVctoCartaoCliente := SQLLocate('CLIENTE','CLIEA13ID','CLIEIDIAVCTOCARTAO','"' + ClienteVenda + '"');
                if (DM.SQLConfigCrediario.FieldByName('CFCRIPRZMINCARTAO').AsVariant <> Null) and (DiaVctoCartaoCliente <> '') then
                  begin
                    DecodeDate(Date,Ano,Mes,Dia);

                    if DiaVctoCartaoCliente <> '' then
                      Dia := StrToInt(DiaVctoCartaoCliente);

                    DataVctoCartao := EncodeDate(Ano,Mes,Dia);

                    if StrToInt(DiaVctoCartaoCliente) > Dia then
                      DataVctoCartao := IncMonth(DataVctoCartao,1);

                    if (DataVctoCartao - Date) < DM.SQLConfigCrediario.FieldByName('CFCRIPRZMINCARTAO').AsInteger then
                       DataVctoCartao := IncMonth(DataVctoCartao,1);

                    DM.SQLContasReceberCTRCDVENC.Value := DataVctoCartao;
                  end
                else
                  begin
                    if DiaVctoCartaoCliente <> '' then
                      begin
                        DecodeDate(Date,Ano,Mes,Dia);
                        if DiaVctoCartaoCliente <> '' then
                          Dia := StrToInt(DiaVctoCartaoCliente);

                        DataVctoCartao := EncodeDate(Ano,Mes,Dia);
                        DataVctoCartao := IncMonth(Date,1);

                        DM.SQLContasReceberCTRCDVENC.Value := DataVctoCartao;
                      end
                    else
                      DM.SQLContasReceberCTRCDVENC.Value := IncMonth(Date,1)
                  end;
              end
            else
              DM.SQLContasReceberCTRCDVENC.Value := Date;

            DM.SQLContasReceberCTRCN2VLR.Value     := SQLParcelasVistaVendaTempVALORPARC.Value ;
            ValorCorrigido := SQLParcelasVistaVendaTempVALORPARC.Value ;

            DM.SQLContasReceberCTRCN2DESCFIN.Value := 0 ;
            // PLANO DE CONTAS
            if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasVistaVendaTempNUMEICOD.AsString],1) then
              begin
                if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
                  DM.SQLContasReceberPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
                if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
                  DM.SQLContasReceberPLCTA15CODDEBITO.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
              end;
            DM.SQLContasReceberNUMEICOD.Value      := SQLParcelasVistaVendaTempNUMEICOD.Value ;

            DM.SQLContasReceberCTRCN2TXJURO.Value  := 0 ;
            DM.SQLContasReceberCTRCN2TXMULTA.Value := 0 ;

            if DM.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value > 0 then
              DM.SQLContasReceberCTRCN2TXJURO.Value := DM.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value ;
            if DM.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value > 0 then
              DM.SQLContasReceberCTRCN2TXMULTA.Value := DM.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value ;

            DM.SQLContasReceberCTRCA5TIPOPADRAO.Value  := SQLParcelasVistaVendaTempTIPOPADR.Value ;
            DM.SQLContasReceberCTRCN2TOTREC.Value      := 0 ;
            DM.SQLContasReceberCTRCN2TOTJUROREC.Value  := 0 ;
            DM.SQLContasReceberCTRCN2TOTMULTAREC.Value := 0 ;
            DM.SQLContasReceberCTRCN2TOTDESCREC.Value  := 0 ;
            DM.SQLContasReceberCUPOA13ID.Value         := DM.CodNextCupom ;
            DM.SQLContasReceberCTRCDEMIS.Value         := Date ;
            if Copy(SQLParcelasVistaVendaTempTIPOPADR.Value,1,3) = 'CHQ' then
              begin
                //DADOS CHEQUE
                DM.SQLContasReceberBANCA5CODCHQ.Value      := dm.TblChequesBANCA5COD.AsString ;
                DM.SQLContasReceberCTRCA10AGENCIACHQ.Value := dm.TblChequesAGENCIA.AsString ;
                DM.SQLContasReceberCTRCA15CONTACHQ.Value   := dm.TblChequesCONTA.AsString ;
                DM.SQLContasReceberCTRCA15NROCHQ.Value     := dm.TblChequesNroCheque.AsString ;
                DM.SQLContasReceberCTRCA60TITULARCHQ.Value := dm.TblChequesTITULAR.AsString ;
                DM.SQLContasReceberCTRCA20CGCCPFCHQ.Value  := dm.TblChequesCGCCPF.AsString ;
                if dm.TblChequesDataVecto.AsVariant <> Null then
                  DM.SQLContasReceberCTRCDVENC.AsDateTime  := dm.TblChequesDataVecto.AsDateTime ;
                //DM.SQLContasReceberCTRCDDEPOSCHQ.Value     :=
                DM.SQLContasReceberALINICOD.Value          := dm.TblChequesALINICOD.Value ;
                DM.SQLContasReceberPORTICOD.Value          := dm.TblChequesPORTICOD.Value ;
              end;

            // QUITAR PARCELAS DE CARTAO AUTOMATICAMENTE
            if (Copy(SQLParcelasVistaVendaTempTIPOPADR.AsString,1,3) = 'CRT') and
               (SQLParcelasVistaVendaTempTIPOPADR.AsString <> 'CRTF') and
               (DM.SQLConfigVenda.FieldByName('CFVECQUITAPARCRT').Value = 'S') then
               begin
                 DM.SQLContasReceber.FieldByName('CTRCN2TOTREC').Value      := SQLParcelasVistaVendaTempVALORPARC.Value;
                 DM.SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                 if not SQLRecebimento.Active then SQLRecebimento.Open;
                 SQLRecebimento.Append;
                 SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
                 SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                 SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                 SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasVistaVendaTempVALORPARC.Value;
                 SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                 SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                 SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                 SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                 SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
                 SQLRecebimento.FieldByName('NUMEICOD').asInteger     := SQLParcelasVistaVendaTempNUMEICOD.AsInteger ;
                 SQLRecebimento.FieldByName('PENDENTE').AsString      := 'S';
                 SQLRecebimento.FieldByName('REGISTRO').AsDateTime    := Now;
                 SQLRecebimento.Post;
               end;

            //QUITAR CHEQUE AUTOMATICAMENTE
            if (Copy(SQLParcelasVistaVendaTempTIPOPADR.AsString,1,3) = 'CHQ') and
               (DM.SQLConfigVenda.FieldByName('CFVECQUITARPARCHQ').Value = 'S') then
                  begin
                    DM.SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasVistaVendaTempVALORPARC.Value;
                    DM.SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                    if not SQLRecebimento.Active then SQLRecebimento.Open;
                    SQLRecebimento.Append;
                    SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
                    SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                    SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                    SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasVistaVendaTempVALORPARC.Value;
                    SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                    SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                    SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                    SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                    SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
                    SQLRecebimento.FieldByName('NUMEICOD').asInteger     := SQLParcelasVistaVendaTempNUMEICOD.AsInteger ;
                    SQLRecebimento.FieldByName('PENDENTE').AsString      := 'S';
                    SQLRecebimento.FieldByName('REGISTRO').AsDateTime    := Now;
                    SQLRecebimento.Post ;
                  end;

            DM.SQLContasReceberPENDENTE.Value          := 'S' ;
            DM.SQLContasReceberREGISTRO.Value          := Now ;

            TRY
              DM.SQLContasReceber.Post ;
              SairRec := true ;
            EXCEPT
              on E: Exception do
              begin
                DM.SQLContasReceber.Cancel ;

                if Pos('violation', E.Message) = 0 then
                  Informa('Problemas ao gravar o cheque a vista: ' +
                          'Numerário..........: ' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString + #13 +
                          'Cupom..............: ' + DM.CodNextCupom + #13 +
                          'Contas Receber(ID).: ' + CodNextContaRec + #13 +
                          'Anote a mensagem abaixo e tecle ENTER para continuar:' + #13 + E.Message) ;
              end ;
            END ;
          end ;
        end
      else
        begin
          if (ValorTroco.Value > 0) then
            begin
              if (i = 1) then
                ValorCorrigido := SQLParcelasVistaVendaTempVALORPARC.Value - ValorTroco.Value
              else
                ValorCorrigido := SQLParcelasVistaVendaTempVALORPARC.Value;
            end
          else
            ValorCorrigido := SQLParcelasVistaVendaTempVALORPARC.Value;
          DM.SQLCupomNumerario.Append ;
          DM.SQLCupomNumerarioEMPRICOD.Value    := EmpresaCorrente;
          DM.SQLCupomNumerarioCUPOA13ID.Value   := DM.CodNextCupom ;
          DM.SQLCupomNumerarioNUMEICOD.Value    := SQLParcelasVistaVendaTempNUMEICOD.Value ;
          DM.SQLCupomNumerarioCONMCSTATUS.Value := 'A' ;
          if SQLParcelasVistaVendaTempTIPOPADR.Value = 'DIN' then
            DM.SQLCupomNumerarioCPNMN2VLR.Value   := SQLParcelasVistaVendaTempVALORPARC.Value - ValorTroco.Value
          else
            DM.SQLCupomNumerarioCPNMN2VLR.Value   := SQLParcelasVistaVendaTempVALORPARC.Value ;

          DM.SQLCupomNumerarioPENDENTE.Value    := 'S' ;
          DM.SQLCupomNumerarioREGISTRO.Value    := Now ;
          DM.SQLCupomNumerarioCLIEA13ID.Value   := ClienteVenda ;
          if DM.SQLConfigVenda.FieldByName('CFVECPARC0ENTRBAIX').Value = 'S' then
            DM.SQLCupomNumerarioCPNMCAUTENT.Value := 'S' ;

          // PLANO DE CONTAS
          if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasVistaVendaTempNUMEICOD.AsString],1) then
            begin
              if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
                DM.SQLCupomNumerarioPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
            end;

          try
            DM.SQLCupomNumerario.Post ;
          except
            on E: Exception do
              begin
                Informa('Problemas ao gravar o numerário a vista ' + SQLParcelasVistaVendaTempNumerarioLookup.AsString + ' do Cupom:' + #13 + E.Message) ;
              end ;
          end ;
        end ;

      //GRAVAR MOVIMENTO DE CAIXA NUMERARIO A VISTA
      LblInstrucoes.Caption := 'Gravando Movimento de Caixa...' ;
      LblInstrucoes.Refresh ;
      // VENDA A VISTA DINHEIRO
      if (TipoPadrao = 'DIN') or (TipoPadrao = 'CHQV') or (TipoPadrao = 'VISTA') or (Copy(TipoPadrao,1,3) = 'CRT')
         and (SQLParcelasVistaVendaTempVALORPARC.Value > 0) and (ValorPrazo = 0) then
        GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                             DM.SQLTotalizar,
                             EmpresaPadrao,//WEMPRICOD
                             IntToStr(TerminalAtual),//WTERMICOD
                             FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                             SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                             'Null',//WOPCXICOD
                             IntToStr(DM.UsuarioAtual),//WUSUAICOD
                             DM.CodNextCupom,//WMVCIXA15DOCORIG
                             ValorCorrigido,//WMOVICAIXN2VLR
                             0,//WMOVICAIXN2VLRJURO
                             0,//WMOVICAIXN2VLRMULTA
                             0,//WMOVICAIXN2VLRDEC
                             'Null',//WMOVICAIXA6NUMCUPOM
                             'C',//WTIPO
                             'AVista: ' + SQLParcelasVistaVendaTempNumerarioLookup.AsString + '/' + NomeClienteVenda,//WMVCXA255HIST
                             'N',
                             '');

      // Venda Crediario com Entrada, o lancto recebera a op = EVPRZ mais cada Numerario a Vista
      if (TipoPadrao = 'CRD') or (TipoPadrao = 'CNV') then
        begin
          if i = 1 then
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
              DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "EVPRZ"') ;
              DM.SQLTemplate.Open ;
              GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                   DM.SQLTotalizar,
                                   EmpresaPadrao,//WEMPRICOD
                                   IntToStr(TerminalAtual),//WTERMICOD
                                   FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                                   SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                                   DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                                   IntToStr(DM.UsuarioAtual),//WUSUAICOD
                                   DM.CodNextCupom,//WMVCIXA15DOCORIG
                                   SQLParcelasVistaVendaTempVALORPARC.Value -ValorTroco.Value,//WMOVICAIXN2VLR
                                   0,//WMOVICAIXN2VLRJURO
                                   0,//WMOVICAIXN2VLRMULTA
                                   0,//WMOVICAIXN2VLRDEC
                                   'Null',//WMOVICAIXA6NUMCUPOM
                                   'C',//WTIPO
                                   'AVista: ' + SQLParcelasVistaVendaTempNumerarioLookup.AsString + '/' + NomeClienteVenda,//WMVCXA255HIST
                                   'N',
                                   '');
            end
          else
            begin
              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
              DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "EVPRZ"') ;
              DM.SQLTemplate.Open ;
              GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                                   DM.SQLTotalizar,
                                   EmpresaPadrao,//WEMPRICOD
                                   IntToStr(TerminalAtual),//WTERMICOD
                                   FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                                   SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                                   DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                                   IntToStr(DM.UsuarioAtual),//WUSUAICOD
                                   DM.CodNextCupom,//WMVCIXA15DOCORIG
                                   SQLParcelasVistaVendaTempVALORPARC.Value,//WMOVICAIXN2VLR
                                   0,//WMOVICAIXN2VLRJURO
                                   0,//WMOVICAIXN2VLRMULTA
                                   0,//WMOVICAIXN2VLRDEC
                                   'Null',//WMOVICAIXA6NUMCUPOM
                                   'C',//WTIPO
                                   'AVista: ' + SQLParcelasVistaVendaTempNumerarioLookup.AsString + '/' + NomeClienteVenda,//WMVCXA255HIST
                                   'N',
                                   '');
            end;
        end;

      if (TipoPadrao = 'CHQP') and (ValorPrazo > 0) then
        begin
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "EVCHP"') ;
          DM.SQLTemplate.Open ;
          GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                               DM.SQLTotalizar,
                               EmpresaPadrao,//WEMPRICOD
                               IntToStr(TerminalAtual),//WTERMICOD
                               FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                               SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                               DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                               IntToStr(DM.UsuarioAtual),//WUSUAICOD
                               DM.CodNextCupom,//WMVCIXA15DOCORIG
                               SQLParcelasVistaVendaTempVALORPARC.Value,//WMOVICAIXN2VLR
                               0,//WMOVICAIXN2VLRJURO
                               0,//WMOVICAIXN2VLRMULTA
                               0,//WMOVICAIXN2VLRDEC
                               'Null',//WMOVICAIXA6NUMCUPOM
                               'C',//WTIPO
                               'AVista: ' + SQLParcelasVistaVendaTempNumerarioLookup.AsString + '/' + NomeClienteVenda,//WMVCXA255HIST
                               'N',
                               '');
        end;
      if (Copy(TipoPadrao,1,3) = 'CRT') and (ValorPrazo > 0) then
        begin
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select * from OPERACAOCAIXA') ;
          DM.SQLTemplate.SQL.Add('where OPCXA5SIGLA = "EVCRT"') ;
          DM.SQLTemplate.Open ;
          GravaMovimentoCaixa( DM.SQLTotalizadorCaixa,
                               DM.SQLTotalizar,
                               EmpresaPadrao,//WEMPRICOD
                               IntToStr(TerminalAtual),//WTERMICOD
                               FormatDateTime('mm/dd/yyyy', Now),//WMVCIXDMOV
                               SQLParcelasVistaVendaTempNUMEICOD.AsString,//WNUMEICOD
                               DM.SQLTemplate.FieldByName('OPCXICOD').AsString,//WOPCXICOD
                               IntToStr(DM.UsuarioAtual),//WUSUAICOD
                               DM.CodNextCupom,//WMVCIXA15DOCORIG
                               SQLParcelasVistaVendaTempVALORPARC.Value,//WMOVICAIXN2VLR
                               0,//WMOVICAIXN2VLRJURO
                               0,//WMOVICAIXN2VLRMULTA
                               0,//WMOVICAIXN2VLRDEC
                               'Null',//WMOVICAIXA6NUMCUPOM
                               'C',//WTIPO
                               'AVista: ' + SQLParcelasVistaVendaTempNumerarioLookup.AsString + '/' + NomeClienteVenda,//WMVCXA255HIST
                               'N',
                               '');
        end;

      TotalVistaAut := TotalVistaAut + SQLParcelasVistaVendaTempVALORPARC.Value ;

      SQLParcelasVistaVendaTemp.Next ;
      dec(I);
    end ;

  SQLParcelasVistaVendaTemp.First ;
  SQLParcelasVistaVendaTemp.EnableControls ;

end ;

function TFormTelaFechamentoVenda.GravarNumerarioAPrazoCupom : boolean ;
var
  i, IDClienteCredito  : integer ;
  Hora, Ndias : TDateTime ;
  ValorCreditoCliente, ValorCreditoUsado : double ;
begin
  ValorCreditoUsado := 0;
  DM.SQLContasReceber.Close ;
  DM.SQLContasReceber.MacroByName('MFiltro').Value := 'CTRCA13ID is null' ;
  DM.SQLContasReceber.Open ;
  SQLParcelasPrazoVendaTemp.First ;
  if (VlrTotJuroDia>0) and (SQLParcelasPrazoVendaTemp.RecordCount = 1) and ((SQLParcelasPrazoVendaTempTIPOPADR.Value = 'CRD') or (SQLParcelasPrazoVendaTempTIPOPADR.Value = 'CHQP')) then
    begin
      SQLParcelasPrazoVendaTemp.Edit;
      SQLParcelasPrazoVendaTempVALORVENCTO.Value := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
      SQLParcelasPrazoVendaTemp.Post;
    end;

  {Pego o saldo atual de creditos antecipados}
  if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CRD') then
    begin
      dm.sqlConsulta.Close;
      dm.sqlConsulta.sql.clear;
      dm.sqlConsulta.sql.add('select sum(VALORCREDITO-VALORDEBITO) as ValorSaldo from CLIENTECREDITO');
      dm.SQLConsulta.sql.add('where CLIEA13ID = "'+ClienteVenda+'"');
      dm.SQLConsulta.Open;
      if dm.SQLConsulta.findfield('ValorSaldo').IsNull then
        ValorCreditoCliente := 0
      else
        ValorCreditoCliente := dm.SQLConsulta.findfield('ValorSaldo').Value;
      dm.sqlConsulta.Close;
    end;

  SQLParcelasPrazoVendaTemp.DisableControls ;
  LblInstrucoes.Caption := 'Gerando ID no Contas a Receber...';
  LblInstrucoes.Refresh ;
  while not SQLParcelasPrazoVendaTemp.EOF do
    begin
      SairRec := false ;
      while not SairRec do
        begin
          //CAPTURAR O ID DO CONTA A RECEBER

          Inc(CodProxCntRecTemp) ;

          CodNextContaRec := FormatFloat('000' ,StrToFloat(EmpresaPadrao)) +
                             FormatFloat('000' ,StrToFloat(IntToStr(TerminalAtual))) +
                             Format('%.6d', [CodProxCntRecTemp]) ;
          CodNextContaRec := CodNextContaRec + DigitVerifEAN(CodNextContaRec) ;

          DM.SQLContasReceber.Append ;
          DM.SQLContasReceberCTRCA13ID.Value             := CodNextContaRec ;
          DM.SQLContasReceberEMPRICOD.AsString           := EmpresaPadrao ;
          DM.SQLContasReceberTERMICOD.Value              := TerminalAtual ;
          DM.SQLContasReceberCTRCICOD.Value              := CodProxCntRecTemp ;
          DM.SQLContasReceberCLIEA13ID.Value             := ClienteVenda ;
          DM.SQLContasReceberCLDPICOD.AsString           := ClienteDependente;
          DM.SQLContasReceberCTRCCSTATUS.Value           := 'A' ;
          if NroCupomFiscal <> '' then
            DM.SQLContasReceberCTRCA254HIST.AsString     := 'CF N. '+ NroCupomFiscal;
          DM.SQLContasReceberCTRCINROPARC.Value          := SQLParcelasPrazoVendaTempNROPARCELA.Value ;
          DM.SQLContasReceberCTRCDEMIS.Value             := Date;
          DM.SQLContasReceberCTRCDVENC.Value             := SQLParcelasPrazoVendaTempDATAVENCTO.Value ;
          DM.SQLContasReceberCTRCN2VLR.Value             := SQLParcelasPrazoVendaTempVALORVENCTO.Value ;
          DM.SQLContasReceberCTRCN2DESCFIN.Value         := 0 ;
          // Mes e Ano Competencia
          DM.SQLContasReceberCTRCA2MESCOMP.Value := FormatDateTime('MM',Date);
          DM.SQLContasReceberCTRCA4ANOCOMP.Value := FormatDateTime('YYYY',SQLParcelasPrazoVendaTempDATAVENCTO.Value);
          // PLANO DE CONTAS
          if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasPrazoVendaTempNUMEICOD.AsString],1) then
            begin
              if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
                DM.SQLContasReceberPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
              if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
                DM.SQLContasReceberPLCTA15CODDEBITO.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
            end;

          DM.SQLContasReceberNUMEICOD.Value        := SQLParcelasPrazoVendaTempNUMEICOD.Value ;
          if DM.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value > 0 then
            DM.SQLContasReceberCTRCN2TXJURO.Value  := DM.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value ;
          if DM.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value > 0 then
            DM.SQLContasReceberCTRCN2TXMULTA.Value := DM.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value ;
          DM.SQLContasReceberCTRCA5TIPOPADRAO.Value      := SQLParcelasPrazoVendaTempTIPOPADR.Value ;
          DM.SQLContasReceberCTRCN2TOTREC.Value          := 0 ;
          DM.SQLContasReceberCTRCN2TOTJUROREC.Value      := 0 ;
          DM.SQLContasReceberCTRCN2TOTMULTAREC.Value     := 0 ;
          DM.SQLContasReceberCTRCN2TOTDESCREC.Value      := 0 ;
          DM.SQLContasReceberCUPOA13ID.Value             := DM.CodNextCupom;

          DM.SQLContasReceberCTRCCEMITIDOBOLETO.Value    := 'N';
          DM.SQLContasReceberCTRCCTIPOREGISTRO.Value     := 'N';

          if NroCupomFiscal <> '' then
            DM.SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := NroCupomFiscal;

          if DM.SQLTerminalAtivo.FieldByName('TPDCICOD').AsVariant <> Null then
            DM.SQLTerminalAtivo.FieldByName('TPDCICOD').AsInteger        := DM.SQLTerminalAtivo.FieldByName('TPDCICOD').AsInteger;

          DM.SQLContasReceberPENDENTE.Value              := 'S';
          DM.SQLContasReceberREGISTRO.Value              := Now;

          // QUITAR PARCELAS DE CONVENIO AUTOMATICAMENTE
          if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CNV') and
             (DM.SQLConfigVenda.FieldByName('CFVECQUITAPARCONV').Value = 'S') then
             begin
               DM.SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
               DM.SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
               if not SQLRecebimento.Active then SQLRecebimento.Open;
               SQLRecebimento.Append;
               SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
               SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
               SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
               SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
               SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
               SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
               SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
               SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
               SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
               SQLRecebimento.FieldByName('NUMEICOD').asInteger     := SQLParcelasVistaVendaTempNUMEICOD.AsInteger ;
               SQLRecebimento.FieldByName('PENDENTE').AsString      := 'S';
               SQLRecebimento.FieldByName('REGISTRO').AsDateTime    := Now;
               SQLRecebimento.Post;
             end;

          // QUITAR PARCELAS DE CARTAO AUTOMATICAMENTE
          if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CRT') and
             (SQLParcelasPrazoVendaTempTIPOPADR.AsString <> 'CRTF') and
             (DM.SQLConfigVenda.FieldByName('CFVECQUITAPARCRT').Value = 'S') then
             begin
               DM.SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
               DM.SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
               if not SQLRecebimento.Active then SQLRecebimento.Open;
               SQLRecebimento.Append;
               SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
               SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
               SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
               SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
               SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
               SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
               SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
               SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
               SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
               SQLRecebimento.FieldByName('NUMEICOD').asInteger     := SQLParcelasVistaVendaTempNUMEICOD.AsInteger ;
               SQLRecebimento.FieldByName('PENDENTE').AsString      := 'S';
               SQLRecebimento.FieldByName('REGISTRO').AsDateTime    := Now;
               SQLRecebimento.Post;
             end;

          if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CHQ') and
             (DM.SQLConfigVenda.FieldByName('CFVECDADOSCHQPDV').Value = 'S') then
            begin
              if not dm.TblCheques.Active then
                dm.TblCheques.Open ;

              if dm.TblCheques.RecordCount > 0 then
                begin
                  dm.TblCheques.First ;
                  //ESTE FOR SERVE PARA POSICIONAR A TABLE TEMP NA MESMA PARCELA QUE ESTÁ
                  //SENDO GRAVADA NO CONTAS A RECEBER
                  if SQLParcelasPrazoVendaTempNROPARCELA.Value > 1 then
                    for i := 1 to SQLParcelasPrazoVendaTempNROPARCELA.Value do
                      dm.TblCheques.Next ;

                  //DADOS CHEQUE
                  DM.SQLContasReceberBANCA5CODCHQ.Value      := dm.TblChequesBANCA5COD.AsString ;
                  DM.SQLContasReceberCTRCA10AGENCIACHQ.Value := dm.TblChequesAGENCIA.AsString ;
                  DM.SQLContasReceberCTRCA15CONTACHQ.Value   := dm.TblChequesCONTA.AsString ;
                  DM.SQLContasReceberCTRCA15NROCHQ.Value     := dm.TblChequesNroCheque.AsString ;
                  DM.SQLContasReceberCTRCA60TITULARCHQ.Value := dm.TblChequesTITULAR.AsString ;
                  DM.SQLContasReceberCTRCA20CGCCPFCHQ.Value  := '' ;
                  if dm.TblChequesDataVecto.AsVariant <> Null then
                    DM.SQLContasReceberCTRCDVENC.AsDateTime  := dm.TblChequesDataVecto.AsDateTime;

                  //DM.SQLContasReceberCTRCDDEPOSCHQ.Value     :=
                  DM.SQLContasReceberALINICOD.Value          := dm.TblChequesALINICOD.Value ;
                  DM.SQLContasReceberPORTICOD.Value          := dm.TblChequesPORTICOD.Value ;
                end ;
            end ;

          //QUITAR CHEQUE AUTOMATICAMENTE
          if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CHQ') and
             (DM.SQLConfigVenda.FieldByName('CFVECQUITARPARCHQ').Value = 'S') then
                begin
                  DM.SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                  DM.SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                  if not SQLRecebimento.Active then SQLRecebimento.Open;
                  SQLRecebimento.Append;
                  SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
                  SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                  SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                  SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                  SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                  SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                  SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                  SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                  SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
                  SQLRecebimento.FieldByName('NUMEICOD').asInteger     := SQLParcelasVistaVendaTempNUMEICOD.AsInteger ;
                  SQLRecebimento.FieldByName('PENDENTE').AsString      := 'S';
                  SQLRecebimento.FieldByName('REGISTRO').AsDateTime    := Now;
                  SQLRecebimento.Post ;
                end;

          {Testa se numerario é CRD ver se o cliente tem limite de credito ainda}
          if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CRD') and (ValorCreditoCliente-ValorCreditoUsado>0) then
            begin
              DM.SQLContasReceberCTRCDULTREC.AsString := FormatDateTime('dd/mm/yyyy',Now);
              if not SQLRecebimento.Active then SQLRecebimento.Open;
              SQLRecebimento.Append;

              if (ValorCreditoCliente-ValorCreditoUsado) > 0 then
                begin
                  if SQLParcelasPrazoVendaTempVALORVENCTO.Value > (ValorCreditoCliente-ValorCreditoUsado) then
                    begin
                      {Se parcela maior que o saldo do cliente}
                      DM.SQLContasReceberCTRCN2TOTREC.Value                := ValorCreditoCliente-ValorCreditoUsado;
                      SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := ValorCreditoCliente-ValorCreditoUsado;
                      ValorCreditoUsado := (ValorCreditoCliente-ValorCreditoUsado) + ValorCreditoUsado;
                    end
                  else
                    begin
                      {Se parcela menor que o saldo do cliente}
                      DM.SQLContasReceberCTRCN2TOTREC.Value                := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                      SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                      ValorCreditoUsado := ValorCreditoUsado + SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                    end;

                  SQLRecebimento.FieldByName('CTRCA13ID').AsString     := CodNextContaRec;
                  SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                  SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                  SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                  SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                  SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                  SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                  SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
                  SQLRecebimento.FieldByName('NUMEICOD').asInteger     := SQLParcelasVistaVendaTempNUMEICOD.AsInteger ;
                  SQLRecebimento.FieldByName('PENDENTE').AsString      := 'S';
                  SQLRecebimento.FieldByName('REGISTRO').AsDateTime    := Now;
                  SQLRecebimento.Post;
                end;
            end;

          TRY
            DM.SQLContasReceber.Post ;

            SairRec := true ;
          //--------------------------------------\\
          EXCEPT
            on E: Exception do
            begin
              DM.SQLContasReceber.Cancel ;
           {   if Pos('violation', E.Message) = 0 then
                Informa('Problemas ao gravar o numerário a prazo: ' +
                        'Numerário..........: ' + SQLParcelasPrazoVendaTempNumerarioLookup.AsString + #13 +
                        'Cupom..............: ' + DM.CodNextCupom + #13 +
                        'Contas Receber(ID).: ' + CodNextContaRec + #13 +
                        'Anote a mensagem abaixo e tecle ENTER para continuar:' + #13 + E.Message) ;}
            end ;
          end ;
        end ;
      SQLParcelasPrazoVendaTemp.Next ;
    end ;

  if (Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CRD') and (ValorCreditoUsado>0) then
    begin
      dm.sqlConsulta.Close;
      dm.sqlConsulta.sql.text := 'select max(id) from clientecredito';
      dm.sqlConsulta.Open;
      if dm.sqlConsulta.fieldbyname('max').Value > 0 then
        IDClienteCredito := dm.sqlConsulta.fieldbyname('max').Value + 1
      else
        IDClienteCredito := 1;

      SQLClienteCredito.Open;
      SQLClienteCredito.Append;
      SQLClienteCreditoID.Value            := IDClienteCredito;
      SQLClienteCreditoDATA.AsString       := FormatDateTime('dd/mm/yyyy',now);
      SQLClienteCreditoCUPOA13ID.Value     := DM.CodNextCupom;
      SQLClienteCreditoCLIEA13ID.Value     := ClienteVenda;
      SQLClienteCreditoVALORCREDITO.Value  := 0;
      SQLClienteCreditoVALORDEBITO.Value   := ValorCreditoUsado;
      SQLClienteCreditoHISTORICO.Value     := 'Credito usado para quitar compras do cliente';
      SQLClienteCredito.Post;
      SQLClienteCredito.Close;
    end;
end ;

function TFormTelaFechamentoVenda.TemInformacaoPendente : boolean ;
begin
  Result := false ;
  //TESTAR SE TEM CLIENTE
  if (ClienteVenda = '') then
    begin
      EstadoFechVenda := InformandoCliente ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  if (LblCodigoCliente.Caption = '') then
    begin
      Result := true ;
      EstadoFechVenda := InformandoCliente ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  //TESTAR SE TEM VENDEDOR
  if (VendedorVenda > 0) then
  else
    begin
      Result := true ;
      EstadoFechVenda := InformandoVendedor ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  if LblNomeVendedor.Caption = '' then
    begin
      Result := true ;
      EstadoFechVenda := InformandoVendedor ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  //TESTAR SE TEM PLANO
  if (PlanoVenda > 0) then
  else
    begin
      Result := true ;
      EstadoFechVenda := InformandoPlano ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  if LblNomePlano.Caption = '' then
    begin
      Result := true ;
      EstadoFechVenda := InformandoPlano ;
      PreparaEstadoFech(EstadoFechVenda) ;
      exit ;
    end ;
  //TESTAR SE TEM NUMERARIO VISTA
  if PlanoVistaPrazo(PlanoVenda, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) = 'VISTA' then
    begin
      if (NumerarioVista > 0) then
      else
        if SQLRecCount('PARCELASVISTAVENDATEMP', 'where TERMICOD = ' + IntToStr(TerminalAtual)) = 0 then
          begin
            Result := true ;
            EstadoFechVenda := InformandoNumerarioVista ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;
      //TESTAR SE ALGUM VALOR AVISTA ESTÁ SEM NUMERÁRIO
      SQLParcelasVistaVendaTemp.DisableControls ;
      SQLParcelasVistaVendaTemp.First ;
      while not SQLParcelasVistaVendaTemp.EOF do
        begin
          if SQLParcelasVistaVendaTempNUMEICOD.Value > 0 then
          else begin
            Result := true ;
            EstadoFechVenda := InformandoNumerarioVista ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;
          SQLParcelasVistaVendaTemp.Next ;
        end ;
      SQLParcelasVistaVendaTemp.First ;
      SQLParcelasVistaVendaTemp.EnableControls ;
    end ;
  //TESTAR SE TEM NUMERARIO PRAZO
  if PlanoVistaPrazo(PlanoVenda, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) = 'PRAZO' then
    begin
      if (NumerarioPrazo > 0) then
      else
        if SQLRecCount('PARCELASPRAZOVENDATEMP', 'where TERMICOD = ' + IntToStr(TerminalAtual)) = 0 then
          begin
            Result := true ;
            EstadoFechVenda := InformandoNumerarioPrazo ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;

      SQLParcelasPrazoVendaTemp.DisableControls ;
      SQLParcelasPrazoVendaTemp.First ;
      ValorPrazo := 0 ;
      while not SQLParcelasPrazoVendaTemp.EOF do
        begin
          if SQLParcelasPrazoVendaTempNUMEICOD.Value > 0 then
          else begin
            Result := true ;
            EstadoFechVenda := InformandoNumerarioPrazo ;
            PreparaEstadoFech(EstadoFechVenda) ;
            exit ;
          end ;
          SQLParcelasPrazoVendaTemp.Next ;
        end ;
    end ;
end ;

function TFormTelaFechamentoVenda.VerificandoTotalVenda : double ;
var
  TotVista,
  TotPrazo : double ;
begin
  TotVista := 0 ;
  TotPrazo := 0 ;
  SQLParcelasVistaVendaTemp.DisableControls ;
  SQLParcelasVistaVendaTemp.First ;
  while not SQLParcelasVistaVendaTemp.EOF do
  begin
    TotVista := TotVista + SQLParcelasVistaVendaTempVALORPARC.Value ;

    SQLParcelasVistaVendaTemp.Next ;
  end ;

  SQLParcelasVistaVendaTemp.First ;
  SQLParcelasVistaVendaTemp.EnableControls ;

  SQLParcelasPrazoVendaTemp.DisableControls ;
  SQLParcelasPrazoVendaTemp.First ;
  while not SQLParcelasPrazoVendaTemp.EOF do
  begin
    TotPrazo := TotPrazo + SQLParcelasPrazoVendaTempVALORVENCTO.Value ;

    SQLParcelasPrazoVendaTemp.Next ;
  end ;
  SQLParcelasPrazoVendaTemp.First ;
  SQLParcelasPrazoVendaTemp.EnableControls ;

  VerificandoTotalVenda := StrToFloat(FormatFloat('#,##0.00', (TotVista + TotPrazo) - ValorTotalVenda.Value)) ;
end ;

procedure TFormTelaFechamentoVenda.TblTicketDadosVendaNewRecord(DataSet: TDataSet);
begin
  TblTicketDadosVendaQtdeProd.Value  := 0 ;
  TblTicketDadosVendaPrecoProd.Value := 0 ;
  TblTicketDadosVendaTotalProd.Value := 0 ;
  TblTicketDadosVendaTaxaCred.Value  := 0 ;
  TblTicketDadosVendaAcrescimo.Value := 0 ;
  TblTicketDadosVendaDesconto.Value  := 0 ;
end;

procedure TFormTelaFechamentoVenda.AtualizaDadosPlanoNumerario(Sender: TObject);
begin
  if PlanoVenda > 0 then
    begin
      EstadoFechVenda   := InformandoPlano ;
      EntradaDados.text := IntToStr(PlanoVenda) ;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
    end ;

  if (ValorEntrada.Value > 0) and (NumerarioVista > 0) then
    begin
      EstadoFechVenda   := InformandoNumerarioVista ;
      EntradaDados.text := IntToStr(NumerarioVista) ;
      exit ;
    end ;

  if (SQLParcelasPrazoVendaTemp.RecordCount > 0) and (NumerarioPrazo > 0) then
    begin
      EstadoFechVenda   := InformandoNumerarioPrazo ;
      EntradaDados.text := IntToStr(NumerarioPrazo) ;
      EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
    end ;
end ;

function TFormTelaFechamentoVenda.BloquearVenda : boolean ;
var
  MsgBloqueioVenda,
  MotivoBloqueio, aSenha : string ;
  TipoBloqueio   : integer ;
  InfoRetornoUser    : TInfoRetornoUser;
begin
  Result       := false ;
  TipoBloqueio := 0 ;
  if (TipoPadrao = 'DIN') or (TipoPadrao = 'VISTA') or (TipoPadrao = 'CRT') or (TipoPadrao = 'CNV') then
     begin
       Result := false ;
       exit;
     end;
  if ClienteVenda <> DM.SQLTerminalAtivo.FieldByName('CLIEA13ID').AsString then
    begin
      //TESTAR SE CLIENTE TEM ALGUMA OBS NO CADASTRO E MOSTRA-LA
      if (SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIETOBS1', '"' + ClienteVenda + '"') <> '') then
        begin
          ShowMessage(SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIETOBS1', '"' + ClienteVenda + '"'));
        end;


      //TESTAR SE CLIENTE TEM PERMISSAO PRA VENDA CREDIARIO
      if (TipoPadrao = 'CRD') and (SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIECVNDCRED', '"' + ClienteVenda + '"') <> 'S') then
        begin
          InformaG('Atenção! Cliente sem autorização para compras no Crédiario/Fatura!') ;
          Result := True ;
          exit;
        end;

      //TESTAR SE CLIENTE TEM PERMISSAO PRA VENDA CHEQUE PRE
      if (TipoPadrao = 'CHQP') and (SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIECVNDCHEQ', '"' + ClienteVenda + '"') <> 'S') then
        begin
          InformaG('Atenção! Cliente sem autorização para compras no Cheque Pré!') ;
          Result := True ;
          exit;
        end;

      //TESTAR SE CLIENTE TEM MOTIVO DE BLOQUEIO
      MotivoBloqueio := SQLLocate('CLIENTE', 'CLIEA13ID', 'MTBLICOD', '"' + ClienteVenda + '"');
      if MotivoBloqueio <> '' then
        if MotivoBloqueio <> '0' then
          TipoBloqueio := 1 ;


      //TESTAR SE CLIENTE ESTA EM 1 AVISO
      if DM.SQLConfigCrediario.FieldByName('CFCRCBLOQVENDCLI1AV').Value = 'S' then
        begin
          MotivoBloqueio := SQLLocate('CARTAPRIMEIROAVISO', 'CLIEA13ID', 'CLIEA13ID', '"' + ClienteVenda + '"');
          if MotivoBloqueio <> '' then
            if MotivoBloqueio <> '0' then
              TipoBloqueio := 2 ;
        end;

      //TESTAR SE CLIENTE ESTA EM 2 AVISO
      if DM.SQLConfigCrediario.FieldByName('CFCRCBLOQVENDCLI2AV').Value = 'S' then
        begin
          MotivoBloqueio := SQLLocate('CARTASEGUNDOAVISO', 'CLIEA13ID', 'CLIEA13ID', '"' + ClienteVenda + '"');
            if MotivoBloqueio <> '' then
              if MotivoBloqueio <> '0' then
                TipoBloqueio := 3 ;
        end;

      //TESTAR SE CLIENTE ESTA EM SPC
      if DM.SQLConfigCrediario.FieldByName('CFCRCBLOQVENDCLI3AV').Value = 'S' then
        begin
          MotivoBloqueio := SQLLocate('CARTAAVISOSPC', 'CLIEA13ID', 'CLIEA13ID', '"' + ClienteVenda + '"');
            if MotivoBloqueio <> '' then
              if MotivoBloqueio <> '0' then
                TipoBloqueio := 4 ;
        end;

      // TESTAR SE TEM ALGUM CHEQUE COM SITUACAO Q TEM BLOQUEIO
      MsgBloqueioVenda := '';
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('Select * From CONTASRECEBER') ;
      DM.SQLTemplate.SQL.Add('Where ALINICOD > 0 and CTRCA20CGCCPFCHQ = "' + CPFCGCClienteVenda + '"') ;
      {sqllocate('CLIENTE','CLIEA13ID','CLIEA11CPF',ClienteVenda)}
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.IsEmpty then
        begin
          while not DM.SQLTemplate.Eof do
            begin
              MsgBloqueioVenda := SQLLocate('MOTIVOBLOQUEIO','MTBLICOD','MTBLA60DESCR',SQLLocate('ALINEA','ALINICOD','MTBLICOD',DM.SQLTemplate.FieldByName('ALINICOD').AsString));
              if MsgBloqueioVenda <> '' then
                TipoBloqueio := 5;
              DM.SQLTemplate.next;
            end;
        end;

      //TESTAR SE CLIENTE TEM LIMITE PARA A COMPRA
      if ((TipoPadrao = 'CRD') or (TipoPadrao = 'CHQP') or (TipoPadrao = 'CRTF')) then
        if (DM.SQLConfigVenda.FieldByName('CFVECTESTALIMTCRED').AsString = 'S') then
          if not VerificaLimiteCredito(ClienteVenda,ValorTotalVenda.Value,DM.SQLParcelas,DM.SQLCliente) then
            TipoBloqueio := 9;

      case TipoBloqueio of
        1 : MsgBloqueioVenda := 'Este Cliente está Bloqueado' ;
        2 : MsgBloqueioVenda := 'Este Cliente está em 1 Aviso' ;
        3 : MsgBloqueioVenda := 'Este Cliente está em 2 Aviso' ;
        4 : MsgBloqueioVenda := 'Este Cliente está em SPC' ;
        5 : MsgBloqueioVenda := 'Verificar Cadastro de Cheques' ;
        9 : MsgBloqueioVenda := 'Limite para Compras foi excedido! Verificar Cadastro do Cliente' ;
      end ;
      if (DM.SQLConfigVenda.FieldByName('CFVEA250MSGBLOQ').Value <> '') and (TipoBloqueio > 0) then
        MsgBloqueioVenda := DM.SQLConfigVenda.FieldByName('CFVEA250MSGBLOQ').Value;

      if MsgBloqueioVenda <> '' then
        ShowMessage(MsgBloqueioVenda);

      if TipoBloqueio > 0 then
        begin
          if TipoBloqueio < 9 then // Bloqueado por um dos motivos acima
            if SQLLocate('USUARIO', 'USUAICOD', 'USUACVENDCLIBLOQMOTIV', IntToStr(DM.UsuarioAtual)) <> 'S' then
              begin
                RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACVENDCLIBLOQMOTIV',InfoRetornoUser);
                if RetornoCampoUsuario <> 'S' then
                  Result := True
                else
                  Result := False;
              end
            else
              Result := False; // Usuario esta autorizado a Vender para clientes bloqueados para Venda no Crediario ou Chq.

          if ((TipoPadrao = 'CRD') or (TipoPadrao = 'CRTF')) and (TipoBloqueio = 9) then // Limite de Compras Excedido
            if SQLLocate('USUARIO', 'USUAICOD', 'USUACVENDCLIBLOQ', IntToStr(DM.UsuarioAtual)) <> 'S' then
              begin
                RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACVENDCLIBLOQ',InfoRetornoUser);
                if RetornoCampoUsuario <> 'S' then
                  Result := True
                else
                  Result := False;
              end
            else
              Result := False; // Usuario esta autorizado a Vender para clientes bloqueados para Venda no Crediario por Limite Excedido
          if (copy(TipoPadrao,1,3) = 'CHQ') and (TipoBloqueio = 9) then // Limite de Compras Excedido
            if SQLLocate('USUARIO', 'USUAICOD', 'USUACVENDCLIBLOQCHQ', IntToStr(DM.UsuarioAtual)) <> 'S' then
              begin
                RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome,'USUACVENDCLIBLOQCHQ',InfoRetornoUser);
                if RetornoCampoUsuario <> 'S' then
                  Result := True
                else
                  Result := False;
              end
            else
              Result := False; // Usuario esta autorizado a Vender para clientes bloqueados para Venda no Cheque
        end;
    end
  else
    Result := false ;
end ;

function TFormTelaFechamentoVenda.Pontos(NumPontos : integer) : string ;
var i : integer ;
    Str : string ;
begin
  Str := '' ;
  for  i := 1 to NumPontos do
    Str := Str + '.' ;
  Result := Str ;
end ;

function  TFormTelaFechamentoVenda.GravarOrcamento : boolean ;
begin
  if not DM.SQLPedidoVenda.Active then
    DM.SQLPedidoVenda.Open ;

  LblInstrucoes.Caption := 'Gravando Orçamento...' ;
  LblInstrucoes.Refresh ;

  DM.SQLPedidoVenda.Append ;
  DM.SQLPedidoVendaEMPRICOD.Value          := StrToInt(EmpresaPadrao) ;
  DM.SQLPedidoVendaVENDICOD.Value          := VendedorVenda ;
  DM.SQLPedidoVendaCLIEA13ID.Value         := ClienteVenda ;
  DM.SQLPedidoVendaUSUAA60LOGIN.Value      := UsuarioAtualNome;
  DM.SQLPedidoVendaPDVDN2VLRDESCPROM.Value := 0 ;
  DM.SQLPedidoVendaPLRCICOD.Value          := PlanoVenda ;
  DM.SQLPedidoVendaPDVDDEMISSAO.Value      := Date ;
  DM.SQLPedidoVendaPDVDN2VLRFRETE.Value    := FormTelaFechamentoOrcamento.Frete.Value ;
  DM.SQLPedidoVendaPDVDCTIPO.Value         := Tipo_Orc_Ped ;
  DM.SQLPedidoVendaPDVDCSTATUS.Value       := 'A' ;
  DM.SQLPedidoVendaPDVDN2VLRDESC.Value     := 0 ;
  if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') then
    DM.SQLPedidoVendaPDVDN2VLRDESCPROM.Value := ValorDescontoAcrescimo.Value ;

  if (LblValorDescontoAcrescimo.Caption = 'DESCONTO') then
    DM.SQLPedidoVendaPDVDN2TOTPROD.Value     := ValorTotalVenda.Value -
                                                VlrTxCrediario.Value +
                                                (VlrBonusTroca + VlrRetConfig_SldCad) +
                                                FormTelaItens.TotalDescItens +
                                                ValorDescontoAcrescimo.Value
  else
    DM.SQLPedidoVendaPDVDN2TOTPROD.Value     := ValorTotalVenda.Value -
                                                VlrTxCrediario.Value +
                                                FormTelaItens.TotalDescItens +
                                                (VlrBonusTroca + VlrRetConfig_SldCad);

    DM.SQLPedidoVendaPDVDN2TOTPED.Value      := ValorTotalVenda.Value -
                                                VlrTxCrediario.Value +
                                                (VlrBonusTroca + VlrRetConfig_SldCad) +
                                                FormTelaFechamentoOrcamento.Frete.Value;

  DM.SQLPedidoVendaPDVDTOBS.Value          := FormTelaFechamentoOrcamento.Obs.Text ;
  DM.SQLPedidoVendaREGISTRO.Value          := Now ;
  DM.SQLPedidoVendaPENDENTE.Value          := 'S' ;
  DM.SQLPedidoVendaPDVDCTIPOFRETE.Value    := '' ;
  DM.SQLPedidoVendaPDVDDENTREGA.Value      := Now ;
  DM.SQLPedidoVendaPDVDCIMPORTADO.Value    := 'N';
  DM.SQLPedidoVenda.Post ;
end ;

function  TFormTelaFechamentoVenda.GravarItensOrcamento : boolean ;
begin
  i := 1 ;
  if not DM.SQLPedidoVendaItem.Active then
    DM.SQLPedidoVendaItem.Open ;

  FormTelaItens.SQLItensVendaTemp.First ;
  while not FormTelaItens.SQLItensVendaTemp.EOF do
  begin
    LblInstrucoes.Caption := 'Gravando Itens do Orçamento...' ;
    LblInstrucoes.Refresh ;

    if FormTelaItens.SQLItensVendaTempCANCELADO.Value <> 'S' then
      begin
        DM.SQLPedidoVendaItem.Append ;
        DM.SQLPedidoVendaItemPDVDA13ID.Value         := DM.CodNextOrc ;
        DM.SQLPedidoVendaItemPVITIITEM.Value         := FormTelaItens.SQLItensVendaTempNUMITEM.Value ;
        DM.SQLPedidoVendaItemPRODICOD.Value          := FormTelaItens.SQLItensVendaTempCODIGO.Value ;
        DM.SQLPedidoVendaItemPVITN3QUANT.Value       := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value ;
        DM.SQLPedidoVendaItemPVITN3QUANTVEND.Value   := FormTelaItens.SQLItensVendaTempQUANTIDADE.Value ;
        DM.SQLPedidoVendaItemPVITN2VLRUNIT.Value     := FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value ;
        DM.SQLPedidoVendaItemPVITN2PERCDESC.Value    := 0 ;
        DM.SQLPedidoVendaItemPVITN2VLRDESC.Value     := FormTelaItens.SQLItensVendaTempVLRDESC.Value ;
        DM.SQLPedidoVendaItemPVITN3TOTVENDITEM.Value := (FormTelaItens.SQLItensVendaTempQUANTIDADE.Value  *
                                                        FormTelaItens.SQLItensVendaTempVLRUNITBRUT.Value) -
                                                        FormTelaItens.SQLItensVendaTempVLRDESC.Value ;

        DM.SQLPedidoVendaItemREGISTRO.Value        := Now ;
        DM.SQLPedidoVendaItemPENDENTE.Value        := 'S' ;
        DM.SQLPedidoVendaItemPDVDA60OBS.Value      := FormTelaItens.SQLItensVendaTempDESCRICAOTEC.Value ;
        DM.SQLPedidoVendaItemUNIDICOD.AsString     := SQLLocate('PRODUTO','PRODICOD','UNIDICOD',FormTelaItens.SQLItensVendaTempCODIGO.AsString) ;
        DM.SQLPedidoVendaItemPVITN2PERCCOMIS.Value := 0 ;
        DM.SQLPedidoVendaItemPRODN3PESOBRUTO.Value := 0 ;
        DM.SQLPedidoVendaItemPRODCMIX.Value        := 'D' ;

        if FormTelaItens.SQLItensVendaTempDESCRICAOTEC.AsString <> '' then
          DM.SQLPedidoVendaItemPDVDA255OBS1.AsString := FormTelaItens.SQLItensVendaTempDESCRICAOTEC.AsString;
        DM.SQLPedidoVendaItem.Post ;
      end;
    FormTelaItens.SQLItensVendaTemp.Next ;
    Inc(i) ;
  end ;
end ;

function TFormTelaFechamentoVenda.VerificaCartaoCredito : Boolean;
begin
  // TESTA CARTAO DE CRÉDITO
  // MANDA DADOS DISPLAY TECLADO
  if TecladoReduzidoModelo = 'TEC44DIS' then
    EnviaTecladoTextoDisplay44('Executando Transacao TEF','Aguarde!');
   if TecladoReduzidoModelo = 'TEC65' then
    EnviaTecladoTextoDisplay65('Executando Transacao TEF','Aguarde!');

  if (((TemNumerarioCartaoVista) or (TemNumerarioCartaoPrazo))
     and (ProvedorCartao <> '')) or
     ((Copy(TipoPadrao,1,3) = 'CHQ') and (ProvedorCartao <> '')) then
    begin
      SQLParcelasVistaVendaTemp.First;
      ValorCartaoVista := 0;
      while not SQLParcelasVistaVendaTemp.Eof do
        begin
          if (SQLParcelasVistaVendaTempTIPOPADR.AsString = 'CRT') or
             ((Copy(SQLParcelasVistaVendaTempTIPOPADR.AsString,1,3) = 'CHQ')
              and (SQLParcelasVistaVendaTempPRCACCONSCHEQUE.AsString = 'S')) then
            begin
              ValorCartaoVista   := ValorCartaoVista + SQLParcelasVistaVendaTempVALORPARC.AsFloat;
              ParcelaVistaCartao := SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString;
              ProvedorCartao     := SQLParcelasVistaVendaTempPRCAA60CARTAO.AsString;
            end;
          SQLParcelasVistaVendaTemp.Next;
        end;
      ValorCartaoPrazo := 0;
      while not SQLParcelasPrazoVendaTemp.Eof do
        begin
          if (SQLParcelasPrazoVendaTempTIPOPADR.AsString = 'CRT') or
              ((Copy(SQLParcelasPrazoVendaTempTIPOPADR.AsString,1,3) = 'CHQ')
                and (SQLParcelasPrazoVendaTempPRCACCONSCHEQUE.AsString = 'S')) then
            begin
              ValorCartaoPrazo   := ValorCartaoPrazo + SQLParcelasPrazoVendaTempVALORVENCTO.AsFloat;
              ParcelaPrazoCartao := SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString;
              ProvedorCartao     := SQLParcelasPrazoVendaTempPRCAA60CARTAO.AsString;
            end;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      if ((ParcelaVistaCartao <> '') or (ParcelaPrazoCartao <> '')) and (ProvedorCartao <> '') then
        begin
          dm.TotalCartao := ValorCartaoVista + ValorCartaoPrazo;
        //********************************************************************//
        //                TRANSAÇÃO COM CARTÕES DE CRÉDITO                    //
        //********************************************************************//
        if ((Trim(ProvedorCartao) = 'VISANET') or
            (Trim(ProvedorCartao) = 'REDECARD') or
            (Trim(ProvedorCartao) = 'AMEX') or
            (Trim(ProvedorCartao) = 'BANRISUL')or
            (Trim(ProvedorCartao) = 'TECBAN')) then
          begin
            if Ativo then
              begin
                {Passa o numero da proxima nota que sera gerada}
                if (copy(EcfAtual,1,4) = 'NFCE') then
                  begin
                    dm.sqlconsulta.close;
                    dm.sqlconsulta.sql.clear;
                    dm.sqlconsulta.sql.text := 'Select Max(CUPOINRO) from cupom where termicod='+dm.SQLTerminalAtivo.ParamByName('Termicod').AsString;
                    dm.sqlconsulta.open;
                    if not dm.sqlconsulta.fieldbyname('MAX').IsNull then
                      NroCupomFiscal := intToStr(dm.sqlconsulta.fieldbyname('MAX').value + 1)
                    else
                      NroCupomFiscal := '1';
                  end;

                Application.Minimize;
                if (Copy(TipoPadrao,1,3) = 'CHQ') then
                  RetornoCartao :=  LiberaCartao('CHQ',NroCupomFiscal,dm.TotalCartao)
                else
                  RetornoCartao :=  LiberaCartao('CRT',NroCupomFiscal,dm.TotalCartao);
                Result := RetornoCartao.TransacaoAutorizada;
                if not Result then
                  begin
                    FechandoVenda := False;
                    FinalizacaodeVenda := False;
                    EstadoFechVendaAnt := '';
                    EstadoFechVenda    := FinalizandoVenda;
                    PreparaEstadoFech(EstadoFechVenda);
                    Application.Restore;
                    if RetornoCartao.RetornoOperador <> '' then
                      Application.MessageBox(PChar(RetornoCartao.RetornoOperador + #13 + #13),'Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                  end;
              end
            else
              begin
                Application.MessageBox(PChar('O Gerenciador Padrão não está ativo!' + #13 +'Impossível estabelecer conexão para efetuar a venda!'),'Informação',MB_OK + MB_ICONERROR + MB_SETFOREGROUND + MB_SYSTEMMODAL);
                DeleteText(AdjustPath(SendDirectory) + 'IntPos.001');
                FechandoVenda := False;
                FinalizacaodeVenda := False;
                EstadoFechVendaAnt := '';
                  EstadoFechVenda    := FinalizandoVenda;
                PreparaEstadoFech(EstadoFechVenda);
              end;
          end;
        //********************************************************************//
        //          TÉRMINO DA TRANSAÇÃO COM CARTÕES DE CRÉDITO               //
        //********************************************************************//
      end;
  end;
end;

function TFormTelaFechamentoVenda.ImprimeConfissaoDividaNAOFISCAL(Impressora,Porta : String) : Boolean;
begin
  try
    if AbrirPortaNAOFISCAL(Impressora,Porta) then
    if ImprimeTextoFormatado_NAOFISCAL(Impressora,DM.SQLEmpresaEMPRA60NOMEFANT.AsString+chr(10),3,0,0,0,1) then
      begin
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,' DOCUMENTO NAO FISCAL'+chr(10),2,0,0,1,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,' CONFISSAO DE DIVIDA '+chr(10),2,0,0,1,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'Documento: ' + DM.CodNextCupom + chr(10),2,0,0,1,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'DECLARO PARA OS DEVIDOS FINS QUE RECEBI A(S)'   + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'MERCADORIA(S) CONSTANTE(S) NO PRESENTE CUPOM'   + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'DE PAGAMENTO(S) PREVISTO(S), BEM COMO AUTORIZO'   + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'A EMISSAO DE CARNE(S) DE COBRANCA DECORRENTE(S)'   + chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'DA PRESENTE COMPRA DE R$ ' + FormatFloat('#,##0.00', ValorPrazo)+ chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,'-----------------------------------------------'+chr(10),2,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,LblNomeCliente.Caption,1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
        ImprimeTextoFormatado_NAOFISCAL(Impressora,Chr(10),1,0,0,0,0);
      end;
    FecharPortaNAOFISCAL(Impressora);
    ImprimeConfissaoDividaNAOFISCAL := True;
  except
    FecharPortaNAOFISCAL(Impressora);
    ImprimeConfissaoDividaNAOFISCAL := False;
  end;
end;
procedure TFormTelaFechamentoVenda.BtnF1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTelaTeclasAtalhoTelaFechamentoVenda, FormTelaTeclasAtalhoTelaFechamentoVenda) ;
  FormTelaTeclasAtalhoTelaFechamentoVenda.ShowModal ;
end;

procedure TFormTelaFechamentoVenda.btnSairClick(Sender: TObject);
begin
  ImpCupomAutomatico := False;
  close;
end;

procedure TFormTelaFechamentoVenda.ConerBtn1Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F7, [ssAlt]);
end;

procedure TFormTelaFechamentoVenda.btnF11Click(Sender: TObject);
begin
  EntradaDados.SetFocus;
  FormKeyDown(Sender, F11, [ssAlt]);
end;

procedure TFormTelaFechamentoVenda.FormShow(Sender: TObject);
begin
  {Testa pra ver se tem caminho ao Servidor para definir se o PDV é Offline}
  if dm.ConectaServidor then
    shpStatusServidor.Brush.Color := clLime
  else
    shpStatusServidor.Brush.Color := clRed;
end;

end.

