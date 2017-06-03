unit CadastroCliente;

interface                           

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  VarSYS, FormResources, ToolEdit, RXDBCtrl, CurrEdit, MemTable, DBActns, ActnList, ImgList,
  EDBNum, OleCtrls, RxLookup, UCrpe32, Placemnt, ExtDlgs, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl, ppBands,
  ppCache, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;
                                                           
type
  TFormCadastroCliente = class(TFormCadastroTEMPLATE)
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCLIEA14CGC: TStringField;
    SQLTemplateCLIEA20IE: TStringField;
    SQLTemplateCLIEA11CPF: TStringField;
    SQLTemplateCLIEA10RG: TStringField;
    SQLTemplateCLIEA15FONE1: TStringField;
    SQLTemplateCLIEA15FONE2: TStringField;
    SQLTemplateCLIEA15FAX: TStringField;
    SQLTemplateCLIEA30OUTROSDOC: TStringField;
    SQLTemplateCLIECSEXO: TStringField;
    SQLTemplateCLIEA60PROFISSAO: TStringField;
    SQLTemplateCLIEA60ENDRES: TStringField;
    SQLTemplateCLIEA60BAIRES: TStringField;
    SQLTemplateCLIEA60CIDRES: TStringField;
    SQLTemplateCLIEA2UFRES: TStringField;
    SQLTemplateCLIEA8CEPRES: TStringField;
    SQLTemplateCLIEA60EMAIL: TStringField;
    SQLTemplateCLIEA60URL: TStringField;
    SQLTemplateCLIEA60NOMEPAI: TStringField;
    SQLTemplateCLIEA60NOMEMAE: TStringField;
    SQLTemplateCLIEDNASC: TDateTimeField;
    SQLTemplateCLIETOBS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    LabelNomeFantasia: TLabel;
    DBEditNomeFantasia: TDBEdit;
    SQLTemplateCLIEICOD: TIntegerField;
    SQLTemplateCLIEA5FISJURID: TStringField;
    SQLTemplateCLIEA60RAZAOSOC: TStringField;
    SQLTemplateCLIEA60NOMEFANT: TStringField;
    Button5: TRxSpeedButton;
    Button6: TRxSpeedButton;
    Button7: TRxSpeedButton;
    Button8: TRxSpeedButton;
    TabSheetAdicional: TTabSheet;
    TabSheetDadosCompra: TTabSheet;
    SQLTemplateBANCA5COD: TStringField;
    SQLTemplateCLIEA60CONTATO: TStringField;
    SQLTemplateCLIEN2RENDA: TBCDField;
    SQLTemplateCLIEN2LIMITECRED: TBCDField;
    SQLTemplateCLIECESTADOCIVIL: TStringField;
    SQLTemplateCLIEA60CONJUGE: TStringField;
    SQLTemplateCLIEN2CONJUGERENDA: TBCDField;
    SQLTemplateCLIEDNASCCONJUGE: TDateTimeField;
    SQLTemplateCLIEA60EMPRESA: TStringField;
    SQLTemplateCLIEA60ENDEMPRESA: TStringField;
    SQLTemplateCLIEA60BAIEMPRESA: TStringField;
    SQLTemplateCLIEA60CIDEMPRESA: TStringField;
    SQLTemplateCLIEA2UFEMPRESA: TStringField;
    SQLTemplateCLIEA8CEPEMPRESA: TStringField;
    SQLTemplateCLIEA60CONJUGEEMPR: TStringField;
    SQLTemplateCLIECRECEBECARTAO: TStringField;
    SQLTemplateCLIEA5AGENCIA: TStringField;
    SQLTemplateCLIEA10CONTA: TStringField;
    SQLTemplateCLIEA60TITULAR: TStringField;
    SQLTemplateTPCLICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    GroupBox1: TGroupBox;
    SQLParcelas: TRxQuery;
    DSSQLParcelas: TDataSource;
    SQLTemplateCLIEA15CONJFONEMPR: TStringField;
    SQLTemplateCLIEDAMISEMPRESA: TDateTimeField;
    SQLTemplateCLIEA15FONEEMPRESA: TStringField;
    SQLTemplateCLIEDABERTCONTA: TDateTimeField;
    SQLTemplateMTBLICOD: TIntegerField;
    SQLTemplatePROFICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCLIEDCAD: TDateTimeField;
    SQLTemplateCLIEDPRICOMPRA: TDateTimeField;
    SQLTemplateCLIEDULTCOMPRA: TDateTimeField;
    SQLTemplateCLIEA254PATHFOTO: TStringField;
    SQLTemplateCLIECRECAVISATRASO: TStringField;
    SQLTemplateCLIEA30NATURALIDADE: TStringField;
    SQLTemplateCLIEDENVCARTIMP: TDateTimeField;
    SQLTemplateCLIEDRETCARTIMP: TDateTimeField;
    SQLTemplateCLIEDENVCARTCLI: TDateTimeField;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit24: TDBEdit;
    Label14: TLabel;
    DBEdit25: TDBEdit;
    Label15: TLabel;
    DBEdit26: TDBEdit;
    Label16: TLabel;
    Label45: TLabel;
    DBEdit28: TDBEdit;
    SQLTemplateBancoLookup: TStringField;
    SQLCartaPrimeiroAviso: TRxQuery;
    DSSQLCartaPrimeiroAviso: TDataSource;
    SQLCartaPrimeiroAvisoCLIEA13ID: TStringField;
    SQLCartaPrimeiroAvisoCUPOA13ID: TStringField;
    SQLCartaPrimeiroAvisoCTRCINROPARC: TIntegerField;
    SQLCartaSegundoAviso: TRxQuery;
    DSSQLCartaSegundoAviso: TDataSource;
    SQLCartaSegundoAvisoCLIEA13ID: TStringField;
    SQLCartaSegundoAvisoCUPOA13ID: TStringField;
    SQLCartaSegundoAvisoCTRCINROPARC: TIntegerField;
    SQLCartaAvisoSPC: TRxQuery;
    DSSQLCartaAvisoSPC: TDataSource;
    SQLCartaAvisoSPCCLIEA13ID: TStringField;
    SQLCartaAvisoSPCCUPOA13ID: TStringField;
    SQLCartaAvisoSPCCTRCINROPARC: TIntegerField;
    SQLTemplateCLIEA10CODCONV: TStringField;
    SQLCupom: TRxQuery;
    ImprimirCarneAvulso: TMenuItem;
    TblCarne: TTable;
    SQLTemplateCLIEA10CODANT: TStringField;
    ImprimirParcelaCarneAvulsa: TMenuItem;
    SQLNumerario: TRxQuery;
    Label65: TLabel;
    DBEdit31: TDBEdit;
    DBDateEdit6: TDBDateEdit;
    Label67: TLabel;
    SQLTemplateCLIEA60CONJUGEMAE: TStringField;
    Button9: TRxSpeedButton;
    TabSheetItens: TTabSheet;
    DBGrid5: TDBGrid;
    SQLItem: TRxQuery;
    DSSQLItem: TDataSource;
    SQLParcelasCUPOA13ID: TStringField;
    SQLParcelasCLIEA13ID: TStringField;
    SQLParcelasCTRCA13ID: TStringField;
    SQLParcelasCTRCINROPARC: TIntegerField;
    SQLParcelasCTRCDVENC: TDateTimeField;
    SQLParcelasCTRCDEMIS: TDateTimeField;
    SQLParcelasCTRCN2VLR: TBCDField;
    SQLParcelasCTRCDULTREC: TDateTimeField;
    SQLParcelasCTRCN2TOTJUROREC: TBCDField;
    SQLParcelasCTRCN2TOTMULTAREC: TBCDField;
    SQLParcelasCTRCN2TOTDESCREC: TBCDField;
    SQLParcelasCTRCCSTATUS: TStringField;
    SQLParcelasEMPRICODULTREC: TIntegerField;
    SQLParcelasCTRCN2TXJURO: TBCDField;
    SQLParcelasCTRCN2TXMULTA: TBCDField;
    SQLParcelasCUPOCTIPOPADRAO: TStringField;
    SQLParcelasCUPON2TOTITENS: TBCDField;
    SQLParcelasValorPagar: TBCDField;
    SQLParcelasNUMEICOD: TIntegerField;
    SQLParcelasNumerarioLookup: TStringField;
    SQLParcelasAtraso: TIntegerField;
    N1: TMenuItem;
    FichaCliente1: TMenuItem;
    DSTblCarne: TDataSource;
    TblDadosCompra: TTable;
    BatchMoveParc: TBatchMove;
    TblDadosCompraCUPOA13ID: TStringField;
    TblDadosCompraCLIEA13ID: TStringField;
    TblDadosCompraCTRCA13ID: TStringField;
    TblDadosCompraCTRCINROPARC: TIntegerField;
    TblDadosCompraCTRCDVENC: TDateTimeField;
    TblDadosCompraCTRCDEMIS: TDateTimeField;
    TblDadosCompraCTRCN2VLR: TBCDField;
    TblDadosCompraCTRCDULTREC: TDateTimeField;
    TblDadosCompraCTRCN2TOTJUROREC: TBCDField;
    TblDadosCompraCTRCN2TOTMULTAREC: TBCDField;
    TblDadosCompraCTRCN2TOTDESCREC: TBCDField;
    TblDadosCompraCTRCCSTATUS: TStringField;
    TblDadosCompraEMPRICODULTREC: TIntegerField;
    TblDadosCompraCTRCN2TXJURO: TBCDField;
    TblDadosCompraCTRCN2TXMULTA: TBCDField;
    TblDadosCompraCUPOCTIPOPADRAO: TStringField;
    TblDadosCompraCUPON2TOTITENS: TBCDField;
    TblDadosCompraNUMEICOD: TIntegerField;
    TblDadosCompraValorPagar: TBCDField;
    TblDadosCompraNumerarioLookup: TStringField;
    TblDadosCompraAtraso: TIntegerField;
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
    SQLGeral: TRxQuery;
    TblDadosCompraJuroParc: TFloatField;
    TblDadosCompraMultaParc: TFloatField;
    TblDadosCompraTxCobrParc: TFloatField;
    TblDadosCompraDescParc: TFloatField;
    AlterarDataBasepDadosdeCompra1: TMenuItem;
    SQLTemplateTipoClienteLookup: TStringField;
    SQLTemplateCLIEA60EMAILCONJUG: TStringField;
    SQLTemplateCLIEDCASAMENTO: TDateTimeField;
    SQLTemplateTPRCICOD: TIntegerField;
    SQLTemplateTabelaPrecoLookup: TStringField;
    SQLTemplateCLIEA35NROCARTCRED: TStringField;
    N2: TMenuItem;
    ImprimeExtratoCaderno: TMenuItem;
    SQLCaderno: TRxQuery;
    SQLCadernoCLIEA13ID: TStringField;
    SQLCadernoCLCADLANC: TDateTimeField;
    SQLCadernoCLCAICOD: TIntegerField;
    SQLCadernoCLCAN2VLRCREDITO: TBCDField;
    SQLCadernoCLCAN2VLRDEBITO: TBCDField;
    SQLCadernoCUPOA13ID: TStringField;
    SQLCadernoCLCAA60HIST: TStringField;
    TblCadernoCliente: TTable;
    TblCadernoClienteCLIEA13ID: TStringField;
    TblCadernoClienteCLCADLANC: TDateTimeField;
    TblCadernoClienteCLCAICOD: TIntegerField;
    TblCadernoClienteCLCAN2VLRCREDITO: TBCDField;
    TblCadernoClienteCLCAN2VLRDEBITO: TBCDField;
    TblCadernoClienteCUPOA13ID: TStringField;
    TblCadernoClienteCLCAA60HIST: TStringField;
    BatchMoveCaderno: TBatchMove;
    SQLItemPRODICOD: TIntegerField;
    SQLItemQTDE: TBCDField;
    SQLItemVLRUNIT: TBCDField;
    SQLItemVLRDESC: TBCDField;
    SQLItemSTATUS: TStringField;
    SQLItemEMPRICOD: TIntegerField;
    SQLItemCLIEA13ID: TStringField;
    SQLItemDEMISSAO: TDateTimeField;
    SQLItemPRODA60DESCR: TStringField;
    SQLParcelasNOFIA13ID: TStringField;
    TblDadosCompraNOFIA13ID: TStringField;
    TblDadosCompraDocumento: TStringField;
    SQLParcelasCTRCN2TOTREC: TFloatField;
    TblDadosCompraCTRCN2TOTREC: TFloatField;
    SQLTemplateCLIEA60ENDCOB: TStringField;
    SQLTemplateCLIEA60BAICOB: TStringField;
    SQLTemplateCLIEA60CIDCOB: TStringField;
    SQLTemplateCLIEA2UFCOB: TStringField;
    SQLTemplateCLIEA8CEPCOB: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLParcelasCTRCA30NRODUPLICBANCO: TStringField;
    TblDadosCompraCTRCA30NRODUPLICBANCO: TStringField;
    Button4: TRxSpeedButton;
    TabSheetAdicional2: TTabSheet;
    Report: TCrpe;
    SQLBanco: TTable;
    SQLTabelaPreco: TTable;
    MnGeracaoMalaDireta: TMenuItem;
    SQLTipoCliente: TTable;
    ButtonCepEmpresa: TSpeedButton;
    PanelTop: TPanel;
    RadioFisJur: TDBRadioGroup;
    PanelDocJur: TPanel;
    LabelCgc_CPF: TLabel;
    LabelIE_RG: TLabel;
    Label11: TLabel;
    DBEditCgc: TDBEdit;
    DBEditIE: TDBEdit;
    DBEdit7: TDBEdit;
    PanelDocFis: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    PanelFisica: TPanel;
    FormStorage: TFormStorage;
    MnCartasAvisos: TMenuItem;
    Picture: TOpenPictureDialog;
    Panel4: TPanel;
    FotoCliente: TImage;
    SQLCupomObs: TRxQuery;
    SQLCupomObsCUPOA13ID: TStringField;
    SQLCupomObsCUPOV254OBS: TStringField;
    DSSQLCupomObs: TDataSource;
    MnOcultaObservacao: TMenuItem;
    GroupBox7: TGroupBox;
    Label56: TLabel;
    AcessaBanco: TSpeedButton;
    Label58: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBDateEdit5: TDBDateEdit;
    GroupBox6: TGroupBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label68: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit44: TDBEdit;
    GroupConvenio: TGroupBox;
    Label64: TLabel;
    DBEdit8: TDBEdit;
    GroupBox3: TGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label48: TLabel;
    Label66: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit36: TDBDateEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    DBEdit43: TDBEdit;
    DBEdit45: TDBEdit;
    DBDateEdit7: TDBDateEdit;
    SQLLimiteCliente: TRxQuery;
    SQLLimiteParcelas: TRxQuery;
    ListagemPersonalizada1: TMenuItem;
    ReportPlanilhaMensalVendas: TppReport;
    PipeCliente: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    MnRelPlanilhadeVendas: TMenuItem;
    Label72: TLabel;
    RetornaTabelaPreco: TSpeedButton;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    SQLTemplateCLIEA20NROCARTCRED: TStringField;
    Label19: TLabel;
    AcessaProfissao: TSpeedButton;
    Label9: TLabel;
    Label50: TLabel;
    DBEdit3: TDBEdit;
    DBEdit33: TRxDBComboBox;
    SQLItemDOCUMENTO: TStringField;
    SQLTemplateCLIEA30TEMPOMORADIA: TStringField;
    SQLTemplateCLIECCASAPROPRIA: TStringField;
    PanelRodape: TPanel;
    Label7: TLabel;
    Label21: TLabel;
    DBEdit4: TDBEdit;
    MemoOBS: TDBMemo;
    ImageList2: TImageList;
    PageControlEndercos: TPageControl;
    TabEndereco: TTabSheet;
    Label41: TLabel;
    ButtonCep: TSpeedButton;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit20: TDBEdit;
    DBEditEnd: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    TabCobranca: TTabSheet;
    Label3: TLabel;
    ButtonCepCobr: TSpeedButton;
    Label62: TLabel;
    Label63: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    DBEdit2: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit48: TDBEdit;
    TblCarneTaxaCrediario: TFloatField;
    TblCarneValorDesconto: TFloatField;
    TblCarneAcrescimo: TFloatField;
    TblCarneEntrada: TFloatField;
    SQLCartaPrimeiroAvisoPRAVCENVIADO: TStringField;
    SQLCartaAvisoSPCAVSPCENVIADO: TStringField;
    SQLCartaSegundoAvisoSGAVCENVIADO: TStringField;
    MnADMGerarautorizacaodecompra: TMenuItem;
    Label77: TLabel;
    DBDateEdit8: TDBDateEdit;
    MnCadastroClienteItensComprados: TMenuItem;
    TblItensComprados: TTable;
    TblItensCompradosDOCUMENTO: TStringField;
    TblItensCompradosPRODICOD: TIntegerField;
    TblItensCompradosQTDE: TBCDField;
    TblItensCompradosVLRUNIT: TBCDField;
    TblItensCompradosVLRDESC: TBCDField;
    TblItensCompradosSTATUS: TStringField;
    TblItensCompradosEMPRICOD: TIntegerField;
    TblItensCompradosCLIEA13ID: TStringField;
    TblItensCompradosDEMISSAO: TDateTimeField;
    TblItensCompradosPRODA60DESCR: TStringField;
    BatchItensComprados: TBatchMove;
    MnFichaClienteResumida: TMenuItem;
    PanelPesquisa: TPanel;
    EditDe: TDateEdit;
    Label83: TLabel;
    ComboProduto: TRxDBLookupCombo;
    Label84: TLabel;
    EditAte: TDateEdit;
    Label85: TLabel;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    BtnLocalizar: TBitBtn;
    Button10: TRxSpeedButton;
    PopupMenuParcelas: TPopupMenu;
    LanarHistrico1: TMenuItem;
    PageControlDadosCompra: TPageControl;
    TabCarne: TTabSheet;
    TabCheques: TTabSheet;
    DBGridDadosCompra: TDBGrid;
    GroupBoxCupomObs: TGroupBox;
    DBMemo1: TDBMemo;
    GroupAvisos: TGroupBox;
    Label61: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    GroupBox2: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    NroParcelasAbertas: TCurrencyEdit;
    TotalJuros: TCurrencyEdit;
    TotalMulta: TCurrencyEdit;
    TotalDesconto: TCurrencyEdit;
    DivitaAtual: TCurrencyEdit;
    NroCompras: TCurrencyEdit;
    TotalCompras: TCurrencyEdit;
    TotalPago: TCurrencyEdit;
    TotalPagar: TCurrencyEdit;
    TotalVencidas: TCurrencyEdit;
    AtrasoMedio: TCurrencyEdit;
    DataCadastro: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    EditLimiteCredito: TCurrencyEdit;
    DSSQLCheques: TDataSource;
    SQLCheques: TRxQuery;
    SQLChequesCTRCA13ID: TStringField;
    SQLChequesEMPRICOD: TIntegerField;
    SQLChequesCTRCINROPARC: TIntegerField;
    SQLChequesCTRCDVENC: TDateTimeField;
    SQLChequesCTRCN2VLR: TBCDField;
    SQLChequesNUMEICOD: TIntegerField;
    SQLChequesCTRCDULTREC: TDateTimeField;
    SQLChequesCTRCN2TOTREC: TBCDField;
    SQLChequesCTRCN2TOTJUROREC: TBCDField;
    SQLChequesCTRCN2TOTMULTAREC: TBCDField;
    SQLChequesCTRCN2TOTDESCREC: TBCDField;
    SQLChequesEMPRICODULTREC: TIntegerField;
    SQLChequesCUPOA13ID: TStringField;
    SQLChequesCTRCA5TIPOPADRAO: TStringField;
    SQLChequesCTRCN2TXMULTA: TBCDField;
    SQLChequesCTRCN2TXJURO: TBCDField;
    SQLChequesBANCA5CODCHQ: TStringField;
    SQLChequesCTRCA10AGENCIACHQ: TStringField;
    SQLChequesCTRCA15CONTACHQ: TStringField;
    SQLChequesCTRCA15NROCHQ: TStringField;
    SQLChequesCTRCA60TITULARCHQ: TStringField;
    SQLChequesCTRCA20CGCCPFCHQ: TStringField;
    SQLChequesCTRCDDEPOSCHQ: TDateTimeField;
    SQLChequesCTRCDEMIS: TDateTimeField;
    DBGridCheque: TDBGrid;
    GroupBox4: TGroupBox;
    Label86: TLabel;
    EditDividaChq: TCurrencyEdit;
    Label87: TLabel;
    EditVencidoChq: TCurrencyEdit;
    Label88: TLabel;
    EditMedioChq: TCurrencyEdit;
    Label89: TLabel;
    EditPagoChq: TCurrencyEdit;
    Label90: TLabel;
    EditNroChq: TCurrencyEdit;
    SQLChequesNOFIINUMERO: TIntegerField;
    SQLChequesNOFIA13ID: TStringField;
    SQLDadosCompra: TRxQuery;
    SQLDadosCompraCUPOA13ID: TStringField;
    SQLDadosCompraNOFIA13ID: TStringField;
    SQLDadosCompraCLIEA13ID: TStringField;
    SQLDadosCompraCTRCA13ID: TStringField;
    SQLDadosCompraCTRCA30NRODUPLICBANCO: TStringField;
    SQLDadosCompraCTRCINROPARC: TIntegerField;
    SQLDadosCompraCTRCDVENC: TDateTimeField;
    SQLDadosCompraCTRCDEMIS: TDateTimeField;
    SQLDadosCompraCTRCN2VLR: TBCDField;
    SQLDadosCompraCTRCDULTREC: TDateTimeField;
    SQLDadosCompraCTRCN2TOTREC: TFloatField;
    SQLDadosCompraCTRCN2TOTJUROREC: TBCDField;
    SQLDadosCompraCTRCN2TOTMULTAREC: TBCDField;
    SQLDadosCompraCTRCN2TOTDESCREC: TBCDField;
    SQLDadosCompraCTRCCSTATUS: TStringField;
    SQLDadosCompraEMPRICODULTREC: TIntegerField;
    SQLDadosCompraCTRCN2TXJURO: TBCDField;
    SQLDadosCompraCTRCN2TXMULTA: TBCDField;
    SQLDadosCompraCUPOCTIPOPADRAO: TStringField;
    SQLDadosCompraCUPON2TOTITENS: TBCDField;
    SQLDadosCompraNUMEICOD: TIntegerField;
    SQLDadosCompraValorPagar: TBCDField;
    SQLDadosCompraNumerarioLookup: TStringField;
    SQLDadosCompraAtraso: TIntegerField;
    SQLDadosCompraJuroParc: TFloatField;
    SQLDadosCompraMultaParc: TFloatField;
    SQLDadosCompraTxCobrParc: TFloatField;
    SQLDadosCompraDescParc: TFloatField;
    SQLDadosCompraDocumento: TStringField;
    SQLDadosCompraTipoPadraoLookup: TStringField;
    SQLParcelasEMPRICOD: TIntegerField;
    TblDadosCompraEMPRICOD: TIntegerField;
    SQLDadosCompraEMPRICOD: TIntegerField;
    SQLDadosCompraVENDA60NOME: TStringField;
    SQLItemVENDA60NOME: TStringField;
    DadosdeTeleEntrega: TMenuItem;
    Button11: TRxSpeedButton;
    GroupBox5: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    Label75: TLabel;
    DBEdit50: TDBEdit;
    SQLTemplateCLIEA60IMOB: TStringField;
    SQLTemplateCLIEN2VLRALUGUEL: TBCDField;
    Label91: TLabel;
    DBEdit52: TDBEdit;
    Label92: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    GroupBox8: TGroupBox;
    SQLTemplateCLIEA30MODVEICULO: TStringField;
    SQLTemplateCLIEA8PLACAVEICULO: TStringField;
    Label93: TLabel;
    DBEdit58: TDBEdit;
    SQLTemplateCLIEA4ANOVEICULO: TStringField;
    Label95: TLabel;
    DBEdit59: TDBEdit;
    Label94: TLabel;
    DBEdit60: TDBEdit;
    GroupBox9: TGroupBox;
    ComboProfissao: TRxDBLookupCombo;
    SQLProfissao: TRxQuery;
    DSSQLProfissao: TDataSource;
    SQLProfissaoPROFICOD: TIntegerField;
    SQLProfissaoPROFA60DESCR: TStringField;
    SQLProfissaoPENDENTE: TStringField;
    SQLProfissaoREGISTRO: TDateTimeField;
    SQLMotivoBloqueio: TRxQuery;
    DSSQLMotivoBloqueio: TDataSource;
    SQLMotivoBloqueioMTBLICOD: TIntegerField;
    SQLMotivoBloqueioMTBLA60DESCR: TStringField;
    SQLMotivoBloqueioPENDENTE: TStringField;
    SQLMotivoBloqueioREGISTRO: TDateTimeField;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLPlanoRecebimento: TRxQuery;
    DSSQLPlanoRecebimento: TDataSource;
    SQLTemplateCLIEA30LOCALIMOV1: TStringField;
    SQLTemplateCLIEA30LOCALIMOV2: TStringField;
    SQLTemplateCLIEA30TIPOIMOV1: TStringField;
    SQLTemplateCLIEA30TIPOIMOV2: TStringField;
    SQLTemplateCLIECSTATUSIMOV1: TStringField;
    SQLTemplateCLIECSTATUSIMOV2: TStringField;
    Label24: TLabel;
    DBEdit9: TDBEdit;
    Label78: TLabel;
    DBEdit10: TDBEdit;
    ComboStatusImov1: TRxDBComboBox;
    Label98: TLabel;
    Label99: TLabel;
    DBEdit11: TDBEdit;
    Label100: TLabel;
    DBEdit12: TDBEdit;
    RxDBComboBox3: TRxDBComboBox;
    Label101: TLabel;
    TblFichaCliente: TTable;
    TblFichaClienteCLIEA13ID: TStringField;
    TblFichaClienteEMPRICOD: TIntegerField;
    TblFichaClienteCLIEICOD: TIntegerField;
    TblFichaClienteCLIEA60RAZAOSOC: TStringField;
    TblFichaClienteCLIEA60NOMEFANT: TStringField;
    TblFichaClienteCLIEA14CGC: TStringField;
    TblFichaClienteCLIEA20IE: TStringField;
    TblFichaClienteCLIEA11CPF: TStringField;
    TblFichaClienteCLIEA10RG: TStringField;
    TblFichaClienteCLIEA15FONE1: TStringField;
    TblFichaClienteCLIEA15FONE2: TStringField;
    TblFichaClienteCLIEA15FAX: TStringField;
    TblFichaClienteCLIEA30OUTROSDOC: TStringField;
    TblFichaClienteCLIECSEXO: TStringField;
    TblFichaClienteCLIEA60PROFISSAO: TStringField;
    TblFichaClienteCLIEA60ENDRES: TStringField;
    TblFichaClienteCLIEA60BAIRES: TStringField;
    TblFichaClienteCLIEA60CIDRES: TStringField;
    TblFichaClienteCLIEA2UFRES: TStringField;
    TblFichaClienteCLIEA8CEPRES: TStringField;
    TblFichaClienteCLIEA60EMAIL: TStringField;
    TblFichaClienteCLIEA60URL: TStringField;
    TblFichaClienteCLIEA60NOMEPAI: TStringField;
    TblFichaClienteCLIEA60NOMEMAE: TStringField;
    TblFichaClienteCLIEDNASC: TDateTimeField;
    TblFichaClienteCLIETOBS: TStringField;
    TblFichaClienteCLIEA5FISJURID: TStringField;
    TblFichaClienteCLIEA60CONTATO: TStringField;
    TblFichaClienteCLIEN2RENDA: TBCDField;
    TblFichaClienteCLIEN2LIMITECRED: TBCDField;
    TblFichaClienteCLIECESTADOCIVIL: TStringField;
    TblFichaClienteCLIEA60CONJUGE: TStringField;
    TblFichaClienteCLIEA60CONJUGEMAE: TStringField;
    TblFichaClienteCLIEN2CONJUGERENDA: TBCDField;
    TblFichaClienteCLIEDNASCCONJUGE: TDateTimeField;
    TblFichaClienteCLIEA60EMPRESA: TStringField;
    TblFichaClienteCLIEA60ENDEMPRESA: TStringField;
    TblFichaClienteCLIEA60BAIEMPRESA: TStringField;
    TblFichaClienteCLIEA60CIDEMPRESA: TStringField;
    TblFichaClienteCLIEA2UFEMPRESA: TStringField;
    TblFichaClienteCLIEA8CEPEMPRESA: TStringField;
    TblFichaClienteCLIEA60CONJUGEEMPR: TStringField;
    TblFichaClienteCLIECRECEBECARTAO: TStringField;
    TblFichaClienteCLIEA5AGENCIA: TStringField;
    TblFichaClienteBANCA5COD: TStringField;
    TblFichaClienteBancoLookup: TStringField;
    TblFichaClienteCLIEA10CONTA: TStringField;
    TblFichaClienteCLIEA60TITULAR: TStringField;
    TblFichaClienteTPCLICOD: TIntegerField;
    TblFichaClienteCLIEA15CONJFONEMPR: TStringField;
    TblFichaClienteCLIEDAMISEMPRESA: TDateTimeField;
    TblFichaClienteCLIEA15FONEEMPRESA: TStringField;
    TblFichaClienteCLIEDABERTCONTA: TDateTimeField;
    TblFichaClienteMTBLICOD: TIntegerField;
    TblFichaClientePROFICOD: TIntegerField;
    TblFichaClienteVENDICOD: TIntegerField;
    TblFichaClienteCLIEDCAD: TDateTimeField;
    TblFichaClienteCLIEDPRICOMPRA: TDateTimeField;
    TblFichaClienteCLIEDULTCOMPRA: TDateTimeField;
    TblFichaClienteCLIEA254PATHFOTO: TStringField;
    TblFichaClienteCLIECRECAVISATRASO: TStringField;
    TblFichaClienteCLIEA30NATURALIDADE: TStringField;
    TblFichaClienteCLIEDENVCARTIMP: TDateTimeField;
    TblFichaClienteCLIEDRETCARTIMP: TDateTimeField;
    TblFichaClienteCLIEDENVCARTCLI: TDateTimeField;
    TblFichaClienteREGISTRO: TDateTimeField;
    TblFichaClientePENDENTE: TStringField;
    TblFichaClienteCLIEA10CODCONV: TStringField;
    TblFichaClienteCLIEA10CODANT: TStringField;
    TblFichaClienteTipoClienteLookup: TStringField;
    TblFichaClienteCLIEA60EMAILCONJUG: TStringField;
    TblFichaClienteCLIEDCASAMENTO: TDateTimeField;
    TblFichaClienteTPRCICOD: TIntegerField;
    TblFichaClienteTabelaPrecoLookup: TStringField;
    TblFichaClienteCLIEA35NROCARTCRED: TStringField;
    TblFichaClienteCLIEA60ENDCOB: TStringField;
    TblFichaClienteCLIEA60BAICOB: TStringField;
    TblFichaClienteCLIEA60CIDCOB: TStringField;
    TblFichaClienteCLIEA2UFCOB: TStringField;
    TblFichaClienteCLIEA8CEPCOB: TStringField;
    TblFichaClientePLRCICOD: TIntegerField;
    TblFichaClienteCLIEA20NROCARTCRED: TStringField;
    TblFichaClienteCLIEA30TEMPOMORADIA: TStringField;
    TblFichaClienteCLIECCASAPROPRIA: TStringField;
    TblFichaClienteCLIEA60IMOB: TStringField;
    TblFichaClienteCLIEN2VLRALUGUEL: TBCDField;
    TblFichaClienteCLIEA30MODVEICULO: TStringField;
    TblFichaClienteCLIEA8PLACAVEICULO: TStringField;
    TblFichaClienteCLIEA4ANOVEICULO: TStringField;
    TblFichaClienteCLIEA30LOCALIMOV1: TStringField;
    TblFichaClienteCLIEA30LOCALIMOV2: TStringField;
    TblFichaClienteCLIEA30TIPOIMOV1: TStringField;
    TblFichaClienteCLIEA30TIPOIMOV2: TStringField;
    TblFichaClienteCLIECSTATUSIMOV1: TStringField;
    TblFichaClienteCLIECSTATUSIMOV2: TStringField;
    TblFichaClienteContato: TTable;
    SQLClienteContato: TRxQuery;
    SQLClienteContatoCLIEA13ID: TStringField;
    SQLClienteContatoCLCOICOD: TIntegerField;
    SQLClienteContatoCLCOA60NOME: TStringField;
    SQLClienteContatoCLCOA15FONE: TStringField;
    SQLClienteContatoCLCOA15CELULAR: TStringField;
    SQLClienteContatoCLCOA60EMAIL: TStringField;
    SQLClienteContatoPENDENTE: TStringField;
    SQLClienteContatoREGISTRO: TDateTimeField;
    SQLClienteContatoCLCOCENVIAMALA: TStringField;
    TblFichaClienteContatoCLIEA13ID: TStringField;
    TblFichaClienteContatoCLCOICOD: TIntegerField;
    TblFichaClienteContatoCLCOA60NOME: TStringField;
    TblFichaClienteContatoCLCOA15FONE: TStringField;
    TblFichaClienteContatoCLCOA15CELULAR: TStringField;
    TblFichaClienteContatoCLCOA60EMAIL: TStringField;
    TblFichaClienteContatoPENDENTE: TStringField;
    TblFichaClienteContatoREGISTRO: TDateTimeField;
    TblFichaClienteContatoCLCOCENVIAMALA: TStringField;
    SQLClienteReferencia: TRxQuery;
    TblFichaClienteReferencia: TTable;
    SQLClienteReferenciaCLIEA13ID: TStringField;
    SQLClienteReferenciaCLRFICOD: TIntegerField;
    SQLClienteReferenciaCLRFA254REFERENCIA: TStringField;
    SQLClienteReferenciaPENDENTE: TStringField;
    SQLClienteReferenciaREGISTRO: TDateTimeField;
    TblFichaClienteReferenciaCLIEA13ID: TStringField;
    TblFichaClienteReferenciaCLRFICOD: TIntegerField;
    TblFichaClienteReferenciaCLRFA254REFERENCIA: TStringField;
    TblFichaClienteReferenciaPENDENTE: TStringField;
    TblFichaClienteReferenciaREGISTRO: TDateTimeField;
    ComboUFEmpresa: TRxDBComboBox;
    ComboUFRes: TRxDBComboBox;
    ComboUFCob: TRxDBComboBox;
    SQLTemplateCLIEIDIAVCTOCARTAO: TIntegerField;
    Label102: TLabel;
    DBEdit23: TDBEdit;
    SQLDadosCompraAVALA60RAZAOSOC: TStringField;
    SQLDadosCompraPORTA60DESCR: TStringField;
    SQLParcelasAVALA13ID: TStringField;
    SQLParcelasPORTICOD: TIntegerField;
    TblDadosCompraAVALA13ID: TStringField;
    TblDadosCompraPORTICOD: TIntegerField;
    SQLDadosCompraAVALA13ID: TStringField;
    SQLDadosCompraPORTICOD: TIntegerField;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    SQLCreditoDebito: TRxQuery;
    DSSQLCreditoDebito: TDataSource;
    SQLCreditoDebitoCTRCA13ID: TStringField;
    SQLCreditoDebitoCTRCINROPARC: TIntegerField;
    SQLCreditoDebitoCTRCN2VLR: TBCDField;
    SQLCreditoDebitoCTRCDULTREC: TDateTimeField;
    SQLCreditoDebitoCTRCN2TOTREC: TBCDField;
    SQLCreditoDebitoCTRCA30NRODUPLICBANCO: TStringField;
    SQLCreditoDebitoCTRCDEMIS: TDateTimeField;
    SQLCreditoDebitoPORTA60DESCR: TStringField;
    SQLCreditoDebitoTPDCA60DESCR: TStringField;
    SQLCreditoDebitoCTRCCTIPOREGISTRO: TStringField;
    GroupBox10: TGroupBox;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    EditSaldo: TCurrencyEdit;
    EditDebitoBaixado: TCurrencyEdit;
    EditTotalCredito: TCurrencyEdit;
    EditTotalDebito: TCurrencyEdit;
    EditCreditoBaixado: TCurrencyEdit;
    SQLCreditoDebitoDebitoCreditoCalcField: TStringField;
    SQLTemplateROTAICOD: TIntegerField;
    Label76: TLabel;
    DBEdit51: TDBEdit;
    Label108: TLabel;
    ComboRota: TRxDBLookupCombo;
    Label96: TLabel;
    ComboVendedor: TRxDBLookupCombo;
    AcessaVendedor: TSpeedButton;
    Label97: TLabel;
    ComboPlano: TRxDBLookupCombo;
    BtnPlanoRecebimento: TSpeedButton;
    Label23: TLabel;
    ComboMotivoBloqueio: TRxDBLookupCombo;
    AcessaMotBloq: TSpeedButton;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    DSSQLRota: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure AcessaVendedorClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure AcessaProfissaoClick(Sender: TObject);
    procedure AcessaMotBloqClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AcessaBancoClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure ImprimirCarneAvulsoClick(Sender: TObject);
    procedure ImprimirParcelaCarneAvulsaClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure FichaCliente1Click(Sender: TObject);
    procedure DBEdit38KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TblDadosCompraCalcFields(DataSet: TDataSet);
    procedure AlterarDataBasepDadosdeCompra1Click(Sender: TObject);
    procedure SQLTemplateCLIEA10RGChange(Sender: TField);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure SQLTemplateAfterEdit(DataSet: TDataSet);
    procedure SQLTemplateCLIEA11CPFChange(Sender: TField);
    procedure RetornaTabelaPrecoClick(Sender: TObject);
    procedure DBEdit46KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimeExtratoCadernoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit42Enter(Sender: TObject);
    procedure Listagem1Click(Sender: TObject);
    procedure MnGeracaoMalaDiretaClick(Sender: TObject);
    procedure ButtonCepClick(Sender: TObject);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonCepEmpresaClick(Sender: TObject);
    procedure DBEdit28KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonCepCobrClick(Sender: TObject);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabelRetornarClick(Sender: TObject);
    procedure RadioFisJurClick(Sender: TObject);
    procedure DBEdit52KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MnCartasAvisosClick(Sender: TObject);
    procedure FotoClienteDblClick(Sender: TObject);
    procedure MnOcultaObservacaoClick(Sender: TObject);
    procedure DSSQLParcelasDataChange(Sender: TObject; Field: TField);
    procedure ListagemPersonalizada1Click(Sender: TObject);
    procedure MnRelPlanilhadeVendasClick(Sender: TObject);
    procedure BtnPlanoRecebimentoClick(Sender: TObject);
    procedure SQLTemplateCLIEA14CGCChange(Sender: TField);
    procedure MnADMGerarautorizacaodecompraClick(Sender: TObject);
    procedure MnCadastroClienteItensCompradosClick(Sender: TObject);
    procedure MnFichaClienteResumidaClick(Sender: TObject);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure ComboProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheetItensEnter(Sender: TObject);
    procedure TabSheetItensExit(Sender: TObject);
    procedure LanarHistrico1Click(Sender: TObject);
    procedure LancaHistorico(IDCliente,IDCupom,IDContasReceber,Parcela : String);
    procedure SQLChequesCalcFields(DataSet: TDataSet);
    procedure TabChequesShow(Sender: TObject);
    procedure TabCarneShow(Sender: TObject);
    procedure DBGridDadosCompraTitleClick(Column: TColumn);
    procedure SQLDadosCompraCalcFields(DataSet: TDataSet);
    procedure DadosdeTeleEntregaClick(Sender: TObject);
    procedure DBGridDadosCompraDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure SQLTemplateMTBLICODChange(Sender: TField);
    procedure ComboPlanoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboProfissaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboMotivoBloqueioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLCreditoDebitoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    VlrSaldo,
    VlrJuro,
    VlrMulta,
    PerJurDia : double ;
    RGAlterado,
    CPFAlterado,
    CGCAlterado,
    CalcTot   : boolean ;
    DataBase  : TDateTime ;
    NroCupom  : string ;
    procedure MontaDadosCompra ;
    procedure MontaDadosCheque;
    procedure MontaDadosCreditoDebitosExtras;
  public
  Produto : String;

    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

