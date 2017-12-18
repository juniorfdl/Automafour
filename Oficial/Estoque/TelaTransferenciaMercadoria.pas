unit TelaTransferenciaMercadoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, RxLookup, StdCtrls, Mask, DBCtrls, Buttons,
  jpeg, ExtCtrls, ToolEdit, CurrEdit, Grids, DBGrids, DB, DBTables, RxQuery,
  ComCtrls, ConerBtn, Menus, UCrpe32, RXCtrls, StrUtils, Placemnt, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaTransferencia = class(TFormTelaGeralTEMPLATE)
    gboEmpresaOrigem: TGroupBox;
    gboEmpresaDest: TGroupBox;
    dblEmpresaDestino: TRxDBLookupCombo;
    gboPesquisaProduto: TGroupBox;
    Label3: TLabel;
    edCodigoProduto: TEdit;
    Label7: TLabel;
    Panel1: TPanel;
    DBGrid5: TDBGrid;
    SQLEmpresaDestino: TRxQuery;
    dsSQLEmpresaDestino: TDataSource;
    SQLEmpresaDestinoEMPRICOD: TIntegerField;
    SQLEmpresaDestinoEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaDestinoEMPRA20FAX: TStringField;
    SQLEmpresaDestinoEMPRA60END: TStringField;
    SQLEmpresaDestinoEMPRA60BAI: TStringField;
    SQLEmpresaDestinoEMPRA60CID: TStringField;
    SQLEmpresaDestinoEMPRA2UF: TStringField;
    SQLEmpresaDestinoEMPRA14CGC: TStringField;
    SQLEmpresaDestinoEMPRA20IE: TStringField;
    SQLEmpresaDestinoEMPRA60EMAIL: TStringField;
    SQLEmpresaRemetente: TRxQuery;
    dsSQLEmpresaRemetente: TDataSource;
    SQLEmpresaDestinoEmprDestCidade: TStringField;
    SQLEmpresaDestinoEmprDestEndereo: TStringField;
    SQLEmpresaRemetenteEMPRICOD: TIntegerField;
    SQLEmpresaRemetenteEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaRemetenteEMPRA20FONE: TStringField;
    SQLEmpresaRemetenteEMPRA20FAX: TStringField;
    SQLEmpresaRemetenteEMPRA60END: TStringField;
    SQLEmpresaRemetenteEMPRA60BAI: TStringField;
    SQLEmpresaRemetenteEMPRA60CID: TStringField;
    SQLEmpresaRemetenteEMPRA2UF: TStringField;
    SQLEmpresaRemetenteEMPRA8CEP: TStringField;
    SQLEmpresaRemetenteEMPRA14CGC: TStringField;
    SQLEmpresaRemetenteEMPRA20IE: TStringField;
    SQLEmpresaRemetenteEMPRA60EMAIL: TStringField;
    SQLEmpresaRemetenteEmprDestEndereo: TStringField;
    SQLEmpresaRemetenteEmprDestCidade: TStringField;
    tblTempTranferencia: TTable;
    tblTempTranferenciaProdutoCod: TIntegerField;
    tblTempTranferenciaProdutoBarras: TStringField;
    tblTempTranferenciaProdutoQtde: TFloatField;
    tblTempTranferenciaProdutoNome: TStringField;
    tblTempTranferenciaProdutoEstoque: TFloatField;
    DStblTempTranferencia: TDataSource;
    SQLProduto: TRxQuery;
    tblTempTranferenciaProdutoReferencia: TStringField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoCLFSICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    tblTempTranferenciaProdutoValorCusto: TFloatField;
    SQLProdutoClassFiscal: TStringField;
    SQLProdutoMarca: TStringField;
    SQLProdutoUnidade: TStringField;
    SQLProdutoProdutoLookup: TStringField;
    SQLEmpresaDestinoEMPRA20FONE: TStringField;
    SQLTranferencia: TRxQuery;
    SQLTranferenciaItem: TRxQuery;
    SQLTranferenciaTRFEA13ID: TStringField;
    SQLTranferenciaEMPRICOD: TIntegerField;
    SQLTranferenciaTERMICOD: TIntegerField;
    SQLTranferenciaTRFEICOD: TIntegerField;
    SQLTranferenciaTRFEIEMPRDEST: TIntegerField;
    SQLTranferenciaTRFEDEMISSAO: TDateTimeField;
    SQLTranferenciaREGISTRO: TDateTimeField;
    SQLTranferenciaPENDENTE: TStringField;
    SQLTranferenciaItemTRITICOD: TIntegerField;
    SQLTranferenciaItemPRODICOD: TIntegerField;
    SQLTranferenciaItemTRITN3QTDEENVIADA: TFloatField;
    SQLTranferenciaItemTRITN3QTDERECEBIDA: TFloatField;
    SQLTranferenciaItemTRITA254DIVERGENCIA: TStringField;
    SQLTranferenciaItemREGISTRO: TDateTimeField;
    SQLTranferenciaItemPENDENTE: TStringField;
    DSSQLTranferencia: TDataSource;
    DSSQLTranferenciaItem: TDataSource;
    PageControl: TPageControl;
    TabSheetGerarTransferencia: TTabSheet;
    TabTransfRecebida: TTabSheet;
    Panel2: TPanel;
    DBGridTranferencias: TDBGrid;
    SQLTranferenciaEmpresaRemetente: TStringField;
    SQLTranferenciaEmpresaDestino: TStringField;
    DBGrid1: TDBGrid;
    SQLTranferenciaItemTRFEA13ID: TStringField;
    Panel3: TPanel;
    SQLTranferenciaTRFECRECEBIDO: TStringField;
    shpNaoRecebido: TShape;
    shpEnviados: TShape;
    Label1: TLabel;
    Label2: TLabel;
    SQLTranferenciaItemClassFiscal: TStringField;
    SQLTranferenciaItemMarca: TStringField;
    SQLTranferenciaItemUnidade: TStringField;
    SQLTranferenciaItemProdutoLookup: TStringField;
    SQLTranferenciaItemReferencia: TStringField;
    SQLTranferenciaItemCodBarras: TStringField;
    rchDivergencia: TDBRichEdit;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    SQLTranferenciaTRFEDRECEBIMENTO: TDateTimeField;
    SQLTranferenciaTRFEA30USUENVIO: TStringField;
    SQLTranferenciaTRFEA30USURECEB: TStringField;
    tblDadosTranferencia: TTable;
    tblDadosTranferenciaTRFEA13ID: TStringField;
    tblDadosTranferenciaTRFEDEMISSAO: TDateTimeField;
    tblDadosTranferenciaTRFEA30USUENVIO: TStringField;
    tblDadosTranferenciaDestNome: TStringField;
    tblDadosTranferenciaDestCnpj: TStringField;
    tblDadosTranferenciaDestIE: TStringField;
    tblDadosTranferenciaDestEmail: TStringField;
    tblDadosTranferenciaDestCidade: TStringField;
    tblDadosTranferenciaDestEndereco: TStringField;
    tblDadosTranferenciaDestFoneFax: TStringField;
    tblDadosTranferenciaRemtNome: TStringField;
    tblDadosTranferenciaRemtCnpj: TStringField;
    tblDadosTranferenciaRemtIE: TStringField;
    tblDadosTranferenciaRemtEmail: TStringField;
    tblDadosTranferenciaRemtCidade: TStringField;
    tblDadosTranferenciaRemtEnderecp: TStringField;
    tblDadosTranferenciaRemtFoneFax: TStringField;
    tblTempTranferenciaUnidade: TStringField;
    tblTempTranferenciaProdutoLookup: TStringField;
    tblTransferenciaDivergencias: TTable;
    tblTransferenciaDivergenciasPRODICOD: TIntegerField;
    tblTransferenciaDivergenciasTRITN3QTDEENVIADA: TFloatField;
    tblTransferenciaDivergenciasTRITN3QTDERECEBIDA: TFloatField;
    tblTransferenciaDivergenciasTRITA254DIVERGENCIA: TStringField;
    tblTransferenciaDivergenciasUnidade: TStringField;
    tblTransferenciaDivergenciasProdutoLookup: TStringField;
    tblTransferenciaDivergenciasReferencia: TStringField;
    tblTransferenciaDivergenciasCodBarras: TStringField;
    crpRelatorio: TCrpe;
    lblDescrProduto: TLabel;
    PopupMenu: TPopupMenu;
    mnRemoverItem: TMenuItem;
    Button2: TRxSpeedButton;
    Button1: TRxSpeedButton;
    PopupMenuRelatorios: TPopupMenu;
    mnRecebimento: TMenuItem;
    mnEnvio: TMenuItem;
    SQLTranferenciaTRFECDIVERG: TStringField;
    SQLTranferenciaItemTRITN3VLRCUSTO: TFloatField;
    FormStorage: TFormStorage;
    edQtdeProduto: TEdit;
    Button3: TRxSpeedButton;
    RadioRecebida: TRadioGroup;
    TabTransfGerada: TTabSheet;
    Label9: TLabel;
    Panel4: TPanel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    DBGridGeradas: TDBGrid;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Label11: TLabel;
    Label17: TLabel;
    RadioGerada: TRadioGroup;
    DBRichEdit1: TDBRichEdit;
    Label19: TLabel;
    CKImpMatricial: TCheckBox;
    SQLNotaFiscal: TRxQuery;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalEMPRICOD: TIntegerField;
    SQLNotaFiscalNOFIICOD: TIntegerField;
    SQLNotaFiscalEMPRICODDEST: TIntegerField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalFORNICOD: TIntegerField;
    SQLNotaFiscalSERIA5COD: TStringField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaFiscalNOFICSTATUS: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalCFOPA5COD: TStringField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalNOFIN2BASCALCICMS: TFloatField;
    SQLNotaFiscalNOFIN2VLRICMS: TFloatField;
    SQLNotaFiscalNOFIN2BASCALCSUBS: TFloatField;
    SQLNotaFiscalNOFIN2BASCALCCIPI: TFloatField;
    SQLNotaFiscalNOFIN2VLRIPI: TFloatField;
    SQLNotaFiscalNOFIN2VLRDESC: TFloatField;
    SQLNotaFiscalNOFIN2VLRFRETE: TFloatField;
    SQLNotaFiscalNOFIN2VLRSEGURO: TFloatField;
    SQLNotaFiscalNOFIN2VLROUTRASDESP: TFloatField;
    SQLNotaFiscalNOFIN2VLRSERVICO: TFloatField;
    SQLNotaFiscalNOFIN2VLRISSQN: TFloatField;
    SQLNotaFiscalNOFIN2VLRPRODUTO: TFloatField;
    SQLNotaFiscalNOFIN2VLRNOTA: TFloatField;
    SQLNotaFiscalNOFICFRETEPORCONTA: TStringField;
    SQLNotaFiscalTRANICOD: TIntegerField;
    SQLNotaFiscalNOFIN3QUANT: TFloatField;
    SQLNotaFiscalNOFIA15MARCA: TStringField;
    SQLNotaFiscalNOFIN3PESBRUT: TFloatField;
    SQLNotaFiscalNOFIN3PESLIQ: TFloatField;
    SQLNotaFiscalNOFIA8PLACAVEIC: TStringField;
    SQLNotaFiscalPLRCICOD: TIntegerField;
    SQLNotaFiscalPLCTA15COD: TStringField;
    SQLNotaFiscalPENDENTE: TStringField;
    SQLNotaFiscalREGISTRO: TDateTimeField;
    SQLNotaFiscalNOFIN2VLRDESCPROM: TFloatField;
    SQLNotaFiscalNOFIINROTALAO: TIntegerField;
    SQLNotaFiscalPDVDA13ID: TStringField;
    SQLNotaFiscalVENDICOD: TIntegerField;
    SQLNotaFiscalPDVDA60OBS: TStringField;
    SQLNotaFiscalNOFIA20ESPECIE: TStringField;
    SQLNotaFiscalNOFIA30COMPRADOR: TStringField;
    SQLNotaFiscalNOFIA30NROPEDCOMP: TStringField;
    SQLNotaFiscalNOFIN2VLRICMSFRETE: TFloatField;
    SQLNotaFiscalNOFIN2VLRSUBS: TFloatField;
    SQLNotaFiscalCUPOA13ID: TStringField;
    SQLNotaFiscalNOFIA13IDCONSIGNADA: TStringField;
    SQLNotaFiscalAVALA13ID: TStringField;
    SQLNotaFiscalCUPOA13IDCUPNEG: TStringField;
    SQLNotaFiscalNOFIDCANCEL: TDateTimeField;
    SQLNotaFiscalPLCTA15CODCRED: TStringField;
    SQLNotaFiscalPLCTA15CODDEB: TStringField;
    SQLNotaFiscalUSUAICOD: TIntegerField;
    SQLNotaFiscalUSUAA60LOGIN: TStringField;
    SQLNotaFiscalROTAICOD: TIntegerField;
    SQLNotaFiscalNOFIAOBSCORPONF: TStringField;
    SQLNotaFiscalVEICA13ID: TStringField;
    SQLNotaFiscalNOFICEXPCONTABIL: TStringField;
    SQLNotaFiscalNOFIDSAIDAENTRADA: TDateTimeField;
    SQLNotaFiscalItem: TRxQuery;
    SQLNotaFiscalItemNOFIA13ID: TStringField;
    SQLNotaFiscalItemNFITIITEM: TIntegerField;
    SQLNotaFiscalItemPRODICOD: TIntegerField;
    SQLNotaFiscalItemNFITN3QUANT: TFloatField;
    SQLNotaFiscalItemNFITN2VLRUNIT: TFloatField;
    SQLNotaFiscalItemNFITN2PERCDESC: TFloatField;
    SQLNotaFiscalItemNFITN2VLRDESC: TFloatField;
    SQLNotaFiscalItemNFITN2PERCICMS: TFloatField;
    SQLNotaFiscalItemNFITN2BASEICMS: TFloatField;
    SQLNotaFiscalItemNFITN2VLRICMS: TFloatField;
    SQLNotaFiscalItemNFITN2PERCSUBS: TFloatField;
    SQLNotaFiscalItemNFITN2BASESUBS: TFloatField;
    SQLNotaFiscalItemNFITN2VLRSUBS: TFloatField;
    SQLNotaFiscalItemNFITN2PERCIPI: TFloatField;
    SQLNotaFiscalItemNFITN2VLRIPI: TFloatField;
    SQLNotaFiscalItemNFITN2PERCISSQN: TFloatField;
    SQLNotaFiscalItemNFITN2VLRISSQN: TFloatField;
    SQLNotaFiscalItemNFITN2VLRFRETE: TFloatField;
    SQLNotaFiscalItemNFITN2VLRLUCRO: TFloatField;
    SQLNotaFiscalItemPENDENTE: TStringField;
    SQLNotaFiscalItemREGISTRO: TDateTimeField;
    SQLNotaFiscalItemNFITN2PERCREDUCAO: TFloatField;
    SQLNotaFiscalItemNFITN3TOTVEND: TFloatField;
    SQLNotaFiscalItemPDVDA13ID: TStringField;
    SQLNotaFiscalItemPVITIITEM: TIntegerField;
    SQLNotaFiscalItemNFITN3QUANTVEND: TFloatField;
    SQLNotaFiscalItemNFITN2PERCCOMIS: TFloatField;
    SQLNotaFiscalItemCPITICPOS: TIntegerField;
    SQLNotaFiscalItemCUPOA13ID: TStringField;
    SQLNotaFiscalItemLOTEA30NRO: TStringField;
    SQLNotaFiscalItemNFITA254OBS: TStringField;
    SQLNotaFiscalItemCalculaIPI: TStringField;
    SQLNotaFiscalItemCalculaICMS: TStringField;
    SQLSerieNF: TRxQuery;
    SQLSerieNFSERIA5COD: TStringField;
    SQLSerieNFPENDENTE: TStringField;
    SQLSerieNFREGISTRO: TDateTimeField;
    SQLSerieNFSERIINRONF: TIntegerField;
    SQLSerieNFEMPRICOD: TIntegerField;
    DSSQLSerieNF: TDataSource;
    Label20: TLabel;
    ComboSerieNF: TRxDBLookupCombo;
    Label24: TLabel;
    edtCusto: TCurrencyEdit;
    tblTempTranferenciaProdutoValorCustoTotal: TFloatField;
    CKSemCusto: TCheckBox;
    crpSemCusto: TCrpe;
    dblEmpresaOrigem: TRxDBLookupCombo;
    SQLTranferenciaEMPRICODORIGEM: TIntegerField;
    SQLNotaFiscalNOFIA255OBS: TMemoField;
    Label4: TLabel;
    EdtCustoTotal: TCurrencyEdit;
    Label5: TLabel;
    EdtQtdeTotalItens: TCurrencyEdit;
    SQLNotaFiscalCFOPA5CODAUX: TStringField;
    SQLNotaFiscalCUPOCTIPOPADRAO: TStringField;
    SQLNotaFiscalNOFIA5CODRETORNO: TStringField;
    SQLNotaFiscalNOFICSTNFE: TStringField;
    SQLNotaFiscalNOFITRETORNO: TStringField;
    SQLNotaFiscalNOFIN2PERCCOFINS: TFloatField;
    SQLNotaFiscalNOFIN2PERCCONTRSOCIAL: TFloatField;
    SQLNotaFiscalNOFIN2PERCINSS: TFloatField;
    SQLNotaFiscalNOFIN2PERCIR: TFloatField;
    SQLNotaFiscalNOFIN2PERCISSQN: TFloatField;
    SQLNotaFiscalNOFIN2PERCMAODEOBRA: TFloatField;
    SQLNotaFiscalNOFIN2PERCMATERIAL: TFloatField;
    SQLNotaFiscalNOFIN2PERCPIS: TFloatField;
    SQLNotaFiscalNOFIN3VLRCOFINS: TFloatField;
    SQLNotaFiscalNOFIN3VLRCONTRSOCIAL: TFloatField;
    SQLNotaFiscalNOFIN3VLRINSS: TFloatField;
    SQLNotaFiscalNOFIN3VLRIR: TFloatField;
    SQLNotaFiscalNOFIN3VLRMAODEOBRA: TFloatField;
    SQLNotaFiscalNOFIN3VLRMATERIAL: TFloatField;
    SQLNotaFiscalNOFIN3VLRPIS: TFloatField;
    SQLNotaFiscalNOFA1ENTRADASAIDA: TStringField;
    SQLNotaFiscalNOFIA15PROTOCOLO: TStringField;
    SQLNotaFiscalNOFIA44CHAVEACESSO: TStringField;
    SQLNotaFiscalNOFICFINALIDADE: TStringField;
    SQLNotaFiscalItemNFITICST: TIntegerField;
    DSSQLProduto: TDataSource;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoCORICOD: TIntegerField;
    ckGrade: TCheckBox;
    btTranferir: TRxSpeedButton;
    btReceberTransferencia: TRxSpeedButton;
    btImprimirRelatorio: TRxSpeedButton;
    SQLEmpresaDestinoEMPRA60NOMEFANT: TStringField;
    SQLEmpresaRemetenteEMPRA60NOMEFANT: TStringField;
    SQLTranferenciaItemCUPOA13ID: TStringField;
    IDCupomOrigem: TEdit;
    Label6: TLabel;
    tblTempTranferenciaCUPOA13ID: TStringField;
    PopupMenuDiverso: TPopupMenu;
    ImportardoPalmOne1: TMenuItem;
    ImportarBematechDC20001: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SQLEmpresaRemetenteCalcFields(DataSet: TDataSet);
    procedure IncluiProduto;
    procedure SQLProdutoCalcFields(DataSet: TDataSet);
    procedure SQLEmpresaDestinoCalcFields(DataSet: TDataSet);
    procedure btTranferirClick(Sender: TObject);
    procedure DStblTempTranferenciaStateChange(Sender: TObject);
    procedure SQLTranferenciaBeforePost(DataSet: TDataSet);
    procedure SQLTranferenciaItemBeforePost(DataSet: TDataSet);
    procedure SQLTranferenciaItemCalcFields(DataSet: TDataSet);
    procedure SQLTranferenciaItemNewRecord(DataSet: TDataSet);
    procedure edQtdeProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheetGerarTransferenciaShow(Sender: TObject);
    procedure edQtdeProdutoChange(Sender: TObject);
    procedure DBGridTranferenciasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edCodigoProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridTranferenciasDblClick(Sender: TObject);
    procedure btReceberTransferenciaClick(Sender: TObject);
    procedure chkRecebidasClick(Sender: TObject);
    function  MontaRelatorioTransferir: boolean;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tblTempTranferenciaCalcFields(DataSet: TDataSet);
    procedure SQLTranferenciaAfterOpen(DataSet: TDataSet);
    procedure dblEmpresaDestinoChange(Sender: TObject);
    procedure SQLEmpresaDestinoAfterScroll(DataSet: TDataSet);
    procedure CMMouseEnter(var msg : TMessage); message CM_MOUSEENTER;
    procedure crpRelatorioExecuteEnd(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure mnRemoverItemClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function  GeraRelatorioRecebimento: Boolean;
    procedure mnRecebimentoClick(Sender: TObject);
    procedure mnEnvioClick(Sender: TObject);
    procedure PopupMenuRelatoriosPopup(Sender: TObject);
    procedure edQtdeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure RadioRecebidaClick(Sender: TObject);
    procedure DBGridGeradasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RadioGeradaClick(Sender: TObject);
    procedure DSSQLTranferenciaDataChange(Sender: TObject; Field: TField);
    procedure SQLTranferenciaBeforeDelete(DataSet: TDataSet);
    procedure SQLNotaFiscalBeforePost(DataSet: TDataSet);
    procedure edtCustoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ImportarBematechDC20001Click(Sender: TObject);
    procedure ImportardoPalmOne1Click(Sender: TObject);

  private
    { Private declarations }
    EditQtdeIsNum, EditDescrIsNum : Boolean;
    EmpresaAnterior : Integer;
    Origem, Destino : string;
  public
    { Public declarations }
  end;

var
  FormTelaTransferencia: TFormTelaTransferencia;

implementation

uses VarSYS, UnitLibrary, TelaSelecaoProduto,
  DataModulo, TelaTransferenciaMercadoriaReceberProduto, WaitWindow,
  TelaConsultaProdutoGeral, TelaTransferenciaGrade;

{$R *.dfm}

procedure TFormTelaTransferencia.CMMouseEnter(var msg : TMessage);
begin
  Screen.Cursor := Self.Cursor;
end;

procedure RefazTabela(Tabela : TTable; NomeExterno : String);
begin
  try
     Tabela.Close;
     if NomeExterno = 'tblTempTranferencia' then
       tabela.TableName := NomeExterno +'_'+FormatFloat('###000', TerminalAtual);
     Tabela.DeleteTable;
     Tabela.CreateTable;
  except
     Tabela.CreateTable;
  end;
end;

procedure TFormTelaTransferencia.FormCreate(Sender: TObject);
begin
  inherited;

  RefazTabela(tblTempTranferencia, tblTempTranferencia.Name);

  SQLEmpresaRemetente.Close;
 { if MatrizFilial = 'F' then  }
    SQLEmpresaRemetente.SQL.Text := 'select * from EMPRESA where EMPRICOD = ' + IntToStr(EmpresaCorrente);
  SQLEmpresaRemetente.Open;

  if not SQLEmpresaDestino.Active then SQLEmpresaDestino.Active := True;

  if SQLEmpresaDestinoEMPRICOD.AsInteger = EmpresaCorrente then
     if not SQLEmpresaDestino.FindNext then
        SQLEmpresaDestino.FindPrior;

  dblEmpresaOrigem.KeyValue  := SQLEmpresaRemetenteEMPRICOD.Value;
  dblEmpresaDestino.KeyValue := SQLEmpresaDestinoEMPRICOD.Value;

  PageControl.ActivePage := TabSheetGerarTransferencia;

  if not SQLTranferencia.Active     then SQLTranferencia.Active     := True;

  EditQtdeIsNum  := False;
  EditDescrIsNum := False;
  SQLSerieNF.Open;
  SQLSerieNF.Last;
end;

procedure TFormTelaTransferencia.SQLEmpresaRemetenteCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLEmpresaRemetenteEMPRA60END.IsNull then
     SQLEmpresaRemetenteEmprDestEndereo.AsString := SQLEmpresaRemetenteEMPRA60END.AsString;

  if not SQLEmpresaRemetenteEMPRA60BAI.IsNull then
     SQLEmpresaRemetenteEmprDestEndereo.AsString := SQLEmpresaRemetenteEmprDestEndereo.AsString + ' - ' + SQLEmpresaRemetenteEMPRA60BAI.AsString;

  if not SQLEmpresaRemetenteEMPRA60CID.IsNull then
     SQLEmpresaRemetenteEmprDestCidade.AsString := SQLEmpresaRemetenteEMPRA60CID.AsString + '/' + SQLEmpresaRemetenteEMPRA2UF.AsString;
end;

Procedure TFormTelaTransferencia.IncluiProduto;
var Resultado : Integer;
begin
   if (StrToFloat(edQtdeProduto.Text) = 0) then
      begin
         edQtdeProduto.SetFocus;
         Informa('Informe a Quantidade do Produto.');
         Abort;
      end;

    if (edCodigoProduto.Text = '') then
       begin
          edCodigoProduto.SetFocus;
          Informa('Informe o Código do Produto.');
          Abort;
       end;

   if not tblTempTranferencia.Active then tblTempTranferencia.Active := True;

   if tblTempTranferencia.Locate('ProdutoCod', SQLProdutoPRODICOD.AsString, [loCaseInsensitive]) then
      begin
          Resultado := Application.MessageBox('Este Produto ja esta na lista de Transferência.' + #13 +
                                              'Deseja adicionar a Quantidade à Quantidade da lista?' + #13 +
                                              'Clique ''NÃO'' para Substituir a Quantidade ou Cancelar.',
                                              'Item Duplicado', MB_YESNOCANCEL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1);
          if Resultado = IDCancel then
             Abort;

          tblTempTranferencia.Edit;
          if Resultado = idYes then
             tblTempTranferenciaProdutoQtde.AsFloat := tblTempTranferenciaProdutoQtde.AsFloat + StrToFloat(edQtdeProduto.Text);
          if Resultado = idNo then
             tblTempTranferenciaProdutoQtde.AsFloat := StrToFloat(edQtdeProduto.Text);
      end
   else
      begin
         tblTempTranferencia.Append;
         tblTempTranferenciaProdutoQtde.AsFloat         := StrToFloat(edQtdeProduto.Text);
      end;

   tblTempTranferenciaProdutoCod.AsInteger        := SQLProdutoPRODICOD.AsInteger;
   tblTempTranferenciaProdutoBarras.AsString      := SQLProdutoPRODA60CODBAR.AsString;
   tblTempTranferenciaProdutoNome.AsString        := SQLProdutoProdutoLookup.AsString;
   tblTempTranferenciaProdutoEstoque.AsFloat      := StrToFloat(SQLLocate('PRODUTOSALDO', 'PRODICOD', 'PSLDN3QTDE', tblTempTranferenciaProdutoCod.AsString));
   tblTempTranferenciaProdutoReferencia.AsString  := SQLProdutoPRODA60REFER.AsString;
   tblTempTranferenciaProdutoValorCusto.AsFloat   := edtCusto.Value;
   tblTempTranferencia.Post;

   // Totais da Transf Atual
   EdtCustoTotal.Value     := EdtCustoTotal.Value + edtCusto.Value;
   EdtQtdeTotalItens.Value := EdtQtdeTotalItens.Value + tblTempTranferenciaProdutoQtde.Value;

   edQtdeProduto.Text   := '1';
   edCodigoProduto.Text := '';
   edtCusto.Value       := 0;
   edCodigoProduto.SetFocus;
end;

procedure TFormTelaTransferencia.SQLProdutoCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin

      if not SQLProdutoCLFSICOD.IsNull then
         SQLProdutoClassFiscal.AsString := SQLLocate('CLASSIFICACAOFISCAL', 'CLFSICOD', 'CLFSA30DESCR', SQLProdutoCLFSICOD.AsString);

      if not SQLProdutoMARCICOD.IsNull then
         SQLProdutoMarca.AsString := SQLLocate('MARCA', 'MARCICOD', 'MARCA60DESCR', SQLProdutoMARCICOD.AsString);

      if not SQLProdutoUNIDICOD.IsNull then
         SQLProdutoUnidade.AsString := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', SQLProdutoUNIDICOD.AsString);

      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);
        end;
    end;
