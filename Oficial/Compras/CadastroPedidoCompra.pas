unit CadastroPedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, FormResources,
  VarSys, ToolEdit, RXDBCtrl, RxDBComb, DBActns, ActnList, ImgList, EDBNum,
  OleCtrls, UCrpe32, Variants, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroPedidoCompra = class(TFormCadastroTEMPLATE)
    SQLTemplatePDCPA13ID: TStringField;
    SQLTemplatePDCPICOD: TIntegerField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateEMPRICODDEST: TIntegerField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplatePDCPDEMIS: TDateTimeField;
    SQLTemplatePDCPCSTATUS: TStringField;
    SQLTemplatePDCPA10NROFORN: TStringField;
    SQLTemplatePDCPN2TOTITENS: TFloatField;
    SQLTemplatePDCPDPREVENTREGA: TDateTimeField;
    SQLTemplatePDCPDBASEFAT: TDateTimeField;
    SQLTemplatePDCPN2VLRENCARGO: TFloatField;
    SQLTemplatePDCPN2VLRIPI: TFloatField;
    SQLTemplatePDCPN2DESCPROM: TFloatField;
    SQLTemplatePDCPN2VLRFRETE: TFloatField;
    SQLTemplatePDCPA5TIPOFRETE: TStringField;
    SQLTemplatePDCPA255OBS: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplatePDCPNOMECOMPRADOR: TStringField;
    SQLTemplatePDCPNOMEVENDEDOR: TStringField;
    LBCodPedido: TLabel;
    DbCodIntegrado: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ComboTipoFrete: TRxDBComboBox;
    Label15: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    BtnFornecedor: TSpeedButton;
    BtnTransportadora: TSpeedButton;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    Label7: TLabel;
    EvDBNumEdit5: TEvDBNumEdit;
    SQLTemplateTotalCalc: TFloatField;
    Label17: TLabel;
    EvDBNumEdit6: TEvDBNumEdit;
    SQLTemplatePDCPN3TOTDESC: TFloatField;
    Label19: TLabel;
    BtnPlanoPagto: TSpeedButton;
    SQLTemplatePLPGICOD: TIntegerField;
    SQLTemplatePlanoPagamentoLookUp: TStringField;
    MnCancelarPedidodeCompra: TMenuItem;
    EtiquetasdeCodigodeBarras1: TMenuItem;
    TblImpressao: TTable;
    ImprimirPedidodeCompra1: TMenuItem;
    N1: TMenuItem;
    SQLPedidoCompraItem: TRxQuery;
    TblImpressaoNumeroPedido: TStringField;
    TblImpressaoDataEmissaoPedido: TDateField;
    TblImpressaoNomeEmissor: TStringField;
    TblImpressaoEnderecoEmissor: TStringField;
    TblImpressaoBairroEmissor: TStringField;
    TblImpressaoCidadeEmissor: TStringField;
    TblImpressaoEstadoEmissor: TStringField;
    TblImpressaoCGCEmissor: TStringField;
    TblImpressaoFoneEmissor: TStringField;
    TblImpressaoFaxEmissor: TStringField;
    TblImpressaoIEEmissor: TStringField;
    TblImpressaoEmailEmissor: TStringField;
    TblImpressaoCodigoFornecedor: TIntegerField;
    TblImpressaoNomeFornecedor: TStringField;
    TblImpressaoEnderecoFornecedor: TStringField;
    TblImpressaoBairroFornecedor: TStringField;
    TblImpressaoCidadeFornecedor: TStringField;
    TblImpressaoUFFornecedor: TStringField;
    TblImpressaoFoneFornecedor: TStringField;
    TblImpressaoFaxFornecedor: TStringField;
    TblImpressaoObservacaoPedido: TStringField;
    TblImpressaoPrevisaoEntregaPedido: TDateField;
    TblImpressaoCodigoProduto: TIntegerField;
    TblImpressaoReferenciaProduto: TStringField;
    TblImpressaoDescricaoProduto: TStringField;
    TblImpressaoMarcaProduto: TStringField;
    TblImpressaoCorProduto: TStringField;
    TblImpressaoTamanhoProduto: TStringField;
    TblImpressaoVlrIPIProduto: TFloatField;
    TblImpressaoQuantidadeProduto: TFloatField;
    TblImpressaoVlrUnitarioProduto: TFloatField;
    TblImpressaoVlrEncargos: TFloatField;
    TblImpressaoVlrFrete: TFloatField;
    TblImpressaoVlrDescPromo: TFloatField;
    TblImpressaoTipoFrete: TStringField;
    TblImpressaoNomeCompradorEmissor: TStringField;
    TblImpressaoNomeVendedorFornecedor: TStringField;
    TblImpressaoNomeTransportadora: TStringField;
    SQLPedidoCompraItemPCITIPOS: TIntegerField;
    SQLPedidoCompraItemPCITN3CAPEMBAL: TFloatField;
    SQLPedidoCompraItemPCITN3PERCDESC: TFloatField;
    SQLPedidoCompraItemPCITN3PERICM: TFloatField;
    SQLPedidoCompraItemPCITN3PERVIPI: TFloatField;
    SQLPedidoCompraItemPCITN3QTDBONIF: TFloatField;
    SQLPedidoCompraItemPCITN3QTDEMBAL: TFloatField;
    SQLPedidoCompraItemPCITN3QTDENTR: TFloatField;
    SQLPedidoCompraItemPCITN3VLRDESC: TFloatField;
    SQLPedidoCompraItemPCITN3VLREMBAL: TFloatField;
    SQLPedidoCompraItemPCITN3VLRICM: TFloatField;
    SQLPedidoCompraItemPCITN3VLRIPI: TFloatField;
    SQLPedidoCompraItemPCITN3VLRUNIT: TFloatField;
    SQLPedidoCompraItemPDCPA13ID: TStringField;
    SQLPedidoCompraItemPRODICOD: TIntegerField;
    SQLPedidoCompraItemPDCPDEMIS: TDateTimeField;
    SQLPedidoCompraItemFORNICOD: TIntegerField;
    SQLPedidoCompraItemPDCPA255OBS: TStringField;
    SQLPedidoCompraItemPDCPDPREVENTREGA: TDateTimeField;
    SQLPedidoCompraItemPDCPN2VLRFRETE: TFloatField;
    SQLPedidoCompraItemPDCPN2VLRENCARGO: TFloatField;
    SQLPedidoCompraItemPDCPN2DESCPROM: TFloatField;
    SQLPedidoCompraItemPDCPA5TIPOFRETE: TStringField;
    SQLPedidoCompraItemPDCPNOMECOMPRADOR: TStringField;
    SQLPedidoCompraItemPDCPNOMEVENDEDOR: TStringField;
    SQLPedidoCompraItemTRANICOD: TIntegerField;
    SQLPedidoCompraItemEMPRA14CGC: TStringField;
    SQLPedidoCompraItemEMPRA20IE: TStringField;
    SQLPedidoCompraItemEMPRA2UF: TStringField;
    SQLPedidoCompraItemEMPRA20FONE: TStringField;
    SQLPedidoCompraItemEMPRA20FAX: TStringField;
    SQLPedidoCompraItemEMPRA60BAI: TStringField;
    SQLPedidoCompraItemEMPRA60CID: TStringField;
    SQLPedidoCompraItemEMPRA60EMAIL: TStringField;
    SQLPedidoCompraItemEMPRA60END: TStringField;
    SQLPedidoCompraItemEMPRA60RAZAOSOC: TStringField;
    SQLPedidoCompraItemFORNA14CGC: TStringField;
    SQLPedidoCompraItemFORNA15FAX: TStringField;
    SQLPedidoCompraItemFORNA15FONE1: TStringField;
    SQLPedidoCompraItemFORNA20IE: TStringField;
    SQLPedidoCompraItemFORNA2UF: TStringField;
    SQLPedidoCompraItemFORNA60BAI: TStringField;
    SQLPedidoCompraItemFORNA60CID: TStringField;
    SQLPedidoCompraItemFORNA60CONTATO: TStringField;
    SQLPedidoCompraItemFORNA60END: TStringField;
    SQLPedidoCompraItemFORNA60RAZAOSOC: TStringField;
    SQLPedidoCompraItemCORICOD: TIntegerField;
    SQLPedidoCompraItemGRADICOD: TIntegerField;
    SQLPedidoCompraItemGRTMICOD: TIntegerField;
    SQLPedidoCompraItemMARCICOD: TIntegerField;
    SQLPedidoCompraItemPRODA60DESCR: TStringField;
    SQLPedidoCompraItemPRODA60REFER: TStringField;
    TblImpressaoVencimentos: TMemoField;
    ImpPedidoCompra: TCrpe;
    Button4: TRxSpeedButton;
    TblFinanceiro: TTable;
    TblFinanceiroNumeroPedido: TStringField;
    TblFinanceiroDataVencimento: TDateField;
    TblFinanceiroValorVencimento: TFloatField;
    SQLFinanceiro: TRxQuery;
    SQLFinanceiroCTPGA13ID: TStringField;
    SQLFinanceiroCTPGDVENC: TDateTimeField;
    SQLFinanceiroCTPGN3VLR: TFloatField;
    SQLFinanceiroPDCPA13ID: TStringField;
    TblImpressaoCepEmissor: TStringField;
    SQLPedidoCompraItemEMPRA8CEP: TStringField;
    TblImpressaoPlanoPgtoDescricao: TStringField;
    SQLTemplateDestinatario: TStringField;
    ComboFornecedor: TRxDBLookupCombo;
    TblFornecedor: TRxQuery;
    DSTblFornecedor: TDataSource;
    SQLTemplateFornecedorLookup: TStringField;
    FornecedorUFLookUp: TStringField;
    ComboEmpresa: TRxDBLookupCombo;
    TblEmpresa: TRxQuery;
    DSTblEmpresa: TDataSource;
    SQLTemplateEmpresaLookup: TStringField;
    SQLTemplateEmpresaUFLookUp: TStringField;
    ComboTransportadora: TRxDBLookupCombo;
    TblTransportadora: TRxQuery;
    DSTblTransportadora: TDataSource;
    SQLTemplateTransportadoraLookup: TStringField;
    ComboPlanoPagamento: TRxDBLookupCombo;
    TblPlanoPagamento: TRxQuery;
    DSTblPlanoPagamento: TDataSource;
    TblFornecedorFORNICOD: TIntegerField;
    TblFornecedorFORNA60RAZAOSOC: TStringField;
    TblFornecedorFORNA14CGC: TStringField;
    TblFornecedorFORNA2UF: TStringField;
    SQLPedidoCompraItemUNIDICOD: TIntegerField;
    TblImpressaoUnidade: TStringField;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    ComboFornecedorConsulta: TRxDBLookupCombo;
    TblImpressaoVlrEmbalProduto: TFloatField;
    EditCNPJ: TMaskEdit;
    Label20: TLabel;
    TblImpressaoEmailFornecedor: TStringField;
    SQLPedidoCompraItemFORNA60EMAIL: TStringField;
    Label39: TLabel;
    EvDBNumEdit10: TEvDBNumEdit;
    SQLTotalPedAbertos: TRxQuery;
    DSSQLTotalPedAbertos: TDataSource;
    SQLTotalPedAbertosTOTALPEDIDOS: TFloatField;
    TabStatisticas: TTabSheet;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label23: TLabel;
    GroupBox1: TGroupBox;
    De: TDateEdit;
    Label21: TLabel;
    Label22: TLabel;
    Ate: TDateEdit;
    Label24: TLabel;
    EvDBNumEdit7: TEvDBNumEdit;
    Label25: TLabel;
    EvDBNumEdit8: TEvDBNumEdit;
    Label26: TLabel;
    EvDBNumEdit9: TEvDBNumEdit;
    BtCalc: TBitBtn;
    SQLTotalPedEncerrados: TRxQuery;
    dsSQLTotalPedEncerrados: TDataSource;
    SQLTotalPedEncerradosTOTALPEDIDOS: TFloatField;
    SQLTotalPedFaturados: TRxQuery;
    dsSQLTotalPedFaturados: TDataSource;
    SQLTotalPedFaturadosTOTALPEDIDOS: TFloatField;
    Button5: TRxSpeedButton;
    SQLTrocas: TRxQuery;
    SQLTrocasMOVDA13ID: TStringField;
    SQLTrocasEMPRICOD: TIntegerField;
    SQLTrocasMOVDICOD: TIntegerField;
    SQLTrocasOPESICOD: TIntegerField;
    SQLTrocasMOVDDMOVIMENTO: TDateTimeField;
    SQLTrocasMOVDA255OBS: TStringField;
    SQLTrocasMOVDCCONLUIDO: TStringField;
    SQLTrocasPENDENTE: TStringField;
    SQLTrocasREGISTRO: TDateTimeField;
    SQLTrocasUSUAA60LOGIN: TStringField;
    SQLTrocasUSUAICOD: TIntegerField;
    SQLTrocasFORNICOD: TIntegerField;
    SQLTrocasMOVDCTROCA: TStringField;
    SQLTrocasCLIEA13ID: TStringField;
    SQLTrocasMVDIIITEM: TIntegerField;
    SQLTrocasPRODICOD: TIntegerField;
    SQLTrocasMVDIN3QTD: TFloatField;
    SQLTrocasLOTEA30NRO: TStringField;
    SQLTrocasMVDIN3VLRCUSTO: TFloatField;
    SQLTrocasPRODN3VLRCOMPRA: TFloatField;
    SQLTrocasPRODN3VLRVENDA: TFloatField;
    SQLTrocasFORNA60RAZAOSOC: TStringField;
    SQLTrocasFORNA60NOMEFANT: TStringField;
    SQLTrocasTPFRICOD: TIntegerField;
    SQLTrocasFORNA60CONTATO: TStringField;
    SQLTrocasFORNCFISJURID: TStringField;
    SQLTrocasFORNA14CGC: TStringField;
    SQLTrocasFORNA20IE: TStringField;
    SQLTrocasFORNA11CPF: TStringField;
    SQLTrocasFORNA10RG: TStringField;
    SQLTrocasFORNA60END: TStringField;
    SQLTrocasFORNA60BAI: TStringField;
    SQLTrocasFORNA60CID: TStringField;
    SQLTrocasFORNA2UF: TStringField;
    SQLTrocasFORNA8CEP: TStringField;
    SQLTrocasFORNA15FONE1: TStringField;
    SQLTrocasFORNA15FONE2: TStringField;
    SQLTrocasFORNA15FAX: TStringField;
    SQLTrocasFORNA60EMAIL: TStringField;
    SQLTrocasFORNA60URL: TStringField;
    SQLTrocasFORNTOBS: TStringField;
    SQLTrocasFORNA30CODCONTABIL: TStringField;
    SQLTrocasPLCTA15CODDEBITO: TStringField;
    SQLTrocasRAMOICOD: TIntegerField;
    SQLTrocasSRAMICOD: TIntegerField;
    SQLTrocasFORNA30LOCCATALOG: TStringField;
    SQLTrocasFORNCTEMCATALOG: TStringField;
    SQLTrocasFORNA15CODNOFORN: TStringField;
    SQLTrocasFORNCPERMITETROCA: TStringField;
    SQLTrocasFORNDCAD: TDateTimeField;
    SQLTrocasREPRICOD: TIntegerField;
    SQLTrocasFORNCSIMPLES: TStringField;
    SQLTrocasFORNA15CXPOSTAL: TStringField;
    SQLTrocasPRODA30CODESTRUT: TStringField;
    SQLTrocasPRODA60CODBAR: TStringField;
    SQLTrocasPRODA15CODANT: TStringField;
    SQLTrocasPRODIAGRUPGRADE: TIntegerField;
    SQLTrocasPRODA60REFER: TStringField;
    SQLTrocasPRODA60DESCR: TStringField;
    SQLTrocasPRODA30ADESCRREDUZ: TStringField;
    SQLTrocasPRODICODBALANCA: TIntegerField;
    SQLTrocasPRODA15APAVIM: TStringField;
    SQLTrocasPRODA15RUA: TStringField;
    SQLTrocasPRODA15PRATEL: TStringField;
    SQLTrocasCLFSICOD: TIntegerField;
    SQLTrocasMARCICOD: TIntegerField;
    SQLTrocasUNIDICOD: TIntegerField;
    SQLTrocasGRADICOD: TIntegerField;
    SQLTrocasGRTMICOD: TIntegerField;
    SQLTrocasGRUPICOD: TIntegerField;
    SQLTrocasSUBGICOD: TIntegerField;
    SQLTrocasVARIICOD: TIntegerField;
    SQLTrocasICMSICOD: TIntegerField;
    SQLTrocasPRODN3PESOBRUTO: TFloatField;
    SQLTrocasPRODN3PESOLIQ: TFloatField;
    SQLTrocasPRODN3CAPACEMBAL: TFloatField;
    SQLTrocasPRODDCAD: TDateTimeField;
    SQLTrocasPRODDULTALTER: TDateTimeField;
    SQLTrocasPRODN3VLRVENDAPROM: TFloatField;
    SQLTrocasPRODDINIPROMO: TDateTimeField;
    SQLTrocasPRODDFIMPROMO: TDateTimeField;
    SQLTrocasPRODN3VLRCUSTO: TFloatField;
    SQLTrocasPRODN3VLRCUSTOMED: TFloatField;
    SQLTrocasPRODN3PERCIPI: TFloatField;
    SQLTrocasPRODN3PERCMARGLUCR: TFloatField;
    SQLTrocasPRODCATIVO: TStringField;
    SQLTrocasPRODCSERVICO: TStringField;
    SQLTrocasPRODCGERACOMIS: TStringField;
    SQLTrocasPRODN2COMISVISTA: TFloatField;
    SQLTrocasPRODN2COMISPRAZO: TFloatField;
    SQLTrocasPRODDIMOBOLIZ: TDateTimeField;
    SQLTrocasPRODICODPAI: TIntegerField;
    SQLTrocasPRODCTIPOBAIXA: TStringField;
    SQLTrocasPRODN3QTDEBAIXA: TFloatField;
    SQLTrocasCORICOD: TIntegerField;
    SQLTrocasPRODIORIGEM: TIntegerField;
    SQLTrocasPRODDULTATUALIZ: TDateTimeField;
    SQLTrocasPRODA60DIMENSAO: TStringField;
    SQLTrocasPRODISITTRIB: TIntegerField;
    SQLTrocasPRODITIPOPRODBALAN: TStringField;
    SQLTrocasPRODICODETIQBAL: TIntegerField;
    SQLTrocasPRODIDIASVALIDADE: TIntegerField;
    SQLTrocasPRODN3VLRCOMPRAMED: TFloatField;
    SQLTrocasPRODN3DOLARCUSTO: TFloatField;
    SQLTrocasPRODN3DOLARCOMPRA: TFloatField;
    SQLTrocasPRODN3DOLARVENDA: TFloatField;
    SQLTrocasPRODBIMAGEM: TBlobField;
    SQLTrocasPRODCSUBSTRIB: TStringField;
    SQLTrocasPRODCTEMNROSERIE: TStringField;
    SQLTrocasPRODA03GARANTIA: TStringField;
    SQLTrocasPRODA254COMPQUIMICA: TStringField;
    SQLTrocasPRODCTIPO: TStringField;
    SQLTrocasPRODN2PERCFRETE: TFloatField;
    SQLTrocasPRODN2PERDA: TFloatField;
    SQLTrocasPRODN2PIS: TFloatField;
    SQLTrocasPRODN3ALTURA: TFloatField;
    SQLTrocasPRODN3COMPRIMENTO: TFloatField;
    SQLTrocasPRODN3DIMENTOTAL: TFloatField;
    SQLTrocasPRODN3LARGURA: TFloatField;
    SQLTrocasPRODA30INF01ETQBARRAS: TStringField;
    SQLTrocasPRODA30INF02ETQBARRAS: TStringField;
    SQLTrocasCOLEICOD: TIntegerField;
    SQLTrocasPRODN2PERCDESP: TFloatField;
    SQLTrocasPRODN2PERCSUBST: TFloatField;
    SQLTrocasPRODN3VLRTABFOR: TFloatField;
    SQLTrocasDECRICOD: TIntegerField;
    SQLTrocasPRODN3PERCMARGLUC2: TFloatField;
    SQLTrocasPRODN3PERCMGLVFIXA: TFloatField;
    SQLTrocasPRODN3PERCMGLAFIXA: TFloatField;
    SQLTrocasPRODDULTCOMPRA: TDateTimeField;
    SQLTrocasPRODDULTVENDA: TDateTimeField;
    SQLTrocasPRODN2PERCDIFICM: TFloatField;
    SQLTrocasPRODN3QTDULTCOMPRA: TFloatField;
    SQLTrocasPRODIPRINCIPAL: TIntegerField;
    SQLTrocasPRODCPERMITETROCA: TStringField;
    SQLTrocasPRODDPREVCOMPRA: TDateTimeField;
    SQLTrocasPRODCCOFINS: TStringField;
    SQLTrocasPRODCIMPRECEITA: TStringField;
    SQLTrocasPRODA10MEDIDA: TStringField;
    SQLTrocasPRODN3MULTIPLIC: TFloatField;
    SQLTrocasPRODN2DOSAGEM: TFloatField;
    SQLTrocasPRODTEXTENDIDO: TStringField;
    SQLTrocasPRODTOBSCOMPLEM: TStringField;
    SQLTrocasPRODN3VLRVENDA2: TFloatField;
    SQLTrocasPRODCIMPETIQCDBAR: TStringField;
    SQLTrocasMOVDCTROCASTAT: TStringField;
    dsSQLTrocas: TDataSource;
    TblImpressaoEmailVendedor: TStringField;
    MnAlterarObs: TMenuItem;
    TblImpressaoVlrST: TFloatField;
    SQLPedidoCompraItemPCITN3VLRST: TFloatField;
    SQLPedidoCompraItemPCITN3PERCST: TFloatField;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure MnCancelarPedidodeCompraClick(Sender: TObject);
    procedure BtnFornecedorClick(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnPlanoPagtoClick(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EtiquetasdeCodigodeBarras1Click(Sender: TObject);
    procedure ImprimirPedidodeCompra1Click(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboTransportadoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPlanoPagamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure BtCalcClick(Sender: TObject);
    procedure ComboFornecedorExit(Sender: TObject);
    procedure MnAlterarObsClick(Sender: TObject);
  private
    StatusAnterior:String;
    CancelandoPedido, CallDetail :Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoCompra: TFormCadastroPedidoCompra;

implementation

uses DataModulo, CadastroPedidoCompraItem, CadastroFornecedor, CadastroTransportadora, CadastroPlanoPagamento,
   UnitLibrary, CadastroPedidoCompraFinanceiro, DataModuloTemplate, WaitWindow;
   //TelaEmissaoEtiquetasCodigoBarras, 

{$R *.DFM}

procedure TFormCadastroPedidoCompra.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  StatusAnterior                    := '';
  SQLTemplatePDCPCSTATUS.Value      := 'A';
  SQLTemplatePDCPA5TIPOFRETE.Value  := 'C';
  SQLTemplatePDCPDEMIS.Value        := Date;
  SQLTemplatePDCPN2TOTITENS.Value   := 0;
  SQLTemplatePDCPN3TOTDESC.Value    := 0;
  SQLTemplatePDCPN2VLRENCARGO.Value := 0;
  SQLTemplatePDCPN2VLRIPI.Value     := 0;
  SQLTemplatePDCPN2DESCPROM.Value   := 0;
  SQLTemplatePDCPN2VLRFRETE.Value   := 0;
  SQLTemplateEMPRICODDEST.Value     := EmpresaCorrente;
end;

procedure TFormCadastroPedidoCompra.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      DSMasterSys := DsTemplate;
      if SQLTemplate.FindField('EMPRICODDEST').asString <> '' then
        EmpresaPadraoPedidosCompra := SQLTemplate.FindField('EMPRICODDEST').asString
      else
        EmpresaPadraoPedidosCompra := EmpresaPadrao;

      CriaFormulario(TFormCadastroPedidoCompraItem,'FormCadastroPedidoCompraItem',True,True,True,'Pedido de Compra Nº ' + SQLTemplatePDCPA13ID.Value);
    end;
  If (Sender as TRxSpeedButton).Name='Button4' Then
    begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroPedidoCompraFinanceiro,'FormCadastroPedidoCompraFinanceiro',True,False,True,'Pedido de Compra Nº ' + SQLTemplatePDCPA13ID.Value);
    end;
  If (Sender as TRxSpeedButton).Name='Button5' Then
    Begin
      PagePrincipal.ActivePage := TabStatisticas ;
    end;
end;

procedure TFormCadastroPedidoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='PedidoCompra';
end;

procedure TFormCadastroPedidoCompra.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DM.InserindoItemPC Then Exit;
  SQLTemplateTotalCalc.asFloat := SQLTemplatePDCPN2TOTITENS.asFloat - SQLTemplatePDCPN2DESCPROM.asFloat + SQLTemplatePDCPN2VLRENCARGO.asFloat + SQLTemplatePDCPN2VLRFRETE.AsFloat;
end;

procedure TFormCadastroPedidoCompra.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  If Not CancelandoPedido Then
    If (SQLTemplate.FindField('PDCPCSTATUS').asString='E') Then
      Begin
        ShowMessage('Este Pedido está Encerrado! Não pode ser alterado!');
        Abort;
      End;
  If Not CancelandoPedido Then
    If (SQLTemplate.FindField('PDCPCSTATUS').asString='F') Then
      Begin
        ShowMessage('Este Pedido está Faturado! Não pode ser alterado!');
        Abort;
      End;
  StatusAnterior := SQLTemplate.FindField('PDCPCSTATUS').asString;
  inherited;
end;

procedure TFormCadastroPedidoCompra.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  If SQLTemplate.FindField('PDCPCSTATUS').asString='E' Then
    Begin
      ShowMessage('Pedido Encerrado, não pode ser excluído!');
      Abort;
    End;
  inherited;
end;

procedure TFormCadastroPedidoCompra.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  If (SQLTemplateFORNICOD.AsString = '')  Then
    Begin
      ShowMessage('É obrigatório informar um Fornecedor!');
      Abort;
    End;

  If Not DM.InserindoItemPC Then
    Begin
      If (StatusAnterior = 'C')  Then
        Begin
          ShowMessage('Este pedido está cancelado e não pode ser modificado!');
          Abort;
        End;
      If (StatusAnterior = 'E') and (StatusAnterior<>SQLTemplate.FindField('PDCPCSTATUS').asString) Then
        If (SQLTemplate.FindField('PDCPCSTATUS').asString = 'A') Then
          Begin
            ShowMessage('Pedidos Encerrados não podem ser abertos!');
            Abort;
          End;
      If (StatusAnterior = 'F') and (StatusAnterior<>SQLTemplate.FindField('PDCPCSTATUS').asString) Then
        Begin
          ShowMessage('Pedidos Faturados não podem ser modificados!');
          Abort;
        End;
    End;
  inherited;
end;

procedure TFormCadastroPedidoCompra.MnCancelarPedidodeCompraClick(
  Sender: TObject);
begin
  inherited;
  If (Not SQLTemplate.IsEmpty) And (SQLTemplate.FindField('PDCPCSTATUS').asString = 'E') Then
    Begin
      if Application.MessageBox('Deseja realmente cancelar este Pedido?','Atenção',MB_YesNo + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION)=IdYes then
        begin
          CancelandoPedido := True;
          SQLTemplate.Edit;
          SQLTemplate.FindField('PDCPCSTATUS').asString := 'C';
          SQLTemplate.Post;
          DM.SQLTemplate.Close;
          DM.SQLTemplate.SQL.Clear;
          DM.SQLTemplate.SQL.Add('Delete from ContasPagar where PDCPA13ID = ''' + SQLTemplate.FindField('PDCPA13ID').AsString + '''');
          DM.SQLTemplate.ExecSQL;
          CancelandoPedido := False;
        end;
    End
  else
    begin
      if SQLTemplate.IsEmpty then
        Informa('Você deve selecionar um Pedido antes de tentar cancelar!')
      else
        if SQLTemplate.FindField('PDCPCSTATUS').asString = 'A' then
          Informa('Este Pedido está em Aberto, não pode ser cancelado!')
        else
          if SQLTemplate.FindField('PDCPCSTATUS').asString = 'C' then
            Informa('Este Pedido já está Cancelado!');
      Exit;
    end;
end;

procedure TFormCadastroPedidoCompra.BtnFornecedorClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('FORNICOD');
  FieldOrigem := 'FORNICOD';
  DataSetLookup := TBLFornecedor;
  CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,True,False,'');
end;

procedure TFormCadastroPedidoCompra.DBEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnFornecedor.Click;
end;

procedure TFormCadastroPedidoCompra.BtnTransportadoraClick(
  Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('TRANICOD');
  FieldOrigem := 'TRANICOD';
  DataSetLookup := TBLTransportadora;
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,False,'');
end;

procedure TFormCadastroPedidoCompra.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnTransportadora.Click;
end;

procedure TFormCadastroPedidoCompra.BtnPlanoPagtoClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('PLPGICOD');
  FieldOrigem := 'PLPGICOD';
  DataSetLookup := TblPlanoPagamento;
  CriaFormulario(TFormCadastroPlanoPagamento,'FormCadastroPlanoPagamento',False,True,True,'');
end;

procedure TFormCadastroPedidoCompra.DBEdit8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnPlanoPagto.Click;
end;

procedure TFormCadastroPedidoCompra.EtiquetasdeCodigodeBarras1Click(
  Sender: TObject);
begin
  inherited;
  //EtiquetaPedidoCompra := SQLTemplate.FindField('PDCPA13ID').asString;  #ver
  //CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,True,'');
end;

procedure TFormCadastroPedidoCompra.ImprimirPedidodeCompra1Click(
  Sender: TObject);
begin
  inherited;
  SQLPedidoCompraItem.Close ;
  SQLPedidoCompraItem.MacroByName('MPedido').Value := 'PEDIDOCOMPRAITEM.PDCPA13ID = ''' + SQLTemplatePDCPA13ID.Value + '''' ;
  SQLPedidoCompraItem.Open ;

  TblImpressao.Close ;
  if TblImpressao.Exists then
    TblImpressao.DeleteTable ;
  TblImpressao.CreateTable ;
  TblImpressao.Open ;

  TblFinanceiro.Close ;
  if TblFinanceiro.Exists then
    TblFinanceiro.DeleteTable ;
  TblFinanceiro.CreateTable ;
  TblFinanceiro.Open ;

  SQLPedidoCompraItem.First ;
  while not SQLPedidoCompraItem.EOF do
  begin
    TblImpressao.Append ;
    TblImpressaoNumeroPedido.Value          := SQLPedidoCompraItemPDCPA13ID.Value ;
    TblImpressaoDataEmissaoPedido.Value     := SQLPedidoCompraItemPDCPDEMIS.Value ;
    TblImpressaoNomeEmissor.Value           := SQLPedidoCompraItemEMPRA60RAZAOSOC.Value ;
    TblImpressaoEnderecoEmissor.Value       := SQLPedidoCompraItemEMPRA60END.Value ;
    TblImpressaoBairroEmissor.Value         := SQLPedidoCompraItemEMPRA60BAI.Value ;
    TblImpressaoCidadeEmissor.Value         := SQLPedidoCompraItemEMPRA60CID.Value ;
    TblImpressaoEstadoEmissor.Value         := SQLPedidoCompraItemEMPRA2UF.Value ;
    TblImpressaoCGCEmissor.Value            := SQLPedidoCompraItemEMPRA14CGC.Value ;
    TblImpressaoFoneEmissor.Value           := SQLPedidoCompraItemEMPRA20FONE.Value ;
    TblImpressaoFaxEmissor.Value            := SQLPedidoCompraItemEMPRA20FAX.Value ;
    TblImpressaoIEEmissor.Value             := SQLPedidoCompraItemEMPRA20IE.Value ;
    TblImpressaoCepEmissor.Value            := SQLPedidoCompraItemEMPRA8CEP.Value ;
    TblImpressaoEmailEmissor.Value          := SQLPedidoCompraItemEMPRA60EMAIL.Value ;
    TblImpressaoCodigoFornecedor.Value      := SQLPedidoCompraItemFORNICOD.Value ;
    TblImpressaoNomeFornecedor.Value        := SQLPedidoCompraItemFORNA60RAZAOSOC.Value ;
    TblImpressaoEnderecoFornecedor.Value    := SQLPedidoCompraItemFORNA60END.Value ;
    TblImpressaoBairroFornecedor.Value      := SQLPedidoCompraItemFORNA60BAI.Value ;
    TblImpressaoCidadeFornecedor.Value      := SQLPedidoCompraItemFORNA60CID.Value ;
    TblImpressaoUFFornecedor.Value          := SQLPedidoCompraItemFORNA2UF.Value ;
    TblImpressaoFoneFornecedor.Value        := SQLPedidoCompraItemFORNA15FONE1.Value ;
    TblImpressaoFaxFornecedor.Value         := SQLPedidoCompraItemFORNA15FAX.Value ;
    TblImpressaoEmailFornecedor.Value       := SQLPedidoCompraItemFORNA60EMAIL.Value ;
    TblImpressaoObservacaoPedido.Value      := SQLPedidoCompraItemPDCPA255OBS.Value ;
    TblImpressaoPrevisaoEntregaPedido.Value := SQLPedidoCompraItemPDCPDPREVENTREGA.Value ;
    TblImpressaoCodigoProduto.Value         := SQLPedidoCompraItemPRODICOD.Value ;
    TblImpressaoReferenciaProduto.Value     := SQLPedidoCompraItemPRODA60REFER.Value ;
    TblImpressaoDescricaoProduto.Value      := SQLPedidoCompraItemPRODA60DESCR.Value ;
    TblImpressaoPlanoPgtoDescricao.Value    := SQLTemplatePlanoPagamentoLookUp.Value;
    //------------------------------------------------\\
    if SQLPedidoCompraItemUNIDICOD.AsString <> '' then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select UNIDA5DESCR from UNIDADE') ;
      DM.SQLTemplate.SQL.Add('where UNIDICOD = ' + SQLPedidoCompraItemUNIDICOD.AsString) ;
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.EOF then
        TblImpressaoUnidade.Value := DM.SQLTemplate.FieldByName('UNIDA5DESCR').Value ;
    end ;
    //------------------------------------------------\\
    if SQLPedidoCompraItemMARCICOD.AsString <> '' then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select MARCA60DESCR from MARCA') ;
      DM.SQLTemplate.SQL.Add('where MARCICOD = ' + SQLPedidoCompraItemMARCICOD.AsString) ;
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.EOF then
        TblImpressaoMarcaProduto.Value := DM.SQLTemplate.FieldByName('MARCA60DESCR').Value ;
    end ;
    //------------------------------------------------\\
    if SQLPedidoCompraItemCORICOD.AsString <> '' then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select CORA30DESCR from COR') ;
      DM.SQLTemplate.SQL.Add('where CORICOD = ' + SQLPedidoCompraItemCORICOD.AsString) ;
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.EOF then
        TblImpressaoCorProduto.Value := DM.SQLTemplate.FieldByName('CORA30DESCR').Value ;
    end ;
    //------------------------------------------------\\
    if (SQLPedidoCompraItemGRADICOD.AsString <> '') and
       (SQLPedidoCompraItemGRTMICOD.AsString <> '') then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select GRTMA5DESCR from GRADETAMANHO') ;
      DM.SQLTemplate.SQL.Add('where GRADICOD = ' + SQLPedidoCompraItemGRADICOD.AsString) ;
      DM.SQLTemplate.SQL.Add('and   GRTMICOD = ' + SQLPedidoCompraItemGRTMICOD.AsString) ;
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.EOF then
        TblImpressaoTamanhoProduto.Value := DM.SQLTemplate.FieldByName('GRTMA5DESCR').Value ;
    end ;
    //------------------------------------------------\\
    TblImpressaoVlrIPIProduto.Value         := SQLPedidoCompraItemPCITN3VLRIPI.Value ;
{    TblImpressaoQuantidadeProduto.Value     := SQLPedidoCompraItemPCITN3QTDEMBAL.Value *
                                               SQLPedidoCompraItemPCITN3CAPEMBAL.Value;}
    TblImpressaoQuantidadeProduto.Value     := SQLPedidoCompraItemPCITN3QTDEMBAL.Value;

    TblImpressaoVlrUnitarioProduto.Value    := SQLPedidoCompraItemPCITN3VLRUNIT.Value ;
    TblImpressaoVlrEmbalProduto.Value       := SQLPedidoCompraItemPCITN3VLREMBAL.Value ;
    TblImpressaoVlrST.Value                 := SQLPedidoCompraItemPCITN3VLRST.Value;

    TblImpressaoVlrEncargos.Value           :=  SQLPedidoCompraItemPDCPN2VLRENCARGO.Value ;
    TblImpressaoVlrFrete.Value              :=  SQLPedidoCompraItemPDCPN2VLRFRETE.Value ;
    TblImpressaoVlrDescPromo.Value          :=  SQLPedidoCompraItemPDCPN2DESCPROM.Value ;
    case SQLPedidoCompraItemPDCPA5TIPOFRETE.Value[1] of
      'C' : TblImpressaoTipoFrete.Value := 'CIF' ;
      'F' : TblImpressaoTipoFrete.Value := 'FOB' ;
    end ;
    TblImpressaoNomeCompradorEmissor.Value   := SQLPedidoCompraItemPDCPNOMECOMPRADOR.Value ;
    TblImpressaoNomeVendedorFornecedor.Value := SQLPedidoCompraItemPDCPNOMEVENDEDOR.Value ;
    TblImpressaoEmailVendedor.Value          := SQLLocate('REPRESENTANTE','REPRICOD','REPRA60RAZAOSOC',
                                                SQLLocate('FORNECEDOR','FORNICOD','REPRICOD',SQLPedidoCompraItemFORNICOD.AsString));
    //------------------------------------------------\\
    if SQLPedidoCompraItemTRANICOD.AsString <> '' then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select TRANA60RAZAOSOC from TRANSPORTADORA') ;
      DM.SQLTemplate.SQL.Add('where TRANICOD = ' + SQLPedidoCompraItemTRANICOD.AsString) ;
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.EOF then
        TblImpressaoNomeTransportadora.Value := DM.SQLTemplate.FieldByName('TRANA60RAZAOSOC').Value ;
    end ;
    TblImpressao.Post ;
    SQLPedidoCompraItem.Next ;
  end ;

  SQLFinanceiro.Close ;
  SQLFinanceiro.MacroByName('MFiltro').Value := 'PDCPA13ID = ''' + SQLPedidoCompraItemPDCPA13ID.Value + '''' ;
  SQLFinanceiro.Open ;
  while not SQLFinanceiro.Eof do
    begin
      TblFinanceiro.Append ;
      TblFinanceiroNumeroPedido.Value    := SQLPedidoCompraItemPDCPA13ID.Value ;
      TblFinanceiroDataVencimento.Value  := SQLFinanceiroCTPGDVENC.Value ;
      TblFinanceiroValorVencimento.Value := SQLFinanceiroCTPGN3VLR.Value ;
      TblFinanceiro.Post ;
      SQLFinanceiro.Next ;
    end ;
  ImpPedidoCompra.ReportName := DM.PathAplicacao + '\PedidoCompra\Pedido de Compra.rpt' ;
  ImpPedidoCompra.Execute;
end;

procedure TFormCadastroPedidoCompra.SQLTemplateAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  CallDetail := True;
end;

procedure TFormCadastroPedidoCompra.SQLTemplateAfterPost(
  DataSet: TDataSet);
var Item : Integer;
begin
  inherited;
  if CallDetail then
    begin
      Button3.Click;
      CallDetail := False;
    end;
  // Encerrar Pedido de Compra e atualizar a ficha dos produtos com a data de Prev.Entrega
  if (not CallDetail) and (StatusAnterior = 'A') and (SQLTemplatePDCPCSTATUS.AsString = 'E') then
    begin
      SQLPedidoCompraItem.Close ;
      SQLPedidoCompraItem.MacroByName('MPedido').Value := 'PEDIDOCOMPRAITEM.PDCPA13ID = ''' + SQLTemplatePDCPA13ID.Value + '''' ;
      SQLPedidoCompraItem.Open ;
      MakeWindow(SQLPedidoCompraItem.RecordCount, 'Aguarde, Atualizando Ficha de Produtos!');
      Item := 1;
      SQLPedidoCompraItem.First;
      While Not SQLPedidoCompraItem.Eof Do
        Begin
          SetProgress(Item);
          DM.SQLTemplate.Close;
          DM.SQLTemplate.sql.Clear;
          DM.SQLTemplate.sql.Add('Update PRODUTO Set Pendente=''S'', PRODDPREVCOMPRA = '+''''+ FormatDateTime('mm/dd/yyyy',SQLTemplatePDCPDPREVENTREGA.Value)+'''');
          DM.SQLTemplate.sql.Add('Where PRODICOD = '+ SQLPedidoCompraItem.FindField('PRODICOD').AsString);
          DM.SQLTemplate.ExecSQL;
          SQLPedidoCompraItem.Next;
          Item := Item + 1;
        End;
      DestroyWindow;
    end;
end;

procedure TFormCadastroPedidoCompra.ComboFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnFornecedor.Click;
end;

procedure TFormCadastroPedidoCompra.ComboTransportadoraKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnTransportadora.Click;
end;

procedure TFormCadastroPedidoCompra.ComboPlanoPagamentoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnPlanoPagto.Click;
end;

procedure TFormCadastroPedidoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := nil ;
  EmpresaPadraoPedidosCompra := '';
end;

procedure TFormCadastroPedidoCompra.BTNLocalizarClick(Sender: TObject);
var
 Clausula : String;
 CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if (EditCNPJ.Text = '') and (ComboFornecedorConsulta.Value = '') then
    begin
      Informa('Pesquisa incompleta, verifique!');
      Exit;
    end;
  if (EditCNPJ.Text <> '') and (ComboFornecedorConsulta.Value = '') then
    begin
      dm.SQLTemplate.close;
      dm.SQLTemplate.sql.clear;
      dm.SQLTemplate.sql.Add('Select Fornicod from Fornecedor Where FORNA14CGC = '''+EditCNPJ.Text+'''');
      dm.SQLTemplate.Open;
      if not dm.SQLTemplate.IsEmpty then
        Clausula := 'FORNICOD = '+ dm.SQLTemplate.fieldbyname('FORNICOD').AsString;
    end;
  if (EditCNPJ.Text = '') and (ComboFornecedorConsulta.Value <> '') then
    Clausula := 'FORNICOD = '+ ComboFornecedorConsulta.Value;

  EditCNPJ.Text    := '';
  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));
  if Clausula <> '' then
    begin
      SQLTemplate.Close;
      if Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text) <> 0 Then
        begin
          TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text,1,Pos('ORDER BY',TRxQuery(SQLTemplate).SQL.Text)-1));
        end;
      SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
      SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
      SQLTemplate.Open;
    end
  else
    Informa('Pesquisa incompleta, verifique!');
end;

procedure TFormCadastroPedidoCompra.SQLTemplateAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  SQLTotalPedAbertos.Close;
  SQLTotalPedAbertos.MacroByName('MFiltro').Value := '0=0';
  SQLTotalPedAbertos.Open;
end;

procedure TFormCadastroPedidoCompra.BtCalcClick(Sender: TObject);
begin
  inherited;
  SQLTotalPedAbertos.Close;
  SQLTotalPedAbertos.MacroByName('MFiltro').Value   := 'PDCPDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                       'PDCPDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''';
  SQLTotalPedAbertos.Open;

  SQLTotalPedFaturados.Close;
  SQLTotalPedFaturados.MacroByName('MFiltro').Value   := 'PDCPDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                         'PDCPDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''';
  SQLTotalPedFaturados.Open;

  SQLTotalPedEncerrados.Close;
  SQLTotalPedEncerrados.MacroByName('MFiltro').Value   := 'PDCPDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                          'PDCPDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''';
  SQLTotalPedEncerrados.Open;
end;

procedure TFormCadastroPedidoCompra.ComboFornecedorExit(Sender: TObject);
begin
  inherited;
  try
    if ComboFornecedor.Value <> '' then
      SQLTemplatePDCPNOMEVENDEDOR.Value := SQLLocate('REPRESENTANTE','REPRICOD','REPRA60RAZAOSOC',SQLLocate('FORNECEDOR','FORNICOD','REPRICOD', ComboFornecedor.Value));
  except
    Application.ProcessMessages;
  end;

  if ComboFornecedor.Value <> '' then
    begin
      SQLTrocas.Close;
      SQLTrocas.MacroByName('MFornecedor').Value := 'MovimentoDiverso.Fornicod = '+ SQLTemplateFORNICOD.AsString;
      SQLTrocas.Open;
      if not SQLTrocas.IsEmpty then
        ShowMessage('Existem trocas Pendentes para esse Fornecedor! Verifique o cadastro!');
      SQLTrocas.Close;
    end;
end;

procedure TFormCadastroPedidoCompra.MnAlterarObsClick(Sender: TObject);
var NovaObs : String;
begin
  inherited;
  NovaObs := InputBox('Atenção!','Digite a nova Observação!',SQLTemplatePDCPA255OBS.AsString);
  if Pergunta('SIM','Confirma a alteração?') then
    begin
      dm.SQLTemplate.Close;
      dm.SQLTemplate.SQL.Clear;
      dm.SQLTemplate.SQL.Add('Update PedidoCompra Set Pendente=''S'', PDCPA255OBS = '''+NovaObs+''' where PDCPA13ID = '''+SQLTemplatePDCPA13ID.AsString+'''');
      dm.SQLTemplate.ExecSQL;
      SQLTemplate.Close;
    end;
end;

end.