uses CadastroVendedor,          DataModulo,                CadastroProfissao,
     CadastroMotivoBloqueio,    CadastroClienteDependente, CadastroBanco,
     CadastroClienteReferencia, CadastroClienteContato,    UnitLibrary,
     TelaConsultaTabelaPreco,   CadastroConsulta,          CadastroCep,
     TelaAutorizacaoCompraCliente, CadastroClienteHistorico,
     TelaClienteHistorico, TelaConsultaPlanoRecebimento,
     TelaNegociacaoDivida, WaitWindow, TelaDadosTeleEntrega;
// AssistenteListagemTEMPLATE

{$R *.DFM}

procedure TFormCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela   := 'CLIENTE';
  DataBase := Date ;
  SQLProfissao.Open;
  SQLMotivoBloqueio.Open;
  SQLVendedor.Open;
  SQLPlanoRecebimento.Open;
  SQLRota.Open;
  PageControlEndercos.ActivePageIndex := 0;
end;

procedure TFormCadastroCliente.MontaDadosCompra ;
Var
    JuroParc,
    MultaParc,
    TxCobrParc,
    DescParc,
    MyTotal,
    Saldo      : double ;
    Documento  : String;
    TotDiasAtraso,
    i,
    NroParcAtraso : integer ;
    Vencimento : TDate;