end;

procedure TFormTelaTransferencia.SQLEmpresaDestinoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLEmpresaDestinoEMPRA60END.IsNull then
     SQLEmpresaDestinoEmprDestEndereo.AsString := SQLEmpresaDestinoEMPRA60END.AsString;

  if not SQLEmpresaDestinoEMPRA60BAI.IsNull then
     SQLEmpresaDestinoEmprDestEndereo.AsString := SQLEmpresaDestinoEmprDestEndereo.AsString + ' - ' + SQLEmpresaDestinoEMPRA60BAI.AsString;

  if not SQLEmpresaDestinoEMPRA60CID.IsNull then
     SQLEmpresaDestinoEmprDestCidade.AsString := SQLEmpresaDestinoEMPRA60CID.AsString + '/' + SQLEmpresaDestinoEMPRA2UF.AsString;
end;

procedure TFormTelaTransferencia.btTranferirClick(Sender: TObject);
Var Item : Integer;
    GeraNotaFiscal : Boolean;
    UFEmpresaOrigem, UFEmpresaDestino, CalculaIPI, CalculaICMS : String;
    TotalProdutos, TotBaseCalcICMS, TotBaseCalcICMSSubst, TotVlrICMS, TotVlrICMSSubst, TotVlrISSQN, PesoTotalBruto, PesoTotalLiq, QtdeTotal: Double;
begin
  inherited;
  if not DM.SQLConfigVenda.Active then DM.SQLConfigVenda.Active := True;

  if dblEmpresaOrigem.KeyValue = dblEmpresaDestino.KeyValue then
     begin
        Informa('Erro! Empresa Origem e Destino igual!');
        Abort;
     end;
  if DM.SQLConfigGeral.FieldByName('OPESICODTRANSFSAID').IsNull then
     begin
        Informa('Não foi configurado as Operações de Estoque para Transferência.' + #13 +
                'Configure no Configurador Cadastros/Parâmetros/Gerais e tente novamente.');
        Abort;
     end;

  GeraNotaFiscal := False;
  if Pergunta('Nao','Gerar Nota Fiscal?') then
    begin
      GeraNotaFiscal := True;
      if ComboSerieNF.DisplayValue = '' then
        begin
          ShowMessage('Por favor escolha a Série');
          ComboSerieNF.SetFocus;
          GeraNotaFiscal := False;
          Exit;
        end
    end;
  SQLTranferencia.Close;
  SQLTranferencia.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + EmpresaPadrao;
  SQLTranferencia.MacroByName('MFiltro').AsString  := 'TRFEA13ID IS NULL';
  SQLTranferencia.Open;

  SQLTranferencia.Append;
  SQLTranferencia.Post;

  TblTempTranferencia.First;
  Item := 1;
  MakeWindow(tblTempTranferencia.RecordCount, 'Gravando a Transferencia Digitada!');
  SQLTranferenciaItem.AutoCalcFields := False;
  while not tblTempTranferencia.Eof do
    begin
       SetProgress(Item);
       if not SQLTranferenciaItem.Active then SQLTranferenciaItem.Active := True;

       SQLTranferenciaItem.Append;
       SQLTranferenciaItemPRODICOD.AsInteger         := tblTempTranferenciaProdutoCod.AsInteger;
       SQLTranferenciaItemTRITN3QTDEENVIADA.AsFloat  := tblTempTranferenciaProdutoQtde.AsFloat;
       SQLTranferenciaItemTRITN3QTDERECEBIDA.AsFloat := 0;
       SQLTranferenciaItemTRITN3VLRCUSTO.AsFloat     := tblTempTranferenciaProdutoValorCusto.Value;
       SQLTranferenciaItemCUPOA13ID.Value            := IDCupomOrigem.Text;

       SQLTranferenciaItem.Post;
       if dm.SQLTerminalAtivo.FieldByName('TERMCMOVTRANSF').Value = 'S' then
         begin
           // Saida da Mercadoria da Empresa Origem
           GravaMovimentoEstoqueSimples(DM.SQLProduto,
                                        DM.SQLProdutoFilho,
                                        DM.SQLProdutoSaldo,
                                        dblEmpresaOrigem.KeyValue,
                                        tblTempTranferenciaProdutoCod.AsInteger,
                                        DM.SQLConfigGeral.FieldByName('OPESICODTRANSFSAID').AsInteger,
                                        tblTempTranferenciaProdutoQtde.AsFloat,
                                        'S',
                                        FormatDateTime('mm/dd/yyyy', Now),
                                        '0',
                                        'TRANSFERENCIA',
                                        SQLTranferenciaTRFEA13ID.AsString,
                                        '');
         end;
       tblTempTranferencia.Next;
       Item := Item + 1;
    end;
  SQLTranferenciaItem.AutoCalcFields := True;
  DestroyWindow;

  btTranferir.Enabled := False;

  SQLTranferenciaItem.Close;
  SQLTranferenciaItem.Open;

  // Gerar Nota Fiscal de Transf.entre Filiais
  if GeraNotaFiscal then
  begin
      UFEmpresaOrigem  := SQLTranferenciaEMPRICOD.AsString;
      UFEmpresaDestino := SQLTranferenciaTRFEIEMPRDEST.AsString;
      PesoTotalBruto                        := 0;
      PesoTotalLiq                          := 0;
      QtdeTotal                             := 0;
      SQLNotaFiscal.Close;
      SQLNotaFiscal.Open;
      SQLNotaFiscal.Append;
      SQLNotaFiscalEMPRICOD.Value           := SQLTranferenciaEMPRICOD.Value;
      SQLNotaFiscalEMPRICODDEST.Value       := SQLTranferenciaTRFEIEMPRDEST.Value;
      SQLNotaFiscalNOFIDEMIS.Value          := SQLTranferenciaTRFEDEMISSAO.Value;
      SQLNotaFiscalNOFIDSAIDAENTRADA.Value  := SQLTranferenciaTRFEDEMISSAO.Value;
      SQLNotaFiscalNOFICFINALIDADE.AsString := '1';
      SQLNotaFiscalSERIA5COD.Value          := ComboSerieNF.Value;
      SQLNotaFiscalNOFICSTATUS.Value        := 'A';
      SQLNotaFiscalNOFICFRETEPORCONTA.Value := 'C';
      SQLNotaFiscalOPESICOD.AsInteger       := DM.SQLConfigGeral.FieldByName('OPESICODTRANSFSAID').AsInteger;
      SQLNotaFiscalCFOPA5COD.Value          := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',SQLNotaFiscalOPESICOD.AsString);
      // Setar Valores
      SQLNotaFiscalNOFIN2VLRPRODUTO.Value    := 0;
      SQLNotaFiscalNOFIN2VLRNOTA.Value       := 0;
      SQLNotaFiscalNOFIN2BASCALCCIPI.Value   := 0;
      SQLNotaFiscalNOFIN2BASCALCICMS.Value   := 0;
      SQLNotaFiscalNOFIN2BASCALCSUBS.Value   := 0;
      SQLNotaFiscalNOFIN2VLRDESC.Value       := 0;
      SQLNotaFiscalNOFIN2VLRICMS.Value       := 0;
      SQLNotaFiscalNOFIN2VLRICMSFRETE.Value  := 0;
      SQLNotaFiscalNOFIN2VLRIPI.Value        := 0;
      SQLNotaFiscalNOFIN2VLRISSQN.Value      := 0;
      SQLNotaFiscalNOFIN2VLRSERVICO.Value    := 0;
      SQLNotaFiscalNOFIN2VLRSEGURO.Value     := 0;
      SQLNotaFiscalNOFIN2VLRSUBS.Value       := 0;
      SQLNotaFiscalNOFIN3PESBRUT.Value       := 0;
      SQLNotaFiscalNOFIN3PESLIQ.Value        := 0;
      SQLNotaFiscalNOFIN3QUANT.Value         := 0;
      SQLNotaFiscalPENDENTE.Value            := 'S';
      SQLNotaFiscalREGISTRO.Value            := Now;
      SQLNotaFiscalUSUAICOD.Value            := dm.UsuarioAtual;
      SQLNotaFiscalUSUAA60LOGIN.Value        := UsuarioAtualNome;
      SQLNotaFiscal.Post;
      // Itens da Nota Fiscal
      TotalProdutos        := 0;
      Item                 := 0;
      TotBaseCalcICMS      := 0;
      TotBaseCalcICMSSubst := 0;
      TotVlrICMS           := 0;
      TotVlrICMSSubst      := 0;
      TotVlrISSQN          := 0;

      SQLNotaFiscalItem.Close;
      SQLNotaFiscalItem.Open;
      SQLTranferenciaItem.Close;
      SQLTranferenciaItem.Open;
      SQLTranferenciaItem.First;

      Item := 0;
      While not SQLTranferenciaItem.Eof do
        begin
          Item := Item+1;
          SQLNotaFiscalItem.Append;
          SQLNotaFiscalItemNOFIA13ID.Value          := SQLNotaFiscalNOFIA13ID.AsString;
          SQLNotaFiscalItemNFITIITEM.Value          := Item;
          SQLNotaFiscalItemPRODICOD.Value           := SQLTranferenciaItemPRODICOD.Value;
          SQLNotaFiscalItemNFITN3QUANT.Value        := SQLTranferenciaItemTRITN3QTDEENVIADA.Value;
          SQLNotaFiscalItemNFITN2VLRUNIT.Value      := SQLTranferenciaItemTRITN3VLRCUSTO.Value;
          SQLNotaFiscalItemNFITN2PERCDESC.AsVariant := 0;
          SQLNotaFiscalItemNFITN2VLRDESC.AsVariant  := 0;
          SQLNotaFiscalItemNFITN2VLRLUCRO.asFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.asFloat -
                                                        StrToFloat(dm.SQLLocate('PRODUTO','PRODICOD','PRODN3VLRCOMPRA',SQLTranferenciaItemPRODICOD.AsString)))
                                                        * SQLNotaFiscalItemNFITN3QUANT.asFloat;
          SQLNotaFiscalItemNFITN2VLRDESC.asFloat    := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat *
                                                        SQLNotaFiscalItemNFITN3QUANT.asFloat) *
                                                       (SQLNotaFiscalItemNFITN2PERCDESC.asFloat / 100);

          TotalProdutos := TotalProdutos + (SQLTranferenciaItemTRITN3VLRCUSTO.Value * SQLTranferenciaItemTRITN3QTDEENVIADA.Value);
          // se a op.estoque estiver marcada para calcular IPI e o campo Perc IPI no cad.produtos for maior que zero.
          CalculaIPI  := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCIPI',SQLNotaFiscalOPESICOD.AsString);
          CalculaICMS := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCCALCICMS',SQLNotaFiscalOPESICOD.AsString);

          SQLNotaFiscalItemNFITICST.AsString        := SQLLocate('PRODUTO','PRODICOD','PRODIORIGEM',SQLTranferenciaItemPRODICOD.AsString)
                                                       + SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',SQLTranferenciaItemPRODICOD.AsString);

          SQLNotaFiscalItemNFITN2PERCIPI.AsString   := DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PERCIPI',SQLNotaFiscalItemPRODICOD.AsString);
          if (CalculaIPI = 'S') and (SQLNotaFiscalItemNFITN2PERCIPI.AsFloat > 0) then
            SQLNotaFiscalItemNFITN2VLRIPI.asFloat     := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat*
                                                         (SQLNotaFiscalItemNFITN2PERCIPI.asFloat/100);
          // Pega os Percentuais de Icms e Icms Subst se a Op.Estoque Permitir Calcular ICMS
          if CalculaICMS = 'S' then
            begin
              SQLNotaFiscalItemNFITN2PERCICMS.AsString    := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2ICMSM1',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
              SQLNotaFiscalItemNFITN2PERCSUBS.AsString    := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2PERCSUBSTSAI',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
              SQLNotaFiscalItemNFITN2PERCREDUCAO.AsString := DM.SQLLocate('ICMS','ICMSICOD','ICMSN2REDBASEICMS',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
              if SQLNotaFiscalItemNFITN2PERCREDUCAO.AsString = '' then SQLNotaFiscalItemNFITN2PERCREDUCAO.Value := 0;
              if SQLNotaFiscalItemNFITN2PERCICMS.AsFloat > 0 then
                begin
                  // Se a base for reduzida
                  if SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat > 0 then
                    begin
                      SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                      SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2BASEICMS.AsFloat-SQLNotaFiscalItemNFITN2BASEICMS.AsFloat)*(SQLNotaFiscalItemNFITN2PERCREDUCAO.asFloat/100);
                    end
                  else
                    begin
                      SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                      SQLNotaFiscalItemNFITN2BASEICMS.AsFloat   := (SQLNotaFiscalItemNFITN2BASEICMS.AsFloat-SQLNotaFiscalItemNFITN2BASEICMS.AsFloat);
                    end;
                end;
              // Se o produto tiver Subst Tributaria
              if SQLNotaFiscalItemNFITN2PERCSUBS.AsString = '' then SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat := 0;
              if SQLNotaFiscalItemNFITN2PERCSUBS.AsFloat > 0 then
                begin
                  // Se a base for reduzida
                  if SQLNotaFiscalItemNFITN2PERCREDUCAO.AsFloat > 0 then
                    begin
                      SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                      SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2BASESUBS.AsFloat-SQLNotaFiscalItemNFITN2BASESUBS.AsFloat)*(SQLNotaFiscalItemNFITN2PERCREDUCAO.asFloat/100);
                    end
                  else
                    begin
                      SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat;
                      SQLNotaFiscalItemNFITN2BASESUBS.AsFloat   := (SQLNotaFiscalItemNFITN2BASESUBS.AsFloat-SQLNotaFiscalItemNFITN2BASESUBS.AsFloat);
                    end;
                end;
            end
          else
            begin
              SQLNotaFiscalItemNFITN2VLRICMS.AsFloat := 0;
              SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat := 0;
            end;

          QtdeTotal      := QtdeTotal      + SQLNotaFiscalItemNFITN3QUANT.asFloat;
          PesoTotalBruto := PesoTotalBruto + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOBRUTO',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
          PesoTotalLiq   := PesoTotalLiq   + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOLIQ',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
          // alimenta variaveis com totais de impostos por item
          TotBaseCalcICMS := TotBaseCalcICMS + SQLNotaFiscalItemNFITN2BASEICMS.AsFloat;
          TotVlrICMS      := TotVlrICMS + SQLNotaFiscalItemNFITN2VLRICMS.AsFloat;
          TotBaseCalcICMSSubst := TotBaseCalcICMSSubst + SQLNotaFiscalItemNFITN2BASESUBS.AsFloat;
          TotVlrICMSSubst      := TotVlrICMSSubst + SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat;
          SQLNotaFiscalItemNFITN2VLRISSQN.asFloat  := 0;
          SQLNotaFiscalItemNFITN2PERCISSQN.asFloat := 0;

          SQLNotaFiscalItem.Post;

          SQLTranferenciaItem.Next;
        end;
      SQLTranferenciaItem.First;

      SQLNotaFiscal.Edit;
      // Base e Valor IPI
      SQLNotaFiscalNOFIN2BASCALCCIPI.Value := 0;
      SQLNotaFiscalNOFIN2VLRIPI.Value      := 0;
      // Base e Valor Total ICMS
      SQLNotaFiscalNOFIN2BASCALCICMS.Value := TotBaseCalcICMS;
      SQLNotaFiscalNOFIN2VLRICMS.Value     := TotVlrICMS;
      // Base e Valor Total ICMS Subst
      SQLNotaFiscalNOFIN2BASCALCSUBS.Value := TotBaseCalcICMSSubst;
      SQLNotaFiscalNOFIN2VLRSUBS.Value     := TotVlrICMSSubst;
      // Aliquota e Valor ISSQN
      SQLNotaFiscalNOFIN2VLRISSQN.Value    := TotVlrISSQN;
      //  Peso Bruto, Liq e Quantidade
      SQLNotaFiscalNOFIN3PESBRUT.Value     := PesoTotalBruto;
      SQLNotaFiscalNOFIN3PESLIQ.Value      := PesoTotalLiq;
      SQLNotaFiscalNOFIN3QUANT.Value       := QtdeTotal;
      SQLNotaFiscalNOFIN2VLRPRODUTO.Value  := TotalProdutos;
      SQLNotaFiscalNOFIN2VLRNOTA.Value     := TotalProdutos;
      SQLNotaFiscal.Post;
      SQLNotaFiscal.Close;
      SQLNotaFiscalItem.Close;
      // Fim Itens da Nota Fiscal
    end;
  // Fim Gerar Nota Fiscal

  if MontaRelatorioTransferir then
    crpRelatorio.Execute;

  btTranferir.Enabled := False;