begin

  if PagePrincipal.ActivePage <> TabSheetDadosCompra then
    exit ;

  NroParcelasAbertas.Value := 0 ;
  TotalJuros.Value         := 0 ;
  TotalMulta.Value         := 0 ;
  TotalDesconto.Value      := 0 ;
  TotalVencidas.Value      := 0 ;
  TotalCompras.Value       := 0 ;
  DivitaAtual.Value        := 0 ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select') ;
  DM.SQLTemplate.SQL.Add('sum(CTRCN2TOTJUROREC) as TOTALJUROS,') ;
  DM.SQLTemplate.SQL.Add('sum(CTRCN2TOTMULTAREC) as TOTALMULTA,') ;
  DM.SQLTemplate.SQL.Add('sum(CTRCN2TOTDESCREC) as TOTALDESC,') ;
  DM.SQLTemplate.SQL.Add('sum(CTRCN2VLR-CTRCN2TOTREC) as TOTALAPAGAR,') ;
  DM.SQLTemplate.SQL.Add('sum(CTRCN2TOTREC) as TOTALPAGO') ;
  DM.SQLTemplate.SQL.Add('from CONTASRECEBER');
  DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"') ;
  DM.SQLTemplate.SQL.Add(' and (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
  DM.SQLTemplate.SQL.Add(' and (CTRCCTIPOREGISTRO = "N" OR CTRCCTIPOREGISTRO IS NULL)') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('TOTALJUROS').Value > 0 then
    TotalJuros.Value    := DM.SQLTemplate.FieldByName('TOTALJUROS').Value ;
  if DM.SQLTemplate.FieldByName('TOTALMULTA').Value > 0 then
    TotalMulta.Value    := DM.SQLTemplate.FieldByName('TOTALMULTA').Value ;
  if DM.SQLTemplate.FieldByName('TOTALDESC').Value > 0 then
    TotalDesconto.Value := DM.SQLTemplate.FieldByName('TOTALDESC').Value ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select') ;
  DM.SQLTemplate.SQL.Add('Count(*) as NROPARCVENC') ;
  DM.SQLTemplate.SQL.Add('from CONTASRECEBER') ;
  DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"') ;
  DM.SQLTemplate.SQL.Add(' and (CTRCN2VLR-CTRCN2TOTREC) > 0') ;
  DM.SQLTemplate.SQL.Add(' and (CTRCCSTATUS = "A" OR CTRCCSTATUS = "N")') ;
  DM.SQLTemplate.SQL.Add(' and (CTRCCTIPOREGISTRO = "N" OR CTRCCTIPOREGISTRO IS NULL)') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('NROPARCVENC').Value > 0 then
    NroParcelasAbertas.Value := DM.SQLTemplate.FieldByName('NROPARCVENC').Value ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select Count(CLIEA13ID) as NROCOMPRAS,') ;
  DM.SQLTemplate.SQL.Add('sum(CUPON2TOTITENS+CUPON3CREDTAXA+CUPON2ACRESC-CUPON2DESC-CUPON3BONUSTROCA) as TOTALCOMPRAS') ;
  DM.SQLTemplate.SQL.Add('from CUPOM') ;
  DM.SQLTemplate.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"') ;
  DM.SQLTemplate.SQL.Add(' and (CUPOCSTATUS = "A" or CUPOCSTATUS = "N") ') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('NROCOMPRAS').Value > 0 then
    NroCompras.Value := DM.SQLTemplate.FieldByName('NROCOMPRAS').Value ;
  if DM.SQLTemplate.FieldByName('TOTALCOMPRAS').Value > 0 then
    TotalCompras.Value := DM.SQLTemplate.FieldByName('TOTALCOMPRAS').Value ;

  SQLParcelas.Close ;
  SQLParcelas.MacroByName('MCliente').Value  := 'CONTASRECEBER.CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"' ;
  SQLParcelas.MacroByName('MCliente2').Value := 'CUPOM.CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"' ;

  if not SQLParcelas.Active then
    SQLParcelas.Open ;

  CalcTot := true ;
  //O LAST ABAIXO SERVE PARA CALCULAR OS TOTAIS
  SQLParcelas.DisableControls ;
  SQLParcelas.First ;

  DivitaAtual.Value   := 0 ;
  TotalPago.Value     := 0 ;
  TotalVencidas.Value := 0 ;
  TotalPagar.Value    := 0 ;

  while not SQLParcelas.EOF do
  begin
    TRY
      Saldo      := SQLParcelas.FieldByName('CTRCN2VLR').Value ;
      if SQLParcelas.FieldByName('CTRCDULTREC').AsVariant <> null then
        Vencimento := SQLParcelas.FieldByName('CTRCDULTREC').AsDateTime
      else
        Vencimento := SQLParcelas.FieldByName('CTRCDVENC').AsDateTime;

      if SQLParcelas.FieldByName('CTRCN2TOTREC').AsVariant <> null then
        Saldo := SQLParcelas.FieldByName('CTRCN2VLR').Value -
                 (SQLParcelas.FieldByName('CTRCN2TOTREC').AsVariant -
                  SQLParcelas.FieldByName('CTRCN2TOTJUROREC').AsVariant -
                  SQLParcelas.FieldByName('CTRCN2TOTMULTAREC').AsVariant +
                  SQLParcelas.FieldByName('CTRCN2TOTDESCREC').AsVariant);

      JuroParc   := 0 ;
      MultaParc  := 0 ;
      TxCobrParc := 0 ;
      DescParc   := 0 ;

      If (SQLParcelasCUPOA13ID.AsString <> '') and (Length(SQLParcelasCUPOA13ID.AsString) = 13) Then
        Documento := SQLParcelasCUPOA13ID.AsString ;
      If (SQLParcelasNOFIA13ID.AsString <> '') and (Length(SQLParcelasNOFIA13ID.AsString) = 13) Then
        Documento := SQLParcelasNOFIA13ID.AsString ;
      If SQLParcelasCTRCA30NRODUPLICBANCO.AsString <> '' Then
        Documento := SQLParcelasCTRCA30NRODUPLICBANCO.AsString ;
      If (SQLParcelasCTRCA13ID.AsString <> '') and  (Length(SQLParcelasCTRCA13ID.AsString) = 13) Then
        Documento := SQLParcelasCTRCA13ID.AsString ;


      if (SQLParcelas.FieldByName('CTRCN2TXJURO').asFloat > 0) and
         (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value >= 0)  and
         (Documento <> '') then
        JuroParc := CalculaJuroMultaDesc(Saldo,
                                         SQLParcelasCTRCN2TXJURO.asFloat,
                                         Vencimento,
                                         DataBase,
                                         DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
                                         'Juro',
                                         Documento,
                                         SQLParcelasCTRCINROPARC.AsString) ;

      if (SQLParcelas.FieldByName('CTRCN2TXMULTA').asFloat > 0) and
         (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value >= 0) and
         (Documento <> '') then
        MultaParc := CalculaJuroMultaDesc(Saldo,
                                          SQLParcelasCTRCN2TXMULTA.Value,
                                          Vencimento,
                                          DataBase,
                                          DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                          'Multa',
                                          Documento,
                                          SQLParcelasCTRCINROPARC.AsString) ;

      if (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').asFloat > 0) and (Documento <> '') then
        TxCobrParc := CalculaJuroMultaDesc(Saldo,
                                           DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').AsFloat,
                                           Vencimento,
                                           DataBase,
                                           0,
                                           'TaxaCobranca',
                                           Documento,
                                           SQLParcelasCTRCINROPARC.AsString) ;


      if (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').asFloat > 0) and
         (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value >= 0) and
         (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value >= 0)  and
         (Documento <> '')  then
        DescParc := CalculaJuroMultaDesc(Saldo,
                                         DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
                                         Vencimento,
                                         DataBase,
                                         DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
                                         'Desconto',
                                         Documento,
                                         SQLParcelasCTRCINROPARC.AsString) ;

      MyTotal := Saldo + JuroParc + MultaParc + TxCobrParc - DescParc ;

      DivitaAtual.Value := DivitaAtual.Value + MyTotal ;
      if SQLParcelas.FieldByName('CTRCN2TOTREC').Value > 0 then
        TotalPago.Value := TotalPago.Value + SQLParcelas.FieldByName('CTRCN2TOTREC').Value ;

      if (DataBase > SQLParcelas.FieldByName('CTRCDVENC').Value) and (Saldo > 0) then
        TotalVencidas.Value := TotalVencidas.Value + MyTotal ;

      if DataBase < SQLParcelas.FieldByName('CTRCDVENC').Value then
        TotalPagar.Value  := TotalPagar.Value  + Saldo ;

    EXCEPT
      on E: Exception do
      begin
        Informa('Problemas ao montar dados de compra : ' + #13 +
                'Cupom..............: ' + SQLParcelas.Fieldbyname('CUPOA13ID').AsString + #13 +
                'Contas Receber(ID).: ' + SQLParcelas.Fieldbyname('CTRCA13ID').AsString + #13 +
                'Anote a mensagem abaixo e tecle ENTER para continuar:' + #13 + E.Message) ;
      end ;
    END ;

    SQLParcelas.Next ;
  end ;
  //A VARIAVEL CalcTot SERA SETADA P/FALSE P/NAO CALCULAR TOTAIS NOVAMENTE
  //NO BROWSE DA TABELA
  CalcTot := false ;

  AtrasoMedio.Value := 0 ;
  TotDiasAtraso     := 0 ;
  NroParcAtraso     := 0 ;
  //PARCELAS PAGAS EM ATRASO
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select sum(CTRCDULTREC-CTRCDVENC) TotDias, count(CTRCA13ID) as NroParc from CONTASRECEBER');
  SQLGeral.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '" and');
  SQLGeral.SQL.Add('not (CTRCDULTREC is null) and') ;
  SQLGeral.SQL.Add('CTRCDULTREC > CTRCDVENC and') ;
  SQLGeral.SQL.Add('CTRCDVENC < "' + FormatDateTime('mm/dd/yyyy', DataBase) + '"');
  SQLGeral.Open ;
  if SQLGeral.FieldByName('TotDias').Value > 0 then
    TotDiasAtraso := TotDiasAtraso + SQLGeral.FieldByName('TotDias').Value ;
  if SQLGeral.FieldByName('NroParc').Value > 0 then
    NroParcAtraso := NroParcAtraso + SQLGeral.FieldByName('NroParc').Value ;
  //PARCELAS VENCIDAS NÃO PAGAS
  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select sum("' + FormatDateTime('mm/dd/yyyy', DataBase) + '" -CTRCDVENC) TotDias, count(CTRCA13ID) as NroParc from CONTASRECEBER') ;
  SQLGeral.SQL.Add('where CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '" and') ;
  SQLGeral.SQL.Add(' (CTRCDULTREC is null) and') ;
  SQLGeral.SQL.Add(' CTRCDVENC < "' + FormatDateTime('mm/dd/yyyy', DataBase) + '"') ;
  SQLGeral.Open ;
  if SQLGeral.FieldByName('TotDias').Value > 0 then
    TotDiasAtraso := TotDiasAtraso + SQLGeral.FieldByName('TotDias').Value ;
  if SQLGeral.FieldByName('NroParc').Value > 0 then
    NroParcAtraso := NroParcAtraso + SQLGeral.FieldByName('NroParc').Value ;

  if (TotDiasAtraso > 0) and (NroParcAtraso > 0) then
    AtrasoMedio.Value := TotDiasAtraso / NroParcAtraso ;

  TblDadosCompra.Close ;
  try
    TblDadosCompra.DeleteTable;
    TblDadosCompra.CreateTable;
  except
    TblDadosCompra.CreateTable ;
  end ;

  TblDadosCompra.IndexFieldNames := '' ;

  BatchMoveParc.Execute ;

  TblDadosCompra.AddIndex('', 'CUPOA13ID;NOFIA13ID;CTRCA30NRODUPLICBANCO;CLIEA13ID;CTRCA13ID', [ixPrimary]);
  TblDadosCompra.AddIndex('Indice3', 'CTRCDEMIS;CUPOA13ID;NOFIA13ID;CTRCINROPARC', [ixCaseInsensitive]);
  TblDadosCompra.IndexFieldNames := 'CTRCDEMIS;CUPOA13ID;NOFIA13ID;CTRCINROPARC' ;
  TblDadosCompra.Open ;

  //ESTA ROTINA FOI COLOCADA POIS QUANDO NAO TEM NOTA FISCAL E TEM ENTRADA GRAVA
  //O ID CUPOM NO NOFIA13ID E ORDENA AS PARCELAS DE MANEIRA ERRADA
  TblDadosCompra.DisableControls ;
  TblDadosCompra.Open ;
  while not TblDadosCompra.Eof do
    begin
      if TblDadosCompraCUPOA13ID.Value = TblDadosCompraNOFIA13ID.Value then
        begin
          TblDadosCompra.Edit ;
          TblDadosCompraNOFIA13ID.Clear ;
          TblDadosCompra.Post ;
        end ;

      TblDadosCompra.Next ;
    end ;
  TblDadosCompra.First ;
  TblDadosCompra.EnableControls ;

  SQLParcelas.First;
  SQLParcelas.EnableControls;
  SQLParcelas.Close;
  SQLDadosCompra.Close;
  SQLDadosCompra.Open;
  NroParcelasAbertas.Refresh;
  TotalJuros.Refresh;
  TotalMulta.Refresh;
  TotalDesconto.Refresh;
  
  if DivitaAtual.Value < 0 then
    DivitaAtual.Value := TotalVencidas.Value;

  DivitaAtual.Refresh;
  NroCompras.Refresh;
  TotalCompras.Refresh;
  TotalPago.Refresh;
  TotalPagar.Refresh;
  TotalVencidas.Refresh;
  AtrasoMedio.Refresh;
end;                                                                  


procedure TFormCadastroCliente.AcessaVendedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('VENDICOD');
  FieldOrigem := 'VENDICOD' ;
  DataSetLookup :=  SQLVendedor;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor', False,True,'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value) ;
end;

procedure TFormCadastroCliente.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  {if DM.SQLConfigGeralCFGEIEMPPADRAO.AsString = '' then
  begin
    Informa('A Empresa Padrão não está configurada !') ;
    SysUtils.Abort ;
    exit ;
  end ;}
  Dataset.FieldByName('CLIEA5FISJURID').Value     := 'J' ;
  Dataset.FieldByName('CLIECRECEBECARTAO').Value  := 'S' ;
  Dataset.FieldByName('CLIEN2LIMITECRED').Value   := 0 ;
  Dataset.FieldByName('CLIEN2RENDA').Value        := 0 ;
  Dataset.FieldByName('CLIEN2CONJUGERENDA').Value := 0 ;
  Dataset.FieldByName('CLIEDCAD').Value           := FormatDateTime('dd/mm/yyyy',Now) ;
  Dataset.FieldByName('CLIEA2UFRES').Value        := SQLLocate('Empresa','EMPRICOD','EMPRA2UF',EmpresaPadrao);  
end;

procedure TFormCadastroCliente.AcessaProfissaoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PROFICOD');
  FieldOrigem := 'PROFICOD' ;
  DataSetLookup := SQLProfissao;
  CriaFormulario(TFormCadastroProfissao,'FormCadastroProfissao',False,True,'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value) ;
end;

procedure TFormCadastroCliente.AcessaMotBloqClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('MTBLICOD');
  FieldOrigem := 'MTBLICOD' ;
  DataSetLookup :=  SQLMotivoBloqueio;
  CriaFormulario(TFormCadastroMotivoBloqueio,'FormCadastroMotivoBloqueio',False,True,'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value) ;
end;

procedure TFormCadastroCliente.Button1Click(Sender: TObject);
begin
  inherited;
  SQLParcelas.Close ;
  SQLItem.Close ;
  SQLProduto.Close;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button3' then
    begin

      PagePrincipal.ActivePage := TabSheetAdicional ;
    end ;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button4' then
    begin
      PagePrincipal.ActivePage := TabSheetAdicional2 ;
    end ;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button5' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroClienteContato,
                     'FormCadastroClienteContato',
                     True,
                     False, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString);
    end ;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button6' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroClienteReferencia,
                     'FormCadastroClienteReferencia',
                     True,
                     False, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString);
    end ;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button7' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroClienteDependente,
                     'FormCadastroClienteDependente',
                     True,
                     False, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString);
    end ;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button8' then
    begin
      if SQLLocate('USUARIO', 'USUAICOD', 'USUACVERDADCOMPRCLI', IntToStr(DM.UsuarioAtual)) <> 'S' then
        begin
          Informa('Você não tem permissão para ver os dados de compra!') ;
          exit ;
        end ;
      SQLCartaPrimeiroAviso.Close;
      SQLCartaPrimeiroAviso.Open ;
      SQLCartaSegundoAviso.Close;
      SQLCartaSegundoAviso.Open;
      SQLCartaAvisoSPC.Close;
      SQLCartaAvisoSPC.Open ;
      PagePrincipal.ActivePage := TabSheetDadosCompra ;
      MontaDadosCompra;
      MontaDadosCheque;
      MontaDadosCreditoDebitosExtras;
      // Monta dados de crédito e débito extras
      if not SQLCreditoDebito.Active then SQLCreditoDebito.Open;
      /////////////////////////////////////////
      
      if Dm.SQLConfigVendaCFVECTESTALIMTCRED.AsString = 'S' then
        EditLimiteCredito.Value := CalculaLimiteCredito(SQLTemplateCLIEA13ID.AsString,0,SQLLimiteParcelas,SQLLimiteCliente);
    end ;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button9' then
    begin
      SQLItem.Open;
      SQLProduto.Open;
      EditDe.Date;
      PagePrincipal.ActivePage := TabSheetItens;
      MontaDadosCompra;
    end ;
  if TRxSpeedButton(Sender).Name = 'Button10' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroClienteHistorico,
                     'FormCadastroClienteHistorico',
                     True,
                     False,
                     SQLTemplateCLIEA60RAZAOSOC.AsString);
    end ;
  if TRxSpeedButton(Sender).Name = 'Button11' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormTelaNegociacaoDivida,
                     'FormTelaNegociacaoDivida',
                     False,
                     False,
                     '');
    end ;