end;

function TFormTelaTransferencia.MontaRelatorioTransferir : Boolean;
begin
  if not FileExists(DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Envio.rpt') then
     begin
        Informa('Não foi encontrado o relatório de Transferência.' + #13 +
                'Arquivo Relatorio Transferencia-Envio.rpt em ' + DM.SQLConfigGeralCFGEA255PATHREPORT.AsString);
        Abort;
     end
  else
     begin
        RefazTabela(tblDadosTranferencia,tblDadosTranferencia.Name);
        tblDadosTranferencia.Open;
        tblDadosTranferencia.Append;
        tblDadosTranferenciaTRFEA13ID.AsString        := SQLTranferenciaTRFEA13ID.AsString;
        tblDadosTranferenciaTRFEDEMISSAO.AsDateTime   := SQLTranferenciaTRFEDEMISSAO.AsDateTime;
        tblDadosTranferenciaTRFEA30USUENVIO.AsString  := SQLTranferenciaTRFEA30USUENVIO.AsString;

        tblDadosTranferenciaRemtNome.AsString         := SQLEmpresaRemetenteEMPRA60NOMEFANT.AsString;
        tblDadosTranferenciaRemtCnpj.AsString         := SQLEmpresaRemetenteEMPRA14CGC.DisplayText;
        tblDadosTranferenciaRemtIE.AsString           := SQLEmpresaRemetenteEMPRA20IE.AsString;
        tblDadosTranferenciaRemtEmail.AsString        := SQLEmpresaRemetenteEMPRA60EMAIL.AsString;
        tblDadosTranferenciaRemtCidade.AsString       := SQLEmpresaRemetenteEmprDestCidade.AsString;
        tblDadosTranferenciaRemtEnderecp.AsString     := SQLEmpresaRemetenteEmprDestEndereo.AsString;
        tblDadosTranferenciaRemtFoneFax.AsString      := SQLEmpresaRemetenteEMPRA20FONE.AsString;
        if not SQLEmpresaRemetenteEMPRA20FAX.IsNull and not tblDadosTranferenciaRemtFoneFax.IsNull then
           tblDadosTranferenciaRemtFoneFax.AsString   := tblDadosTranferenciaRemtFoneFax.AsString + ' / ' + SQLEmpresaRemetenteEMPRA20FAX.AsString;

        tblDadosTranferenciaDestNome.AsString         := SQLEmpresaDestinoEMPRA60NOMEFANT.AsString;
        tblDadosTranferenciaDestCnpj.AsString         := SQLEmpresaDestinoEMPRA14CGC.DisplayText;
        tblDadosTranferenciaDestIE.AsString           := SQLEmpresaDestinoEMPRA20IE.AsString;
        tblDadosTranferenciaDestEmail.AsString        := SQLEmpresaDestinoEMPRA60EMAIL.AsString;
        tblDadosTranferenciaDestCidade.AsString       := SQLEmpresaDestinoEmprDestCidade.AsString;
        tblDadosTranferenciaDestEndereco.AsString     := SQLEmpresaDestinoEmprDestEndereo.AsString;
        tblDadosTranferenciaDestFoneFax.AsString      := SQLEmpresaDestinoEMPRA20FONE.AsString;
        if not SQLEmpresaDestinoEMPRA20FAX.IsNull and not tblDadosTranferenciaDestFoneFax.IsNull then
           tblDadosTranferenciaDestFoneFax.AsString   := tblDadosTranferenciaDestFoneFax.AsString + ' / ' + SQLEmpresaDestinoEMPRA20FAX.AsString;

        tblDadosTranferencia.Post;
       try
         tblTempTranferencia.Close;
         tblTempTranferencia.TableName := tblTempTranferencia.Name;
         tblTempTranferencia.DeleteTable;
         tblTempTranferencia.CreateTable;
       except
           tblTempTranferencia.CreateTable;
       end;

       SQLTranferenciaItem.First;
       while not SQLTranferenciaItem.Eof do
         begin
            if not tblTempTranferencia.Active then tblTempTranferencia.Active := True;
            tblTempTranferencia.Append;
            tblTempTranferenciaProdutoCod.Value        := SQLTranferenciaItemPRODICOD.Value;
            tblTempTranferenciaProdutoBarras.Value     := SQLTranferenciaItemCodBarras.Value;
            tblTempTranferenciaProdutoQtde.Value       := SQLTranferenciaItemTRITN3QTDEENVIADA.Value;
            tblTempTranferenciaProdutoNome.Value       := SQLTranferenciaItemProdutoLookup.Value;
            tblTempTranferenciaProdutoReferencia.Value := SQLTranferenciaItemReferencia.Value;
            tblTempTranferenciaUnidade.Value           := SQLTranferenciaItemUnidade.Value;
            tblTempTranferenciaCUPOA13ID.Value         := SQLTranferenciaItemCUPOA13ID.Value;
            tblTempTranferenciaProdutoValorCusto.Value := SQLTranferenciaItemTRITN3VLRCUSTO.Value;
            tblTempTranferenciaProdutoValorCustoTotal.Value := SQLTranferenciaItemTRITN3VLRCUSTO.Value * tblTempTranferenciaProdutoQtde.Value;
            tblTempTranferencia.Post;
            SQLTranferenciaItem.Next;
         end;
       SQLTranferenciaItem.First;

       if CKImpMatricial.Checked then
         crpRelatorio.ReportName      := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Envio Matricial.rpt'
       else
         begin
           if not CKSemCusto.Checked then
             crpRelatorio.ReportName      := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Envio.rpt'
           else
             crpRelatorio.ReportName      := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Envio sem Custo.rpt';

         end;
       crpRelatorio.ReportTitle       := 'Transferência [Envio]';
       crpRelatorio.WindowStyle.Title := 'Transferência [Envio]';
       Result := True;
     end;
end;

procedure TFormTelaTransferencia.DStblTempTranferenciaStateChange(
  Sender: TObject);
begin
  inherited;
  btTranferir.Enabled      := (not tblTempTranferencia.IsEmpty) and (PageControl.ActivePage = TabSheetGerarTransferencia);
  // gboEmpresaOrigem.Enabled := tblTempTranferencia.IsEmpty;
  // gboEmpresaDest.Enabled   := tblTempTranferencia.IsEmpty;
end;

procedure TFormTelaTransferencia.SQLTranferenciaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLTranferenciaREGISTRO.AsDateTime     := Now;
  SQLTranferenciaPENDENTE.AsString       := 'S';
  if DataSet.State in [dsInsert] then
     begin
       SQLTranferenciaTRFEA30USUENVIO.AsString := UsuarioAtualNome;
       SQLTranferenciaTRFEDEMISSAO.AsDateTime  := Now;
       SQLTranferenciaTRFECRECEBIDO.AsString   := 'N';
       SQLTranferenciaEMPRICOD.AsInteger       := EmpresaCorrente;
       SQLTranferenciaTERMICOD.AsInteger       := TerminalCorrente;
       SQLTranferenciaEMPRICODORIGEM.AsInteger := dblEmpresaOrigem.KeyValue;
       SQLTranferenciaTRFEIEMPRDEST.AsInteger  := SQLEmpresaDestinoEMPRICOD.AsInteger;
       DM.CodigoAutomatico('TRANSFERENCIA', DSSQLTranferencia, SQLTranferencia, 3, 0);
     end;
end;

procedure TFormTelaTransferencia.SQLTranferenciaItemBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLTranferenciaItemREGISTRO.AsDateTime := Now;
  SQLTranferenciaItemPENDENTE.AsString   := 'S';
  if DataSet.State in [dsInsert] then
     DM.CodigoAutomatico('TRANSFERENCIAITEM', DSSQLTranferenciaItem, SQLTranferenciaItem, 1, 0);
end;

procedure TFormTelaTransferencia.SQLTranferenciaItemCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        begin
          if not DM.SQLTemplate.FindField('MARCICOD').IsNull then
             SQLTranferenciaItemMarca.AsString := SQLLocate('MARCA', 'MARCICOD', 'MARCA60DESCR', DM.SQLTemplate.FindField('MARCICOD').AsString);

          if not DM.SQLTemplate.FindField('UNIDICOD').IsNull then
             SQLTranferenciaItemUnidade.AsString := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR', DM.SQLTemplate.FindField('UNIDICOD').AsString);

          if not DM.SQLTemplate.FindField('CLFSICOD').IsNull then
             SQLTranferenciaItemClassFiscal.AsString := SQLLocate('CLASSIFICACAOFISCAL', 'CLFSICOD', 'CLFSA30DESCR', DM.SQLTemplate.FindField('CLFSICOD').AsString);

          if not DM.SQLTemplate.FindField('PRODA60REFER').IsNull then
             DataSet.FieldByName('Referencia').AsVariant   := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;

          if not DM.SQLTemplate.FindField('PRODA60CODBAR').IsNull then
             DataSet.FieldByName('CodBarras').AsVariant    := DM.SQLTemplate.FindField('PRODA60CODBAR').AsVariant;

          if not DM.SQLTemplate.FindField('PRODICOD').IsNull then
             DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODICOD').AsString + '-' + DM.SQLTemplate.FindField('PRODA60DESCR').AsString ;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);
        end;
    end;
end;

procedure TFormTelaTransferencia.SQLTranferenciaItemNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTranferenciaItemTRFEA13ID.AsString := SQLTranferenciaTRFEA13ID.AsString;
end;

procedure TFormTelaTransferencia.edQtdeProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 13 then
     begin
       IncluiProduto;
       lblDescrProduto.Caption := 'Descrição do Produto';
     end;
end;

procedure TFormTelaTransferencia.TabSheetGerarTransferenciaShow(
  Sender: TObject);
begin
  inherited;
  edCodigoProduto.SetFocus;
end;

procedure TFormTelaTransferencia.edQtdeProdutoChange(Sender: TObject);
begin
  inherited;
  if edQtdeProduto.Text = '' then
     edQtdeProduto.Text := '0';

  if edQtdeProduto.Text = '0' then
     edCodigoProduto.SetFocus;
end;

procedure TFormTelaTransferencia.DBGridTranferenciasDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
{  if TDBGrid(Sender).DataSource.DataSet.FindField('TRFECRECEBIDO').AsString <> 'N' then
     TDBGrid(Sender).Canvas.Font.Color := shpNaoRecebido.Brush.Color
  else
    TDBGrid(Sender).Canvas.Font.Color := clNavy;

  if gdSelected in State then
     begin
        TDBGrid(Sender).Canvas.Brush.Color := clNavy;
        TDBGrid(Sender).Canvas.Font.Color := clWhite;
     end;

  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);}
  if TDBGrid(Sender).DataSource.DataSet.FindField('TRFECRECEBIDO').AsString = 'N' then
     TDBGrid(Sender).Canvas.Font.Color := $00332FCA
  else
    TDBGrid(Sender).Canvas.Font.Color := clNavy;

  if gdSelected in State then
     begin
        TDBGrid(Sender).Canvas.Brush.Color := clNavy;
        TDBGrid(Sender).Canvas.Font.Color  := clWhite;
     end;

  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormTelaTransferencia.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then
     begin
        TDBGrid(Sender).Canvas.Brush.Color := clNavy;
        TDBGrid(Sender).Canvas.Font.Color := clWhite;
     end;
  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormTelaTransferencia.edCodigoProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