end;

procedure TFormCadastroCliente.AcessaBancoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCA5COD');
  FieldOrigem := 'BANCA5COD' ;
  CriaFormulario(TFormCadastroBanco,'FormCadastroBanco', False,True,'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value) ;
end;

procedure TFormCadastroCliente.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplate.State in [DsInsert] then
    if SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString <> '' then
      begin
        if SQLLocate('CLIENTE','CLIEA60RAZAOSOC','CLIEA60RAZAOSOC','"' + SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString + '"') <> '' then
          begin
            if not Pergunta('NAO','O Sistema verificou que já existe um cliente com este Nome/Razão Social. Deseja Continuar Mesmo Assim ?') then
              Abort;
          end;
      end;

  if SqlTemplate.FieldByName('CLIEA11CPF').AsString <> '' then
    begin
      if Length(SqlTemplate.FieldByName('CLIEA11CPF').AsString) = 11 then
        begin
          if not ValidaCPF(SqlTemplate.FieldByName('CLIEA11CPF').AsString) then
            begin
               Informa('O CPF digitado é inválido !');
              Abort;
            end;
        end
      else
        begin
          Informa('O CPF digitado está incompleto !') ;
          Abort;
        end;
    end;

  if SqlTemplate.FieldByName('CLIEA14CGC').AsString <> '' then
    begin
      if Length(SqlTemplate.FieldByName('CLIEA14CGC').AsString) = 14  then
        begin
          if not ValidaCGC(SqlTemplate.FieldByName('CLIEA14CGC').AsString) then
            begin
              Informa('O CGC digitado é inválido !');
              Abort;
            end;
        end
      else
        begin
          Informa('O CCG digitado está incompleto !');
          Abort;
        end;
    end;

  if CPFAlterado then
    if SQLLocate('CLIENTE', 'CLIEA11CPF', 'CLIEA11CPF', '"' + DataSet.FieldByName('CLIEA11CPF').AsString + '"') <> '' then
      begin
        Informa('Este CPF já existe!') ;
        DataSet.FieldByName('CLIEA11CPF').FocusControl ;
        Sysutils.Abort ;
        exit ;
      end ;

  if RGAlterado then
    if SQLLocate('CLIENTE', 'CLIEA10RG', 'CLIEA10RG', '"' + DataSet.FieldByName('CLIEA10RG').AsString + '"') <> '' then
      begin
        Informa('Este RG já existe!') ;
        DataSet.FieldByName('CLIEA10RG').FocusControl ;
        Sysutils.Abort ;
        exit ;
      end ;

  if CGCAlterado then
    if SQLLocate('CLIENTE', 'CLIEA14CGC', 'CLIEA14CGC', '"' + DataSet.FieldByName('CLIEA14CGC').AsString + '"') <> '' then
      begin
         Informa('Este CGC já existe!') ;
        DataSet.FieldByName('CLIEA14CGC').FocusControl ;
        Sysutils.Abort ;
        exit ;
      end ;

end;

procedure TFormCadastroCliente.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if ((Sender as TDataSource).DataSet <> Nil) and
     ((Sender as TDataSource).DataSet.Active) and
     ((PagePrincipal.ActivePage.Name = 'TabSheetDadosCompra') or (PagePrincipal.ActivePage.Name = 'TabSheetItens')) then
  begin
    MontaDadosCompra;
    MontaDadosCheque;
    MontaDadosCreditoDebitosExtras;
    EditLimiteCredito.Value := CalculaLimiteCredito(SQLTemplateCLIEA13ID.AsString,0,SQLLimiteParcelas,SQLLimiteCliente);
  end ;
  if DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString <> '' then
    begin
      PanelDocFis.Visible        := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'F';
      PanelDocJur.Visible        := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'J';
      PanelFisica.Visible        := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'F';
      LabelNomeFantasia.Visible  := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'J';
      DBEditNomeFantasia.Visible := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'J';
      if DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'F' then
        DBEditNome.Width := 559
      else
        DBEditNome.Width := 313;
    end;
  if SQLTemplateCLIEA254PATHFOTO.AsString <> '' then
    begin
      try
        FotoCliente.Picture.LoadFromFile(SQLTemplateCLIEA254PATHFOTO.AsString);
        FotoCliente.Refresh;
      except
        Informa('Não foi possível localizar a foto deste cliente -> ' + SQLTemplateCLIEA254PATHFOTO.AsString);
      end;
    end
  else
    FotoCliente.Picture := Nil;
end;

procedure TFormCadastroCliente.ImprimirCarneAvulsoClick(Sender: TObject);
Var
  DocParc     : string ;
  NumParcelas : integer ;
  VlrVista    : double ;
begin
  inherited;
  if Pergunta('SIM','* * * CONFIRMA A IMPRESSÃO DO CARNÊ AVULSO PARA O DOCUMENTO ' +
                    SQLDadosCompraCUPOA13ID.AsString + ' ? * * *') then
  begin
    TblCarne.Close ;
    try
      TblCarne.DeleteTable ;
    except
    end ;
    TblCarne.CreateTable ;
    TblCarne.Open ;
    // GRAVAR PARCELA A PRAZO NA TEBLA TEMPORARIA DE CARNE
    SQLGeral.Close ;
    SQLGeral.SQL.Clear ;
    SQLGeral.SQL.Add('select * from CUPOMNUMERARIO') ;
    SQLGeral.SQL.Add('where CUPOA13ID = "' + SQLDadosCompraCUPOA13ID.AsString + '"') ;
    // SQLGeral.SQL.Add('and   CPNMCAUTENT <> "S"') ;
    SQLGeral.Open ;
    SQLGeral.First ;
    VlrVista := 0 ;
    while not SQLGeral.EOF do
      begin
        VlrVista := VlrVista + SQLGeral.FieldByName('CPNMN2VLR').Value ;
        SQLGeral.Next ;
      end ;

    NroCupom := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOINRO',  '"' + SQLDadosCompraCUPOA13ID.AsString + '"') ;

    if VlrVista > 0 then
      begin
        NumParcelas := 1 ;

        TblCarne.Append ;
        TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
        TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
        TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
        TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
        TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
        TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
        TblCarneMensagem.AsString       := '' ;
        TblCarneCliente.AsString        := SQLTemplateCLIEA60RAZAOSOC.AsString ;
        TblCarneEndereco.AsString       := SQLTemplateCLIEA60ENDRES.AsString ;
        TblCarneBairro.AsString         := SQLTemplateCLIEA60CIDRES.AsString ;
        TblCarneCidade.AsString         := SQLTemplateCLIEA60BAIRES.AsString ;
        TblCarneCodigoCliente.AsString  := SQLTemplateCLIEA13ID.AsString ;
        TblCarneNumeroContrato.AsString := SQLDadosCompraCUPOA13ID.AsString ;
        TblCarneNumeroParcela.Value     := 0 ;
        TblCarneContadorParcelas.Value  := NumParcelas ;
        TblCarneDataVencimento.AsString := SQLDadosCompraCTRCDEMIS.AsString ;
        TblCarneValorParcela.Value      := VlrVista ;
        TblCarneDataEmissao.AsString    := SQLDadosCompraCTRCDEMIS.AsString ;
        TblCarneNroCupom.AsString       := NroCupom ;
        TblCarneVendedor.AsString       := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME', SQLLocate('CUPOM','CUPOA13ID','VENDICOD','"' + TblCarneNumeroContrato.AsString + '"'));        
        TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneAcrescimo.AsString      := SQLLocate('CUPOM','CUPOA13ID','CUPON2ACRESC','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneValorDesconto.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON2DESC','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTotalCupom.AsString     := FloatToStr(TblCarneTotalCupom.Value + TblCarneTaxaCrediario.Value);

        Dm.SQLTemplate.Close;
        Dm.SQLTemplate.SQL.Clear;
        Dm.SQLTemplate.SQL.Add('SELECT CPNMN2VLR FROM CUPOMNUMERARIO WHERE CONMCSTATUS = "A" AND ');
        Dm.SQLTemplate.SQL.Add('CUPOA13ID = "' + TblCarneNumeroContrato.AsString + '"');
        Dm.SQLTemplate.Open;
        if not Dm.SQLTemplate.IsEmpty then
          TblCarneEntrada.Value           := Dm.SQLTemplate.FieldByName('CPNMN2VLR').AsFloat
        else
          TblCarneEntrada.Value           := 0;
        TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarnePlano.AsString          := SQLLocate('PLANORECEBIMENTO','PLRCICOD','PLRCA60DESCR',SQLLocate('CUPOM','CUPOA13ID','PLRCICOD','"' + TblCarneNumeroContrato.AsString + '"'));

        TblCarne.Post ;

        SQLGeral.Next ;
      end ;
    //GRAVAR PARCELAS A PRAZO NA TABELA TEMPORARIA DE CARNE
    NumParcelas := NumParcelas + SQLRecCount('CONTASRECEBER', 'where CUPOA13ID = "' + SQLDadosCompraCUPOA13ID.AsString + '"') ;
    SQLGeral.Close ;
    SQLGeral.SQL.Clear ;
    SQLGeral.SQL.Add('select * from CONTASRECEBER') ;
    SQLGeral.SQL.Add('where CUPOA13ID = "' + SQLDadosCompraCUPOA13ID.AsString + '"') ;
    SQLGeral.Open ;
    SQLGeral.First ;

    while not SQLGeral.EOF do
      begin
        TblCarne.Append ;
        TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
        TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
        TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
        TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
        TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
        TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
        TblCarneMensagem.AsString       := '' ;
        TblCarneCliente.AsString        := SQLTemplateCLIEA60RAZAOSOC.AsString ;
        TblCarneEndereco.AsString       := SQLTemplateCLIEA60ENDRES.AsString ;
        TblCarneBairro.AsString         := SQLTemplateCLIEA60CIDRES.AsString ;
        TblCarneCidade.AsString         := SQLTemplateCLIEA60BAIRES.AsString ;
        TblCarneCodigoCliente.AsString  := SQLTemplateCLIEA13ID.AsString ;
        TblCarneNumeroContrato.AsString := SQLDadosCompraCUPOA13ID.AsString ;
        TblCarneNumeroParcela.AsString  := SQLGeral.FieldByName('CTRCINROPARC').AsString ;
        TblCarneContadorParcelas.Value  := NumParcelas ;
        TblCarneDataVencimento.AsString := SQLGeral.FieldByName('CTRCDVENC').AsString ;
        TblCarneValorParcela.AsString   := SQLGeral.FieldByName('CTRCN2VLR').AsString ;
        TblCarneDataEmissao.AsString    := SQLGeral.FieldByName('CTRCDEMIS').AsString ;
        TblCarneNroCupom.AsString       := NroCupom ;
        TblCarneVendedor.AsString       := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME', SQLLocate('CUPOM','CUPOA13ID','VENDICOD','"' + TblCarneNumeroContrato.AsString + '"'));
        TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneAcrescimo.AsString      := SQLLocate('CUPOM','CUPOA13ID','CUPON2ACRESC','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneValorDesconto.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON2DESC','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarneTotalCupom.AsString     := FloatToStr(TblCarneTotalCupom.Value + TblCarneTaxaCrediario.Value);

        Dm.SQLTemplate.Close;
        Dm.SQLTemplate.SQL.Clear;
        Dm.SQLTemplate.SQL.Add('SELECT CPNMN2VLR FROM CUPOMNUMERARIO WHERE CONMCSTATUS = "A" AND ');
        Dm.SQLTemplate.SQL.Add('CUPOA13ID = "' + TblCarneNumeroContrato.AsString + '"');
        Dm.SQLTemplate.Open;
        if not Dm.SQLTemplate.IsEmpty then
          TblCarneEntrada.Value           := Dm.SQLTemplate.FieldByName('CPNMN2VLR').AsFloat
        else
          TblCarneEntrada.Value           := 0;
        TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
        TblCarnePlano.AsString          := SQLLocate('PLANORECEBIMENTO','PLRCICOD','PLRCA60DESCR',SQLLocate('CUPOM','CUPOA13ID','PLRCICOD','"' + TblCarneNumeroContrato.AsString + '"'));

        TblCarne.Post ;

        SQLGeral.Next ;
      end ;
    if FileExists(DM.PathAplicacao + '\CARNES.EXE') then
    begin
      if FileExists('ToScreen.Arq') then
        WinExec(Pchar(DM.PathAplicacao + '\Carnes.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
      else
        WinExec(Pchar(DM.PathAplicacao + '\Carnes.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show) ;
    end
    else
    if FileExists('CARNESITEM.EXE') then
      begin
        if FileExists('ToScreen.Arq') then
          WinExec(Pchar(DM.PathAplicacao + '\CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
        else
          WinExec(Pchar(DM.PathAplicacao + '\CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show);
      end
    else
      Informa('O programa de impressão de carnê não foi encontrado !') ;
  end ;
end;

procedure TFormCadastroCliente.ImprimirParcelaCarneAvulsaClick(
  Sender: TObject);
begin
  inherited;

  if SQLDadosCompraCTRCN2TOTREC.Value = SQLDadosCompraCTRCN2VLR.Value then
  begin
    Informa('Esta parcela já está quitada !') ;
    exit ;
  end ;

  if Pergunta('SIM','* * * CONFIRMA A IMPRESSÃO DO CARNÊ AVULSO PARA O DOCUMENTO ' +
                    SQLDadosCompraCUPOA13ID.AsString + '/' +
                    SQLDadosCompraCTRCINROPARC.AsString + ' ? * * *') then
  begin
    TblCarne.Close ;
    try
      TblCarne.DeleteTable ;
    except
    end ;
    TblCarne.CreateTable ;
    TblCarne.Open ;

    NroCupom := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOINRO',  '"' + SQLDadosCompraCUPOA13ID.AsString + '"') ;

    TblCarne.Append ;
    TblCarneEmpresaNome.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao) ;
    TblCarneEmpresaEnder.AsString   := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END',      EmpresaPadrao) ;
    TblCarneEmpresaBairro.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI',      EmpresaPadrao) ;
    TblCarneEmpresaCidade.AsString  := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID',      EmpresaPadrao) ;
    TblCarneEmpresaUF.AsString      := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF',        EmpresaPadrao) ;
    TblCarneEmpresaFone.AsString    := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE',     EmpresaPadrao) ;
    TblCarneMensagem.AsString       := '' ;
    TblCarneCliente.AsString        := SQLTemplateCLIEA60RAZAOSOC.AsString ;
    TblCarneEndereco.AsString       := SQLTemplateCLIEA60ENDRES.AsString  ;
    TblCarneBairro.AsString         := SQLTemplateCLIEA60CIDRES.AsString  ;
    TblCarneCidade.AsString         := SQLTemplateCLIEA60BAIRES.AsString  ;
    TblCarneCodigoCliente.AsString  := SQLTemplateCLIEA13ID.AsString  ;
    TblCarneNumeroContrato.AsString := SQLDadosCompraCUPOA13ID.AsString ;
    TblCarneNumeroParcela.AsString  := SQLDadosCompraCTRCINROPARC.AsString ;
    //TblCarneContadorParcelas.AsString :=
    TblCarneDataVencimento.AsString := SQLDadosCompraCTRCDVENC.AsString ;
    TblCarneValorParcela.AsString   := SQLDadosCompraCTRCN2VLR.AsString ;
    TblCarneTotalCupom.AsString     := SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + TblCarneNumeroContrato.AsString + '"');
    TblCarneAcrescimo.AsString      := SQLLocate('CUPOM','CUPOA13ID','CUPON2ACRESC','"' + TblCarneNumeroContrato.AsString + '"');
    TblCarneValorDesconto.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON2DESC','"' + TblCarneNumeroContrato.AsString + '"');
    TblCarneTaxaCrediario.AsString  := SQLLocate('CUPOM','CUPOA13ID','CUPON3CREDTAXA','"' + TblCarneNumeroContrato.AsString + '"');
    TblCarneTotalCupom.AsString     := FloatToStr(TblCarneTotalCupom.Value + TblCarneTaxaCrediario.Value);

    //TblCarneVendedor.AsString       := LblNomeVendedor.Caption ;
    TblCarneNroCupom.AsString       := NroCupom ;
    TblCarne.Post ;

    {if FileExists('carne.rpt') then
    begin
      TicketPreVenda.PrinterName   := Copy(TargetPrinter, 1, Pos('=', TargetPrinter)-1) ;
      TicketPreVenda.PrinterDriver := Copy(TargetPrinter, Pos('=', TargetPrinter)+1, Pos(',', TargetPrinter)-Pos('=', TargetPrinter)-1) ;
      TicketPreVenda.PrinterPort   := Copy(TargetPrinter, Pos(',', TargetPrinter)+1, 200) ;

      ReportCarne.PrintReport ;
    end
    else
      Informa('O programa de impressão de carnê não foi encontrado !') ;}
    if FileExists(DM.PathAplicacao + '\CARNES.EXE') then
      begin
        if FileExists('ToScreen.arq') then
          WinExec(Pchar(DM.PathAplicacao + '\CARNES.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
        else
          WinExec(Pchar(DM.PathAplicacao + '\CARNES.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show) ;
      end
    else
      begin
        if FileExists('CARNESITEM.EXE') then
          begin
            if FileExists('ToScreen.Arq') then
              WinExec(Pchar(DM.PathAplicacao + '\CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'),sw_Show)
            else
              WinExec(Pchar(DM.PathAplicacao + '\CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'),sw_Show);
          end
        else
          Informa('O programa de impressão de carnê não foi encontrado !') ;
      end;
  end ;
end;

procedure TFormCadastroCliente.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Text:='Select * From USUARIO Where USUAICOD = ' + IntToStr(UsuarioCorrente);
  DM.SQLTemplate.Open;
  If DM.SQLTemplate.FindField('USUACEXCLCLI').asString <> 'S' Then
    Begin
      Informa('Você não tem poder para excluir clientes!') ;
      Sysutils.Abort ;
    End;
  if SQLTemplateCLIEDPRICOMPRA.AsString <> '' then
    begin
      Informa('Este cliente não pode ser excluído pois possui compras !') ;
      Sysutils.Abort ;
    end ;
  inherited;
end;

procedure TFormCadastroCliente.DBGrid5CellClick(Column: TColumn);
begin
  inherited;
{  SQLItem.Close;
  SQLItem.MacroByName('MOrdem').Value := 'order by ' + Column.FieldName ;
  SQLItem.Open ;}
end;

procedure TFormCadastroCliente.FichaCliente1Click(Sender: TObject);
var
  TargetPrinter : string ;
  i             : integer ;
begin
  inherited;
  try
    MakeWindowMessage('Gerando Ficha de Cliente');
    TblFichaCliente.Close ;
    try
      TblFichaCliente.DeleteTable;
      TblFichaCliente.CreateTable;
    except
      TblFichaCliente.CreateTable;
    end;
    TblFichaCliente.Open;

    TblFichaCliente.Append;
    for i := 0 to SQLTemplate.FieldCount-1 do
      begin
        if (SQLTemplate.Fields[i].AsString <> '') and (TblFichaCliente.FindField(SQLTemplate.Fields[i].FieldName) <> nil) then
          TblFichaCliente.FieldByName(SQLTemplate.Fields[i].FieldName).AsVariant := SQLTemplate.Fields[i].AsVariant;
      end;
    TblFichaCliente.Post;

    // Cliente Contato
    TblFichaClienteContato.Close ;
    try
      TblFichaClienteContato.DeleteTable;
      TblFichaClienteContato.CreateTable;
    except
      TblFichaClienteContato.CreateTable;
    end;
    TblFichaClienteContato.Open;
    if not SQLClienteContato.Active then SQLClienteContato.Open;

    TblFichaClienteContato.Append;
    for i := 0 to SQLClienteContato.FieldCount-1 do
      begin
        if (SQLClienteContato.Fields[i].AsString <> '') and (TblFichaClienteContato.FindField(SQLClienteContato.Fields[i].FieldName) <> nil) then
          TblFichaClienteContato.FieldByName(SQLClienteContato.Fields[i].FieldName).AsVariant := SQLClienteContato.Fields[i].AsVariant;
      end;
    TblFichaClienteContato.Post;

    // Cliente Referencia
    TblFichaClienteReferencia.Close ;
    try
      TblFichaClienteReferencia.DeleteTable;
      TblFichaClienteReferencia.CreateTable;
    except
      TblFichaClienteReferencia.CreateTable;
    end;
    TblFichaClienteReferencia.Open;
    if not SQLClienteReferencia.Active then SQLClienteReferencia.Open;

    TblFichaClienteReferencia.Append;
    for i := 0 to SQLClienteReferencia.FieldCount-1 do
      begin
        if (SQLClienteReferencia.Fields[i].AsString <> '') and (TblFichaClienteReferencia.FindField(SQLClienteReferencia.Fields[i].FieldName) <> nil) then
          TblFichaClienteReferencia.FieldByName(SQLClienteReferencia.Fields[i].FieldName).AsVariant := SQLClienteReferencia.Fields[i].AsVariant;
      end;
    TblFichaClienteReferencia.Post;

    // Impressao
    Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Ficha de Cliente.rpt';
    Report.WindowStyle.Title := 'Impressão Ficha de Cliente';
    Report.ReportTitle       := 'Impressão Ficha de Cliente';
    {TargetPrinter         := DM.SQLTerminalAtivoTERMA60IMPAUTORIZCOM.Value ;
    Report.ReportName     := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Autorizacao de Compra.rpt' ;
    Report.Printer.Name   := Copy(TargetPrinter, 1, Pos(',', TargetPrinter)-1) ;
    Delete(TargetPrinter, 1, Pos(',', TargetPrinter)) ;
    Report.Printer.Driver := Copy(TargetPrinter, 1, Pos(',', TargetPrinter)-1) ;
    Delete(TargetPrinter, 1, Pos(',', TargetPrinter)) ;
    Report.Printer.Port   := TargetPrinter ;}
    Report.Execute;
    DestroyWindow;
  except
    on E:Exception do
      begin
        DestroyWindow;
        Informa('Problemas ao gerar ficha de cliente. ANOTE O ERRO: ' + E.Message);
      end;
  end;
end;

procedure TFormCadastroCliente.DBEdit38KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaBanco.Click;
end;

procedure TFormCadastroCliente.TblDadosCompraCalcFields(DataSet: TDataSet);
var
  Vencimento : TDate;
begin
  inherited;
{  VlrSaldo   := DataSet.FieldByName('CTRCN2VLR').Value ;

  if DataSet.FieldByName('CTRCDULTREC').AsVariant <> Null then
    Vencimento := DataSet.FieldByName('CTRCDULTREC').AsVariant
  else
    Vencimento := DataSet.FieldByName('CTRCDVENC').AsVariant;

  if DataSet.FieldByName('CTRCN2TOTREC').Value > 0 then
     VlrSaldo := DataSet.FieldByName('CTRCN2VLR').Value -
                (DataSet.FieldByName('CTRCN2TOTREC').Value -
                 DataSet.FieldByName('CTRCN2TOTJUROREC').Value -
                 DataSet.FieldByName('CTRCN2TOTMULTAREC').Value +
                 DataSet.FieldByName('CTRCN2TOTDESCREC').Value);

  DataSet.FieldByName('ValorPagar').Value := 0 ;
  DataSet.FieldByName('JuroParc').Value   := 0 ;
  DataSet.FieldByName('MultaParc').Value  := 0 ;
  DataSet.FieldByName('DescParc').Value   := 0 ;

  If DataSet.FieldByName('NOFIA13ID').AsString <> '' Then
    begin
      DataSet.FieldByName('Documento').asString := 'NF ' + SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'SERIA5COD', '"' + DataSet.FieldByName('NOFIA13ID').asString + '"') + '-' + SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'NOFIINUMERO', '"' + DataSet.FieldByName('NOFIA13ID').asString + '"');
      If DataSet.FieldByName('Documento').AsString[1] = 'N' Then
         DataSet.FieldByName('Documento').asString := 'NF ' + DataSet.FieldByName('CTRCA30NRODUPLICBANCO').AsString;
    end
  else
    DataSet.FieldByName('Documento').asString := DataSet.FieldByName('CUPOA13ID').asString;

  If (DataSet.FieldByName('CTRCA30NRODUPLICBANCO').asVariant <> Null) and (DataSet.FieldByName('Documento').AsString = '') Then
    DataSet.FieldByName('Documento').asString := DataSet.FieldByName('CTRCA30NRODUPLICBANCO').Value ;

  If (DataSet.FieldByName('CTRCA13ID').asVariant <> Null) and (DataSet.FieldByName('Documento').AsString = '') Then
    DataSet.FieldByName('Documento').asString := DataSet.FieldByName('CTRCA13ID').Value ;


  if VlrSaldo > 0 then
  begin
    if DataSet.FieldByName('CTRCDVENC').AsVariant <> Null then
      DataSet.FieldByName('Atraso').AsFloat := (DataBase - Vencimento) ;

    if (DataSet.FieldByName('Atraso').Value < 0) then
       DataSet.FieldByName('Atraso').Value := 0 ;

    if DataSet.FieldByName('CTRCN2TXJURO').Value > 0 then
      DataSet.FieldByName('JuroParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                                                    DataSet.FieldByName('CTRCN2TXJURO').Value,
                                                                    Vencimento,
                                                                    DataBase,
                                                                    DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
                                                                    'Juro',
                                                                    DataSet.FieldByName('CUPOA13ID').AsString,
                                                                    DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('JuroParc').Value := 0 ;


    if DataSet.FieldByName('CTRCN2TXMULTA').Value > 0 then
      DataSet.FieldByName('MultaParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                               DataSet.FieldByName('CTRCN2TXMULTA').Value,
                                               Vencimento,
                                               DataBase,
                                               DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                               'Multa',
                                               DataSet.FieldByName('CUPOA13ID').AsString,
                                               DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('MultaParc').Value := 0 ;

    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value > 0 then
      DataSet.FieldByName('TxCobrParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                                 DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value,
                                                 Vencimento,
                                                 DataBase,
                                                 0,
                                                 'TaxaCobranca',
                                                 DataSet.FieldByName('CUPOA13ID').AsString,
                                                 DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('TxCobrParc').Value := 0 ;


    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value > 0 then
      DataSet.FieldByName('DescParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                               DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
                                               Vencimento,
                                               DataBase,
                                               DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
                                               'Desconto',
                                               DataSet.FieldByName('CUPOA13ID').AsString,
                                               DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('DescParc').Value := 0 ;

    DataSet.FieldByName('ValorPagar').Value := VlrSaldo +
                                               DataSet.FieldByName('JuroParc').Value +
                                               DataSet.FieldByName('MultaParc').Value +
                                               DataSet.FieldByName('TxCobrParc').Value -
                                               DataSet.FieldByName('DescParc').Value ;
  end ; }
end;

procedure TFormCadastroCliente.AlterarDataBasepDadosdeCompra1Click(
  Sender: TObject);
begin
  inherited;
  try
    DataBase := StrToDate(InputBox('Alterar Data Base Dados Compra', 'Informa a nova data base', DateToStr(DataBase)));
    MontaDadosCompra ;
  except
    Informa('Data inválida') ;
  end ;
end;

procedure TFormCadastroCliente.SQLTemplateCLIEA10RGChange(Sender: TField);
begin
  inherited;
  RGAlterado := true ;
end;

procedure TFormCadastroCliente.SQLTemplateAfterInsert(DataSet: TDataSet);
begin
  inherited;
  RGAlterado  := false ;
  CPFAlterado := false ;
  CGCAlterado := False;
end;

procedure TFormCadastroCliente.SQLTemplateAfterEdit(DataSet: TDataSet);
begin
  inherited;
  RGAlterado  := false ;
  CPFAlterado := false ;
  CGCAlterado := False;
end;

procedure TFormCadastroCliente.SQLTemplateCLIEA11CPFChange(Sender: TField);
begin
  inherited;
  CPFAlterado := true ;
end;

procedure TFormCadastroCliente.RetornaTabelaPrecoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPRCICOD');
  FieldOrigem := 'TPRCICOD' ;
  CriaFormulario(TFormTelaConsultaTabelaPreco,'FormTelaConsultaTabelaPreco',False,True,'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value) ;
end;

procedure TFormCadastroCliente.DBEdit46KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaTabelaPreco.Click ;
end;

procedure TFormCadastroCliente.ImprimeExtratoCadernoClick(Sender: TObject);
begin
  inherited;
  BatchMoveCaderno.Execute;
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Extrato de Caderno Cliente.rpt';
  Report.ReportTitle       := 'Extrato de Caderno de Cliente';
  Report.WindowStyle.Title := 'Extrato de Caderno de Cliente';
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  Report.Formulas.Name         := 'Emissao';
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"';
  //-------------------------------------------------\\
  Report.Formulas.Name         := 'NomeCliente' ;
  Report.Formulas.Formula.Text := '"' + SQLTemplateCLIEA60RAZAOSOC.Value + '"' ;
  Report.Execute ;
end;

procedure TFormCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Rotina que retorna o cliente para o Front Loja;
  DataSetLookup := Nil;
end;

procedure TFormCadastroCliente.DBEdit42Enter(Sender: TObject);
begin
  inherited;
  if DSTemplate.DataSet.State in DsEditModes then
    if SQLTemplateCLIEA60RAZAOSOC.AsString <> '' then
      SQLTemplateCLIEA60TITULAR.AsString := SQLTemplateCLIEA60RAZAOSOC.AsString;
end;

procedure TFormCadastroCliente.Listagem1Click(Sender: TObject);
begin
  inherited;
  Dm.DSListagem.DataSet := DSTemplate.DataSet;
{  Application.CreateForm(TFormAssistenteListagem,FormAssistenteListagem);
  FormAssistenteListagem.Show;}
end;

procedure TFormCadastroCliente.MnGeracaoMalaDiretaClick(Sender: TObject);
begin
  inherited;
    if DM.Acesso((Sender as TMenuItem).Name) > 0 then
      CriaFormulario(TFormCadastroConsulta, 'FormCadastroConsulta', False, False, '') ;
end;

procedure TFormCadastroCliente.ButtonCepClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA8CEPRES');
  FieldOrigem := 'CEPA8CEP' ;
  Application.CreateForm(TFormCadastroCep,FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateCLIEA60ENDRES.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
    begin
      SQLTemplateCLIEA60ENDRES.AsString  := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
      SQLTemplateCLIEA60BAIRES.AsString  := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
      SQLTemplateCLIEA60CIDRES.AsString  := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
      SQLTemplateCLIEA2UFRES.AsString    := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
      DBEditEnd.SetFocus;
      DBEditEnd.SelStart := Length(DBEditEnd.Text) + 1;
    end;
end;

procedure TFormCadastroCliente.DBEdit20KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCep.Click ;
end;

procedure TFormCadastroCliente.ButtonCepEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA8CEPEMPRESA');
  FieldOrigem := 'CEPA8CEP' ;
  Application.CreateForm(TFormCadastroCep,FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateCLIEA60ENDEMPRESA.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
    begin
      SQLTemplateCLIEA60ENDEMPRESA.AsString  := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
      SQLTemplateCLIEA60BAIEMPRESA.AsString  := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
      SQLTemplateCLIEA60CIDEMPRESA.AsString  := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
      SQLTemplateCLIEA2UFEMPRESA.AsString    := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
    end;
end;

procedure TFormCadastroCliente.DBEdit28KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCepEmpresa.Click ;
end;

procedure TFormCadastroCliente.ButtonCepCobrClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA8CEPCOB');
  FieldOrigem := 'CEPA8CEP' ;
  Application.CreateForm(TFormCadastroCep,FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateCLIEA60ENDCOB.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
    begin
      SQLTemplateCLIEA60ENDCOB.AsString  := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
      SQLTemplateCLIEA60BAICOB.AsString  := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
      SQLTemplateCLIEA60CIDCOB.AsString  := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
      SQLTemplateCLIEA2UFCOB.AsString    := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
    end;
end;

procedure TFormCadastroCliente.DBGrid5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    begin
      SQLItem.First;
      Produto := UPPERCASE(InputBox('Pesquisa de Produtos','Digite a descrição do produto :',''));
      SQLItem.Close;
      if POS('*',Produto) > 0  then
        begin
          Delete(Produto,POS('*',Produto),1);
          SQLItem.MacroByName('MProdutoCP').Value := 'PRODUTO.PRODA60DESCR Like "%' + Produto + '%"' ;
          SQLItem.MacroByName('MProdutoNF').Value := 'PRODUTO.PRODA60DESCR Like "%' + Produto + '%"' ;
        end
      else
        begin
          SQLItem.MacroByName('MProdutoCP').Value := 'PRODUTO.PRODA60DESCR Like "' + Produto + '%"' ;
          SQLItem.MacroByName('MProdutoNF').Value := 'PRODUTO.PRODA60DESCR Like "' + Produto + '%"' ;
        end;
      SQLItem.Open;
    end;
  if Key = VK_Return then
    begin
      SQLItem.Close;
      SQLItem.MacroByName('MProdutoCP').Value := '0=0' ;
      SQLItem.MacroByName('MProdutoNF').Value := '0=0' ;
      SQLItem.Open;
    end;
end;

procedure TFormCadastroCliente.LabelRetornarClick(Sender: TObject);
begin
  if Application.FindComponent('FormTelaFechamentoVenda') <> Nil then
    begin
    // Verifica Limite de Crédito;
    if (DM.SQLConfigVendaCFVECTESTALIMTCRED.AsString = 'S') then
      if not VerificaLimiteCredito(SQLTemplateCLIEA13ID.AsString,ValorVenda,DM.SQLParcelas,DM.SQLCliente) then
        Abort;
      ClienteCadastro := SQLTemplateCLIEA13ID.AsString;
    end;
  inherited;
end;

procedure TFormCadastroCliente.RadioFisJurClick(Sender: TObject);
begin
  inherited;
  if DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString <> '' then
    begin
      PanelDocFis.Visible        := RadioFisJur.ItemIndex = 0;
      PanelDocJur.Visible        := RadioFisJur.ItemIndex = 1;
      PanelFisica.Visible        := RadioFisJur.ItemIndex = 0;
      LabelNomeFantasia.Visible  := RadioFisJur.ItemIndex = 1;
      DBEditNomeFantasia.Visible := RadioFisJur.ItemIndex = 1;
      if RadioFisJur.ItemIndex = 0 then
        DBEditNome.Width := 559
      else
        DBEditNome.Width := 313;
    end;
end;

procedure TFormCadastroCliente.DBEdit52KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCepCobr.Click;
end;

procedure TFormCadastroCliente.MnCartasAvisosClick(Sender: TObject);
begin
  inherited;
  if GroupAvisos.Visible = True then
    GroupAvisos.Visible := False
  else
    GroupAvisos.Visible := True;
end;

procedure TFormCadastroCliente.FotoClienteDblClick(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DsEditModes then
    begin
      Picture.Execute;
      if Picture.FileName <> '' then
        begin
          SQLTemplateCLIEA254PATHFOTO.AsString := Picture.FileName;
        end;
    end
  else
    Informa('Você deve alterar ou incluir para capturar uma foto !');  
end;

procedure TFormCadastroCliente.MnOcultaObservacaoClick(Sender: TObject);
begin
  inherited;
  if GroupBoxCupomObs.Visible = False then
    begin
      GroupBoxCupomObs.Visible := True;
      SQLCupomObs.Close;
      SQLCupomObs.ParamByName('Cupom').AsString := SQLDadosCompraCUPOA13ID.AsString ;
      SQLCupomObs.Open;
    end
  else
    begin
      SQLCupomObs.Close;
      GroupBoxCupomObs.Visible := False;
    end;
end;

procedure TFormCadastroCliente.DSSQLParcelasDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if GroupBoxCupomObs.Visible = True then
    begin
      SQLCupomObs.Close;
      SQLCupomObs.ParamByName('Cupom').AsString := SQLDadosCompraCUPOA13ID.AsString ;
      SQLCupomObs.Open;
    end
end;

procedure TFormCadastroCliente.ListagemPersonalizada1Click(
  Sender: TObject);
begin
  inherited;
  Dm.DSListagem.DataSet := SQLTemplate; 
{  Application.CreateForm(TFormAssistenteListagem,FormAssistenteListagem);
  FormAssistenteListagem.Show;}
end;

procedure TFormCadastroCliente.MnRelPlanilhadeVendasClick(Sender: TObject);
begin
  inherited;
  ReportPlanilhaMensalVendas.Print;
end;

procedure TFormCadastroCliente.BtnPlanoRecebimentoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLRCICOD');
  FieldOrigem := 'PLRCICOD' ;
  DataSetLookup := SQLPlanoRecebimento;
  CriaFormulario(TFormTelaConsultaPlanoRecebimento,'FormTelaConsultaPlanoRecebimento', False,True,'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value) ;
end;

procedure TFormCadastroCliente.SQLTemplateCLIEA14CGCChange(Sender: TField);
begin
  inherited;
  CGCAlterado := True;
end;

procedure TFormCadastroCliente.MnADMGerarautorizacaodecompraClick(
  Sender: TObject);
var
  InfoRetorno : TInfoRetornoUser;  
begin
  inherited;
  //TESTAR PERMISSÃO DO USUÁRIO
  if not SQLTemplate.IsEmpty then
    begin
      if PagePrincipal.ActivePage = TabSheetDadosCompra then
        begin
          if AutenticaUsuario(UsuarioAtualNome,'USUACLIBERACREDITO',InfoRetorno) <> 'S' then
            begin
              Informa('Você não tem permissão para gerar liberação de crédito, a operação será cancelada!');
              Exit;
            end
          else
            begin
              Application.CreateForm(TFormTelaAutorizacaoCompra,FormTelaAutorizacaoCompra);
              FormTelaAutorizacaoCompra.Hide;
              FormTelaAutorizacaoCompra.DSMaster.DataSet := SQLTemplate;
              FormTelaAutorizacaoCompra.SQLTemplate.Open;
              FormTelaAutorizacaoCompra.SQLClienteDependente.Open;
              FormTelaAutorizacaoCompra.SQLTemplate.Append;
              FormTelaAutorizacaoCompra.SQLTemplateEMPRICOD.AsInteger := EmpresaCorrente;
              FormTelaAutorizacaoCompra.SQLTemplateTERMICOD.AsInteger := TerminalCorrente;
              FormTelaAutorizacaoCompra.SQLTemplateCLIEA13ID.AsString := SQLTemplateCLIEA13ID.AsString;
              FormTelaAutorizacaoCompra.SQLTemplateCATCDAUTORIZACAO.AsDateTime := Date;
              FormTelaAutorizacaoCompra.SQLTemplateCATCCSTATUS.AsString        := 'A';
              FormTelaAutorizacaoCompra.SQLTemplateUSUAICOD.AsVariant := InfoRetorno.CodUsuarioAutenticado;
              try
                FormTelaAutorizacaoCompra.SQLTemplateCATCN2LIMITE.AsFloat := StrToFloat(EditLimiteCredito.Text);
              except
                FormTelaAutorizacaoCompra.SQLTemplateCATCN2LIMITE.AsFloat := 0;
              end;  
              FormTelaAutorizacaoCompra.ShowModal;
              FormTelaAutorizacaoCompra.Close;
              FormTelaAutorizacaoCompra.SQLClienteDependente.Close;
              FormTelaAutorizacaoCompra.Free;
            end;  
       end
     else
       begin
         Informa('Você deve acessar a página Dados de Compra para gerar a autorização de compra!');
         Exit;
       end;
    end;
end;

procedure TFormCadastroCliente.MnCadastroClienteItensCompradosClick(
  Sender: TObject);
begin
  inherited;
  if PagePrincipal.ActivePage <> TabSheetItens then
    begin
      Informa('Por favor selecione a página "Itens Comprados" antes de executar esta função!');
      Exit;
    end;
  try
    TblItensComprados.Close;
    TblItensComprados.DeleteTable;
    TblItensComprados.CreateTable;
  except
    TblItensComprados.CreateTable;
  end;
  TblItensComprados.Open;
  SQLItem.First;
  BatchItensComprados.Execute;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Itens Comprados.rpt' ;
  Report.ReportTitle       := 'Listagem de Itens Comprados';
  Report.WindowStyle.Title := 'Listagem de Itens Comprados';
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',EmpresaPadrao) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Cliente';
  Report.Formulas.Formula.Text := '"' + SQLTemplateCLIEA60RAZAOSOC.AsString + '"';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormCadastroCliente.MnFichaClienteResumidaClick(
  Sender: TObject);
var
 I : Integer;  
begin
  inherited;
  TblFichaCliente.Close;
  try
    TblFichaCliente.DeleteTable;
  except
  end;
  TblFichaCliente.CreateTable;
  TblFichaCliente.Open;

  TblFichaCliente.Append;
  for i := 0 to SQLTemplate.FieldCount-1 do
    if (SQLTemplate.Fields[i].AsString <> '') and (TblFichaCliente.FindField(SQLTemplate.Fields[i].FieldName) <> nil) then
      TblFichaCliente.FieldByName(SQLTemplate.Fields[i].FieldName).AsVariant := SQLTemplate.Fields[i].AsVariant;
  TblFichaCliente.Post;

  Report.ReportName     := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Ficha de Cliente Resumida.rpt';
  Report.Execute;
end;

procedure TFormCadastroCliente.BtnLocalizarClick(Sender: TObject);
var
 ClausulaCP, ClausulaNF : String;
begin
  inherited;
  ClausulaCP := '';
  ClausulaNF := '';
  if (EditDe.Text <> '  /  /    ') and (EditDe.Text <> '  /  /    ') then
    begin
      ClausulaCP := 'CUPOM.CUPODEMIS >= "'      + FormatDateTime('mm/dd/yyyy',EditDe.Date)  + '" AND ' +
                    'CUPOM.CUPODEMIS <= "'      + FormatDateTime('mm/dd/yyyy',EditAte.Date) + '"';
      ClausulaNF := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy',EditDe.Date)  + '" AND ' +
                    'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy',EditAte.Date) + '"';
    end;

  if ((ClausulaCP <> '') or (ClausulaNF <> '')) and (ComboProduto.Value <> '') then
    begin
      ClausulaCP := ClausulaCP + ' AND PRODUTO.PRODICOD = ' + ComboProduto.Value;
      ClausulaNF := ClausulaNF + ' AND PRODUTO.PRODICOD = ' + ComboProduto.Value;
    end
  else
    if ComboProduto.Value <> '' then
      begin
        ClausulaCP := 'PRODUTO.PRODICOD = ' + ComboProduto.Value;
        ClausulaNF := 'PRODUTO.PRODICOD = ' + ComboProduto.Value;
      end;

  if (ClausulaCP <> '') or (ClausulaNF <> '') then
    begin
      SQLItem.Close;
      SQLItem.MacroByName('MProdutoCP').Value := ClausulaCP;
      SQLItem.MacroByName('MProdutoNF').Value := ClausulaNF;
      SQLItem.Open;
    end;
end;

procedure TFormCadastroCliente.ComboProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormCadastroCliente.TabSheetItensEnter(Sender: TObject);
begin
  inherited;
  EditDe.SetFocus;
end;

procedure TFormCadastroCliente.TabSheetItensExit(Sender: TObject);
begin
  inherited;
  SQLItem.Close;
end;

procedure TFormCadastroCliente.LanarHistrico1Click(Sender: TObject);
begin
  inherited;
  LancaHistorico(SQLDadosCompraCLIEA13ID.AsString,
                 SQLDadosCompraCUPOA13ID.AsString,
                 SQLDadosCompraCTRCA13ID.AsString,
                 SQLDadosCompraCTRCINROPARC.AsString);
end;
procedure TFormCadastroCliente.LancaHistorico(IDCliente,IDCupom,IDContasReceber,Parcela : String);
begin
  Application.CreateForm(TFormTelaClienteHistorico,FormTelaClienteHistorico);
  FormTelaClienteHistorico.Cliente       := IDCliente;
  FormTelaClienteHistorico.Cupom         := IDCupom;
  FormTelaClienteHistorico.ContasReceber := IDcontasReceber;
  FormTelaClienteHistorico.Parcela       := Parcela;
  FormTelaClienteHistorico.SQLTemplate.Close;
  FormTelaClienteHistorico.SQLTemplate.ParamByName('Cliente').AsString := IDCliente;
  FormTelaClienteHistorico.SQLTemplate.ParamByName('Cupom').AsString   := IDCupom;
  FormTelaClienteHistorico.SQLTemplate.Open;
  FormTelaClienteHistorico.ShowModal;
  FormTelaClienteHistorico.Close;
  FormTelaClienteHistorico.Free;
end;

procedure TFormCadastroCliente.MontaDadosCheque;
var
  TotalPagoCheque,
  TotalDivida,
  TotalVencido,
  NroCheques,
  NroChequesVencidos,
  DiasAtraso : Double;
begin
  if SQLCheques.Active then SQLCheques.Close;
  SQLCheques.DisableControls;
  SQLCheques.Open;
  SQLCheques.First;
  TotalPagoCheque := 0;
  TotalDivida := 0;
  TotalVencido := 0;
  NroCheques := 0;
  NroChequesVencidos := 0;
  While not SQLCheques.Eof do
    begin
      if SQLCheques.FieldByName('CTRCDULTREC').AsVariant = null then
        begin
          TotalDivida := TotalDivida + SQLCheques.FieldByName('CTRCN2VLR').AsFloat;
          if SQLCheques.FieldByName('CTRCDVENC').AsDateTime < Date then
            begin
              TotalVencido := TotalVencido + SQLCheques.FieldByName('CTRCN2VLR').AsFloat;
              NroChequesVencidos := NroChequesVencidos + 1;
              DiasAtraso := DiasAtraso + Int(Date - SQLCheques.FieldByName('CTRCDVENC').AsDateTime);
            end;
        end;
      if SQLCheques.FieldByName('CTRCDULTREC').AsVariant <> Null then
        begin
          TotalPagoCheque := TotalPagoCheque + SQLCheques.FieldByName('CTRCN2TOTREC').AsFloat;
          if SQLCheques.FieldByName('CTRCN2TOTREC').AsFloat < SQLCheques.FieldByName('CTRCN2VLR').AsFloat then
            TotalDivida := TotalDivida + (SQLCheques.FieldByName('CTRCN2VLR').AsFloat - SQLCheques.FieldByName('CTRCN2TOTREC').AsFloat);
        end;
      NroCheques := NroCheques + 1;
      SQLCheques.Next;
    end;
  if (DiasAtraso > 0)  and (NroChequesVencidos > 0) then
    EditMedioChq.Value := DiasAtraso / NroChequesVencidos;
  EditNroChq.Value   := NroCheques;
  EditPagoChq.Value  := TotalPagoCheque;
  EditVencidoChq.Value := TotalVencido;
  EditDividaChq.Value  := TotalDivida;
  SQLCheques.First;
  SQLCheques.EnableControls;
  EditNroChq.Update;
  EditPagoChq.Update;
  EditVencidoChq.Update;
  EditDividaChq.Update;
  PageControlDadosCompra.ActivePage := TabCarne;  
  Application.ProcessMessages;
end;
procedure TFormCadastroCliente.SQLChequesCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('NOFIA13ID').AsString <> '' then
    DataSet.FieldByName('NOFIINUMERO').AsString := SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO','"' + DataSet.FieldByName('NOFIA13ID').AsString + '"');
end;

procedure TFormCadastroCliente.TabChequesShow(Sender: TObject);
begin
  inherited;
  DBGridCheque.SetFocus;
end;

procedure TFormCadastroCliente.TabCarneShow(Sender: TObject);
begin
  inherited;
  DBGridDadosCompra.SetFocus;
end;

procedure TFormCadastroCliente.DBGridDadosCompraTitleClick(
  Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'CTRCDVENC' then
    begin
      SQLDadosCompra.Close;                                               //,
      SQLDadosCompra.MacroByName('MOrdem').AsString := 'ORDER BY CTRCDVENC DESC';
      SQLDadosCompra.Open;
    end;
  if Column.FieldName = 'CTRCDULTREC' then
    begin
      SQLDadosCompra.Close;                                               //,
      SQLDadosCompra.MacroByName('MOrdem').AsString := 'ORDER BY CTRCDULTREC DESC';
      SQLDadosCompra.Open;
    end;
  if Column.FieldName = 'CTRCDEMIS' then
    begin
      SQLDadosCompra.Close;
      SQLDadosCompra.MacroByName('MOrdem').AsString := 'ORDER BY CTRCDEMIS,CUPOA13ID,NOFIA13ID,CTRCINROPARC ASC';
      SQLDadosCompra.Open;
    end;
end;

procedure TFormCadastroCliente.SQLDadosCompraCalcFields(DataSet: TDataSet);
var
  Vencimento : TDate;
  ValorItens,Vendedor : String;
begin
  inherited;
  VlrSaldo   := DataSet.FieldByName('CTRCN2VLR').Value ;
  if DataSet.FieldByName('NOFIA13ID').AsString <> '' then
    begin
      ValorItens := SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIN2VLRPRODUTO','"' + DataSet.FieldByName('NOFIA13ID').AsString + '"');
      if ValorItens <> '' then
        DataSet.FieldByName('CUPON2TOTITENS').AsFloat := StrToFloat(ValorItens)
      else
        DataSet.FieldByName('CUPON2TOTITENS').AsFloat := 0;
    end;
  if DataSet.FieldByName('CUPOA13ID').AsString <> '' then
    DataSet.FieldByName('CUPON2TOTITENS').AsFloat := StrToFloat(SQLLocate('CUPOM','CUPOA13ID','CUPON2TOTITENS','"' + DataSet.FieldByName('CUPOA13ID').AsString + '"'));
  if DataSet.FieldByName('CTRCDULTREC').AsVariant <> Null then
    Vencimento := DataSet.FieldByName('CTRCDULTREC').AsVariant
  else
    if DataSet.FieldByName('CTRCDVENC').AsVariant <> Null then
      Vencimento := DataSet.FieldByName('CTRCDVENC').AsVariant;

  if DataSet.FieldByName('CTRCN2TOTREC').Value > 0 then
     VlrSaldo := DataSet.FieldByName('CTRCN2VLR').Value -
                (DataSet.FieldByName('CTRCN2TOTREC').Value -
                 DataSet.FieldByName('CTRCN2TOTJUROREC').Value -
                 DataSet.FieldByName('CTRCN2TOTMULTAREC').Value +
                 DataSet.FieldByName('CTRCN2TOTDESCREC').Value);

  DataSet.FieldByName('ValorPagar').Value := 0 ;
  DataSet.FieldByName('JuroParc').Value   := 0 ;
  DataSet.FieldByName('MultaParc').Value  := 0 ;
  DataSet.FieldByName('DescParc').Value   := 0 ;

  If DataSet.FieldByName('NOFIA13ID').AsString <> '' Then
    begin
      DataSet.FieldByName('Documento').asString := 'NF ' + SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'SERIA5COD', '"' + DataSet.FieldByName('NOFIA13ID').asString + '"') + '-' + SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'NOFIINUMERO', '"' + DataSet.FieldByName('NOFIA13ID').asString + '"');
      If DataSet.FieldByName('Documento').AsString[1] = 'N' Then
        DataSet.FieldByName('Documento').asString := DataSet.FieldByName('EMPRICOD').AsString    +
                                                    ' - NF ' + DataSet.FieldByName('CTRCA30NRODUPLICBANCO').AsString;
      try
        Vendedor := SQLLocate('NOTAFISCAL','NOFIA13ID','VENDICOD','"' + DataSet.FieldByName('NOFIA13ID').asString + '"');
        if Vendedor <> '' then
          DataSet.FieldByName('VENDA60NOME').asString := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',Vendedor);
      except
      end;
    end
  else
    begin
      try
        Vendedor := SQLLocate('CUPOM','CUPOA13ID','VENDICOD','"' + DataSet.FieldByName('CUPOA13ID').asString + '"');
        if Vendedor <> '' then
          DataSet.FieldByName('VENDA60NOME').asString := SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',Vendedor);
      except
      end;
      DataSet.FieldByName('Documento').asString := DataSet.FieldByName('CUPOA13ID').asString;
    end;


  //AVALISTA
  if DataSet.FieldByName('AVALA13ID').asVariant <> Null then
    DataSet.FieldByName('AVALA60RAZAOSOC').AsString := SQLLocate('AVALISTA','AVALA13ID','AVALA60RAZAOSOC','"' + DataSet.FieldByName('AVALA13ID').AsString + '"')
  else
    DataSet.FieldByName('AVALA60RAZAOSOC').AsString := 'NAO INFORMADO';

  if DataSet.FieldByName('AVALA60RAZAOSOC').AsString = '' then
    DataSet.FieldByName('AVALA60RAZAOSOC').AsString  := MensagemLookUp;

  //PORTADOR
  if DataSet.FieldByName('PORTICOD').asVariant <> Null then
    DataSet.FieldByName('PORTA60DESCR').AsString := SQLLocate('PORTADOR','PORTICOD','PORTA60DESCR',DataSet.FieldByName('PORTICOD').AsString)
  else
    DataSet.FieldByName('PORTA60DESCR').AsString := 'NAO INFORMADO';

  if DataSet.FieldByName('PORTA60DESCR').AsString = '' then
    DataSet.FieldByName('PORTA60DESCR').AsString  := MensagemLookUp;


  If (DataSet.FieldByName('CTRCA30NRODUPLICBANCO').asVariant <> Null) and (DataSet.FieldByName('Documento').AsString = '') Then
    DataSet.FieldByName('Documento').asString  := DataSet.FieldByName('CTRCA30NRODUPLICBANCO').Value ;

  If (DataSet.FieldByName('CTRCA13ID').asVariant <> Null) and (DataSet.FieldByName('Documento').AsString = '') Then
    DataSet.FieldByName('Documento').asString := DataSet.FieldByName('CTRCA13ID').Value ;

  if (DataSet.FieldByName('CTRCDVENC').AsVariant <> Null) and (DataSet.FieldByName('CTRCDULTREC').AsVariant = null) then
    DataSet.FieldByName('Atraso').AsFloat := (DataBase - Vencimento);

  if (DataSet.FieldByName('CTRCDVENC').AsVariant <> Null) and (DataSet.FieldByName('CTRCDULTREC').AsVariant <> null) then
    DataSet.FieldByName('Atraso').AsFloat := (DataSet.FieldByName('CTRCDULTREC').AsDateTime - DataSet.FieldByName('CTRCDVENC').AsVariant);

  if (DataSet.FieldByName('Atraso').Value < 0) then
     DataSet.FieldByName('Atraso').Value := 0 ;

  if VlrSaldo > 0 then
  begin
    if DataSet.FieldByName('CTRCN2TXJURO').Value > 0 then
      DataSet.FieldByName('JuroParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                                                    DataSet.FieldByName('CTRCN2TXJURO').Value,
                                                                    Vencimento,
                                                                    DataBase,
                                                                    DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
                                                                    'Juro',
                                                                    DataSet.FieldByName('CUPOA13ID').AsString,
                                                                    DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('JuroParc').Value := 0 ;


    if DataSet.FieldByName('CTRCN2TXMULTA').Value > 0 then
      DataSet.FieldByName('MultaParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                               DataSet.FieldByName('CTRCN2TXMULTA').Value,
                                               Vencimento,
                                               DataBase,
                                               DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
                                               'Multa',
                                               DataSet.FieldByName('CUPOA13ID').AsString,
                                               DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('MultaParc').Value := 0 ;

    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value > 0 then
      DataSet.FieldByName('TxCobrParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                                 DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value,
                                                 Vencimento,
                                                 DataBase,
                                                 0,
                                                 'TaxaCobranca',
                                                 DataSet.FieldByName('CUPOA13ID').AsString,
                                                 DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('TxCobrParc').Value := 0 ;


    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value > 0 then
      DataSet.FieldByName('DescParc').Value := CalculaJuroMultaDesc(VlrSaldo,
                                               DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
                                               Vencimento,
                                               DataBase,
                                               DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
                                               'Desconto',
                                               DataSet.FieldByName('CUPOA13ID').AsString,
                                               DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('DescParc').Value := 0 ;

    DataSet.FieldByName('ValorPagar').Value := VlrSaldo +
                                               DataSet.FieldByName('JuroParc').Value +
                                               DataSet.FieldByName('MultaParc').Value +
                                               DataSet.FieldByName('TxCobrParc').Value -
                                               DataSet.FieldByName('DescParc').Value ;
  end ;
end;

procedure TFormCadastroCliente.DadosdeTeleEntregaClick(Sender: TObject);
begin
  inherited;
  Dm.SQLTeleEntrega.Close;
  Dm.SQLTeleEntrega.MacroByName('MFiltro').AsString := 'CUPOA13ID = "' + SQLDadosCompraCUPOA13ID.AsString + '"';
  Application.CreateForm(TFormTelaDadosTeleEntrega,FormTelaDadosTeleEntrega);
  FormTelaDadosTeleEntrega.Cliente.Text := SQLTemplateCLIEA60RAZAOSOC.AsString; 
  FormTelaDadosTeleEntrega.ShowModal;
  if (FormTelaDadosTeleEntrega.ModalResult = MrOk) and (Dm.SQLTeleEntrega.State in DsEditModes) then
    begin
      if Dm.SQLTeleEntrega.State in [DsInsert] then
        DM.SQLTeleEntrega.FieldByName('CUPOA13ID').AsString := SQLDadosCompra.FieldByName('CUPOA13ID').AsString ;
      DM.SQLTeleEntrega.Post ;
      try
        DM.SQLTeleEntrega.ApplyUpdates;         
      except
        on E:Exception do
          begin
            Informa('Problemas ao Gravar Dados da TeleEntrega, ANOTE O ERRO: ' + E.Message);
            DM.SQLTeleEntrega.CancelUpdates;
            DM.SQLTeleEntrega.Close;
            Application.ProcessMessages;
          end;
      end;
      Application.ProcessMessages;
      DM.SQLTeleEntrega.Close;
    end
  else
    begin
      Application.ProcessMessages;
      DM.SQLTeleEntrega.Close;
    end;
end;

procedure TFormCadastroCliente.DBGridDadosCompraDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If (SQLDadosCompraCTRCCSTATUS.AsString = 'N') Then
        begin
           DBGridDadosCompra.Canvas.Font.Color:=clBlue;
           DBGridDadosCompra.DefaultDrawColumnCell(Rect,DataCol,Column,State);
        end;

end;

procedure TFormCadastroCliente.SQLTemplateMTBLICODChange(Sender: TField);
begin
  inherited;
  if (SQLTemplate.State = dsEdit) and
     (SQLLocate('USUARIO', 'USUAICOD', 'USUACDESBLOQCLI', IntToStr(DM.UsuarioAtual)) <> 'S') then
    begin
      Informa('Você não tem permissão para desbloquear clientes !') ;
      TField(Sender).Value := TField(Sender).OldValue;
    end ;
end;

procedure TFormCadastroCliente.ComboPlanoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
    BtnPlanoRecebimento.Click;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroCliente.ComboProfissaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaProfissao.Click;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroCliente.ComboMotivoBloqueioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaMotBloq.Click;

{  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;}

end;

procedure TFormCadastroCliente.ComboVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
    AcessaVendedor.Click;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;
procedure TFormCadastroCliente.MontaDadosCreditoDebitosExtras;
var
  TotalCredito,
  BaixadoCredito,
  TotalDebito,
  BaixadoDebito,
  Saldo : Double;
begin
  SQLCreditoDebito.Close;
  SQLCreditoDebito.MacroByName('MCliente').AsString := 'CONTASRECEBER.CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"';
  SQLCreditoDebito.Open;
  if not SQLCreditoDebito.IsEmpty then
    begin
      SQLCreditoDebito.First;
      TotalCredito   :=0;
      BaixadoCredito :=0;
      TotalDebito    :=0;
      BaixadoDebito  :=0;
      Saldo          :=0;
      while not SQLCreditoDebito.Eof do
        begin
          if SQLCreditoDebitoCTRCCTIPOREGISTRO.AsString = 'C' then
            begin
              TotalCredito   := SQLCreditoDebitoCTRCN2VLR.AsFloat;
              BaixadoCredito := SQLCreditoDebitoCTRCN2TOTREC.AsFloat;
            end;
          if SQLCreditoDebitoCTRCCTIPOREGISTRO.AsString = 'D' then
            begin
              TotalDebito    := SQLCreditoDebitoCTRCN2VLR.AsFloat;
              BaixadoDebito  := SQLCreditoDebitoCTRCN2TOTREC.AsFloat;
            end;
          SQLCreditoDebito.Next;
          Application.ProcessMessages;
        end;
      Saldo := (TotalCredito - BaixadoCredito) - (TotalDebito - BaixadoDebito);
      EditTotalCredito.Value   := TotalCredito;
      EditCreditoBaixado.Value := BaixadoCredito;
      EditTotalDebito.Value    := TotalDebito;
      EditDebitoBaixado.Value  := BaixadoDebito;
      EditSaldo.Value          := Saldo;
      Application.ProcessMessages;
    end;
end;

procedure TFormCadastroCliente.SQLCreditoDebitoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SQLCreditoDebitoCTRCCTIPOREGISTRO.AsString = 'C' then
    SQLCreditoDebitoDebitoCreditoCalcField.AsString := 'Crédito';
  if SQLCreditoDebitoCTRCCTIPOREGISTRO.AsString = 'D' then
    SQLCreditoDebitoDebitoCreditoCalcField.AsString := 'Débito';

end;

END.