{  if (IDCupomOrigem.Text = '') and (Key = VK_RETURN) then
    begin
      showmessage('ID da Venda Origem nao foi encontrado!');
      edCodigoProduto.SetFocus;
      exit;
    end;   }

  if (Key = VK_RETURN) then
     begin
      {   begin
           dm.sqlConsulta.close;
           dm.sqlConsulta.sql.clear;
           dm.sqlConsulta.sql.text := 'select CUPOA13ID from CUPOM where CUPOA13ID='''+IDCupomOrigem.Text+'''';
           dm.sqlConsulta.open;
           if dm.sqlConsulta.IsEmpty then
             begin
               showmessage('ID da Venda Origem nao foi encontrado!');
               edCodigoProduto.SetFocus;
             end;
         end; }

       if ((edCodigoProduto.Text <> '') and (EncontrouProduto(edCodigoProduto.Text,SQLProduto))) then
         begin
            if (ckGrade.Checked) and (SQLProdutoGRTMICOD.AsString <> '') then
              begin
                DSMasterSys  := DStblTempTranferencia;
                edCodigoProduto.Clear;
                edCodigoProduto.SetFocus;
                Application.CreateForm(TFormTelaTransferenciaGrade, FormTelaTransferenciaGrade);
                FormTelaTransferenciaGrade.ShowModal;
                EdtCustoTotal.Value     := 0 ;
                EdtQtdeTotalItens.Value := 0 ;
                if not tblTempTranferencia.Active then tblTempTranferencia.open;
                tblTempTranferencia.First;
                while not tblTempTranferencia.eof do
                  begin
                    EdtCustoTotal.Value        := EdtCustoTotal.Value     + tblTempTranferenciaProdutoValorCusto.Value;
                    EdtQtdeTotalItens.Value    := EdtQtdeTotalItens.Value + tblTempTranferenciaProdutoQtde.Value;
                    tblTempTranferencia.Next;
                  end;
              end
            else
              begin
                lblDescrProduto.Caption := SQLProdutoPRODA60DESCR.Value;
                edtCusto.Value          := SQLProdutoPRODN3VLRCUSTO.Value;
                lblDescrProduto.Update;
                edQtdeProduto.SetFocus;
              end;
         end
       else
         begin
           ProdutoDescricao  := '';
           ProdutoReferencia := '';
           Application.CreateForm(TFormTelaConsultaProdutoGeral, FormTelaConsultaProdutoGeral);
           FormTelaConsultaProdutoGeral.ShowModal;
           if ProdutoReferencia = '' then
             exit;
            edCodigoProduto.Text := ProdutoReferencia;
            if ((edCodigoProduto.Text <> '') and (EncontrouProduto(edCodigoProduto.Text,SQLProduto))) then
              begin
                if (ckGrade.Checked) and (SQLProdutoGRTMICOD.AsString <> '') then
                  begin
                    DSMasterSys  := DStblTempTranferencia;
                    edCodigoProduto.Clear;
                    edCodigoProduto.SetFocus;
                    Application.CreateForm(TFormTelaTransferenciaGrade, FormTelaTransferenciaGrade);
                    FormTelaTransferenciaGrade.ShowModal;
                    EdtCustoTotal.Value     := 0 ;
                    EdtQtdeTotalItens.Value := 0 ;
                    if not tblTempTranferencia.Active then tblTempTranferencia.open;
                    tblTempTranferencia.First;
                    while not tblTempTranferencia.eof do
                      begin
                        EdtCustoTotal.Value        := EdtCustoTotal.Value     + tblTempTranferenciaProdutoValorCusto.Value;
                        EdtQtdeTotalItens.Value    := EdtQtdeTotalItens.Value + tblTempTranferenciaProdutoQtde.Value;
                        tblTempTranferencia.Next;
                      end;
                  end
                else
                  begin
                    lblDescrProduto.Caption := SQLProdutoPRODA60DESCR.Value;
                    edtCusto.Value          := SQLProdutoPRODN3VLRCUSTO.Value;
                    lblDescrProduto.Update;
                    edQtdeProduto.SetFocus;
                  end;
              end;
         end;
     end;
end;

procedure TFormTelaTransferencia.DBGridTranferenciasDblClick(
  Sender: TObject);
begin
  inherited;
  if btReceberTransferencia.Enabled then
     btReceberTransferencia.Click;
end;

procedure TFormTelaTransferencia.btReceberTransferenciaClick(
  Sender: TObject);
Var DivergenciasRel : TStringList;
    I : Integer;
begin
  inherited;
  if DM.SQLConfigGeral.FieldByName('OPESICODTRANSFENTR').IsNull then
     begin
        Informa('Não foi configurado as Operações de Estoque para Transferência.' + #13 +
                'Configure no Configurador: Cadastros/Parâmetros/Gerais e tente novamente.');
        Abort;
     end;

  DivergenciasRel := TStringList.Create;
  Application.CreateForm(TFormTelaTransferenciaMercadoriaReceberProduto, FormTelaTransferenciaMercadoriaReceberProduto);
  FormTelaTransferenciaMercadoriaReceberProduto.ShowModal;
  if FormTelaTransferenciaMercadoriaReceberProduto.Divergencias <> Nil then
     DivergenciasRel := FormTelaTransferenciaMercadoriaReceberProduto.Divergencias;
  FormTelaTransferenciaMercadoriaReceberProduto.Destroy;

  if DivergenciasRel.Count > 0 then
     begin
        if not FileExists(DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Divergencias.rpt') then
           begin
              Informa('Não foi encontrado o relatório de Divergências.' + #13 +
                      'Arquivo Relatorio Transferencia-Divergencias.rpt em ' + DM.SQLConfigGeralCFGEA255PATHREPORT.AsString);
              Abort;
           end
        else
           begin
              if GeraRelatorioRecebimento then
                 crpRelatorio.Execute;
           end;
      end;
      SQLTranferencia.Close;
      SQLTranferencia.Open;
end;

procedure TFormTelaTransferencia.chkRecebidasClick(Sender: TObject);
begin
  inherited;
  SQLTranferencia.Close;
  SQLTranferencia.Open;
end;

procedure TFormTelaTransferencia.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
    Application.ProcessMessages;
end;

procedure TFormTelaTransferencia.tblTempTranferenciaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('ProdutoCod').AsVariant <> null then
    begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('ProdutoCod').AsString],1) Then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);
        end;
    end;
end;

procedure TFormTelaTransferencia.SQLTranferenciaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  if not SQLTranferenciaItem.Active then
     SQLTranferenciaItem.Active := True;
end;

procedure TFormTelaTransferencia.dblEmpresaDestinoChange(Sender: TObject);
begin
  inherited;
  if dblEmpresaDestino.KeyValue = dblEmpresaOrigem.KeyValue then
     begin
        Informa('A empresa Destido deve ser diferente da Empresa Remetente.');
        dblEmpresaDestino.KeyValue := EmpresaAnterior;
        dblEmpresaDestino.SetFocus;
        Abort;
     end;
end;

procedure TFormTelaTransferencia.SQLEmpresaDestinoAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if dblEmpresaDestino.KeyValue <> Null then
     EmpresaAnterior := dblEmpresaDestino.KeyValue;
end;

procedure TFormTelaTransferencia.crpRelatorioExecuteEnd(Sender: TObject);
begin
  inherited;
  RefazTabela(tblTempTranferencia, tblTempTranferencia.Name);

  SQLTranferencia.Close;
  SQLTranferencia.Open;
end;

procedure TFormTelaTransferencia.PageControlChange(Sender: TObject);
begin
  inherited;
  if PageControl.ActivePage = TabTransfGerada then
     labelTitulo.Caption := 'Transferência Produtos [Tranferências]';

  if PageControl.ActivePage = TabSheetGerarTransferencia then
     labelTitulo.Caption := 'Transferência Produtos [Gerar Tranferências]';

  btImprimirRelatorio.Enabled := PageControl.ActivePage = TabTransfGerada;

  DStblTempTranferenciaStateChange(Nil);
end;

procedure TFormTelaTransferencia.mnRemoverItemClick(Sender: TObject);
begin
  inherited;
  if Pergunta('Sim', 'Deseja Remover o produto: ' + tblTempTranferenciaProdutoNome.AsString + '?') then
     tblTempTranferencia.Delete;
end;

procedure TFormTelaTransferencia.Button1Click(Sender: TObject);
begin
  inherited;
  if TButton(Sender).Name = 'Button1' then
    begin
      PageControl.ActivePage := TabSheetGerarTransferencia;
      SQLTranferencia.Close;
      SQLTranferencia.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + EmpresaPadrao;
      SQLTranferencia.MacroByName('MFiltro').AsString  := 'TRFEA13ID IS NULL';
      SQLTranferencia.Open;
    end;

  if TButton(Sender).Name = 'Button2' then
    begin
      PageControl.ActivePage  := TabTransfRecebida;
      SQLTranferencia.Close;
      SQLTranferencia.MacroByName('MEmpresa').AsString := 'TRFEIEMPRDEST = ' + EmpresaPadrao;
      SQLTranferencia.MacroByName('MFiltro').AsString  := 'TRFECRECEBIDO = ''N''';
      SQLTranferencia.Open;
    end;
  if TButton(Sender).Name = 'Button3' then
    begin
      PageControl.ActivePage  := TabTransfGerada;
      SQLTranferencia.Close;
      SQLTranferencia.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + EmpresaPadrao;
      SQLTranferencia.MacroByName('MFiltro').AsString  := 'TRFECRECEBIDO = ''S''';
      SQLTranferencia.Open;
    end;

  PageControlChange(PageControl);
end;

function TFormTelaTransferencia.GeraRelatorioRecebimento: Boolean;
Var I: Integer;
begin
    RefazTabela(tblDadosTranferencia, tblDadosTranferencia.Name);
    //Dados Trsnferencia e Empresas
    tblDadosTranferencia.Open;
    tblDadosTranferencia.Append;
    tblDadosTranferenciaTRFEA13ID.AsString        := SQLTranferenciaTRFEA13ID.AsString;
    tblDadosTranferenciaTRFEDEMISSAO.AsDateTime   := SQLTranferenciaTRFEDEMISSAO.AsDateTime;
    tblDadosTranferenciaTRFEA30USUENVIO.AsString  := SQLTranferenciaTRFEA30USUENVIO.AsString;
    tblDadosTranferenciaDestNome.AsString         := SQLEmpresaDestinoEMPRA60RAZAOSOC.AsString;
    tblDadosTranferenciaDestCnpj.AsString         := SQLEmpresaDestinoEMPRA14CGC.DisplayText;
    tblDadosTranferenciaDestIE.AsString           := SQLEmpresaDestinoEMPRA20IE.AsString;
    tblDadosTranferenciaDestEmail.AsString        := SQLEmpresaDestinoEMPRA60EMAIL.AsString;
    tblDadosTranferenciaDestCidade.AsString       := SQLEmpresaDestinoEmprDestCidade.AsString;
    tblDadosTranferenciaDestEndereco.AsString     := SQLEmpresaDestinoEmprDestEndereo.AsString;
    tblDadosTranferenciaDestFoneFax.AsString      := SQLEmpresaDestinoEMPRA20FONE.AsString;
    if not SQLEmpresaDestinoEMPRA20FAX.IsNull and not tblDadosTranferenciaDestFoneFax.IsNull then
       tblDadosTranferenciaDestFoneFax.AsString   := tblDadosTranferenciaDestFoneFax.AsString + ' / ' + SQLEmpresaDestinoEMPRA20FAX.AsString;

    tblDadosTranferenciaRemtNome.AsString         := SQLEmpresaRemetenteEMPRA60RAZAOSOC.AsString;
    tblDadosTranferenciaRemtCnpj.AsString         := SQLEmpresaRemetenteEMPRA14CGC.DisplayText;
    tblDadosTranferenciaRemtIE.AsString           := SQLEmpresaRemetenteEMPRA20IE.AsString;
    tblDadosTranferenciaRemtEmail.AsString        := SQLEmpresaRemetenteEMPRA60EMAIL.AsString;
    tblDadosTranferenciaRemtCidade.AsString       := SQLEmpresaRemetenteEmprDestCidade.AsString;
    tblDadosTranferenciaRemtEnderecp.AsString     := SQLEmpresaRemetenteEmprDestEndereo.AsString;
    tblDadosTranferenciaRemtFoneFax.AsString      := SQLEmpresaRemetenteEMPRA20FONE.AsString;
    if not SQLEmpresaRemetenteEMPRA20FAX.IsNull and not tblDadosTranferenciaRemtFoneFax.IsNull then
       tblDadosTranferenciaRemtFoneFax.AsString   := tblDadosTranferenciaRemtFoneFax.AsString + ' / ' + SQLEmpresaRemetenteEMPRA20FAX.AsString;
    tblDadosTranferencia.Post;

    //Dados Produtos
    RefazTabela(tblTransferenciaDivergencias, tblTransferenciaDivergencias.Name);

    tblTransferenciaDivergencias.Open;

    SQLTranferenciaItem.First;

    while not SQLTranferenciaItem.Eof do
       begin
          if not SQLTranferenciaItemTRITA254DIVERGENCIA.IsNull then
             begin
                tblTransferenciaDivergencias.Append;
                for I := 0 to tblTransferenciaDivergencias.FieldCount - 1 do
                    tblTransferenciaDivergencias.Fields.Fields[I].Value := SQLTranferenciaItem.FieldByName(tblTransferenciaDivergencias.Fields.Fields[I].FieldName).Value;
                tblTransferenciaDivergencias.Post;
             end;
          SQLTranferenciaItem.Next;
       end;

    crpRelatorio.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Divergencias.rpt';
    crpRelatorio.ReportTitle       := 'Transferência [Divergências]';
    crpRelatorio.WindowStyle.Title := 'Transferência [Divergências]';
    Result := True;
end;

procedure TFormTelaTransferencia.mnRecebimentoClick(Sender: TObject);
begin
  inherited;
  if GeraRelatorioRecebimento then
     crpRelatorio.Execute;
end;

procedure TFormTelaTransferencia.mnEnvioClick(Sender: TObject);
begin
  inherited;
  if not FileExists(DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Envio.rpt') then
     begin
        Informa('Não foi encontrado o relatório de Transferência.' + #13 +
                'Arquivo Relatorio Transferencia-Envio.rpt em ' + DM.SQLConfigGeralCFGEA255PATHREPORT.AsString);
        Abort;
     end
  else
     begin
        RefazTabela(tblDadosTranferencia,tblDadosTranferencia.Name);
        tblDadosTranferencia.Open;
        tblDadosTranferencia.Append;
        tblDadosTranferenciaTRFEA13ID.AsString        := SQLTranferenciaTRFEA13ID.AsString;
        tblDadosTranferenciaTRFEDEMISSAO.AsDateTime   := SQLTranferenciaTRFEDEMISSAO.AsDateTime;
        tblDadosTranferenciaTRFEA30USUENVIO.AsString  := SQLTranferenciaTRFEA30USUENVIO.AsString;

        SQLEmpresaRemetente.Locate('EMPRICOD', SQLTranferenciaEMPRICOD.AsString, [loCaseInsensitive]);
        tblDadosTranferenciaRemtNome.AsString         := SQLEmpresaRemetenteEMPRA60NOMEFANT.AsString;
        tblDadosTranferenciaRemtCnpj.AsString         := SQLEmpresaRemetenteEMPRA14CGC.DisplayText;
        tblDadosTranferenciaRemtIE.AsString           := SQLEmpresaRemetenteEMPRA20IE.AsString;
        tblDadosTranferenciaRemtEmail.AsString        := SQLEmpresaRemetenteEMPRA60EMAIL.AsString;
        tblDadosTranferenciaRemtCidade.AsString       := SQLEmpresaRemetenteEmprDestCidade.AsString;
        tblDadosTranferenciaRemtEnderecp.AsString     := SQLEmpresaRemetenteEmprDestEndereo.AsString;
        tblDadosTranferenciaRemtFoneFax.AsString      := SQLEmpresaRemetenteEMPRA20FONE.AsString;
        if not SQLEmpresaRemetenteEMPRA20FAX.IsNull and not tblDadosTranferenciaRemtFoneFax.IsNull then
           tblDadosTranferenciaRemtFoneFax.AsString   := tblDadosTranferenciaRemtFoneFax.AsString + ' / ' + SQLEmpresaRemetenteEMPRA20FAX.AsString;

        SQLEmpresaDestino.Locate('EMPRICOD', SQLTranferenciaEMPRICODORIGEM.AsString, [loCaseInsensitive]);
        tblDadosTranferenciaDestNome.AsString         := SQLEmpresaDestinoEMPRA60NOMEFANT.AsString;
        tblDadosTranferenciaDestCnpj.AsString         := SQLEmpresaDestinoEMPRA14CGC.DisplayText;
        tblDadosTranferenciaDestIE.AsString           := SQLEmpresaDestinoEMPRA20IE.AsString;
        tblDadosTranferenciaDestEmail.AsString        := SQLEmpresaDestinoEMPRA60EMAIL.AsString;
        tblDadosTranferenciaDestCidade.AsString       := SQLEmpresaDestinoEmprDestCidade.AsString;
        tblDadosTranferenciaDestEndereco.AsString     := SQLEmpresaDestinoEmprDestEndereo.AsString;
        tblDadosTranferenciaDestFoneFax.AsString      := SQLEmpresaDestinoEMPRA20FONE.AsString;
        if not SQLEmpresaDestinoEMPRA20FAX.IsNull and not tblDadosTranferenciaDestFoneFax.IsNull then
           tblDadosTranferenciaDestFoneFax.AsString   := tblDadosTranferenciaDestFoneFax.AsString + ' / ' + SQLEmpresaDestinoEMPRA20FAX.AsString;

        tblDadosTranferencia.Post;
       try
         tblTempTranferencia.Close;
         tblTempTranferencia.TableName := tblTempTranferencia.Name;
         tblTempTranferencia.DeleteTable;
         tblTempTranferencia.CreateTable;
       except
           tblTempTranferencia.CreateTable;
       end;

       SQLTranferenciaItem.First;
       while not SQLTranferenciaItem.Eof do
         begin
            if not tblTempTranferencia.Active then tblTempTranferencia.Active := True;
            tblTempTranferencia.Append;
            tblTempTranferenciaProdutoCod.Value        := SQLTranferenciaItemPRODICOD.Value;
            tblTempTranferenciaProdutoBarras.Value     := SQLTranferenciaItemCodBarras.Value;
            tblTempTranferenciaProdutoQtde.Value       := SQLTranferenciaItemTRITN3QTDEENVIADA.Value;
            tblTempTranferenciaProdutoNome.Value       := SQLTranferenciaItemProdutoLookup.Value;
            tblTempTranferenciaProdutoReferencia.Value := SQLTranferenciaItemReferencia.Value;
            tblTempTranferenciaUnidade.Value           := SQLTranferenciaItemUnidade.Value;
            tblTempTranferenciaProdutoValorCusto.Value := SQLTranferenciaItemTRITN3VLRCUSTO.Value;
            tblTempTranferenciaProdutoValorCustoTotal.Value := SQLTranferenciaItemTRITN3VLRCUSTO.Value * tblTempTranferenciaProdutoQtde.Value;
            tblTempTranferencia.Post;
            SQLTranferenciaItem.Next;
         end;
       SQLTranferenciaItem.First;

       if CKImpMatricial.Checked then
         crpRelatorio.ReportName      := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Envio Matricial.rpt'
       else
         begin
           if not CKSemCusto.Checked then
             crpRelatorio.ReportName      := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Envio.rpt'
           else
             crpRelatorio.ReportName      := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Relatorio Transferencia-Envio sem Custo.rpt';

         end;
       crpRelatorio.ReportTitle       := 'Transferência [Envio]';
       crpRelatorio.WindowStyle.Title := 'Transferência [Envio]';
     end;
end;

procedure TFormTelaTransferencia.PopupMenuRelatoriosPopup(Sender: TObject);
begin
  inherited;
  mnEnvio.Caption := 'Transferências Enviadas [Empresa Origem: ' + EmpresaAtualNome + ']';
  mnEnvio.Enabled := not SQLTranferencia.IsEmpty  and (SQLTranferenciaEMPRICOD.AsInteger = EmpresaCorrente);
  mnRecebimento.Enabled := (SQLTranferenciaTRFECDIVERG.AsString = 'S');
end;

procedure TFormTelaTransferencia.edQtdeProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key in ['.',',']) and (Pos(',', edQtdeProduto.Text) = 0) then
     Key := ','
  else
     begin
       if not (Ord(Key) in [27,13,8]) then
          begin
             if (Key in [',','.']) and (Pos(',', edQtdeProduto.Text) > 0) then
                Key := #0
             else
                begin
                  if not IsNumeric(Key, 'FLOAT') then
                     Key := #0;
                end
          end;
     end;
end;

procedure TFormTelaTransferencia.RadioRecebidaClick(Sender: TObject);
begin
  inherited;
  SQLTranferencia.Close;
  SQLTranferencia.MacroByName('MEmpresa').AsString := 'TRFEIEMPRDEST = ' + EmpresaPadrao;
  case RadioRecebida.ItemIndex of
    0 : SQLTranferencia.MacroByName('MFiltro').AsString  := 'TRFECRECEBIDO = ''N''';
    1 : SQLTranferencia.MacroByName('MFiltro').AsString  := 'TRFECRECEBIDO = ''S''';
    2 : SQLTranferencia.MacroByName('MFiltro').AsString  := '0=0';
  end;
  SQLTranferencia.Open;
end;

procedure TFormTelaTransferencia.DBGridGeradasDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if TDBGrid(Sender).DataSource.DataSet.FindField('TRFECRECEBIDO').AsString = 'N' then
     TDBGrid(Sender).Canvas.Font.Color := $00332FCA
  else
    TDBGrid(Sender).Canvas.Font.Color := clNavy;

  if gdSelected in State then
     begin
        TDBGrid(Sender).Canvas.Brush.Color := clNavy;
        TDBGrid(Sender).Canvas.Font.Color  := clWhite;
     end;

  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormTelaTransferencia.RadioGeradaClick(Sender: TObject);
begin
  inherited;
  SQLTranferencia.Close;
  SQLTranferencia.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + EmpresaPadrao;
  case RadioGerada.ItemIndex of
    0 : SQLTranferencia.MacroByName('MFiltro').AsString  := 'TRFECRECEBIDO = ''S''';
    1 : SQLTranferencia.MacroByName('MFiltro').AsString  := 'TRFECRECEBIDO = ''N''';
    2 : SQLTranferencia.MacroByName('MFiltro').AsString  := '0=0';
  end;
  SQLTranferencia.Open;
end;

procedure TFormTelaTransferencia.DSSQLTranferenciaDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  btReceberTransferencia.Enabled := (SQLTranferenciaTRFECRECEBIDO.AsString = 'N') and
                                    (SQLTranferenciaEMPRICOD.AsInteger <> EmpresaCorrente) and
                                    (PageControl.ActivePage = TabTransfRecebida);

end;

procedure TFormTelaTransferencia.SQLTranferenciaBeforeDelete(
  DataSet: TDataSet);
begin
  if Pergunta('NAO','Atenção! Excluir esta Transferencia?') then
    begin
      SQLTranferenciaItem.First;
      while not SQLTranferenciaItem.eof do
        begin
          DM.RegistraExclusao('TRANSFERENCIAITEM',SQLTranferenciaItem);
          SQLTranferenciaItem.Delete;
        end;

      DM.RegistraExclusao('TRANSFERENCIA',SQLTranferencia);
    end
  else
    begin
      Abort;
      Exit
    end;
  inherited;
end;

procedure TFormTelaTransferencia.SQLNotaFiscalBeforePost(
  DataSet: TDataSet);
var Erro : Boolean;
begin
  inherited;
  // Gerar o ID da Nota
  if DataSet.State in [DSInsert] then
    DM.CodigoAutomatico('NOTAFISCAL',Nil,DataSet,2,0);
  // Gerar o Nro da Nota Fiscal
  SQLSerieNF.Close;
  SQLSerieNF.MacroByName('Empresa').value := 'EMPRICOD  = '+ EmpresaPadrao;
  SQLSerieNF.MacroByName('Serie').Value   := 'SERIA5COD = '''+ ComboSerieNF.Value+'''';
  SQLSerieNF.Open;
  Erro := True;
  if DataSet.State in [DSInsert] then
    begin
      while Erro do
        try
          // Pega o nro atual
          SQLNotaFiscalNOFIINUMERO.Value := SQLSerieNFSERIINRONF.Value;
          // Cria o prox numero de NF
          SQLSerieNF.Edit;
          SQLSerieNFSERIINRONF.Value       := SQLSerieNFSERIINRONF.asInteger + 1;
          SQLSerieNFPENDENTE.asString      := 'S';
          SQLSerieNFREGISTRO.asDateTime    := Now;
          SQLSerieNF.Post;
          Erro := False;
        except
          If SQLSerieNF.State in DsEditModes Then SQLSerieNF.Cancel;
          Erro:=True;
        end;
    end;
end;

procedure TFormTelaTransferencia.edtCustoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    begin
      key := #0;
      Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TFormTelaTransferencia.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  // Entrada da Mercadoria da Empresa Destino
  if Pergunta('Nao','Deseja Movimentar Estoque do produto atual?') then
    begin
      GravaMovimentoEstoqueSimples(DM.SQLProduto, DM.SQLProdutoFilho, DM.SQLProdutoSaldo,
                SQLTranferenciaTRFEIEMPRDEST.AsInteger,
                SQLTranferenciaItemPRODICOD.AsInteger,
                DM.SQLConfigGeral.FieldByName('OPESICODTRANSFENTR').AsInteger,
                SQLTranferenciaItemTRITN3QTDEENVIADA.AsFloat,
                'E', FormatDateTime('mm/dd/yyyy', Now),
                '0', 'TRANSFERENCIA', SQLTranferenciaItemTRFEA13ID.AsString, '');

      SQLTranferenciaItem.Edit;
      SQLTranferenciaItemTRITN3QTDERECEBIDA.Value  := SQLTranferenciaItemTRITN3QTDEENVIADA.Value;
      SQLTranferenciaItem.Post;
    end;
end;

procedure TFormTelaTransferencia.ImportarBematechDC20001Click(
  Sender: TObject);
var
  CodProduto, CodInterno, vQtde, sCampo : String;
  LinhaAtual, NroLinhas, I, ContadorCampos, Resultado : integer;
  QtdeTotal : Double;
  Info : string;
  Texto : TextFile;
begin
  if FileExists('c:\easy2solutions\coletor\Contagem.csv') then
    begin
      if Application.MessageBox('Deseja realmente importar os registro do Arquivo c:\easy2solutions\coletor\Contagem.csv ?','Atenção',MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = IDYES then
        begin
          NroLinhas := 0;
          AssignFile(Texto,'c:\easy2solutions\coletor\Contagem.csv');
          Reset(Texto);
          while not EOF(Texto) do
          begin
            Readln(Texto,Info);
            NroLinhas := NroLinhas + 1;
          end;
          CloseFile(Texto);

          AssignFile(Texto,'c:\easy2solutions\coletor\Contagem.csv');
          Reset(Texto);

          {pula titulo}
          Readln(Texto,Info);

          LinhaAtual := 0;
          QtdeTotal  := 0;
          while not EOF(Texto) do
            begin
              Application.ProcessMessages;
              ReadLn(Texto,Info);
              LinhaAtual := LinhaAtual + 1;
              lblDescrProduto.Caption := 'Lendo Linha Nro.: ' + IntToStr(LinhaAtual) + ' de ' + IntToStr(NroLinhas);
              lblDescrProduto.Update;

              ContadorCampos := 1;
              sCampo := '';
              for i:= 1 to Length(Info) do
                begin
                  if Info[i] = ';' then
                    begin
                      Case ContadorCampos of
                         1 : CodProduto  := trim(sCampo);
                      end;
                      sCampo:= '';
                      ContadorCampos := ContadorCampos+1;
                      Continue;
                    end
                  else
                    sCampo:= sCampo + Info[i];
                end;
              vQtde := trim(sCampo);

              try
                CodInterno := '';
                CodInterno := Dm.SQLLocate('PRODUTOBARRAS','PRBAA15BARRAS','PRODICOD',''''+CodProduto+'''');

                if (CodInterno = '') then
                  CodInterno := Dm.SQLLocate('PRODUTO','PRODA60CODBAR','PRODICOD',''''+CodProduto+'''');

                if (CodInterno = '') then
                  CodInterno := Dm.SQLLocate('PRODUTO','PRODICOD','PRODICOD',CodProduto);

                if CodInterno <> '' Then
                  begin
                    if not tblTempTranferencia.Active then tblTempTranferencia.Active := True;

                    if tblTempTranferencia.Locate('ProdutoCod', CodInterno, [loCaseInsensitive]) then
                      begin
                        Resultado := Application.MessageBox('Este Produto ja esta na lista de Transferência.' + #13 +
                                                            'Deseja adicionar a Quantidade à Quantidade da lista?' + #13 +
                                                            'Clique ''NÃO'' para Substituir a Quantidade ou Cancelar.',
                                                            'Item Duplicado', MB_YESNOCANCEL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1);
                        if Resultado = IDCancel then
                          Abort;

                        tblTempTranferencia.Edit;
                        if Resultado = idYes then
                          tblTempTranferenciaProdutoQtde.AsFloat := tblTempTranferenciaProdutoQtde.AsFloat + StrToFloat(vQtde);
                        if Resultado = idNo then
                          tblTempTranferenciaProdutoQtde.AsFloat := StrToFloat(vQtde);
                      end
                    else
                      begin
                        tblTempTranferencia.Append;
                        tblTempTranferenciaProdutoQtde.AsFloat         := StrToFloat(vQtde);
                      end;

                    tblTempTranferenciaProdutoCod.AsInteger        := SQLProdutoPRODICOD.AsInteger;
                    tblTempTranferenciaProdutoBarras.AsString      := SQLProdutoPRODA60CODBAR.AsString;
                    tblTempTranferenciaProdutoNome.AsString        := SQLProdutoProdutoLookup.AsString;
                    tblTempTranferenciaProdutoEstoque.AsFloat      := StrToFloat(SQLLocate('PRODUTOSALDO', 'PRODICOD', 'PSLDN3QTDE', tblTempTranferenciaProdutoCod.AsString));
                    tblTempTranferenciaProdutoReferencia.AsString  := SQLProdutoPRODA60REFER.AsString;
                    tblTempTranferenciaProdutoValorCusto.AsFloat   := SQLProdutoPRODN3VLRCUSTO.Value;
                    tblTempTranferencia.Post;

                    // Totais da Transf Atual
                    EdtCustoTotal.Value     := EdtCustoTotal.Value + SQLProdutoPRODN3VLRCUSTO.Value;
                  end;
              except
                Application.ProcessMessages;
              end;
            end;
          CloseFile(Texto);
        end;
    end;
  Origem  := 'c:\easy2solutions\coletor\Contagem.csv';
  Destino := 'c:\easy2solutions\coletor\Contagem_importada_'+FormatDateTime('ddmmyy_hhnn',now);
  CopyFile(PChar(origem), PChar(destino), false);
  DeleteFile(PChar(origem));

  ShowMessage('Importação Executada com Sucesso');
end;

procedure TFormTelaTransferencia.ImportardoPalmOne1Click(Sender: TObject);
var
  Info, CodProduto, CodInterno : String;
  LinhaAtual, NroLinhas, Resultado : integer;
  Texto : TextFile;
begin
  if FileExists('..\Invent.Txt') then
    begin
      if Application.MessageBox('Deseja realmente importar os registro do Arquivo ..\Invent.Txt ?','Atenção',MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = IDYES then
        begin
          NroLinhas := 0;
          AssignFile(Texto,'..\Invent.Txt');
          Reset(Texto);
          while not EOF(Texto) do
          begin
            Readln(Texto,Info);
            NroLinhas := NroLinhas + 1;
          end;
          CloseFile(Texto);

          AssignFile(Texto,'..\Invent.Txt');
          Reset(Texto);

          LinhaAtual := 0;
          while not EOF(Texto) do
            begin
              Application.ProcessMessages;
              Readln(Texto,Info);
              LinhaAtual := LinhaAtual + 1;
              lblDescrProduto.Caption := 'Lendo Linha Nro.: ' + IntToStr(LinhaAtual) + ' de ' + IntToStr(NroLinhas);
              lblDescrProduto.Update;

              try
                CodInterno := '';
                if EncontrouProduto(Info,sqlproduto) then
                  CodInterno := SQLProdutoPRODICOD.AsString;

                if CodInterno <> '' Then
                  begin
                    if not tblTempTranferencia.Active then tblTempTranferencia.Active := True;

                    if tblTempTranferencia.Locate('ProdutoCod', SQLProdutoPRODICOD.AsString, [loCaseInsensitive]) then
                      begin
                        Resultado := Application.MessageBox('Este Produto ja esta na lista de Transferência.' + #13 +
                                                            'Deseja adicionar a Quantidade à Quantidade da lista?' + #13 +
                                                            'Clique ''NÃO'' para Substituir a Quantidade ou Cancelar.',
                                                            'Item Duplicado', MB_YESNOCANCEL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1);
                        if Resultado = IDCancel then
                          Abort;

                        tblTempTranferencia.Edit;
                        if Resultado = idYes then
                          tblTempTranferenciaProdutoQtde.AsFloat := tblTempTranferenciaProdutoQtde.AsFloat + 1;
                        if Resultado = idNo then
                          tblTempTranferenciaProdutoQtde.AsFloat := 1;
                      end
                    else
                      begin
                        tblTempTranferencia.Append;
                        tblTempTranferenciaProdutoQtde.AsFloat := 1;
                      end;

                    tblTempTranferenciaProdutoCod.AsInteger        := SQLProdutoPRODICOD.AsInteger;
                    tblTempTranferenciaProdutoBarras.AsString      := SQLProdutoPRODA60CODBAR.AsString;
                    tblTempTranferenciaProdutoNome.AsString        := SQLProdutoProdutoLookup.AsString;
                    tblTempTranferenciaProdutoEstoque.AsFloat      := StrToFloat(SQLLocate('PRODUTOSALDO', 'PRODICOD', 'PSLDN3QTDE', tblTempTranferenciaProdutoCod.AsString));
                    tblTempTranferenciaProdutoReferencia.AsString  := SQLProdutoPRODA60REFER.AsString;
                    tblTempTranferenciaProdutoValorCusto.AsFloat   := SQLProdutoPRODN3VLRCUSTO.Value;
                    tblTempTranferencia.Post;

                    // Totais da Transf Atual
                    EdtCustoTotal.Value     := EdtCustoTotal.Value + SQLProdutoPRODN3VLRCUSTO.Value;
                  end;
              except
                Application.ProcessMessages;
              end;
            end;
          CloseFile(Texto);
        end;
    end;
  Origem  := '..\Invent.Txt';
  Destino := 'c:\easy2solutions\coletor\Invent_importada_'+FormatDateTime('ddmmyy_hhnn',now);
  CopyFile(PChar(origem), PChar(destino), false);
  DeleteFile(PChar(origem));
  ShowMessage('Importação Executada com Sucesso');
end;

end.



